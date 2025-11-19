char *ServiceSession.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v3 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v3, qword_1EE0F2380);

  v4 = sub_1D9F2AE6C();
  v5 = sub_1D9F2B42C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136315394;
    v8 = *v1;
    v9 = sub_1D9F2BBBC();
    v11 = sub_1D9E71CA4(v9, v10, v24);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1D9E71CA4(0x74696E696564, 0xE600000000000000, v24);
    _os_log_impl(&dword_1D9E39000, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v7, -1, -1);
    MEMORY[0x1DA744270](v6, -1, -1);
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 2;
  sub_1D9EBB3A0(v24);
  v12 = qword_1EE0FF698;
  v13 = sub_1D9F2AD7C();
  (*(*(v13 - 8) + 8))(&v1[v12], v13);
  v14 = *(*v1 + 112);
  v17 = v2 + 80;
  v16 = *(v2 + 80);
  v15 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&v1[v14], AssociatedTypeWitness);

  v19 = *(*v1 + 128);
  v20 = type metadata accessor for ServiceSession.State();
  (*(*(v20 - 8) + 8))(&v1[v19], v20);
  v21 = *&v1[*(*v1 + 136)];

  v22 = *&v1[*(*v1 + 144)];

  return v1;
}

uint64_t sub_1D9EBB3A0(uint64_t a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v116 = *(AssociatedTypeWitness - 8);
  v7 = *(v116 + 64);
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v114 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v104 - v10;
  v117 = v11;
  v111 = sub_1D9F2B59C();
  v118 = *(v111 - 8);
  v12 = *(v118 + 64);
  v13 = MEMORY[0x1EEE9AC00](v111);
  v104 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v104 - v15;
  v106 = v5;
  v107 = v4;
  v16 = type metadata accessor for ServiceSession.State();
  v120 = *(v16 - 8);
  v17 = *(v120 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v104 - v21;
  v110 = sub_1D9F2B02C();
  v109 = *(v110 - 8);
  v22 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v108 = (&v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a1;
  v25 = *(a1 + 8);
  v26 = *(a1 + 16);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v27 = sub_1D9F2AE8C();
  v28 = __swift_project_value_buffer(v27, qword_1EE0F2380);

  sub_1D9E84B2C(v24, v25, v26);
  v113 = v28;
  v29 = sub_1D9F2AE6C();
  v30 = sub_1D9F2B42C();

  sub_1D9E84B4C(v24, v25, v26);
  v31 = os_log_type_enabled(v29, v30);
  v115 = v16;
  v112 = v20;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v125[0] = v33;
    *v32 = 136315650;
    v34 = *v2;
    v35 = sub_1D9F2BBBC();
    v37 = sub_1D9E71CA4(v35, v36, v125);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_1D9E71CA4(0x286C65636E61635FLL, 0xED0000293A726F66, v125);
    *(v32 + 22) = 2080;
    sub_1D9E84B2C(v24, v25, v26);
    v38 = sub_1D9EB922C(v24, v25, v26);
    v40 = sub_1D9E71CA4(v38, v39, v125);

    *(v32 + 24) = v40;
    _os_log_impl(&dword_1D9E39000, v29, v30, "%s.%s reason = %s", v32, 0x20u);
    swift_arrayDestroy();
    v41 = v33;
    v16 = v115;
    MEMORY[0x1DA744270](v41, -1, -1);
    MEMORY[0x1DA744270](v32, -1, -1);
  }

  v42 = v118;
  v43 = v121;
  if (v26 != 2 || v25 | v24)
  {
    v44 = *(v2 + *(*v2 + 120));
    v45 = v108;
    *v108 = v44;
    v46 = v16;
    v47 = v42;
    v48 = v109;
    v49 = v110;
    (*(v109 + 104))(v45, *MEMORY[0x1E69E8020], v110);
    v50 = v44;
    LOBYTE(v44) = sub_1D9F2B04C();
    v51 = v45;
    v43 = v121;
    result = (*(v48 + 8))(v51, v49);
    v42 = v47;
    v16 = v46;
    if ((v44 & 1) == 0)
    {
      __break(1u);
      return result;
    }
  }

  v53 = *(*v2 + 128);
  swift_beginAccess();
  (*(v120 + 16))(v119, v2 + v53, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v110 = v53;
    v63 = v111;
    (*(v42 + 32))(v43, v119, v111);

    v64 = sub_1D9F2AE6C();
    v65 = sub_1D9F2B41C();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v124[0] = v67;
      *v66 = 136315138;
      v68 = ServiceSession.description.getter();
      v70 = v69;

      v71 = sub_1D9E71CA4(v68, v70, v124);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_1D9E39000, v64, v65, "%s cancelled without being activated.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v67);
      v72 = v67;
      v63 = v111;
      MEMORY[0x1DA744270](v72, -1, -1);
      v73 = v66;
      v16 = v115;
      MEMORY[0x1DA744270](v73, -1, -1);
    }

    else
    {
    }

    v88 = v112;
    v89 = v116;
    v90 = v118;
    v91 = v104;
    (*(v118 + 16))(v104, v121, v63);
    if ((*(v89 + 48))(v91, 1, v117) == 1)
    {
      v92 = *(v90 + 8);
      v92(v121, v63);
      v92(v91, v63);
    }

    else
    {
      v93 = v117;
      (*(v89 + 32))(v105, v91, v117);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v95 = v105;
      (*(AssociatedConformanceWitness + 32))(v93, AssociatedConformanceWitness);
      (*(v116 + 8))(v95, v93);
      (*(v118 + 8))(v121, v111);
    }

    v96 = v110;
    *v88 = v24;
    v88[1] = v25;
    *(v88 + 16) = v26;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1D9E84B2C(v24, v25, v26);
    (*(v120 + 40))(v2 + v96, v88, v16);
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v110 = v53;
    (*(v116 + 32))(v114, v119, v117);

    v55 = sub_1D9F2AE6C();
    v56 = sub_1D9F2B41C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v124[0] = v58;
      *v57 = 136315138;
      v59 = ServiceSession.description.getter();
      v61 = v60;

      v62 = sub_1D9E71CA4(v59, v61, v124);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_1D9E39000, v55, v56, "%s cancelling...", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1DA744270](v58, -1, -1);
      MEMORY[0x1DA744270](v57, -1, -1);
    }

    else
    {
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v74 = v117;
    v75 = swift_getAssociatedConformanceWitness();
    (*(v75 + 32))(v74, v75);

    v76 = sub_1D9F2AE6C();
    v77 = sub_1D9F2B41C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v124[0] = v79;
      *v78 = 136315138;
      v80 = ServiceSession.description.getter();
      v82 = v81;

      v83 = sub_1D9E71CA4(v80, v82, v124);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_1D9E39000, v76, v77, "%s cancelled.", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1DA744270](v79, -1, -1);
      MEMORY[0x1DA744270](v78, -1, -1);
    }

    else
    {
    }

    (*(v116 + 8))(v114, v117);
    v84 = v115;
    v85 = v120;
    v86 = v112;
    *v112 = v24;
    v86[1] = v25;
    *(v86 + 16) = v26;
    swift_storeEnumTagMultiPayload();
    v87 = v110;
    swift_beginAccess();
    sub_1D9E84B2C(v24, v25, v26);
    (*(v85 + 40))(v2 + v87, v86, v84);
LABEL_25:
    swift_endAccess();
    goto LABEL_26;
  }

  (*(v120 + 8))(v119, v16);
LABEL_26:
  v97 = *(*v2 + 136);
  swift_beginAccess();
  if (*(*(v2 + v97) + 16))
  {

    *(v2 + v97) = MEMORY[0x1E69E7CC8];
  }

  swift_endAccess();
  v98 = *(*v2 + 144);
  swift_beginAccess();
  v99 = *(v2 + v98);
  *(v2 + v98) = MEMORY[0x1E69E7CC0];
  v100 = *(v99 + 16);
  if (v100)
  {
    v101 = (v99 + 40);
    do
    {
      v103 = *(v101 - 1);
      v102 = *v101;
      v122[0] = v24;
      v122[1] = v25;
      v123 = v26;

      v103(v122);

      v101 += 2;
      --v100;
    }

    while (v100);
  }
}

uint64_t ServiceSession.__deallocating_deinit()
{
  ServiceSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9EBC148()
{
  v1 = v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v197 = *(AssociatedTypeWitness - 8);
  v5 = v197[8];
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v188 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v187 = &v179 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v196 = &v179 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v184 = &v179 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v183 = &v179 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v189 = &v179 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v194 = &v179 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v186 = &v179 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v192 = &v179 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v182 = &v179 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v185 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v193 = &v179 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v191 = &v179 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v180 = &v179 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v190 = &v179 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v203 = &v179 - v38;
  v39 = sub_1D9F2B59C();
  v201 = *(v39 - 8);
  v40 = *(v201 + 64);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v195 = &v179 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v179 - v43;
  v198 = v3;
  v199 = v2;
  v45 = type metadata accessor for ServiceSession.State();
  v207 = *(v45 - 8);
  v208 = v45;
  v46 = *(v207 + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v181 = &v179 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v205 = &v179 - v49;
  v206 = sub_1D9F2B02C();
  v50 = *(v206 - 1);
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v53 = (&v179 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v54 = sub_1D9F2AE8C();
  v55 = __swift_project_value_buffer(v54, qword_1EE0F2380);

  v209 = v55;
  v56 = sub_1D9F2AE6C();
  v57 = sub_1D9F2B42C();

  v58 = os_log_type_enabled(v56, v57);
  v200 = AssociatedTypeWitness;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v204 = v44;
    v60 = v59;
    v61 = swift_slowAlloc();
    v202 = v39;
    v210 = v1;
    v62 = v61;
    *&v213 = v61;
    *v60 = 136315394;
    v63 = *v210;
    v64 = sub_1D9F2BBBC();
    v66 = v26;
    v67 = v25;
    v68 = sub_1D9E71CA4(v64, v65, &v213);

    *(v60 + 4) = v68;
    v25 = v67;
    v26 = v66;
    *(v60 + 12) = 2080;
    *(v60 + 14) = sub_1D9E71CA4(0x746176697463615FLL, 0xEB00000000292865, &v213);
    _os_log_impl(&dword_1D9E39000, v56, v57, "%s.%s", v60, 0x16u);
    swift_arrayDestroy();
    v69 = v62;
    v1 = v210;
    v39 = v202;
    MEMORY[0x1DA744270](v69, -1, -1);
    v44 = v204;
    MEMORY[0x1DA744270](v60, -1, -1);
  }

  v70 = *(v1 + *(*v1 + 120));
  *v53 = v70;
  v71 = v206;
  (*(v50 + 104))(v53, *MEMORY[0x1E69E8020], v206);
  v72 = v70;
  LOBYTE(v70) = sub_1D9F2B04C();
  (*(v50 + 8))(v53, v71);
  if (v70)
  {
    v73 = *(*v1 + 128);
    swift_beginAccess();
    v75 = v207;
    v74 = v208;
    v76 = v205;
    (*(v207 + 16))(v205, v1 + v73, v208);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v26 + 8))(v76, v25);
      }

      else
      {
        (*(v75 + 8))(v76, v74);

        v83 = sub_1D9F2AE6C();
        v84 = sub_1D9F2B43C();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *&v213 = v86;
          *v85 = 136315138;

          v87 = ServiceSession.description.getter();
          v89 = v88;

          v90 = sub_1D9E71CA4(v87, v89, &v213);

          *(v85 + 4) = v90;
          _os_log_impl(&dword_1D9E39000, v83, v84, "%s failed to activate because it is already cancelled.", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v86);
          MEMORY[0x1DA744270](v86, -1, -1);
          MEMORY[0x1DA744270](v85, -1, -1);
        }

        else
        {
        }
      }
    }

    else
    {
      v206 = v72;
      v78 = v201;
      (*(v201 + 32))(v44, v76, v39);
      v79 = *(v78 + 16);
      v80 = v195;
      v204 = v44;
      v79(v195, v44, v39);
      v81 = (*(v26 + 48))(v80, 1, v25);
      v210 = v1;
      if (v81 == 1)
      {
        v205 = *(v78 + 8);
        (v205)(v80, v39);
        v82 = v191;
        (*(v199 + 64))(v1 + *(*v1 + 112), v192);
        v195 = 0;
        v202 = v39;
        v93 = *(v26 + 32);
        v94 = v180;
        v93(v180, v82, v25);
        v95 = v203;
        v93(v203, v94, v25);
      }

      else
      {
        v202 = v39;
        v91 = *(v26 + 32);
        v92 = v190;
        v91(v190, v80, v25);
        v95 = v203;
        v91(v203, v92, v25);
        v195 = 0;
      }

      v96 = v193;
      v97 = v95;
      v98 = *(v26 + 16);
      v98(v193, v97, v25);

      v99 = sub_1D9F2AE6C();
      v100 = sub_1D9F2B41C();
      v101 = os_log_type_enabled(v99, v100);
      v179 = v26;
      v192 = (v26 + 16);
      v191 = v98;
      if (v101)
      {
        v102 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        *&v213 = v190;
        *v102 = 136315394;

        v103 = ServiceSession.description.getter();
        v105 = v104;

        v106 = sub_1D9E71CA4(v103, v105, &v213);

        *(v102 + 4) = v106;
        *(v102 + 12) = 2080;
        v98(v185, v96, v25);
        v107 = sub_1D9F2B13C();
        v109 = v108;
        v205 = *(v179 + 8);
        (v205)(v96, v25);
        v110 = sub_1D9E71CA4(v107, v109, &v213);

        *(v102 + 14) = v110;
        _os_log_impl(&dword_1D9E39000, v99, v100, "%s connection = %s", v102, 0x16u);
        v111 = v190;
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v111, -1, -1);
        MEMORY[0x1DA744270](v102, -1, -1);
      }

      else
      {

        v205 = *(v26 + 8);
        (v205)(v96, v25);
      }

      v112 = sub_1D9F2AE6C();
      v113 = sub_1D9F2B41C();
      v114 = v25;
      if (os_log_type_enabled(v112, v113))
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *&v213 = v116;
        *v115 = 136315138;

        v117 = ServiceSession.description.getter();
        v119 = v118;

        v120 = sub_1D9E71CA4(v117, v119, &v213);

        *(v115 + 4) = v120;
        _os_log_impl(&dword_1D9E39000, v112, v113, "%s activating...", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v116);
        MEMORY[0x1DA744270](v116, -1, -1);
        MEMORY[0x1DA744270](v115, -1, -1);
      }

      else
      {
      }

      v121 = v198;
      v122 = swift_allocObject();
      swift_weakInit();
      v123 = swift_allocObject();
      v124 = v199;
      v123[2] = v121;
      v123[3] = v124;
      v123[4] = v122;
      v125 = swift_allocObject();
      swift_weakInit();
      v126 = swift_allocObject();
      v126[2] = v121;
      v126[3] = v124;
      v126[4] = v125;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v127 = v200;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v129 = v123;
      v130 = v126;
      v131 = v127;
      v132 = v206;
      v199 = AssociatedConformanceWitness;
      sub_1D9E77E58(sub_1D9EC6D20, v129, sub_1D9EC6D2C, v130, v206, &v213);
      v211[0] = v213;
      v211[1] = v214;
      v212 = v215;
      v133 = v114;
      v134 = swift_getAssociatedConformanceWitness();
      v135 = *(v134 + 24);
      v136 = v132;
      v137 = v203;
      v138 = v195;
      v139 = v194;
      v206 = v134;
      v135(v211, v194, v133, v134);
      if (v138)
      {
        v208 = v133;

        v140 = v197;
        v141 = v197[4];
        v142 = v186;
        v141(v186, v139, v131);
        v143 = v196;
        v198 = v141;
        v141(v196, v142, v131);
        v144 = v187;
        v207 = v140[2];
        (v207)(v187, v143, v131);

        v145 = sub_1D9F2AE6C();
        v146 = sub_1D9F2B43C();
        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v195 = swift_slowAlloc();
          *&v213 = v195;
          *v147 = 136315394;

          v148 = ServiceSession.description.getter();
          v150 = v149;

          v151 = sub_1D9E71CA4(v148, v150, &v213);

          *(v147 + 4) = v151;
          *(v147 + 12) = 2080;
          v152 = sub_1D9F2BAAC();
          v154 = v153;
          v209 = v197[1];
          v209(v144, v200);
          v155 = sub_1D9E71CA4(v152, v154, &v213);

          *(v147 + 14) = v155;
          _os_log_impl(&dword_1D9E39000, v145, v146, "%s failed to activate due to error %s.", v147, 0x16u);
          v156 = v195;
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v156, -1, -1);
          v157 = v147;
          v131 = v200;
          MEMORY[0x1DA744270](v157, -1, -1);
        }

        else
        {

          v209 = v140[1];
          v209(v144, v131);
        }

        v158 = v204;
        v159 = v205;
        v172 = v188;
        (v207)(v188, v196, v131);
        v173 = sub_1D9F2BA0C();
        if (v173)
        {
          v174 = v173;
          v175 = v209;
          v209(v172, v131);
        }

        else
        {
          v174 = swift_allocError();
          v198(v176, v172, v131);
          v175 = v209;
        }

        v213 = v174;
        LOBYTE(v214) = 0;
        sub_1D9EBB3A0(&v213);
        sub_1D9E84B4C(v213, *(&v213 + 1), v214);
        v177 = v203;
        v178 = v208;
        v206[4](v208);
        v175(v196, v131);
        (v159)(v177, v178);
        (*(v201 + 8))(v158, v202);
      }

      else
      {

        v160 = v181;
        (v191)(v181, v137, v133);
        v161 = v208;
        swift_storeEnumTagMultiPayload();
        v162 = v210;
        swift_beginAccess();
        (*(v207 + 40))(&v162[v73], v160, v161);
        swift_endAccess();

        v163 = sub_1D9F2AE6C();
        v164 = sub_1D9F2B41C();
        v165 = v137;
        if (os_log_type_enabled(v163, v164))
        {
          v166 = swift_slowAlloc();
          v167 = swift_slowAlloc();
          *&v213 = v167;
          *v166 = 136315138;

          v168 = ServiceSession.description.getter();
          v170 = v169;

          v171 = sub_1D9E71CA4(v168, v170, &v213);

          *(v166 + 4) = v171;
          _os_log_impl(&dword_1D9E39000, v163, v164, "%s activated.", v166, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v167);
          MEMORY[0x1DA744270](v167, -1, -1);
          MEMORY[0x1DA744270](v166, -1, -1);
        }

        else
        {
        }

        (v205)(v165, v133);
        (*(v201 + 8))(v204, v202);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall ServiceSession.cancel(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = sub_1D9F2AF8C();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9F2AFFC();
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v11 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v11, qword_1EE0F2380);

  v12 = sub_1D9F2AE6C();
  v13 = sub_1D9F2B42C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v29 = v8;
    v15 = v14;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v15 = 136315650;
    v16 = *v2;
    v17 = sub_1D9F2BBBC();
    v19 = sub_1D9E71CA4(v17, v18, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_1D9E71CA4(0x66286C65636E6163, 0xEC000000293A726FLL, aBlock);
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_1D9E71CA4(countAndFlagsBits, object, aBlock);
    _os_log_impl(&dword_1D9E39000, v12, v13, "%s.%s reason = %s", v15, 0x20u);
    v20 = v28;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v20, -1, -1);
    v21 = v15;
    v8 = v29;
    MEMORY[0x1DA744270](v21, -1, -1);
  }

  v22 = *(v2 + *(*v2 + 120));
  v23 = swift_allocObject();
  v23[2] = v2;
  v23[3] = countAndFlagsBits;
  v23[4] = object;
  aBlock[4] = sub_1D9EC6200;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_18;
  v24 = _Block_copy(aBlock);

  v25 = v30;
  sub_1D9F2AFAC();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v26 = v33;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v25, v26, v24);
  _Block_release(v24);
  (*(v31 + 8))(v26, v5);
  (*(v32 + 8))(v25, v8);
}

void sub_1D9EBE028(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v7 = a3;
  v8 = 1;

  sub_1D9EBB3A0(&v6);
  v3 = v6;
  v4 = v7;
  v5 = v8;

  sub_1D9E84B4C(v3, v4, v5);
}

void sub_1D9EBE084(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a2;
  v40 = a3;
  v5 = *v3;
  v6 = *(*v3 + 80);
  v7 = *(*v3 + 88);
  v8 = type metadata accessor for ServiceSession.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = sub_1D9F2B02C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v3 + *(v5 + 120));
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  v20 = sub_1D9F2B04C();
  v22 = *(v14 + 8);
  v21 = (v14 + 8);
  v22(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    a1 = sub_1D9F0C798(0, a1[2] + 1, 1, a1);
    *&v12[v3] = a1;
    goto LABEL_8;
  }

  if (a1)
  {
    v23 = a1;
  }

  else
  {
    v23 = v19;
  }

  v24 = v39;
  v25 = v40;
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v24;
  v26[4] = v25;
  v27 = *(*v3 + 128);
  swift_beginAccess();
  (*(v9 + 16))(v12, v3 + v27, v8);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v28 = *v12;
    v29 = *(v12 + 1);
    v30 = v12[16];
    v41[0] = v28;
    v41[1] = v29;
    v42 = v30;
    v31 = a1;

    v32 = v23;
    sub_1D9EC3DFC(v41, v32, v24, v25);

    sub_1D9E84B4C(v28, v29, v30);
    return;
  }

  v33 = *(v9 + 8);
  v34 = a1;

  v21 = v23;
  v33(v12, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D9EC6CCC;
  *(v9 + 24) = v26;
  v12 = *(*v3 + 144);
  swift_beginAccess();
  a1 = *&v12[v3];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v12[v3] = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v37 = a1[2];
  v36 = a1[3];
  if (v37 >= v36 >> 1)
  {
    a1 = sub_1D9F0C798((v36 > 1), v37 + 1, 1, a1);
  }

  a1[2] = v37 + 1;
  v38 = &a1[2 * v37];
  v38[4] = sub_1D9EB097C;
  v38[5] = v9;
  *&v12[v3] = a1;
  swift_endAccess();
}

