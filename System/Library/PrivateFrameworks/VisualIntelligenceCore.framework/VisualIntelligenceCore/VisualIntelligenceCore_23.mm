uint64_t sub_1D8988018()
{
  v1 = v0[55];
  v2 = v0[53];
  sub_1D898C760(v0[52], type metadata accessor for TapToRadarDraftPayload);
  sub_1D87A14E4(v2, &qword_1ECA630C0);
  sub_1D898C760(v1, type metadata accessor for ActionPin.PermanentPill);
  __swift_destroy_boxed_opaque_existential_1((v0 + 13));

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D89880FC@<X0>(uint64_t a1@<X8>)
{
  v55 = a1;
  v56[4] = *MEMORY[0x1E69E9840];
  v54 = sub_1D8B12F10();
  v1 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v3 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B13000();
  v52 = *(v8 - 8);
  v53 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v14 = [objc_opt_self() defaultManager];
  sub_1D8B12F40();
  sub_1D8B13230();
  sub_1D8B131E0();
  (*(v5 + 8))(v7, v4);
  v15 = sub_1D881BE2C(26);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v56[0] = v15;
  v56[1] = v17;
  v23 = v52;
  v22 = v53;
  v56[2] = v19;
  v56[3] = v21;
  v24 = v14;
  v25 = v54;
  (*(v1 + 104))(v3, *MEMORY[0x1E6968F58], v54);
  sub_1D898C868();
  sub_1D8B12FF0();
  (*(v1 + 8))(v3, v25);

  v26 = *(v23 + 8);
  v27 = v22;
  v26(v11, v22);
  v28 = sub_1D8B12F50();
  v56[0] = 0;
  LODWORD(v1) = [v24 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:v56];

  if (v1)
  {
    v29 = v56[0];

    v30 = v55;
    (*(v23 + 32))(v55, v13, v27);
    v31 = 0;
    v32 = v30;
  }

  else
  {
    v54 = v26;
    v33 = v56[0];
    v34 = sub_1D8B12EB0();

    swift_willThrow();
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v35 = sub_1D8B151E0();
    __swift_project_value_buffer(v35, qword_1ECA66A98);
    v36 = v34;
    v37 = sub_1D8B151C0();
    v38 = sub_1D8B16210();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v51 = v13;
      v40 = v23;
      v41 = v39;
      v42 = swift_slowAlloc();
      v50 = v24;
      v43 = v42;
      v56[0] = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v44 = sub_1D8B16C90();
      v46 = sub_1D89AC714(v44, v45, v56);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1D8783000, v37, v38, "VITapToRadarInvocation createTempDirectory failed to create directory with error: %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x1DA721330](v43, -1, -1);
      v47 = v41;
      v23 = v40;
      MEMORY[0x1DA721330](v47, -1, -1);

      v48 = v51;
    }

    else
    {

      v48 = v13;
    }

    (v54)(v48, v27);
    v31 = 1;
    v32 = v55;
  }

  return (*(v23 + 56))(v32, v31, 1, v27);
}

uint64_t sub_1D8988650(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v3 = sub_1D8B12F10();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_1D8B13000();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8988800, 0, 0);
}

uint64_t sub_1D8988800()
{
  v85 = v0;
  v84[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 72);
  if (!v1)
  {
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D8B151E0();
    __swift_project_value_buffer(v8, qword_1ECA66A98);
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B16200();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D8783000, v9, v10, "VITapToRadarInvocation createCROutputFile no document found", v11, 2u);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    goto LABEL_33;
  }

  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 120);
  sub_1D87A0E38(*(v0 + 80), v4, &qword_1ECA630C0);
  v5 = *(v3 + 48);
  if (v5(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 120);
    v7 = v1;
    sub_1D87A14E4(v6, &qword_1ECA630C0);
  }

  else
  {
    v12 = *(*(v0 + 136) + 32);
    v12(*(v0 + 160), *(v0 + 120), *(v0 + 128));
    v13 = v1;
    if (sub_1D898C124())
    {
      v12(*(v0 + 168), *(v0 + 160), *(v0 + 128));
      goto LABEL_19;
    }

    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
  }

  v14 = *(v0 + 128);
  v15 = *(v0 + 112);
  sub_1D89880FC(v15);
  if (v5(v15, 1, v14) == 1)
  {
    sub_1D87A14E4(*(v0 + 112), &qword_1ECA630C0);
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D8B151E0();
    __swift_project_value_buffer(v16, qword_1ECA66A98);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16210();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8783000, v17, v18, "VITapToRadarInvocation createCROutputFile couldn't create fallback directory.", v19, 2u);
      MEMORY[0x1DA721330](v19, -1, -1);
    }

    goto LABEL_33;
  }

  v12 = *(*(v0 + 136) + 32);
  v12(*(v0 + 168), *(v0 + 112), *(v0 + 128));
LABEL_19:
  v20 = objc_opt_self();
  *(v0 + 56) = 0;
  v21 = [v20 archivedDataWithRootObject:v1 requiringSecureCoding:1 error:v0 + 56];
  v22 = *(v0 + 56);
  if (v21)
  {
    v83 = v1;
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    v26 = sub_1D8B13050();
    v28 = v27;

    *(v0 + 40) = 0xD000000000000012;
    *(v0 + 48) = 0x80000001D8B450F0;
    (*(v23 + 104))(v24, *MEMORY[0x1E6968F68], v25);
    sub_1D87C12C0();
    sub_1D8B12FE0();
    (*(v23 + 8))(v24, v25);
    v29 = v28;
    v30 = [objc_opt_self() defaultManager];
    sub_1D8B12FC0();
    v31 = sub_1D8B15940();

    v32 = v26;
    v33 = sub_1D8B13030();
    LODWORD(v24) = [v30 createFileAtPath:v31 contents:v33 attributes:0];

    if (v24)
    {
      v34 = *(v0 + 168);
      v35 = *(v0 + 152);
      v36 = v29;
      v38 = *(v0 + 128);
      v37 = *(v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633F0);
      v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_1D8B1AB90;
      v12(v40 + v39, v35, v38);
      sub_1D87A1598(v32, v36);

      (*(v37 + 8))(v34, v38);
      goto LABEL_34;
    }

    v81 = v26;
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v82 = v29;
    v56 = *(v0 + 144);
    v55 = *(v0 + 152);
    v58 = *(v0 + 128);
    v57 = *(v0 + 136);
    v59 = sub_1D8B151E0();
    __swift_project_value_buffer(v59, qword_1ECA66A98);
    (*(v57 + 16))(v56, v55, v58);
    v60 = sub_1D8B151C0();
    v61 = sub_1D8B16210();
    v62 = os_log_type_enabled(v60, v61);
    v64 = *(v0 + 136);
    v63 = *(v0 + 144);
    v65 = *(v0 + 128);
    v66 = v83;
    if (v62)
    {
      v67 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v84[0] = v80;
      *v67 = 136315138;
      v79 = sub_1D8B12FC0();
      v68 = v61;
      v70 = v69;
      v71 = *(v64 + 8);
      v71(v63, v65);
      v72 = sub_1D89AC714(v79, v70, v84);

      *(v67 + 4) = v72;
      v73 = v68;
      v66 = v83;
      _os_log_impl(&dword_1D8783000, v60, v73, "VITapToRadarInvocation createCROutputFile failed to create temporary file at %s, will not attach to the incoming draft.", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1DA721330](v80, -1, -1);
      MEMORY[0x1DA721330](v67, -1, -1);
    }

    else
    {

      v71 = *(v64 + 8);
      v71(v63, v65);
    }

    v74 = *(v0 + 168);
    v75 = *(v0 + 152);
    v76 = *(v0 + 128);
    sub_1D87A1598(v81, v82);

    v71(v75, v76);
    v71(v74, v76);
  }

  else
  {
    v41 = v22;
    v42 = sub_1D8B12EB0();

    swift_willThrow();
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v43 = sub_1D8B151E0();
    __swift_project_value_buffer(v43, qword_1ECA66A98);
    v44 = v42;
    v45 = sub_1D8B151C0();
    v46 = sub_1D8B16210();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v84[0] = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v49 = sub_1D8B16C90();
      v51 = sub_1D89AC714(v49, v50, v84);

      *(v47 + 4) = v51;
      _os_log_impl(&dword_1D8783000, v45, v46, "VITapToRadarInvocation createCROutputFile could not serialize to file, will not attach to the incoming draft. Error: %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x1DA721330](v48, -1, -1);
      MEMORY[0x1DA721330](v47, -1, -1);
    }

    v52 = *(v0 + 168);
    v53 = *(v0 + 128);
    v54 = *(v0 + 136);

    (*(v54 + 8))(v52, v53);
  }

LABEL_33:
  v40 = MEMORY[0x1E69E7CC0];
LABEL_34:

  v77 = *(v0 + 8);

  return v77(v40);
}

void *sub_1D89890F8(void *a1, uint64_t a2)
{
  v104 = sub_1D8B12F10();
  v4 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v89 - v10;
  v113 = sub_1D8B13000();
  v12 = *(v113 - 8);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v15 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v102 = &v89 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v89 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v112 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v105 = &v89 - v26;
  v27 = sub_1D8B12BC0();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v111 = a1[2];
  if (!v111)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v95 = v20;
  v96 = v15;
  sub_1D8B12C00();
  swift_allocObject();
  v28 = sub_1D8B12BF0();
  sub_1D8B12BB0();
  v110 = v28;
  sub_1D8B12BD0();
  sub_1D87A0E38(a2, v11, &qword_1ECA630C0);
  v29 = *(v12 + 48);
  if (v29(v11, 1, v113) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA630C0);
  }

  else
  {
    v109 = a1;
    v30 = v4;
    v31 = *(v12 + 32);
    v31(v25, v11, v113);
    if (sub_1D898C124())
    {
      v93 = v12 + 32;
      v31(v105, v25, v113);
      v33 = v31;
      v4 = v30;
      a1 = v109;
      goto LABEL_15;
    }

    (*(v12 + 8))(v25, v113);
    v4 = v30;
    a1 = v109;
  }

  sub_1D89880FC(v9);
  if (v29(v9, 1, v113) == 1)
  {
    sub_1D87A14E4(v9, &qword_1ECA630C0);
    if (qword_1ECA621B0 != -1)
    {
      swift_once();
    }

    v34 = sub_1D8B151E0();
    __swift_project_value_buffer(v34, qword_1ECA66A98);
    v35 = sub_1D8B151C0();
    v36 = sub_1D8B16210();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1D8783000, v35, v36, "VITapToRadarInvocation createTempFilesForTTRDraft couldn't create fallback directory.", v37, 2u);
      MEMORY[0x1DA721330](v37, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v33 = *(v12 + 32);
  v93 = v12 + 32;
  v33(v105, v9, v113);
LABEL_15:
  v92 = v33;
  v39 = (a1 + 4);
  v101 = (v4 + 104);
  v100 = *MEMORY[0x1E6968F68];
  v99 = (v4 + 8);
  v107 = (v12 + 16);
  v94 = v12;
  v108 = (v12 + 8);
  v109 = MEMORY[0x1E69E7CC0];
  *&v32 = 136315138;
  v91 = v32;
  *&v32 = 136315394;
  v97 = v32;
  v40 = v111;
  do
  {
    sub_1D87A0E38(v39, v115, &qword_1ECA63400);
    v41 = v115[5];
    v42 = v115[6];
    __swift_project_boxed_opaque_existential_1(v115, v115[3]);
    v43 = sub_1D8B12BE0();
    v45 = v44;
    v111 = v40;
    __swift_destroy_boxed_opaque_existential_1(v115);
    v114[0] = v41;
    v114[1] = v42;
    MEMORY[0x1DA71EFA0](0x6E6F736A2ELL, 0xE500000000000000);
    v46 = v103;
    v47 = v104;
    (*v101)(v103, v100, v104);
    sub_1D87C12C0();
    sub_1D8B12FE0();
    (*v99)(v46, v47);

    v48 = [objc_opt_self() defaultManager];
    sub_1D8B12FC0();
    v49 = sub_1D8B15940();

    v50 = sub_1D8B13030();
    v51 = [v48 createFileAtPath:v49 contents:v50 attributes:0];

    if (v51)
    {
      if (qword_1ECA621B0 != -1)
      {
        swift_once();
      }

      v106 = v43;
      v52 = sub_1D8B151E0();
      __swift_project_value_buffer(v52, qword_1ECA66A98);
      v53 = v95;
      v54 = v112;
      v98 = *v107;
      v98(v95, v112, v113);
      v55 = sub_1D8B151C0();
      v56 = sub_1D8B161F0();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v114[0] = v58;
        *v57 = v91;
        sub_1D898C6B0(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
        v59 = sub_1D8B16B50();
        v60 = v53;
        v62 = v61;
        v63 = *v108;
        (*v108)(v60, v113);
        v64 = sub_1D89AC714(v59, v62, v114);

        *(v57 + 4) = v64;
        _os_log_impl(&dword_1D8783000, v55, v56, "VITapToRadarInvocation createTempFilesForTTRDraft created temporary file at %s to attach to TTR draft", v57, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v58);
        MEMORY[0x1DA721330](v58, -1, -1);
        v65 = v57;
        v54 = v112;
        MEMORY[0x1DA721330](v65, -1, -1);
      }

      else
      {

        v63 = *v108;
        (*v108)(v53, v113);
      }

      v79 = v111;
      v98(v102, v54, v113);
      v80 = v109;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v92;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v80 = sub_1D87C8798(0, v80[2] + 1, 1, v80);
      }

      v84 = v80[2];
      v83 = v80[3];
      v109 = v80;
      if (v84 >= v83 >> 1)
      {
        v109 = sub_1D87C8798(v83 > 1, v84 + 1, 1, v109);
      }

      sub_1D87A1598(v106, v45);
      v85 = v113;
      v63(v54, v113);
      v86 = v109;
      v109[2] = v84 + 1;
      v82(&v86[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v84], v102, v85);
    }

    else
    {
      v66 = v96;
      if (qword_1ECA621B0 != -1)
      {
        swift_once();
      }

      v67 = sub_1D8B151E0();
      __swift_project_value_buffer(v67, qword_1ECA66A98);
      v68 = v112;
      (*v107)(v66, v112, v113);
      v69 = sub_1D8B151C0();
      v70 = sub_1D8B16210();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = v66;
        v73 = swift_slowAlloc();
        v114[0] = v73;
        *v71 = v91;
        v74 = sub_1D8B12FC0();
        v106 = v43;
        v90 = v74;
        v76 = v75;
        v98 = v45;
        v77 = *v108;
        (*v108)(v72, v113);
        v78 = sub_1D89AC714(v90, v76, v114);

        *(v71 + 4) = v78;
        _os_log_impl(&dword_1D8783000, v69, v70, "VITapToRadarInvocation createTempFilesForTTRDraft failed to create temporary file at %s", v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x1DA721330](v73, -1, -1);
        MEMORY[0x1DA721330](v71, -1, -1);

        sub_1D87A1598(v106, v98);
        v77(v112, v113);
      }

      else
      {

        sub_1D87A1598(v43, v45);
        v87 = *v108;
        v88 = v113;
        (*v108)(v66, v113);
        v87(v68, v88);
      }

      v79 = v111;
    }

    v39 += 56;
    v40 = v79 - 1;
  }

  while (v40);

  (*v108)(v105, v113);
  return v109;
}

uint64_t sub_1D8989EE0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 2984) = a3;
  *(v3 + 2976) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8);
  *(v3 + 2992) = swift_task_alloc();
  v5 = type metadata accessor for BundleSelector.Output(0);
  *(v3 + 3000) = v5;
  *(v3 + 3008) = *(v5 - 8);
  *(v3 + 3016) = swift_task_alloc();
  *(v3 + 3024) = *(type metadata accessor for CVBundle(0) - 8);
  *(v3 + 3032) = swift_task_alloc();
  *(v3 + 3040) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290);
  *(v3 + 3048) = swift_task_alloc();
  v6 = type metadata accessor for ActionPredictor.Output(0);
  *(v3 + 3056) = v6;
  *(v3 + 3064) = *(v6 - 8);
  *(v3 + 3072) = swift_task_alloc();
  *(v3 + 3160) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D898A0E0, 0, 0);
}

uint64_t sub_1D898A0E0()
{
  if (*(v0 + 3160) == 2)
  {
  }

  else
  {
    v1 = sub_1D8B16BA0();

    if ((v1 & 1) == 0)
    {
      sub_1D87A0E38(*(v0 + 2976), v0 + 2856, &qword_1ECA66578);
      if (*(v0 + 2880))
      {
        sub_1D8788F40((v0 + 2856), v0 + 2936);
        v2 = swift_task_alloc();
        *(v0 + 3080) = v2;
        *(v2 + 16) = v0 + 2936;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665B0);
        swift_asyncLet_begin();
        v3 = swift_task_alloc();
        *(v0 + 3088) = v3;
        *(v3 + 16) = v0 + 2936;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665B8);
        swift_asyncLet_begin();

        return MEMORY[0x1EEE6DEB8](v0 + 16, v0 + 2776, sub_1D898A464, v0 + 2224);
      }

      sub_1D87A14E4(v0 + 2856, &qword_1ECA66578);
      if (qword_1ECA621B0 != -1)
      {
        swift_once();
      }

      v4 = sub_1D8B151E0();
      __swift_project_value_buffer(v4, qword_1ECA66A98);
      v5 = sub_1D8B151C0();
      v6 = sub_1D8B16210();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1D8783000, v5, v6, "VITapToRadarInvocation createLatestStreamOutputFiles: provided stream was not capable of providing output streams.", v7, 2u);
        MEMORY[0x1DA721330](v7, -1, -1);
      }
    }
  }

  v8 = *(v0 + 8);
  v9 = MEMORY[0x1E69E7CC0];

  return v8(v9);
}

uint64_t sub_1D898A480()
{
  sub_1D87C1470((v0 + 347), (v0 + 327));
  v1 = v0[330];
  v2 = v0[331];
  __swift_project_boxed_opaque_existential_1(v0 + 327, v1);
  v3 = swift_task_alloc();
  v0[387] = v3;
  *v3 = v0;
  v3[1] = sub_1D898A54C;
  v4 = v0[381];

  return sub_1D898BAD8(v4, v1, v2);
}

uint64_t sub_1D898A54C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D898A648, 0, 0);
}

uint64_t sub_1D898A648()
{
  v1 = *(v0 + 3056);
  v2 = *(v0 + 3048);
  if ((*(*(v0 + 3064) + 48))(v2, 1, v1) == 1)
  {
    sub_1D87A14E4(v2, &qword_1ECA64290);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2616);
    v3 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v4 = *(v0 + 3072);
    sub_1D898C648(v2, v4, type metadata accessor for ActionPredictor.Output);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2616);
    *(v0 + 2920) = v1;
    *(v0 + 2928) = sub_1D898C6B0(&qword_1ECA665D0, type metadata accessor for ActionPredictor.Output);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2896));
    sub_1D898C6F8(v4, boxed_opaque_existential_1, type metadata accessor for ActionPredictor.Output);
    sub_1D8788F40((v0 + 2896), v0 + 2360);
    *(v0 + 2400) = 0xD00000000000001BLL;
    *(v0 + 2408) = 0x80000001D8B450D0;
    v3 = sub_1D87C93A0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D87C93A0((v6 > 1), v7 + 1, 1, v3);
    }

    sub_1D898C760(*(v0 + 3072), type metadata accessor for ActionPredictor.Output);
    v3[2] = v7 + 1;
    v8 = &v3[7 * v7];
    v10 = *(v0 + 2376);
    v9 = *(v0 + 2392);
    v11 = *(v0 + 2360);
    v8[10] = *(v0 + 2408);
    *(v8 + 3) = v10;
    *(v8 + 4) = v9;
    *(v8 + 2) = v11;
  }

  *(v0 + 3104) = v3;
  v12 = [objc_opt_self() mainBundle];
  v13 = [v12 bundleIdentifier];

  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = sub_1D8B15970();
  v16 = v15;

  if (v14 == 0xD000000000000022 && 0x80000001D8B433B0 == v16)
  {
  }

  else
  {
    v18 = sub_1D8B16BA0();

    if ((v18 & 1) == 0)
    {
LABEL_12:
      v19 = swift_task_alloc();
      *(v0 + 3112) = v19;
      *(v19 + 16) = v0 + 2936;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665C0);
      swift_asyncLet_begin();
      v20 = sub_1D898A98C;
      v21 = v0 + 1296;
      v22 = v0 + 2536;
      v23 = v0 + 1936;
      goto LABEL_15;
    }
  }

  *(v0 + 3136) = v3;
  v20 = sub_1D898AEE0;
  v21 = v0 + 656;
  v22 = v0 + 2656;
  v23 = v0 + 2416;
LABEL_15:

  return MEMORY[0x1EEE6DEB8](v21, v22, v20, v23);
}

uint64_t sub_1D898A9A8()
{
  sub_1D87C1470((v0 + 317), (v0 + 307));
  v1 = v0[310];
  v2 = v0[311];
  __swift_project_boxed_opaque_existential_1(v0 + 307, v1);
  v3 = swift_task_alloc();
  v0[390] = v3;
  *v3 = v0;
  v3[1] = sub_1D898AA74;

  return sub_1D898BAD8((v0 + 259), v1, v2);
}

uint64_t sub_1D898AA74()
{

  return MEMORY[0x1EEE6DFA0](sub_1D898AB70, 0, 0);
}

uint64_t sub_1D898AB70()
{
  v1 = *(v0 + 2120);
  *(v0 + 2008) = *(v0 + 2104);
  *(v0 + 2024) = v1;
  v2 = *(v0 + 2152);
  *(v0 + 2040) = *(v0 + 2136);
  *(v0 + 2056) = v2;
  v3 = *(v0 + 2088);
  *(v0 + 1976) = *(v0 + 2072);
  *(v0 + 1992) = v3;
  v4 = *(v0 + 1976);
  if (v4)
  {
    v5 = v0 + 2168;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2456);
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = *(v0 + 3024);
      v26 = MEMORY[0x1E69E7CC0];
      sub_1D87F4074(0, v6, 0);
      v8 = v26;
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = v4 + v9;
      v11 = *(v7 + 72);
      do
      {
        v12 = *(v0 + 3040);
        v13 = *(v0 + 3032);
        sub_1D898C6F8(v10, v13, type metadata accessor for CVBundle);
        CVBundle.sanitizeForJSON()(v12);
        sub_1D898C760(v13, type metadata accessor for CVBundle);
        v15 = *(v26 + 16);
        v14 = *(v26 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D87F4074(v14 > 1, v15 + 1, 1);
        }

        v16 = *(v0 + 3040);
        *(v26 + 16) = v15 + 1;
        sub_1D898C648(v16, v26 + v9 + v15 * v11, type metadata accessor for CVBundle);
        v10 += v11;
        --v6;
      }

      while (v6);
      sub_1D87A14E4(v0 + 1976, &qword_1ECA67E50);
      v5 = v0 + 2168;
    }

    else
    {
      sub_1D87A14E4(v0 + 1976, &qword_1ECA67E50);
      v8 = MEMORY[0x1E69E7CC0];
    }

    *(v0 + 2840) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758);
    *(v0 + 2848) = sub_1D893FCB8();
    *(v0 + 2816) = v8;
    sub_1D8788F40((v0 + 2816), v5);
    *(v0 + 2208) = 0xD000000000000019;
    *(v0 + 2216) = 0x80000001D8B450B0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v0 + 3104);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1D87C93A0(0, v17[2] + 1, 1, v17);
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1D87C93A0((v19 > 1), v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    v21 = &v17[7 * v20];
    v22 = *v5;
    v23 = *(v5 + 16);
    v24 = *(v5 + 32);
    v21[10] = *(v5 + 48);
    *(v21 + 3) = v23;
    *(v21 + 4) = v24;
    *(v21 + 2) = v22;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2456);
    v17 = *(v0 + 3104);
  }

  *(v0 + 3128) = v17;

  return MEMORY[0x1EEE6DEB0](v0 + 1296, v0 + 2536, sub_1D898AE50, v0 + 2320);
}

uint64_t sub_1D898AE6C()
{

  *(v0 + 3136) = *(v0 + 3128);

  return MEMORY[0x1EEE6DEB8](v0 + 656, v0 + 2656, sub_1D898AEE0, v0 + 2416);
}