uint64_t ServiceSession.sendMessage<A>(_:replyQueue:replyHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a2;
  v60 = a4;
  v11 = *v6;
  v57 = v11;
  v58 = a3;
  v12 = sub_1D9F2AF8C();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v52[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_1D9F2AFFC();
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = *(v61 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v52[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *(a5 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v7 + *(v11 + 152)) == 1)
  {
    if (qword_1EE0F2378 != -1)
    {
      swift_once();
    }

    v23 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v23, qword_1EE0F2380);

    v24 = sub_1D9F2AE6C();
    v25 = sub_1D9F2B42C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v56 = a1;
      v27 = v26;
      v55 = swift_slowAlloc();
      aBlock[0] = v55;
      *v27 = 136315650;
      v28 = *v7;
      v29 = sub_1D9F2BBBC();
      v54 = v24;
      v31 = sub_1D9E71CA4(v29, v30, aBlock);
      v53 = v25;
      v32 = v31;

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1D9E71CA4(0xD000000000000027, 0x80000001D9F49550, aBlock);
      *(v27 + 22) = 2080;
      v33 = (*(a6 + 40))(a5, a6);
      v35 = sub_1D9E71CA4(v33, v34, aBlock);

      *(v27 + 24) = v35;
      v36 = v54;
      _os_log_impl(&dword_1D9E39000, v54, v53, "%s.%s messageType = %s", v27, 0x20u);
      v37 = v55;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v37, -1, -1);
      v38 = v27;
      a1 = v56;
      MEMORY[0x1DA744270](v38, -1, -1);
    }

    else
    {
    }
  }

  v56 = *(v7 + *(*v7 + 120));
  (*(v20 + 16))(&v52[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a5);
  v39 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v40 = (v21 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v57;
  *(v41 + 2) = *(v57 + 80);
  *(v41 + 3) = a5;
  *(v41 + 4) = *(v42 + 88);
  *(v41 + 5) = a6;
  *(v41 + 6) = v7;
  (*(v20 + 32))(&v41[v39], v22, a5);
  v43 = v58;
  v44 = v59;
  *&v41[v40] = v59;
  v45 = &v41[(v40 + 15) & 0xFFFFFFFFFFFFFFF8];
  v46 = v60;
  *v45 = v43;
  *(v45 + 1) = v46;
  aBlock[4] = sub_1D9EC620C;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_24;
  v47 = _Block_copy(aBlock);
  v48 = v44;

  sub_1D9F2AFAC();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  v49 = v63;
  v50 = v65;
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v19, v49, v47);
  _Block_release(v47);
  (*(v64 + 8))(v49, v50);
  (*(v61 + 8))(v19, v62);
}

uint64_t sub_1D9EBEA8C(uint64_t a1, NSObject *a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v232 = a4;
  v233 = a3;
  v215 = a2;
  v235 = a1;
  v213 = *v7;
  v10 = *(v213 + 88);
  v11 = *(v213 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v208 = *(AssociatedTypeWitness - 8);
  v12 = *(v208 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v209 = &v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v214 = &v203 - v15;
  v16 = type metadata accessor for ServiceEnvelope();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v222 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v223 = *(v19 - 8);
  v20 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v224 = &v203 - v21;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v227 = sub_1D9F2BB5C();
  v226 = *(v227 - 8);
  v22 = *(v226 + 64);
  v23 = MEMORY[0x1EEE9AC00](v227);
  v225 = (&v203 - v24);
  v234 = *(a5 - 8);
  v25 = *(v234 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v218 = &v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  AssociatedConformanceWitness = &v203 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v207 = &v203 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v211 = &v203 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v219 = &v203 - v33;
  v216 = v11;
  v217 = v10;
  v34 = type metadata accessor for ServiceSession.State();
  v229 = *(v34 - 8);
  v230 = v34;
  v35 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v231 = (&v203 - v36);
  v37 = sub_1D9F2B02C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v41 = (&v203 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = *(a6 + 40);
  v236 = a5;
  v221 = a6;
  v43 = v42(a5, a6);
  v45 = v44;
  v212 = *(v7 + *(*v7 + 152));
  v228 = v19;
  if (v212 != 1)
  {

    goto LABEL_7;
  }

  v46 = v43;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v47 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v47, qword_1EE0F2380);

    v48 = sub_1D9F2AE6C();
    v49 = sub_1D9F2B42C();

    v206 = v49;
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v204 = v46;
      v51 = v50;
      v205 = swift_slowAlloc();
      v238 = v205;
      *v51 = 136315650;
      v52 = *v7;
      v53 = sub_1D9F2BBBC();
      v55 = sub_1D9E71CA4(v53, v54, &v238);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_1D9E71CA4(0xD00000000000002DLL, 0x80000001D9F49650, &v238);
      *(v51 + 22) = 2080;
      v56 = sub_1D9E71CA4(v204, v45, &v238);

      *(v51 + 24) = v56;
      v19 = v228;
      v57 = v48;
      _os_log_impl(&dword_1D9E39000, v48, v206, "%s.%s messageType = %s", v51, 0x20u);
      v58 = v205;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v58, -1, -1);
      MEMORY[0x1DA744270](v51, -1, -1);
    }

    else
    {
    }

LABEL_7:
    v46 = v231;
    v59 = *(v7 + *(*v7 + 120));
    *v41 = v59;
    (*(v38 + 104))(v41, *MEMORY[0x1E69E8020], v37);
    v45 = v59;
    LOBYTE(v59) = sub_1D9F2B04C();
    v60 = *(v38 + 8);
    v38 += 8;
    v60(v41, v37);
    if (v59)
    {
      break;
    }

    __break(1u);
LABEL_44:
    swift_once();
  }

  v61 = *(*v7 + 128);
  swift_beginAccess();
  (*(v229 + 16))(v46, v7 + v61, v230);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v231 = v45;
      (*(v223 + 32))(v224, v46, v19);
      v63 = v235;
      v64 = v236;
      v65 = v221;
      sub_1D9E3F498(v236, v221, v222);
      v229 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      v119 = v65;
      v120 = swift_allocObject();
      swift_weakInit();
      v121 = v234;
      v122 = v211;
      v123 = v232;
      v124 = *(v234 + 16);
      AssociatedConformanceWitness = (v234 + 16);
      v219 = v124;
      (v124)(v211, v63, v64);
      v125 = (*(v121 + 80) + 80) & ~*(v121 + 80);
      v126 = (v25 + v125 + 7) & 0xFFFFFFFFFFFFFFF8;
      v127 = swift_allocObject();
      v128 = v236;
      *(v127 + 2) = v216;
      *(v127 + 3) = v128;
      *(v127 + 4) = v217;
      *(v127 + 5) = v119;
      v129 = v231;
      *(v127 + 6) = v231;
      *(v127 + 7) = v120;
      *(v127 + 8) = v233;
      *(v127 + 9) = v123;
      v130 = v122;
      v131 = v236;
      (*(v121 + 32))(&v127[v125], v130, v236);
      *&v127[v126] = Current;
      v230 = v127;
      *&v127[(v126 + 15) & 0xFFFFFFFFFFFFFFF8] = v213;
      if (v212)
      {
        v132 = qword_1EE0F2378;
        v133 = v129;

        if (v132 != -1)
        {
          swift_once();
        }

        v134 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v134, qword_1EE0F2380);
        v135 = v207;
        (v219)(v207, v235, v131);

        v136 = sub_1D9F2AE6C();
        v137 = sub_1D9F2B42C();
        if (os_log_type_enabled(v136, v137))
        {
          v138 = v135;
          v139 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          v237 = v140;
          *v139 = 136315394;
          v141 = ServiceSession.description.getter();
          v143 = v142;

          v144 = sub_1D9E71CA4(v141, v143, &v237);

          *(v139 + 4) = v144;
          *(v139 + 12) = 2080;
          swift_getDynamicType();
          v145 = sub_1D9F2BBBC();
          v147 = v146;
          (*(v234 + 8))(v138, v131);
          v148 = sub_1D9E71CA4(v145, v147, &v237);

          *(v139 + 14) = v148;
          _os_log_impl(&dword_1D9E39000, v136, v137, "%s sending message %s...", v139, 0x16u);
          swift_arrayDestroy();
          v129 = v231;
          MEMORY[0x1DA744270](v140, -1, -1);
          MEMORY[0x1DA744270](v139, -1, -1);
        }

        else
        {

          (*(v234 + 8))(v135, v131);
        }
      }

      else
      {
        v149 = v129;
      }

      v150 = v215;
      v151 = v230;
      v152 = v217;
      v231 = v215;
      if (!v215)
      {
        v231 = v129;
      }

      v153 = swift_allocObject();
      v153[2] = v216;
      v153[3] = v131;
      v154 = v221;
      v153[4] = v152;
      v153[5] = v154;
      v153[6] = sub_1D9EC6B44;
      v153[7] = v151;
      v155 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v221 = v155;
      v156 = v228;
      v157 = swift_getAssociatedConformanceWitness();
      v158 = *(v157 + 48);
      v159 = v150;

      v160 = v222;
      v161 = v224;
      v162 = v229;
      v163 = v214;
      v158(v222, v231, sub_1D9EC6BE8, v153, v214, v156, v157);
      if (v162)
      {

        v164 = v208;
        v165 = *(v208 + 32);
        v166 = v209;
        v167 = AssociatedTypeWitness;
        v165(v209, v163, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        v168 = sub_1D9F2BA0C();
        if (v168)
        {
          v169 = v168;

          (*(v164 + 8))(v166, v167);
        }

        else
        {
          v169 = swift_allocError();
          v165(v170, v166, v167);
        }

        v171 = v235;
        v172 = v236;
        v173 = v224;
        v174 = v218;
        sub_1D9E72374(v222);
        v175 = v234;
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v176 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v176, qword_1EE0F2380);
        (*(v175 + 16))(v174, v171, v172);

        v177 = v169;
        v178 = sub_1D9F2AE6C();
        v179 = sub_1D9F2B43C();

        if (os_log_type_enabled(v178, v179))
        {
          v180 = v169;
          v181 = v174;
          v182 = v175;
          v183 = swift_slowAlloc();
          v184 = v172;
          v236 = swift_slowAlloc();
          v237 = v236;
          *v183 = 136315650;
          v185 = ServiceSession.description.getter();
          v187 = v186;

          v188 = sub_1D9E71CA4(v185, v187, &v237);

          *(v183 + 4) = v188;
          *(v183 + 12) = 2080;
          swift_getDynamicType();
          v189 = sub_1D9F2BBBC();
          v191 = v190;
          v192 = v181;
          v169 = v180;
          v193 = v184;
          v173 = v224;
          (*(v182 + 8))(v192, v193);
          v194 = sub_1D9E71CA4(v189, v191, &v237);

          *(v183 + 14) = v194;
          *(v183 + 22) = 2080;
          swift_getErrorValue();
          v195 = sub_1D9F2BAAC();
          v197 = sub_1D9E71CA4(v195, v196, &v237);

          *(v183 + 24) = v197;
          _os_log_impl(&dword_1D9E39000, v178, v179, "%s failed to send message %s due to error %s.", v183, 0x20u);
          v198 = v236;
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v198, -1, -1);
          MEMORY[0x1DA744270](v183, -1, -1);
        }

        else
        {

          (*(v175 + 8))(v174, v172);
        }

        v199 = v227;
        v200 = v226;
        v201 = v225;
        *v225 = v169;
        swift_storeEnumTagMultiPayload();
        v202 = v169;
        v233(v201);

        (*(v200 + 8))(v201, v199);
        return (*(v223 + 8))(v173, v228);
      }

      else
      {

        sub_1D9E72374(v160);
        return (*(v223 + 8))(v161, v156);
      }
    }

    else
    {
      isa = v46->isa;
      v84 = v46[1].isa;
      v85 = v46[2].isa;
      v86 = v236;
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v87 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v87, qword_1EE0F2380);
      v88 = v234;
      v89 = AssociatedConformanceWitness;
      (*(v234 + 16))(AssociatedConformanceWitness, v235, v86);

      sub_1D9E84B2C(isa, v84, v85);
      v90 = sub_1D9F2AE6C();
      v91 = sub_1D9F2B43C();
      sub_1D9E84B4C(isa, v84, v85);
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v237 = v235;
        *v92 = 136315650;
        v231 = v90;
        v93 = ServiceSession.description.getter();
        LODWORD(v230) = v91;
        v94 = v86;
        v96 = v95;

        v97 = sub_1D9E71CA4(v93, v96, &v237);

        *(v92 + 4) = v97;
        *(v92 + 12) = 2080;
        swift_getDynamicType();
        v98 = sub_1D9F2BBBC();
        v100 = v99;
        (*(v88 + 8))(v89, v94);
        v101 = sub_1D9E71CA4(v98, v100, &v237);

        *(v92 + 14) = v101;
        *(v92 + 22) = 2080;
        sub_1D9E84B2C(isa, v84, v85);
        v102 = sub_1D9EB922C(isa, v84, v85);
        v104 = sub_1D9E71CA4(v102, v103, &v237);

        *(v92 + 24) = v104;
        v105 = v231;
        _os_log_impl(&dword_1D9E39000, v231, v230, "%s failed to send message %s because service session is cancelled for reason %s.", v92, 0x20u);
        v106 = v235;
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v106, -1, -1);
        MEMORY[0x1DA744270](v92, -1, -1);
      }

      else
      {

        (*(v88 + 8))(v89, v86);
      }

      sub_1D9E3F7D8();
      v114 = swift_allocError();
      *v115 = isa;
      *(v115 + 8) = v84;
      *(v115 + 16) = v85;
      v116 = v225;
      *v225 = v114;
      v117 = v227;
      swift_storeEnumTagMultiPayload();
      sub_1D9E84B2C(isa, v84, v85);
      v233(v116);
      sub_1D9E84B4C(isa, v84, v85);
      return (*(v226 + 8))(v116, v117);
    }
  }

  else
  {
    v66 = v235;
    if (qword_1EE0F2378 != -1)
    {
      swift_once();
    }

    v67 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v67, qword_1EE0F2380);
    v68 = v234;
    v69 = v219;
    v70 = v236;
    (*(v234 + 16))(v219, v66, v236);

    v71 = sub_1D9F2AE6C();
    v72 = sub_1D9F2B43C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v237 = v235;
      *v73 = 136315394;
      v74 = ServiceSession.description.getter();
      v76 = v75;

      v77 = sub_1D9E71CA4(v74, v76, &v237);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      swift_getDynamicType();
      v78 = sub_1D9F2BBBC();
      v80 = v79;
      (*(v68 + 8))(v69, v70);
      v81 = sub_1D9E71CA4(v78, v80, &v237);

      *(v73 + 14) = v81;
      _os_log_impl(&dword_1D9E39000, v71, v72, "%s failed to send message %s because service session is not activated.", v73, 0x16u);
      v82 = v235;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v82, -1, -1);
      MEMORY[0x1DA744270](v73, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v69, v70);
    }

    v107 = v227;
    v108 = v226;
    v109 = v225;
    sub_1D9E3F7D8();
    v110 = swift_allocError();
    *v111 = 0;
    *(v111 + 8) = 0;
    *(v111 + 16) = 0x80;
    *v109 = v110;
    swift_storeEnumTagMultiPayload();
    v233(v109);
    (*(v108 + 8))(v109, v107);
    v112 = sub_1D9F2B59C();
    return (*(*(v112 - 8) + 8))(v46, v112);
  }
}

uint64_t sub_1D9EC01B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v9 = sub_1D9F2BB5C();
  v10 = sub_1D9F2B59C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  sub_1D9EC0340(a3, a4, a5, (&v16 - v13));
  (*(*(v9 - 8) + 56))(v14, 0, 1, v9);
  return (*(v11 + 40))(a1, v14, v10);
}

uint64_t sub_1D9EC0340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v228 = a1;
  v225 = a4;
  v8 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v206 = *(AssociatedTypeWitness - 8);
  v10 = *(v206 + 64);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v205 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v208 = &v200 - v13;
  v14 = *(v8 + 88);
  v15 = *(v8 + 80);
  v211 = swift_getAssociatedTypeWitness();
  v209 = *(v211 - 8);
  v16 = *(v209 + 64);
  v17 = MEMORY[0x1EEE9AC00](v211);
  v210 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v214 = &v200 - v19;
  v20 = type metadata accessor for ServiceEnvelope();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v216 = &v200 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v221 = &v200 - v24;
  v25 = swift_getAssociatedTypeWitness();
  v224 = *(v25 - 8);
  v26 = *(v224 + 64);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v223 = &v200 - v28;
  v230 = *(a2 - 8);
  v29 = *(v230 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v200 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v219 = &v200 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v204 = &v200 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v207 = &v200 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v218 = &v200 - v39;
  v212 = v15;
  v213 = v14;
  v40 = type metadata accessor for ServiceSession.State();
  isa = v40[-1].isa;
  v227 = v40;
  v41 = *(isa + 8);
  MEMORY[0x1EEE9AC00](v40);
  v231 = (&v200 - v42);
  v43 = sub_1D9F2B02C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v47 = (&v200 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = *(a3 + 40);
  v220 = a3;
  v49 = v48(a2, a3);
  v51 = v50;
  v215 = v5[*(*v5 + 152)];
  v229 = AssociatedTypeWitness;
  v217 = v32;
  if (v215 == 1)
  {
    v203 = v49;
    if (qword_1EE0F2378 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_53;
  }

  while (1)
  {
    v63 = *&v5[*(*v5 + 120)];
    *v47 = v63;
    (*(v44 + 104))(v47, *MEMORY[0x1E69E8020], v43);
    v64 = v63;
    LOBYTE(v63) = sub_1D9F2B04C();
    v65 = *(v44 + 8);
    v44 += 8;
    v65(v47, v43);
    v51 = v231;
    if (v63)
    {
      break;
    }

    __break(1u);
LABEL_53:
    swift_once();
LABEL_4:
    v52 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v52, qword_1EE0F2380);

    v53 = sub_1D9F2AE6C();
    v54 = sub_1D9F2B42C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v233 = v202;
      *v55 = 136315650;
      v56 = *v5;
      v57 = sub_1D9F2BBBC();
      v201 = v54;
      v59 = sub_1D9E71CA4(v57, v58, &v233);
      v222 = v25;
      v60 = v59;

      *(v55 + 4) = v60;
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_1D9E71CA4(0xD000000000000014, 0x80000001D9F48D60, &v233);
      *(v55 + 22) = 2080;
      v61 = sub_1D9E71CA4(v203, v51, &v233);

      *(v55 + 24) = v61;
      v25 = v222;
      _os_log_impl(&dword_1D9E39000, v53, v201, "%s.%s messageType = %s", v55, 0x20u);
      v62 = v202;
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v62, -1, -1);
      MEMORY[0x1DA744270](v55, -1, -1);
    }

    else
    {
    }
  }

  v66 = *(*v5 + 128);
  swift_beginAccess();
  (*(isa + 2))(v51, &v5[v66], v227);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v68 = v230;
    v69 = v228;
    if (EnumCaseMultiPayload == 1)
    {
      v70 = v223;
      v71 = *(v224 + 32);
      v222 = v25;
      v71(v223, v51, v25);
      sub_1D9E3F498(a2, v220, v221);
      v231 = 0;
      Current = CFAbsoluteTimeGetCurrent();
      if (v215)
      {
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v120 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v120, qword_1EE0F2380);
        v121 = v207;
        (*(v68 + 16))(v207, v69, a2);

        v122 = a2;
        v123 = sub_1D9F2AE6C();
        v124 = sub_1D9F2B42C();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v232 = v126;
          *v125 = 136315394;
          v127 = ServiceSession.description.getter();
          v129 = v128;

          v130 = sub_1D9E71CA4(v127, v129, &v232);

          *(v125 + 4) = v130;
          *(v125 + 12) = 2080;
          swift_getDynamicType();
          v131 = sub_1D9F2BBBC();
          v133 = v132;
          (*(v230 + 8))(v121, v122);
          v134 = sub_1D9E71CA4(v131, v133, &v232);

          *(v125 + 14) = v134;
          _os_log_impl(&dword_1D9E39000, v123, v124, "%s sending message %s...", v125, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA744270](v126, -1, -1);
          MEMORY[0x1DA744270](v125, -1, -1);
        }

        else
        {

          (*(v68 + 8))(v121, v122);
        }

        a2 = v122;
        v70 = v223;
      }

      v200 = a2;
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      v135 = v222;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v137 = v231;
      v138 = v214;
      (*(AssociatedConformanceWitness + 56))(v221, v214, v135, AssociatedConformanceWitness);
      if (!v137)
      {
        v145 = v200;
        v146 = v229;
        v147 = swift_getAssociatedConformanceWitness();
        v148 = v208;
        sub_1D9E3FDA4(v146, v146, v147, v208);
        v172 = v230;
        if (v215)
        {
          v173 = v206;
          if (qword_1EE0F2378 != -1)
          {
            swift_once();
          }

          v174 = sub_1D9F2AE8C();
          __swift_project_value_buffer(v174, qword_1EE0F2380);
          v175 = v205;
          (*(v173 + 16))(v205, v148, v146);
          v176 = v204;
          (*(v172 + 16))(v204, v228, v145);

          v177 = sub_1D9F2AE6C();
          v178 = v146;
          v179 = sub_1D9F2B41C();
          v231 = v177;
          if (os_log_type_enabled(v177, v179))
          {
            v180 = swift_slowAlloc();
            v181 = v145;
            v228 = swift_slowAlloc();
            v232 = v228;
            *v180 = 136315906;
            v182 = v175;
            v183 = v178;
            v184 = ServiceSession.description.getter();
            v185 = v172;
            v187 = v186;

            v188 = sub_1D9E71CA4(v184, v187, &v232);

            *(v180 + 4) = v188;
            *(v180 + 12) = 2080;
            swift_getDynamicType();
            v189 = sub_1D9F2BBBC();
            v191 = v190;
            (*(v206 + 8))(v182, v183);
            v192 = sub_1D9E71CA4(v189, v191, &v232);

            *(v180 + 14) = v192;
            *(v180 + 22) = 2080;
            swift_getDynamicType();
            v193 = sub_1D9F2BBBC();
            v195 = v194;
            (*(v185 + 8))(v176, v181);
            v196 = sub_1D9E71CA4(v193, v195, &v232);

            *(v180 + 24) = v196;
            *(v180 + 32) = 2048;
            *(v180 + 34) = CFAbsoluteTimeGetCurrent() - Current;
            v197 = v231;
            _os_log_impl(&dword_1D9E39000, v231, v179, "%s received reply %s for message %s, took %f seconds.", v180, 0x2Au);
            v198 = v228;
            swift_arrayDestroy();
            MEMORY[0x1DA744270](v198, -1, -1);
            v199 = v180;
            v173 = v206;
            MEMORY[0x1DA744270](v199, -1, -1);

            sub_1D9E72374(v216);
            sub_1D9E72374(v221);
            (*(v224 + 8))(v223, v222);
            v146 = v183;
          }

          else
          {

            sub_1D9E72374(v216);
            sub_1D9E72374(v221);
            (*(v224 + 8))(v70, v222);
            (*(v172 + 8))(v176, v145);
            (*(v173 + 8))(v175, v178);
            v146 = v178;
          }
        }

        else
        {
          sub_1D9E72374(v216);
          sub_1D9E72374(v221);
          (*(v224 + 8))(v70, v222);
          v173 = v206;
        }

        (*(v173 + 32))(v225, v208, v146);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
        sub_1D9F2BB5C();
        return swift_storeEnumTagMultiPayload();
      }

      v139 = v209;
      v140 = *(v209 + 32);
      v141 = v210;
      v142 = v211;
      v140(v210, v138, v211);
      swift_getAssociatedConformanceWitness();
      v143 = sub_1D9F2BA0C();
      if (v143)
      {
        v144 = v143;
        (*(v139 + 8))(v141, v142);
      }

      else
      {
        v144 = swift_allocError();
        v140(v149, v141, v142);
      }

      v150 = v217;
      sub_1D9E72374(v221);
      v151 = v230;
      v152 = v200;
      v153 = v144;
      v154 = v223;
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v155 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v155, qword_1EE0F2380);
      (*(v151 + 16))(v150, v69, v152);

      v156 = v153;
      v157 = sub_1D9F2AE6C();
      v158 = sub_1D9F2B43C();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v232 = v160;
        *v159 = 136315650;
        v161 = ServiceSession.description.getter();
        v231 = v153;
        v163 = v162;

        v164 = sub_1D9E71CA4(v161, v163, &v232);

        *(v159 + 4) = v164;
        *(v159 + 12) = 2080;
        swift_getDynamicType();
        v165 = sub_1D9F2BBBC();
        v167 = v166;
        (*(v151 + 8))(v150, v152);
        v168 = sub_1D9E71CA4(v165, v167, &v232);

        *(v159 + 14) = v168;
        *(v159 + 22) = 2080;
        v153 = v231;
        swift_getErrorValue();
        v169 = sub_1D9F2BAAC();
        v171 = sub_1D9E71CA4(v169, v170, &v232);

        *(v159 + 24) = v171;
        _os_log_impl(&dword_1D9E39000, v157, v158, "%s failed to send message %s due to error %s.", v159, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v160, -1, -1);
        MEMORY[0x1DA744270](v159, -1, -1);

        (*(v224 + 8))(v223, v222);
      }

      else
      {

        (*(v224 + 8))(v154, v222);
        (*(v151 + 8))(v150, v152);
      }

      *v225 = v153;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
    }

    else
    {
      v90 = v51->isa;
      v91 = v51[1].isa;
      v92 = v51[2].isa;
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v93 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v93, qword_1EE0F2380);
      v94 = v219;
      (*(v68 + 16))(v219, v69, a2);

      sub_1D9E84B2C(v90, v91, v92);
      v95 = sub_1D9F2AE6C();
      v96 = sub_1D9F2B43C();
      sub_1D9E84B4C(v90, v91, v92);
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        LODWORD(v228) = v96;
        v98 = v68;
        v99 = v97;
        v231 = swift_slowAlloc();
        v232 = v231;
        *v99 = 136315650;
        v227 = v95;
        v100 = ServiceSession.description.getter();
        v102 = v101;

        v103 = sub_1D9E71CA4(v100, v102, &v232);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2080;
        swift_getDynamicType();
        v104 = sub_1D9F2BBBC();
        v106 = v105;
        (*(v98 + 8))(v94, a2);
        v107 = sub_1D9E71CA4(v104, v106, &v232);

        *(v99 + 14) = v107;
        *(v99 + 22) = 2080;
        sub_1D9E84B2C(v90, v91, v92);
        v108 = sub_1D9EB922C(v90, v91, v92);
        v110 = sub_1D9E71CA4(v108, v109, &v232);

        *(v99 + 24) = v110;
        v111 = v227;
        _os_log_impl(&dword_1D9E39000, v227, v228, "%s failed to send message %s because service session is cancelled for reason %s.", v99, 0x20u);
        v112 = v231;
        swift_arrayDestroy();
        MEMORY[0x1DA744270](v112, -1, -1);
        MEMORY[0x1DA744270](v99, -1, -1);
      }

      else
      {

        (*(v68 + 8))(v94, a2);
      }

      sub_1D9E3F7D8();
      v117 = swift_allocError();
      *v118 = v90;
      *(v118 + 8) = v91;
      *(v118 + 16) = v92;
      *v225 = v117;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
    }

    sub_1D9F2BB5C();
    return swift_storeEnumTagMultiPayload();
  }

  v72 = v230;
  v73 = v228;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v74 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v74, qword_1EE0F2380);
  v75 = v218;
  (*(v72 + 16))(v218, v73, a2);

  v76 = sub_1D9F2AE6C();
  v77 = a2;
  v78 = sub_1D9F2B43C();
  if (os_log_type_enabled(v76, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v232 = v80;
    *v79 = 136315394;
    v81 = ServiceSession.description.getter();
    v222 = v25;
    v83 = v82;

    v84 = sub_1D9E71CA4(v81, v83, &v232);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    swift_getDynamicType();
    v85 = sub_1D9F2BBBC();
    v87 = v86;
    (*(v72 + 8))(v75, v77);
    v88 = sub_1D9E71CA4(v85, v87, &v232);

    *(v79 + 14) = v88;
    _os_log_impl(&dword_1D9E39000, v76, v78, "%s failed to send message %s because service session is not activated.", v79, 0x16u);
    swift_arrayDestroy();
    v89 = v80;
    v51 = v231;
    MEMORY[0x1DA744270](v89, -1, -1);
    MEMORY[0x1DA744270](v79, -1, -1);
  }

  else
  {

    (*(v72 + 8))(v75, v77);
  }

  sub_1D9E3F7D8();
  v113 = swift_allocError();
  *v114 = 0;
  *(v114 + 8) = 0;
  *(v114 + 16) = 0x80;
  *v225 = v113;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  sub_1D9F2BB5C();
  swift_storeEnumTagMultiPayload();
  v115 = sub_1D9F2B59C();
  return (*(*(v115 - 8) + 8))(v51, v115);
}

uint64_t ServiceSession.registerMessageHandler<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23[0] = a2;
  v11 = sub_1D9F2AF8C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9F2AFFC();
  v16 = *(v24 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(v6 + *(*v6 + 120));
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = v6;
  v20[5] = a1;
  v20[6] = v23[0];
  v20[7] = a3;
  aBlock[4] = sub_1D9EC62A8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_30;
  v21 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v19, v15, v21);
  _Block_release(v21);
  (*(v12 + 8))(v15, v11);
  (*(v16 + 8))(v19, v24);
}

uint64_t sub_1D9EC1FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v41 = a1;
  v11 = sub_1D9F2B02C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v5 + *(*v5 + 152)) != 1)
  {
    goto LABEL_6;
  }

  v37 = a2;
  v38 = a3;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v16 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v16, qword_1EE0F2380);

    v17 = sub_1D9F2AE6C();
    v18 = sub_1D9F2B42C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v40 = a5;
      v20 = v19;
      v21 = swift_slowAlloc();
      v39 = a4;
      v22 = v21;
      v42[0] = v21;
      *v20 = 136315650;
      v23 = *v6;
      v24 = sub_1D9F2BBBC();
      v26 = sub_1D9E71CA4(v24, v25, v42);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_1D9E71CA4(0xD00000000000001FLL, 0x80000001D9F49630, v42);
      *(v20 + 22) = 2080;
      v27 = (*(v40 + 40))(v39, v40);
      v29 = sub_1D9E71CA4(v27, v28, v42);

      *(v20 + 24) = v29;
      _os_log_impl(&dword_1D9E39000, v17, v18, "%s.%s messageType = %s", v20, 0x20u);
      swift_arrayDestroy();
      v30 = v22;
      a4 = v39;
      MEMORY[0x1DA744270](v30, -1, -1);
      v31 = v20;
      a5 = v40;
      MEMORY[0x1DA744270](v31, -1, -1);
    }

    a2 = v37;
    a3 = v38;
LABEL_6:
    v32 = *(v6 + *(*v6 + 120));
    *v15 = v32;
    (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
    v33 = v32;
    LOBYTE(v32) = sub_1D9F2B04C();
    v34 = *(v12 + 8);
    v12 += 8;
    v34(v15, v11);
    if (v32)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v35 = *(*v6 + 136);
  swift_beginAccess();
  sub_1D9EAE818(v41, a2, a3, a4, a5);
  return swift_endAccess();
}

uint64_t ServiceSession.registerAsyncMessageHandler<A>(for:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *v5;
  v12 = swift_allocObject();
  v12[2] = *(v11 + 80);
  v12[3] = a4;
  v12[4] = *(v11 + 88);
  v12[5] = a5;
  v12[6] = a2;
  v12[7] = a3;

  ServiceSession.registerMessageHandler<A>(for:_:)(a1, sub_1D9EC62D8, v12, a4, a5);
}

uint64_t sub_1D9EC2400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v28 = a4;
  v29 = a8;
  v27 = a6;
  v30 = a2;
  v13 = *(a7 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v27 - v18;
  v20 = sub_1D9F2B32C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v15, a1, a7);
  v21 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v27;
  *(v23 + 5) = a7;
  v24 = v28;
  *(v23 + 6) = v29;
  *(v23 + 7) = a9;
  *(v23 + 8) = v24;
  *(v23 + 9) = a5;
  (*(v13 + 32))(&v23[v21], v15, a7);
  v25 = &v23[v22];
  *v25 = v30;
  *(v25 + 1) = a3;

  sub_1D9E7F08C(0, 0, v19, &unk_1D9F3D0F8, v23);
}

uint64_t sub_1D9EC2628(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[4] = AssociatedTypeWitness;
  v12 = *(AssociatedTypeWitness - 8);
  v8[5] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v8[6] = v14;
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v8[7] = v16;
  *v16 = v8;
  v16[1] = sub_1D9EC27B0;

  return v18(v14, a6);
}

uint64_t sub_1D9EC27B0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D9EC28AC, 0, 0);
}

uint64_t sub_1D9EC28AC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t ServiceSession.unregisterMessageHandler<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D9F2AF8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9F2AFFC();
  v12 = *(v20 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v3 + *(*v3 + 120));
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v3;
  v16[5] = a1;
  aBlock[4] = sub_1D9EC6308;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_39;
  v17 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v20);
}

uint64_t sub_1D9EC2C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D9F2B02C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v3 + *(*v3 + 152)) != 1)
  {
    goto LABEL_6;
  }

  v34 = a1;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v13 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v13, qword_1EE0F2380);

    v14 = sub_1D9F2AE6C();
    v15 = sub_1D9F2B42C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v35 = a2;
      v17 = v16;
      v18 = swift_slowAlloc();
      v36 = a3;
      v37[0] = v18;
      v19 = v18;
      *v17 = 136315650;
      v20 = *v4;
      v21 = sub_1D9F2BBBC();
      v23 = sub_1D9E71CA4(v21, v22, v37);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1D9E71CA4(0xD00000000000001FLL, 0x80000001D9F49610, v37);
      *(v17 + 22) = 2080;
      v24 = (*(v36 + 40))(v35, v36);
      v26 = sub_1D9E71CA4(v24, v25, v37);

      *(v17 + 24) = v26;
      _os_log_impl(&dword_1D9E39000, v14, v15, "%s.%s messageType = %s", v17, 0x20u);
      swift_arrayDestroy();
      v27 = v19;
      a3 = v36;
      MEMORY[0x1DA744270](v27, -1, -1);
      v28 = v17;
      a2 = v35;
      MEMORY[0x1DA744270](v28, -1, -1);
    }

    a1 = v34;
LABEL_6:
    v29 = *(v4 + *(*v4 + 120));
    *v12 = v29;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
    v30 = v29;
    LOBYTE(v29) = sub_1D9F2B04C();
    v31 = *(v9 + 8);
    v9 += 8;
    v31(v12, v8);
    if (v29)
    {
      break;
    }

    __break(1u);
LABEL_9:
    swift_once();
  }

  v32 = *(*v4 + 136);
  swift_beginAccess();
  sub_1D9EAE924(a1, a2, a3);
  return swift_endAccess();
}

uint64_t sub_1D9EC2FD0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9EC3030(a1);
  }

  return result;
}

void sub_1D9EC3030(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1D9F2B02C();
  v82 = *(v5 - 8);
  v83 = v5;
  v6 = v82[8];
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v4 + 88);
  v86 = *(v4 + 80);
  v87 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v79 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v75 = &v73 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v77 = &v73 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v73 - v22;
  if (qword_1EE0F2378 != -1)
  {
    swift_once();
  }

  v24 = sub_1D9F2AE8C();
  v25 = __swift_project_value_buffer(v24, qword_1EE0F2380);
  v84 = *(v11 + 16);
  v84(v23, a1, AssociatedTypeWitness);

  v76 = v25;
  v26 = sub_1D9F2AE6C();
  v27 = sub_1D9F2B42C();

  v28 = os_log_type_enabled(v26, v27);
  v80 = v11 + 16;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v81 = v11;
    v85 = AssociatedTypeWitness;
    v30 = v29;
    v74 = swift_slowAlloc();
    v88 = v74;
    *v30 = 136315650;
    v31 = *v2;
    v32 = sub_1D9F2BBBC();
    v34 = sub_1D9E71CA4(v32, v33, &v88);
    v78 = a1;
    v35 = v34;

    *(v30 + 4) = v35;
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1D9E71CA4(0xD000000000000010, 0x80000001D9F48D80, &v88);
    *(v30 + 22) = 2080;
    v36 = v84;
    v84(v21, v23, v85);
    v37 = sub_1D9F2B13C();
    v39 = v38;
    v40 = v23;
    v41 = *(v81 + 8);
    v41(v40, v85);
    v42 = sub_1D9E71CA4(v37, v39, &v88);

    *(v30 + 24) = v42;
    a1 = v78;
    _os_log_impl(&dword_1D9E39000, v26, v27, "%s.%s error = %s", v30, 0x20u);
    v43 = v74;
    swift_arrayDestroy();
    MEMORY[0x1DA744270](v43, -1, -1);
    v44 = v30;
    AssociatedTypeWitness = v85;
    v45 = v81;
    MEMORY[0x1DA744270](v44, -1, -1);

    v46 = v36;
    v11 = v45;
  }

  else
  {

    v47 = v23;
    v41 = *(v11 + 8);
    v41(v47, AssociatedTypeWitness);
    v46 = v84;
  }

  v48 = *(v2 + *(*v2 + 120));
  *v8 = v48;
  v50 = v82;
  v49 = v83;
  (v82[13])(v8, *MEMORY[0x1E69E8020], v83);
  v51 = v48;
  LOBYTE(v48) = sub_1D9F2B04C();
  (v50[1])(v8, v49);
  if (v48)
  {
    LOBYTE(v88) = *(v2 + qword_1EE0FF690);
    if ((*(v87 + 72))(a1, &v88))
    {
      v52 = v77;
      v46(v77, a1, AssociatedTypeWitness);

      v53 = sub_1D9F2AE6C();
      v54 = sub_1D9F2B42C();
      v55 = os_log_type_enabled(v53, v54);
      v85 = v41;
      if (v55)
      {
        LODWORD(v83) = v54;
        v78 = a1;
        v81 = v11;
        v56 = v46;
        v57 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v88 = v82;
        *v57 = 136315394;
        v58 = ServiceSession.description.getter();
        v60 = v59;

        v61 = sub_1D9E71CA4(v58, v60, &v88);

        *(v57 + 4) = v61;
        *(v57 + 12) = 2112;
        v62 = v75;
        v56(v75, v52, AssociatedTypeWitness);
        swift_getAssociatedTypeWitness();
        swift_getAssociatedConformanceWitness();
        swift_getAssociatedConformanceWitness();
        if (sub_1D9F2BA0C())
        {
          v63 = v81;
          v64 = v85;
          v85(v62, AssociatedTypeWitness);
        }

        else
        {
          swift_allocError();
          v63 = v81;
          (*(v81 + 32))(v65, v62, AssociatedTypeWitness);
          v64 = v85;
        }

        v66 = _swift_stdlib_bridgeErrorToNSError();
        v64(v52, AssociatedTypeWitness);
        *(v57 + 14) = v66;
        v67 = v76;
        *v76 = v66;
        _os_log_impl(&dword_1D9E39000, v53, v83, "%s Nonrecoverable error %@ encountered. Cancelling service session...", v57, 0x16u);
        sub_1D9E51FE8(v67, &unk_1ECB73B60, &unk_1D9F32210);
        MEMORY[0x1DA744270](v67, -1, -1);
        v68 = v82;
        __swift_destroy_boxed_opaque_existential_1(v82);
        MEMORY[0x1DA744270](v68, -1, -1);
        MEMORY[0x1DA744270](v57, -1, -1);

        v11 = v63;
        a1 = v78;
        v46 = v84;
      }

      else
      {

        v41(v52, AssociatedTypeWitness);
      }

      v69 = v79;
      v46(v79, a1, AssociatedTypeWitness);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v70 = sub_1D9F2BA0C();
      if (v70)
      {
        v71 = v70;
        v85(v69, AssociatedTypeWitness);
      }

      else
      {
        v71 = swift_allocError();
        (*(v11 + 32))(v72, v69, AssociatedTypeWitness);
      }

      v88 = v71;
      v89 = 0;
      v90 = 0;
      sub_1D9EBB3A0(&v88);
      sub_1D9E84B4C(v88, v89, v90);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9EC3934(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D9EC39B0(a1, a2, a3);
  }

  return result;
}

uint64_t sub_1D9EC39B0(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v7 = type metadata accessor for ServiceEnvelope();
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9F2B02C();
  v12 = *(v11 - 1);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v4 + *(*v4 + 120));
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  v18 = sub_1D9F2B04C();
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v15, v11);
  if (v18)
  {
    v21 = *(*v4 + 136);
    swift_beginAccess();
    v22 = *(v4 + v21);
    v23 = swift_allocObject();
    v23[2] = v17;
    v23[3] = a2;
    v23[4] = a3;
    v24 = v17;

    sub_1D9EAED74(v42, sub_1D9E84EEC, v23, v22);
  }

  else
  {
    __break(1u);
    swift_once();
    v25 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v25, qword_1EE0F2380);

    v26 = v11;
    v27 = sub_1D9F2AE6C();
    v28 = sub_1D9F2B43C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v43[0] = v30;
      *v29 = 136315394;
      v31 = ServiceSession.description.getter();
      v41[1] = v19;
      v33 = v32;

      v34 = sub_1D9E71CA4(v31, v33, v43);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v35 = sub_1D9F2BAAC();
      v37 = sub_1D9E71CA4(v35, v36, v43);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_1D9E39000, v27, v28, "%s failed to handle incoming envelope due to error %s.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA744270](v30, -1, -1);
      MEMORY[0x1DA744270](v29, -1, -1);
    }

    else
    {
    }

    sub_1D9F2A93C();
    v39 = &v10[v7[5]];
    sub_1D9F2ACFC();
    *&v10[v7[6]] = 6;
    v40 = &v10[v7[7]];
    *v40 = 0;
    *(v40 + 1) = 0;
    *&v10[v7[8]] = xmmword_1D9F334C0;
    *&v10[v7[9]] = 0;
    v42(v10);

    return sub_1D9E72374(v10);
  }
}