uint64_t sub_1D898AEFC()
{
  sub_1D87C1470((v0 + 332), (v0 + 337));
  v1 = v0[340];
  v2 = v0[341];
  __swift_project_boxed_opaque_existential_1(v0 + 337, v1);
  v3 = swift_task_alloc();
  v0[393] = v3;
  *v3 = v0;
  v3[1] = sub_1D898AFC8;
  v4 = v0[374];

  return sub_1D898BAD8(v4, v1, v2);
}

uint64_t sub_1D898AFC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D898B0C4, 0, 0);
}

uint64_t sub_1D898B0C4()
{
  v1 = *(v0 + 3000);
  v2 = *(v0 + 2992);
  if ((*(*(v0 + 3008) + 48))(v2, 1, v1) == 1)
  {
    sub_1D87A14E4(v2, &qword_1ECA640E8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2696);
    v3 = *(v0 + 3136);
  }

  else
  {
    sub_1D898C648(v2, *(v0 + 3016), type metadata accessor for BundleSelector.Output);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2696);
    *(v0 + 2760) = v1;
    *(v0 + 2768) = sub_1D898C6B0(&qword_1ECA665C8, type metadata accessor for BundleSelector.Output);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2736));
    sub_1D8AA5700(boxed_opaque_existential_1);
    sub_1D8788F40((v0 + 2736), v0 + 2264);
    *(v0 + 2304) = 0xD00000000000001ALL;
    *(v0 + 2312) = 0x80000001D8B45090;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 3136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1D87C93A0(0, v3[2] + 1, 1, *(v0 + 3136));
    }

    v7 = v3[2];
    v6 = v3[3];
    if (v7 >= v6 >> 1)
    {
      v3 = sub_1D87C93A0((v6 > 1), v7 + 1, 1, v3);
    }

    sub_1D898C760(*(v0 + 3016), type metadata accessor for BundleSelector.Output);
    v3[2] = v7 + 1;
    v8 = &v3[7 * v7];
    v10 = *(v0 + 2280);
    v9 = *(v0 + 2296);
    v11 = *(v0 + 2264);
    v8[10] = *(v0 + 2312);
    *(v8 + 3) = v10;
    *(v8 + 4) = v9;
    *(v8 + 2) = v11;
  }

  *(v0 + 3152) = sub_1D89890F8(v3, *(v0 + 2984));

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 2656, sub_1D898B2F8, v0 + 2496);
}

uint64_t sub_1D898B314()
{

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 2776, sub_1D898B380, v0 + 2576);
}

uint64_t sub_1D898B39C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2936);
  v1 = *(v0 + 3152);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D898B460(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D898B4FC, 0, 0);
}

uint64_t sub_1D898B4FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910);
  v3[4] = sub_1D881CF20(&qword_1EE0E3890, &qword_1ECA64910);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D898B670;
  v9 = v0[4];

  return SaliencyStreamInternalMonitorable.makeActionPredictorOutputStream(bufferingPolicyOverride:)(boxed_opaque_existential_1, v9, v5, v4);
}

uint64_t sub_1D898B670()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1D87A14E4(v1, &qword_1ECA64818);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D898B79C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64808);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D898B838, 0, 0);
}

uint64_t sub_1D898B838()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64908);
  v3[4] = sub_1D881CF20(&qword_1EE0E3898, &qword_1ECA64908);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D898B9AC;
  v9 = v0[4];

  return SaliencyStreamInternalMonitorable.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(boxed_opaque_existential_1, v9, v5, v4);
}

uint64_t sub_1D898B9AC()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1D87A14E4(v1, &qword_1ECA64808);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D898BAD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D898BAFC, 0, 0);
}

uint64_t sub_1D898BAFC()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D898BBC8;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return MEMORY[0x1EEE6DB20](v4, &unk_1D8B2EBD8, v1, v5, v3);
}

uint64_t sub_1D898BBC8()
{
  v2 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D898BD38, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D898BD38()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v1, 1, 1, AssociatedTypeWitness);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D898BDE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F8);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D898BE84, 0, 0);
}

uint64_t sub_1D898BE84()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v5 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40);
  v3[4] = sub_1D881CF20(&qword_1EE0E38A0, &unk_1ECA67E40);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1D898BFF8;
  v9 = v0[4];

  return SaliencyStreamInternalMonitorable.makeBundleManagerOutputStream(bufferingPolicyOverride:)(boxed_opaque_existential_1, v9, v5, v4);
}

uint64_t sub_1D898BFF8()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  sub_1D87A14E4(v1, &qword_1ECA647F8);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D898C124()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  v4 = *MEMORY[0x1E695DB78];
  *(inited + 32) = *MEMORY[0x1E695DB78];
  v5 = v4;
  sub_1D8A56988(inited);
  swift_setDeallocating();
  sub_1D898C760(inited + 32, type metadata accessor for URLResourceKey);
  sub_1D8B12F30();

  v6 = sub_1D8B12E30();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_1D8B12E20();
  (*(v7 + 8))(v2, v6);
  return v8 & 1;
}

unint64_t sub_1D898C35C()
{
  result = qword_1ECA66580;
  if (!qword_1ECA66580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66580);
  }

  return result;
}

unint64_t sub_1D898C414()
{
  result = qword_1ECA66598;
  if (!qword_1ECA66598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66598);
  }

  return result;
}

uint64_t sub_1D898C468(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D898B460(a1, v4);
}

uint64_t sub_1D898C508(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D898B79C(a1, v4);
}

uint64_t sub_1D898C5A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D898BDE8(a1, v4);
}

uint64_t sub_1D898C648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D898C6B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D898C6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D898C760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D898C7C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D87D34C4;

  return sub_1D898C33C();
}

unint64_t sub_1D898C868()
{
  result = qword_1ECA665D8;
  if (!qword_1ECA665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA665D8);
  }

  return result;
}

id AskAcmeRequirementManager.__allocating_init(hasOnboardedACME:)(char a1)
{
  v2 = swift_allocObject();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isExternalIntelligenceAllowed];

    *(v2 + 17) = v5 ^ 1;
    v6 = [objc_opt_self() sharedInstance];
    *(v2 + 48) = sub_1D881F764(0, &unk_1EE0E3778);
    *(v2 + 56) = &off_1F5430390;
    *(v2 + 24) = v6;
    *(v2 + 16) = a1 & 1;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D898CA48(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

void sub_1D898CADC(char *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  v5 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v4);
  (*(v5 + 8))(&v11, v4, v5);
  if (v12)
  {
    sub_1D8788F40(&v11, v13);
    v6 = v14;
    v7 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    LOBYTE(v6) = sub_1D895C8E0(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
    if ((v6 & 1) == 0)
    {
      v8 = 8;
      goto LABEL_18;
    }
  }

  else
  {
    sub_1D87A14E4(&v11, &qword_1ECA665E0);
  }

  if (*(v2 + 17))
  {
    v8 = 0;
  }

  else if (AFMontaraRestricted() && *(v2 + 17) != 1)
  {
    v8 = 1;
  }

  else
  {
    v9 = [objc_opt_self() sharedPreferences];
    v10 = [v9 assistantIsEnabled];

    if (v10)
    {
      swift_beginAccess();
      if (*(v2 + 16) == 1)
      {
        sub_1D898CC84(&v11);
        v8 = v11;
        if (v11 == 10)
        {
          sub_1D8B14D60();
          if (sub_1D8B14D50())
          {
            v8 = 10;
          }

          else
          {
            v8 = 7;
          }
        }
      }

      else
      {
        v8 = 6;
      }
    }

    else
    {
      v8 = 2;
    }
  }

LABEL_18:
  *a1 = v8;
}

uint64_t sub_1D898CC84@<X0>(char *a1@<X8>)
{
  v123 = a1;
  v1 = sub_1D8B13FA0();
  v112 = *(v1 - 8);
  v113 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v111 = &v107 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D8B13FC0();
  v4 = *(v3 - 8);
  v114 = v3;
  v115 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v107 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = &v107 - v7;
  v118 = sub_1D8B13F70();
  v8 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1D8B13F90();
  v124 = *(v120 - 8);
  v10 = MEMORY[0x1EEE9AC00](v120);
  v108 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v107 - v12;
  v13 = sub_1D8B14060();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v119 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v109 = &v107 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v107 - v22;
  v24 = sub_1D8B13FE0();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v107 - v29;
  if (qword_1EE0E9958 != -1)
  {
    swift_once();
  }

  v126 = qword_1EE0E9960;
  v127 = word_1EE0E9968;
  v128 = byte_1EE0E996A;
  v125 = 5;
  (*(v14 + 104))(v16, *MEMORY[0x1E69A12A0], v13);

  v121 = v23;
  GreymatterAvailability.availability(_:languageOption:)(v30, v23, &v125, v16);
  (*(v14 + 8))(v16, v13);

  v31 = *(v25 + 16);
  v122 = v30;
  v31(v28, v30, v24);
  v32 = *(v25 + 88);
  v33 = v32(v28, v24);
  v34 = *MEMORY[0x1E69A0EF8];
  v35 = v24;
  v36 = v25;
  if (v33 == *MEMORY[0x1E69A0EF8])
  {
    (*(v25 + 96))(v28, v24);
    v37 = v8;
    v38 = v25;
    v39 = v124;
    v40 = v116;
    v41 = v120;
    (*(v124 + 32))(v116, v28, v120);
    v119 = v24;
    v42 = sub_1D8B13F80();
    v43 = *MEMORY[0x1E69A0F60];
    v44 = v117;
    v45 = v118;
    v115 = *(v37 + 13);
    (v115)(v117, v43, v118);
    v46 = sub_1D89A5450(v44, v42);

    v47 = *(v37 + 1);
    v47(v44, v45);
    if (v46)
    {
      (*(v39 + 8))(v40, v41);
      sub_1D87A14E4(v121, &qword_1ECA665E8);
      result = (*(v38 + 8))(v122, v119);
      v49 = 4;
LABEL_32:
      *v123 = v49;
      return result;
    }

    v112 = v38;
    v61 = v47;
    v62 = sub_1D8B13F80();
    v63 = v115;
    (v115)(v44, *MEMORY[0x1E69A0F38], v45);
    v64 = sub_1D89A5450(v44, v62);

    v61(v44, v45);
    v65 = v121;
    if (v64)
    {
      (*(v124 + 8))(v40, v120);
      sub_1D87A14E4(v65, &qword_1ECA665E8);
      result = (*(v112 + 8))(v122, v119);
      v49 = 5;
      goto LABEL_32;
    }

    v71 = sub_1D8B13F80();
    v63(v44, *MEMORY[0x1E69A0F80], v45);
    v72 = sub_1D89A5450(v44, v71);

    v61(v44, v45);
    (*(v124 + 8))(v40, v120);
    sub_1D87A14E4(v65, &qword_1ECA665E8);
    result = (*(v112 + 8))(v122, v119);
    if (v72)
    {
LABEL_18:
      v49 = 9;
      goto LABEL_32;
    }

LABEL_31:
    v49 = 3;
    goto LABEL_32;
  }

  v50 = *MEMORY[0x1E69A0F00];
  if (v33 == *MEMORY[0x1E69A0F00])
  {
    (*(v36 + 96))(v28, v24);
    v51 = v114;
    v52 = v115;
    v53 = v110;
    (*(v115 + 32))(v110, v28, v114);
    v119 = v24;
    v54 = sub_1D8B13FB0();
    v55 = *MEMORY[0x1E69A10C8];
    v57 = v111;
    v56 = v112;
    v58 = v113;
    v124 = *(v112 + 104);
    (v124)(v111, v55, v113);
    v59 = sub_1D89A5668(v57, v54);

    v60 = *(v56 + 8);
    v60(v57, v58);
    if ((v59 & 1) == 0)
    {
      v112 = v36;
      v68 = sub_1D8B13FB0();
      (v124)(v57, *MEMORY[0x1E69A1058], v58);
      v69 = sub_1D89A5668(v57, v68);

      v60(v57, v58);
      v70 = v121;
      if (v69)
      {
        (*(v115 + 8))(v53, v51);
        sub_1D87A14E4(v70, &qword_1ECA665E8);
        result = (*(v112 + 8))(v122, v119);
        v49 = 5;
        goto LABEL_32;
      }

      v91 = sub_1D8B13FB0();
      (v124)(v57, *MEMORY[0x1E69A1138], v58);
      v92 = sub_1D89A5668(v57, v91);

      v60(v57, v58);
      (*(v115 + 8))(v53, v51);
      sub_1D87A14E4(v70, &qword_1ECA665E8);
      result = (*(v112 + 8))(v122, v119);
      if (v92)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }

    (*(v52 + 8))(v53, v51);
    sub_1D87A14E4(v121, &qword_1ECA665E8);
    result = (*(v36 + 8))(v122, v119);
LABEL_14:
    v49 = 4;
    goto LABEL_32;
  }

  v116 = v8;
  LODWORD(v110) = *MEMORY[0x1E69A11A0];
  if (v33 == v110)
  {
    v66 = [objc_opt_self() isSAEEnabled];
    v67 = v124;
    if ((v66 & 1) == 0)
    {
      sub_1D87A14E4(v121, &qword_1ECA665E8);
      result = (*(v36 + 8))(v122, v24);
      goto LABEL_14;
    }
  }

  else
  {
    v67 = v124;
    if (qword_1EE0E43E0 != -1)
    {
      swift_once();
    }

    v73 = sub_1D8B151E0();
    __swift_project_value_buffer(v73, qword_1EE0E43E8);
    v74 = sub_1D8B151C0();
    v75 = sub_1D8B16210();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1D8783000, v74, v75, "Unknown response from GMS availability", v76, 2u);
      v77 = v76;
      v67 = v124;
      MEMORY[0x1DA721330](v77, -1, -1);
    }

    v35 = v24;
    (*(v36 + 8))(v28, v24);
  }

  v78 = v50;
  v79 = v121;
  v80 = v109;
  sub_1D898EF38(v121, v109);
  if ((*(v36 + 48))(v80, 1, v35) == 1)
  {
    sub_1D87A14E4(v79, &qword_1ECA665E8);
    (*(v36 + 8))(v122, v35);
    goto LABEL_26;
  }

  v81 = v119;
  sub_1D898EF38(v80, v119);
  v82 = v32(v81, v35);
  if (v82 == v34)
  {
    (*(v36 + 96))(v81, v35);
    v83 = v108;
    v84 = v120;
    (*(v67 + 32))(v108, v81, v120);
    v119 = v35;
    v85 = sub_1D8B13F80();
    v87 = v116;
    v86 = v117;
    v88 = v36;
    v89 = v67;
    v90 = v118;
    (*(v116 + 13))(v117, *MEMORY[0x1E69A0F80], v118);
    LODWORD(v124) = sub_1D89A5450(v86, v85);

    (*(v87 + 1))(v86, v90);
    (*(v89 + 8))(v83, v84);
    sub_1D87A14E4(v79, &qword_1ECA665E8);
    (*(v88 + 8))(v122, v119);
    if ((v124 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v82 != v78)
    {
      v100 = v122;
      if (v82 == v110)
      {
        sub_1D87A14E4(v79, &qword_1ECA665E8);
        (*(v36 + 8))(v100, v35);
      }

      else
      {
        v101 = *(v36 + 8);
        v102 = v35;
        v101(v81, v35);
        if (qword_1EE0E43E0 != -1)
        {
          swift_once();
        }

        v103 = sub_1D8B151E0();
        __swift_project_value_buffer(v103, qword_1EE0E43E8);
        v104 = sub_1D8B151C0();
        v105 = sub_1D8B16210();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_1D8783000, v104, v105, "Unknown partner availability response from GMS availability", v106, 2u);
          MEMORY[0x1DA721330](v106, -1, -1);
        }

        sub_1D87A14E4(v79, &qword_1ECA665E8);
        v101(v100, v102);
      }

      goto LABEL_26;
    }

    (*(v36 + 96))(v81, v35);
    v93 = v115;
    v94 = v107;
    (*(v115 + 32))(v107, v81, v114);
    v119 = v35;
    v95 = sub_1D8B13FB0();
    v96 = v111;
    v97 = v112;
    v98 = v113;
    (*(v112 + 104))(v111, *MEMORY[0x1E69A1150], v113);
    v99 = sub_1D89A5668(v96, v95);

    (*(v97 + 8))(v96, v98);
    (*(v93 + 8))(v94, v114);
    sub_1D87A14E4(v79, &qword_1ECA665E8);
    (*(v36 + 8))(v122, v119);
    if ((v99 & 1) == 0)
    {
LABEL_26:
      result = sub_1D87A14E4(v80, &qword_1ECA665E8);
      v49 = 10;
      goto LABEL_32;
    }
  }

  *v123 = 9;
  return sub_1D87A14E4(v80, &qword_1ECA665E8);
}

id AskAcmeRequirementManager.init(hasOnboardedACME:)(char a1)
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v4 = result;
    v5 = [result isExternalIntelligenceAllowed];

    *(v1 + 17) = v5 ^ 1;
    v6 = [objc_opt_self() sharedInstance];
    *(v1 + 48) = sub_1D881F764(0, &unk_1EE0E3778);
    *(v1 + 56) = &off_1F5430390;
    *(v1 + 24) = v6;
    *(v1 + 16) = a1 & 1;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D898DD8C()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = [result isExternalIntelligenceAllowed];

    *(v3 + 17) = v4 ^ 1;
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AskAcmeRequirementManager.shouldShowAskAcmeUI.getter()
{
  v0 = sub_1D8B13FC0();
  v40 = *(v0 - 8);
  v41 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v39 = v36 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D8B14060();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13FE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v36 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v36 - v17;
  if (qword_1EE0E9958 != -1)
  {
    swift_once();
  }

  v43 = qword_1EE0E9960;
  v44 = word_1EE0E9968;
  v45 = byte_1EE0E996A;
  v42 = 5;
  (*(v3 + 104))(v5, *MEMORY[0x1E69A12A0], v2);

  GreymatterAvailability.availability(_:languageOption:)(v9, v18, &v42, v5);
  (*(v3 + 8))(v5, v2);

  v19 = *(v7 + 8);
  v19(v9, v6);
  sub_1D898EF38(v18, v16);
  if ((*(v7 + 48))(v16, 1, v6) != 1)
  {
    sub_1D898EF38(v16, v13);
    v21 = (*(v7 + 88))(v13, v6);
    if (v21 == *MEMORY[0x1E69A0EF8])
    {
      sub_1D87A14E4(v18, &qword_1ECA665E8);
      v19(v13, v6);
      v20 = 1;
      goto LABEL_9;
    }

    if (v21 == *MEMORY[0x1E69A0F00])
    {
      (*(v7 + 96))(v13, v6);
      (*(v40 + 32))(v39, v13, v41);
      v38 = sub_1D8B13FB0();
      v36[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665F0);
      v22 = sub_1D8B13FA0();
      v23 = *(*(v22 - 8) + 72);
      v24 = *(*(v22 - 8) + 80);
      v37 = *(v22 - 8);
      v25 = v37;
      v26 = (v24 + 32) & ~v24;
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D8B1AB80;
      v28 = *(v25 + 104);
      v28(v27 + v26, *MEMORY[0x1E69A1158], v22);
      v28(v27 + v26 + v23, *MEMORY[0x1E69A1150], v22);
      v38 = sub_1D88BAB88(v27, v38);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1D8B1AB90;
      v28(v29 + v26, *MEMORY[0x1E69A10B8], v22);
      v30 = sub_1D8A56B7C(v29);
      swift_setDeallocating();
      (*(v37 + 8))(v29 + v26, v22);
      swift_deallocClassInstance();
      v20 = sub_1D89510C8(v38, v30);

      (*(v40 + 8))(v39, v41);
      sub_1D87A14E4(v18, &qword_1ECA665E8);
      goto LABEL_9;
    }

    if (v21 != *MEMORY[0x1E69A11A0])
    {
      v19(v13, v6);
      if (qword_1EE0E43E0 != -1)
      {
        swift_once();
      }

      v32 = sub_1D8B151E0();
      __swift_project_value_buffer(v32, qword_1EE0E43E8);
      v33 = sub_1D8B151C0();
      v34 = sub_1D8B16210();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1D8783000, v33, v34, "Unknown partner availability response from GMS availability", v35, 2u);
        MEMORY[0x1DA721330](v35, -1, -1);
      }
    }
  }

  sub_1D87A14E4(v18, &qword_1ECA665E8);
  v20 = 1;
LABEL_9:
  sub_1D87A14E4(v16, &qword_1ECA665E8);
  return v20 & 1;
}