uint64_t sub_1D9EC3DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_1D9F2AF8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9F2AFFC();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = *(a1 + 8);
  LOBYTE(a1) = *(a1 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = v16;
  *(v18 + 40) = v17;
  *(v18 + 48) = a1;
  aBlock[4] = sub_1D9EC6CD8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_65;
  v19 = _Block_copy(aBlock);

  sub_1D9E84B2C(v16, v17, a1);
  sub_1D9F2AFAC();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v15, v11, v19);
  _Block_release(v19);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1D9EC40DC(uint64_t a1, void *a2, void (*a3)(uint64_t *), void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, NSObject *a7, uint64_t *a8, double a9, uint64_t a10, uint64_t a11)
{
  v180 = a7;
  v175 = a6;
  v188 = a5;
  v189 = a4;
  v181 = a1;
  v177 = *(a10 - 8);
  v15 = *(v177 + 64);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v179 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v170 = &v167 - v18;
  v174 = v19;
  v182 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v171 = *(AssociatedTypeWitness - 8);
  v22 = *(v171 + 64);
  v23 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v168 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v169 = &v167 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v173 = &v167 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v172 = &v167 - v29;
  v30 = type metadata accessor for ServiceEnvelope();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v176 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C50, &qword_1D9F3D100);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v167 - v35);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v178 = AssociatedTypeWitness;
  v187 = sub_1D9F2BB5C();
  v186 = *(v187 - 8);
  v37 = *(v186 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v185 = (&v167 - v38);
  v184 = a8;
  v183 = a11;
  v39 = type metadata accessor for ServiceSession.State();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v167 - v42;
  v44 = sub_1D9F2B02C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v48 = (&v167 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v48 = a2;
  (*(v45 + 104))(v48, *MEMORY[0x1E69E8020], v44);
  v49 = a2;
  LOBYTE(a2) = sub_1D9F2B04C();
  (*(v45 + 8))(v48, v44);
  if ((a2 & 1) == 0)
  {
    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    v52 = *(*Strong + 128);
    swift_beginAccess();
    (*(v40 + 16))(v43, v51 + v52, v39);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v54 = swift_getAssociatedTypeWitness();
        (*(*(v54 - 8) + 8))(v43, v54);
        sub_1D9EC6C5C(v181, v36);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v55 = *v36;
          v56 = v182;
          if (qword_1EE0F2378 != -1)
          {
            swift_once();
          }

          v57 = sub_1D9F2AE8C();
          __swift_project_value_buffer(v57, qword_1EE0F2380);
          v58 = v177;
          v59 = v179;
          (*(v177 + 16))(v179, v175, v56);

          v60 = v55;
          v61 = sub_1D9F2AE6C();
          v62 = sub_1D9F2B43C();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = v58;
            v64 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v191 = v184;
            *v64 = 136315906;
            v65 = ServiceSession.description.getter();
            v67 = v66;

            v68 = sub_1D9E71CA4(v65, v67, &v191);

            *(v64 + 4) = v68;
            *(v64 + 12) = 2080;
            ErrorValue = swift_getErrorValue();
            v70 = *(*(v190 - 8) + 64);
            MEMORY[0x1EEE9AC00](ErrorValue);
            (*(v72 + 16))(&v167 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
            v73 = sub_1D9F2B13C();
            v75 = sub_1D9E71CA4(v73, v74, &v191);

            *(v64 + 14) = v75;
            *(v64 + 22) = 2080;
            v76 = v179;
            swift_getDynamicType();
            v77 = sub_1D9F2BBBC();
            v79 = v78;
            (*(v63 + 8))(v76, v56);
            v80 = sub_1D9E71CA4(v77, v79, &v191);

            *(v64 + 24) = v80;
            *(v64 + 32) = 2048;
            *(v64 + 34) = CFAbsoluteTimeGetCurrent() - a9;
            _os_log_impl(&dword_1D9E39000, v61, v62, "%s received error %s for message %s, took %f seconds.", v64, 0x2Au);
            v81 = v184;
            swift_arrayDestroy();
            MEMORY[0x1DA744270](v81, -1, -1);
            MEMORY[0x1DA744270](v64, -1, -1);
          }

          else
          {

            (*(v58 + 8))(v59, v56);
          }

          v132 = v189;
          v133 = v187;
          v134 = v186;
          v135 = v185;
          *v185 = v55;
          swift_storeEnumTagMultiPayload();
          v136 = v55;
          v132(v135);

          return (*(v134 + 8))(v135, v133);
        }

        else
        {
          v116 = v176;
          sub_1D9EC6BF8(v36, v176);
          v117 = v182;
          v118 = v178;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v120 = v173;
          sub_1D9E3FDA4(v118, v118, AssociatedConformanceWitness, v173);
          v137 = v171;
          (*(v171 + 32))(v172, v120, v118);
          v138 = v177;
          if (*(v51 + *(*v51 + 152)))
          {
            if (qword_1EE0F2378 != -1)
            {
              swift_once();
            }

            v139 = sub_1D9F2AE8C();
            __swift_project_value_buffer(v139, qword_1EE0F2380);
            v140 = v169;
            v184 = *(v137 + 16);
            (v184)(v169, v172, v118);
            v141 = v170;
            (*(v138 + 16))(v170, v175, v117);

            v142 = sub_1D9F2AE6C();
            LODWORD(v183) = sub_1D9F2B41C();
            if (os_log_type_enabled(v142, v183))
            {
              v143 = v137;
              v144 = swift_slowAlloc();
              v181 = swift_slowAlloc();
              v191 = v181;
              *v144 = 136315906;
              v180 = v142;
              v145 = ServiceSession.description.getter();
              v147 = v146;

              v148 = sub_1D9E71CA4(v145, v147, &v191);

              *(v144 + 4) = v148;
              *(v144 + 12) = 2080;
              v149 = v168;
              (v184)(v168, v140, v178);
              swift_getDynamicType();
              v150 = *(v143 + 8);
              v150(v149, v178);
              v151 = sub_1D9F2BBBC();
              v153 = v152;
              v150(v140, v178);
              v154 = sub_1D9E71CA4(v151, v153, &v191);

              *(v144 + 14) = v154;
              *(v144 + 22) = 2080;
              v155 = v170;
              v156 = v182;
              swift_getDynamicType();
              v157 = sub_1D9F2BBBC();
              v159 = v158;
              (*(v138 + 8))(v155, v156);
              v160 = sub_1D9E71CA4(v157, v159, &v191);
              v118 = v178;

              *(v144 + 24) = v160;
              *(v144 + 32) = 2048;
              *(v144 + 34) = CFAbsoluteTimeGetCurrent() - a9;
              v161 = v180;
              _os_log_impl(&dword_1D9E39000, v180, v183, "%s received reply %s for message %s, took %f seconds.", v144, 0x2Au);
              v162 = v181;
              swift_arrayDestroy();
              MEMORY[0x1DA744270](v162, -1, -1);
              MEMORY[0x1DA744270](v144, -1, -1);

              v116 = v176;
            }

            else
            {

              (*(v137 + 8))(v140, v118);
              (*(v138 + 8))(v141, v117);
              v116 = v176;
              v143 = v137;
            }

            v163 = v184;
          }

          else
          {
            v163 = *(v137 + 16);
            v143 = v137;
          }

          v164 = v185;
          v165 = v172;
          (v163)(v185, v172, v118);
          v166 = v187;
          swift_storeEnumTagMultiPayload();
          v189(v164);

          (*(v186 + 8))(v164, v166);
          (*(v143 + 8))(v165, v118);
          return sub_1D9E72374(v116);
        }
      }

      else
      {
        v104 = *v43;
        v105 = *(v43 + 1);
        v106 = v43[16];
        if (qword_1EE0F2378 != -1)
        {
          swift_once();
        }

        v107 = sub_1D9F2AE8C();
        __swift_project_value_buffer(v107, qword_1EE0F2380);

        v108 = sub_1D9F2AE6C();
        v109 = sub_1D9F2B43C();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v191 = v111;
          *v110 = 136315138;
          v112 = ServiceSession.description.getter();
          v114 = v113;

          v115 = sub_1D9E71CA4(v112, v114, &v191);

          *(v110 + 4) = v115;
          _os_log_impl(&dword_1D9E39000, v108, v109, "%s received reply envelope after cancellation.", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v111);
          MEMORY[0x1DA744270](v111, -1, -1);
          MEMORY[0x1DA744270](v110, -1, -1);
        }

        else
        {
        }

        sub_1D9E3F7D8();
        v128 = swift_allocError();
        *v129 = v104;
        *(v129 + 8) = v105;
        *(v129 + 16) = v106;
        v130 = v185;
        *v185 = v128;
        v131 = v187;
        swift_storeEnumTagMultiPayload();
        sub_1D9E84B2C(v104, v105, v106);
        v189(v130);

        sub_1D9E84B4C(v104, v105, v106);
        return (*(v186 + 8))(v130, v131);
      }
    }

    else
    {
      if (qword_1EE0F2378 != -1)
      {
        swift_once();
      }

      v95 = sub_1D9F2AE8C();
      __swift_project_value_buffer(v95, qword_1EE0F2380);

      v96 = sub_1D9F2AE6C();
      v97 = sub_1D9F2B43C();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v191 = v99;
        *v98 = 136315138;
        v100 = ServiceSession.description.getter();
        v102 = v101;

        v103 = sub_1D9E71CA4(v100, v102, &v191);

        *(v98 + 4) = v103;
        _os_log_impl(&dword_1D9E39000, v96, v97, "%s received reply envelope before activation.", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        MEMORY[0x1DA744270](v99, -1, -1);
        MEMORY[0x1DA744270](v98, -1, -1);
      }

      else
      {
      }

      v121 = v189;
      v122 = v187;
      v123 = v186;
      v124 = v185;
      sub_1D9E3F7D8();
      v125 = swift_allocError();
      *v126 = 0;
      *(v126 + 8) = 0;
      *(v126 + 16) = 0x80;
      *v124 = v125;
      swift_storeEnumTagMultiPayload();
      v121(v124);

      (*(v123 + 8))(v124, v122);
      swift_getAssociatedTypeWitness();
      v127 = sub_1D9F2B59C();
      return (*(*(v127 - 8) + 8))(v43, v127);
    }
  }

  a3 = v189;
  if (qword_1EE0F2378 != -1)
  {
    goto LABEL_39;
  }

LABEL_11:
  v82 = sub_1D9F2AE8C();
  __swift_project_value_buffer(v82, qword_1EE0F2380);
  v83 = sub_1D9F2AE6C();
  v84 = sub_1D9F2B43C();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v192 = v86;
    *v85 = 136315138;
    swift_getMetatypeMetadata();
    v87 = sub_1D9F2BBBC();
    v89 = sub_1D9E71CA4(v87, v88, &v192);

    *(v85 + 4) = v89;
    _os_log_impl(&dword_1D9E39000, v83, v84, "%s received reply envelope but connection is already deallocated.", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1DA744270](v86, -1, -1);
    MEMORY[0x1DA744270](v85, -1, -1);
  }

  sub_1D9E3F7D8();
  v90 = swift_allocError();
  *v91 = xmmword_1D9F3CFD0;
  *(v91 + 16) = 0x80;
  v92 = v185;
  *v185 = v90;
  v93 = v187;
  swift_storeEnumTagMultiPayload();
  a3(v92);
  return (*(v186 + 8))(v92, v93);
}

uint64_t sub_1D9EC56C4(char *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v41 = a3;
  v38 = a1;
  v39 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v4 = *(v40 + 64);
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C50, &qword_1D9F3D100);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v36 = (v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v14 = v35 - v13;
  v15 = type metadata accessor for ServiceEnvelope();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v19 = sub_1D9F2BB5C();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v35 - v21;
  (*(v23 + 16))(v35 - v21, v38, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35[1] = v9;
    v25 = v39;
    v24 = v40;
    v26 = *(v40 + 32);
    v26(v8, v22, AssociatedTypeWitness);
    v27 = *(v24 + 16);
    v28 = v37;
    v38 = v8;
    v27(v37, v8, AssociatedTypeWitness);
    v29 = sub_1D9F2BA0C();
    if (v29)
    {
      v30 = v29;
      v31 = v40;
      (*(v40 + 8))(v28, AssociatedTypeWitness);
    }

    else
    {
      v30 = swift_allocError();
      v26(v33, v28, AssociatedTypeWitness);
      v31 = v40;
    }

    v34 = v36;
    *v36 = v30;
    swift_storeEnumTagMultiPayload();
    v25(v34);
    sub_1D9E51FE8(v34, &qword_1ECB74C50, &qword_1D9F3D100);
    return (*(v31 + 8))(v38, AssociatedTypeWitness);
  }

  else
  {
    sub_1D9EC6BF8(v22, v18);
    sub_1D9E72310(v18, v14);
    swift_storeEnumTagMultiPayload();
    v39(v14);
    sub_1D9E51FE8(v14, &qword_1ECB74C50, &qword_1D9F3D100);
    return sub_1D9E72374(v18);
  }
}

uint64_t sub_1D9EC5B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v7 = sub_1D9F2AF8C();
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9F2AFFC();
  v11 = *(v22 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ServiceEnvelope();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1D9E72310(a1, &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  sub_1D9EC6BF8(&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  aBlock[4] = sub_1D9EC6D78;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9EB9EB0;
  aBlock[3] = &block_descriptor_84;
  v20 = _Block_copy(aBlock);

  sub_1D9F2AFAC();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D9EC6994(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9F2B5FC();
  MEMORY[0x1DA743280](0, v14, v10, v20);
  _Block_release(v20);
  (*(v23 + 8))(v10, v7);
  (*(v11 + 8))(v14, v22);
}

uint64_t ServiceSession.description.getter()
{
  v1 = v0;
  v2 = *v0;
  sub_1D9F2B68C();
  v3 = *v0;
  v4 = sub_1D9F2BBBC();

  MEMORY[0x1DA742F90](0x20656D616E207B20, 0xEA0000000000203DLL);
  v5 = *(*v0 + 112);
  v6 = *(v2 + 88);
  v7 = *(v2 + 80);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 8);
  v10 = swift_checkMetadataState();
  v11 = v9(v10, AssociatedConformanceWitness);
  MEMORY[0x1DA742F90](v11);

  MEMORY[0x1DA742F90](0x203D206469202CLL, 0xE700000000000000);
  sub_1D9F2AD7C();
  sub_1D9EC6994(&unk_1EE0F3850, MEMORY[0x1E69695A8]);
  v12 = sub_1D9F2B9FC();
  MEMORY[0x1DA742F90](v12);

  MEMORY[0x1DA742F90](0x3D20656C6F72202CLL, 0xE900000000000020);
  if (*(v1 + qword_1EE0FF690))
  {
    v13 = 0x726576726573;
  }

  else
  {
    v13 = 0x746E65696C63;
  }

  MEMORY[0x1DA742F90](v13, 0xE600000000000000);

  MEMORY[0x1DA742F90](32032, 0xE200000000000000);
  return v4;
}

uint64_t sub_1D9EC6114(void (*a1)(void))
{
  a1();

  return sub_1D9F2BBBC();
}

uint64_t sub_1D9EC6194()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_1D9EC61BC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  sub_1D9EBE084(v1, v2, v3);
}

uint64_t sub_1D9EC620C()
{
  v1 = v0[3];
  v2 = (*(*(v1 - 8) + 80) + 56) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0[5];
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = v0 + v2;
  v10 = v0[6];
  return sub_1D9EBEA8C(v9, v6, v7, v8, v1, v5);
}

uint64_t sub_1D9EC62A8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  return sub_1D9EC1FA0(v3, v4, v5, v1, v2);
}

uint64_t sub_1D9EC6308()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[4];
  return sub_1D9EC2C20(v3, v1, v2);
}

uint64_t sub_1D9EC637C(uint64_t a1)
{
  result = sub_1D9F2AD7C();
  if (v3 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    v5 = *(a1 + 80);
    v4 = *(a1 + 88);
    result = swift_getAssociatedTypeWitness();
    if (v6 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      result = type metadata accessor for ServiceSession.State();
      if (v7 <= 0x3F)
      {
        v10 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D9EC6500(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = v4;
  result = sub_1D9F2B59C();
  if (v7 <= 0x3F)
  {
    if (v5 > 0x3F)
    {
      return AssociatedTypeWitness;
    }

    else
    {
      result = sub_1D9EC6964();
      if (v8 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D9EC65BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 64);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = v9 + 1;
  }

  if (v9 > v10)
  {
    v10 = *(v8 + 64);
  }

  v11 = 17;
  if (v10 > 0x11)
  {
    v11 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_30;
  }

  v12 = v11 + 1;
  v13 = 8 * (v11 + 1);
  if ((v11 + 1) <= 3)
  {
    v16 = ((a2 + ~(-1 << v13) - 253) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v16 < 2)
    {
LABEL_30:
      v18 = *(a1 + v11);
      if (v18 >= 3)
      {
        return (v18 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_30;
  }

LABEL_19:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return (v12 | v17) + 254;
}

void sub_1D9EC674C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 64);
  if (*(v9 + 84))
  {
    v11 = *(v9 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v10 > v11)
  {
    v11 = *(v9 + 64);
  }

  if (v11 <= 0x11)
  {
    v11 = 17;
  }

  v12 = v11 + 1;
  if (a3 < 0xFE)
  {
    v13 = 0;
  }

  else if (v12 <= 3)
  {
    v16 = ((a3 + ~(-1 << (8 * v12)) - 253) >> (8 * v12)) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  if (a2 > 0xFD)
  {
    v14 = a2 - 254;
    if (v12 >= 4)
    {
      bzero(a1, v11 + 1);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v15 = (v14 >> (8 * v12)) + 1;
    if (v11 != -1)
    {
      v18 = v14 & ~(-1 << (8 * v12));
      bzero(a1, v12);
      if (v12 != 3)
      {
        if (v12 == 2)
        {
          *a1 = v18;
          if (v13 > 1)
          {
LABEL_44:
            if (v13 == 2)
            {
              *&a1[v12] = v15;
            }

            else
            {
              *&a1[v12] = v15;
            }

            return;
          }
        }

        else
        {
          *a1 = v14;
          if (v13 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v13)
        {
          a1[v12] = v15;
        }

        return;
      }

      *a1 = v18;
      a1[2] = BYTE2(v18);
    }

    if (v13 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v12] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v11] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v13 == 2)
  {
    *&a1[v12] = 0;
    goto LABEL_29;
  }

  *&a1[v12] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

ValueMetadata *sub_1D9EC6964()
{
  result = qword_1EE0F2A00;
  if (!qword_1EE0F2A00)
  {
    result = &type metadata for CancellationReason;
    atomic_store(&type metadata for CancellationReason, &qword_1EE0F2A00);
  }

  return result;
}

uint64_t sub_1D9EC6994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EC69DC(uint64_t a1)
{
  v3 = v2;
  v4 = v1[5];
  v17 = v1[4];
  v15 = v1[7];
  v16 = v1[6];
  v5 = (*(*(v4 - 8) + 80) + 80) & ~*(*(v4 - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[8];
  v9 = v1[9];
  v10 = (v1 + ((*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D9E7ECAC;

  return sub_1D9EC2628(a1, v6, v7, v8, v9, v1 + v5, v11, v12);
}

uint64_t sub_1D9EC6B44(uint64_t a1)
{
  v2 = (*(*(*(v1 + 24) - 8) + 80) + 80) & ~*(*(*(v1 + 24) - 8) + 80);
  v3 = (*(*(*(v1 + 24) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + 40);
  return sub_1D9EC40DC(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), v1 + v2, *(v1 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + 16), *(v1 + v3), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_1D9EC6BE8(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_1D9EC56C4(a1, *(v1 + 48), *(v1 + 56));
}

uint64_t sub_1D9EC6BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceEnvelope();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EC6C5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C50, &qword_1D9F3D100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EC6CD8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_1D9EC6D20(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1D9EC2FD0(a1);
}

uint64_t sub_1D9EC6D2C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  return sub_1D9EC3934(a1, a2, a3);
}

uint64_t objectdestroy_55Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D9EC6D78()
{
  v1 = *(type metadata accessor for ServiceEnvelope() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));
}

uint64_t withTimeout<A>(policy:usesTask:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 88) = a3;
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = *a2;
  *(v6 + 89) = *(a2 + 8);
  return MEMORY[0x1EEE6DFA0](sub_1D9EC6E58, 0, 0);
}

uint64_t sub_1D9EC6E58()
{
  if (*(v0 + 89))
  {
    v14 = (*(v0 + 24) + **(v0 + 24));
    v1 = *(*(v0 + 24) + 4);
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1D9EC717C;
    v3 = *(v0 + 32);
    v4 = *(v0 + 16);

    return v14(v4);
  }

  else
  {
    v6 = *(v0 + 48);
    v7 = *(v0 + 40);
    v8 = *(v0 + 88);
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    v10 = *(v0 + 24);
    *(v9 + 16) = v7;
    *(v9 + 24) = v10;
    *(v9 + 40) = v8;
    *(v9 + 48) = v6;
    v11 = *(MEMORY[0x1E69E88A0] + 4);
    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    *v12 = v0;
    v12[1] = sub_1D9EC7040;
    v13 = *(v0 + 16);
    v16 = *(v0 + 40);

    return MEMORY[0x1EEE6DD58](v13);
  }
}

uint64_t sub_1D9EC7040()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9EC7270, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1D9EC717C()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D9EC7270()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D9EC72D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, double a7)
{
  *(v7 + 56) = a6;
  *(v7 + 48) = a7;
  *(v7 + 96) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = *(*(sub_1D9F2B59C() - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48) - 8) + 64) + 15;
  *(v7 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9EC73B0, 0, 0);
}

uint64_t sub_1D9EC73B0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 48);
  v18 = *(v0 + 96);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = sub_1D9F2B32C();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v5;
  v9[6] = v4;

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB73288, &qword_1D9F334E0);
  v10 = sub_1D9F2B3CC();
  sub_1D9EC7AD0(v1, &unk_1D9F3D128, v9, v10);
  sub_1D9EC8B0C(v1);
  v8(v1, 1, 1, v7);
  if (v18)
  {
    v11 = &unk_1D9F3D148;
  }

  else
  {
    v11 = &unk_1D9F3D138;
  }

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v2;
  v12[5] = v3;
  sub_1D9EC7AD0(v1, v11, v12, v10);
  sub_1D9EC8B0C(v1);
  v13 = *(MEMORY[0x1E69E8708] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_1D9EC75FC;
  v15 = *(v0 + 64);
  v16 = *(v0 + 24);

  return MEMORY[0x1EEE6DAC8](v15, 0, 0, v10);
}

uint64_t sub_1D9EC75FC()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1D9EC784C;
  }

  else
  {
    v3 = sub_1D9EC7710;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9EC7710()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = *(v1 - 8);
  result = (*(v3 + 48))(v2, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[9];
    v6 = v0[3];
    (*(v3 + 32))(v0[2], v2, v1);
    v7 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
    sub_1D9F2B3BC();

    v8 = v0[1];

    return v8();
  }

  return result;
}

uint64_t sub_1D9EC784C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73288, &qword_1D9F334E0);
  sub_1D9F2B3BC();

  v5 = *(v0 + 8);
  v6 = *(v0 + 88);

  return v5();
}

uint64_t sub_1D9EC78FC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D9E7ECAC;

  return sub_1D9EC72D4(a1, a2, v7, v8, v9, v6, v10);
}

uint64_t sub_1D9EC79D8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1D9E7ECAC;

  return v9(a1);
}

uint64_t sub_1D9EC7AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v23 - v11;
  sub_1D9EC92F8(a1, v23 - v11);
  v13 = sub_1D9F2B32C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1D9EC8B0C(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      v15 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_1D9F2B2CC();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D9F2B31C();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v5;
  v20 = *(a4 + 16);
  v21 = (v18 | v16);
  if (v18 | v16)
  {
    v24[0] = 0;
    v24[1] = 0;
    v21 = v24;
    v24[2] = v16;
    v24[3] = v18;
  }

  v23[1] = 1;
  v23[2] = v21;
  v23[3] = v19;
  swift_task_create();
}

uint64_t sub_1D9EC7CA4(double a1)
{
  *(v1 + 32) = a1;
  v2 = sub_1D9F2B73C();
  *(v1 + 40) = v2;
  v3 = *(v2 - 8);
  *(v1 + 48) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9EC7D64, 0, 0);
}

void sub_1D9EC7D64()
{
  v2 = *(v0 + 32) * 1000000000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = *(v0 + 56);
  v4 = 1000000000 * v2;
  v5 = (v2 * 0x3B9ACA00uLL) >> 64;
  sub_1D9F2BA9C();
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1D9EC7E90;
  v7 = *(v0 + 56);

  sub_1D9EC8CFC(v4, v5, 0, 0, 0);
}

uint64_t sub_1D9EC7E90()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D9EC8110;
  }

  else
  {
    v6 = sub_1D9EC8000;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D9EC8000()
{
  v1 = v0[4];
  sub_1D9F2B68C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA742F90](0xD000000000000010, 0x80000001D9F49680);
  sub_1D9F2B3DC();
  MEMORY[0x1DA742F90](46, 0xE100000000000000);
  v2 = v0[2];
  v3 = v0[3];
  sub_1D9EC91B4();
  swift_allocError();
  *v4 = v2;
  v4[1] = v3;
  swift_willThrow();
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D9EC8110()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D9EC8174(double a1)
{
  *(v1 + 40) = a1;
  v2 = type metadata accessor for WatchdogTimer.Configuration(0);
  *(v1 + 48) = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9EC8208, 0, 0);
}

uint64_t sub_1D9EC8208()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = type metadata accessor for WatchdogTimer(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  v8 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 16) = 0;
  *(v9 + 40) = 0;
  *(v7 + v8) = v9;
  v10 = v3 * 1000000000.0;
  if (COERCE__INT64(fabs(v3 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return MEMORY[0x1EEE6DE18]();
  }

  v11 = v2[5];
  *&v1[v11] = v10;
  v12 = *MEMORY[0x1E69E7F28];
  v13 = sub_1D9F2AF7C();
  v14 = *(*(v13 - 8) + 104);
  v14(&v1[v11], v12, v13);
  v15 = v2[6];
  *&v1[v15] = 0;
  v14(&v1[v15], v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
  v16 = *(sub_1D9F2B4CC() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D9F2F8F0;
  sub_1D9F2B4BC();
  *(v0 + 32) = v19;
  v20 = v2[7];
  sub_1D9EC9208(&qword_1EE0F10E8, MEMORY[0x1E69E80B0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
  sub_1D9EA1388();
  sub_1D9F2B5FC();
  v21 = &v1[v2[8]];
  sub_1D9F2AFDC();
  *v1 = 0xD00000000000005BLL;
  *(v1 + 1) = 0x80000001D9F496A0;
  sub_1D9EA13EC(v1, v7 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
  v22 = *(MEMORY[0x1E69E88F0] + 4);
  v23 = swift_task_alloc();
  *(v0 + 72) = v23;
  *v23 = v0;
  v23[1] = sub_1D9EC8578;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1D9EC8578()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_1D9EC87A4;
  }

  else
  {
    v3 = sub_1D9EC868C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9EC868C()
{
  v1 = v0[5];
  sub_1D9F2B68C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA742F90](0xD000000000000010, 0x80000001D9F49680);
  sub_1D9F2B3DC();
  MEMORY[0x1DA742F90](46, 0xE100000000000000);
  v2 = v0[2];
  v3 = v0[3];
  sub_1D9EC91B4();
  swift_allocError();
  *v4 = v2;
  v4[1] = v3;
  swift_willThrow();
  v6 = v0[7];
  v5 = v0[8];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D9EC87A4()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9EC8830()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D9EC8900;
  v3 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v0 + 40, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1D9EC92F0, v3, &type metadata for WatchdogTimer.Termination);
}

uint64_t sub_1D9EC8900()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1D9EC8A2C;
  }

  else
  {
    v3 = sub_1D9EC8A14;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D9EC8A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9E851B0;

  return sub_1D9EC79D8(a1, v4, v5, v7);
}

uint64_t sub_1D9EC8B0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9EC8B74()
{
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = *(v0 + 2);
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D9E851B0;

  return sub_1D9EC8174(v5);
}

uint64_t sub_1D9EC8C38()
{
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = *(v0 + 2);
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D9E851B0;

  return sub_1D9EC7CA4(v5);
}

uint64_t sub_1D9EC8CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1D9F2B71C();
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

  return MEMORY[0x1EEE6DFA0](sub_1D9EC8DFC, 0, 0);
}

uint64_t sub_1D9EC8DFC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_1D9F2B73C();
  v7 = sub_1D9EC9208(&qword_1ECB74C60, MEMORY[0x1E69E8820]);
  sub_1D9F2BA7C();
  sub_1D9EC9208(&qword_1ECB74C68, MEMORY[0x1E69E87E8]);
  sub_1D9F2B74C();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x1E69E8938] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_1D9EC8F8C;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x1EEE6DE58](v11, v0 + 2, v6, v7);
}

uint64_t sub_1D9EC8F8C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9EC9148, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_1D9EC9148()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

unint64_t sub_1D9EC91B4()
{
  result = qword_1ECB74C58;
  if (!qword_1ECB74C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74C58);
  }

  return result;
}

uint64_t sub_1D9EC9208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9EC9250(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D9E851B0;

  return sub_1D9EC8810(a1, v1);
}

uint64_t sub_1D9EC92F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73F00, &qword_1D9F35B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL ExecutionFailure.isDeveloperError.getter()
{
  v1 = type metadata accessor for ExecutionFailure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EC9454(v0, v4);
  v5 = swift_getEnumCaseMultiPayload() == 3;
  sub_1D9EC94B8(v4);
  return v5;
}

uint64_t type metadata accessor for ExecutionFailure()
{
  result = qword_1ECB74E50;
  if (!qword_1ECB74E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9EC9454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionFailure();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9EC94B8(uint64_t a1)
{
  v2 = type metadata accessor for ExecutionFailure();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExecutionFailure.localizedDeveloperErrorMessage.getter()
{
  v1 = type metadata accessor for ExecutionFailure();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D9EC9454(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    result = *v4;
    v6 = v4[1];
  }

  else
  {
    sub_1D9EC94B8(v4);
    return 0;
  }

  return result;
}

uint64_t sub_1D9EC95C4(char a1)
{
  result = 0x6F4C656369766564;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      v3 = 0x797469746E65;
      goto LABEL_12;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      v3 = 0x6E6F69746361;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F4E000000000000;
      break;
    case 8:
    case 12:
      result = 0xD00000000000001BLL;
      break;
    case 9:
      result = 0x4574694B6C6F6F74;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x6573616261746164;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x65706F6C65766564;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D9EC97EC(uint64_t a1)
{
  v2 = sub_1D9ECECA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9828(uint64_t a1)
{
  v2 = sub_1D9ECECA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9864(uint64_t a1)
{
  v2 = sub_1D9ECEC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC98A0(uint64_t a1)
{
  v2 = sub_1D9ECEC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC98DC(uint64_t a1)
{
  v2 = sub_1D9ECEBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9918(uint64_t a1)
{
  v2 = sub_1D9ECEBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9954(uint64_t a1)
{
  v2 = sub_1D9ECECF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9990(uint64_t a1)
{
  v2 = sub_1D9ECECF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC99CC(uint64_t a1)
{
  v2 = sub_1D9ECEDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9A08(uint64_t a1)
{
  v2 = sub_1D9ECEDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9ED03BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EC9A80(uint64_t a1)
{
  v2 = sub_1D9ECE8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9ABC(uint64_t a1)
{
  v2 = sub_1D9ECE8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D9EC9AF8()
{
  v1 = 0x797469746E656469;
  v2 = 0x65746F6D65527369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x4972656C646E6168;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D9EC9B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9ED095C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EC9BA4(uint64_t a1)
{
  v2 = sub_1D9ECEA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9BE0(uint64_t a1)
{
  v2 = sub_1D9ECEA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9C1C()
{
  v1 = 0x4972656C646E6168;
  if (*v0 != 1)
  {
    v1 = 0x65746F6D65527369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E656469;
  }
}

uint64_t sub_1D9EC9C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D9ED0AD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D9EC9CA4(uint64_t a1)
{
  v2 = sub_1D9ECEAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9CE0(uint64_t a1)
{
  v2 = sub_1D9ECEAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469746E656469 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9EC9DBC(uint64_t a1)
{
  v2 = sub_1D9ECEAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9DF8(uint64_t a1)
{
  v2 = sub_1D9ECEAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9E34(uint64_t a1)
{
  v2 = sub_1D9ECE9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9E70(uint64_t a1)
{
  v2 = sub_1D9ECE9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D9F498E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D9EC9F5C(uint64_t a1)
{
  v2 = sub_1D9ECE904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9EC9F98(uint64_t a1)
{
  v2 = sub_1D9ECE904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9EC9FD4(uint64_t a1)
{
  v2 = sub_1D9ECEE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA010(uint64_t a1)
{
  v2 = sub_1D9ECEE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA04C(uint64_t a1)
{
  v2 = sub_1D9ECED48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA088(uint64_t a1)
{
  v2 = sub_1D9ECED48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA0C4(uint64_t a1)
{
  v2 = sub_1D9ECE958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA100(uint64_t a1)
{
  v2 = sub_1D9ECE958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA13C(uint64_t a1)
{
  v2 = sub_1D9ECEB50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA178(uint64_t a1)
{
  v2 = sub_1D9ECEB50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA1B4(uint64_t a1)
{
  v2 = sub_1D9ECEE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA1F0(uint64_t a1)
{
  v2 = sub_1D9ECEE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA22C(uint64_t a1)
{
  v2 = sub_1D9ECEA00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA268(uint64_t a1)
{
  v2 = sub_1D9ECEA00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA2A4(uint64_t a1)
{
  v2 = sub_1D9ECED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA2E0(uint64_t a1)
{
  v2 = sub_1D9ECED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D9ECA31C(uint64_t a1)
{
  v2 = sub_1D9ECEBA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ECA358(uint64_t a1)
{
  v2 = sub_1D9ECEBA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecutionFailure.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C70, &qword_1D9F3D170);
  v173 = *(v2 - 8);
  v174 = v2;
  v3 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v172 = &v127 - v4;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C78, &qword_1D9F3D178);
  v168 = *(v169 - 8);
  v5 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v166 = &v127 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C80, &qword_1D9F3D180);
  v164 = *(v165 - 8);
  v7 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v127 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C88, &qword_1D9F3D188);
  v161 = *(v162 - 8);
  v9 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v160 = &v127 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C90, &qword_1D9F3D190);
  v176 = *(v11 - 8);
  v177 = v11;
  v12 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v175 = &v127 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74C98, &qword_1D9F3D198);
  v170 = *(v14 - 8);
  v171 = v14;
  v15 = *(v170 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v167 = &v127 - v16;
  v17 = sub_1D9F2AD7C();
  v18 = *(v17 - 8);
  v180 = v17;
  v181 = v18;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v179 = &v127 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v178 = &v127 - v22;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CA0, &qword_1D9F3D1A0);
  v158 = *(v159 - 8);
  v23 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v127 - v24;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CA8, &qword_1D9F3D1A8);
  v155 = *(v156 - 8);
  v25 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v127 - v26;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CB0, &qword_1D9F3D1B0);
  v152 = *(v153 - 8);
  v27 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v127 - v28;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CB8, &qword_1D9F3D1B8);
  v149 = *(v150 - 8);
  v29 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v127 - v30;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CC0, &qword_1D9F3D1C0);
  v146 = *(v147 - 8);
  v31 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v147);
  v145 = &v127 - v32;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CC8, &qword_1D9F3D1C8);
  v143 = *(v144 - 8);
  v33 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v144);
  v142 = &v127 - v34;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CD0, &qword_1D9F3D1D0);
  v140 = *(v141 - 8);
  v35 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v127 - v36;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CD8, &qword_1D9F3D1D8);
  v137 = *(v138 - 8);
  v37 = *(v137 + 64);
  MEMORY[0x1EEE9AC00](v138);
  v136 = &v127 - v38;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CE0, &qword_1D9F3D1E0);
  v134 = *(v135 - 8);
  v39 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v127 - v40;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CE8, &qword_1D9F3D1E8);
  v131 = *(v132 - 8);
  v41 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v127 - v42;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CF0, &qword_1D9F3D1F0);
  v128 = *(v129 - 8);
  v43 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v45 = &v127 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74CF8, &qword_1D9F3D1F8);
  v127 = *(v46 - 8);
  v47 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v127 - v48;
  v50 = type metadata accessor for ExecutionFailure();
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v127 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D00, &qword_1D9F3D200);
  v183 = *(v54 - 8);
  v184 = v54;
  v55 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v127 - v56;
  v58 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ECE8B0();
  v185 = v57;
  sub_1D9F2BB8C();
  sub_1D9EC9454(v182, v53);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v102 = *v53;
      v101 = *(v53 + 1);
      v103 = v53[16];
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v105 = *(v104 + 48);
      LODWORD(v177) = v53[*(v104 + 64)];
      v106 = v180;
      v107 = v181;
      (*(v181 + 32))(v178, &v53[v105], v180);
      LOBYTE(v187) = 12;
      sub_1D9ECEAA8();
      v108 = v167;
      v109 = v184;
      v110 = v185;
      sub_1D9F2B8FC();
      v179 = v102;
      v187 = v102;
      v188 = v101;
      v182 = v101;
      v79 = v103;
      v189 = v103;
      v190 = 0;
      sub_1D9E5A8BC();
      v111 = v171;
      v112 = v186;
      sub_1D9F2B9AC();
      v186 = v112;
      if (v112)
      {
        (*(v170 + 8))(v108, v111);
        (*(v107 + 8))(v178, v106);
        (*(v183 + 8))(v110, v109);
        v92 = v179;
        return sub_1D9E51DF0(v92, v182, v79);
      }

      v122 = v107;
      sub_1D9E51DF0(v179, v182, v79);
      LOBYTE(v187) = 1;
      sub_1D9ECEF98(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
      v123 = v178;
      v124 = v186;
      sub_1D9F2B9AC();
      if (v124)
      {
        (*(v170 + 8))(v108, v111);
        (*(v122 + 8))(v123, v106);
        return (*(v183 + 8))(v185, v184);
      }

      else
      {
        LOBYTE(v187) = 2;
        sub_1D9F2B96C();
        v125 = v184;
        v126 = v185;
        (*(v170 + 8))(v108, v111);
        (*(v122 + 8))(v123, v106);
        return (*(v183 + 8))(v126, v125);
      }

    case 2u:
      v77 = *v53;
      v78 = *(v53 + 1);
      v79 = v53[16];
      v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v81 = v80[12];
      LODWORD(v173) = v53[v80[16]];
      v82 = &v53[v80[20]];
      v84 = *v82;
      v83 = *(v82 + 1);
      v172 = v84;
      v174 = v83;
      v85 = v180;
      v86 = v181;
      (*(v181 + 32))(v179, &v53[v81], v180);
      LOBYTE(v187) = 13;
      sub_1D9ECEA54();
      v87 = v175;
      v89 = v184;
      v88 = v185;
      sub_1D9F2B8FC();
      v178 = v77;
      v187 = v77;
      v188 = v78;
      v182 = v78;
      v189 = v79;
      v190 = 0;
      sub_1D9E5A8BC();
      v90 = v177;
      v91 = v186;
      sub_1D9F2B9AC();
      v186 = v91;
      if (v91)
      {

        (*(v176 + 8))(v87, v90);
        (*(v86 + 8))(v179, v85);
        (*(v183 + 8))(v88, v89);
        v92 = v178;
        return sub_1D9E51DF0(v92, v182, v79);
      }

      else
      {
        sub_1D9E51DF0(v178, v182, v79);
        LOBYTE(v187) = 1;
        sub_1D9ECEF98(&qword_1EE0F3868, MEMORY[0x1E69695A8]);
        v120 = v179;
        v121 = v186;
        sub_1D9F2B9AC();
        if (v121)
        {

          (*(v176 + 8))(v87, v90);
          (*(v181 + 8))(v120, v85);
          return (*(v183 + 8))(v185, v89);
        }

        else
        {
          LOBYTE(v187) = 2;
          sub_1D9F2B96C();
          LOBYTE(v187) = 3;
          sub_1D9F2B95C();

          (*(v176 + 8))(v87, v90);
          (*(v181 + 8))(v120, v85);
          return (*(v183 + 8))(v185, v89);
        }
      }

    case 3u:
      v95 = *v53;
      v94 = *(v53 + 1);
      LOBYTE(v187) = 17;
      sub_1D9ECE904();
      v96 = v172;
      v97 = v184;
      v98 = v185;
      sub_1D9F2B8FC();
      v99 = v174;
      sub_1D9F2B90C();

      (*(v173 + 8))(v96, v99);
      return (*(v183 + 8))(v98, v97);
    case 4u:
      LOBYTE(v187) = 0;
      sub_1D9ECEE98();
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      (*(v127 + 8))(v49, v46);
      goto LABEL_25;
    case 5u:
      LOBYTE(v187) = 1;
      sub_1D9ECEE44();
      v115 = v184;
      v114 = v185;
      sub_1D9F2B8FC();
      (*(v128 + 8))(v45, v129);
      return (*(v183 + 8))(v114, v115);
    case 6u:
      LOBYTE(v187) = 2;
      sub_1D9ECEDF0();
      v117 = v130;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v131 + 8);
      v71 = v117;
      v72 = &v164;
      goto LABEL_24;
    case 7u:
      LOBYTE(v187) = 3;
      sub_1D9ECED9C();
      v100 = v133;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v134 + 8);
      v71 = v100;
      v72 = &v167;
      goto LABEL_24;
    case 8u:
      LOBYTE(v187) = 4;
      sub_1D9ECED48();
      v119 = v136;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v137 + 8);
      v71 = v119;
      v72 = &v170;
      goto LABEL_24;
    case 9u:
      LOBYTE(v187) = 5;
      sub_1D9ECECF4();
      v76 = v139;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v140 + 8);
      v71 = v76;
      v72 = &v173;
      goto LABEL_24;
    case 0xAu:
      LOBYTE(v187) = 6;
      sub_1D9ECECA0();
      v118 = v142;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v143 + 8);
      v71 = v118;
      v72 = &v176;
      goto LABEL_24;
    case 0xBu:
      LOBYTE(v187) = 7;
      sub_1D9ECEC4C();
      v74 = v145;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v146 + 8);
      v71 = v74;
      v72 = &v179;
      goto LABEL_24;
    case 0xCu:
      LOBYTE(v187) = 8;
      sub_1D9ECEBF8();
      v75 = v148;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v149 + 8);
      v71 = v75;
      v72 = &v182;
      goto LABEL_24;
    case 0xDu:
      LOBYTE(v187) = 9;
      sub_1D9ECEBA4();
      v116 = v151;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v152 + 8);
      v71 = v116;
      v72 = &v185;
      goto LABEL_24;
    case 0xEu:
      LOBYTE(v187) = 10;
      sub_1D9ECEB50();
      v73 = v154;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v155 + 8);
      v71 = v73;
      v72 = &v188;
      goto LABEL_24;
    case 0xFu:
      LOBYTE(v187) = 14;
      sub_1D9ECEA00();
      v93 = v160;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v161 + 8);
      v71 = v93;
      v72 = &v191;
      goto LABEL_24;
    case 0x10u:
      LOBYTE(v187) = 15;
      sub_1D9ECE9AC();
      v67 = v163;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      v70 = *(v164 + 8);
      v71 = v67;
      v72 = &v192;
LABEL_24:
      v70(v71, *(v72 - 32));
      goto LABEL_25;
    case 0x11u:
      LOBYTE(v187) = 16;
      sub_1D9ECE958();
      v113 = v166;
      v68 = v184;
      v69 = v185;
      sub_1D9F2B8FC();
      (*(v168 + 8))(v113, v169);
LABEL_25:
      result = (*(v183 + 8))(v69, v68);
      break;
    default:
      v59 = *v53;
      v60 = *(v53 + 1);
      v61 = v53[16];
      LOBYTE(v187) = 11;
      sub_1D9ECEAFC();
      v62 = v157;
      v63 = v184;
      v64 = v185;
      sub_1D9F2B8FC();
      v187 = v59;
      v188 = v60;
      v189 = v61;
      sub_1D9E5A8BC();
      v65 = v159;
      sub_1D9F2B9AC();
      (*(v158 + 8))(v62, v65);
      (*(v183 + 8))(v64, v63);
      result = sub_1D9E51DF0(v59, v60, v61);
      break;
  }

  return result;
}

uint64_t ExecutionFailure.hash(into:)()
{
  v1 = v0;
  v2 = sub_1D9F2AD7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = type metadata accessor for ExecutionFailure();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9EC9454(v1, v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v13;
      v30 = *(v13 + 1);
      v31 = v13[16];
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v33 = v13[*(v32 + 64)];
      (*(v3 + 32))(v9, &v13[*(v32 + 48)], v2);
      MEMORY[0x1DA7438F0](12);
      v35 = v29;
      v36 = v30;
      v37 = v31;
      CustomActionIdentity.hash(into:)();
      sub_1D9E51DF0(v29, v30, v31);
      sub_1D9ECEF98(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
      sub_1D9F2B0EC();
      sub_1D9F2BB1C();
      return (*(v3 + 8))(v9, v2);
    case 2u:
      v19 = *v13;
      v20 = *(v13 + 1);
      v21 = v13[16];
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v23 = v22[12];
      v24 = v13[v22[16]];
      v25 = &v13[v22[20]];
      v26 = *(v25 + 1);
      v34 = *v25;
      (*(v3 + 32))(v7, &v13[v23], v2);
      MEMORY[0x1DA7438F0](13);
      v35 = v19;
      v36 = v20;
      v37 = v21;
      CustomActionIdentity.hash(into:)();
      sub_1D9E51DF0(v19, v20, v21);
      sub_1D9ECEF98(&qword_1EE0F22A8, MEMORY[0x1E69695A8]);
      sub_1D9F2B0EC();
      sub_1D9F2BB1C();
      sub_1D9F2B18C();

      return (*(v3 + 8))(v7, v2);
    case 3u:
      v28 = *v13;
      v27 = *(v13 + 1);
      MEMORY[0x1DA7438F0](17);
      if (!v27)
      {
        return sub_1D9F2BB1C();
      }

      sub_1D9F2BB1C();
      sub_1D9F2B18C();

    case 4u:
      v18 = 0;
      goto LABEL_22;
    case 5u:
      v18 = 1;
      goto LABEL_22;
    case 6u:
      v18 = 2;
      goto LABEL_22;
    case 7u:
      v18 = 3;
      goto LABEL_22;
    case 8u:
      v18 = 4;
      goto LABEL_22;
    case 9u:
      v18 = 5;
      goto LABEL_22;
    case 0xAu:
      v18 = 6;
      goto LABEL_22;
    case 0xBu:
      v18 = 7;
      goto LABEL_22;
    case 0xCu:
      v18 = 8;
      goto LABEL_22;
    case 0xDu:
      v18 = 9;
      goto LABEL_22;
    case 0xEu:
      v18 = 10;
      goto LABEL_22;
    case 0xFu:
      v18 = 14;
      goto LABEL_22;
    case 0x10u:
      v18 = 15;
      goto LABEL_22;
    case 0x11u:
      v18 = 16;
LABEL_22:
      result = MEMORY[0x1DA7438F0](v18);
      break;
    default:
      v14 = *v13;
      v15 = *(v13 + 1);
      v16 = v13[16];
      MEMORY[0x1DA7438F0](11);
      v35 = v14;
      v36 = v15;
      v37 = v16;
      CustomActionIdentity.hash(into:)();
      result = sub_1D9E51DF0(v14, v15, v16);
      break;
  }

  return result;
}

uint64_t ExecutionFailure.hashValue.getter()
{
  sub_1D9F2BAFC();
  ExecutionFailure.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t ExecutionFailure.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v202 = a2;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DB0, &qword_1D9F3D218);
  v183 = *(v207 - 8);
  v3 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v207);
  v201 = &v147 - v4;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DB8, &qword_1D9F3D220);
  v179 = *(v180 - 8);
  v5 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v199 = &v147 - v6;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DC0, &qword_1D9F3D228);
  v177 = *(v178 - 8);
  v7 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v198 = &v147 - v8;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DC8, &qword_1D9F3D230);
  v175 = *(v176 - 8);
  v9 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v197 = &v147 - v10;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DD0, &qword_1D9F3D238);
  v203 = *(v184 - 8);
  v11 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v184);
  v206 = &v147 - v12;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DD8, &qword_1D9F3D240);
  v181 = *(v182 - 8);
  v13 = *(v181 + 64);
  MEMORY[0x1EEE9AC00](v182);
  v200 = &v147 - v14;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DE0, &qword_1D9F3D248);
  v173 = *(v174 - 8);
  v15 = *(v173 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v196 = &v147 - v16;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DE8, &qword_1D9F3D250);
  v171 = *(v172 - 8);
  v17 = *(v171 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v195 = &v147 - v18;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DF0, &qword_1D9F3D258);
  v169 = *(v170 - 8);
  v19 = *(v169 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v194 = &v147 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74DF8, &qword_1D9F3D260);
  v167 = *(v168 - 8);
  v21 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v168);
  v193 = &v147 - v22;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E00, &qword_1D9F3D268);
  v165 = *(v166 - 8);
  v23 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v192 = &v147 - v24;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E08, &qword_1D9F3D270);
  v164 = *(v205 - 8);
  v25 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v191 = &v147 - v26;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E10, &qword_1D9F3D278);
  v162 = *(v163 - 8);
  v27 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v163);
  v190 = &v147 - v28;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E18, &qword_1D9F3D280);
  v160 = *(v161 - 8);
  v29 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v161);
  v189 = &v147 - v30;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E20, &qword_1D9F3D288);
  v158 = *(v159 - 8);
  v31 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v159);
  v188 = &v147 - v32;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E28, &qword_1D9F3D290);
  v156 = *(v157 - 8);
  v33 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v157);
  v187 = &v147 - v34;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E30, &qword_1D9F3D298);
  v154 = *(v155 - 8);
  v35 = *(v154 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v186 = &v147 - v36;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E38, &qword_1D9F3D2A0);
  v152 = *(v153 - 8);
  v37 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v153);
  v185 = &v147 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74E40, &unk_1D9F3D2A8);
  v208 = *(v39 - 8);
  v209 = v39;
  v40 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v147 - v41;
  v204 = type metadata accessor for ExecutionFailure();
  v43 = *(*(v204 - 8) + 64);
  v44 = MEMORY[0x1EEE9AC00](v204);
  v46 = (&v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x1EEE9AC00](v44);
  v49 = &v147 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v147 - v51;
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v147 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v147 - v56;
  v58 = a1[3];
  v59 = a1[4];
  v217 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_1D9ECE8B0();
  v60 = v210;
  sub_1D9F2BB7C();
  if (v60)
  {
LABEL_8:
    v78 = v217;
    return __swift_destroy_boxed_opaque_existential_1(v78);
  }

  v147 = v55;
  v148 = v46;
  v149 = v52;
  v61 = v205;
  v150 = v49;
  v210 = 0;
  v62 = v206;
  v63 = v207;
  v64 = v204;
  v151 = v57;
  v65 = v209;
  v66 = sub_1D9F2B8DC();
  v67 = (2 * *(v66 + 16)) | 1;
  v213 = v66;
  v214 = v66 + 32;
  v215 = 0;
  v216 = v67;
  v68 = sub_1D9E4170C();
  v69 = v42;
  if (v215 != v216 >> 1)
  {
LABEL_6:
    v73 = v65;
    v74 = sub_1D9F2B6BC();
    swift_allocError();
    v76 = v75;
    v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v76 = v64;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v74 - 8) + 104))(v76, *MEMORY[0x1E69E6AF8], v74);
    swift_willThrow();
    (*(v208 + 8))(v69, v73);