uint64_t static AskAcmeRequirementManager.askACMERequirementAlertDescription(_:)(_BYTE *a1)
{
  v2 = sub_1D8B15910();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v41[4] = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v41[3] = v41 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B15930();
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v19 = 0;
  v20 = *a1;
  if (v20 > 5)
  {
    if (v20 - 6 < 2)
    {
      return v19;
    }

    if (v20 == 8)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }
  }

  else if (*a1 > 2u)
  {
    v20 = 3;
  }

  else if (*a1 && v20 != 1)
  {
    return v19;
  }

  v41[0] = v18;
  v41[1] = v17;
  v41[2] = v16;
  sub_1D8B158D0();
  v41[5] = sub_1D881F764(0, &qword_1EE0E36B0);
  if (!sub_1D8B163E0())
  {
    v21 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v22 = sub_1D8B159D0();
  v24 = v23;
  if (v20 == 4)
  {

    v42 = 0xD000000000000024;
    sub_1D8B158D0();
    if (!sub_1D8B163E0())
    {
      v29 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    v19 = sub_1D8B159D0();
    v26 = 0x80000001D8B45140;
    goto LABEL_21;
  }

  v25 = v22;
  if (v20 != 3)
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_1D8B16720();

    v44 = 543912769;
    v45 = 0xE400000000000000;
    MEMORY[0x1DA71EFA0](v25, v24);
    MEMORY[0x1DA71EFA0](0x7473657220736920, 0xEF2E646574636972);
    v26 = v45;
    v42 = v44;
    if (v20)
    {
      if (v20 == 1)
      {
        sub_1D8B15900();
        sub_1D8B158F0();
        sub_1D8B158E0();

        sub_1D8B158F0();
        sub_1D8B15920();
        if (!sub_1D8B163E0())
        {
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D8B15900();
        sub_1D8B158F0();
        sub_1D8B158E0();

        sub_1D8B158F0();
        sub_1D8B15920();
        if (!sub_1D8B163E0())
        {
LABEL_29:
          v31 = [objc_opt_self() mainBundle];
        }
      }
    }

    else
    {
      sub_1D8B15900();
      sub_1D8B158F0();
      sub_1D8B158E0();

      sub_1D8B158F0();
      sub_1D8B15920();
      if (!sub_1D8B163E0())
      {
        goto LABEL_29;
      }
    }

    sub_1D8B132F0();
    v19 = sub_1D8B159D0();
    v30 = v32;

    goto LABEL_31;
  }

  v26 = 0x80000001D8B45230;
  sub_1D8B15900();
  sub_1D8B158F0();
  sub_1D8B158E0();

  v42 = 0xD000000000000024;
  sub_1D8B158F0();
  sub_1D8B15920();
  if (!sub_1D8B163E0())
  {
    v27 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  v19 = sub_1D8B159D0();
LABEL_21:
  v30 = v28;
LABEL_31:

  if (qword_1EE0E4440 != -1)
  {
    swift_once();
  }

  v33 = sub_1D8B151E0();
  __swift_project_value_buffer(v33, qword_1EE0E4448);

  v34 = sub_1D8B151C0();
  v35 = sub_1D8B161F0();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44 = v37;
    *v36 = 136315394;
    v38 = sub_1D89AC714(v19, v30, &v44);

    *(v36 + 4) = v38;
    *(v36 + 12) = 2080;
    v39 = sub_1D89AC714(v42, v26, &v44);

    *(v36 + 14) = v39;
    _os_log_impl(&dword_1D8783000, v34, v35, "Presenting ACME error: %s, %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v37, -1, -1);
    MEMORY[0x1DA721330](v36, -1, -1);
  }

  else
  {
  }

  return v19;
}

uint64_t AskAcmeRequirementManager.__deallocating_deinit()
{
  sub_1D898EFA8(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D898EEFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AskAcmeRequirementManager();
  result = sub_1D8B15440();
  *a1 = result;
  return result;
}

uint64_t sub_1D898EF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA665E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D898F000()
{
  result = qword_1ECA665F8;
  if (!qword_1ECA665F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA665F8);
  }

  return result;
}

unint64_t sub_1D898F058()
{
  result = qword_1ECA66600;
  if (!qword_1ECA66600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AskAcmeAlert(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AskAcmeAlert(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
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

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D898F210(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D898F224(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t dispatch thunk of AskAcmeRequirementManager.refreshRestrictions()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8864FBC;

  return v4();
}

uint64_t sub_1D898F4B0()
{
  v0 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D8B158D0();
  sub_1D87D1F20();
  if (!sub_1D8B163E0())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  sub_1D8B132F0();
  return sub_1D8B159D0();
}

uint64_t AskACMESource.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D8B16930();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_1D898F660()
{
  result = qword_1ECA66608;
  if (!qword_1ECA66608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66608);
  }

  return result;
}

uint64_t sub_1D898F6B4()
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D898F720()
{
  sub_1D8B16D20();
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t sub_1D898F770@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D8B16930();

  *a1 = v2 != 0;
  return result;
}

CGImageRef CameraSourceFrame.cgImage.getter(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  (*(a2 + 40))(&pixelBuffer);
  if (v18 == 1)
  {
    (*(a2 + 32))(&pixelBuffer, a1, a2);
    v4 = pixelBuffer;
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        if (qword_1ECA62140 != -1)
        {
          swift_once();
        }

        v5 = sub_1D8B151E0();
        __swift_project_value_buffer(v5, qword_1ECA669C0);
        v6 = v4;
        v7 = sub_1D8B151C0();
        v8 = sub_1D8B16210();
        sub_1D88C3978(v4, 2u);
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          imageOut = v10;
          *v9 = 136315138;
          swift_getErrorValue();
          v11 = sub_1D8B16C90();
          v13 = sub_1D89AC714(v11, v12, &imageOut);

          *(v9 + 4) = v13;
          _os_log_impl(&dword_1D8783000, v7, v8, "Unable to get CGImage copy: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v10);
          MEMORY[0x1DA721330](v10, -1, -1);
          MEMORY[0x1DA721330](v9, -1, -1);
          sub_1D88C3978(v4, 2u);
        }

        else
        {

          sub_1D88C3978(v4, 2u);
        }
      }

      return 0;
    }

    else if (!v17)
    {
      imageOut = 0;
      VTCreateCGImageFromCVPixelBuffer(pixelBuffer, 0, &imageOut);
      sub_1D88C3978(v4, 0);
      return imageOut;
    }

    return v4;
  }

  else
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

uint64_t CameraSourceFrame.surface.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 40))(&pixelBuffer);
  if (v13 == 1)
  {
    (*(a2 + 32))(&pixelBuffer, a1, a2);
    v4 = pixelBuffer;
    v5 = v12;
    if (v12)
    {
      v6 = pixelBuffer;
LABEL_4:
      sub_1D88C3978(v6, v5);
      return 0;
    }

    IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
    if (!IOSurface)
    {
      v6 = v4;
      v5 = 0;
      goto LABEL_4;
    }

    v9 = IOSurface;
    v10 = IOSurface;
    sub_1D88C3978(v4, 0);
    return v9;
  }

  else
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

CGImageRef_optional __swiftcall CameraSourceFrame.cgImageCroppedInside(normalized:)(__C::CGRect normalized)
{
  v3 = v2;
  v4 = v1;
  height = normalized.size.height;
  width = normalized.size.width;
  y = normalized.origin.y;
  x = normalized.origin.x;
  (*(v2 + 40))(v18);
  if (v19 == 1)
  {
    v9 = CameraSourceFrame.cgImage.getter(v4, v3);
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    v11 = CGImageGetWidth(v9);
    v12 = CGImageGetHeight(v10);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v13 = CGRectGetMinX(v20) * v11;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = CGRectGetMinY(v21) * v12;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v15 = CGRectGetWidth(v22) * v11;
    v23.origin.x = x;
    v23.origin.y = y;
    v23.size.width = width;
    v23.size.height = height;
    v24.size.height = CGRectGetHeight(v23) * v12;
    v24.origin.x = v13;
    v24.origin.y = v14;
    v24.size.width = v15;
    v16 = CGImageCreateWithImageInRect(v10, v24);

    return v16;
  }

  else
  {
    result.value = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

__C::CGRect __swiftcall CGRect.init(centeredAt:size:)(CGPoint centeredAt, CGSize size)
{
  v2 = centeredAt.x - size.width * 0.5;
  v3 = centeredAt.y - size.height * 0.5;
  result.size.height = size.height;
  result.size.width = size.width;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void CGRect.corners.getter(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  MinX = CGRectGetMinX(*&a2);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  MinY = CGRectGetMinY(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  MaxX = CGRectGetMaxX(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v10 = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  v11 = CGRectGetMinX(v21);
  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  MaxY = CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v13 = CGRectGetMaxX(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v14 = CGRectGetMaxY(v24);
  *a1 = MinX;
  a1[1] = MinY;
  a1[2] = MaxX;
  a1[3] = v10;
  a1[4] = v11;
  a1[5] = MaxY;
  a1[6] = v13;
  a1[7] = v14;
}

CGImageRef_optional __swiftcall CGImageRef.rotateCounterClockwiseBy90Degrees()()
{
  v1 = CGImageGetColorSpace(v0);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  Height = CGImageGetHeight(v0);
  Width = CGImageGetWidth(v0);
  BitsPerComponent = CGImageGetBitsPerComponent(v0);
  BitmapInfo = CGImageGetBitmapInfo(v0);
  v7 = __CGBitmapContextCreate_1(Height, Width, BitsPerComponent, v2, BitmapInfo);
  if (!v7)
  {

LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D8B1AB90;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 32) = 0xD000000000000035;
    *(v13 + 40) = 0x80000001D8B45340;
    sub_1D8B16CF0();

    return 0;
  }

  v8 = v7;
  v9 = vcvtd_n_f64_s64(CGImageGetHeight(v0), 1uLL);
  v10 = CGImageGetWidth(v0);
  CGContextTranslateCTM(v8, v9, vcvtd_n_f64_s64(v10, 1uLL));
  CGContextRotateCTM(v8, -1.57079633);
  result.value = CGImageGetWidth(v0);
  if (__OFSUB__(0, result.value))
  {
    __break(1u);
  }

  else
  {
    result.value = CGImageGetHeight(v0);
    if (!__OFSUB__(0, result.value))
    {
      CGImageGetWidth(v0);
      CGImageGetHeight(v0);
      sub_1D8B161D0();
      Image = CGBitmapContextCreateImage(v8);

      return Image;
    }
  }

  __break(1u);
  return result;
}

uint64_t CGImageRef.toPNG()()
{
  v1 = v0;
  v2 = sub_1D8B14BE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  sub_1D8B14BD0();
  sub_1D8B14BC0();
  (*(v3 + 8))(v5, v2);
  v7 = sub_1D8B15940();

  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  if (v8)
  {
    CGImageDestinationAddImage(v8, v1, 0);
    if (CGImageDestinationFinalize(v8))
    {
      v9 = v6;
      v10 = sub_1D8B13050();

      return v10;
    }

    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v16 = sub_1D8B151E0();
    __swift_project_value_buffer(v16, qword_1EE0E4448);
    v17 = sub_1D8B151C0();
    v18 = sub_1D8B16210();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D8783000, v17, v18, "Error: Unable to finalize image destination.", v19, 2u);
      MEMORY[0x1DA721330](v19, -1, -1);
    }
  }

  else
  {
    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v12 = sub_1D8B151E0();
    __swift_project_value_buffer(v12, qword_1EE0E4448);
    v13 = sub_1D8B151C0();
    v14 = sub_1D8B16210();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D8783000, v13, v14, "Error: Unable to create image destination for PNG conversion.", v15, 2u);
      MEMORY[0x1DA721330](v15, -1, -1);
    }
  }

  return 0;
}

double sub_1D8990398(__n128 a1, __n128 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D18);
  v5 = swift_allocObject();
  v6 = _swift_stdlib_malloc_size(v5);
  v7 = v6 - 32;
  if (v6 < 32)
  {
    v7 = v6 - 25;
  }

  *(v5 + 16) = 2;
  *(v5 + 24) = 2 * (v7 >> 3);
  *(v5 + 32) = xmmword_1D8B190D0;
  v33 = MEMORY[0x1E69E7CC0];
  v8 = sub_1D87F4140(0, 2, 0);
  v9 = *(v5 + 16);
  if (!v9)
  {
    goto LABEL_20;
  }

  v8 = v5;
  v3 = *(v5 + 32);
  if (v3 > 1)
  {
    goto LABEL_21;
  }

  v10 = v33;
  v4 = *(v33 + 16);
  v9 = *(v33 + 24);
  v2 = v4 + 1;
  if (v4 >= v9 >> 1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v31 = a1;
    v11 = *(&v31 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
    v32 = a2;
    v12 = *(&v32 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
    *(v10 + 16) = v2;
    *(v10 + 8 * v4 + 32) = (v11 - v12) * (v11 - v12);
    v9 = *(v8 + 2);
    if (v9 < 2)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v3 = *(v8 + 5);
    if (v3 <= 1)
    {
      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v26 = v8;
    sub_1D87F4140((v9 > 1), v2, 1);
    v8 = v26;
    v10 = v33;
  }

  v33 = v10;
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1D87F4140((v13 > 1), v14 + 1, 1);
    v10 = v33;
  }

  v29 = a1;
  v15 = *(&v29 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
  v30 = a2;
  v16 = *(&v30 & 0xFFFFFFFFFFFFFFF7 | (8 * (v3 & 1)));
  *(v10 + 16) = v14 + 1;
  *(v10 + 8 * v14 + 32) = (v15 - v16) * (v15 - v16);

  v17 = *(v10 + 16);
  if (v17)
  {
    if (v17 <= 3)
    {
      v18 = 0;
      v19 = 0.0;
      goto LABEL_17;
    }

    v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    v20 = (v10 + 48);
    v19 = 0.0;
    v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
      v20 += 4;
      v21 -= 4;
    }

    while (v21);
    if (v17 != v18)
    {
LABEL_17:
      v22 = v17 - v18;
      v23 = (v10 + 8 * v18 + 32);
      do
      {
        v24 = *v23++;
        v19 = v19 + v24;
        --v22;
      }

      while (v22);
    }
  }

  else
  {
    v19 = 0.0;
  }

  return sqrt(v19);
}

double CGPoint.distance(to:)(double a1, double a2, __n128 a3, double a4)
{
  v4.n128_f64[0] = a1;
  v4.n128_f64[1] = a2;
  a3.n128_f64[1] = a4;
  return sub_1D8990398(a3, v4);
}

CGPoint __swiftcall CGPoint.scale(to:)(CGSize to)
{
  v3 = to.width * v1;
  v4 = to.height * v2;
  result.y = v4;
  result.x = v3;
  return result;
}

CGPoint __swiftcall CGPoint.normalize(by:)(CGSize by)
{
  v3 = v1 / by.width;
  v4 = v2 / by.height;
  result.y = v4;
  result.x = v3;
  return result;
}

double CGRect.center.getter(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MidX = CGRectGetMidX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMidY(v10);
  return MidX;
}

__C::CGRect __swiftcall CGRect.normalizedRotateToOrientation(_:sourceOrientation:)(VisualIntelligenceCore::Angle _, VisualIntelligenceCore::Angle sourceOrientation)
{
  v23 = v4;
  v24 = v5;
  v8 = *v2;
  v9 = *v3;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  tx = t1.tx;
  ty = t1.ty;
  v17 = *&t1.c;
  v18 = *&t1.a;
  CGAffineTransformMakeRotation(&t1, -(v8 - v9));
  v12 = t1.tx;
  v13 = t1.ty;
  v19 = *&t1.c;
  v20 = *&t1.a;
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v14 = t1.tx;
  v15 = t1.ty;
  v21 = *&t1.c;
  v22 = *&t1.a;
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v16;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  *&t2.a = v18;
  *&t2.c = v17;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  *&t2.a = v20;
  *&t2.c = v19;
  t2.tx = v12;
  t2.ty = v13;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  *&t2.a = v22;
  *&t2.c = v21;
  t2.tx = v14;
  t2.ty = v15;
  CGAffineTransformConcat(&v25, &t1, &t2);
  t1 = v25;
  v28.origin.x = _.radiansValue;
  v28.origin.y = sourceOrientation.radiansValue;
  v28.size.width = v23;
  v28.size.height = v24;
  return CGRectApplyAffineTransform(v28, &t1);
}

Swift::String __swiftcall CGFloat.string(withFormat:)(Swift::String withFormat)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB90;
  *(v3 + 56) = MEMORY[0x1E69E7DE0];
  *(v3 + 64) = sub_1D8990F78();
  *(v3 + 32) = v2;

  v4 = sub_1D8B159A0();
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1D89908A8(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8B1AB90;
  v5 = MEMORY[0x1E69E7DE0];
  *(v4 + 56) = MEMORY[0x1E69E7DE0];
  v6 = sub_1D8990F78();
  *(v4 + 64) = v6;
  *(v4 + 32) = a1;
  v7 = sub_1D8B159A0();
  MEMORY[0x1DA71EFA0](v7);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D8B1AB90;
  *(v8 + 56) = v5;
  *(v8 + 64) = v6;
  *(v8 + 32) = a2;
  v9 = sub_1D8B159A0();
  MEMORY[0x1DA71EFA0](v9);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  return 40;
}

Swift::String __swiftcall CGRect.string(withFormat:)(Swift::String withFormat)
{
  object = withFormat._object;
  countAndFlagsBits = withFormat._countAndFlagsBits;
  v3 = CGSize.string(withFormat:)(withFormat)._countAndFlagsBits;
  MEMORY[0x1DA71EFA0](v3);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  v4._countAndFlagsBits = countAndFlagsBits;
  v4._object = object;
  v5 = CGSize.string(withFormat:)(v4)._countAndFlagsBits;
  MEMORY[0x1DA71EFA0](v5);

  MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  v6 = 40;
  v7 = 0xE100000000000000;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t CGImageRef.toHEIC(compressionQuality:)(double a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v4 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB90;
  sub_1D8B15970();
  v6 = sub_1D8B15940();

  *(inited + 32) = v6;
  *(inited + 64) = MEMORY[0x1E69E7DE0];
  *(inited + 40) = a1;
  sub_1D893C994(inited);
  swift_setDeallocating();
  sub_1D87CAC2C(inited + 32);
  v7 = CGImageGetColorSpace(v1);
  if (v7 || (v7 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0])) != 0)
  {
    v8 = v7;
    v9 = *MEMORY[0x1E695F910];
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1D87CAC94();
    v10 = sub_1D8B15710();

    v11 = [v4 HEIFRepresentationOfImage:v3 format:v9 colorSpace:v8 options:v10];

    if (v11)
    {
      v12 = sub_1D8B13050();

      return v12;
    }
  }

  else
  {

    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v14 = sub_1D8B151E0();
    __swift_project_value_buffer(v14, qword_1EE0E4448);
    v15 = sub_1D8B151C0();
    v16 = sub_1D8B16210();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D8783000, v15, v16, "Error: Unable to determine color space for the image.", v17, 2u);
      MEMORY[0x1DA721330](v17, -1, -1);
    }
  }

  return 0;
}

CGColorSpace *CGImageRef.resized(toMaxDimension:)(double a1)
{
  Width = CGImageGetWidth(Image);
  Height = CGImageGetHeight(Image);
  if (Width <= a1 && Height <= a1)
  {
    v15 = Image;
    return Image;
  }

  if (a1 / Height >= a1 / Width)
  {
    v6 = a1 / Width;
  }

  else
  {
    v6 = a1 / Height;
  }

  result = CGImageGetColorSpace(Image);
  if (!result)
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EA0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1D8B1AB90;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 32) = 0xD000000000000035;
    *(v16 + 40) = 0x80000001D8B45380;
    sub_1D8B16CF0();

    return 0;
  }

  v8 = v6 * Width;
  if (v6 * Width <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v6 * Height;
  if (COERCE__INT64(fabs(v6 * Width)) > 0x7FEFFFFFFFFFFFFFLL || (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = result;
    BitsPerComponent = CGImageGetBitsPerComponent(Image);
    BitmapInfo = CGImageGetBitmapInfo(Image);
    v13 = __CGBitmapContextCreate_1(v8, v9, BitsPerComponent, v10, BitmapInfo);
    if (v13)
    {
      v14 = v13;
      CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
      sub_1D8B161D0();
      Image = CGBitmapContextCreateImage(v14);

      return Image;
    }

    goto LABEL_19;
  }

LABEL_25:
  __break(1u);
  return result;
}

unint64_t sub_1D8990F78()
{
  result = qword_1ECA66610;
  if (!qword_1ECA66610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66610);
  }

  return result;
}

uint64_t TimestampDataBuffer.append(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(*v2 + 232);
  v7 = sub_1D8B16470();
  v21 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v19 - v12;
  if (sub_1D899430C())
  {
    return sub_1D89917B0(a1, a2);
  }

  v20 = a2;
  v22 = v2;
  swift_getWitnessTable();
  sub_1D8B15800();
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v21 + 8))(v10, v7);
    a2 = v20;
    return sub_1D89917B0(a1, a2);
  }

  (*(v11 + 32))(v13, v10, v6);
  v15 = *(v5 + 240);
  v16 = *(v15 + 8);
  v17 = v16(v6, v15);
  if (v17 >= v16(v6, v15))
  {
    result = sub_1D8B168C0();
    __break(1u);
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v5;
    _s22VisualIntelligenceCore19TimestampDataBufferC6insert_19replacementFunctionxSgx_xx_xtctF_0(a1, sub_1D89943A0, v18, v20);

    return (*(v11 + 8))(v13, v6);
  }

  return result;
}

uint64_t sub_1D899136C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v9 = v3[2];
  v10 = *(v9 + 2);
  if (!v10)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