LABEL_7:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v68)
  {
    case 0:
      LOBYTE(v211) = 0;
      sub_1D9ECEE98();
      v70 = v185;
      v71 = v210;
      sub_1D9F2B7DC();
      if (v71)
      {
        goto LABEL_43;
      }

      (*(v152 + 8))(v70, v153);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 1:
      LOBYTE(v211) = 1;
      sub_1D9ECEE44();
      v104 = v186;
      v105 = v210;
      sub_1D9F2B7DC();
      if (v105)
      {
        goto LABEL_43;
      }

      (*(v154 + 8))(v104, v155);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 2:
      LOBYTE(v211) = 2;
      sub_1D9ECEDF0();
      v96 = v187;
      v97 = v210;
      sub_1D9F2B7DC();
      if (v97)
      {
        goto LABEL_43;
      }

      (*(v156 + 8))(v96, v157);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 3:
      LOBYTE(v211) = 3;
      sub_1D9ECED9C();
      v100 = v188;
      v101 = v210;
      sub_1D9F2B7DC();
      if (v101)
      {
        goto LABEL_43;
      }

      (*(v158 + 8))(v100, v159);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 4:
      LOBYTE(v211) = 4;
      sub_1D9ECED48();
      v88 = v189;
      v89 = v210;
      sub_1D9F2B7DC();
      if (v89)
      {
        goto LABEL_43;
      }

      (*(v160 + 8))(v88, v161);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 5:
      LOBYTE(v211) = 5;
      sub_1D9ECECF4();
      v108 = v190;
      v109 = v210;
      sub_1D9F2B7DC();
      if (v109)
      {
        goto LABEL_43;
      }

      (*(v162 + 8))(v108, v163);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 6:
      LOBYTE(v211) = 6;
      sub_1D9ECECA0();
      v114 = v191;
      v115 = v210;
      sub_1D9F2B7DC();
      if (v115)
      {
        goto LABEL_43;
      }

      (*(v164 + 8))(v114, v61);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 7:
      LOBYTE(v211) = 7;
      sub_1D9ECEC4C();
      v102 = v192;
      v103 = v210;
      sub_1D9F2B7DC();
      if (v103)
      {
        goto LABEL_43;
      }

      (*(v165 + 8))(v102, v166);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 8:
      LOBYTE(v211) = 8;
      sub_1D9ECEBF8();
      v118 = v193;
      v119 = v210;
      sub_1D9F2B7DC();
      if (v119)
      {
        goto LABEL_43;
      }

      (*(v167 + 8))(v118, v168);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 9:
      LOBYTE(v211) = 9;
      sub_1D9ECEBA4();
      v94 = v194;
      v95 = v210;
      sub_1D9F2B7DC();
      if (v95)
      {
        goto LABEL_43;
      }

      (*(v169 + 8))(v94, v170);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 10:
      LOBYTE(v211) = 10;
      sub_1D9ECEB50();
      v116 = v195;
      v117 = v210;
      sub_1D9F2B7DC();
      if (v117)
      {
        goto LABEL_43;
      }

      (*(v171 + 8))(v116, v172);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 11:
      LOBYTE(v211) = 11;
      sub_1D9ECEAFC();
      v84 = v196;
      v85 = v210;
      sub_1D9F2B7DC();
      if (v85)
      {
        goto LABEL_43;
      }

      sub_1D9E5AB24();
      v86 = v174;
      sub_1D9F2B89C();
      v87 = v208;
      (*(v173 + 8))(v84, v86);
      (*(v87 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v125 = v212;
      v126 = v147;
      *v147 = v211;
      *(v126 + 16) = v125;
      swift_storeEnumTagMultiPayload();
      v127 = v126;
      goto LABEL_48;
    case 12:
      LOBYTE(v211) = 12;
      sub_1D9ECEAA8();
      v90 = v200;
      v91 = v210;
      sub_1D9F2B7DC();
      if (v91)
      {
        goto LABEL_43;
      }

      LOBYTE(v211) = 0;
      sub_1D9E5AB24();
      v92 = v182;
      sub_1D9F2B89C();
      v93 = v208;
      v128 = v90;
      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v129 = *(v210 + 48);
      sub_1D9F2AD7C();
      LOBYTE(v211) = 1;
      sub_1D9ECEF98(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
      v207 = v129;
      v130 = v92;
      sub_1D9F2B89C();
      v137 = v210;
      LOBYTE(v211) = 2;
      v138 = sub_1D9F2B85C();
      v140 = *(v137 + 64);
      v141 = v138;
      (*(v181 + 8))(v128, v130);
      (*(v93 + 8))(v69, v209);
      swift_unknownObjectRelease();
      v142 = v149;
      v149[v140] = v141 & 1;
      swift_storeEnumTagMultiPayload();
      v127 = v142;
      goto LABEL_48;
    case 13:
      LOBYTE(v211) = 13;
      sub_1D9ECEA54();
      v110 = v210;
      sub_1D9F2B7DC();
      if (v110)
      {
        goto LABEL_43;
      }

      LOBYTE(v211) = 0;
      sub_1D9E5AB24();
      v111 = v184;
      v112 = v62;
      sub_1D9F2B89C();
      v113 = v208;
      v210 = v69;
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v135 = v111;
      v136 = v134[12];
      sub_1D9F2AD7C();
      LOBYTE(v211) = 1;
      sub_1D9ECEF98(&qword_1EE0F3860, MEMORY[0x1E69695A8]);
      sub_1D9F2B89C();
      LOBYTE(v211) = 2;
      v139 = sub_1D9F2B85C();
      v143 = v150;
      v150[v134[16]] = v139 & 1;
      LOBYTE(v211) = 3;
      v205 = sub_1D9F2B84C();
      v207 = v144;
      v145 = (v143 + v134[20]);
      (*(v203 + 8))(v112, v135);
      (*(v113 + 8))(v210, v209);
      swift_unknownObjectRelease();
      v146 = v207;
      *v145 = v205;
      v145[1] = v146;
      swift_storeEnumTagMultiPayload();
      v127 = v143;
      goto LABEL_48;
    case 14:
      LOBYTE(v211) = 14;
      sub_1D9ECEA00();
      v82 = v197;
      v83 = v210;
      sub_1D9F2B7DC();
      if (v83)
      {
        goto LABEL_43;
      }

      (*(v175 + 8))(v82, v176);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 15:
      LOBYTE(v211) = 15;
      sub_1D9ECE9AC();
      v98 = v198;
      v99 = v210;
      sub_1D9F2B7DC();
      if (v99)
      {
        goto LABEL_43;
      }

      (*(v177 + 8))(v98, v178);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
      goto LABEL_46;
    case 16:
      LOBYTE(v211) = 16;
      sub_1D9ECE958();
      v80 = v199;
      v81 = v210;
      sub_1D9F2B7DC();
      if (v81)
      {
LABEL_43:
        (*(v208 + 8))(v42, v65);
        goto LABEL_7;
      }

      (*(v179 + 8))(v80, v180);
      (*(v208 + 8))(v42, v65);
      swift_unknownObjectRelease();
      v72 = v151;
LABEL_46:
      swift_storeEnumTagMultiPayload();
      goto LABEL_47;
    case 17:
      LOBYTE(v211) = 17;
      sub_1D9ECE904();
      v106 = v201;
      v107 = v210;
      sub_1D9F2B7DC();
      if (v107)
      {
        (*(v208 + 8))(v42, v65);
        swift_unknownObjectRelease();
        v78 = v217;
      }

      else
      {
        v120 = v65;
        v121 = sub_1D9F2B7FC();
        v122 = v106;
        v123 = v208;
        v132 = v131;
        (*(v183 + 8))(v122, v63);
        (*(v123 + 8))(v42, v120);
        swift_unknownObjectRelease();
        v133 = v148;
        *v148 = v121;
        v133[1] = v132;
        swift_storeEnumTagMultiPayload();
        v127 = v133;
LABEL_48:
        v72 = v151;
        sub_1D9ECEEEC(v127, v151);
LABEL_47:
        v124 = v217;
        sub_1D9ECEEEC(v72, v202);
        v78 = v124;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_1(v78);
}

uint64_t sub_1D9ECDE54()
{
  sub_1D9F2BAFC();
  ExecutionFailure.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ECDE98()
{
  sub_1D9F2BAFC();
  ExecutionFailure.hash(into:)();
  return sub_1D9F2BB4C();
}

uint64_t _s29VisualActionPredictionSupport16ExecutionFailureO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9F2AD7C();
  v5 = *(v4 - 8);
  v112 = v4;
  v113 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v111 = &v102 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v102 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v110 = &v102 - v14;
  v15 = type metadata accessor for ExecutionFailure();
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v102 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v102 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v102 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74FD8, &qword_1D9F3E4C8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v32 = &v102 - v31;
  v33 = &v102 + *(v30 + 56) - v31;
  sub_1D9EC9454(a1, &v102 - v31);
  sub_1D9EC9454(a2, v33);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v108 = v32;
      sub_1D9EC9454(v32, v25);
      v67 = *(v25 + 1);
      v111 = *v25;
      v68 = v25[16];
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D40, &qword_1D9F3D210);
      v70 = *(v69 + 48);
      v71 = *(v69 + 64);
      v72 = v25[v71];
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v74 = v113;
      if (EnumCaseMultiPayload != 1)
      {
        (*(v113 + 8))(&v25[v70], v112);
        sub_1D9E51DF0(v111, v67, v68);
        goto LABEL_54;
      }

      LODWORD(v105) = v72;
      v75 = *(v33 + 1);
      v109 = *v33;
      LODWORD(v104) = v33[v71];
      LODWORD(v107) = v68;
      v106 = v67;
      v76 = *(v113 + 32);
      v77 = v33[16];
      v78 = v112;
      v76(v110, &v25[v70], v112);
      v76(v13, &v33[v70], v78);
      v79 = v111;
      v80 = v106;
      v117 = v111;
      v118 = v106;
      v81 = v107;
      v119 = v107;
      v82 = v109;
      v114 = v109;
      v115 = v75;
      v116 = v77;
      v83 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(&v117, &v114);
      sub_1D9E51DF0(v82, v75, v77);
      sub_1D9E51DF0(v79, v80, v81);
      if ((v83 & 1) == 0)
      {
        v96 = *(v74 + 8);
        v96(v13, v78);
        v96(v110, v78);
        goto LABEL_61;
      }

      v84 = v110;
      v85 = sub_1D9F2AD3C();
      v86 = *(v74 + 8);
      v86(v13, v78);
      v86(v84, v78);
      v87 = v108;
      if ((v85 & 1) == 0)
      {
        goto LABEL_66;
      }

      v88 = v105 ^ v104;
      sub_1D9EC94B8(v108);
      v89 = v88 ^ 1;
      return v89 & 1;
    case 2u:
      v108 = v32;
      sub_1D9EC9454(v32, v22);
      v38 = *v22;
      v37 = *(v22 + 1);
      v39 = v22[16];
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74D30, &qword_1D9F3D208);
      v41 = v40[12];
      v42 = v40[16];
      LODWORD(v110) = v22[v42];
      v43 = v40[20];
      v44 = *&v22[v43 + 8];
      v107 = *&v22[v43];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D9E51DF0(v38, v37, v39);

        (*(v113 + 8))(&v22[v41], v112);
LABEL_54:
        v32 = v108;
        goto LABEL_55;
      }

      v45 = *(v33 + 1);
      v104 = *v33;
      v103 = v33[v42];
      v46 = *&v33[v43 + 8];
      v102 = *&v33[v43];
      v105 = v46;
      v106 = v44;
      v47 = *(v113 + 32);
      v48 = v33[16];
      v49 = &v22[v41];
      v50 = v112;
      v47(v111, v49, v112);
      v51 = &v33[v41];
      v52 = v109;
      v47(v109, v51, v50);
      v117 = v38;
      v118 = v37;
      v119 = v39;
      v53 = v104;
      v114 = v104;
      v115 = v45;
      v116 = v48;
      v54 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(&v117, &v114);
      sub_1D9E51DF0(v53, v45, v48);
      sub_1D9E51DF0(v38, v37, v39);
      if ((v54 & 1) == 0)
      {

        v95 = *(v113 + 8);
        v95(v52, v50);
        v95(v111, v50);
LABEL_61:
        sub_1D9EC94B8(v108);
        goto LABEL_56;
      }

      v55 = v105;
      v56 = v111;
      v57 = sub_1D9F2AD3C();
      v58 = v108;
      if ((v57 & 1) == 0)
      {

        v98 = *(v113 + 8);
        v98(v52, v50);
        v98(v56, v50);
        goto LABEL_68;
      }

      v59 = v113;
      if (v110 != v103)
      {

        v60 = *(v59 + 8);
        v60(v52, v50);
        v60(v56, v50);
LABEL_68:
        sub_1D9EC94B8(v58);
        goto LABEL_56;
      }

      if (v107 == v102 && v106 == v55)
      {

        v99 = *(v59 + 8);
        v99(v52, v50);
        v99(v56, v50);
        v90 = v58;
      }

      else
      {
        v100 = sub_1D9F2BA1C();

        v101 = *(v59 + 8);
        v101(v52, v50);
        v101(v56, v50);
        if ((v100 & 1) == 0)
        {
          goto LABEL_68;
        }

        v90 = v58;
      }

LABEL_50:
      sub_1D9EC94B8(v90);
      v89 = 1;
      return v89 & 1;
    case 3u:
      sub_1D9EC9454(v32, v19);
      v62 = *v19;
      v61 = v19[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {

LABEL_55:
        sub_1D9ED0BF0(v32);
        goto LABEL_56;
      }

      v63 = *(v33 + 1);
      if (!v61)
      {
        if (!v63)
        {
          goto LABEL_49;
        }

        v97 = *(v33 + 1);
LABEL_64:

        goto LABEL_65;
      }

      if (!v63)
      {
        goto LABEL_64;
      }

      if (v62 == *v33 && v61 == v63)
      {

        goto LABEL_49;
      }

      v65 = *(v33 + 1);
      v66 = sub_1D9F2BA1C();

      if (v66)
      {
LABEL_49:
        v90 = v32;
        goto LABEL_50;
      }

LABEL_65:
      v87 = v32;
LABEL_66:
      sub_1D9EC94B8(v87);
LABEL_56:
      v89 = 0;
      return v89 & 1;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_49;
      }

      goto LABEL_55;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    default:
      sub_1D9EC9454(v32, v27);
      v35 = *v27;
      v34 = *(v27 + 1);
      v36 = v27[16];
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1D9E51DF0(v35, v34, v36);
        goto LABEL_55;
      }

      v92 = *v33;
      v93 = *(v33 + 1);
      v94 = v33[16];
      v117 = v35;
      v118 = v34;
      v119 = v36;
      v114 = v92;
      v115 = v93;
      v116 = v94;
      v89 = _s29VisualActionPredictionSupport06CustomB8IdentityO2eeoiySbAC_ACtFZ_0(&v117, &v114);
      sub_1D9E51DF0(v92, v93, v94);
      sub_1D9E51DF0(v35, v34, v36);
      sub_1D9EC94B8(v32);
      return v89 & 1;
  }
}

unint64_t sub_1D9ECE8B0()
{
  result = qword_1ECB74D08;
  if (!qword_1ECB74D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D08);
  }

  return result;
}

unint64_t sub_1D9ECE904()
{
  result = qword_1ECB74D10;
  if (!qword_1ECB74D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D10);
  }

  return result;
}

unint64_t sub_1D9ECE958()
{
  result = qword_1ECB74D18;
  if (!qword_1ECB74D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D18);
  }

  return result;
}

unint64_t sub_1D9ECE9AC()
{
  result = qword_1ECB74D20;
  if (!qword_1ECB74D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D20);
  }

  return result;
}

unint64_t sub_1D9ECEA00()
{
  result = qword_1ECB74D28;
  if (!qword_1ECB74D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D28);
  }

  return result;
}

unint64_t sub_1D9ECEA54()
{
  result = qword_1ECB74D38;
  if (!qword_1ECB74D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D38);
  }

  return result;
}

unint64_t sub_1D9ECEAA8()
{
  result = qword_1ECB74D48;
  if (!qword_1ECB74D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D48);
  }

  return result;
}

unint64_t sub_1D9ECEAFC()
{
  result = qword_1ECB74D50;
  if (!qword_1ECB74D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D50);
  }

  return result;
}

unint64_t sub_1D9ECEB50()
{
  result = qword_1ECB74D58;
  if (!qword_1ECB74D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D58);
  }

  return result;
}

unint64_t sub_1D9ECEBA4()
{
  result = qword_1ECB74D60;
  if (!qword_1ECB74D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D60);
  }

  return result;
}

unint64_t sub_1D9ECEBF8()
{
  result = qword_1ECB74D68;
  if (!qword_1ECB74D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D68);
  }

  return result;
}

unint64_t sub_1D9ECEC4C()
{
  result = qword_1ECB74D70;
  if (!qword_1ECB74D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D70);
  }

  return result;
}

unint64_t sub_1D9ECECA0()
{
  result = qword_1ECB74D78;
  if (!qword_1ECB74D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D78);
  }

  return result;
}

unint64_t sub_1D9ECECF4()
{
  result = qword_1ECB74D80;
  if (!qword_1ECB74D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D80);
  }

  return result;
}

unint64_t sub_1D9ECED48()
{
  result = qword_1ECB74D88;
  if (!qword_1ECB74D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D88);
  }

  return result;
}

unint64_t sub_1D9ECED9C()
{
  result = qword_1ECB74D90;
  if (!qword_1ECB74D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D90);
  }

  return result;
}

unint64_t sub_1D9ECEDF0()
{
  result = qword_1ECB74D98;
  if (!qword_1ECB74D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74D98);
  }

  return result;
}

unint64_t sub_1D9ECEE44()
{
  result = qword_1ECB74DA0;
  if (!qword_1ECB74DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74DA0);
  }

  return result;
}

unint64_t sub_1D9ECEE98()
{
  result = qword_1ECB74DA8;
  if (!qword_1ECB74DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74DA8);
  }

  return result;
}

uint64_t sub_1D9ECEEEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutionFailure();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9ECEF98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D9ECEFE0()
{
  sub_1D9ECF07C();
  if (v0 <= 0x3F)
  {
    sub_1D9ECF0AC();
    if (v1 <= 0x3F)
    {
      sub_1D9ECF120(319);
      if (v2 <= 0x3F)
      {
        sub_1D9ECF23C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1D9ECF07C()
{
  result = qword_1ECB74E60;
  if (!qword_1ECB74E60)
  {
    result = &type metadata for CustomActionIdentity;
    atomic_store(&type metadata for CustomActionIdentity, &qword_1ECB74E60);
  }

  return result;
}

void sub_1D9ECF0AC()
{
  if (!qword_1ECB74E68)
  {
    sub_1D9F2AD7C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECB74E68);
    }
  }
}

void sub_1D9ECF120(uint64_t a1)
{
  if (!qword_1ECB74E70)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1D9F2AD7C();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ECB74E70);
    }
  }
}

void sub_1D9ECF23C()
{
  if (!qword_1ECB74E78)
  {
    sub_1D9E95A38();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECB74E78);
    }
  }
}

uint64_t getEnumTagSinglePayload for ExecutionFailure.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExecutionFailure.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9ECF4F8()
{
  result = qword_1ECB74E80;
  if (!qword_1ECB74E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E80);
  }

  return result;
}

unint64_t sub_1D9ECF550()
{
  result = qword_1ECB74E88;
  if (!qword_1ECB74E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E88);
  }

  return result;
}

unint64_t sub_1D9ECF5A8()
{
  result = qword_1ECB74E90;
  if (!qword_1ECB74E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E90);
  }

  return result;
}

unint64_t sub_1D9ECF600()
{
  result = qword_1ECB74E98;
  if (!qword_1ECB74E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74E98);
  }

  return result;
}

unint64_t sub_1D9ECF658()
{
  result = qword_1ECB74EA0;
  if (!qword_1ECB74EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EA0);
  }

  return result;
}

unint64_t sub_1D9ECF6B0()
{
  result = qword_1ECB74EA8;
  if (!qword_1ECB74EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EA8);
  }

  return result;
}

unint64_t sub_1D9ECF708()
{
  result = qword_1ECB74EB0;
  if (!qword_1ECB74EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EB0);
  }

  return result;
}

unint64_t sub_1D9ECF760()
{
  result = qword_1ECB74EB8;
  if (!qword_1ECB74EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EB8);
  }

  return result;
}

unint64_t sub_1D9ECF7B8()
{
  result = qword_1ECB74EC0;
  if (!qword_1ECB74EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EC0);
  }

  return result;
}

unint64_t sub_1D9ECF810()
{
  result = qword_1ECB74EC8;
  if (!qword_1ECB74EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EC8);
  }

  return result;
}

unint64_t sub_1D9ECF868()
{
  result = qword_1ECB74ED0;
  if (!qword_1ECB74ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74ED0);
  }

  return result;
}

unint64_t sub_1D9ECF8C0()
{
  result = qword_1ECB74ED8;
  if (!qword_1ECB74ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74ED8);
  }

  return result;
}

unint64_t sub_1D9ECF918()
{
  result = qword_1ECB74EE0;
  if (!qword_1ECB74EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EE0);
  }

  return result;
}

unint64_t sub_1D9ECF970()
{
  result = qword_1ECB74EE8;
  if (!qword_1ECB74EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EE8);
  }

  return result;
}

unint64_t sub_1D9ECF9C8()
{
  result = qword_1ECB74EF0;
  if (!qword_1ECB74EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EF0);
  }

  return result;
}

unint64_t sub_1D9ECFA20()
{
  result = qword_1ECB74EF8;
  if (!qword_1ECB74EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74EF8);
  }

  return result;
}

unint64_t sub_1D9ECFA78()
{
  result = qword_1ECB74F00;
  if (!qword_1ECB74F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F00);
  }

  return result;
}

unint64_t sub_1D9ECFAD0()
{
  result = qword_1ECB74F08;
  if (!qword_1ECB74F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F08);
  }

  return result;
}

unint64_t sub_1D9ECFB28()
{
  result = qword_1ECB74F10;
  if (!qword_1ECB74F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F10);
  }

  return result;
}

unint64_t sub_1D9ECFB80()
{
  result = qword_1ECB74F18;
  if (!qword_1ECB74F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F18);
  }

  return result;
}

unint64_t sub_1D9ECFBD8()
{
  result = qword_1ECB74F20;
  if (!qword_1ECB74F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F20);
  }

  return result;
}

unint64_t sub_1D9ECFC30()
{
  result = qword_1ECB74F28;
  if (!qword_1ECB74F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F28);
  }

  return result;
}

unint64_t sub_1D9ECFC88()
{
  result = qword_1ECB74F30;
  if (!qword_1ECB74F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F30);
  }

  return result;
}

unint64_t sub_1D9ECFCE0()
{
  result = qword_1ECB74F38;
  if (!qword_1ECB74F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F38);
  }

  return result;
}

unint64_t sub_1D9ECFD38()
{
  result = qword_1ECB74F40;
  if (!qword_1ECB74F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F40);
  }

  return result;
}

unint64_t sub_1D9ECFD90()
{
  result = qword_1ECB74F48;
  if (!qword_1ECB74F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F48);
  }

  return result;
}

unint64_t sub_1D9ECFDE8()
{
  result = qword_1ECB74F50;
  if (!qword_1ECB74F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F50);
  }

  return result;
}

unint64_t sub_1D9ECFE40()
{
  result = qword_1ECB74F58;
  if (!qword_1ECB74F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F58);
  }

  return result;
}

unint64_t sub_1D9ECFE98()
{
  result = qword_1ECB74F60;
  if (!qword_1ECB74F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F60);
  }

  return result;
}

unint64_t sub_1D9ECFEF0()
{
  result = qword_1ECB74F68;
  if (!qword_1ECB74F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F68);
  }

  return result;
}

unint64_t sub_1D9ECFF48()
{
  result = qword_1ECB74F70;
  if (!qword_1ECB74F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F70);
  }

  return result;
}

unint64_t sub_1D9ECFFA0()
{
  result = qword_1ECB74F78;
  if (!qword_1ECB74F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F78);
  }

  return result;
}

unint64_t sub_1D9ECFFF8()
{
  result = qword_1ECB74F80;
  if (!qword_1ECB74F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F80);
  }

  return result;
}

unint64_t sub_1D9ED0050()
{
  result = qword_1ECB74F88;
  if (!qword_1ECB74F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F88);
  }

  return result;
}

unint64_t sub_1D9ED00A8()
{
  result = qword_1ECB74F90;
  if (!qword_1ECB74F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F90);
  }

  return result;
}

unint64_t sub_1D9ED0100()
{
  result = qword_1ECB74F98;
  if (!qword_1ECB74F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74F98);
  }

  return result;
}

unint64_t sub_1D9ED0158()
{
  result = qword_1ECB74FA0;
  if (!qword_1ECB74FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FA0);
  }

  return result;
}

unint64_t sub_1D9ED01B0()
{
  result = qword_1ECB74FA8;
  if (!qword_1ECB74FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FA8);
  }

  return result;
}

unint64_t sub_1D9ED0208()
{
  result = qword_1ECB74FB0;
  if (!qword_1ECB74FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FB0);
  }

  return result;
}

unint64_t sub_1D9ED0260()
{
  result = qword_1ECB74FB8;
  if (!qword_1ECB74FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FB8);
  }

  return result;
}

unint64_t sub_1D9ED02B8()
{
  result = qword_1ECB74FC0;
  if (!qword_1ECB74FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FC0);
  }

  return result;
}

unint64_t sub_1D9ED0310()
{
  result = qword_1ECB74FC8;
  if (!qword_1ECB74FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FC8);
  }

  return result;
}

unint64_t sub_1D9ED0368()
{
  result = qword_1ECB74FD0;
  if (!qword_1ECB74FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB74FD0);
  }

  return result;
}

uint64_t sub_1D9ED03BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D9F49760 == a2;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4C656369766564 && a2 == 0xEC00000064656B63 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F49780 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F497A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4E797469746E65 && a2 == 0xEE00646E756F4674 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D9F497C0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D9F497E0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F4E6E6F69746361 && a2 == 0xEE00646E756F4674 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9F49800 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4574694B6C6F6F74 && a2 == 0xEC000000726F7272 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F49820 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D9F49840 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D9F49860 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D9F49880 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D9F498A0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6573616261746164 && a2 == 0xED0000726F727245 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D9F498C0 == a2 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xEE00726F72724572)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

uint64_t sub_1D9ED095C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4972656C646E6168 && a2 == 0xE900000000000044 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D65527369 && a2 == 0xE800000000000000 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D9F498E0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D9ED0AD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E656469 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4972656C646E6168 && a2 == 0xE900000000000044 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746F6D65527369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

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

uint64_t sub_1D9ED0BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB74FD8, &qword_1D9F3E4C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9ED0C58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int64_t *a3@<X8>)
{
  v6 = sub_1D9F2AEEC();
  v7 = MEMORY[0x1DA744500](a1);
  if (v7 == v6)
  {
    value = xpc_int64_get_value(a1);
    result = swift_unknownObjectRelease();
    *a3 = value;
  }

  else
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB73280, &unk_1D9F2F9A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D9F2F8F0;
    *(v9 + 32) = v6;
    sub_1D9E56B78();
    swift_willThrowTypedImpl();
    result = swift_unknownObjectRelease();
    *a2 = v8;
    *(a2 + 8) = v9;
    *(a2 + 16) = 1;
  }

  return result;
}