LABEL_21:
    v17 = 1;
    goto LABEL_22;
  }

  v11 = v3[3];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
    goto LABEL_20;
  }

  v14 = v3[4];
  if (!v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v13 == 0x8000000000000000 && v14 == -1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v13 % v14;
  v3[3] = v13 % v14;
  if (v10 >= v14)
  {
    if (v4 < v10)
    {
      v5 = 16 * v4;
      v23 = &v9[16 * v4];
      v24 = *(v23 + 4);
      *a3 = v24;
      v25 = v23[40];
      *(a3 + 8) = v25;
      swift_beginAccess();
      sub_1D881F4C0(v24, v25);
      result = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v9;
      if (result)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1D89394C8(v9);
    v9 = result;
    v3[2] = result;
LABEL_17:
    if (v4 >= *(v9 + 2))
    {
      __break(1u);
    }

    else
    {
      v26 = &v9[v5];
      v27 = *&v9[v5 + 32];
      *(v26 + 4) = a1;
      v28 = v9[v5 + 40];
      v26[40] = a2;
      sub_1D881F4C0(a1, a2);
      v3[2] = v9;
      swift_endAccess();
      return sub_1D8997618(v27, v28);
    }

    return result;
  }

  swift_beginAccess();
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v3[2] = v9;
  if ((v16 & 1) == 0)
  {
    v17 = v10 + 1;
LABEL_22:
    v9 = sub_1D87CA1C0(0, v17, 1, v9);
    v3[2] = v9;
  }

LABEL_12:
  v20 = *(v9 + 2);
  v19 = *(v9 + 3);
  if (v20 >= v19 >> 1)
  {
    v9 = sub_1D87CA1C0((v19 > 1), v20 + 1, 1, v9);
  }

  *(v9 + 2) = v20 + 1;
  v21 = &v9[16 * v20];
  *(v21 + 4) = a1;
  v21[40] = a2;
  v3[2] = v9;
  swift_endAccess();
  *a3 = 0;
  *(a3 + 8) = -8;
  return sub_1D881F4C0(a1, a2);
}

uint64_t sub_1D89915AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v6 = v2[2];
  v7 = *(v6 + 16);
  if (!v7)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    v2[2] = v6;
    if (result)
    {
      goto LABEL_12;
    }

LABEL_21:
    v14 = 1;
    goto LABEL_22;
  }

  v8 = v2[3];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v2[4];
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v10 == 0x8000000000000000 && v11 == -1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = v10 % v11;
  v2[3] = v10 % v11;
  if (v7 >= v11)
  {
    if (v3 < v7)
    {
      v22 = v6 + 88 * v3;
      v23 = *(v22 + 80);
      *(a2 + 32) = *(v22 + 64);
      *(a2 + 48) = v23;
      *(a2 + 64) = *(v22 + 96);
      *(a2 + 80) = *(v22 + 112);
      v24 = *(v22 + 48);
      *a2 = *(v22 + 32);
      *(a2 + 16) = v24;
      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v6;
      if (result)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    result = sub_1D89394DC(v6);
    v6 = result;
LABEL_17:
    if (v3 >= *(v6 + 16))
    {
      __break(1u);
    }

    else
    {
      v25 = *(a1 + 48);
      v26 = v6 + 88 * v3;
      *(v26 + 64) = *(a1 + 32);
      *(v26 + 80) = v25;
      *(v26 + 96) = *(a1 + 64);
      *(v26 + 112) = *(a1 + 80);
      v27 = *(a1 + 16);
      *(v26 + 32) = *a1;
      *(v26 + 48) = v27;
      v2[2] = v6;
      *(a2 + 88) = 0;
    }

    return result;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v6;
  if ((result & 1) == 0)
  {
    v14 = v7 + 1;
LABEL_22:
    result = sub_1D87CA2CC(0, v14, 1, v6);
    v6 = result;
    v2[2] = result;
  }

LABEL_12:
  v16 = *(v6 + 16);
  v15 = *(v6 + 24);
  if (v16 >= v15 >> 1)
  {
    result = sub_1D87CA2CC((v15 > 1), v16 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v16 + 1;
  v17 = v6 + 88 * v16;
  v18 = *(a1 + 16);
  *(v17 + 32) = *a1;
  *(v17 + 48) = v18;
  v19 = *(a1 + 32);
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  *(v17 + 112) = *(a1 + 80);
  *(v17 + 80) = v20;
  *(v17 + 96) = v21;
  *(v17 + 64) = v19;
  v2[2] = v6;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  return result;
}

uint64_t sub_1D89917B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - v8;
  swift_beginAccess();
  v24 = v2[2];
  sub_1D8B15DB0();
  swift_getWitnessTable();
  result = sub_1D8B16160();
  if (result)
  {
    (*(v7 + 16))(v9, a1, v6);
    swift_beginAccess();
    sub_1D8B15D90();
    swift_endAccess();
    v11 = 1;
    return (*(v7 + 56))(a2, v11, 1, v6);
  }

  v12 = v2[3];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v2[4];
  if (!v15)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 != 0x8000000000000000 || v15 != -1)
  {
    v23 = a1;
    v16 = a2;
    v17 = v14 % v15;
    v2[3] = v14 % v15;
    swift_beginAccess();

    v18 = sub_1D8B15D80();

    if (v18 >= v15)
    {
      swift_beginAccess();

      a2 = v16;
      sub_1D8B15DE0();

      swift_beginAccess();
      sub_1D8B15D40();
      v19 = v2[2];
      sub_1D8996D50(v17, v3[2]);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v21 = v19 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v21 = v19;
      }

      (*(v7 + 24))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v23, v6);
      swift_endAccess();
      v11 = 0;
    }

    else
    {
      (*(v7 + 16))(v9, v23, v6);
      swift_beginAccess();
      sub_1D8B15D90();
      swift_endAccess();
      v11 = 1;
      a2 = v16;
    }

    return (*(v7 + 56))(a2, v11, 1, v6);
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D8991AF0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a2 >> 5;
  v8 = *&a1;
  if (v7 == 2)
  {
    v60 = a1;
    CVDetection.detection.getter(&v52);
    v9 = v54;
    v10 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v11 = (*(v10 + 88))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v8 = v11;
  }

  if ((~*&v8 & 0x7FF0000000000000) == 0 && (*&v8 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    goto LABEL_47;
  }

  if (v7 <= 1)
  {
    v12 = *&a1;
  }

  else if (v7 == 2)
  {
    v60 = a1;
    CVDetection.detection.getter(&v52);
    v13 = v54;
    v14 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v12 = (*(v14 + 88))(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v52);
  }

  else
  {
    v12 = *&a1;
  }

  if (v12 == -INFINITY)
  {
LABEL_47:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  swift_beginAccess();
  v15 = *(*(a3 + 16) + 16);
  if (!v15)
  {
    return sub_1D899136C(a1, a2, a4);
  }

  sub_1D8AC1168(v15 - 1, &v52);
  v16 = v52;
  v17 = v53;
  sub_1D881F4C0(v52, v53);
  sub_1D8997618(v16, v17);
  if (v17 >> 5 == 2)
  {
    v58 = *&v16;
    CVDetection.detection.getter(&v52);
    v20 = v54;
    v21 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v19 = (*(v21 + 88))(v20, v21);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v7 <= 1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v19 = *&v16;
    if (v7 <= 1)
    {
      goto LABEL_19;
    }
  }

  if (v7 == 2)
  {
    v58 = *&a1;
    CVDetection.detection.getter(&v52);
    v24 = v54;
    v25 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v26 = (*(v25 + 88))(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v19 < v26)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

LABEL_19:
  if (v19 < *&a1)
  {
LABEL_20:
    sub_1D899136C(a1, a2, a4);
    v22 = v16;
    v23 = v17;
    return sub_1D8997618(v22, v23);
  }

LABEL_23:
  if (v7 == 2)
  {
    v58 = *&a1;
    CVDetection.detection.getter(&v52);
    v39 = v54;
    v40 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v41 = (*(v40 + 88))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v27 = v41;
  }

  else
  {
    v27 = *&a1;
  }

  v28 = sub_1D8992A00(v27);
  if (v29)
  {
    if (*(*(a3 + 16) + 16) != *(a3 + 32))
    {
      sub_1D8993940(a1, a2, 0);
    }

    v30 = v16;
    v31 = v17;
    goto LABEL_29;
  }

  v50 = v28;
  sub_1D8AC1168(v28, &v58);
  v32 = *&v58;
  v49 = v59;
  if ((v59 & 0xE0) == 0x40)
  {
    v56 = *&v58;
    CVDetection.detection.getter(&v52);
    v48 = v32;
    v34 = v54;
    v33 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v47 = *(v33 + 88);
    sub_1D881F4C0(a1, a2);
    v35 = v34;
    v32 = v48;
    v36 = v47(v35, v33);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v7 <= 1)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v36 = v58;
    sub_1D881F4C0(a1, a2);
    if (v7 <= 1)
    {
      goto LABEL_35;
    }
  }

  if (v7 == 2)
  {
    v56 = a1;
    CVDetection.detection.getter(&v52);
    v42 = v32;
    v43 = v54;
    v44 = v55;
    __swift_project_boxed_opaque_existential_1(&v52, v54);
    v45 = v43;
    v32 = v42;
    v46 = (*(v44 + 88))(v45, v44);
    __swift_destroy_boxed_opaque_existential_1(&v52);
    if (v36 == v46)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

LABEL_35:
  if (v36 != *&a1)
  {
LABEL_42:
    if (*(*(a3 + 16) + 16) == *(a3 + 32))
    {
      sub_1D8994458(a1, a2, v50, a4);
      sub_1D8997618(v16, v17);
      sub_1D8997618(a1, a2);
      v22 = v32;
      v23 = v49;
      return sub_1D8997618(v22, v23);
    }

    if (!__OFADD__(v50, 1))
    {
      sub_1D8993940(a1, a2, v50 + 1);
      sub_1D8997618(v16, v17);
      sub_1D8997618(a1, a2);
      v30 = v32;
      v31 = v49;
LABEL_29:
      result = sub_1D8997618(v30, v31);
      *a4 = 0;
      *(a4 + 8) = -8;
      return result;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_36:
  v52 = v32;
  v53 = v49;
  v56 = a1;
  v57 = a2;
  v37 = v32;
  if (sub_1D8ACEBA0(&v52, &v56))
  {
    v32 = a1;
    v38 = a2;
  }

  else
  {
    v38 = v49;
  }

  sub_1D881F4C0(v32, v38);
  sub_1D8997630(v32, v38, v50);
  sub_1D8997618(v32, v38);
  sub_1D8997618(v16, v17);
  result = sub_1D8997618(a1, a2);
  *a4 = v37;
  *(a4 + 8) = v49;
  return result;
}

unint64_t sub_1D899210C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 80);
  v5 = (*&v4 & 0xFFFFFFFFFFFFFLL) == 0 || (~*&v4 & 0x7FF0000000000000) != 0;
  if (v4 != -INFINITY && v5)
  {
    swift_beginAccess();
    v8 = *(*(a2 + 16) + 16);
    if (!v8)
    {
      return sub_1D89915AC(a1, a3);
    }

    sub_1D8AC1240(v8 - 1, v22);
    if (v23 < v4)
    {
      return sub_1D89915AC(a1, a3);
    }

    result = sub_1D89931C4(v4);
    if (v10)
    {
      if (*(*(a2 + 16) + 16) == *(a2 + 32))
      {
LABEL_19:
        LOBYTE(v22[0]) = 1;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0;
        *(a3 + 88) = 1;
        return result;
      }

      v11 = a1;
      v12 = 0;
LABEL_18:
      result = sub_1D8993B80(v11, v12);
      goto LABEL_19;
    }

    v13 = result;
    sub_1D8AC1240(result, &v16);
    if (v21 == v4)
    {
      v22[3] = v19;
      v22[4] = v20;
      v23 = v21;
      v22[0] = v16;
      v22[1] = v17;
      v22[2] = v18;
      result = sub_1D89937A4(v22, v13);
      v14 = v19;
      *(a3 + 32) = v18;
      *(a3 + 48) = v14;
      *(a3 + 64) = v20;
      *(a3 + 80) = v21;
      v15 = v17;
      *a3 = v16;
      *(a3 + 16) = v15;
      *(a3 + 88) = 0;
      return result;
    }

    if (*(*(a2 + 16) + 16) == *(a2 + 32))
    {
      return sub_1D89947D8(a1, v13, a3);
    }

    v12 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      v11 = a1;
      goto LABEL_18;
    }

    __break(1u);
  }

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t _s22VisualIntelligenceCore19TimestampDataBufferC6insert_19replacementFunctionxSgx_xx_xtctF_0@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v49 = a3;
  v50 = a2;
  v56 = a4;
  v7 = *v4;
  v8 = *(v7 + 232);
  v9 = sub_1D8B16470();
  v53 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - v11;
  v55 = *(v8 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v46 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v51 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v46 - v19;
  v20 = *(v7 + 240);
  v21 = *(v20 + 8);
  v22 = v21(v8, v20);
  v23 = (~*&v22 & 0x7FF0000000000000) != 0 || (*&v22 & 0xFFFFFFFFFFFFFLL) == 0;
  if (!v23 || v21(v8, v20) == -INFINITY)
  {
LABEL_24:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  if (sub_1D899430C())
  {
    return sub_1D89917B0(a1, v56);
  }

  v57 = v5;
  swift_getWitnessTable();
  sub_1D8B15800();
  v24 = v55;
  if ((*(v55 + 48))(v12, 1, v8) == 1)
  {
    (*(v53 + 8))(v12, v9);
    return sub_1D89917B0(a1, v56);
  }

  v26 = v54;
  v53 = *(v24 + 32);
  (v53)(v54, v12, v8);
  v27 = v21(v8, v20);
  if (v27 < v21(v8, v20))
  {
    sub_1D89917B0(a1, v56);
    return (*(v24 + 8))(v26, v8);
  }

  v28 = v21(v8, v20);
  v29 = sub_1D8993374(v28);
  if ((v30 & 1) == 0)
  {
    v32 = v51;
    v47 = v29;
    CircularBuffer.subscript.getter(v29);
    v33 = v52;
    (*(v55 + 16))(v52, a1, v8);
    v34 = v21(v8, v20);
    if (v34 == v21(v8, v20))
    {
      v35 = v48;
      v50(v32, v33);
      sub_1D8996FD0(v35, v47);
      v36 = v55;
      v37 = *(v55 + 8);
      v37(v35, v8);
      v37(v33, v8);
      v37(v54, v8);
      v38 = v56;
      (v53)(v56, v32, v8);
      return (*(v36 + 56))(v38, 0, 1, v8);
    }

    v39 = v47;
    v40 = sub_1D89943D4();
    v41 = v54;
    if (v40)
    {
      sub_1D8994B40(a1, v39, v56);
      v42 = *(v55 + 8);
      v42(v52, v8);
      v42(v32, v8);
      return (v42)(v41, v8);
    }

    v43 = v52;
    if (!__OFADD__(v39, 1))
    {
      sub_1D8993DC0(a1, v39 + 1);
      v44 = v55;
      v45 = *(v55 + 8);
      v45(v43, v8);
      v45(v51, v8);
      v45(v41, v8);
      return (*(v44 + 56))(v56, 1, 1, v8);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (!sub_1D89943D4())
  {
    sub_1D8993DC0(a1, 0);
  }

  v31 = v55;
  (*(v55 + 8))(v54, v8);
  return (*(v31 + 56))(v56, 1, 1, v8);
}

uint64_t (*default argument 1 of TimestampDataBuffer.insert(_:replacementFunction:)(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1D8996DA4;
}

uint64_t sub_1D8992A00(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(*(v1 + 16) + 16))
  {
    return 0;
  }

  result = sub_1D8AC1168(0, &v67);
  v8 = *&v67;
  v9 = v68;
  if (v68 >> 5 <= 1u)
  {
    v10 = v67;
LABEL_6:
    if (v10 > a1)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v68 >> 5 != 2)
  {
    v10 = v67;
    goto LABEL_6;
  }

  v66 = *&v67;
  CVDetection.detection.getter(&v67);
  v11 = v69;
  v12 = v70;
  __swift_project_boxed_opaque_existential_1(&v67, v69);
  v13 = (*(v12 + 88))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  result = sub_1D8997618(v8, v9);
  if (v13 > a1)
  {
    return 0;
  }

LABEL_9:
  v14 = *(*(v1 + 16) + 16);
  if (!v14)
  {
    goto LABEL_64;
  }

  sub_1D8AC1168(v14 - 1, &v67);
  *&v15 = v67;
  v16 = v68;
  sub_1D881F4C0(*&v67, v68);
  result = sub_1D8997618(v15, v16);
  if (v16 >> 5 <= 1)
  {
    v17 = *&v15;
  }

  else if (v16 >> 5 == 2)
  {
    v66 = v15;
    CVDetection.detection.getter(&v67);
    v18 = v69;
    v19 = v70;
    __swift_project_boxed_opaque_existential_1(&v67, v69);
    v17 = (*(v19 + 88))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(&v67);
    result = sub_1D8997618(v15, v16);
  }

  else
  {
    v17 = *&v15;
  }

  v20 = *(*(v1 + 16) + 16);
  if (v17 < a1)
  {
    return v20 - 1;
  }

  if (!v20)
  {
    return 0;
  }

  v61 = v6;
  v62 = v4;
  v21 = *(v1 + 32);
  if (!v21)
  {
    goto LABEL_65;
  }

  v22 = 0;
  v23 = v20 - 1;
  v24 = -1;
  v63 = v1;
  while (!__OFSUB__(v23, v22))
  {
    v25 = v22 + (v23 - v22) / 2;
    if (__OFADD__(v22, (v23 - v22) / 2))
    {
      goto LABEL_57;
    }

    v26 = *(v2 + 16);
    v27 = *(v26 + 16);
    if (v27 == v21)
    {
      v28 = *(v2 + 24);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_60;
      }

      v31 = v30 % v21;
    }

    else
    {
      v31 = 0;
    }

    v29 = __OFADD__(v31, v25);
    v32 = v31 + v25;
    if (v29)
    {
      goto LABEL_58;
    }

    if (v21 == -1 && v32 == 0x8000000000000000)
    {
      goto LABEL_61;
    }

    v33 = v32 % v21;
    if (v33 >= v27)
    {
      goto LABEL_59;
    }

    v34 = v26 + 16 * v33;
    v35 = *(v34 + 32);
    v36 = *(v34 + 40);
    if (v36 >> 5 <= 1)
    {
      v37 = *(v34 + 32);
LABEL_36:
      if (v37 > a1)
      {
        goto LABEL_20;
      }

LABEL_37:
      v22 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_62;
      }

      v24 = v25;
      if (v23 < v22)
      {
        return v24 & ~(v24 >> 63);
      }
    }

    else
    {
      if (v36 >> 5 != 2)
      {
        v37 = *(v34 + 32);
        goto LABEL_36;
      }

      v65 = v24;
      v64 = v36;
      switch(v35 >> 60)
      {
        case 1uLL:
          v52 = type metadata accessor for GroundedParseDetectorResult(0);
          v39 = swift_projectBox();
          v69 = v52;
          v40 = type metadata accessor for GroundedParseDetectorResult;
          v41 = &qword_1ECA64248;
          goto LABEL_52;
        case 2uLL:
          v47 = type metadata accessor for MetaDetectionResult();
          v39 = swift_projectBox();
          v69 = v47;
          v40 = type metadata accessor for MetaDetectionResult;
          v41 = &qword_1EE0E5CE0;
          goto LABEL_52;
        case 3uLL:
        case 8uLL:
          v38 = type metadata accessor for ObjectDetectorResult(0);
          v39 = swift_projectBox();
          v69 = v38;
          v40 = type metadata accessor for ObjectDetectorResult;
          v41 = &qword_1ECA64228;
          goto LABEL_52;
        case 4uLL:
          v53 = type metadata accessor for ParseDetectorResult(0);
          v39 = swift_projectBox();
          v69 = v53;
          v40 = type metadata accessor for ParseDetectorResult;
          v41 = &qword_1ECA64238;
          goto LABEL_52;
        case 5uLL:
          v54 = type metadata accessor for TextDetectorResult(0);
          v39 = swift_projectBox();
          v69 = v54;
          v40 = type metadata accessor for TextDetectorResult;
          v41 = &qword_1EE0E5FC0;
          goto LABEL_52;
        case 6uLL:
        case 7uLL:
          v42 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v39 = swift_projectBox();
          v69 = v42;
          v40 = type metadata accessor for StreamingBarcodeDetectorResult;
          v41 = &qword_1ECA64230;
          goto LABEL_52;
        case 9uLL:
        case 0xAuLL:
          v43 = swift_projectBox();
          v44 = v61;
          sub_1D89977F0(v43, v61, type metadata accessor for AFMResult);
          v69 = v62;
          v70 = sub_1D8947474(&qword_1EE0E3F80, type metadata accessor for AFMResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v67);
          sub_1D899778C(v44, boxed_opaque_existential_1);
          break;
        case 0xBuLL:
          v46 = type metadata accessor for SyntheticDetectionResult();
          v39 = swift_projectBox();
          v69 = v46;
          v40 = type metadata accessor for SyntheticDetectionResult;
          v41 = &qword_1EE0E4D38;
          goto LABEL_52;
        case 0xCuLL:
          v48 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v39 = swift_projectBox();
          v69 = v48;
          v40 = type metadata accessor for GroundedParseEmbeddingsResult;
          v41 = &qword_1ECA64220;
          goto LABEL_52;
        case 0xDuLL:
          v55 = type metadata accessor for GroundedParseClassificationsResult(0);
          v39 = swift_projectBox();
          v69 = v55;
          v40 = type metadata accessor for GroundedParseClassificationsResult;
          v41 = &qword_1ECA64218;
LABEL_52:
          v70 = sub_1D8947474(v41, v40);
          v56 = __swift_allocate_boxed_opaque_existential_1(&v67);
          sub_1D89977F0(v39, v56, v40);
          break;
        default:
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
          v50 = swift_projectBox();
          v69 = v49;
          v70 = sub_1D8906184();
          v51 = __swift_allocate_boxed_opaque_existential_1(&v67);
          sub_1D894733C(v50, v51);
          break;
      }

      v58 = v69;
      v57 = v70;
      __swift_project_boxed_opaque_existential_1(&v67, v69);
      v59 = *(v57 + 88);

      v60 = v59(v58, v57);
      __swift_destroy_boxed_opaque_existential_1(&v67);
      result = sub_1D8997618(v35, v64);
      v2 = v63;
      v24 = v65;
      if (v60 <= a1)
      {
        goto LABEL_37;
      }

LABEL_20:
      v23 = v25 - 1;
      if (__OFSUB__(v25, 1))
      {
        goto LABEL_63;
      }

      if (v23 < v22)
      {
        return v24 & ~(v24 >> 63);
      }
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1D89931C4(double a1)
{
  swift_beginAccess();
  if (!*(v1[2] + 16))
  {
    return 0;
  }

  result = sub_1D8AC1240(0, v19);
  v19[0] = 0;
  if (v20 > a1)
  {
    return 0;
  }

  v4 = *(v1[2] + 16);
  if (!v4)
  {
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
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
    goto LABEL_35;
  }

  result = sub_1D8AC1240(v4 - 1, v19);
  v5 = v1[2];
  v6 = *(v5 + 16);
  if (v20 < a1)
  {
    return v6 - 1;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = v1[4];
  if (v7)
  {
    v8 = 0;
    v9 = v6 - 1;
    v10 = v5 + 32;
    v11 = -1;
    while (!__OFSUB__(v9, v8))
    {
      v12 = v8 + (v9 - v8) / 2;
      if (__OFADD__(v8, (v9 - v8) / 2))
      {
        goto LABEL_28;
      }

      if (v6 == v7)
      {
        v13 = v1[3];
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_31;
        }

        result = v15 / v6;
        v16 = v15 % v6;
      }

      else
      {
        v16 = 0;
      }

      v14 = __OFADD__(v16, v12);
      v17 = v16 + v12;
      if (v14)
      {
        goto LABEL_29;
      }

      if (v7 == -1 && v17 == 0x8000000000000000)
      {
        goto LABEL_32;
      }

      result = v17 / v7;
      v18 = v17 % v7;
      if (v18 >= v6)
      {
        goto LABEL_30;
      }

      if (*(v10 + 88 * v18 + 80) > a1)
      {
        v9 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          goto LABEL_34;
        }

        if (v9 < v8)
        {
          return v11 & ~(v11 >> 63);
        }
      }

      else
      {
        v8 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_33;
        }

        v11 = v12;
        if (v9 < v8)
        {
          return v11 & ~(v11 >> 63);
        }
      }
    }

    goto LABEL_27;
  }

LABEL_35:
  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D8993374(double a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 232);
  v6 = sub_1D8B16470();
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  if (sub_1D899430C())
  {
    return 0;
  }

  v23 = v1;
  swift_getWitnessTable();
  sub_1D8B16150();
  v12 = *(v5 - 1);
  v22 = *(v12 + 48);
  result = v22(v11, 1, v5);
  if (result == 1)
  {
    goto LABEL_11;
  }

  v14 = *(v4 + 240);
  v21 = *(v14 + 8);
  v15 = v21(v5, v14);
  v16 = *(v12 + 8);
  v16(v11, v5);
  if (v15 > a1)
  {
    return 0;
  }

  v23 = v2;
  swift_getWitnessTable();
  sub_1D8B15800();
  result = v22(v9, 1, v5);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v17 = v21(v5, v14);
  v18 = (v16)(v9, v5);
  if (v17 >= a1)
  {
    MEMORY[0x1EEE9AC00](v18);
    *(&v21 - 4) = v5;
    *(&v21 - 3) = v14;
    *(&v21 - 2) = a1;
    return sub_1D8993FE8(sub_1D8997858, (&v21 - 6));
  }

  v19 = sub_1D89942F4();
  v20 = __OFSUB__(v19, 1);
  result = v19 - 1;
  if (v20)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t CircularBuffer.subscript.getter(uint64_t a1)
{
  swift_beginAccess();

  v3 = sub_1D8B15D80();

  v5 = 0;
  v6 = *(v1 + 32);
  if (v3 != v6)
  {
LABEL_9:
    v8 = __OFADD__(v5, a1);
    v11 = v5 + a1;
    if (v8)
    {
      __break(1u);
    }

    else if (v6)
    {
      if (v6 != -1 || v11 != 0x8000000000000000)
      {
        swift_beginAccess();

        sub_1D8B15DE0();
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v1 + 24);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3)
  {
    if (v3 == -1 && v9 == 0x8000000000000000)
    {
      goto LABEL_19;
    }

    v5 = v9 % v3;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1D89937A4(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  v6 = 0;
  v7 = v2[2];
  v8 = *(v7 + 16);
  v9 = v2[4];
  if (v8 != v9)
  {
LABEL_5:
    v11 = __OFADD__(v6, a2);
    v13 = v6 + a2;
    if (v11)
    {
      __break(1u);
    }

    else if (v9)
    {
      if (v9 == -1 && v13 == 0x8000000000000000)
      {
        goto LABEL_20;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v7;
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    result = sub_1D89394DC(v7);
    v7 = result;
LABEL_10:
    v14 = v13 % v9;
    if (v13 % v9 < 0)
    {
      __break(1u);
    }

    else if (v14 < *(v7 + 16))
    {
      v15 = *(a1 + 48);
      v16 = v7 + 88 * v14;
      *(v16 + 64) = *(a1 + 32);
      *(v16 + 80) = v15;
      *(v16 + 96) = *(a1 + 64);
      *(v16 + 112) = *(a1 + 80);
      v17 = *(a1 + 16);
      *(v16 + 32) = *a1;
      *(v16 + 48) = v17;
      v2[2] = v7;
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  v10 = v2[3];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8)
  {
    v6 = v12 % v8;
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t CircularBuffer.subscript.setter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D8996FD0(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

uint64_t sub_1D8993940(uint64_t a1, char a2, uint64_t a3)
{
  sub_1D899136C(a1, a2, &v34);
  result = sub_1D8997778(v34, v35);
  v8 = a3 + 1;
  if (__OFADD__(a3, 1))
  {
    goto LABEL_36;
  }

  result = swift_beginAccess();
  v9 = v3[2];
  v10 = *(v9 + 16);
  if (v10 > v8)
  {
    v11 = v3[4];
    if (v10 == v11)
    {
      v12 = v3[3];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (!v10)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v15 = v14 % v10;
    }

    else
    {
      v15 = 0;
    }

    v16 = v10 - 2;
    v13 = __OFADD__(v15, v10 - 2);
    v17 = v15 + v10 - 2;
    if (v13)
    {
LABEL_28:
      __break(1u);
    }

    else if (v11)
    {
      if (v11 == -1 && v17 == 0x8000000000000000)
      {
        goto LABEL_35;
      }

      v18 = v17 % v11;
      if (v18 < v10)
      {
        v19 = v10 - 1;
        v20 = v9 + 16 * v18;
        v21 = *(v20 + 32);
        v22 = *(v20 + 40);
        sub_1D881F4C0(v21, v22);
        sub_1D8997630(v21, v22, v19);
        result = sub_1D8997618(v21, v22);
        if (v19 == v8)
        {
LABEL_27:
          sub_1D881F4C0(a1, a2);
          sub_1D8997630(a1, a2, a3);
          return sub_1D8997618(a1, a2);
        }

        while (v8 < v16 + 1)
        {
          v23 = v16 - 1;
          if (__OFSUB__(v16 + 1, 2))
          {
            goto LABEL_32;
          }

          v24 = v3[2];
          v25 = *(v24 + 16);
          v26 = v3[4];
          if (v25 == v26)
          {
            v27 = v3[3];
            v13 = __OFADD__(v27, 1);
            v28 = v27 + 1;
            if (v13)
            {
              goto LABEL_33;
            }

            if (!v25)
            {
              goto LABEL_34;
            }

            v29 = v28 % v25;
            v13 = __OFADD__(v29, v23);
            v23 += v29;
            if (v13)
            {
              goto LABEL_28;
            }
          }

          if (!v26)
          {
            goto LABEL_29;
          }

          if (v26 == -1 && v23 == 0x8000000000000000)
          {
            goto LABEL_35;
          }

          v30 = v23 % v26;
          if (v30 >= v25)
          {
            goto LABEL_30;
          }

          v31 = v24 + 16 * v30;
          v32 = *(v31 + 32);
          v33 = *(v31 + 40);
          sub_1D881F4C0(v32, v33);
          sub_1D8997630(v32, v33, v16);
          result = sub_1D8997618(v32, v33);
          if (a3 == --v16)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_31;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_1D8993B80(uint64_t a1, uint64_t a2)
{
  result = sub_1D89915AC(a1, &v34);
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  result = swift_beginAccess();
  v7 = v2[2];
  if (*(v7 + 16) > v6)
  {
    v33 = a2;
    v8 = *(v7 + 16);
    do
    {
      v9 = v8 - 2;
      if (__OFSUB__(v8, 2))
      {
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
LABEL_35:
        __break(1u);
        return sub_1D89937A4(a1, v33);
      }

      v10 = *(v7 + 16);
      v11 = v2[4];
      if (v10 == v11)
      {
        v12 = v2[3];
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_38;
        }

        if (!v10)
        {
          goto LABEL_39;
        }

        v15 = v14 % v10;
        v13 = __OFADD__(v15, v9);
        v9 += v15;
        if (v13)
        {
          goto LABEL_30;
        }
      }

      if (!v11)
      {
        goto LABEL_31;
      }

      if (v11 == -1 && v9 == 0x8000000000000000)
      {
        goto LABEL_40;
      }

      v16 = v9 % v11;
      if (v16 >= v10)
      {
        goto LABEL_32;
      }

      v17 = v7 + 88 * v16;
      v18 = *(v17 + 32);
      v35 = *(v17 + 48);
      v19 = *(v17 + 64);
      v20 = *(v17 + 80);
      v21 = *(v17 + 96);
      v39 = *(v17 + 112);
      v37 = v20;
      v38 = v21;
      v36 = v19;
      v34 = v18;
      if (*(v7 + 16) == v11)
      {
        v22 = v2[3];
        v13 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v13)
        {
          goto LABEL_41;
        }

        v24 = v23 % v11;
      }

      else
      {
        v24 = 0;
      }

      v25 = v8 - 1;
      v26 = v24 + v8 - 1;
      if (__OFADD__(v24, v8 - 1))
      {
        goto LABEL_33;
      }

      if (v11 == -1 && v26 == 0x8000000000000000)
      {
        goto LABEL_42;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v7;
      if ((result & 1) == 0)
      {
        result = sub_1D89394DC(v7);
        v7 = result;
      }

      v27 = v26 % v11;
      if (v26 % v11 < 0)
      {
        goto LABEL_34;
      }

      if (v27 >= *(v7 + 16))
      {
        goto LABEL_35;
      }

      v28 = v7 + 88 * v27;
      v29 = v35;
      *(v28 + 32) = v34;
      *(v28 + 48) = v29;
      v30 = v36;
      v31 = v37;
      v32 = v38;
      *(v28 + 112) = v39;
      *(v28 + 80) = v31;
      *(v28 + 96) = v32;
      *(v28 + 64) = v30;
      v2[2] = v7;
      if (v25 == v6)
      {
        return sub_1D89937A4(a1, v33);
      }

      v8 = v25;
    }

    while (v6 < v25);
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1D8993DC0(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 232);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - v7;
  v9 = sub_1D8B16470();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  sub_1D89917B0(a1, &v19 - v11);
  result = (*(v10 + 8))(v12, v9);
  v14 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1D89942F4();
  v15 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 >= v14)
  {
    v16 = result;
    result -= 2;
    if (__OFSUB__(v15, 1))
    {
LABEL_11:
      __break(1u);
    }

    else
    {
      CircularBuffer.subscript.getter(result);
      sub_1D8996FD0(v8, v15);
      v17 = *(v6 + 8);
      result = v17(v8, v5);
      if (v15 == v14)
      {
        return sub_1D8996FD0(a1, a2);
      }

      v18 = v16 - 2;
      while (v14 < v18 + 1)
      {
        result = v18 - 1;
        if (__OFSUB__(v18 + 1, 2))
        {
          goto LABEL_11;
        }

        CircularBuffer.subscript.getter(result);
        sub_1D8996FD0(v8, v18);
        result = v17(v8, v5);
        if (a2 == --v18)
        {
          return sub_1D8996FD0(a1, a2);
        }
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D8993FE8(uint64_t (*a1)(char *), uint64_t a2)
{
  v16 = a2;
  v15 = a1;
  v4 = *(*v2 + 232);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - v6;
  if (sub_1D899430C())
  {
    return 0;
  }

  result = sub_1D89942F4();
  v9 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    v10 = 0;
    v11 = (v5 + 8);
    v14 = -1;
    while (1)
    {
      if (v9 < v10)
      {
        return v14 & ~(v14 >> 63);
      }

      if (__OFSUB__(v9, v10))
      {
        break;
      }

      v12 = v10 + (v9 - v10) / 2;
      if (__OFADD__(v10, (v9 - v10) / 2))
      {
        goto LABEL_19;
      }

      CircularBuffer.subscript.getter(v10 + (v9 - v10) / 2);
      v13 = v15(v7);
      result = (*v11)(v7, v4);
      if (v3)
      {
        return result;
      }

      if (v13)
      {
        v14 = v10 + (v9 - v10) / 2;
        v10 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return v14 & ~(v14 >> 63);
        }
      }

      else
      {
        v9 = v12 - 1;
        if (__OFSUB__(v12, 1))
        {
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CircularBuffer.init(data:index:sizeMax:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  sub_1D8B15DB0();

  sub_1D8B15D10();
  swift_endAccess();
  *(v3 + 24) = a2;
  swift_getWitnessTable();
  if ((sub_1D8B16160() & 1) != 0 || a2)
  {

LABEL_4:
    *(v4 + 32) = a3;
    return v4;
  }

  v8 = sub_1D8B15D80();

  if (!__OFSUB__(v8, 1))
  {
    *(v4 + 24) = v8 - 1;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D899430C()
{
  swift_beginAccess();
  sub_1D8B15DB0();
  swift_getWitnessTable();
  return sub_1D8B16160() & 1;
}

BOOL sub_1D89943D4()
{
  swift_beginAccess();

  v1 = sub_1D8B15D80();

  return v1 == *(v0 + 32);
}

uint64_t sub_1D8994458@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v10 = v4[2];
  v11 = *(v10 + 2);
  v12 = v4[4];
  if (v11 == v12)
  {
    v13 = v4[3];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (!v14)
    {
      if (!v11)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v16 = v15 % v11;
      if (v16 >= v11)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (a3 < 0)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v17 = &v10[16 * v16];
      v43 = *(v17 + 4);
      v44 = a4;
      v42 = v17[40];
      sub_1D881F4C0(v43, v42);
      if (!a3)
      {
LABEL_26:
        if (*(v10 + 2) == v11)
        {
          v34 = v4[3];
          v14 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          v5 = v44;
          if (v14)
          {
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v36 = v35 % v11;
        }

        else
        {
          v36 = 0;
          v5 = v44;
        }

        a4 = v36 + a3;
        if (!__OFADD__(v36, a3))
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v4[2] = v10;
          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_32:
            v38 = a4 % v11;
            if (a4 % v11 < 0)
            {
              __break(1u);
            }

            else if (v38 < *(v10 + 2))
            {
              v39 = &v10[16 * v38];
              v40 = *(v39 + 4);
              *(v39 + 4) = a1;
              v41 = v39[40];
              v39[40] = a2;
              sub_1D881F4C0(a1, a2);
              v4[2] = v10;
              swift_endAccess();
              result = sub_1D8997618(v40, v41);
              v32 = v43;
              v33 = v42;
              goto LABEL_35;
            }

            __break(1u);
            goto LABEL_52;
          }

LABEL_49:
          v10 = sub_1D89394C8(v10);
          v4[2] = v10;
          goto LABEL_32;
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v5 = 0;
      while (1)
      {
        v18 = *(v10 + 2);
        if (v18 == v11)
        {
          v19 = v4[3];
          v14 = __OFADD__(v19, 1);
          v20 = v19 + 1;
          if (v14)
          {
            goto LABEL_40;
          }

          v21 = v20 % v11;
          a4 = v21 + v5;
          if (__OFADD__(v21, v5))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v21 = 0;
          a4 = v5;
        }

        v14 = __OFADD__(v21, ++v5);
        v22 = v21 + v5;
        if (v14)
        {
          break;
        }

        v23 = v22 % v11;
        if (v23 >= v18)
        {
          goto LABEL_37;
        }

        v24 = &v10[16 * v23];
        v25 = *(v24 + 4);
        v26 = v24[40];
        swift_beginAccess();
        sub_1D881F4C0(v25, v26);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v4[2] = v10;
        if ((v27 & 1) == 0)
        {
          v10 = sub_1D89394C8(v10);
          v4[2] = v10;
        }

        v28 = a4 % v11;
        if (a4 % v11 < 0)
        {
          goto LABEL_38;
        }

        if (v28 >= *(v10 + 2))
        {
          goto LABEL_39;
        }

        v29 = &v10[16 * v28];
        a4 = *(v29 + 4);
        *(v29 + 4) = v25;
        v30 = v29[40];
        v29[40] = v26;
        v4[2] = v10;
        swift_endAccess();
        sub_1D8997618(a4, v30);
        if (a3 == v5)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v11 < v12)
  {
    v5 = a3 % v12;
    swift_beginAccess();
    if (v11 >= v5)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        sub_1D881F4C0(a1, a2);
        sub_1D886442C(v5, v5, a1, a2);
        swift_endAccess();
        result = sub_1D8997618(a1, a2);
        v32 = 0;
        v33 = -8;
        v5 = a4;
LABEL_35:
        *v5 = v32;
        *(v5 + 8) = v33;
        return result;
      }

      goto LABEL_45;
    }

    goto LABEL_43;
  }

LABEL_53:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

unint64_t sub_1D89947D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = v3[2];
  v8 = *(v7 + 2);
  v9 = v3[4];
  if (v8 == v9)
  {
    v10 = v3[3];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (!v11)
    {
      if (!v8)
      {
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v13 = v12 % v8;
      if (v13 >= v8)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v14 = &v7[88 * v13];
      v50 = *(v14 + 4);
      v51 = *(v14 + 5);
      v52 = *(v14 + 6);
      v53 = *(v14 + 14);
      v48 = *(v14 + 2);
      v49 = *(v14 + 3);
      if (a2 < 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (a2)
      {
        v15 = 0;
        v16 = *(v7 + 2);
        while (1)
        {
          if (v16 == v8)
          {
            v17 = v3[3];
            v11 = __OFADD__(v17, 1);
            v18 = v17 + 1;
            if (v11)
            {
              goto LABEL_39;
            }

            v19 = v18 % v8;
            v20 = v19 + v15;
            if (__OFADD__(v19, v15))
            {
              goto LABEL_40;
            }
          }

          else
          {
            v19 = 0;
            v20 = v15;
          }

          v11 = __OFADD__(v19, ++v15);
          v21 = v19 + v15;
          if (v11)
          {
            goto LABEL_35;
          }

          v22 = v21 % v8;
          if (v22 >= v16)
          {
            break;
          }

          v23 = &v7[88 * v22];
          v24 = *(v23 + 3);
          v54 = *(v23 + 2);
          v55 = v24;
          v25 = *(v23 + 4);
          v26 = *(v23 + 5);
          v27 = *(v23 + 6);
          v59 = *(v23 + 14);
          v57 = v26;
          v58 = v27;
          v56 = v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v3[2] = v7;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v7 = sub_1D89394DC(v7);
          }

          v29 = v20 % v8;
          if (v20 % v8 < 0)
          {
            goto LABEL_37;
          }

          if (v29 >= *(v7 + 2))
          {
            goto LABEL_38;
          }

          v30 = &v7[88 * v29];
          v31 = v55;
          *(v30 + 2) = v54;
          *(v30 + 3) = v31;
          v32 = v56;
          v33 = v57;
          v34 = v58;
          *(v30 + 14) = v59;
          *(v30 + 5) = v33;
          *(v30 + 6) = v34;
          *(v30 + 4) = v32;
          v3[2] = v7;
          v16 = *(v7 + 2);
          if (a2 == v15)
          {
            if (v16 != v8)
            {
              goto LABEL_29;
            }

            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        v39 = v3[3];
        v11 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v11)
        {
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v41 = v40 % v8;
        v11 = __OFADD__(v41, a2);
        a2 += v41;
        if (!v11)
        {
LABEL_29:
          result = swift_isUniquelyReferenced_nonNull_native();
          v3[2] = v7;
          if (result)
          {
LABEL_30:
            v42 = a2 % v8;
            if (a2 % v8 < 0)
            {
              __break(1u);
            }

            else if (v42 < *(v7 + 2))
            {
              v43 = a1[1];
              v44 = &v7[88 * v42];
              *(v44 + 2) = *a1;
              *(v44 + 3) = v43;
              v45 = a1[2];
              v46 = a1[3];
              v47 = a1[4];
              *(v44 + 14) = *(a1 + 10);
              *(v44 + 5) = v46;
              *(v44 + 6) = v47;
              *(v44 + 4) = v45;
              v3[2] = v7;
              LOBYTE(v54) = 0;
              *(a3 + 32) = v50;
              *(a3 + 48) = v51;
              *(a3 + 64) = v52;
              *(a3 + 80) = v53;
              *a3 = v48;
              *(a3 + 16) = v49;
              *(a3 + 88) = 0;
              return result;
            }

            __break(1u);
            goto LABEL_50;
          }

LABEL_47:
          result = sub_1D89394DC(v7);
          v7 = result;
          goto LABEL_30;
        }

        __break(1u);
LABEL_35:
        __break(1u);
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v8 < v9)
  {
    v35 = a2 % v9;
    if (v8 >= a2 % v9)
    {
      if ((v35 & 0x8000000000000000) == 0)
      {
        v36 = a1[3];
        v56 = a1[2];
        v57 = v36;
        v58 = a1[4];
        v59 = *(a1 + 10);
        v37 = a1[1];
        v54 = *a1;
        v55 = v37;
        result = sub_1D885CFB8(v35, v35, &v54);
        *a3 = 0u;
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 48) = 0u;
        *(a3 + 64) = 0u;
        *(a3 + 80) = 0;
        *(a3 + 88) = 1;
        return result;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

LABEL_51:
  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

uint64_t sub_1D8994B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a1;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v53 - v15;
  swift_beginAccess();

  v16 = sub_1D8B15D80();

  v17 = v3[4];
  v57 = a2;
  if (v16 != v17)
  {
    swift_beginAccess();

    v22 = sub_1D8B15D80();

    if (v22 >= v17)
    {
LABEL_77:
      result = sub_1D8B168C0();
      __break(1u);
      return result;
    }

    (*(v8 + 16))(v11, v56, v7);
    swift_beginAccess();

    v23 = sub_1D8B15D80();

    v24 = 0;
    if (v23 == v17)
    {
      v25 = v3[3];
      v20 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v20)
      {
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (!v17)
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      if (v17 == -1 && v26 == 0x8000000000000000)
      {
        goto LABEL_75;
      }

      v24 = v26 % v17;
    }

    v20 = __OFADD__(v24, v57);
    v27 = v24 + v57;
    if (!v20)
    {
      if (v17)
      {
        if (v17 != -1 || v27 != 0x8000000000000000)
        {
          swift_beginAccess();
          sub_1D8B15DB0();
          sub_1D8B15DA0();
          swift_endAccess();
          return (*(v8 + 56))(a3, 1, 1, v7);
        }

        goto LABEL_71;
      }

      goto LABEL_65;
    }

    goto LABEL_62;
  }

  swift_beginAccess();

  v18 = sub_1D8B15D80();

  if (v18 == v16)
  {
    v19 = v3[3];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    if (!v16)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    if (v16 == -1 && v21 == 0x8000000000000000)
    {
      goto LABEL_74;
    }
  }

  else if (!v16)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  swift_beginAccess();

  sub_1D8B15DE0();

  if (a2 < 0)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v54 = a3;
  if (a2)
  {
    v29 = 0;
    while (1)
    {
      swift_beginAccess();

      v33 = sub_1D8B15D80();

      v34 = 0;
      if (v33 == v16)
      {
        v35 = v4[3];
        v20 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v20)
        {
          goto LABEL_57;
        }

        if (v16 == -1 && v36 == 0x8000000000000000)
        {
          goto LABEL_60;
        }

        v34 = v36 % v16;
      }

      v37 = v34 + v29;
      if (__OFADD__(v34, v29))
      {
        break;
      }

      if (v16 == -1 && v37 == 0x8000000000000000)
      {
        goto LABEL_58;
      }

      swift_beginAccess();

      v38 = sub_1D8B15D80();

      v39 = 0;
      if (v38 == v16)
      {
        v40 = v4[3];
        v20 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v20)
        {
          goto LABEL_59;
        }

        if (v16 == -1 && v41 == 0x8000000000000000)
        {
          goto LABEL_61;
        }

        v39 = v41 % v16;
      }

      v20 = __OFADD__(v39, ++v29);
      v42 = v39 + v29;
      if (v20)
      {
        goto LABEL_56;
      }

      if (v16 == -1 && v42 == 0x8000000000000000)
      {
        __break(1u);
        goto LABEL_44;
      }

      swift_beginAccess();

      sub_1D8B15DE0();

      swift_beginAccess();
      sub_1D8B15DB0();
      sub_1D8B15D40();
      v30 = v4[2];
      sub_1D8996D50(v37 % v16, v30);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      v32 = v30 & 0xFFFFFFFFFFFFFF8;
      if ((isClassOrObjCExistentialType & 1) == 0)
      {
        v32 = v30;
      }

      (*(v8 + 40))(v32 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * (v37 % v16), v14, v7);
      swift_endAccess();
      if (v57 == v29)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_44:
  swift_beginAccess();

  v43 = sub_1D8B15D80();

  v44 = 0;
  v45 = v54;
  if (v43 == v16)
  {
    v46 = v4[3];
    v20 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v20)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v16 == -1 && v47 == 0x8000000000000000)
    {
      goto LABEL_76;
    }

    v44 = v47 % v16;
  }

  v20 = __OFADD__(v44, v57);
  v48 = v44 + v57;
  if (v20)
  {
    goto LABEL_66;
  }

  if (v16 == -1 && v48 == 0x8000000000000000)
  {
    goto LABEL_73;
  }

  v49 = v48 % v16;
  swift_beginAccess();
  sub_1D8B15DB0();
  sub_1D8B15D40();
  v50 = v4[2];
  sub_1D8996D50(v49, v50);
  v51 = _swift_isClassOrObjCExistentialType();
  v52 = v50 & 0xFFFFFFFFFFFFFF8;
  if ((v51 & 1) == 0)
  {
    v52 = v50;
  }

  (*(v8 + 24))(v52 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v49, v56, v7);
  swift_endAccess();
  (*(v8 + 32))(v45, v55, v7);
  return (*(v8 + 56))(v45, 0, 1, v7);
}

uint64_t CircularBuffer.__allocating_init(data:index:sizeMax:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CircularBuffer.init(data:index:sizeMax:)(a1, a2, a3);
  return v6;
}

uint64_t CircularBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*CircularBuffer.subscript.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*v2 + 80);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  CircularBuffer.subscript.getter(a2);
  return sub_1D8995488;
}

void sub_1D8995488(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1D8996FD0(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1D8996FD0((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D89955C0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 80);

  v6 = a1(v5, v4);

  return v6;
}

uint64_t sub_1D8995644@<X0>(void *a1@<X8>)
{
  result = CircularBuffer.startIndex.getter();
  *a1 = 0;
  return result;
}

uint64_t sub_1D8995670@<X0>(uint64_t *a1@<X8>)
{
  result = CircularBuffer.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_1D899569C(void *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1D8995760(v4, *a2);
  return sub_1D8995718;
}

void sub_1D8995718(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1D8995760(void *a1, uint64_t a2))(void *a1)
{
  v5 = *(*v2 + 80);
  *a1 = v5;
  v6 = *(v5 - 8);
  a1[1] = v6;
  v7 = *(v6 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  a1[2] = v8;
  CircularBuffer.subscript.getter(a2);
  return sub_1D8995830;
}

void sub_1D8995830(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_1D899587C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();

  return sub_1D89958F4(a1, v4, WitnessTable, a2);
}

uint64_t sub_1D89958F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = sub_1D8B16190();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v19 = &v36 - v18;
  sub_1D8B160F0();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  sub_1D8B16120();
  result = sub_1D8B15840();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    sub_1D8B16100();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = sub_1D8B16CE0();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8995D84()
{
  v0 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();
  v2 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69838](v0, WitnessTable, v2);
}

uint64_t sub_1D8995F38()
{
  type metadata accessor for CircularBuffer();

  return sub_1D8996E1C();
}

uint64_t sub_1D8995FC4@<X0>(void *a1@<X8>)
{
  *a1 = *v1;
  result = CircularBuffer.startIndex.getter();
  a1[1] = 0;
  return result;
}

uint64_t sub_1D8995FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1D8996048()
{
  type metadata accessor for CircularBuffer();
  swift_getWitnessTable();
  v0 = sub_1D8996FCC();

  return v0;
}

void sub_1D89960B0()
{
  type metadata accessor for CircularBuffer();

  JUMPOUT(0x1DA71F0B0);
}

uint64_t sub_1D899618C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1D8996FD0(a1, *a2);
  v5 = *(*(*(a3 + 80) - 8) + 8);

  return v5(a1);
}

void (*sub_1D8996200(void *a1, uint64_t *a2))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = CircularBuffer.subscript.modify(v4, *a2);
  return sub_1D8997968;
}

uint64_t sub_1D899627C()
{
  type metadata accessor for CircularBuffer();
  sub_1D89978B0();
}

void (*sub_1D89962E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x28uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = type metadata accessor for CircularBuffer();
  v8[4] = sub_1D8996384(v8, a2, v9, a4);
  return sub_1D8996380;
}

void (*sub_1D8996384(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x50uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a4;
  v10[2] = v4;
  *v10 = a3;
  v12 = sub_1D8B16CE0();
  v11[3] = v12;
  v13 = *(v12 - 8);
  v11[4] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v16 = v15;
  v11[6] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v17 = sub_1D8B16190();
  v11[7] = v17;
  v18 = *(v17 - 8);
  v19 = v18;
  v11[8] = v18;
  if (v9)
  {
    v20 = swift_coroFrameAlloc();
  }

  else
  {
    v20 = malloc(*(v18 + 64));
  }

  v11[9] = v20;
  (*(v19 + 16))();
  sub_1D89958F4(a2, a3, a4, v16);
  return sub_1D89965A8;
}

void sub_1D89965A8(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v6 = *(*a1 + 64);
  v5 = *(*a1 + 72);
  v7 = *(*a1 + 48);
  v10 = *(*a1 + 56);
  v8 = *(*a1 + 24);
  if (a2)
  {
    (*(v4 + 16))(v3, v7, v2[3]);
    swift_getWitnessTable();
    sub_1D8B16B40();
    v9 = *(v4 + 8);
    v9(v3, v8);
    (*(v6 + 8))(v5, v10);
    v9(v7, v8);
  }

  else
  {
    swift_getWitnessTable();
    sub_1D8B16B40();
    (*(v6 + 8))(v5, v10);
    (*(v4 + 8))(v7, v8);
  }

  free(v5);
  free(v7);
  free(v3);

  free(v2);
}

uint64_t sub_1D8996750()
{
  type metadata accessor for CircularBuffer();
  swift_getWitnessTable();
  return sub_1D8B158B0();
}

uint64_t sub_1D89967DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer();

  return MEMORY[0x1EEE68C50](a1, a2, v7, a4);
}

uint64_t sub_1D8996918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer();
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, v7, a4, v8);
}

uint64_t sub_1D899698C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for CircularBuffer();

  return MEMORY[0x1EEE69818](a1, a2, a3, v9, a5);
}

uint64_t sub_1D8996A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CircularBuffer();
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, v7, a4, v8);
}

uint64_t sub_1D8996A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6570];

  return a4(a1, v5, WitnessTable, v7);
}

uint64_t sub_1D8996B28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  v5 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, v5, WitnessTable, MEMORY[0x1E69E6570]);
}

uint64_t sub_1D8996BB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, v4, WitnessTable, v6);
}

uint64_t sub_1D8996C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE69818](a1, a2, a3, v6, WitnessTable);
}

uint64_t sub_1D8996CD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CircularBuffer();
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, v4, WitnessTable, v6);
}

uint64_t sub_1D8996D50(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8996DA4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(*(*(type metadata accessor for TimestampDataBuffer() + 232) - 8) + 16);

  return v4(a2, a1);
}

uint64_t sub_1D8996E1C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1D8B15840();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1D8B16190();
  result = sub_1D8B15840();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8996EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1D8B15840();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D8996FD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  swift_beginAccess();
  v7 = *(v6 + 80);

  v8 = sub_1D8B15D80();

  v10 = 0;
  v11 = v3[4];
  if (v8 == v11)
  {
    v12 = v3[3];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!v8)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }

    if (v8 == -1 && v14 == 0x8000000000000000)
    {
      goto LABEL_21;
    }

    v10 = v14 % v8;
  }

  v13 = __OFADD__(v10, a2);
  v16 = v10 + a2;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v11 == -1 && v16 == 0x8000000000000000)
  {
    goto LABEL_20;
  }

  v17 = v16 % v11;
  swift_beginAccess();
  sub_1D8B15DB0();
  sub_1D8B15D40();
  v18 = v3[2];
  sub_1D8996D50(v17, v18);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v20 = v18 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v20 = v18;
  }

  (*(*(v7 - 8) + 24))(v20 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v17, a1, v7);
  return swift_endAccess();
}

unint64_t sub_1D89971D4()
{
  result = qword_1ECA66628;
  if (!qword_1ECA66628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66628);
  }

  return result;
}

uint64_t sub_1D89973AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA66620);
    sub_1D89971D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8997618(uint64_t a1, char a2)
{
  if ((a2 & 0xE0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_1D8997630(uint64_t a1, char a2, uint64_t a3)
{
  result = swift_beginAccess();
  v8 = 0;
  v9 = v3[2];
  v10 = *(v9 + 16);
  v11 = v3[4];
  if (v10 != v11)
  {
LABEL_5:
    v13 = __OFADD__(v8, a3);
    v15 = v8 + a3;
    if (v13)
    {
      __break(1u);
    }

    else if (v11)
    {
      if (v11 == -1 && v15 == 0x8000000000000000)
      {
        goto LABEL_20;
      }

      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      v3[2] = v9;
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_15:
    result = sub_1D89394C8(v9);
    v9 = result;
    v3[2] = result;
LABEL_10:
    v16 = v15 % v11;
    if (v15 % v11 < 0)
    {
      __break(1u);
    }

    else if (v16 < *(v9 + 16))
    {
      v17 = v9 + 16 * v16;
      v18 = *(v17 + 32);
      *(v17 + 32) = a1;
      v19 = *(v17 + 40);
      *(v17 + 40) = a2;
      sub_1D881F4C0(a1, a2);
      v3[2] = v9;
      swift_endAccess();
      return sub_1D8997618(v18, v19);
    }

    __break(1u);
    goto LABEL_18;
  }

  v12 = v3[3];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10)
  {
    v8 = v14 % v10;
    goto LABEL_5;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D8997778(uint64_t a1, char a2)
{
  if (a2 <= 0xF7u)
  {
    return sub_1D8997618(a1, a2);
  }

  return a1;
}

uint64_t sub_1D899778C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AFMResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89977F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D89978B0()
{
  sub_1D8B16CE0();
  swift_getWitnessTable();

  return sub_1D8B16B40();
}

uint64_t sub_1D89979BC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8997A7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D8997A10();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D8997AAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B16DA0();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_1D899812C();
    sub_1D8B16BB0();
    v11 = v15;
    v10 = v16;
    (*(a4 + 16))(&v15, v15, v16, a3, a4);
    v9 = v15;
    if (v15)
    {
      sub_1D87A1598(v11, v10);
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v9;
    }

    v9 = sub_1D8B16770();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0);
    *v14 = a2;
    sub_1D8B16760();
    (*(*(v9 - 8) + 104))(v14, *MEMORY[0x1E69E6B08], v9);
    swift_willThrow();
    sub_1D87A1598(v11, v10);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1D8997CB4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1D8997AAC(a1, a2[2], a2[3], a2[4]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1D8997CEC(void *a1, uint64_t a2)
{
  v10[5] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a2 requiringSecureCoding:1 error:v10];
  v4 = v10[0];
  if (v3)
  {
    v5 = sub_1D8B13050();
    v7 = v6;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D8B16DC0();
    __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1D89980D8();
    sub_1D8B16BC0();
    sub_1D87A1598(v5, v7);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = v4;
    sub_1D8B12EB0();

    return swift_willThrow();
  }
}

uint64_t sub_1D8997EFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = [a1 *a5];
  v6 = sub_1D8B15970();

  return v6;
}

uint64_t sub_1D8997FF4()
{
  sub_1D8B16D20();
  sub_1D8B16410();
  return sub_1D8B16D80();
}

uint64_t sub_1D8998048()
{
  sub_1D8B16D20();
  sub_1D8997FD0();
  return sub_1D8B16D80();
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1D89980D8()
{
  result = qword_1ECA666A8;
  if (!qword_1ECA666A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA666A8);
  }

  return result;
}

unint64_t sub_1D899812C()
{
  result = qword_1ECA666B0;
  if (!qword_1ECA666B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA666B0);
  }

  return result;
}

uint64_t ConnectivityUtility.couldBeConnectedToInternet.getter()
{
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  return *(v0 + 24);
}

uint64_t sub_1D8998224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  type metadata accessor for ConnectivityUtility();
  v3 = swift_allocObject();
  sub_1D8B15490();
  swift_allocObject();
  *(v3 + 16) = sub_1D8B15480();
  *(v3 + 24) = 1;
  *(v3 + 26) = 2;
  sub_1D8B13550();
  v4 = sub_1D8B15EA0();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;

  sub_1D8891CA0(0, 0, v2, &unk_1D8B2F660, v5);

  qword_1EE0E5EF8 = v3;
  return result;
}

uint64_t sub_1D89983AC()
{
  sub_1D8B15E80();
  *(v0 + 24) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8998440, v2, v1);
}

uint64_t sub_1D8998440()
{

  swift_allocObject();
  swift_weakInit();

  sub_1D8B15460();

  sub_1D881F764(0, &qword_1EE0E3730);
  v1 = sub_1D8B162C0();
  sub_1D8B15470();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static ConnectivityUtility.shared.getter()
{
  if (qword_1EE0E5EF0 != -1)
  {
    swift_once();
  }
}

uint64_t ConnectivityUtility.ConnectionStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8998614@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t type metadata accessor for ConnectivityUtility()
{
  result = qword_1EE0E5ED8;
  if (!qword_1EE0E5ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D8998730(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
    sub_1D8B13510();
  }

  return result;
}

uint64_t sub_1D8998840()
{
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  return *(v0 + 25);
}

uint64_t sub_1D89988E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1D8998988(uint64_t result)
{
  if (*(v1 + 25) == (result & 1))
  {
    *(v1 + 25) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
    sub_1D8B13510();
  }

  return result;
}

uint64_t sub_1D8998A98@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *a1 = *(v1 + 26);
  return result;
}

uint64_t sub_1D8998B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
  sub_1D8B13520();

  *a2 = *(v3 + 26);
  return result;
}

unsigned __int8 *sub_1D8998BE8(unsigned __int8 *result)
{
  if (*(v1 + 26) != *result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
    sub_1D8B13510();
  }

  return result;
}

uint64_t sub_1D8998CF0(uint64_t a1, uint64_t a2)
{
  sub_1D8B15E80();
  v5[2] = a2;
  v5[3] = a1;
  return sub_1D89997A8(sub_1D8999E5C, v5);
}

uint64_t sub_1D8998D6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B15450();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B154C0();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v12;
  v13 = sub_1D8B154E0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v54 = v5;
    v55 = v4;
    v62 = v2;
    if (qword_1EE0E4440 != -1)
    {
      swift_once();
    }

    v19 = sub_1D8B151E0();
    __swift_project_value_buffer(v19, qword_1EE0E4448);
    (*(v14 + 16))(v16, a2, v13);
    v20 = sub_1D8B151C0();
    v21 = sub_1D8B16200();
    v22 = os_log_type_enabled(v20, v21);
    v63 = v18;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v53 = a2;
      v24 = v23;
      v25 = swift_slowAlloc();
      v64 = v25;
      *v24 = 136315138;
      v26 = sub_1D8B154A0();
      v28 = v27;
      (*(v14 + 8))(v16, v13);
      v29 = sub_1D89AC714(v26, v28, &v64);
      v18 = v63;

      *(v24 + 4) = v29;
      _os_log_impl(&dword_1D8783000, v20, v21, "Connectivity status changed to status: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1DA721330](v25, -1, -1);
      MEMORY[0x1DA721330](v24, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v16, v13);
    }

    v30 = v56;
    sub_1D8B154D0();
    v32 = v60;
    v31 = v61;
    v33 = *(v60 + 104);
    v34 = v57;
    LODWORD(v53) = *MEMORY[0x1E6977D30];
    v33(v57);
    sub_1D8999EA0(&qword_1EE0E3A58, MEMORY[0x1E6977D48]);
    v35 = sub_1D8B158C0();
    v36 = *(v32 + 8);
    v36(v34, v31);
    v57 = v36;
    v36(v30, v31);
    v37 = (v35 ^ 1) & 1;
    if (v37 == v18[24])
    {
      v18[24] = v37;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v53 - 2) = v63;
      *(&v53 - 8) = v37;
      v64 = v63;
      sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
      v39 = v62;
      sub_1D8B13510();
      v62 = v39;

      v18 = v63;
    }

    v41 = v54;
    v40 = v55;
    v42 = v58;
    (*(v54 + 104))(v58, *MEMORY[0x1E6977B50], v55);
    v43 = sub_1D8B154B0() & 1;
    (*(v41 + 8))(v42, v40);
    if (v43 == v18[25])
    {
      v18[25] = v43;
    }

    else
    {
      v44 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v44);
      *(&v53 - 2) = v63;
      *(&v53 - 8) = v43;
      v64 = v63;
      sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
      v45 = v62;
      sub_1D8B13510();
      v62 = v45;

      v18 = v63;
    }

    v46 = v59;
    sub_1D8B154D0();
    v47 = (*(v60 + 88))(v46, v61);
    if (v47 == *MEMORY[0x1E6977D40])
    {
      if (v18[26])
      {
        v48 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v48);
        *(&v53 - 2) = v18;
        *(&v53 - 8) = 0;
        v64 = v18;
        sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
LABEL_25:
        sub_1D8B13510();
      }
    }

    if (v47 == v53)
    {
      if (v18[26] != 2)
      {
        v49 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v49);
        *(&v53 - 2) = v18;
        *(&v53 - 8) = 2;
        v64 = v18;
        sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
        goto LABEL_25;
      }
    }

    v50 = v18[26];
    if (v47 == *MEMORY[0x1E6977D38])
    {
      if (v50 != 1)
      {
        v51 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v51);
        *(&v53 - 2) = v18;
        *(&v53 - 8) = 1;
        v64 = v18;
        sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
        goto LABEL_25;
      }
    }

    if (v50 != 2)
    {
      v52 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v52);
      *(&v53 - 2) = v18;
      *(&v53 - 8) = 2;
      v64 = v18;
      sub_1D8999EA0(&qword_1EE0E5EE8, type metadata accessor for ConnectivityUtility);
      sub_1D8B13510();
    }

    return (v57)(v59, v61);
  }

  return result;
}

uint64_t sub_1D89997A8(uint64_t a1, uint64_t a2)
{
  sub_1D8B15E70();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_1D8999E78();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v2)
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
    sub_1D8B16720();
    MEMORY[0x1DA71EFA0](0xD00000000000003FLL, 0x80000001D8B455C0);
    v8 = sub_1D8B16E60();
    MEMORY[0x1DA71EFA0](v8);

    MEMORY[0x1DA71EFA0](46, 0xE100000000000000);
    result = sub_1D8B168C0();
    __break(1u);
  }

  return result;
}

Swift::Bool __swiftcall ConnectivityUtility.hasCellularService()()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6965088]) init];
  v1 = [v0 serviceSubscriberCellularProviders];
  if (v1)
  {
    v2 = v1;
    v26 = v0;
    sub_1D881F764(0, &qword_1ECA66720);
    v3 = sub_1D8B15730();

    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
LABEL_11:
      v11 = *(*(v3 + 56) + ((v5 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = [v11 mobileCountryCode];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1D8B15970();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }

      v8 &= v8 - 1;
      v19 = [v11 mobileNetworkCode];
      if (v19)
      {
        v20 = v19;
        v21 = sub_1D8B15970();
        v23 = v22;

        v24 = HIBYTE(v23) & 0xF;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v24)
        {
          v25 = v18;
        }

        else
        {
          v25 = 1;
        }

        if ((v25 & 1) == 0)
        {

          return 1;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        return 0;
      }

      v8 = *(v3 + 64 + 8 * v10);
      ++v5;
      if (v8)
      {
        v5 = v10;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t ConnectivityUtility.deinit()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore19ConnectivityUtility___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ConnectivityUtility.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore19ConnectivityUtility___observationRegistrar;
  v2 = sub_1D8B13560();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1D8999C68()
{
  result = qword_1ECA66728;
  if (!qword_1ECA66728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66728);
  }

  return result;
}

uint64_t sub_1D8999CC4()
{
  result = sub_1D8B13560();
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

uint64_t sub_1D8999DA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D899838C(a1, v4, v5, v6);
}

uint64_t sub_1D8999EA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Date.relativeShortDateString.getter()
{
  v29 = sub_1D8B131D0();
  v0 = *(v29 - 8);
  v1 = MEMORY[0x1EEE9AC00](v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v28 - v4;
  v6 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15930();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = sub_1D8B13450();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B133C0();
  v15 = sub_1D8B13390();
  v16 = *(v12 + 8);
  v16(v14, v11);
  if (v15)
  {
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v17 = [objc_opt_self() mainBundle];
    }

LABEL_8:
    sub_1D8B132F0();
    return sub_1D8B159D0();
  }

  sub_1D8B133C0();
  sub_1D8B131C0();
  sub_1D8B13110();
  v18 = *(v0 + 8);
  v19 = v3;
  v20 = v29;
  v18(v19, v29);
  v21 = sub_1D8B13400();
  v18(v5, v20);
  v16(v14, v11);
  if (v21)
  {
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v22 = [objc_opt_self() mainBundle];
    }

    goto LABEL_8;
  }

  v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v24 setDateStyle_];
  [v24 setTimeStyle_];
  v25 = sub_1D8B13120();
  v26 = [v24 stringFromDate_];

  v27 = sub_1D8B15970();
  return v27;
}

uint64_t sub_1D899A3EC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v5 = sub_1D8B13120();
  v6 = [v4 stringFromDate_];

  v7 = sub_1D8B15970();
  return v7;
}