uint64_t WatchdogTimer.__allocating_init(identifier:timeout:leeway:strict:qualityOfService:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  v52 = a4;
  v50 = a3;
  v11 = sub_1D9F2AFFC();
  v55 = *(v11 - 8);
  v56 = v11;
  v12 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D9F2B4CC();
  v57 = *(v53 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v58 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9F2AF7C();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v47 - v22);
  v24 = type metadata accessor for WatchdogTimer.Configuration(0);
  v25 = *(*(v24 - 1) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v6 + 48);
  v29 = *(v6 + 52);
  v30 = swift_allocObject();
  v31 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v32 = swift_allocObject();
  *(v32 + 24) = 0;
  *(v32 + 32) = 0;
  *(v32 + 16) = 0;
  v51 = v30;
  *(v30 + v31) = v32;
  *(v32 + 40) = 0;
  v59 = 0xD00000000000003CLL;
  v60 = 0x80000001D9F491E0;
  MEMORY[0x1DA742F90](a1, a2);

  v34 = a5 * 1000000000.0;
  if (COERCE__INT64(fabs(a5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v59;
  v49 = v60;
  *v23 = v34;
  v36 = *MEMORY[0x1E69E7F28];
  v37 = v17[13];
  result = v37(v23, v36, v16);
  v38 = a6 * 1000000000.0;
  if (COERCE__INT64(fabs(a6 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v38 < 9.22337204e18)
  {
    v48 = v35;
    *v21 = v38;
    v37(v21, v36, v16);
    if (v50)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
      v39 = *(v57 + 72);
      v40 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1D9F2F8F0;
      sub_1D9F2B4BC();
      v59 = v41;
    }

    else
    {
      v59 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9ED39D4(&qword_1EE0F10E8, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
    sub_1D9E84FE0(&qword_1EE0F1100, &unk_1ECB74FF0, &unk_1D9F39410);
    v42 = v53;
    sub_1D9F2B5FC();
    v43 = v54;
    if (v52 <= 16)
    {
      if (v52 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_22;
      }

      if (v52 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_22;
      }
    }

    else
    {
      switch(v52)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_22;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_22;
        case 33:
          sub_1D9F2AFCC();
LABEL_22:
          v44 = v49;
          *v27 = v48;
          *(v27 + 1) = v44;
          v45 = v17[4];
          v45(&v27[v24[5]], v23, v16);
          v45(&v27[v24[6]], v21, v16);
          (*(v57 + 32))(&v27[v24[7]], v58, v42);
          (*(v55 + 32))(&v27[v24[8]], v43, v56);
          v46 = v51;
          sub_1D9EA13EC(v27, v51 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
          return v46;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t WatchdogTimer.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D9ED13C8, 0, 0);
}

uint64_t sub_1D9ED13C8()
{
  v1 = *(MEMORY[0x1E69E8920] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D9ED1494;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0x29286E7572, 0xE500000000000000, sub_1D9EC92F0, v4, &type metadata for WatchdogTimer.Termination);
}

uint64_t sub_1D9ED1494()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9ED15C8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

Swift::Void __swiftcall WatchdogTimer.cancel()()
{
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 16);
  if ((v2 - 1) < 2)
  {
LABEL_4:

    os_unfair_lock_unlock((v1 + 40));
    return;
  }

  if (!v2)
  {
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = 2;
    goto LABEL_4;
  }

  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  os_unfair_lock_unlock((v1 + 40));
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1D9F2B4FC();
  swift_unknownObjectRelease();
  v5 = 1;
  v4(&v5);

  swift_unknownObjectRelease();
}

uint64_t sub_1D9ED16DC()
{
  v0 = sub_1D9F2B48C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9F2B53C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8[0] = sub_1D9E68600(0, &qword_1EE0F10D0, 0x1E69E9638);
  v8[1] = MEMORY[0x1E69E7CC0];
  sub_1D9ED39D4(&qword_1EE0F10D8, MEMORY[0x1E69E8110]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75040, &qword_1D9F3E718);
  sub_1D9E84FE0(&qword_1EE0F10F8, &unk_1ECB75040, &qword_1D9F3E718);
  sub_1D9F2B5FC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8098], v0);
  result = sub_1D9F2B54C();
  qword_1EE0F1AD0 = result;
  return result;
}

uint64_t WatchdogTimer.Failure.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t WatchdogTimer.Termination.hashValue.getter()
{
  v1 = *v0;
  sub_1D9F2BAFC();
  MEMORY[0x1DA7438F0](v1);
  return sub_1D9F2BB4C();
}

uint64_t WatchdogTimer.init(identifier:timeout:leeway:strict:qualityOfService:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v49 = a4;
  v48 = a3;
  v12 = sub_1D9F2AFFC();
  v52 = *(v12 - 8);
  v53 = v12;
  v13 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D9F2B4CC();
  v54 = *(v50 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9F2AF7C();
  v18 = *(v17 - 8);
  v19 = v18[8];
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v44 - v23);
  v25 = type metadata accessor for WatchdogTimer.Configuration(0);
  v26 = *(*(v25 - 1) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FE0, &unk_1D9F3E4F0);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  *(v30 + 32) = 0;
  *(v30 + 16) = 0;
  *(v7 + v29) = v30;
  *(v30 + 40) = 0;
  v56 = 0xD00000000000003CLL;
  v57 = 0x80000001D9F491E0;
  MEMORY[0x1DA742F90](a1, a2);

  v32 = a5 * 1000000000.0;
  if (COERCE__INT64(fabs(a5 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v32 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v32 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v46 = v57;
  v47 = v56;
  *v24 = v32;
  v33 = *MEMORY[0x1E69E7F28];
  v34 = v18[13];
  result = v34(v24, v33, v17);
  v35 = a6 * 1000000000.0;
  if (COERCE__INT64(fabs(a6 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v35 < 9.22337204e18)
  {
    v45 = v7;
    *v22 = v35;
    v34(v22, v33, v17);
    if (v48)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB745E8, &qword_1D9F3E500);
      v36 = *(v54 + 72);
      v37 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1D9F2F8F0;
      sub_1D9F2B4BC();
      v56 = v38;
    }

    else
    {
      v56 = MEMORY[0x1E69E7CC0];
    }

    sub_1D9ED39D4(&qword_1EE0F10E8, MEMORY[0x1E69E80B0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB74FF0, &unk_1D9F39410);
    sub_1D9E84FE0(&qword_1EE0F1100, &unk_1ECB74FF0, &unk_1D9F39410);
    v39 = v50;
    sub_1D9F2B5FC();
    v40 = v45;
    v41 = v51;
    if (v49 <= 16)
    {
      if (v49 == -1)
      {
        sub_1D9F2AFDC();
        goto LABEL_22;
      }

      if (v49 == 9)
      {
        sub_1D9F2AF9C();
        goto LABEL_22;
      }
    }

    else
    {
      switch(v49)
      {
        case 17:
          sub_1D9F2AFEC();
          goto LABEL_22;
        case 25:
          sub_1D9F2AFBC();
          goto LABEL_22;
        case 33:
          sub_1D9F2AFCC();
LABEL_22:
          v42 = v46;
          *v28 = v47;
          *(v28 + 1) = v42;
          v43 = v18[4];
          v43(&v28[v25[5]], v24, v17);
          v43(&v28[v25[6]], v22, v17);
          (*(v54 + 32))(&v28[v25[7]], v55, v39);
          (*(v52 + 32))(&v28[v25[8]], v41, v53);
          sub_1D9EA13EC(v28, v40 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
          return v40;
      }
    }

    sub_1D9F2AFAC();
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
  return result;
}

void WatchdogTimer.activate(on:_:)()
{
  v2 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);
  os_unfair_lock_lock((v2 + 40));
  sub_1D9ED353C((v2 + 16), &v3);
  os_unfair_lock_unlock((v2 + 40));
  if (!v1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D9F2B50C();

    swift_unknownObjectRelease_n();
  }
}

uint64_t sub_1D9ED2094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v103 = a5;
  v101 = a6;
  v102 = a4;
  v104 = a2;
  v105 = a3;
  v7 = sub_1D9F2AF7C();
  v98 = *(v7 - 8);
  v99 = v7;
  v8 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9F2B01C();
  v95 = *(v10 - 8);
  v96 = v10;
  v11 = *(v95 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v93 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v86 - v14;
  v92 = sub_1D9F2AF8C();
  v91 = *(v92 - 8);
  v15 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9F2B47C();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v20 = sub_1D9F2B48C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D9F2AFFC();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v86 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  v30 = *a1;
  if (*a1 == 2)
  {
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v41 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v41, qword_1EE0F11F0);
    v42 = v105;

    v43 = sub_1D9F2AE6C();
    v44 = sub_1D9F2B43C();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v111 = v46;
      *v45 = 136315138;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1D9F2B68C();

      strcpy(&aBlock, "WatchdogTimer<");
      HIBYTE(aBlock) = -18;
      MEMORY[0x1DA742F90](*&v42[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration], *&v42[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8]);
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v47 = sub_1D9E71CA4(aBlock, *(&aBlock + 1), &v111);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_1D9E39000, v43, v44, "Attempted to activate %s when it has already cancelled. Not activating again.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1DA744270](v46, -1, -1);
      MEMORY[0x1DA744270](v45, -1, -1);
    }

    v40 = 2;
    goto LABEL_21;
  }

  if (v30 == 1)
  {
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v33 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v33, qword_1EE0F11F0);
    v34 = v105;

    v35 = sub_1D9F2AE6C();
    v36 = sub_1D9F2B43C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v111 = v38;
      *v37 = 136315138;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1D9F2B68C();

      strcpy(&aBlock, "WatchdogTimer<");
      HIBYTE(aBlock) = -18;
      MEMORY[0x1DA742F90](*&v34[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration], *&v34[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8]);
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v39 = sub_1D9E71CA4(aBlock, *(&aBlock + 1), &v111);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_1D9E39000, v35, v36, "Attempted to activate %s when it has already finished. Not activating again.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1DA744270](v38, -1, -1);
      MEMORY[0x1DA744270](v37, -1, -1);
    }

    v40 = 1;
    goto LABEL_21;
  }

  if (v30)
  {
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v48 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v48, qword_1EE0F11F0);
    v49 = v105;

    v50 = sub_1D9F2AE6C();
    v51 = sub_1D9F2B43C();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v111 = v53;
      *v52 = 136315138;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_1D9F2B68C();

      strcpy(&aBlock, "WatchdogTimer<");
      HIBYTE(aBlock) = -18;
      MEMORY[0x1DA742F90](*&v49[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration], *&v49[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8]);
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v54 = sub_1D9E71CA4(aBlock, *(&aBlock + 1), &v111);

      *(v52 + 4) = v54;
      _os_log_impl(&dword_1D9E39000, v50, v51, "Attempted to activate %s when it has already started. Not activating again.", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1DA744270](v53, -1, -1);
      MEMORY[0x1DA744270](v52, -1, -1);
    }

    v40 = 0;
LABEL_21:
    sub_1D9ED3944();
    swift_allocError();
    *v55 = v40;
    return swift_willThrow();
  }

  v90 = v27;
  if (v104)
  {
    v31 = v104;
    v32 = v104;
  }

  else
  {
    v88 = sub_1D9E68600(0, &qword_1EE0F22D0, 0x1E69E9610);
    v57 = &v105[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration];
    v58 = *&v105[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8];
    v87 = *&v105[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration];
    v89 = v58;
    v59 = type metadata accessor for WatchdogTimer.Configuration(0);
    (*(v90 + 16))(v29, &v57[*(v59 + 32)], v25);
    (*(v21 + 104))(v24, *MEMORY[0x1E69E8098], v20);
    v60 = qword_1EE0F1AC0;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = qword_1EE0F1AD0;
    *&aBlock = MEMORY[0x1E69E7CC0];
    v86 = sub_1D9ED39D4(&unk_1EE0F22D8, MEMORY[0x1E69E8030]);
    v62 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75020, &unk_1D9F38B10);
    sub_1D9E84FE0(&qword_1EE0F2300, &unk_1ECB75020, &unk_1D9F38B10);
    sub_1D9F2B5FC();
    v31 = sub_1D9F2B4AC();
    v32 = v104;
  }

  sub_1D9E68600(0, &qword_1EE0F10E0, 0x1E69E9630);
  v89 = &v105[OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration];
  v104 = type metadata accessor for WatchdogTimer.Configuration(0);
  v63 = *(v104 + 28);
  v64 = v32;
  v65 = v31;
  v66 = sub_1D9F2B4DC();

  v87 = v66;
  ObjectType = swift_getObjectType();
  v68 = swift_allocObject();
  swift_weakInit();
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  *(v69 + 24) = v68;
  v109 = sub_1D9ED3998;
  v110 = v69;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v107 = sub_1D9EB9EB0;
  v108 = &block_descriptor_4;
  v70 = _Block_copy(&aBlock);
  v105 = v65;

  sub_1D9F2AFAC();
  v88 = ObjectType;
  sub_1D9ED2F00();
  sub_1D9F2B4EC();
  _Block_release(v70);
  (*(v91 + 8))(v17, v92);
  (*(v90 + 8))(v29, v25);

  v71 = v93;
  sub_1D9F2B00C();
  v72 = v104;
  v73 = v89;
  v74 = v94;
  MEMORY[0x1DA742E20](v71, &v89[*(v104 + 20)]);
  v75 = v96;
  v76 = *(v95 + 8);
  v76(v71, v96);
  v78 = v97;
  v77 = v98;
  v79 = v99;
  (*(v98 + 104))(v97, *MEMORY[0x1E69E7F40], v99);
  v80 = &v73[*(v72 + 24)];
  v81 = v87;
  MEMORY[0x1DA743340](v74, v78, v80, v88);

  (*(v77 + 8))(v78, v79);
  v76(v74, v75);
  v83 = v100;
  v82 = v101;
  v85 = v102;
  v84 = v103;
  *v100 = v81;
  v83[1] = v85;
  v83[2] = v84;
  *v82 = v81;
  v82[1] = v85;
  v82[2] = v84;
  swift_retain_n();
  return swift_unknownObjectRetain();
}

uint64_t sub_1D9ED2D10(void *a1)
{
  v2 = sub_1D9F2B02C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v7 = a1;
  LOBYTE(a1) = sub_1D9F2B04C();
  result = (*(v3 + 8))(v6, v2);
  if (a1)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_1D9ED2E50();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D9ED2E50()
{
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);
  os_unfair_lock_lock((v1 + 40));
  sub_1D9ED39B8((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 40));
  if (v3[0])
  {
    v2 = v3[1];
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D9F2B4FC();
    swift_unknownObjectRelease();
    LOBYTE(v3[0]) = 0;
    v2(v3);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D9ED2F00()
{
  sub_1D9F2AF8C();
  sub_1D9ED39D4(&unk_1EE0F2368, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB75030, &unk_1D9F3CFE0);
  sub_1D9E84FE0(&qword_1EE0F2310, &unk_1ECB75030, &unk_1D9F3CFE0);
  return sub_1D9F2B5FC();
}

__n128 sub_1D9ED2FD8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1 + 1;
  v3 = *a1;
  if ((*a1 - 1) < 2)
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  if (!v3)
  {
    v14 = a3;
    if (qword_1EE0F11E8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D9F2AE8C();
    __swift_project_value_buffer(v7, qword_1EE0F11F0);

    v8 = sub_1D9F2AE6C();
    v9 = sub_1D9F2B44C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16 = v11;
      *v10 = 136315138;
      sub_1D9F2B68C();

      strcpy(v15, "WatchdogTimer<");
      HIBYTE(v15[1]) = -18;
      MEMORY[0x1DA742F90](*(a2 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration), *(a2 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8));
      MEMORY[0x1DA742F90](62, 0xE100000000000000);
      v12 = sub_1D9E71CA4(v15[0], v15[1], &v16);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_1D9E39000, v8, v9, "Attempted to fire %s before activating it. Please file a radar.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1DA744270](v11, -1, -1);
      MEMORY[0x1DA744270](v10, -1, -1);
    }

    *a1 = 1;
    *v4 = 0;
    v4[1] = 0;
    a3 = v14;
    goto LABEL_8;
  }

  *a1 = 1;
  result = *(a1 + 1);
  *v4 = 0;
  a1[2] = 0;
  *a3 = v3;
  *(a3 + 1) = result;
  return result;
}

uint64_t WatchdogTimer.deinit()
{
  sub_1D9ED355C(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);

  return v0;
}

uint64_t WatchdogTimer.__deallocating_deinit()
{
  sub_1D9ED355C(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration);
  v1 = *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_state);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t WatchdogTimer.description.getter()
{
  sub_1D9F2B68C();

  strcpy(v2, "WatchdogTimer<");
  HIBYTE(v2[1]) = -18;
  MEMORY[0x1DA742F90](*(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration), *(v0 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8));
  MEMORY[0x1DA742F90](62, 0xE100000000000000);
  return v2[0];
}

uint64_t sub_1D9ED333C()
{
  v1 = *v0;
  sub_1D9F2B68C();

  strcpy(v3, "WatchdogTimer<");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x1DA742F90](*(v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration), *(v1 + OBJC_IVAR____TtC29VisualActionPredictionSupport13WatchdogTimer_configuration + 8));
  MEMORY[0x1DA742F90](62, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_1D9ED33D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v10 - v5;
  (*(v3 + 16))(v10 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  WatchdogTimer.activate(on:_:)();
}

uint64_t sub_1D9ED355C(uint64_t a1)
{
  v2 = type metadata accessor for WatchdogTimer.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9ED35BC()
{
  result = qword_1ECB75000;
  if (!qword_1ECB75000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75000);
  }

  return result;
}

unint64_t sub_1D9ED3614()
{
  result = qword_1ECB75008;
  if (!qword_1ECB75008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75008);
  }

  return result;
}

uint64_t sub_1D9ED3690()
{
  result = type metadata accessor for WatchdogTimer.Configuration(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_29VisualActionPredictionSupport13WatchdogTimerC5State33_924C034D9F7B896AF52FE35B85FDB993LLO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D9ED3790(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9ED37EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1D9ED3840(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1D9ED3898()
{
  result = sub_1D9F2AF7C();
  if (v1 <= 0x3F)
  {
    result = sub_1D9F2B4CC();
    if (v2 <= 0x3F)
    {
      result = sub_1D9F2AFFC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1D9ED3944()
{
  result = qword_1ECB75018;
  if (!qword_1ECB75018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75018);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9ED39D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D9ED3A1C(char *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75050, &qword_1D9F3E720);
  return sub_1D9F2B2FC();
}

uint64_t sub_1D9ED3B2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), uint64_t (*a5)(uint64_t, char *, void *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v18 - v14;
  a4(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 24))(a2, a3);
  v16 = a1;
  return a5(AssociatedTypeWitness, v15, a1);
}

uint64_t GenericEntity.title.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t GenericEntity.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static GenericEntity.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D9F2BA1C();
  }
}

uint64_t sub_1D9ED3D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D9F2BA1C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D9ED3DD8(uint64_t a1)
{
  v2 = sub_1D9ED3F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9ED3E14(uint64_t a1)
{
  v2 = sub_1D9ED3F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericEntity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75058, &qword_1D9F3E7B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ED3F8C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9ED3F8C()
{
  result = qword_1ECB75060;
  if (!qword_1ECB75060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75060);
  }

  return result;
}

uint64_t GenericEntity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1D9F2B18C();
}

uint64_t GenericEntity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D9F2BAFC();
  sub_1D9F2B18C();
  return sub_1D9F2BB4C();
}

uint64_t GenericEntity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75068, &qword_1D9F3E7B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ED3F8C();
  sub_1D9F2BB7C();
  if (!v2)
  {
    v11 = sub_1D9F2B84C();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D9ED41C0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB75058, &qword_1D9F3E7B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9ED3F8C();
  sub_1D9F2BB8C();
  sub_1D9F2B95C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D9ED4300()
{
  result = qword_1ECB75070;
  if (!qword_1ECB75070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75070);
  }

  return result;
}

unint64_t sub_1D9ED4378()
{
  result = qword_1ECB75078;
  if (!qword_1ECB75078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75078);
  }

  return result;
}

unint64_t sub_1D9ED43D0()
{
  result = qword_1ECB75080;
  if (!qword_1ECB75080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75080);
  }

  return result;
}

unint64_t sub_1D9ED4428()
{
  result = qword_1ECB75088;
  if (!qword_1ECB75088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB75088);
  }

  return result;
}

uint64_t MachServiceDescriptor.init(name:qualityOfService:requiredEntitlements:isPrivileged:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t MachServiceDescriptor.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1D9ED44D4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9ED4520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9ED4568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static Limit.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v5 = *(a3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  v38 = v9;
  v39 = v8;
  v40 = v10;
  v41 = v11;
  v42 = v12;
  v13 = type metadata accessor for Limit();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v33 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v22 = &v33 - v21;
  v23 = *(v20 + 48);
  v35 = v14;
  v24 = *(v14 + 16);
  v24(&v33 - v21, v36, v13);
  v24(&v22[v23], a2, v13);
  v36 = v5;
  v25 = *(v5 + 48);
  if (v25(v22, 1, a3) == 1)
  {
    v26 = 1;
    if (v25(&v22[v23], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24(v37, v22, v13);
    if (v25(&v22[v23], 1, a3) != 1)
    {
      v27 = v36;
      v28 = v33;
      (*(v36 + 32))(v33, &v22[v23], a3);
      v29 = *(v34 + 8);
      v30 = v37;
      v26 = sub_1D9F2B10C();
      v31 = *(v27 + 8);
      v31(v28, a3);
      v31(v30, a3);
LABEL_8:
      v18 = v35;
      goto LABEL_9;
    }

    (*(v36 + 8))(v37, a3);
  }

  v26 = 0;
  v13 = TupleTypeMetadata2;
LABEL_9:
  (*(v18 + 8))(v22, v13);
  return v26 & 1;
}

uint64_t sub_1D9ED491C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1D9F2BA1C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D9ED498C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696D696C6E75 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D9F2BA1C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D9F2BA1C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D9ED4A60(char a1)
{
  if (a1)
  {
    return 0x6574756C6F736261;
  }

  else
  {
    return 0x6574696D696C6E75;
  }
}

uint64_t sub_1D9ED4A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_1D9ED491C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D9ED4AF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9ED4B44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL sub_1D9ED4B98(unsigned __int8 *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  return sub_1D9EAD600(*a1, *a2);
}

uint64_t sub_1D9ED4BB4(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1D9EAD638(*v1);
}

uint64_t sub_1D9ED4BCC(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  return sub_1D9EAD610(a1, *v2);
}

uint64_t sub_1D9ED4BE4(uint64_t a1, void *a2)
{
  sub_1D9F2BAFC();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  sub_1D9EAD610(v10, *v2);
  return sub_1D9F2BB4C();
}

uint64_t sub_1D9ED4C34(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  return sub_1D9ED4A60(*v1);
}

uint64_t sub_1D9ED4C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  result = sub_1D9ED498C(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1D9ED4C84@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  result = sub_1D9EAE498();
  *a2 = result;
  return result;
}

uint64_t sub_1D9ED4CBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9ED4D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D9ED4D64@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = sub_1D9E403C0();

  *a2 = v8 & 1;
  return result;
}

uint64_t sub_1D9ED4DB8@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D9ED4DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D9ED4E50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Limit.encode(to:)(void *a1, void *a2)
{
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v56 = a2[2];
  v5 = v56;
  v57 = v4;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v48 = type metadata accessor for Limit.AbsoluteCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1D9F2B9EC();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v47 = &v39 - v12;
  v53 = *(v56 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  v57 = v4;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v15 = type metadata accessor for Limit.UnlimitedCodingKeys();
  v16 = swift_getWitnessTable();
  v44 = v15;
  v42 = v16;
  v43 = sub_1D9F2B9EC();
  v41 = *(v43 - 8);
  v17 = *(v41 + 64);
  v18 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v39 - v19;
  v20 = *(a2 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v5;
  v57 = v4;
  v58 = v6;
  v59 = v7;
  v51 = v7;
  v60 = v8;
  type metadata accessor for Limit.CodingKeys();
  swift_getWitnessTable();
  v54 = sub_1D9F2B9EC();
  v52 = *(v54 - 8);
  v24 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v26 = &v39 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v61 = v26;
  sub_1D9F2BB8C();
  (*(v20 + 16))(v23, v55, a2);
  v28 = v53;
  v29 = v5;
  if ((*(v53 + 48))(v23, 1, v5) == 1)
  {
    LOBYTE(v56) = 0;
    v30 = v40;
    v31 = v54;
    v32 = v61;
    sub_1D9F2B8FC();
    (*(v41 + 8))(v30, v43);
    return (*(v52 + 8))(v32, v31);
  }

  else
  {
    v34 = v52;
    v35 = v45;
    (*(v28 + 32))(v45, v23, v29);
    LOBYTE(v56) = 1;
    v36 = v47;
    v37 = v54;
    sub_1D9F2B8FC();
    v38 = v50;
    sub_1D9F2B9AC();
    (*(v49 + 8))(v36, v38);
    (*(v28 + 8))(v35, v29);
    return (*(v34 + 8))(v61, v37);
  }
}

uint64_t Limit.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    return MEMORY[0x1DA7438F0](0);
  }

  (*(v4 + 32))(v8, v12, v3);
  MEMORY[0x1DA7438F0](1);
  v16 = *(a2 + 48);
  sub_1D9F2B0EC();
  return (*(v4 + 8))(v8, v3);
}

uint64_t Limit.hashValue.getter(uint64_t a1)
{
  sub_1D9F2BAFC();
  Limit.hash(into:)(v3, a1);
  return sub_1D9F2BB4C();
}

uint64_t Limit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v83 = a1;
  v73 = a7;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  v12 = type metadata accessor for Limit.AbsoluteCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v71 = v12;
  v63 = sub_1D9F2B8EC();
  v62 = *(v63 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v72 = &v59 - v14;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  v15 = type metadata accessor for Limit.UnlimitedCodingKeys();
  v68 = swift_getWitnessTable();
  v69 = v15;
  v61 = sub_1D9F2B8EC();
  v60 = *(v61 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v67 = &v59 - v17;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  type metadata accessor for Limit.CodingKeys();
  v76 = swift_getWitnessTable();
  v18 = sub_1D9F2B8EC();
  v19 = *(v18 - 8);
  v74 = v18;
  v75 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v59 - v21;
  v66 = a2;
  *&v80 = a2;
  *(&v80 + 1) = a3;
  v64 = a4;
  *&v81 = a4;
  *(&v81 + 1) = a5;
  v82 = a6;
  v23 = type metadata accessor for Limit();
  v65 = *(v23 - 8);
  v24 = *(v65 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v59 - v28;
  v30 = v83;
  v31 = v83[4];
  __swift_project_boxed_opaque_existential_1(v83, v83[3]);
  v32 = v77;
  sub_1D9F2BB7C();
  if (v32)
  {
    goto LABEL_7;
  }

  v76 = v27;
  v77 = v29;
  v33 = v74;
  v34 = v22;
  *&v78 = sub_1D9F2B8DC();
  sub_1D9F2B2BC();
  swift_getWitnessTable();
  *&v80 = sub_1D9F2B5DC();
  *(&v80 + 1) = v35;
  *&v81 = v36;
  *(&v81 + 1) = v37;
  sub_1D9F2B5CC();
  swift_getWitnessTable();
  sub_1D9F2B3EC();
  v38 = v78;
  if (v78 == 2 || (v59 = v80, v78 = v80, v79 = v81, (sub_1D9F2B3FC() & 1) == 0))
  {
    v46 = sub_1D9F2B6BC();
    swift_allocError();
    v48 = v47;
    v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB72D60, &qword_1D9F2CFF0) + 48);
    *v48 = v23;
    sub_1D9F2B7EC();
    sub_1D9F2B6AC();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
    (*(v75 + 8))(v34, v33);
    swift_unknownObjectRelease();
    v30 = v83;
LABEL_7:
    v50 = v30;
    return __swift_destroy_boxed_opaque_existential_1(v50);
  }

  if (v38)
  {
    LOBYTE(v78) = 1;
    v39 = v72;
    v40 = v22;
    sub_1D9F2B7DC();
    v41 = v73;
    v42 = v75;
    v43 = v39;
    v44 = v66;
    v45 = v63;
    sub_1D9F2B89C();
    (*(v62 + 8))(v43, v45);
    (*(v42 + 8))(v40, v33);
    swift_unknownObjectRelease();
    v56 = v76;
    (*(*(v44 - 8) + 56))(v76, 0, 1, v44);
    v57 = *(v65 + 32);
    v58 = v77;
    v57(v77, v56, v23);
    v57(v41, v58, v23);
  }

  else
  {
    LOBYTE(v78) = 0;
    v52 = v67;
    sub_1D9F2B7DC();
    v53 = v73;
    v54 = v75;
    (*(v60 + 8))(v52, v61);
    (*(v54 + 8))(v34, v33);
    swift_unknownObjectRelease();
    v55 = v77;
    (*(*(v66 - 8) + 56))(v77, 1, 1);
    (*(v65 + 32))(v53, v55, v23);
  }

  v50 = v83;
  return __swift_destroy_boxed_opaque_existential_1(v50);
}