void static OS_dispatch_queue.executeOnMain<A>(_:)(void (*a1)(void))
{
  if ([objc_opt_self() isMainThread])
  {
    a1();
  }

  else
  {
    sub_1D87C1314();
    v2 = sub_1D8B162C0();
    MEMORY[0x1EEE9AC00](v2);
    sub_1D8B162D0();
  }
}

uint64_t static EventLLMLookupUtility.generateEvent(_:useVerboseLogging:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 368) = a3;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66730);
  *(v3 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = type metadata accessor for AFMResult(0);
  *(v3 + 256) = swift_task_alloc();
  v4 = type metadata accessor for TextDetectorResult(0);
  *(v3 + 264) = v4;
  *(v3 + 272) = *(v4 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D899A728, 0, 0);
}

void sub_1D899A728()
{
  v162 = v0;
  if (qword_1EE0E4390 != -1)
  {
    goto LABEL_96;
  }

  while (1)
  {
    v2 = sub_1D8B151E0();
    *(v0 + 296) = __swift_project_value_buffer(v2, qword_1EE0E4398);
    v3 = sub_1D8B151C0();
    v4 = sub_1D8B16200();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D8783000, v3, v4, "Starting to generate an event", v5, 2u);
      MEMORY[0x1DA721330](v5, -1, -1);
    }

    v6 = *(v0 + 368);

    if (v6 == 1)
    {
      v7 = sub_1D8B151C0();
      v8 = sub_1D8B16230();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1D8783000, v7, v8, "Enumerating OCR'ed text…", v9, 2u);
        MEMORY[0x1DA721330](v9, -1, -1);
      }
    }

    v10 = *(v0 + 224);
    v11 = MEMORY[0x1E69E7CC0];
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    *(v0 + 192) = v11;
    v12 = *(v10 + 16);
    v153 = v0;
    if (v12)
    {
      v13 = 0;
      v147 = *(v0 + 264);
      v149 = (*(v0 + 272) + 56);
      v150 = v10 + 32;
      v14 = v11;
      v146 = *(v10 + 16);
      while (1)
      {
        while (1)
        {
          v17 = *(v150 + 8 * v13++);
          v151 = v17;
          switch(v17 >> 60)
          {
            case 1uLL:
              v33 = type metadata accessor for GroundedParseDetectorResult(0);
              v19 = swift_projectBox();
              *(v0 + 40) = v33;
              *(v0 + 48) = sub_1D89A2E50(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for GroundedParseDetectorResult;
              goto LABEL_23;
            case 2uLL:
              v28 = type metadata accessor for MetaDetectionResult();
              v19 = swift_projectBox();
              *(v0 + 40) = v28;
              *(v0 + 48) = sub_1D89A2E50(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for MetaDetectionResult;
              goto LABEL_23;
            case 3uLL:
            case 8uLL:
              v18 = type metadata accessor for ObjectDetectorResult(0);
              v19 = swift_projectBox();
              *(v0 + 40) = v18;
              *(v0 + 48) = sub_1D89A2E50(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for ObjectDetectorResult;
              goto LABEL_23;
            case 4uLL:
              v34 = type metadata accessor for ParseDetectorResult(0);
              v19 = swift_projectBox();
              *(v0 + 40) = v34;
              *(v0 + 48) = sub_1D89A2E50(&qword_1ECA64238, type metadata accessor for ParseDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for ParseDetectorResult;
              goto LABEL_23;
            case 5uLL:
              v35 = *(v0 + 264);
              v36 = swift_projectBox();
              *(v0 + 40) = v35;
              *(v0 + 48) = sub_1D89A2E50(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v37 = type metadata accessor for TextDetectorResult;
              v38 = v36;
              goto LABEL_24;
            case 6uLL:
            case 7uLL:
              v22 = type metadata accessor for StreamingBarcodeDetectorResult(0);
              v19 = swift_projectBox();
              *(v0 + 40) = v22;
              *(v0 + 48) = sub_1D89A2E50(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for StreamingBarcodeDetectorResult;
              goto LABEL_23;
            case 9uLL:
            case 0xAuLL:
              v23 = *(v0 + 248);
              v24 = *(v0 + 256);
              v25 = swift_projectBox();
              sub_1D89A23C4(v25, v24, type metadata accessor for AFMResult);
              *(v0 + 40) = v23;
              *(v0 + 48) = sub_1D89A2E50(&qword_1EE0E3F80, type metadata accessor for AFMResult);
              v26 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              sub_1D89A235C(v24, v26, type metadata accessor for AFMResult);
              break;
            case 0xBuLL:
              v27 = type metadata accessor for SyntheticDetectionResult();
              v19 = swift_projectBox();
              *(v0 + 40) = v27;
              *(v0 + 48) = sub_1D89A2E50(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for SyntheticDetectionResult;
              goto LABEL_23;
            case 0xCuLL:
              v29 = type metadata accessor for GroundedParseEmbeddingsResult(0);
              v19 = swift_projectBox();
              *(v0 + 40) = v29;
              *(v0 + 48) = sub_1D89A2E50(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for GroundedParseEmbeddingsResult;
              goto LABEL_23;
            case 0xDuLL:
              v39 = type metadata accessor for GroundedParseClassificationsResult(0);
              v19 = swift_projectBox();
              *(v0 + 40) = v39;
              *(v0 + 48) = sub_1D89A2E50(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              v21 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_23:
              v37 = v21;
              v38 = v19;
LABEL_24:
              sub_1D89A23C4(v38, boxed_opaque_existential_1, v37);
              break;
            default:
              v1 = &qword_1ECA67750;
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
              v31 = swift_projectBox();
              *(v0 + 40) = v30;
              *(v0 + 48) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750);
              v32 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
              sub_1D87A0E38(v31, v32, &qword_1ECA67750);
              break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140);
          if (swift_dynamicCast())
          {
            break;
          }

          v15 = *(v0 + 264);
          v16 = *(v0 + 240);

          (*v149)(v16, 1, 1, v15);
          sub_1D87A14E4(v16, &qword_1ECA64820);
          if (v13 == v12)
          {
            goto LABEL_53;
          }
        }

        v40 = *(v0 + 288);
        v41 = *(v0 + 240);
        v42 = *(v0 + 368);
        (*v149)(v41, 0, 1, *(v0 + 264));
        sub_1D89A235C(v41, v40, type metadata accessor for TextDetectorResult);
        v148 = v13;
        if (v42 == 1)
        {
          sub_1D89A23C4(*(v0 + 288), *(v0 + 280), type metadata accessor for TextDetectorResult);
          v43 = sub_1D8B151C0();
          v44 = sub_1D8B16230();
          v45 = os_log_type_enabled(v43, v44);
          v46 = *(v0 + 280);
          if (v45)
          {
            v47 = swift_slowAlloc();
            *v47 = 134217984;
            v48 = *(*(v46 + *(v147 + 44)) + 16);
            sub_1D89A2300(v46);
            *(v47 + 4) = v48;
            _os_log_impl(&dword_1D8783000, v43, v44, "--- Checking text detection with %ld lines", v47, 0xCu);
            MEMORY[0x1DA721330](v47, -1, -1);
          }

          else
          {
            sub_1D89A2300(*(v0 + 280));
          }
        }

        v49 = v0;
        v0 = *(*(v0 + 288) + *(v147 + 44));
        v155 = *(v0 + 16);
        if (v155)
        {
          break;
        }

LABEL_42:
        v61 = sub_1D8B15A70();
        v62 = sub_1D89A2264(v61);
        v64 = v63;
        v66 = v65;
        v68 = v67;

        v53 = MEMORY[0x1DA71EF10](v62, v64, v66, v68);

        v157 = MEMORY[0x1E69E7CC0];
        v159 = v151;
        v1 = v153;
        CVDetection.detection.getter((v153 + 56));
        v69 = *(v153 + 80);
        v70 = *(v153 + 88);
        v59 = __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
        v71 = *(v70 + 64);

        v71(v158, v69, v70);
        __swift_destroy_boxed_opaque_existential_1(v153 + 56);
        v72 = 0;
        v161[0] = v158[0];
        v161[1] = v158[1];
        v161[2] = v158[3];
        v161[3] = v158[2];
        v12 = v146;
        v49 = v160;
        v60 = 0x1E69D9000uLL;
        do
        {
          v73 = *&v160[v72 * 16 + 32];
          v74 = *(&v161[v72] + 1);
          v75 = objc_allocWithZone(*(v60 + 912));
          *&v76 = v73;
          *&v77 = v74;
          if (![v75 initWithX:v76 y:v77])
          {
            __break(1u);
            goto LABEL_131;
          }

          MEMORY[0x1DA71F1A0]();
          if (*((v157 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v157 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D8B15D20();
            v60 = 0x1E69D9000;
          }

          v59 = &v157;
          sub_1D8B15D70();
          ++v72;
        }

        while (v72 != 4);
        *&v158[0] = v151;
        CVDetection.detection.getter((v153 + 96));
        v78 = *(v153 + 120);
        v79 = *(v153 + 128);
        __swift_project_boxed_opaque_existential_1((v153 + 96), v78);
        v80 = (*(v79 + 56))(v78, v79);
        __swift_destroy_boxed_opaque_existential_1(v153 + 96);
        v81 = objc_allocWithZone(MEMORY[0x1E69D9398]);
        v82 = sub_1D8B15940();

        sub_1D881F764(0, &qword_1ECA66748);
        v0 = v153;
        v1 = sub_1D8B15CD0();
        *&v83 = v80;
        v84 = [v81 initWithText:v82 coordinates:v1 confidence:v83];

        if (!v84)
        {
          __break(1u);
          return;
        }

        MEMORY[0x1DA71F1A0](v85);
        if (*((*(v153 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v153 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D8B15D20();
        }

        v86 = *(v153 + 288);
        sub_1D8B15D70();

        v14 = *(v153 + 192);
        sub_1D89A2300(v86);
        v13 = v148;
        if (v148 == v146)
        {
          goto LABEL_53;
        }
      }

      v50 = 0;
      v51 = v0 + 64;
      v154 = v0;
      while (1)
      {
        if (v50 >= *(v0 + 16))
        {
          __break(1u);
          goto LABEL_92;
        }

        v52 = v49[368];
        v53 = *(v51 - 24);
        v54 = *(v51 - 16);

        if (v52 == 1)
        {
          v55 = sub_1D8B151C0();
          v56 = sub_1D8B16230();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            v1 = swift_slowAlloc();
            *&v158[0] = v1;
            *v57 = 136315138;

            v58 = sub_1D89AC714(v53, v54, v158);

            *(v57 + 4) = v58;
            _os_log_impl(&dword_1D8783000, v55, v56, "--- appending line: %s", v57, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v1);
            v49 = v153;
            MEMORY[0x1DA721330](v1, -1, -1);
            MEMORY[0x1DA721330](v57, -1, -1);
          }
        }

        v59 = objc_allocWithZone(MEMORY[0x1E69D9398]);
        v60 = sub_1D8B15940();
        v11 = [v59 initWithText:v60 coordinates:0];

        if (!v11)
        {
          break;
        }

        v1 = v49;
        MEMORY[0x1DA71F1A0]();
        if (*((*(v49 + 23) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v49 + 23) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D8B15D20();
        }

        ++v50;
        sub_1D8B15D70();
        v11 = *(v49 + 23);
        *&v158[0] = v53;
        *(&v158[0] + 1) = v54;

        MEMORY[0x1DA71EFA0](0x706573656E696C3CLL, 0xE90000000000003ELL);

        MEMORY[0x1DA71EFA0](*&v158[0], *(&v158[0] + 1));

        v51 += 40;
        v0 = v154;
        if (v155 == v50)
        {
          goto LABEL_42;
        }
      }

LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v14 = v11;
LABEL_53:
    if (v11 >> 62)
    {
      v87 = sub_1D8B16610();
    }

    else
    {
      v87 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = MEMORY[0x1E69E7CC0];
    *(v0 + 304) = MEMORY[0x1E69E7CC0];
    if (v87)
    {
      v89 = 0;
      v0 = MEMORY[0x1E69E7CC0];
LABEL_57:
      v90 = v89;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v91 = MEMORY[0x1DA71FC20](v90, v11);
        }

        else
        {
          if (v90 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_93;
          }

          v91 = *(v11 + 8 * v90 + 32);
        }

        v1 = v91;
        v89 = v90 + 1;
        if (__OFADD__(v90, 1))
        {
          break;
        }

        v92 = [v91 text];
        if (v92)
        {
          v93 = v92;
          v94 = sub_1D8B15970();
          v154 = v95;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v0 = sub_1D87C8284(0, *(v0 + 16) + 1, 1, v0);
          }

          v1 = *(v0 + 16);
          v96 = *(v0 + 24);
          if (v1 >= v96 >> 1)
          {
            v0 = sub_1D87C8284((v96 > 1), v1 + 1, 1, v0);
          }

          *(v0 + 16) = v1 + 1;
          v97 = v0 + 16 * v1;
          *(v97 + 32) = v94;
          *(v97 + 40) = v154;
          *(v153 + 304) = v0;
          if (v89 != v87)
          {
            goto LABEL_57;
          }

          goto LABEL_73;
        }

        ++v90;
        if (v89 == v87)
        {
          goto LABEL_73;
        }
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v0 = v88;
LABEL_73:
    v154 = v0;
    v53 = v14;
    v0 = v14 & 0xFFFFFFFFFFFFFF8;
    if (!(v14 >> 62))
    {
      v98 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v98)
      {
        break;
      }

      goto LABEL_75;
    }

    v98 = sub_1D8B16610();
    if (!v98)
    {
      break;
    }

LABEL_75:
    v99 = 0;
    v1 = v14 & 0xC000000000000001;
    v100 = MEMORY[0x1E69E7CC0];
LABEL_76:
    v101 = v99;
    while (1)
    {
      if (v1)
      {
        v102 = MEMORY[0x1DA71FC20](v101, v53);
      }

      else
      {
        if (v101 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_95;
        }

        v102 = *(v53 + 8 * v101 + 32);
      }

      v103 = v102;
      v99 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v104 = [v102 text];
      if (v104)
      {
        v105 = v104;
        v106 = sub_1D8B15970();
        v152 = v107;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_1D87C8284(0, *(v100 + 2) + 1, 1, v100);
        }

        v109 = *(v100 + 2);
        v108 = *(v100 + 3);
        v110 = v100;
        if (v109 >= v108 >> 1)
        {
          v110 = sub_1D87C8284((v108 > 1), v109 + 1, 1, v100);
        }

        v100 = v110;
        *(v110 + 2) = v109 + 1;
        v111 = &v110[16 * v109];
        *(v111 + 4) = v106;
        *(v111 + 5) = v152;
        v53 = v14;
        if (v99 != v98)
        {
          goto LABEL_76;
        }

        goto LABEL_100;
      }

      ++v101;
      v53 = v14;
      if (v99 == v98)
      {
        goto LABEL_100;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    swift_once();
  }

  v100 = MEMORY[0x1E69E7CC0];
LABEL_100:
  v1 = v153;
  if ((*(v153 + 368) & 1) == 0)
  {

    v59 = sub_1D8B151C0();
    LOBYTE(v49) = sub_1D8B16230();
    v112 = v154;
    if (!os_log_type_enabled(v59, v49))
    {

      goto LABEL_112;
    }

    v60 = swift_slowAlloc();
    *v60 = 134217984;
    if (!(v11 >> 62))
    {
      v128 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_108:
      *(v60 + 4) = v128;

      _os_log_impl(&dword_1D8783000, v59, v49, "Retrieved %ld text boxes for event extraction", v60, 0xCu);
      MEMORY[0x1DA721330](v60, -1, -1);
LABEL_112:

      v129 = sub_1D8B151C0();
      v130 = sub_1D8B16230();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        *v131 = 134217984;
        if (v53 >> 62)
        {
          v132 = sub_1D8B16610();
          v112 = v154;
        }

        else
        {
          v132 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v131 + 4) = v132;

        _os_log_impl(&dword_1D8783000, v129, v130, "Retrieved %ld paragraph boxes for event extraction", v131, 0xCu);
        MEMORY[0x1DA721330](v131, -1, -1);
      }

      else
      {
      }

      goto LABEL_118;
    }

LABEL_132:
    v128 = sub_1D8B16610();
    v112 = v154;
    goto LABEL_108;
  }

  v112 = v154;

  v113 = sub_1D8B151C0();
  v114 = sub_1D8B16230();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *&v158[0] = v116;
    *v115 = 136315138;
    v117 = MEMORY[0x1DA71F1E0](v154, MEMORY[0x1E69E6158]);
    v119 = sub_1D89AC714(v117, v118, v158);

    *(v115 + 4) = v119;
    _os_log_impl(&dword_1D8783000, v113, v114, "Retrieved lines for event extraction: %s", v115, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v116);
    MEMORY[0x1DA721330](v116, -1, -1);
    MEMORY[0x1DA721330](v115, -1, -1);
  }

  v120 = sub_1D8B151C0();
  v121 = sub_1D8B16230();

  if (os_log_type_enabled(v120, v121))
  {
    v122 = swift_slowAlloc();
    v123 = swift_slowAlloc();
    *&v158[0] = v123;
    *v122 = 136315138;
    v124 = MEMORY[0x1DA71F1E0](v100, MEMORY[0x1E69E6158]);
    v126 = v125;

    v127 = sub_1D89AC714(v124, v126, v158);

    *(v122 + 4) = v127;
    _os_log_impl(&dword_1D8783000, v120, v121, "Retrieved paragraphs for event extraction: %s", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v123);
    MEMORY[0x1DA721330](v123, -1, -1);
    MEMORY[0x1DA721330](v122, -1, -1);
  }

  else
  {
  }

  v1 = v153;
LABEL_118:
  sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  v133 = objc_allocWithZone(MEMORY[0x1E69D9378]);
  sub_1D881F764(0, &qword_1ECA66738);
  v134 = sub_1D8B15CD0();
  v135 = sub_1D8B15CD0();

  v136 = sub_1D8B15710();

  v137 = [v133 initWithTextBoxes:v134 paragraphBoxes:v135 paragraphGroupBoxes:0 blockBoxes:0 options:v136];
  *(v1 + 312) = v137;

  if (v137)
  {

    *(v1 + 320) = [objc_allocWithZone(sub_1D8B15400()) init];
    v138 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
    *(v1 + 328) = v138;
    v156 = (*MEMORY[0x1E69C9AF0] + MEMORY[0x1E69C9AF0]);
    v139 = swift_task_alloc();
    *(v1 + 336) = v139;
    *v139 = v1;
    v139[1] = sub_1D899BED4;

    v156(v137, v138);
  }

  else
  {

    v140 = sub_1D8B151C0();
    v141 = sub_1D8B16230();
    if (os_log_type_enabled(v140, v141))
    {
      v142 = swift_slowAlloc();
      *v142 = 134217984;
      if (v11 >> 62)
      {
        v143 = sub_1D8B16610();
      }

      else
      {
        v143 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v142 + 4) = v143;

      _os_log_impl(&dword_1D8783000, v140, v141, "Failed to create input from %ld text boxes during event generation", v142, 0xCu);
      MEMORY[0x1DA721330](v142, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_1D89A21C4();
    swift_allocError();
    *(v144 + 8) = 0;
    *(v144 + 16) = 0;
    *v144 = v112;
    *(v144 + 24) = 0;
    swift_willThrow();

    v145 = *(v1 + 8);

    v145();
  }
}

uint64_t sub_1D899BED4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = v2;

  if (v2)
  {
    v5 = sub_1D899C374;
  }

  else
  {
    v6 = v4[40];

    v5 = sub_1D899BFF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D899BFF8()
{
  v31 = v0;
  v1 = *(v0 + 232);
  sub_1D899CD4C(*(v0 + 344), *(v0 + 368), v1);
  v2 = type metadata accessor for EventLookupItem();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 304);
    v5 = *(v0 + 232);

    sub_1D87A14E4(v5, &qword_1ECA66730);
    sub_1D89A21C4();
    v6 = swift_allocError();
    *(v7 + 8) = 0;
    *(v7 + 16) = 0;
    *v7 = v4;
    *(v7 + 24) = 1;
    swift_willThrow();

    v8 = v6;
    v9 = sub_1D8B151C0();
    v10 = sub_1D8B16230();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1D8B16C90();
      v15 = sub_1D89AC714(v13, v14, &v30);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D8783000, v9, v10, "Event generation failed with error: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1DA721330](v12, -1, -1);
      MEMORY[0x1DA721330](v11, -1, -1);
    }

    v17 = *(v0 + 304);
    v16 = *(v0 + 312);
    swift_getErrorValue();
    v18 = sub_1D8B16C90();
    v20 = v19;
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = v17;
    *(v21 + 24) = 2;
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 312);
    v25 = *(v0 + 232);
    v26 = *(v0 + 216);

    sub_1D89A235C(v25, v26, type metadata accessor for EventLookupItem);

    v27 = *(v0 + 8);
    v28 = *(v0 + 352);
    v29 = *(v0 + 304);

    return v27(v28, v29);
  }
}

uint64_t sub_1D899C374()
{
  v20 = v0;
  v1 = v0[40];

  v2 = v0[45];
  v3 = v2;
  v4 = sub_1D8B151C0();
  v5 = sub_1D8B16230();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1D8B16C90();
    v10 = sub_1D89AC714(v8, v9, &v19);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D8783000, v4, v5, "Event generation failed with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1DA721330](v7, -1, -1);
    MEMORY[0x1DA721330](v6, -1, -1);
  }

  v12 = v0[38];
  v11 = v0[39];
  swift_getErrorValue();
  v13 = sub_1D8B16C90();
  v15 = v14;
  sub_1D89A21C4();
  swift_allocError();
  *v16 = v13;
  *(v16 + 8) = v15;
  *(v16 + 16) = v12;
  *(v16 + 24) = 2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t EventLookupItem.init(name:startDate:endDate:allDay:location:notes:url:requiresSafetyConfirmation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v15 = type metadata accessor for EventLookupItem();
  v16 = v15[5];
  v17 = sub_1D8B131D0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v20 = &a9[v16];
  v21 = a3;
  v19(v20, a3, v17);
  v19(&a9[v15[6]], a4, v17);
  a9[v15[7]] = a5;
  v22 = &a9[v15[8]];
  *v22 = a6;
  *(v22 + 1) = a7;
  if (a10)
  {
    v38 = a4;
    if (sub_1D8B15A70() <= 240)
    {
      v30 = *(v18 + 8);
      v30(a4, v17);
      v30(a3, v17);
      v31 = &a9[v15[9]];
      *v31 = a8;
      *(v31 + 1) = a10;
    }

    else
    {
      if (qword_1EE0E4390 != -1)
      {
        swift_once();
      }

      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E4398);

      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16230();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        v27 = sub_1D8B15A70();

        *(v26 + 4) = v27;

        _os_log_impl(&dword_1D8783000, v24, v25, "Notes field left blank due to length %ld", v26, 0xCu);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v32 = *(v18 + 8);
      v32(v38, v17);
      v32(v21, v17);
      v33 = &a9[v15[9]];
      *v33 = 0;
      *(v33 + 1) = 0;
    }
  }

  else
  {
    v28 = *(v18 + 8);
    v28(a4, v17);
    v28(a3, v17);
    v29 = &a9[v15[9]];
    *v29 = a8;
    *(v29 + 1) = 0;
  }

  result = sub_1D881F6FC(a11, &a9[v15[10]], &qword_1ECA630C0);
  a9[v15[11]] = a12 & 1;
  return result;
}

uint64_t sub_1D899C894@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v1 = sub_1D8B13450();
  v31 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B12DE0();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13410();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64AE8);
  v7 = sub_1D8B13430();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D8B1AB60;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x1E6969A68], v7);
  v13(v12 + v9, *MEMORY[0x1E6969A78], v7);
  v13(v12 + 2 * v9, *MEMORY[0x1E6969A48], v7);
  v13(v12 + 3 * v9, *MEMORY[0x1E6969A58], v7);
  v13(v12 + 4 * v9, *MEMORY[0x1E6969A88], v7);
  v14 = 5 * v9;
  v15 = v32;
  v13(v12 + v14, *MEMORY[0x1E6969A98], v7);
  v16 = v31;
  sub_1D8A4FF5C(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8B133B0();

  v17 = *(v16 + 8);
  v17(v3, v1);
  v18 = sub_1D8B12D90();
  if ((v19 & 1) == 0 && !v18)
  {
    (*(v28 + 8))(v6, v29);
    v20 = sub_1D8B131D0();
    v21 = *(v20 - 8);
    v22 = v30;
    (*(v21 + 16))(v30, v15, v20);
    return (*(v21 + 56))(v22, 0, 1, v20);
  }

  v24 = sub_1D8B12D50();
  if ((v25 & 1) == 0)
  {
    v26 = __OFADD__(v24, 1);
    result = v24 + 1;
    if (v26)
    {
      __break(1u);
      return result;
    }

    sub_1D8B12D60();
  }

  sub_1D8B12DA0();
  sub_1D8B12DB0();
  sub_1D8B13410();
  sub_1D8B133D0();
  v17(v3, v1);
  return (*(v28 + 8))(v6, v29);
}

unint64_t EventLLMLookupError.errorDescription.getter()
{
  if (!*(v0 + 24))
  {
    return 0xD000000000000016;
  }

  if (*(v0 + 24) == 1)
  {
    return 0xD000000000000016;
  }

  v2 = *v0;

  return v2;
}

id sub_1D899CD4C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v445 = a2;
  v455 = a3;
  v459 = type metadata accessor for EventLookupItem();
  v450 = *(v459 - 1);
  v4 = MEMORY[0x1EEE9AC00](v459);
  v425 = (&v413 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v419 = (&v413 - v6);
  v434 = sub_1D8B13430();
  v433 = *(v434 - 8);
  MEMORY[0x1EEE9AC00](v434);
  v431 = &v413 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = sub_1D8B13450();
  v430 = *(v432 - 8);
  MEMORY[0x1EEE9AC00](v432);
  v429 = &v413 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v469 = sub_1D8B13000();
  v472 = *(v469 - 8);
  v9 = MEMORY[0x1EEE9AC00](v469);
  v416 = &v413 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v438 = &v413 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v439 = &v413 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v413 - v15;
  v476 = sub_1D8B131D0();
  v17 = *(v476 - 8);
  v18 = MEMORY[0x1EEE9AC00](v476);
  v442 = &v413 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v435 = &v413 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v417 = &v413 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v418 = &v413 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v422 = &v413 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v421 = &v413 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v447 = &v413 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v426 = &v413 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v460 = &v413 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v413 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v458 = &v413 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v413 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v413 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v47 = MEMORY[0x1EEE9AC00](v46 - 8);
  v436 = &v413 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v420 = &v413 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v448 = &v413 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v443 = &v413 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v413 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v58 = MEMORY[0x1EEE9AC00](v57 - 8);
  v441 = &v413 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = MEMORY[0x1EEE9AC00](v58);
  v427 = &v413 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v428 = &v413 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v440 = &v413 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v461 = &v413 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v452 = &v413 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v453 = &v413 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v449 = &v413 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v451 = (&v413 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v471 = (&v413 - v77);
  v78 = MEMORY[0x1EEE9AC00](v76);
  v80 = &v413 - v79;
  v81 = MEMORY[0x1EEE9AC00](v78);
  v473 = &v413 - v82;
  v83 = MEMORY[0x1EEE9AC00](v81);
  v85 = &v413 - v84;
  MEMORY[0x1EEE9AC00](v83);
  v87 = &v413 - v86;
  v474 = a1;
  v88 = [a1 eventTitle];
  if (v88)
  {
    v89 = v88;
    v444 = sub_1D8B15970();
    v465 = v90;
  }

  else
  {
    v444 = 0;
    v465 = 0;
  }

  v91 = [v474 startDate];
  if (v91)
  {
    v92 = v91;
    sub_1D8B13190();

    v93 = *(v17 + 56);
    v94 = v85;
    v95 = 0;
  }

  else
  {
    v93 = *(v17 + 56);
    v94 = v85;
    v95 = 1;
  }

  v463 = v93;
  v93(v94, v95, 1, v476);
  sub_1D881F6FC(v85, v87, &qword_1ECA631A8);
  v96 = [v474 endDate];
  if (v96)
  {
    v97 = v96;
    sub_1D8B13190();

    v98 = 0;
  }

  else
  {
    v98 = 1;
  }

  v454 = v17 + 56;
  v463(v80, v98, 1, v476);
  sub_1D881F6FC(v80, v473, &qword_1ECA631A8);
  v99 = v474;
  v446 = [v474 allDay];
  v100 = [v99 location];
  if (v100)
  {
    v101 = v100;
    v456 = sub_1D8B15970();
    v468 = v102;
  }

  else
  {
    v456 = 0;
    v468 = 0;
  }

  v103 = [v474 notes];
  if (v103)
  {
    v104 = v103;
    v462 = sub_1D8B15970();
    v106 = v105;
  }

  else
  {
    v462 = 0;
    v106 = 0;
  }

  v107 = *(v472 + 56);
  v424 = v472 + 56;
  v423 = v107;
  v107(v56, 1, 1, v469);
  v108 = qword_1EE0E4390;
  v470 = v106;

  if (v108 != -1)
  {
    swift_once();
  }

  v109 = sub_1D8B151E0();
  v475 = __swift_project_value_buffer(v109, qword_1EE0E4398);
  v110 = sub_1D8B151C0();
  v111 = sub_1D8B16230();
  v112 = os_log_type_enabled(v110, v111);
  v466 = v17;
  if (v112)
  {
    v113 = swift_slowAlloc();
    *v113 = 0;
    _os_log_impl(&dword_1D8783000, v110, v111, "Extracted an event", v113, 2u);
    v114 = v113;
    v17 = v466;
    MEMORY[0x1DA721330](v114, -1, -1);
  }

  v467 = v87;
  v115 = v465;
  if (!v465)
  {
    v116 = sub_1D8B151C0();
    v128 = sub_1D8B16230();
    if (!os_log_type_enabled(v116, v128))
    {
      goto LABEL_27;
    }

    v129 = swift_slowAlloc();
    *v129 = 0;
    _os_log_impl(&dword_1D8783000, v116, v128, "--- No title", v129, 2u);
    v127 = v129;
    v87 = v467;
    goto LABEL_25;
  }

  v116 = sub_1D8B151C0();
  v117 = sub_1D8B16230();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v464 = v43;
    v120 = v45;
    v121 = v38;
    v122 = v56;
    v123 = v16;
    v124 = v119;
    *&v478 = v119;
    *v118 = 136315138;
    v125 = sub_1D89AC714(v444, v115, &v478);

    *(v118 + 4) = v125;
    v87 = v467;
    _os_log_impl(&dword_1D8783000, v116, v117, "--- Title: %s", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v124);
    v126 = v124;
    v16 = v123;
    v56 = v122;
    v38 = v121;
    v45 = v120;
    v43 = v464;
    MEMORY[0x1DA721330](v126, -1, -1);
    v127 = v118;
    v17 = v466;
LABEL_25:
    MEMORY[0x1DA721330](v127, -1, -1);
    goto LABEL_27;
  }

LABEL_27:

  v131 = v470;
  v130 = v471;
  sub_1D87A0E38(v87, v471, &qword_1ECA631A8);
  v132 = *(v17 + 48);
  v464 = (v17 + 48);
  v471 = v132;
  v133 = (v132)(v130, 1, v476);
  v457 = v56;
  if (v133 == 1)
  {
    sub_1D87A14E4(v130, &qword_1ECA631A8);
    v134 = sub_1D8B151C0();
    v135 = sub_1D8B16230();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_1D8783000, v134, v135, "--- No start date", v136, 2u);
      MEMORY[0x1DA721330](v136, -1, -1);
    }
  }

  else
  {
    v437 = v38;
    v137 = v130;
    v138 = v476;
    (*(v17 + 32))(v45, v137, v476);
    (*(v17 + 16))(v43, v45, v138);
    v139 = v43;
    v140 = sub_1D8B151C0();
    v141 = v17;
    v142 = sub_1D8B16230();
    if (os_log_type_enabled(v140, v142))
    {
      v143 = swift_slowAlloc();
      v415 = v16;
      v144 = v143;
      v145 = swift_slowAlloc();
      *&v478 = v145;
      *v144 = 136315138;
      v146 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v146 setDateStyle_];
      [v146 setTimeStyle_];
      v147 = sub_1D8B13120();
      v148 = [v146 stringFromDate_];

      v149 = sub_1D8B15970();
      v414 = v45;
      v151 = v150;

      v152 = *(v141 + 8);
      v152(v139, v476);
      v153 = sub_1D89AC714(v149, v151, &v478);

      *(v144 + 4) = v153;
      _os_log_impl(&dword_1D8783000, v140, v142, "--- Start date: %s", v144, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v145);
      v154 = v145;
      v131 = v470;
      MEMORY[0x1DA721330](v154, -1, -1);
      v155 = v144;
      v16 = v415;
      MEMORY[0x1DA721330](v155, -1, -1);

      v152(v414, v476);
      v56 = v457;
    }

    else
    {

      v156 = *(v141 + 8);
      v157 = v476;
      v156(v139, v476);
      v156(v45, v157);
    }

    v17 = v141;
    v38 = v437;
  }

  v158 = v451;
  sub_1D87A0E38(v473, v451, &qword_1ECA631A8);
  if ((v471)(v158, 1, v476) == 1)
  {
    sub_1D87A14E4(v158, &qword_1ECA631A8);
    v159 = sub_1D8B151C0();
    v160 = sub_1D8B16230();
    if (os_log_type_enabled(v159, v160))
    {
      v161 = swift_slowAlloc();
      *v161 = 0;
      _os_log_impl(&dword_1D8783000, v159, v160, "--- No end date", v161, 2u);
      MEMORY[0x1DA721330](v161, -1, -1);
    }
  }

  else
  {
    v162 = v458;
    v163 = v158;
    v164 = v476;
    (*(v17 + 32))(v458, v163, v476);
    (*(v17 + 16))(v38, v162, v164);
    v165 = sub_1D8B151C0();
    v166 = v17;
    v167 = sub_1D8B16230();
    if (os_log_type_enabled(v165, v167))
    {
      v168 = swift_slowAlloc();
      v437 = v38;
      v169 = v168;
      v451 = swift_slowAlloc();
      *&v478 = v451;
      *v169 = 136315138;
      v170 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      [v170 setDateStyle_];
      [v170 setTimeStyle_];
      v171 = sub_1D8B13120();
      v172 = [v170 stringFromDate_];

      v173 = sub_1D8B15970();
      v174 = v56;
      v175 = v16;
      v177 = v176;

      v178 = *(v166 + 8);
      v178(v437, v476);
      v179 = sub_1D89AC714(v173, v177, &v478);
      v16 = v175;
      v56 = v174;
      v131 = v470;

      *(v169 + 4) = v179;
      _os_log_impl(&dword_1D8783000, v165, v167, "--- End date: %s", v169, 0xCu);
      v180 = v451;
      __swift_destroy_boxed_opaque_existential_1(v451);
      MEMORY[0x1DA721330](v180, -1, -1);
      MEMORY[0x1DA721330](v169, -1, -1);

      v178(v458, v476);
    }

    else
    {

      v181 = *(v166 + 8);
      v182 = v476;
      v181(v38, v476);
      v181(v458, v182);
    }

    v17 = v166;
  }

  v183 = v469;
  v184 = sub_1D8B151C0();
  v185 = sub_1D8B16230();
  if (os_log_type_enabled(v184, v185))
  {
    v186 = swift_slowAlloc();
    *v186 = 67109120;
    *(v186 + 4) = v446;
    _os_log_impl(&dword_1D8783000, v184, v185, "--- All Day: %{BOOL}d", v186, 8u);
    MEMORY[0x1DA721330](v186, -1, -1);
  }

  if (!v468)
  {
    goto LABEL_51;
  }

  v187 = HIBYTE(v468) & 0xF;
  if ((v468 & 0x2000000000000000) == 0)
  {
    v187 = v456 & 0xFFFFFFFFFFFFLL;
  }

  if (!v187)
  {
LABEL_51:
    v188 = sub_1D8B151C0();
    v190 = sub_1D8B16230();
    if (!os_log_type_enabled(v188, v190))
    {
      goto LABEL_58;
    }

    v191 = swift_slowAlloc();
    *v191 = 0;
    _os_log_impl(&dword_1D8783000, v188, v190, "--- No location", v191, 2u);
    goto LABEL_56;
  }

  v188 = sub_1D8B151C0();
  if (v445)
  {
    v189 = sub_1D8B16230();
  }

  else
  {
    v189 = sub_1D8B16200();
  }

  v192 = v189;
  if (os_log_type_enabled(v188, v189))
  {
    v191 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    *&v478 = v193;
    *v191 = 136315138;
    v194 = sub_1D89AC714(v456, v468, &v478);

    *(v191 + 4) = v194;
    _os_log_impl(&dword_1D8783000, v188, v192, "--- Location: %s", v191, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v193);
    v195 = v193;
    v131 = v470;
    MEMORY[0x1DA721330](v195, -1, -1);
LABEL_56:
    MEMORY[0x1DA721330](v191, -1, -1);
    goto LABEL_58;
  }

LABEL_58:

  v196 = v472;
  if (!v131)
  {
    v198 = sub_1D8B151C0();
    v199 = sub_1D8B16230();
    if (os_log_type_enabled(v198, v199))
    {
      v200 = swift_slowAlloc();
      *v200 = 0;
      _os_log_impl(&dword_1D8783000, v198, v199, "--- No notes", v200, 2u);
      MEMORY[0x1DA721330](v200, -1, -1);
    }

    v458 = 0;
    v201 = v462;
    v202 = v448;
LABEL_83:
    v470 = v201;
    sub_1D87A0E38(v56, v202, &qword_1ECA630C0);
    v224 = *(v196 + 48);
    v462 = v196 + 48;
    v451 = v224;
    if ((v224)(v202, 1, v183) == 1)
    {
      sub_1D87A14E4(v202, &qword_1ECA630C0);
      v225 = sub_1D8B151C0();
      v226 = sub_1D8B16230();
      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        *v227 = 0;
        _os_log_impl(&dword_1D8783000, v225, v226, "--- No URL", v227, 2u);
        MEMORY[0x1DA721330](v227, -1, -1);
      }
    }

    else
    {
      v228 = v439;
      (*(v196 + 32))(v439, v202, v183);
      v229 = v438;
      (*(v196 + 16))(v438, v228, v183);
      v230 = sub_1D8B151C0();
      v231 = sub_1D8B16230();
      if (os_log_type_enabled(v230, v231))
      {
        v232 = v196;
        v233 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        *&v478 = v234;
        *v233 = 136315138;
        sub_1D89A2E50(&qword_1ECA64730, MEMORY[0x1E6968FB0]);
        v235 = sub_1D8B16B50();
        v237 = v236;
        v238 = *(v232 + 8);
        v238(v229, v469);
        v239 = sub_1D89AC714(v235, v237, &v478);

        *(v233 + 4) = v239;
        _os_log_impl(&dword_1D8783000, v230, v231, "--- URL: %s", v233, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v234);
        v240 = v234;
        v17 = v466;
        MEMORY[0x1DA721330](v240, -1, -1);
        MEMORY[0x1DA721330](v233, -1, -1);

        v238(v228, v469);
      }

      else
      {

        v241 = *(v196 + 8);
        v241(v229, v183);
        v241(v228, v183);
      }
    }

    v242 = v461;
    v243 = v453;
    v244 = v452;
    v245 = v471;
    sub_1D87A0E38(v467, v453, &qword_1ECA631A8);
    v246 = (v245)(v243, 1, v476);
    v247 = v449;
    if (v246 == 1)
    {
      sub_1D87A0E38(v473, v244, &qword_1ECA631A8);
      if ((v245)(v244, 1, v476) == 1)
      {
        v248 = v426;
        sub_1D8B131C0();
        sub_1D899C894(v247);
        v249 = v248;
        v250 = v476;
        (*(v17 + 8))(v249, v476);
        if ((v245)(v244, 1, v250) != 1)
        {
          sub_1D87A14E4(v244, &qword_1ECA631A8);
        }
      }

      else
      {
        v252 = v476;
        (*(v17 + 32))(v247, v244, v476);
        v463(v247, 0, 1, v252);
      }

      if ((v245)(v243, 1, v476) != 1)
      {
        sub_1D87A14E4(v243, &qword_1ECA631A8);
      }
    }

    else
    {
      v251 = v476;
      (*(v17 + 32))(v449, v243, v476);
      v463(v247, 0, 1, v251);
    }

    if ((v245)(v247, 1, v476) == 1)
    {

      sub_1D87A14E4(v247, &qword_1ECA631A8);
      v253 = sub_1D8B151C0();
      v254 = sub_1D8B16230();
      if (os_log_type_enabled(v253, v254))
      {
        v255 = swift_slowAlloc();
        *v255 = 0;
        _os_log_impl(&dword_1D8783000, v253, v254, "Could not extract a start date for the event. Bailing from extracting an event.", v255, 2u);
        MEMORY[0x1DA721330](v255, -1, -1);
      }

      sub_1D87A14E4(v473, &qword_1ECA631A8);
      sub_1D87A14E4(v467, &qword_1ECA631A8);
      v256 = 1;
      v257 = v455;
      goto LABEL_176;
    }

    v258 = v476;
    v259 = *(v17 + 32);
    v259(v460, v247, v476);
    sub_1D87A0E38(v473, v242, &qword_1ECA631A8);
    v260 = v440;
    sub_1D87A0E38(v242, v440, &qword_1ECA631A8);
    v261 = (v245)(v260, 1, v258);
    sub_1D87A14E4(v260, &qword_1ECA631A8);
    v262 = v261 == 1;
    v263 = v461;
    if (v262)
    {
      v264 = sub_1D8B151C0();
      v265 = sub_1D8B16230();
      if (os_log_type_enabled(v264, v265))
      {
        v266 = swift_slowAlloc();
        *v266 = 0;
        _os_log_impl(&dword_1D8783000, v264, v265, "Could not extract an end date. Derive one by adding an hour to the start date.", v266, 2u);
        v267 = v266;
        v263 = v461;
        MEMORY[0x1DA721330](v267, -1, -1);
      }

      v268 = v429;
      sub_1D8B13410();
      v269 = v433;
      v270 = v431;
      v271 = v434;
      (*(v433 + 104))(v431, *MEMORY[0x1E6969A58], v434);
      v272 = v427;
      v273 = v460;
      sub_1D8B133F0();
      (*(v269 + 8))(v270, v271);
      (*(v430 + 8))(v268, v432);
      v258 = v476;
      v274 = v471;
      if ((v471)(v272, 1, v476) == 1)
      {
        v275 = v428;
        (*(v466 + 16))(v428, v273, v258);
        if ((v274)(v272, 1, v258) != 1)
        {
          sub_1D87A14E4(v272, &qword_1ECA631A8);
        }
      }

      else
      {
        v275 = v428;
        v259(v428, v272, v258);
      }

      sub_1D87A14E4(v263, &qword_1ECA631A8);
      v463(v275, 0, 1, v258);
      sub_1D881F6FC(v275, v263, &qword_1ECA631A8);
    }

    v276 = v441;
    sub_1D87A0E38(v263, v441, &qword_1ECA631A8);
    if ((v471)(v276, 1, v258) == 1)
    {

      sub_1D87A14E4(v276, &qword_1ECA631A8);
      v277 = sub_1D8B151C0();
      v278 = sub_1D8B16230();
      v279 = os_log_type_enabled(v277, v278);
      v280 = v457;
      v281 = v466;
      if (v279)
      {
        v282 = swift_slowAlloc();
        *v282 = 0;
        _os_log_impl(&dword_1D8783000, v277, v278, "Could not extract or derive an end date at all. This is unexpected.", v282, 2u);
        MEMORY[0x1DA721330](v282, -1, -1);
      }

      sub_1D87A14E4(v263, &qword_1ECA631A8);
      (*(v281 + 8))(v460, v476);
      sub_1D87A14E4(v473, &qword_1ECA631A8);
      sub_1D87A14E4(v467, &qword_1ECA631A8);
      v256 = 1;
      v257 = v455;
      goto LABEL_177;
    }

    v259(v447, v276, v258);
    v283 = v460;
    v284 = v442;
    v285 = v466;
    if (v445)
    {
      v286 = *(v466 + 16);
      v287 = v421;
      v288 = v476;
      v286(v421, v460, v476);
      v289 = v422;
      v286(v422, v447, v288);
      v290 = v458;

      v291 = v465;

      v292 = v468;

      v293 = sub_1D8B151C0();
      v294 = sub_1D8B16200();

      if (os_log_type_enabled(v293, v294))
      {
        LODWORD(v464) = v294;
        v471 = v293;
        v295 = v285;
        v296 = swift_slowAlloc();
        v463 = swift_slowAlloc();
        *&v478 = v463;
        *v296 = 136316418;
        if (v291)
        {
          v297 = v444;
        }

        else
        {
          v297 = 0x6C746974206F6E3CLL;
        }

        v298 = v289;
        if (v291)
        {
          v299 = v291;
        }

        else
        {
          v299 = 0xEA00000000003E65;
        }

        v300 = sub_1D89AC714(v297, v299, &v478);

        *(v296 + 4) = v300;
        *(v296 + 12) = 2080;
        v301 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v301 setDateStyle_];
        [v301 setTimeStyle_];
        v302 = sub_1D8B13120();
        v303 = v287;
        v304 = [v301 stringFromDate_];

        v305 = sub_1D8B15970();
        v307 = v306;

        v308 = *(v295 + 8);
        v308(v303, v476);
        v309 = sub_1D89AC714(v305, v307, &v478);

        *(v296 + 14) = v309;
        *(v296 + 22) = 2080;
        v310 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v310 setDateStyle_];
        [v310 setTimeStyle_];
        v311 = sub_1D8B13120();
        v312 = [v310 stringFromDate_];

        v313 = sub_1D8B15970();
        v315 = v314;

        v308(v298, v476);
        v316 = sub_1D89AC714(v313, v315, &v478);

        *(v296 + 24) = v316;
        *(v296 + 32) = 2080;
        if (v292)
        {
          v317 = v456;
        }

        else
        {
          v317 = 0x61636F6C206F6E3CLL;
        }

        if (v292)
        {
          v318 = v292;
        }

        else
        {
          v318 = 0xED00003E6E6F6974;
        }

        v319 = sub_1D89AC714(v317, v318, &v478);

        *(v296 + 34) = v319;
        *(v296 + 42) = 2080;
        if (v290)
        {
          v320 = v470;
        }

        else
        {
          v320 = 0x65746F6E206F6E3CLL;
        }

        if (v290)
        {
          v321 = v290;
        }

        else
        {
          v321 = 0xEA00000000003E73;
        }

        v322 = sub_1D89AC714(v320, v321, &v478);

        *(v296 + 44) = v322;
        *(v296 + 52) = 2080;
        v323 = v457;
        swift_beginAccess();
        v324 = v469;
        if ((v451)(v323, 1, v469))
        {
          v325 = 0xE800000000000000;
          v326 = 0x3E4C5255206F6E3CLL;
        }

        else
        {
          v328 = v472;
          v329 = v416;
          (*(v472 + 16))(v416, v323, v324);
          v330 = sub_1D8B12F20();
          v325 = v331;
          (*(v328 + 8))(v329, v324);
          v326 = v330;
        }

        v332 = sub_1D89AC714(v326, v325, &v478);

        *(v296 + 54) = v332;
        v333 = v471;
        _os_log_impl(&dword_1D8783000, v471, v464, "Extracted an event with title: %s, start date: %s, end date: %s, location: %s, notes: %s, url: %s", v296, 0x3Eu);
        v334 = v463;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v334, -1, -1);
        MEMORY[0x1DA721330](v296, -1, -1);
      }

      else
      {

        v327 = *(v285 + 8);
        v327(v289, v288);
        v327(v287, v288);
      }

      v283 = v460;
      v284 = v442;
    }

    if (qword_1ECA62108 != -1)
    {
      swift_once();
    }

    v335 = qword_1ECAA3680;
    v336 = *algn_1ECAA3688;
    v337 = v444;
    if (!v465)
    {
      goto LABEL_148;
    }

    v338 = HIBYTE(v465) & 0xF;
    if ((v465 & 0x2000000000000000) == 0)
    {
      v338 = v444 & 0xFFFFFFFFFFFFLL;
    }

    if (v338)
    {
      v339 = v444;
    }

    else
    {
LABEL_148:

      v339 = v335;
      v340 = v336;
    }

    v341 = v470;
    v342 = [v474 options];
    if (v342)
    {
      v343 = v342;
      v344 = sub_1D8B15730();

      v345 = sub_1D8B15970();
      if (*(v344 + 16) && (v347 = sub_1D87EF838(v345, v346), (v348 & 1) != 0))
      {
        sub_1D87D3E4C(*(v344 + 56) + 32 * v347, &v478);
      }

      else
      {
        v478 = 0u;
        v479 = 0u;
      }

      if (*(&v479 + 1))
      {
        if (swift_dynamicCast())
        {

          v349 = v460;
          v474 = v477;
          if (v477)
          {
            v350 = sub_1D8B151C0();
            v351 = sub_1D8B161F0();
            if (os_log_type_enabled(v350, v351))
            {
              v352 = swift_slowAlloc();
              *v352 = 0;
              _os_log_impl(&dword_1D8783000, v350, v351, "Extracted event has potential input or output safety concern.", v352, 2u);
              MEMORY[0x1DA721330](v352, -1, -1);
            }
          }

          if (v465)
          {
            v336 = v465;
          }

          else
          {

            v337 = v335;
          }

          v385 = v466;
          v386 = *(v466 + 16);
          v387 = v418;
          v388 = v349;
          v389 = v476;
          v386(v418, v388, v476);
          v390 = v417;
          v386(v417, v447, v389);
          v391 = v457;
          swift_beginAccess();
          sub_1D87A0E38(v391, v420, &qword_1ECA630C0);
          v362 = v419;
          *v419 = v337;
          *(v362 + 8) = v336;
          v392 = v459;
          v386((v362 + v459[5]), v387, v389);
          v386((v362 + v392[6]), v390, v389);
          *(v362 + v392[7]) = v446;
          v393 = (v362 + v392[8]);
          v394 = v468;
          *v393 = v456;
          v393[1] = v394;
          v395 = v458;
          if (v458)
          {
            v396 = v460;
            if (sub_1D8B15A70() <= 240)
            {
              v405 = *(v385 + 8);
              v406 = v476;
              v405(v390, v476);
              v405(v387, v406);
              v405(v447, v406);
              sub_1D87A14E4(v461, &qword_1ECA631A8);
              v405(v396, v406);
              sub_1D87A14E4(v473, &qword_1ECA631A8);
              sub_1D87A14E4(v467, &qword_1ECA631A8);
              v362 = v419;
              v407 = (v419 + v459[9]);
              *v407 = v341;
              v407[1] = v395;
            }

            else
            {

              v397 = sub_1D8B151C0();
              v398 = sub_1D8B16230();
              v399 = os_log_type_enabled(v397, v398);
              v400 = v447;
              if (v399)
              {
                v401 = swift_slowAlloc();
                *v401 = 134217984;
                v402 = sub_1D8B15A70();

                *(v401 + 4) = v402;

                _os_log_impl(&dword_1D8783000, v397, v398, "Notes field left blank due to length %ld", v401, 0xCu);
                MEMORY[0x1DA721330](v401, -1, -1);
              }

              else
              {

                swift_bridgeObjectRelease_n();
              }

              v362 = v419;
              v408 = *(v385 + 8);
              v409 = v476;
              v408(v390, v476);
              v408(v418, v409);
              v408(v400, v409);
              sub_1D87A14E4(v461, &qword_1ECA631A8);
              v408(v396, v409);
              sub_1D87A14E4(v473, &qword_1ECA631A8);
              sub_1D87A14E4(v467, &qword_1ECA631A8);
              v410 = (v362 + v459[9]);
              *v410 = 0;
              v410[1] = 0;
            }
          }

          else
          {
            v403 = *(v385 + 8);
            v403(v390, v389);
            v403(v387, v389);
            v403(v447, v389);
            sub_1D87A14E4(v461, &qword_1ECA631A8);
            v403(v460, v389);
            sub_1D87A14E4(v473, &qword_1ECA631A8);
            sub_1D87A14E4(v467, &qword_1ECA631A8);
            v404 = (v362 + v459[9]);
            *v404 = v341;
            v404[1] = 0;
          }

          v411 = v474 != 0;
          v412 = v459;
          sub_1D881F6FC(v420, v362 + v459[10], &qword_1ECA630C0);
          *(v362 + v412[11]) = v411;
          goto LABEL_175;
        }
      }

      else
      {

        sub_1D87A14E4(&v478, &qword_1ECA650C0);
      }

      v283 = v460;
      v284 = v442;
    }

    else
    {
    }

    v353 = v466;
    v354 = *(v466 + 16);
    v355 = v435;
    v356 = v283;
    v357 = v476;
    v354(v435, v356, v476);
    v358 = v447;
    v354(v284, v447, v357);
    v359 = v457;
    swift_beginAccess();
    sub_1D87A0E38(v359, v436, &qword_1ECA630C0);
    v360 = v425;
    *v425 = v339;
    v360[1] = v340;
    v361 = v357;
    v362 = v360;
    v363 = v355;
    v364 = v459;
    v354(v360 + v459[5], v363, v361);
    v354((v362 + v364[6]), v284, v361);
    *(v362 + v364[7]) = v446;
    v365 = (v362 + v364[8]);
    v366 = v468;
    *v365 = v456;
    v365[1] = v366;
    v367 = v458;
    if (v458)
    {
      v368 = v460;
      v369 = v470;
      if (sub_1D8B15A70() <= 240)
      {
        v378 = *(v353 + 8);
        v378(v442, v361);
        v378(v363, v361);
        v378(v447, v361);
        sub_1D87A14E4(v461, &qword_1ECA631A8);
        v378(v368, v361);
        sub_1D87A14E4(v473, &qword_1ECA631A8);
        sub_1D87A14E4(v467, &qword_1ECA631A8);
        v379 = (v362 + v459[9]);
        *v379 = v369;
        v379[1] = v367;
      }

      else
      {

        v370 = sub_1D8B151C0();
        v371 = sub_1D8B16230();
        v372 = os_log_type_enabled(v370, v371);
        v373 = v442;
        if (v372)
        {
          v374 = swift_slowAlloc();
          *v374 = 134217984;
          v375 = sub_1D8B15A70();

          *(v374 + 4) = v375;
          v362 = v425;

          _os_log_impl(&dword_1D8783000, v370, v371, "Notes field left blank due to length %ld", v374, 0xCu);
          MEMORY[0x1DA721330](v374, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v380 = v461;
        v381 = *(v353 + 8);
        v381(v373, v361);
        v381(v435, v361);
        v381(v447, v361);
        sub_1D87A14E4(v380, &qword_1ECA631A8);
        v381(v368, v361);
        sub_1D87A14E4(v473, &qword_1ECA631A8);
        sub_1D87A14E4(v467, &qword_1ECA631A8);
        v382 = (v362 + v459[9]);
        *v382 = 0;
        v382[1] = 0;
      }
    }

    else
    {
      v376 = *(v353 + 8);
      v376(v284, v361);
      v376(v363, v361);
      v376(v358, v361);
      sub_1D87A14E4(v461, &qword_1ECA631A8);
      v376(v460, v361);
      sub_1D87A14E4(v473, &qword_1ECA631A8);
      sub_1D87A14E4(v467, &qword_1ECA631A8);
      v377 = (v362 + v459[9]);
      *v377 = v470;
      v377[1] = 0;
    }

    v383 = v459;
    sub_1D881F6FC(v436, v362 + v459[10], &qword_1ECA630C0);
    *(v362 + v383[11]) = 0;
LABEL_175:
    v384 = v455;
    sub_1D89A235C(v362, v455, type metadata accessor for EventLookupItem);
    v257 = v384;
    v256 = 0;
LABEL_176:
    v280 = v457;
LABEL_177:
    (*(v450 + 56))(v257, v256, 1, v459);
    return sub_1D87A14E4(v280, &qword_1ECA630C0);
  }

  v197 = sub_1D8B12434(v462, v131, &unk_1F5426898);
  if (*(v197 + 2))
  {
  }

  v203 = v443;
  sub_1D8B12FD0();
  v204 = v203;

  v205 = v472;
  if ((*(v472 + 48))(v204, 1, v183) == 1)
  {

    sub_1D87A14E4(v204, &qword_1ECA630C0);
LABEL_71:
    v201 = v462;
    v458 = v131;
    v202 = v448;
LABEL_74:

    v213 = sub_1D8B151C0();
    v214 = sub_1D8B16230();

    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      *&v478 = v216;
      *v215 = 136315138;
      *(v215 + 4) = sub_1D89AC714(v462, v470, &v478);
      _os_log_impl(&dword_1D8783000, v213, v214, "--- Raw Notes: %s", v215, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v216);
      MEMORY[0x1DA721330](v216, -1, -1);
      MEMORY[0x1DA721330](v215, -1, -1);
    }

    v217 = v458;

    v218 = sub_1D8B151C0();
    v219 = sub_1D8B16230();

    if (os_log_type_enabled(v218, v219))
    {
      v220 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      *&v478 = v221;
      *v220 = 136315138;
      if (v217)
      {

        v222 = v201;
      }

      else
      {
        v222 = v462;
        v217 = v470;
      }

      v223 = sub_1D89AC714(v222, v217, &v478);

      *(v220 + 4) = v223;
      _os_log_impl(&dword_1D8783000, v218, v219, "--- Notes for Display: %s", v220, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v221);
      MEMORY[0x1DA721330](v221, -1, -1);
      MEMORY[0x1DA721330](v220, -1, -1);

      v17 = v466;
    }

    else
    {
    }

    v196 = v472;
    goto LABEL_83;
  }

  (*(v205 + 32))(v16, v204, v183);
  if (*(v197 + 2) != 1)
  {

    (*(v205 + 8))(v16, v183);
    goto LABEL_71;
  }

  sub_1D87A14E4(v56, &qword_1ECA630C0);
  (*(v205 + 16))(v56, v16, v183);
  v423(v56, 0, 1, v183);
  result = [v474 notesBullets];
  if (result)
  {
    v207 = result;

    v208 = sub_1D8B15CF0();

    MEMORY[0x1EEE9AC00](v209);
    *(&v413 - 2) = v16;
    v210 = sub_1D87C6D88(sub_1D89A2E30, (&v413 - 4), v208);
    v202 = v448;
    if (*(v210 + 16))
    {
      v211 = v210;

      *&v478 = v211;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60);
      sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60);
      v201 = sub_1D8B15810();
      v458 = v212;
    }

    else
    {

      v201 = v462;
      v458 = v131;
    }

    (*(v472 + 8))(v16, v183);
    goto LABEL_74;
  }

  __break(1u);
  return result;
}