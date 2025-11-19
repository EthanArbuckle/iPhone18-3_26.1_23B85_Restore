uint64_t sub_1DD5F853C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v6 = sub_1DD63FF98();
  }

  else if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = __OFADD__(v6, 2);
  result = v6 + 2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1E12B21B0](result);
    MEMORY[0x1E12B2250](a1, a2);

    while (1)
    {
      v9 = sub_1DD63FF88();
      if (!v10)
      {
        break;
      }

      v13 = v9;
      v14 = v10;
      MEMORY[0x1E12B2250](v9, v10, v11, v12);
      v15 = v13 == a1 && v14 == a2;
      if (v15 || (sub_1DD640CD8() & 1) != 0)
      {
        MEMORY[0x1E12B2250](v13, v14);
      }
    }

    MEMORY[0x1E12B2250](a1, a2);
    return 0;
  }

  return result;
}

uint64_t sub_1DD5F8668(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v79) = a3;
  v81 = a1;
  v6 = type metadata accessor for Signpost();
  v7 = OUTLINED_FUNCTION_7(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_4_2();
  }

  v12 = qword_1EE16F0C0;
  v13 = &v11[*(v6 + 20)];
  *v13 = "ContactResolver.3PMatcher.Search";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v14 = v12;
  sub_1DD63F9B8();
  *&v11[*(v6 + 24)] = v14;
  v15 = v14;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1DD643F90;
  v17 = sub_1DD6408F8();
  v19 = v18;
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1DD392BD8();
  *(v16 + 32) = v17;
  *(v16 + 40) = v19;
  v80 = v15;
  sub_1DD63F998();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = CKVCustomTypeToNumber();
  sub_1DD418A94(inited);
  if (*(a2 + 16))
  {
    v22 = a2;
  }

  else
  {
    v22 = 0;
  }

  v78 = v22;
  v79 = v21;
  if (sub_1DD4F9BB8())
  {
    goto LABEL_9;
  }

  v84 = sub_1DD63D118();
  v85 = v23;
  v82 = 24938;
  v83 = 0xE200000000000000;
  sub_1DD3B52B8();
  sub_1DD3B530C();
  v24 = OUTLINED_FUNCTION_11_54();

  if (v24 & 1) != 0 || (v84 = sub_1DD63D118(), v85 = v25, v82 = 28523, v83 = 0xE200000000000000, v26 = OUTLINED_FUNCTION_11_54(), , (v26))
  {
LABEL_9:
    v27 = v81;
    v28 = *(v81 + 16);
    if (v28)
    {
      v76 = v4;
      v77 = v11;
      v82 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v29 = v82;
      v30 = (v27 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v84 = 37;
        v85 = 0xE100000000000000;

        MEMORY[0x1E12B2260](v31, v32);
        MEMORY[0x1E12B2260](37, 0xE100000000000000);

        v34 = v84;
        v33 = v85;
        v82 = v29;
        v36 = *(v29 + 16);
        v35 = *(v29 + 24);
        if (v36 >= v35 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v35);
          sub_1DD42A2D4();
          v29 = v82;
        }

        *(v29 + 16) = v36 + 1;
        v37 = v29 + 16 * v36;
        *(v37 + 32) = v34;
        *(v37 + 40) = v33;
        v30 += 2;
        --v28;
      }

      while (v28);
      v4 = v76;
      v11 = v77;
      v27 = v81;
    }

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v38 = sub_1DD63F9F8();
    __swift_project_value_buffer(v38, qword_1EE16F068);

    v39 = sub_1DD63F9D8();
    v40 = sub_1DD640368();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_54();
      v42 = OUTLINED_FUNCTION_62();
      v84 = v42;
      *v41 = 136315138;
      v43 = MEMORY[0x1E12B2430](v27, MEMORY[0x1E69E6158]);
      v45 = sub_1DD39565C(v43, v44, &v84);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1DD38D000, v39, v40, "cjk search for %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v46 = *(v4 + *(type metadata accessor for SiriVocabularySearcher(0) + 20));
    v47 = sub_1DD6400F8();

    if (v78)
    {
      v48 = sub_1DD640258();
    }

    else
    {
      v48 = 0;
    }

    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    sub_1DD41B0B0();
    v49 = sub_1DD640258();

    v50 = [v46 searchCustomVocabularyWithWildcardPatterns:v47 appIds:v48 vocabularyTypes:v49];
  }

  else
  {
    v54 = v81;
    v55 = *(v81 + 16);
    v56 = MEMORY[0x1E69E7CC0];
    if (v55)
    {
      v57 = v11;
      v82 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v56 = v82;
      v58 = (v54 + 40);
      do
      {
        v59 = *v58;
        v84 = *(v58 - 1);
        v85 = v59;
        swift_bridgeObjectRetain_n();
        MEMORY[0x1E12B2260](42, 0xE100000000000000);
        v60 = sub_1DD5F853C(34, 0xE100000000000000, v84, v85);
        v62 = v61;

        v82 = v56;
        v64 = *(v56 + 16);
        v63 = *(v56 + 24);
        if (v64 >= v63 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v63);
          sub_1DD42A2D4();
          v56 = v82;
        }

        *(v56 + 16) = v64 + 1;
        v65 = v56 + 16 * v64;
        *(v65 + 32) = v60;
        *(v65 + 40) = v62;
        v58 += 2;
        --v55;
      }

      while (v55);
      v11 = v57;
    }

    v84 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD3FAC5C(qword_1EE166498, &unk_1ECCDFD20, &qword_1DD648290);
    v66 = sub_1DD63FD58();
    v68 = v67;

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v69 = sub_1DD63F9F8();
    __swift_project_value_buffer(v69, qword_1EE16F068);

    v70 = sub_1DD63F9D8();
    v71 = sub_1DD640368();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = OUTLINED_FUNCTION_54();
      v73 = OUTLINED_FUNCTION_62();
      v84 = v73;
      *v72 = 136315138;
      *(v72 + 4) = sub_1DD39565C(v66, v68, &v84);
      _os_log_impl(&dword_1DD38D000, v70, v71, "prefix search for %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v74 = *(v4 + *(type metadata accessor for SiriVocabularySearcher(0) + 20));
    v47 = sub_1DD63FDA8();

    if (v78)
    {
      v48 = sub_1DD640258();
    }

    else
    {
      v48 = 0;
    }

    sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
    sub_1DD41B0B0();
    v49 = sub_1DD640258();

    v50 = [v74 searchCustomVocabulary:v47 appIds:v48 vocabularyTypes:v49];
  }

  v51 = v50;

  sub_1DD39638C(0, &unk_1ECCDFD30, 0x1E6997E90);
  v52 = sub_1DD640118();

  sub_1DD6404C8();
  sub_1DD63F9A8();
  sub_1DD41BFFC(v11);
  return v52;
}

uint64_t sub_1DD5F8EB8@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  memcpy(v28, __src, sizeof(v28));
  v8 = *(type metadata accessor for ThirdPartyContactMatcher(0) + 20);
  v26 = type metadata accessor for StringTokenizer();
  v27 = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v25);
  sub_1DD5FA998();
  sub_1DD41E258();
  LOWORD(v23) = 1;
  sub_1DD582E38();
  v10 = v9;

  __swift_destroy_boxed_opaque_existential_1(v25);

  sub_1DD56EDB0(v25, v10, v11, v12, v13, v14, v15, v16, v22[4], v22[5], v25, v23, v24, v25[0], v25[1], v25[2], v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13]);
  LOBYTE(v8) = v17;

  if (v8)
  {
    v18 = sub_1DD5F8668(v10, a3, 1);

    MEMORY[0x1EEE9AC00](v19);
    v22[2] = __src;
    v22[3] = a2;
    v20 = sub_1DD5E85CC(sub_1DD5FA9F0, v22, v18);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  *a4 = v20;
  return result;
}

uint64_t sub_1DD5F9088@<X0>(_BYTE **a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a3;
  v108 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v101 - v9;
  v11 = *a1;
  v12 = &selRef_setUnderlyingQueue_;
  v13 = [v11 vocabularyItem];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    if (qword_1EE165FB0 != -1)
    {
      goto LABEL_50;
    }

    goto LABEL_15;
  }

  v15 = v14;
  v104 = v13;
  v10[16] = 2;
  v106 = v4;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0xE000000000000000;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0xE000000000000000;
  *(v10 + 9) = 0;
  *(v10 + 10) = 0xE000000000000000;
  *(v10 + 11) = 0;
  *(v10 + 12) = 0xE000000000000000;
  *(v10 + 13) = 0;
  *(v10 + 14) = 0xE000000000000000;
  *(v10 + 15) = 0;
  *(v10 + 16) = 0xE000000000000000;
  *(v10 + 17) = 0;
  *(v10 + 18) = 0xE000000000000000;
  *(v10 + 19) = 0;
  *(v10 + 20) = 0xE000000000000000;
  *(v10 + 21) = 0;
  *(v10 + 22) = 0xE000000000000000;
  *(v10 + 23) = 0;
  *(v10 + 24) = 0xE000000000000000;
  *(v10 + 25) = 0;
  *(v10 + 26) = 0xE000000000000000;
  v112 = a2;
  v16 = MEMORY[0x1E69E7CC0];
  *(v10 + 27) = MEMORY[0x1E69E7CC0];
  v17 = type metadata accessor for Contact();
  v110 = v11;
  v18 = v17;
  v19 = *(v17 + 76);
  v20 = sub_1DD63CBB8();
  __swift_storeEnumTagSinglePayload(&v10[v19], 1, 1, v20);
  *&v10[v18[20]] = v16;
  v10[v18[21]] = 0;
  v21 = &v10[v18[22]];
  *v21 = 0;
  v21[1] = 0;
  v10[v18[23]] = 2;
  v22 = &v10[v18[24]];
  *v22 = 0;
  *(v22 + 1) = 0xE000000000000000;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) + 36);
  v105 = v7;
  v24 = &v10[v7[9]];
  sub_1DD5FA998();
  v25 = sub_1DD5FA8C8(v15);
  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  *v10 = v27;
  *(v10 + 1) = v28;
  v109 = v15;
  v29 = [v15 term];
  v30 = sub_1DD63FDD8();
  v32 = v31;

  *(v10 + 5) = v30;
  *(v10 + 6) = v32;
  v33 = v110;
  v34 = [v110 originAppId];
  v35 = sub_1DD63FDD8();
  v37 = v36;

  v38 = v21[1];

  *v21 = v35;
  v21[1] = v37;
  v39 = type metadata accessor for ContactResolver.SignalSet(0);
  v24[*(v39 + 168) + 9] = 1;
  v40 = [v33 originAppId];
  v41 = sub_1DD63FDD8();
  v43 = v42;

  v102 = v39;
  v44 = *(v39 + 172);
  v107 = v24;
  v45 = &v24[v44];
  v46 = *&v24[v44 + 24];

  *(v45 + 2) = v41;
  *(v45 + 3) = v43;
  v24[338] = 1;
  memcpy(v120, v112, sizeof(v120));
  v47 = *(v112 + 30);
  v119 = *(v112 + 248);
  LODWORD(v39) = *(type metadata accessor for ThirdPartyContactMatcher(0) + 20);
  v48 = type metadata accessor for StringTokenizer();
  v117 = v48;
  v118 = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(&v115);
  sub_1DD5FA998();
  memcpy(v113, v120, 0xF0uLL);
  v112 = v47;
  v113[30] = v47;
  v114 = v119;
  sub_1DD41E258();
  MEMORY[0x1EEE9AC00](v49);
  *(&v101 - 2) = &v115;
  *(&v101 - 4) = 1;
  v50 = v106;
  sub_1DD582E38();
  v52 = v51;
  v12 = v50;

  v53 = sub_1DD41859C(v52);
  __swift_destroy_boxed_opaque_existential_1(&v115);
  v113[3] = v48;
  v113[4] = &off_1F58C2FE8;
  __swift_allocate_boxed_opaque_existential_1(v113);
  sub_1DD5FA998();
  v103 = v10;
  sub_1DD40FC64();
  MEMORY[0x1EEE9AC00](v54);
  *(&v101 - 2) = v113;
  *(&v101 - 4) = 1;
  sub_1DD582E38();
  v56 = v55;

  v57 = sub_1DD41859C(v56);
  __swift_destroy_boxed_opaque_existential_1(v113);
  v58 = sub_1DD5839F8(v57, v53);
  v11 = v107;
  v107[333] = v58 & 1;
  v59 = sub_1DD5839F8(v53, v57);

  v11[334] = v59 & 1;
  if (sub_1DD4F9BB8())
  {
    goto LABEL_11;
  }

  v60 = sub_1DD63D118();
  v11 = v61;
  v113[0] = v60;
  v113[1] = v61;
  v115 = 24938;
  v116 = 0xE200000000000000;
  v12 = sub_1DD3B52B8();
  sub_1DD3B530C();
  v62 = sub_1DD63FD48();

  if (v62)
  {
    goto LABEL_11;
  }

  v63 = sub_1DD63D118();
  v11 = v64;
  v113[0] = v63;
  v113[1] = v64;
  v115 = 28523;
  v116 = 0xE200000000000000;
  v65 = sub_1DD63FD48();

  if (v65)
  {
LABEL_11:

    if (v107[*(v102 + 180)] == 1)
    {
LABEL_12:
      swift_unknownObjectRelease();
      v66 = v108;
      v67 = v105;
      goto LABEL_13;
    }
  }

  else
  {
    if (v58 & v59)
    {
      goto LABEL_19;
    }

    v98 = v105;
    if ((v107[*(v102 + 180)] & 1) != 0 || v107[*(v102 + 148)] == 1)
    {
      swift_unknownObjectRelease();

      v66 = v108;
      v67 = v98;
LABEL_13:
      __swift_storeEnumTagSinglePayload(v66, 1, 1, v67);
      v68 = v103;
      return sub_1DD390754(v68, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    if (v58)
    {
LABEL_19:
    }

    else
    {
      v113[0] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD10, &qword_1DD6589F0);
      sub_1DD3FAC5C(&qword_1ECCDFD18, &qword_1ECCDFD10, &qword_1DD6589F0);
      sub_1DD3B7F10();
      sub_1DD640088();
      v11 = v99;

      v100 = sub_1DD63FF08();

      if (v100 <= 2)
      {
        goto LABEL_12;
      }
    }
  }

  v106 = v50;
  v79 = 0;
  v111 = *(v112 + 2);
  v80 = (v112 + 72);
  v7 = v109;
  while (1)
  {
    if (v111 == v79)
    {
      swift_unknownObjectRelease();
      goto LABEL_41;
    }

    if (v79 >= *(v112 + 2))
    {
      break;
    }

    v81 = *(v80 - 4);
    v11 = *(v80 - 3);
    v83 = *(v80 - 2);
    v82 = *(v80 - 1);
    v84 = *v80;

    v85 = sub_1DD5FA8C8(v7);
    if (!v86)
    {
      goto LABEL_36;
    }

    v12 = v86;
    if (v83 == v85 && v86 == v82)
    {
    }

    else
    {
      v88 = sub_1DD640CD8();

      if ((v88 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v89 = [v110 originAppId];
    v12 = sub_1DD63FDD8();
    v91 = v90;

    if (v81 == v12 && v11 == v91)
    {

      swift_unknownObjectRelease();

      goto LABEL_40;
    }

    v93 = sub_1DD640CD8();

    v7 = v109;
    if (v93)
    {

      swift_unknownObjectRelease();
LABEL_40:

      v94 = v107;
      v107[339] = 1;
      *(v94 + 43) = v84;
LABEL_41:
      v95 = v105;
      v96 = v103;
      v97 = v108;
      sub_1DD3C4EB4();
      __swift_storeEnumTagSinglePayload(v97, 0, 1, v95);
      v68 = v96;
      return sub_1DD390754(v68, &qword_1ECCDBBE8, &qword_1DD644470);
    }

LABEL_36:

    v80 += 6;
    ++v79;
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_15:
  v69 = sub_1DD63F9F8();
  __swift_project_value_buffer(v69, qword_1EE16F068);
  v70 = v11;
  v71 = sub_1DD63F9D8();
  v72 = sub_1DD640378();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v113[0] = v74;
    *v73 = 136315138;
    v120[0] = [v70 v12[80]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC750, &qword_1DD648228);
    v75 = sub_1DD63FE38();
    v77 = sub_1DD39565C(v75, v76, v113);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_1DD38D000, v71, v72, "wanted CKVCustomTerm, got %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x1E12B3DA0](v74, -1, -1);
    MEMORY[0x1E12B3DA0](v73, -1, -1);
  }

  return __swift_storeEnumTagSinglePayload(v108, 1, 1, v7);
}

unint64_t sub_1DD5F9AC8()
{
  OUTLINED_FUNCTION_18_7();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCF0, &unk_1DD663B98);
  v2 = OUTLINED_FUNCTION_7(v87);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v75 = v5;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v9 = OUTLINED_FUNCTION_0(v8);
  v72 = v10;
  v73 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v66 - v13;
  v15 = 0;
  v89 = MEMORY[0x1E69E7CC8];
  v16 = *(v1 + 16);
  while (v16 != v15)
  {
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
    sub_1DD5FA378(&v89, v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15++, v0);
  }

  v18 = v89;
  v19 = *(v89 + 16);
  if (v19)
  {
    v66 = 0;
    v89 = MEMORY[0x1E69E7CC0];
    sub_1DD42B4F8();
    v88 = v89;
    result = sub_1DD5FAA0C(v18);
    v23 = 0;
    v24 = v18 + 64;
    v68 = v21;
    v67 = v18 + 72;
    v69 = v19;
    v71 = v18 + 64;
    v70 = v18;
    while ((result & 0x8000000000000000) == 0 && result < 1 << *(v18 + 32))
    {
      if ((*(v24 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_27;
      }

      if (*(v18 + 36) != v21)
      {
        goto LABEL_28;
      }

      v79 = 1 << result;
      v80 = result >> 6;
      v77 = v23;
      v78 = v21;
      v76 = v22;
      v25 = *(v87 + 48);
      v26 = *(v18 + 56);
      v27 = (*(v18 + 48) + 48 * result);
      v81 = *v27;
      v28 = v27[1];
      v84 = v27[2];
      v29 = v84;
      v85 = v28;
      v31 = v27[3];
      v82 = v27[4];
      v30 = v82;
      v83 = v31;
      v32 = v27[5];
      v33 = result;
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0) - 8);
      v35 = *(*v34 + 72);
      v86 = v33;
      sub_1DD3C4EB4();
      v36 = v75;
      *v75 = v81;
      v36[1] = v28;
      v36[2] = v29;
      v36[3] = v31;
      v36[4] = v30;
      v36[5] = v32;
      v37 = v36 + *(v87 + 48);
      sub_1DD447808();
      *v14 = 0;
      *(v14 + 1) = 0xE000000000000000;
      v14[16] = 2;
      *(v14 + 3) = 0;
      *(v14 + 4) = 0xE000000000000000;
      *(v14 + 7) = 0;
      *(v14 + 8) = 0xE000000000000000;
      *(v14 + 9) = 0;
      *(v14 + 10) = 0xE000000000000000;
      *(v14 + 11) = 0;
      *(v14 + 12) = 0xE000000000000000;
      *(v14 + 13) = 0;
      *(v14 + 14) = 0xE000000000000000;
      *(v14 + 15) = 0;
      *(v14 + 16) = 0xE000000000000000;
      *(v14 + 17) = 0;
      *(v14 + 18) = 0xE000000000000000;
      *(v14 + 19) = 0;
      *(v14 + 20) = 0xE000000000000000;
      *(v14 + 21) = 0;
      *(v14 + 22) = 0xE000000000000000;
      *(v14 + 23) = 0;
      *(v14 + 24) = 0xE000000000000000;
      *(v14 + 25) = 0;
      *(v14 + 26) = 0xE000000000000000;
      v38 = MEMORY[0x1E69E7CC0];
      *(v14 + 27) = MEMORY[0x1E69E7CC0];
      v39 = type metadata accessor for Contact();
      v40 = v39[19];
      v41 = sub_1DD63CBB8();
      __swift_storeEnumTagSinglePayload(&v14[v40], 1, 1, v41);
      *&v14[v39[20]] = v38;
      v14[v39[21]] = 0;
      v42 = &v14[v39[22]];
      *v42 = 0;
      *(v42 + 1) = 0;
      v14[v39[23]] = 2;
      v43 = &v14[v39[24]];
      *v43 = 0;
      *(v43 + 1) = 0xE000000000000000;
      v44 = v34[11];
      v45 = &v14[*(v73 + 36)];
      sub_1DD5FA998();
      v46 = v82;
      *(v14 + 5) = v83;
      *(v14 + 6) = v46;
      v47 = *(v42 + 1);
      swift_bridgeObjectRetain_n();
      v48 = v84;
      swift_bridgeObjectRetain_n();

      v49 = v85;
      *v42 = v85;
      *(v42 + 1) = v48;
      v45[339] = 1;
      *(v45 + 43) = v32;
      v50 = type metadata accessor for ContactResolver.SignalSet(0);
      v45[*(v50 + 168) + 9] = 1;
      v51 = &v45[*(v50 + 172)];
      v52 = *(v51 + 3);

      *(v51 + 2) = v49;
      *(v51 + 3) = v48;
      v53 = v88;
      sub_1DD390754(v36, &unk_1ECCDFCF0, &unk_1DD663B98);
      v89 = v53;
      v55 = *(v53 + 16);
      v54 = *(v53 + 24);
      v88 = v53;
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v54);
        sub_1DD42B4F8();
        v88 = v89;
      }

      *(v88 + 16) = v55 + 1;
      OUTLINED_FUNCTION_18_3();
      v57 = *(v56 + 72);
      sub_1DD447808();
      v18 = v70;
      v58 = 1 << *(v70 + 32);
      result = v86;
      v24 = v71;
      if (v86 >= v58)
      {
        goto LABEL_29;
      }

      v59 = *(v71 + 8 * v80);
      if ((v59 & v79) == 0)
      {
        goto LABEL_30;
      }

      if (*(v70 + 36) != v78)
      {
        goto LABEL_31;
      }

      v60 = v59 & (-2 << (v86 & 0x3F));
      if (v60)
      {
        v58 = __clz(__rbit64(v60)) | v86 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v61 = v80 << 6;
        v62 = v80 + 1;
        v63 = (v67 + 8 * v80);
        while (v62 < (v58 + 63) >> 6)
        {
          v65 = *v63++;
          v64 = v65;
          v61 += 64;
          ++v62;
          if (v65)
          {
            sub_1DD3AA558(v86, v78, v76 & 1);
            v58 = __clz(__rbit64(v64)) + v61;
            goto LABEL_22;
          }
        }

        sub_1DD3AA558(v86, v78, v76 & 1);
      }

LABEL_22:
      v22 = 0;
      v23 = v77 + 1;
      result = v58;
      v21 = v68;
      if (v77 + 1 == v69)
      {

        return v88;
      }
    }

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
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD5FA120(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = (&v26 - v7);
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[5];
  v26 = a1[6];
  v27 = v11;
  v12 = type metadata accessor for Contact();
  v31 = *(a2 + 16);
  if (v31)
  {
    v13 = 0;
    v14 = (a1 + *(v12 + 88));
    v15 = v14[1];
    v29 = *v14;
    v30 = v12;
    v16 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v18 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v18 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v28 = v18;
    do
    {
      sub_1DD3C4EB4();
      v19 = *v8 == v9 && v8[1] == v10;
      if (!v19 && (sub_1DD640CD8() & 1) == 0 && v28)
      {
        goto LABEL_28;
      }

      v20 = (v8 + *(v30 + 88));
      v21 = v20[1];
      if (v21)
      {
        if (!v15)
        {

LABEL_28:
          sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
          goto LABEL_29;
        }

        v22 = *v20 == v29 && v21 == v15;
        if (!v22 && (sub_1DD640CD8() & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      else
      {

        if (v15)
        {
          goto LABEL_28;
        }
      }

      if (v8[5] == v27 && v8[6] == v26)
      {
        sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
        return v13;
      }

      v24 = sub_1DD640CD8();
      sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v24)
      {
        return v13;
      }

LABEL_29:
      ++v13;
      v16 += v17;
    }

    while (v31 != v13);
  }

  return 0;
}

uint64_t sub_1DD5FA378(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v48[-v8];
  v53 = sub_1DD63E428();
  v9 = *(*(v53 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v53);
  v52 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v55 = a2;
  v59 = *(a2 + 240);
  v58 = *(v59 + 16);
  if (!v58)
  {
    return result;
  }

  v13 = 0;
  v57 = v59 + 32;
  v51 = *MEMORY[0x1E69D1AE8];
  v50 = (v11 + 104);
  v49 = (v11 + 8);
  v56 = a1;
  while (v13 < *(v59 + 16))
  {
    v14 = v57 + 48 * v13;
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
    v17 = *(v14 + 24);
    v18 = *(v14 + 32);
    v19 = *(v14 + 40);
    LOBYTE(v62) = *v14;
    *(&v62 + 1) = v16;
    *&v63 = v15;
    *(&v63 + 1) = v17;
    *&v64 = v18;
    *(&v64 + 1) = v19;
    if (*(a3 + 16))
    {
      v20 = *(a3 + 40);
      sub_1DD640E28();
      swift_bridgeObjectRetain_n();

      sub_1DD63FD28();
      v21 = sub_1DD640E78();
      v22 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v23 = v21 & v22;
        if (((*(a3 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {
          break;
        }

        v24 = (*(a3 + 48) + 16 * v23);
        if (*v24 != v16 || v24[1] != v15)
        {
          v26 = sub_1DD640CD8();
          v21 = v23 + 1;
          if ((v26 & 1) == 0)
          {
            continue;
          }
        }

        v65 = v18;

        goto LABEL_19;
      }

      if (*(a3 + 16))
      {
LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
    }

    v65 = v18;
    v27 = v52;
    v28 = v53;
    (*v50)(v52, v51, v53);
    v29 = sub_1DD63E418();
    v31 = v30;
    (*v49)(v27, v28);
    if (v16 == v29 && v15 == v31)
    {

      a1 = v56;
      goto LABEL_31;
    }

    v33 = sub_1DD640CD8();

    a1 = v56;
    if (v33)
    {
      goto LABEL_30;
    }

LABEL_19:
    sub_1DD3C4EB4();
    v34 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v61 = *a1;
    v35 = v61;
    v36 = sub_1DD3FED98();
    if (__OFADD__(v35[2], (v37 & 1) == 0))
    {
      goto LABEL_34;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD00, &qword_1DD663BA8);
    if (sub_1DD640A08())
    {
      v38 = sub_1DD3FED98();
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_36;
      }

      if ((v39 & 1) == 0)
      {
LABEL_25:
        v41 = v61;
        v61[(v38 >> 6) + 8] |= 1 << v38;
        v42 = (v41[6] + 48 * v38);
        v43 = v63;
        *v42 = v62;
        v42[1] = v43;
        v42[2] = v64;
        v44 = v41[7] + *(v54 + 72) * v38;
        result = sub_1DD447808();
        v45 = v41[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_35;
        }

        v41[2] = v47;
        goto LABEL_27;
      }
    }

    else if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }

    v41 = v61;
    result = sub_1DD5FA928(v60, v61[7] + *(v54 + 72) * v38);
LABEL_27:
    a1 = v56;
    *v56 = v41;
LABEL_31:
    if (++v13 == v58)
    {
      return result;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD5FA8C8(void *a1)
{
  v1 = [a1 vocabularyId];
  if (v1)
  {
    v2 = v1;
    sub_1DD63FDD8();
  }

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1DD5FA928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5FA998()
{
  OUTLINED_FUNCTION_18_7();
  v2 = v1(0);
  OUTLINED_FUNCTION_7(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v0;
}

uint64_t sub_1DD5FAA0C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_1DD640728();
  v4 = *(a1 + 36);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_54()
{

  return sub_1DD63FD48();
}

void OUTLINED_FUNCTION_19_39()
{

  sub_1DD42B5EC(0, v0, 0);
}

Swift::Bool __swiftcall TerminalElement.Time.canConvertToTime()()
{
  v0 = sub_1DD63E118();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29 - v18;
  sub_1DD63E0E8();
  if ((v20 & 1) == 0)
  {
    return 1;
  }

  sub_1DD63E0B8();
  if ((v21 & 1) == 0)
  {
    return 1;
  }

  sub_1DD63E0D8();
  if (!v22)
  {
    sub_1DD63E0C8();
    v24 = sub_1DD63DFD8();
    if (__swift_getEnumTagSinglePayload(v19, 1, v24) == 1)
    {
      sub_1DD417838(v19, &qword_1ECCDD2A8, &qword_1DD64F428);
      return 0;
    }

    sub_1DD63DFC8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v0) == 1)
    {
      sub_1DD417838(v13, &qword_1ECCDD2A0, &qword_1DD64F420);
LABEL_11:
      OUTLINED_FUNCTION_72(v24);
      (*(v25 + 8))(v19, v24);
      return 0;
    }

    (*(v3 + 16))(v7, v13, v0);
    v26 = (*(v3 + 88))(v7, v0);
    if (v26 == *MEMORY[0x1E69D18A0] || v26 == *MEMORY[0x1E69D19A0])
    {
      (*(v3 + 8))(v13, v0);
    }

    else
    {
      v28 = *(v3 + 8);
      if (v26 != *MEMORY[0x1E69D18B8])
      {
        v28(v7, v0);
        v28(v13, v0);
        goto LABEL_11;
      }

      v28(v13, v0);
    }

    OUTLINED_FUNCTION_72(v24);
    (*(v27 + 8))(v19, v24);
    return 1;
  }

  return 1;
}

uint64_t TerminalElement.Time.toTime()()
{
  v0 = sub_1DD63E118();
  v51 = OUTLINED_FUNCTION_0(v0);
  v52 = v1;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A8, &qword_1DD64F428);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2B0, &qword_1DD64F430);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - v21;
  v23 = sub_1DD63E0D8();
  if (v24 && (v55 = v23, v56 = v24, v53 = 19777, v54 = 0xE200000000000000, sub_1DD3B7F10(), v25 = OUTLINED_FUNCTION_4_93(), , !v25))
  {
    v29 = 0;
  }

  else
  {
    v26 = sub_1DD63E0D8();
    if (v27 && (v55 = v26, v56 = v27, v53 = 19792, v54 = 0xE200000000000000, sub_1DD3B7F10(), v28 = OUTLINED_FUNCTION_4_93(), , !v28))
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }
  }

  sub_1DD63E0F8();
  v30 = sub_1DD63E1B8();
  if (__swift_getEnumTagSinglePayload(v22, 1, v30) == 1)
  {
    sub_1DD417838(v22, &qword_1ECCDD2B0, &qword_1DD64F430);
LABEL_11:
    v33 = 0;
    goto LABEL_13;
  }

  TerminalElement.Qualifier.toQualifier()(&v55);
  OUTLINED_FUNCTION_72(v30);
  (*(v31 + 8))(v22, v30);
  v32 = v55;
  if (v55 == 20)
  {
    goto LABEL_11;
  }

  LOBYTE(v55) = 38;
  LOBYTE(v53) = v32;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v33 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, &v55, &v53);

LABEL_13:
  v34 = sub_1DD63E0E8();
  v36 = v35;
  v37 = sub_1DD63E0B8();
  v39 = v38;
  LOBYTE(v55) = v29;
  sub_1DD63E0C8();
  v40 = sub_1DD63DFD8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v40) != 1)
  {
    sub_1DD63DFC8();

    v42 = v51;
    if (__swift_getEnumTagSinglePayload(v10, 1, v51) == 1)
    {
      sub_1DD417838(v10, &qword_1ECCDD2A0, &qword_1DD64F420);
      v41 = 3;
LABEL_23:
      OUTLINED_FUNCTION_72(v40);
      (*(v47 + 8))(v16, v40);
      goto LABEL_24;
    }

    v49 = v37;
    v43 = v34;
    v44 = v52;
    v45 = v50;
    (*(v52 + 16))(v50, v10, v42);
    v46 = (*(v44 + 88))(v45, v42);
    if (v46 == *MEMORY[0x1E69D18A0])
    {
      v41 = 0;
      v34 = v43;
    }

    else
    {
      v34 = v43;
      if (v46 != *MEMORY[0x1E69D19A0])
      {
        v37 = v49;
        if (v46 == *MEMORY[0x1E69D18B8])
        {
          v41 = 2;
        }

        else
        {
          (*(v52 + 8))(v50, v42);
          v41 = 3;
        }

        goto LABEL_22;
      }

      v41 = 1;
    }

    v37 = v49;
LABEL_22:
    (*(v52 + 8))(v10, v42);
    goto LABEL_23;
  }

  sub_1DD417838(v16, &qword_1ECCDD2A8, &qword_1DD64F428);
  v41 = 3;
LABEL_24:
  LOBYTE(v53) = v41;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v34, v36 & 1, v37, v39 & 1, 0, 1, &v55, &v53, v33, 1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:meridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  OUTLINED_FUNCTION_1_129();
  v8 = swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(a1, a2, a3, a4);
  return v8;
}

uint64_t static DateTime.Time.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 57);
  v3 = *(a2 + 57);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      LOBYTE(v3) = 0;
      goto LABEL_6;
    }
  }

  else if (v3 != 2)
  {
    if (((v3 ^ v2) & 1) == 0)
    {
LABEL_6:
      if (*(a1 + 24) & 1) != 0 || (*(a2 + 24))
      {
        return 0;
      }

      v4 = *(a1 + 16);
      v5 = *(a2 + 16);
      v6 = (v2 & (v4 < 12)) != 0 ? v4 + 12 : *(a1 + 16);
      v7 = (v3 & (v5 < 12)) != 0 ? v5 + 12 : *(a2 + 16);
      if (v6 >= v7)
      {
        if (v6 != v7)
        {
          return 0;
        }

        if (*(a1 + 40))
        {
          return 0;
        }

        if (*(a2 + 40))
        {
          return 0;
        }

        v8 = *(a1 + 32);
        v9 = *(a2 + 32);
        if (v8 >= v9 && (v8 != v9 || v4 >= v5 && (v4 != v5 || (*(a1 + 56) & 1) != 0 || (*(a2 + 56) & 1) != 0 || *(a1 + 48) >= *(a2 + 48))))
        {
          return 0;
        }
      }

      return 1;
    }

    if (v2 & 1) == 0 && (v3)
    {
      return 1;
    }
  }

  return 0;
}

BOOL static DateTime.Time.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a1 + 58);
  v6 = *(a2 + 58);
  if (v5 == 3)
  {
    if (v6 != 3)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 57);
  v9 = *(a2 + 57);
  result = v9 == 2 && v8 == 2;
  if (v8 != 2 && v9 != 2)
  {
    return ((v9 ^ v8) & 1) == 0;
  }

  return result;
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  OUTLINED_FUNCTION_14_47();
  OUTLINED_FUNCTION_1_129();
  v10 = swift_allocObject();
  result = OUTLINED_FUNCTION_9_62(v10);
  *(result + 56) = a6 & 1;
  *(result + 57) = v12;
  *(result + 58) = v13;
  *(result + 64) = a9;
  *(result + 72) = a10;
  return result;
}

uint64_t DateTime.Time.hour.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t DateTime.Time.minute.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t DateTime.Time.second.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_1DD5FB608(char a1)
{
  result = swift_beginAccess();
  *(v1 + 73) = a1;
  return result;
}

uint64_t DateTime.Time.__allocating_init(withHour:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_129();
  v2 = swift_allocObject();
  DateTime.Time.init(withHour:)(a1);
  return v2;
}

uint64_t DateTime.Time.init(withHour:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 57) = 770;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_129();
  v4 = swift_allocObject();
  DateTime.Time.init(withHour:minute:)(a1, a2);
  return v4;
}

uint64_t DateTime.Time.init(withHour:minute:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 32) = a2;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 57) = 770;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:)()
{
  OUTLINED_FUNCTION_1_129();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Time.init(withHour:minute:second:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Time.init(withHour:minute:second:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0;
  *(v3 + 57) = 770;
  *(v3 + 64) = 0;
  return OUTLINED_FUNCTION_2_115(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:meridiem:)(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_1_129();
  v4 = swift_allocObject();
  DateTime.Time.init(withHour:meridiem:)(a1, a2);
  return v4;
}

uint64_t DateTime.Time.init(withHour:meridiem:)(uint64_t a1, char *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  *(v2 + 57) = v3;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  *(v2 + 58) = 3;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:meridiem:)()
{
  OUTLINED_FUNCTION_1_129();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_30_0();
  DateTime.Time.init(withHour:minute:meridiem:)(v1, v2, v3);
  return v0;
}

uint64_t DateTime.Time.init(withHour:minute:meridiem:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 57) = v4;
  *(v3 + 48) = 0;
  *(v3 + 56) = 1;
  *(v3 + 58) = 3;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.init(withHour:minute:second:meridiem:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 32) = a2;
  *(v4 + 40) = 0;
  *(v4 + 48) = a3;
  *(v4 + 56) = 0;
  *(v4 + 57) = v5;
  *(v4 + 58) = 3;
  *(v4 + 64) = 0;
  return OUTLINED_FUNCTION_2_115(1);
}

uint64_t DateTime.Time.__allocating_init(withDefinedValue:)(_BYTE *a1)
{
  OUTLINED_FUNCTION_1_129();
  v2 = swift_allocObject();
  DateTime.Time.init(withDefinedValue:)(a1);
  return v2;
}

uint64_t DateTime.Time.init(withDefinedValue:)(_BYTE *a1)
{
  *(v1 + 58) = *a1;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 513;
  return OUTLINED_FUNCTION_0_144(1);
}

uint64_t DateTime.Time.__allocating_init(withHour:minute:second:meridiem:definedValue:setByUser:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  OUTLINED_FUNCTION_14_47();
  OUTLINED_FUNCTION_1_129();
  v10 = swift_allocObject();
  result = OUTLINED_FUNCTION_9_62(v10);
  *(result + 56) = a6 & 1;
  *(result + 57) = v12;
  *(result + 58) = v13;
  *(result + 64) = 0;
  *(result + 72) = a9;
  return result;
}

uint64_t DateTime.Time.init(withHour:minute:second:meridiem:definedValue:setByUser:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, char *a8, char a9)
{
  v10 = *a7;
  v11 = *a8;
  *(v9 + 73) = 0;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4 & 1;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6 & 1;
  *(v9 + 57) = v10;
  *(v9 + 58) = v11;
  *(v9 + 64) = 0;
  return OUTLINED_FUNCTION_16_41(a9);
}

uint64_t DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, char *a7, char *a8, uint64_t a9, char a10)
{
  v11 = *a7;
  v12 = *a8;
  *(v10 + 73) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2 & 1;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4 & 1;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6 & 1;
  *(v10 + 57) = v11;
  *(v10 + 58) = v12;
  *(v10 + 64) = a9;
  return OUTLINED_FUNCTION_16_41(a10);
}

uint64_t sub_1DD5FBA5C()
{
  if (*(v0 + 24) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1DD640E48();
    MEMORY[0x1E12B3140](v1);
  }

  if (*(v0 + 40) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v2 = *(v0 + 32);
    sub_1DD640E48();
    MEMORY[0x1E12B3140](v2);
  }

  if (*(v0 + 56) == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    v3 = *(v0 + 48);
    sub_1DD640E48();
    MEMORY[0x1E12B3140](v3);
  }

  v4 = *(v0 + 58);
  sub_1DD640E48();
  if (v4 != 3)
  {
    MEMORY[0x1E12B3140](v4);
  }

  v5 = *(v0 + 57);
  sub_1DD640E48();
  if (v5 != 2)
  {
    MEMORY[0x1E12B3140](v5 & 1);
  }

  v6 = *(v0 + 72);
  sub_1DD640E48();
  if (!*(v0 + 64))
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  return sub_1DD49CDC8();
}

BOOL static DateTime.Time.> infix(_:_:)()
{
  type metadata accessor for DateTime.Time();
  OUTLINED_FUNCTION_1_8();
  return !static DateTime.Time.<= infix(_:_:)();
}

BOOL static DateTime.Time.<= infix(_:_:)()
{
  type metadata accessor for DateTime.Time();
  v0 = OUTLINED_FUNCTION_1_8();
  if (static DateTime.Time.< infix(_:_:)(v0, v1))
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_1_8();
  return static DateTime.Time.== infix(_:_:)(v3, v4);
}

BOOL static DateTime.Time.>= infix(_:_:)()
{
  type metadata accessor for DateTime.Time();
  v0 = OUTLINED_FUNCTION_1_8();
  return (static DateTime.Time.< infix(_:_:)(v0, v1) & 1) == 0;
}

uint64_t sub_1DD5FBC68()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v13 = *(v0 + 16);
    v1 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v1);

    sub_1DD3BE2A4();
    if (*(v2 + 16) >= *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v3 = *(v0 + 32);
    OUTLINED_FUNCTION_17_41();
    v4 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v4);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if ((*(v0 + 56) & 1) == 0)
  {
    v6 = *(v0 + 48);
    OUTLINED_FUNCTION_17_41();
    v7 = sub_1DD640CB8();
    MEMORY[0x1E12B2260](v7);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 57) != 2)
  {
    MEMORY[0x1E12B2260](0x6D6569646972656DLL, 0xE90000000000003DLL);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 58) != 3)
  {
    MEMORY[0x1E12B2260](0x5664656E69666564, 0xED00003D65756C61);
    sub_1DD6409F8();
    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  if (*(v0 + 64))
  {

    v8 = sub_1DD49D2E4();
    MEMORY[0x1E12B2260](v8);

    if ((OUTLINED_FUNCTION_27_0() & 1) == 0)
    {
      OUTLINED_FUNCTION_23();
    }

    OUTLINED_FUNCTION_7_27();
    if (v5)
    {
      OUTLINED_FUNCTION_3_2();
    }

    OUTLINED_FUNCTION_5_3();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v9 = sub_1DD63FD58();
  v11 = v10;

  MEMORY[0x1E12B2260](v9, v11);

  MEMORY[0x1E12B2260](93, 0xE100000000000000);
  return 0x5B656D6954;
}

uint64_t sub_1DD5FC048()
{
  result = *(v0 + 16);
  if ((*(v0 + 24) & 1) == 0)
  {
    v2 = *(v0 + 57);
    if ((v2 & 1 & (result < 12)) != 0)
    {
      v3 = result + 12;
    }

    else
    {
      v3 = *(v0 + 16);
    }

    if (v3 == 12 && (v2 & 1) == 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    if (v2 != 2)
    {
      return v5;
    }
  }

  return result;
}

void sub_1DD5FC0A4()
{
  v1 = v0;
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1ECD0DDC0);

  oslog = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67240960;
    *(v4 + 4) = (v1[24] & 1) == 0;
    *(v4 + 8) = 1026;
    *(v4 + 10) = (v1[40] & 1) == 0;
    *(v4 + 14) = 1026;
    *(v4 + 16) = (v1[56] & 1) == 0;
    *(v4 + 20) = 1026;
    *(v4 + 22) = v1[57] != 2;

    _os_log_impl(&dword_1DD38D000, oslog, v3, "hour present: %{BOOL,public}d, minute present: %{BOOL,public}d, second present: %{BOOL,public}d, meridiem present: %{BOOL,public}d", v4, 0x1Au);
    MEMORY[0x1E12B3DA0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD5FC228(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6574756E696DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x646E6F636573 && a2 == 0xE600000000000000;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D6569646972656DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x5664656E69666564 && a2 == 0xEC00000065756C61;
          if (v9 || (sub_1DD640CD8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6E6972727563636FLL && a2 == 0xEB000000006E4967;
            if (v10 || (sub_1DD640CD8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6573557942746573 && a2 == 0xE900000000000072;
              if (v11 || (sub_1DD640CD8() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000011 && 0x80000001DD674A30 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1DD640CD8();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1DD5FC4B8(char a1)
{
  result = 1920298856;
  switch(a1)
  {
    case 1:
      result = 0x6574756E696DLL;
      break;
    case 2:
      result = 0x646E6F636573;
      break;
    case 3:
      result = 0x6D6569646972656DLL;
      break;
    case 4:
      result = 0x5664656E69666564;
      break;
    case 5:
      result = 0x6E6972727563636FLL;
      break;
    case 6:
      result = 0x6573557942746573;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5FC5AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5FC228(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5FC5D4(uint64_t a1)
{
  v2 = sub_1DD5FCEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5FC610(uint64_t a1)
{
  v2 = sub_1DD5FCEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DateTime.Time.deinit()
{
  v1 = *(v0 + 64);

  return v0;
}

uint64_t DateTime.Time.__deallocating_deinit()
{
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_1_129();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD5FC69C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD40, &qword_1DD663BB8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5FCEA8();
  sub_1DD640EF8();
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_32();
  sub_1DD640BF8();
  if (!v2)
  {
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    LOBYTE(v25) = 1;
    OUTLINED_FUNCTION_32();
    sub_1DD640BF8();
    v18 = *(v3 + 48);
    v19 = *(v3 + 56);
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_32();
    sub_1DD640BF8();
    LOBYTE(v25) = *(v3 + 57);
    v26 = 3;
    sub_1DD5FCEFC();
    OUTLINED_FUNCTION_10_56();
    sub_1DD640C08();
    LOBYTE(v25) = *(v3 + 58);
    v26 = 4;
    sub_1DD5FCF50();
    OUTLINED_FUNCTION_10_56();
    sub_1DD640C08();
    v25 = *(v3 + 64);
    v26 = 5;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_8_73();
    sub_1DD5FD04C(v20, 255, v21);
    OUTLINED_FUNCTION_32();
    sub_1DD640C08();
    v22 = *(v3 + 72);
    LOBYTE(v25) = 6;
    OUTLINED_FUNCTION_32();
    sub_1DD640C28();
    swift_beginAccess();
    v23 = *(v3 + 73);
    v26 = 7;
    OUTLINED_FUNCTION_10_56();
    sub_1DD640C28();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD5FC940()
{
  sub_1DD640E28();
  sub_1DD5FBA5C();
  return sub_1DD640E78();
}

uint64_t DateTime.Time.__allocating_init(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_1_129();
  v2 = swift_allocObject();
  DateTime.Time.init(from:)(a1);
  return v2;
}

uint64_t DateTime.Time.init(from:)(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFD60, &qword_1DD663BC0);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v1;
  *(v1 + 73) = 0;
  v9 = (v1 + 73);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5FCEA8();
  sub_1DD640ED8();
  if (v2)
  {
    type metadata accessor for DateTime.Time();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v20) = 0;
    OUTLINED_FUNCTION_5_85();
    *(v1 + 16) = sub_1DD640B08();
    *(v1 + 24) = v11 & 1;
    OUTLINED_FUNCTION_3_99(1);
    *(v1 + 32) = sub_1DD640B08();
    *(v1 + 40) = v12 & 1;
    OUTLINED_FUNCTION_3_99(2);
    *(v1 + 48) = sub_1DD640B08();
    *(v1 + 56) = v13 & 1;
    sub_1DD5FCFA4();
    OUTLINED_FUNCTION_5_85();
    sub_1DD640B18();
    *(v1 + 57) = 0;
    sub_1DD5FCFF8();
    OUTLINED_FUNCTION_5_85();
    sub_1DD640B18();
    *(v1 + 58) = 0;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_8_73();
    sub_1DD5FD04C(v14, 255, v15);
    OUTLINED_FUNCTION_5_85();
    sub_1DD640B18();
    *(v1 + 64) = v20;
    OUTLINED_FUNCTION_3_99(6);
    *(v1 + 72) = sub_1DD640B38() & 1;
    OUTLINED_FUNCTION_3_99(7);
    v17 = sub_1DD640B38();
    v18 = OUTLINED_FUNCTION_13_49();
    v19(v18);
    swift_beginAccess();
    *v9 = v17 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1DD5FCD40()
{
  sub_1DD640E28();
  v1 = *v0;
  sub_1DD5FBA5C();
  return sub_1DD640E78();
}

BOOL sub_1DD5FCDC8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.Time.<= infix(_:_:)();
}

BOOL sub_1DD5FCDEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.Time.>= infix(_:_:)();
}

BOOL sub_1DD5FCE10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return static DateTime.Time.> infix(_:_:)();
}

uint64_t sub_1DD5FCE34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = DateTime.Time.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1DD5FCEA8()
{
  result = qword_1ECCDFD48;
  if (!qword_1ECCDFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD48);
  }

  return result;
}

unint64_t sub_1DD5FCEFC()
{
  result = qword_1ECCDFD50;
  if (!qword_1ECCDFD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD50);
  }

  return result;
}

unint64_t sub_1DD5FCF50()
{
  result = qword_1ECCDFD58;
  if (!qword_1ECCDFD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD58);
  }

  return result;
}

unint64_t sub_1DD5FCFA4()
{
  result = qword_1ECCDFD68;
  if (!qword_1ECCDFD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD68);
  }

  return result;
}

unint64_t sub_1DD5FCFF8()
{
  result = qword_1ECCDFD70;
  if (!qword_1ECCDFD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD70);
  }

  return result;
}

uint64_t sub_1DD5FD04C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

_BYTE *_s4TimeC10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5FD428()
{
  result = qword_1ECCDFD80;
  if (!qword_1ECCDFD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD80);
  }

  return result;
}

unint64_t sub_1DD5FD480()
{
  result = qword_1ECCDFD88;
  if (!qword_1ECCDFD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD88);
  }

  return result;
}

unint64_t sub_1DD5FD4D8()
{
  result = qword_1ECCDFD90;
  if (!qword_1ECCDFD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD90);
  }

  return result;
}

unint64_t DateTime.TimeUnit.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 13;
  if (result < 0xD)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD5FD5A4()
{
  result = qword_1ECCDFD98;
  if (!qword_1ECCDFD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFD98);
  }

  return result;
}

uint64_t sub_1DD5FD600@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.TimeUnit.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s8TimeUnitOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD5FD7B4()
{
  result = qword_1ECCDFDA0;
  if (!qword_1ECCDFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFDA0);
  }

  return result;
}

uint64_t sub_1DD5FD81C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v8 = 1;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(7, 0, 0, &v8);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withTime:)(v1);
  v8 = 1;
  swift_allocObject();
  DateTime.Time.init(withHour:minute:second:meridiem:)(11, 59, 59, &v8);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withTime:)(v3);
  v8 = 1;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  v5 = DateTime.Interval.init(withQuantity:timeUnit:)(&v8, 0.0);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:interval:)(v2, v4, v5);
  OUTLINED_FUNCTION_1_11();
  v6 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v6);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD5FD9DC@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v50 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44[-v9 - 8];
  sub_1DD4BF298(a1, &v44[-v9 - 8]);
  v11 = v10[3];
  v12 = v10[4];
  OUTLINED_FUNCTION_0_145();
  if (v13)
  {

    v4 = OUTLINED_FUNCTION_1_130();
    v3 = v14;
    v5 = v11;

    if (v11)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[3] = v4;
    v10[4] = v3;
  }

  v15 = v10[5];
  v16 = v10[6];
  OUTLINED_FUNCTION_0_145();
  if (v17)
  {

    OUTLINED_FUNCTION_1_130();
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[5] = v3;
    v10[6] = v4;
  }

  v18 = v10[7];
  v19 = v10[8];
  OUTLINED_FUNCTION_0_145();
  if (v20)
  {

    OUTLINED_FUNCTION_1_130();
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[7] = v3;
    v10[8] = v4;
  }

  v21 = v10[9];
  v22 = v10[10];
  OUTLINED_FUNCTION_0_145();
  if (v23)
  {

    OUTLINED_FUNCTION_1_130();
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[9] = v3;
    v10[10] = v4;
  }

  v24 = v10[11];
  v25 = v10[12];
  OUTLINED_FUNCTION_0_145();
  if (v26)
  {

    OUTLINED_FUNCTION_1_130();
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[11] = v3;
    v10[12] = v4;
  }

  v27 = v10[15];
  v28 = v10[16];
  OUTLINED_FUNCTION_0_145();
  if (v29)
  {

    OUTLINED_FUNCTION_1_130();
    OUTLINED_FUNCTION_3_100();
    if (v5)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[15] = v3;
    v10[16] = v4;
  }

  v30 = v10[17];
  v31 = v10[18];
  OUTLINED_FUNCTION_0_145();
  if (!v32)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_130();
  OUTLINED_FUNCTION_3_100();
  if (v5)
  {
    return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
  }

  v10[17] = v3;
  v10[18] = v4;
LABEL_22:
  v33 = v10[19];
  v34 = v10[20];
  OUTLINED_FUNCTION_0_145();
  if (v35)
  {

    v36 = OUTLINED_FUNCTION_1_130();
    v38 = v37;

    if (v33)
    {
      return sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    }

    v10[19] = v36;
    v10[20] = v38;
  }

  v40 = v10 + *(v7 + 36);
  v40[*(type metadata accessor for ContactResolver.SignalSet(0) + 180)] = 1;
  memcpy(v46, v10, sizeof(v46));
  memcpy(v45, v10, sizeof(v45));
  memcpy(v47, a1, sizeof(v47));
  memcpy(v44, a1, sizeof(v44));
  sub_1DD3C9478(v46, v49);
  sub_1DD3C9478(v47, v49);
  LOBYTE(v40) = static ContactQuery.== infix(_:_:)(v45, v44);
  memcpy(v48, v44, sizeof(v48));
  sub_1DD3C9580(v48);
  memcpy(v49, v45, 0x108uLL);
  sub_1DD3C9580(v49);
  if (v40)
  {
    sub_1DD3D40D8(v10, &qword_1ECCDBC18, &unk_1DD6459A0);
    v41 = 1;
    v42 = v50;
  }

  else
  {
    v42 = v50;
    sub_1DD5C22B4(v10, v50);
    v41 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v42, v41, 1, v7);
}

uint64_t sub_1DD5FDD34(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE658, &qword_1DD664070);
  v4 = sub_1DD63DA78();
  OUTLINED_FUNCTION_4_63(v4);
  v6 = v5;
  v8 = *(v7 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F80;
  v11 = v10 + v9;
  v12 = *(v6 + 104);
  v12(v11, *MEMORY[0x1E69B28C8], v2);
  v12(v11 + v8, *MEMORY[0x1E69B28E0], v2);
  v13 = sub_1DD63DAA8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = sub_1DD63DA98();
  if (!v1)
  {
    v16 = v17;

    sub_1DD63DA88();
  }

  v18 = sub_1DD63D168();
  OUTLINED_FUNCTION_2_0(v18);
  (*(v19 + 8))(a1);
  return v16;
}

unint64_t sub_1DD5FDF3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE650, &unk_1DD658720);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_1DD63DAE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v29 = a1;
  sub_1DD63DA58();
  sub_1DD53D0F0(&qword_1EE165CB0);
  sub_1DD640068();
  sub_1DD53D0F0(&qword_1EE165CA8);
  v13 = (v7 + 32);
  v25 = v7;
  v14 = (v7 + 8);
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD640628();
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      break;
    }

    v15 = *v13;
    (*v13)(v12, v5, v6);
    if (sub_1DD63DAD8())
    {
      v15(v26, v12, v6);
      v16 = v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B9B0(0, *(v16 + 16) + 1, 1);
        v16 = v28;
      }

      v19 = *(v16 + 16);
      v18 = *(v16 + 24);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v27 = v19 + 1;
        v24 = v19;
        sub_1DD42B9B0(v18 > 1, v19 + 1, 1);
        v20 = v27;
        v19 = v24;
        v16 = v28;
      }

      *(v16 + 16) = v20;
      v21 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = v16;
      v15((v16 + v21 + *(v25 + 72) * v19), v26, v6);
    }

    else
    {
      (*v14)(v12, v6);
    }
  }

  sub_1DD3D40D8(v5, &qword_1ECCDE650, &unk_1DD658720);
  return v27;
}

uint64_t sub_1DD5FE24C()
{
  v2 = v0;
  v3 = sub_1DD63DAE8();
  v4 = OUTLINED_FUNCTION_4_63(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DD63DA68();
  if (!v0)
  {
    v12 = sub_1DD5FDF3C(v11);
    v13 = *(v12 + 16);
    if (v13)
    {
      v31 = v10;
      v27[2] = 0;
      v33 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v14 = v33;
      v16 = *(v6 + 16);
      v15 = v6 + 16;
      v17 = *(v15 + 64);
      v27[1] = v12;
      v18 = v12 + ((v17 + 32) & ~v17);
      v29 = *(v15 + 56);
      v30 = v16;
      v28 = (v15 - 8);
      v32 = v15;
      do
      {
        v19 = v31;
        v30(v31, v18, v1);
        v20 = sub_1DD63DAC8();
        v22 = v21;
        v23 = v1;
        (*v28)(v19, v1);
        v33 = v14;
        v24 = *(v14 + 16);
        if (v24 >= *(v14 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v14 = v33;
        }

        *(v14 + 16) = v24 + 1;
        v25 = v14 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        v18 += v29;
        --v13;
        v1 = v23;
      }

      while (v13);
    }

    else
    {

      v14 = MEMORY[0x1E69E7CC0];
    }

    v33 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v2 = sub_1DD63FD58();
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_3_100()
{
}

uint64_t sub_1DD5FE4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1DD6405F8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD5FE544(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DD5FE6BC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

void *sub_1DD5FE9FC()
{
  v0[2] = 0xD000000000000028;
  v0[3] = 0x80000001DD674AB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDB8, &unk_1DD6641E0);
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v0[5] = v1;
  v2 = [objc_opt_self() clientWithIdentifier_];
  v0[4] = v2;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v2;

  v6 = sub_1DD63FDA8();

  v7 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_1DD5FF4E8;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DD54F324;
  v11[3] = &block_descriptor_23;
  v8 = _Block_copy(v11);

  v9 = [v5 addUpdateHandlerForNamespaceName:v6 queue:0 usingBlock:v8];
  _Block_release(v8);
  swift_unknownObjectRelease();

  sub_1DD5FECD8();
  return v0;
}

uint64_t sub_1DD5FEBB4()
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F0C8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "TrialAppRankerSELFConfigProvider got Trial update", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [*(result + 32) refresh];
    sub_1DD5FECD8();
  }

  return result;
}

uint64_t sub_1DD5FECD8()
{
  v1 = v0[4];
  v2 = sub_1DD63FDA8();
  v4 = v0[2];
  v3 = v0[3];
  v67 = v0;
  v5 = sub_1DD63FDA8();
  v68 = v1;
  v6 = [v1 levelForFactor:v2 withNamespaceName:v5];

  if (v6)
  {
    v7 = [v6 longValue];
  }

  else
  {
    v7 = 0;
  }

  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD63F9F8();
  __swift_project_value_buffer(v8, qword_1EE16F0C8);
  v9 = sub_1DD63F9D8();
  v10 = sub_1DD640368();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_54();
    v11 = OUTLINED_FUNCTION_1_131();
    *&v70[0] = v11;
    *v4 = 136315138;
    *&v73 = v7;
    BYTE8(v73) = v6 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDB0, &qword_1DD6641D8);
    v12 = sub_1DD63FE38();
    v14 = sub_1DD39565C(v12, v13, v70);

    *(v4 + 4) = v14;
    OUTLINED_FUNCTION_3_101(&dword_1DD38D000, v15, v16, "TrialAppRankerSELFConfigProvider read from Trial, frequency: %s");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_0_1();
    v4 = v3;
    OUTLINED_FUNCTION_0_1();
  }

  v17 = 0.0;
  if (v6 && v7 >= 1)
  {
    v17 = 1.0 / v7;
  }

  v18 = sub_1DD63FDA8();
  v19 = sub_1DD63FDA8();
  v20 = [v68 levelForFactor:v18 withNamespaceName:v19];

  if (v20)
  {
    v21 = [v20 longValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_54();
    v24 = OUTLINED_FUNCTION_1_131();
    *&v70[0] = v24;
    *v4 = 136315138;
    *&v73 = v21;
    BYTE8(v73) = v20 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDB0, &qword_1DD6641D8);
    v25 = sub_1DD63FE38();
    v27 = sub_1DD39565C(v25, v26, v70);

    *(v4 + 4) = v27;
    OUTLINED_FUNCTION_3_101(&dword_1DD38D000, v28, v29, "TrialAppRankerSELFConfigProvider read from Trial, cooldownMinutes: %s");
    __swift_destroy_boxed_opaque_existential_1(v24);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  if (v20)
  {
    v30 = v21 * 60.0;
  }

  else
  {
    v30 = 0.0;
  }

  v31 = sub_1DD63FDA8();
  v32 = [v68 experimentIdentifiersWithNamespaceName_];

  if (v32)
  {
    v33 = [v32 deploymentId];
    v34 = [v32 treatmentId];
    v69 = sub_1DD63FDD8();
    v36 = v35;
  }

  else
  {
    v33 = 0;
    v69 = 0;
    v36 = 0;
  }

  v37 = sub_1DD63F9D8();
  v38 = sub_1DD640368();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_54();
    v40 = swift_slowAlloc();
    *&v73 = v40;
    *v39 = 136315138;
    v41 = v33;
    LODWORD(v70[0]) = v33;
    BYTE4(v70[0]) = v32 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDA8, &qword_1DD6641D0);
    v42 = sub_1DD63FE38();
    v44 = sub_1DD39565C(v42, v43, &v73);

    *(v39 + 4) = v44;
    OUTLINED_FUNCTION_4_94(&dword_1DD38D000, v45, v46, "TrialAppRankerSELFConfigProvider read from Trial, deploymentId %s");
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
    v41 = v33;
  }

  v47 = sub_1DD63F9D8();
  v48 = sub_1DD640368();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = OUTLINED_FUNCTION_54();
    v50 = swift_slowAlloc();
    *&v70[0] = v50;
    *v49 = 136315138;
    v51 = v69;
    *&v73 = v69;
    *(&v73 + 1) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDF0, &unk_1DD644950);
    v52 = sub_1DD63FE38();
    v54 = sub_1DD39565C(v52, v53, v70);

    *(v49 + 4) = v54;
    OUTLINED_FUNCTION_4_94(&dword_1DD38D000, v55, v56, "TrialAppRankerSELFConfigProvider read from Trial, treatmentId %s");
    __swift_destroy_boxed_opaque_existential_1(v50);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    v51 = v69;
  }

  *&v73 = v17;
  *(&v73 + 1) = v30;
  LODWORD(v74) = v41;
  BYTE4(v74) = v32 == 0;
  *(&v74 + 1) = v51;
  v75 = v36;

  v57 = sub_1DD63F9D8();
  v58 = sub_1DD640368();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = OUTLINED_FUNCTION_54();
    v60 = swift_slowAlloc();
    *v59 = 136315138;
    v70[0] = v73;
    v70[1] = v74;
    v71 = v75;
    v72 = v60;

    v61 = sub_1DD63FE38();
    v63 = sub_1DD39565C(v61, v62, &v72);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_1DD38D000, v57, v58, "TrialAppRankerSELFConfigProvider setting AppRanker SELF config to %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v64 = v67[5];
  MEMORY[0x1EEE9AC00](v65);
  os_unfair_lock_lock(v64 + 14);
  sub_1DD5FF4CC(&v64[4]);
  os_unfair_lock_unlock(v64 + 14);
}

uint64_t sub_1DD5FF3DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  v8 = *(a2 + 24);
  return sub_1DD4DF5DC(&v8, &v7);
}

uint64_t sub_1DD5FF444()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1DD5FF474()
{
  sub_1DD5FF444();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void OUTLINED_FUNCTION_3_101(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1DD5FF528@<X0>(uint64_t a1@<X8>)
{
  result = [v1 directoryValue];
  if (result)
  {
    v4 = sub_1DD520E2C(result, &selRef_path);
    if (v5)
    {
      v6 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v6 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v6)
      {
        sub_1DD63CDF8();
        v7 = 0;
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }

    v8 = sub_1DD63CE68();

    return __swift_storeEnumTagSinglePayload(a1, v7, 1, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FF5E8()
{
  OUTLINED_FUNCTION_12_48();
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1DD5FF628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v4;
  v6 = *(a1 + 56);
  *(a2 + 16) = *(a1 + 40);
  *(a2 + 32) = v6;
  *(a2 + 48) = v5;
}

uint64_t sub_1DD5FF6B8()
{
  OUTLINED_FUNCTION_12_48();
  v2 = v1;
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  return sub_1DD3CDD14(v0 + 24, v2, &qword_1ECCDBF80, &unk_1DD657A00);
}

uint64_t sub_1DD5FF718()
{
  OUTLINED_FUNCTION_12_48();
  v2 = v1;
  v4 = *(*v3 + 96);
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  return sub_1DD3CDD14(v0 + v4, v2, &qword_1ECCDC700, &qword_1DD64AE00);
}

uint64_t sub_1DD5FF78C()
{
  OUTLINED_FUNCTION_12_48();
  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1DD5FF7CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DD6015BC;
  *(v8 + 24) = v7;
  v11[4] = sub_1DD6015C8;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1DD5FFDB0;
  v11[3] = &block_descriptor_24;
  v9 = _Block_copy(v11);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FF92C()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48();
  *(v4 + 16) = sub_1DD601644;
  *(v4 + 24) = v0;
  v7[4] = sub_1DD601844;
  v7[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v7[2] = v5;
  v7[3] = &block_descriptor_44;
  _Block_copy(v7);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFA18()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48();
  *(v4 + 16) = sub_1DD601870;
  *(v4 + 24) = v0;
  v7[4] = sub_1DD601844;
  v7[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v7[2] = v5;
  v7[3] = &block_descriptor_54_0;
  _Block_copy(v7);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFB04()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48();
  *(v4 + 16) = sub_1DD601624;
  *(v4 + 24) = v0;
  v7[4] = sub_1DD601844;
  v7[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v7[2] = v5;
  v7[3] = &block_descriptor_34;
  _Block_copy(v7);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFBF0()
{
  OUTLINED_FUNCTION_2_116();
  OUTLINED_FUNCTION_10_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_5_89(v3);
  v4 = OUTLINED_FUNCTION_14_48();
  *(v4 + 16) = sub_1DD6015BC;
  *(v4 + 24) = v0;
  v7[4] = sub_1DD601844;
  v7[5] = v4;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_0_146();
  v7[2] = v5;
  v7[3] = &block_descriptor_24;
  _Block_copy(v7);
  OUTLINED_FUNCTION_7_72();

  OUTLINED_FUNCTION_15_53();
  _Block_release(v2);
  OUTLINED_FUNCTION_3_102();
  OUTLINED_FUNCTION_15_2();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD5FFCDC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  a1(a3 + 24);
  return swift_endAccess();
}

uint64_t sub_1DD5FFD3C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + 96);
  swift_beginAccess();
  a1(a3 + v5);
  return swift_endAccess();
}

uint64_t sub_1DD5FFDD8()
{
  v1 = *(*(v0 + 80) + 16);
  sub_1DD640488();

  return v3;
}

__n128 sub_1DD5FFE5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 80) + 16);
  sub_1DD640488();

  result = v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return result;
}

uint64_t sub_1DD5FFF0C()
{
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16EF00);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640368();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "updating TrialManager because of a notification", v3, 2u);
    MEMORY[0x1E12B3DA0](v3, -1, -1);
  }

  OUTLINED_FUNCTION_6_72();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DD600008();
  }

  return result;
}

uint64_t sub_1DD600008()
{
  v1 = v0;
  v2 = type metadata accessor for Signpost();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE16F0C0;
  v7 = &v5[*(v2 + 20)];
  *v7 = "RefreshTrialManager";
  *(v7 + 1) = 19;
  v7[16] = 2;
  v8 = v6;
  sub_1DD63F9B8();
  *&v5[*(v2 + 24)] = v8;
  v9 = v8;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD643F90;
  v11 = sub_1DD6408F8();
  v13 = v12;
  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1DD392BD8();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  v40 = v10;
  v39 = 2;
  v38 = 22;
  v45 = v9;
  sub_1DD63F998();

  v14 = v0[7];
  v15 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v14);
  (*(v15 + 16))(v14, v15);
  v16 = v0[7];
  v17 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v16);
  v18 = v0[2];
  v19 = v0[3];
  v20 = (*(v17 + 24))(v18, v19, v16, v17);
  v21 = v20;
  if (v20)
  {
    v22 = [v20 treatmentId];
    v43 = sub_1DD63FDD8();
    v44 = v23;

    v24 = [v21 experimentId];
    v25 = sub_1DD63FDD8();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v43 = 0;
    v44 = 0;
  }

  v29 = v1[7];
  v28 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v29);
  v30 = (*(v28 + 32))(v18, v19, v29, v28);
  v31 = v30;
  if (v30)
  {
    v32 = [v30 rolloutId];

    v31 = sub_1DD63FDD8();
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  v46[0] = v43;
  v46[1] = v44;
  v46[2] = v25;
  v46[3] = v27;
  v46[4] = v31;
  v46[5] = v34;
  v35 = sub_1DD6004CC();
  v36 = v1[10];
  v40 = v46;
  v41 = MEMORY[0x1EEE9AC00](v35);
  sub_1DD5FF7CC(sub_1DD6015B4, &v38);
  sub_1DD600798(v46, v35);

  sub_1DD6404C8();
  sub_1DD63F9A8();

  return sub_1DD41BFFC(v5);
}

uint64_t sub_1DD6003E8(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a2;
  v15 = a2[1];
  v16 = v6;
  v14 = a2[2];
  v7 = a1[2];
  sub_1DD3CDD14(&v16, v13, &unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD3CDD14(&v15, v13, &unk_1ECCDFDF0, &unk_1DD644950);
  sub_1DD3CDD14(&v14, v13, &unk_1ECCDFDF0, &unk_1DD644950);

  v8 = a1[4];

  v9 = a1[6];

  v10 = a2[1];
  *(a1 + 1) = *a2;
  *(a1 + 3) = v10;
  *(a1 + 5) = a2[2];
  v11 = *a1;

  *a1 = a3;
  return result;
}

uint64_t sub_1DD6004CC()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 4, v1);
  v3 = (*(v2 + 40))(v0[2], v0[3], v1, v2);
  sub_1DD39638C(0, &qword_1EE160140, 0x1E69DB540);
  v4 = sub_1DD63FC88();
  v5 = sub_1DD3CC020(v3);
  v6 = 0;
LABEL_2:
  for (i = v6; ; ++i)
  {
    if (v5 == i)
    {

      return v4;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E12B2C10](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v3 + 8 * i + 32);
    }

    v9 = v8;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v10 = [v8 factor];
    if (!v10)
    {
      goto LABEL_27;
    }

    v11 = sub_1DD520E2C(v10, &selRef_name);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = [v9 level];
      if (v15)
      {
        v29 = v15;
        swift_isUniquelyReferenced_nonNull_native();
        v27 = sub_1DD3978DC();
        if (__OFADD__(v4[2], (v16 & 1) == 0))
        {
          goto LABEL_25;
        }

        v28 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFDE8, &qword_1DD664390);
        if (sub_1DD640A08())
        {
          v17 = sub_1DD3978DC();
          if ((v28 & 1) != (v18 & 1))
          {
            goto LABEL_28;
          }

          v19 = v17;
          if ((v28 & 1) == 0)
          {
LABEL_18:
            v4[(v19 >> 6) + 8] |= 1 << v19;
            v20 = (v4[6] + 16 * v19);
            *v20 = v13;
            v20[1] = v14;
            *(v4[7] + 8 * v19) = v29;

            v21 = v4[2];
            v22 = __OFADD__(v21, 1);
            v23 = v21 + 1;
            if (!v22)
            {
              v4[2] = v23;
              goto LABEL_2;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v19 = v27;
          if ((v28 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v24 = v4[7];
        v25 = *(v24 + 8 * v19);
        *(v24 + 8 * v19) = v29;

        goto LABEL_2;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

void sub_1DD600798(uint64_t *a1, uint64_t a2)
{
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000024, 0x80000001DD674B30);
  if (a1[1])
  {
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v5 = 0xE100000000000000;
    v4 = 45;
  }

  MEMORY[0x1E12B2260](v4, v5);

  MEMORY[0x1E12B2260](0xD000000000000011, 0x80000001DD674B60);
  if (a1[3])
  {
    v6 = a1[2];
    v7 = a1[3];
  }

  else
  {
    v7 = 0xE100000000000000;
    v6 = 45;
  }

  MEMORY[0x1E12B2260](v6, v7);

  MEMORY[0x1E12B2260](0x6F6C6C6F7220200ALL, 0xEE00203A64497475);
  if (a1[5])
  {
    v8 = a1[4];
    v9 = a1[5];
  }

  else
  {
    v9 = 0xE100000000000000;
    v8 = 45;
  }

  MEMORY[0x1E12B2260](v8, v9);

  MEMORY[0x1E12B2260](0x6F7463616620200ALL, 0xEC0000000A3A7372);
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_18:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = (*(a2 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(a2 + 56) + 8 * v16);
      v12 &= v12 - 1;
      v34[0] = 538976288;
      v34[1] = 0xE400000000000000;

      v21 = v20;
      MEMORY[0x1E12B2260](v18, v19);

      MEMORY[0x1E12B2260](8250, 0xE200000000000000);
      v22 = [v21 description];
      v23 = sub_1DD63FDD8();
      v25 = v24;

      MEMORY[0x1E12B2260](v23, v25);

      MEMORY[0x1E12B2260](10, 0xE100000000000000);
      MEMORY[0x1E12B2260](538976288, 0xE400000000000000);

      if (!v12)
      {
        goto LABEL_14;
      }
    }
  }

  while (1)
  {
LABEL_14:
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v15 >= v13)
    {
      break;
    }

    v12 = *(a2 + 64 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_18;
    }
  }

  if (qword_1EE160540 == -1)
  {
    goto LABEL_21;
  }

LABEL_28:
  OUTLINED_FUNCTION_6_1();
LABEL_21:
  v26 = sub_1DD63F9F8();
  v27 = __swift_project_value_buffer(v26, qword_1EE16EF00);
  v29 = v35;
  v28 = v36;

  oslog = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_15_2();

  if (os_log_type_enabled(oslog, v27))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34[0] = v31;
    *v30 = 136446210;
    v32 = sub_1DD39565C(v29, v28, v34);

    *(v30 + 4) = v32;
    _os_log_impl(&dword_1DD38D000, oslog, v27, "%{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x1E12B3DA0](v31, -1, -1);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
  }

  else
  {
  }
}

void *sub_1DD600BBC()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[10];

  return v0;
}

uint64_t sub_1DD600BF4()
{
  sub_1DD600BBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD600C28(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = a1[2] == a2[2] && v8 == v9;
    if (!v10 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = a1[5];
  v12 = a2[5];
  if (v11)
  {
    if (v12)
    {
      v13 = a1[4] == a2[4] && v11 == v12;
      if (v13 || (sub_1DD640CD8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1DD600CFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656D7461657274 && a2 == 0xEB00000000644974;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D697265707865 && a2 == 0xEC0000006449746ELL;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x4974756F6C6C6F72 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_1DD640CD8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1DD600E1C(char a1)
{
  if (!a1)
  {
    return 0x6E656D7461657274;
  }

  if (a1 == 1)
  {
    return 0x656D697265707865;
  }

  return 0x4974756F6C6C6F72;
}

uint64_t sub_1DD600E88(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDD8, &qword_1DD664388);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v21[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD6014E8();
  sub_1DD640EF8();
  v14 = *v3;
  v15 = v3[1];
  v21[15] = 0;
  OUTLINED_FUNCTION_11_55();
  if (!v2)
  {
    v16 = v3[2];
    v17 = v3[3];
    v21[14] = 1;
    OUTLINED_FUNCTION_11_55();
    v18 = v3[4];
    v19 = v3[5];
    v21[13] = 2;
    OUTLINED_FUNCTION_11_55();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DD600FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFDC8, &qword_1DD664380);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD6014E8();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v14 = sub_1DD640AD8();
  v27 = v15;
  v29 = 1;
  v25 = sub_1DD640AD8();
  v26 = v16;
  v28 = 2;
  v17 = sub_1DD640AD8();
  v18 = v12;
  v20 = v19;
  (*(v8 + 8))(v18, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v22 = v27;
  *a2 = v14;
  a2[1] = v22;
  v23 = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v17;
  a2[5] = v20;
  return result;
}

uint64_t sub_1DD601214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD600CFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD60123C(uint64_t a1)
{
  v2 = sub_1DD6014E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD601278(uint64_t a1)
{
  v2 = sub_1DD6014E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DD6012B8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DD600FE4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

id sub_1DD6013A0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1DD63FDA8();
  v6 = [v3 *a3];

  return v6;
}

uint64_t sub_1DD60143C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1DD60147C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD6014E8()
{
  result = qword_1EE1655C0[0];
  if (!qword_1EE1655C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1655C0);
  }

  return result;
}

uint64_t sub_1DD60153C()
{
  v1 = sub_1DD63FDA8();
  v2 = [v0 factorLevelsWithNamespaceName_];

  sub_1DD39638C(0, &qword_1EE1601F8, 0x1E69DB538);
  v3 = sub_1DD640118();

  return v3;
}

uint64_t sub_1DD6015C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_BYTE *storeEnumTagSinglePayload for TrialEnrollment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD601730()
{
  result = qword_1ECCDFE00;
  if (!qword_1ECCDFE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE00);
  }

  return result;
}

unint64_t sub_1DD601788()
{
  result = qword_1EE1655A8;
  if (!qword_1EE1655A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1655A8);
  }

  return result;
}

unint64_t sub_1DD6017E0()
{
  result = qword_1EE1655B0;
  if (!qword_1EE1655B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1655B0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_102()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_11_55()
{

  return sub_1DD640BC8();
}

uint64_t OUTLINED_FUNCTION_14_48()
{

  return swift_allocObject();
}

_OWORD *sub_1DD6018FC(char a1)
{
  v1 = &unk_1F58AF788;
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v1 = swift_allocObject();
      v1[1] = xmmword_1DD643F90;
      *(v1 + 4) = sub_1DD63EF48();
      *(v1 + 5) = v2;
      break;
    case 2:
      v1 = &unk_1F58AF7B8;
      break;
    case 3:
      v1 = &unk_1F58AF7E8;
      break;
    default:
      return v1;
  }

  return v1;
}

uint64_t sub_1DD601998(char a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16EF00);
  OUTLINED_FUNCTION_15_2();

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v13 = 136315394;
    v14 = "92-A728-FDC9D43DEDB6";
    switch(a1)
    {
      case 1:
        v15 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
        goto LABEL_8;
      case 2:
        v15 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
        goto LABEL_8;
      case 3:
        v15 = "920A9A12-BBD0-42FB-A11C-7B1AE2C709B4";
LABEL_8:
        v14 = (v15 - 32);
        break;
      default:
        break;
    }

    v16 = sub_1DD39565C(0xD000000000000024, v14 | 0x8000000000000000, &v24);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    if (a3)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0x3E6C696E3CLL;
    }

    if (a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_1DD39565C(v17, v18, &v24);

    *(v13 + 14) = v19;
    _os_log_impl(&dword_1DD38D000, v11, v12, "Enqueuing codepath trigger on a background task: %s requestId: %s", v13, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_8_2();
  }

  sub_1DD6401D8();
  v20 = sub_1DD6401F8();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = a3;

  sub_1DD4B0E18();
}

uint64_t sub_1DD601C54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  *(v6 + 104) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DD601C78, 0, 0);
}

uint64_t sub_1DD601C78()
{
  OUTLINED_FUNCTION_34_0();
  *(v0 + 64) = [objc_allocWithZone(sub_1DD63F878()) init];
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1DD601D28;
  v2 = *(v0 + 104);

  return sub_1DD6022C4();
}

uint64_t sub_1DD601D28()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v3 = v2;
  OUTLINED_FUNCTION_19_1();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_74();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v3 + 88) = v12;
    *v12 = v7;
    v12[1] = sub_1DD601E88;
    v13 = *(v3 + 56);
    v14 = *(v3 + 64);
    v15 = *(v3 + 48);
    v16 = *(v3 + 104);

    return sub_1DD6029C4();
  }
}

uint64_t sub_1DD601E88()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DD601F84()
{
  OUTLINED_FUNCTION_34_0();

  OUTLINED_FUNCTION_26();

  return v1();
}

uint64_t sub_1DD601FDC()
{
  v21 = v0;
  v1 = v0[10];
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF00);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_54();
    v9 = OUTLINED_FUNCTION_62();
    v20 = v9;
    OUTLINED_FUNCTION_17_42(4.8149e-34);
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1DD640D88();
    v15 = sub_1DD39565C(v13, v14, &v20);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_15_54(&dword_1DD38D000, v16, v17, "Error emitting codepath trigger: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return v18();
}

uint64_t sub_1DD602150()
{
  v21 = v0;
  v1 = v0[12];
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16EF00);
  v3 = OUTLINED_FUNCTION_15_2();
  v4 = sub_1DD63F9D8();
  v5 = sub_1DD640378();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_54();
    v9 = OUTLINED_FUNCTION_62();
    v20 = v9;
    OUTLINED_FUNCTION_17_42(4.8149e-34);
    v11 = v0[2];
    v10 = v0[3];
    v12 = v0[4];
    v13 = sub_1DD640D88();
    v15 = sub_1DD39565C(v13, v14, &v20);

    *(v8 + 4) = v15;
    OUTLINED_FUNCTION_15_54(&dword_1DD38D000, v16, v17, "Error emitting codepath trigger: %s");
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_8_2();
  }

  else
  {
  }

  OUTLINED_FUNCTION_26();

  return v18();
}

uint64_t sub_1DD6022C4()
{
  OUTLINED_FUNCTION_34_0();
  *(v1 + 16) = v0;
  *(v1 + 88) = v2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();
  v4 = sub_1DD63D0F8();
  *(v1 + 32) = v4;
  v5 = *(v4 - 8);
  *(v1 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v1 + 48) = swift_task_alloc();
  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DD6023B8()
{
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v1 = sub_1DD63F9F8();
  __swift_project_value_buffer(v1, qword_1EE16EF00);
  v2 = sub_1DD63F9D8();
  v3 = sub_1DD640368();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = OUTLINED_FUNCTION_54();
    v6 = OUTLINED_FUNCTION_62();
    *v5 = 136315138;
    v9 = "92-A728-FDC9D43DEDB6";
    v10 = v6;
    switch(v4)
    {
      case 1:
        v11 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
        goto LABEL_8;
      case 2:
        v11 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
LABEL_8:
        v9 = (v11 - 32);
        break;
      case 3:
        v9 = "ning";
        break;
      default:
        break;
    }

    v12 = OUTLINED_FUNCTION_7_73(v6, v9 | 0x8000000000000000, v7, v8);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1DD38D000, v2, v3, "Caching trial experiment with codepath: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  v13 = "92-A728-FDC9D43DEDB6";
  *(v0 + 88);
  v15 = *(v0 + 24);
  v14 = *(v0 + 32);
  sub_1DD63D088();

  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    sub_1DD3C34AC(*(v0 + 24));
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640388();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 88);
      v19 = OUTLINED_FUNCTION_54();
      v20 = OUTLINED_FUNCTION_62();
      *v19 = 136315138;
      v23 = v20;
      switch(v18)
      {
        case 1:
          v13 = "ED-A05B-0242AC120003";
          break;
        case 2:
          v13 = "FB-A11C-7B1AE2C709B4";
          break;
        case 3:
          v13 = "ning";
          break;
        default:
          break;
      }

      v29 = OUTLINED_FUNCTION_7_73(v20, v13 | 0x8000000000000000, v21, v22);

      *(v19 + 4) = v29;
      OUTLINED_FUNCTION_16_53(&dword_1DD38D000, v30, v31, "Invalid codepath UUID string: %s");
      __swift_destroy_boxed_opaque_existential_1(v23);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v32 = *(v0 + 48);
    v33 = *(v0 + 24);

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_9_63();

    __asm { BRAA            X1, X16 }
  }

  v24 = *(v0 + 88);
  (*(*(v0 + 40) + 32))(*(v0 + 48), *(v0 + 24), *(v0 + 32));
  *(v0 + 56) = sub_1DD63D0B8();
  *(v0 + 64) = sub_1DD6018FC(v24);
  v25 = OUTLINED_FUNCTION_18_41(MEMORY[0x1E6985F98]);
  *(v0 + 72) = v25;
  *v25 = v0;
  v25[1] = sub_1DD602788;
  v26 = *(v0 + 16);
  OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_9_63();

  __asm { BR              X2 }
}

uint64_t sub_1DD602788()
{
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v5 = v4[9];
  v6 = v4[8];
  v7 = v4[7];
  v8 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v9 = v8;
  *(v10 + 80) = v0;

  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DD6028C4()
{
  OUTLINED_FUNCTION_34_0();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[6];
  v2 = v0[3];

  OUTLINED_FUNCTION_26();

  return v3();
}

uint64_t sub_1DD602944()
{
  OUTLINED_FUNCTION_34_0();
  v1 = v0[3];
  (*(v0[5] + 8))(v0[6], v0[4]);

  OUTLINED_FUNCTION_26();
  v3 = v0[10];

  return v2();
}

uint64_t sub_1DD6029C4()
{
  OUTLINED_FUNCTION_34_0();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 16) = v3;
  *(v1 + 128) = v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60) - 8) + 64) + 15;
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = swift_task_alloc();
  v6 = sub_1DD63D0F8();
  *(v1 + 64) = v6;
  v7 = *(v6 - 8);
  *(v1 + 72) = v7;
  v8 = *(v7 + 64) + 15;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

void sub_1DD602AE0()
{
  v1 = "92-A728-FDC9D43DEDB6";
  *(v0 + 128);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  sub_1DD63D088();

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1DD3C34AC(*(v0 + 56));
    if (qword_1EE160540 != -1)
    {
      OUTLINED_FUNCTION_6_1();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16EF00);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640388();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v0 + 128);
      v8 = OUTLINED_FUNCTION_54();
      v9 = OUTLINED_FUNCTION_62();
      v56 = v9;
      *v8 = 136315138;
      v12 = v9;
      switch(v7)
      {
        case 1:
          v1 = "ED-A05B-0242AC120003";
          break;
        case 2:
          v1 = "FB-A11C-7B1AE2C709B4";
          break;
        case 3:
          v1 = "ning";
          break;
        default:
          break;
      }

      v24 = OUTLINED_FUNCTION_7_73(v9, v1 | 0x8000000000000000, v10, v11);

      *(v8 + 4) = v24;
      OUTLINED_FUNCTION_16_53(&dword_1DD38D000, v25, v26, "Invalid codepath UUID string: %s");
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v28 = *(v0 + 80);
    v27 = *(v0 + 88);
    v30 = *(v0 + 48);
    v29 = *(v0 + 56);
    v31 = *(v0 + 40);

    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_9_63();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(*(v0 + 72) + 32);
  v13(*(v0 + 88), *(v0 + 56), *(v0 + 64));
  if (qword_1EE160540 != -1)
  {
    OUTLINED_FUNCTION_6_1();
  }

  v14 = *(v0 + 24);
  v15 = sub_1DD63F9F8();
  __swift_project_value_buffer(v15, qword_1EE16EF00);
  OUTLINED_FUNCTION_15_2();

  v16 = sub_1DD63F9D8();
  v17 = sub_1DD640368();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 128);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56 = v20;
    *v19 = 136315394;
    v54 = v13;
    switch(v18)
    {
      case 1:
        v23 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
        goto LABEL_15;
      case 2:
        v23 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
LABEL_15:
        v1 = (v23 - 32);
        break;
      case 3:
        v1 = "ning";
        break;
      default:
        break;
    }

    v34 = *(v0 + 16);
    v35 = *(v0 + 24);
    v36 = OUTLINED_FUNCTION_7_73(v20, v1 | 0x8000000000000000, v21, v22, v54);

    *(v19 + 4) = v36;
    *(v19 + 12) = 2080;
    if (v35)
    {
      v37 = v34;
    }

    else
    {
      v37 = 0x3E6C696E3CLL;
    }

    if (v35)
    {
      v38 = v14;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    v39 = sub_1DD39565C(v37, v38, &v56);

    *(v19 + 14) = v39;
    _os_log_impl(&dword_1DD38D000, v16, v17, "Emitting codepath trigger: %s requestId: %s", v19, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_0_1();

    v13 = v55;
  }

  else
  {
  }

  if (*(v0 + 24))
  {
    v40 = *(v0 + 48);
    v41 = *(v0 + 16);
    sub_1DD63D088();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(*(v0 + 48), 1, 1, *(v0 + 64));
  }

  v42 = *(v0 + 64);
  v43 = *(v0 + 40);
  sub_1DD3BB660(*(v0 + 48), v43);
  if (__swift_getEnumTagSinglePayload(v43, 1, v42) == 1)
  {
    sub_1DD3C34AC(*(v0 + 48));
    v44 = 0;
  }

  else
  {
    v46 = *(v0 + 72);
    v45 = *(v0 + 80);
    v47 = *(v0 + 64);
    v48 = *(v0 + 48);
    v13(v45, *(v0 + 40), v47);
    v44 = sub_1DD63D0B8();
    (*(v46 + 8))(v45, v47);
    sub_1DD3C34AC(v48);
  }

  *(v0 + 96) = v44;
  v49 = *(v0 + 88);
  *(v0 + 104) = sub_1DD63D0B8();
  v50 = OUTLINED_FUNCTION_18_41(MEMORY[0x1E6985F90]);
  *(v0 + 112) = v50;
  *v50 = v0;
  v50[1] = sub_1DD60300C;
  v51 = *(v0 + 32);
  OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_9_63();

  __asm { BR              X2 }
}

uint64_t sub_1DD60300C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 104);
  v7 = *v1;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;
  *(v9 + 120) = v0;

  OUTLINED_FUNCTION_8_74();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DD603120()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 40);

  OUTLINED_FUNCTION_26();

  return v9();
}

uint64_t sub_1DD6031D4()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  (*(v3 + 8))(v1, v4);

  OUTLINED_FUNCTION_26();
  v9 = *(v0 + 120);

  return v8();
}

uint64_t sub_1DD6032BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DD4B66D4;

  return sub_1DD601C54(a1, v4, v5, v8, v6, v7);
}

uint64_t storeEnumTagSinglePayload for UCGTrialFactors(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_1DD603474(uint64_t a1, void *a2)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = a2;
  v4 = sub_1DD63FDA8();
  v5 = [v3 objectForKey_];

  if (!v5)
  {

    memset(v16, 0, sizeof(v16));
    sub_1DD4E82AC(v16);
LABEL_6:
    v9 = sub_1DD59B690(0xD000000000000023, 0x80000001DD674C60, a1);
    if (v9)
    {
      v10 = v9;
      v8 = [v9 BOOLeanValue];
    }

    else
    {
      v8 = 0;
    }

    v11 = sub_1DD59B690(0xD00000000000001ALL, 0x80000001DD674C90, a1);
    if (v11)
    {
      v12 = v11;
      v13 = [v11 BOOLeanValue];

      if (v13)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    v14 = 0;
    return v14 | v8;
  }

  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD4E82AC(v16);
  v6 = sub_1DD63FDA8();
  v7 = [v3 BOOLForKey:v6 withDefault:0];

  if ((v7 & 1) == 0)
  {
    v8 = 0;
    goto LABEL_13;
  }

  v8 = 1;
LABEL_11:
  v14 = 256;
  return v14 | v8;
}

unint64_t sub_1DD603614(__int16 a1)
{
  sub_1DD6408D8();

  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v2, v3);

  MEMORY[0x1E12B2260](32, 0xE100000000000000);
  sub_1DD6408D8();

  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1E12B2260](v4, v5);

  MEMORY[0x1E12B2260](32, 0xE100000000000000);

  MEMORY[0x1E12B2260](0xD000000000000022, 0x80000001DD674C30);

  return 0xD00000000000002ALL;
}

uint64_t sub_1DD60378C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000029 && 0x80000001DD674CB0 == a2;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001DD674CE0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1DD603864(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000029;
  }
}

uint64_t sub_1DD60389C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFE18, &qword_1DD664610);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD603CF4();
  sub_1DD640EF8();
  v13[15] = 0;
  sub_1DD640C28();
  if (!v1)
  {
    v13[14] = 1;
    sub_1DD640C28();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t sub_1DD6039F4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFE08, &qword_1DD664608);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v16[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD603CF4();
  sub_1DD640ED8();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16[15] = 0;
  v12 = sub_1DD640B38();
  v16[14] = 1;
  v13 = sub_1DD640B38();
  (*(v6 + 8))(v10, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v13)
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 0xFFFFFFFE | v12 & 1;
}

uint64_t sub_1DD603BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD60378C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD603BC8(uint64_t a1)
{
  v2 = sub_1DD603CF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD603C04(uint64_t a1)
{
  v2 = sub_1DD603CF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DD603C40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD6039F4(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1DD603C78(void *a1)
{
  v2 = *v1;
  v1[1];
  return sub_1DD60389C(a1);
}

BOOL sub_1DD603CA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (a2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DD603778(v2 | *a1, v3 | *a2);
}

unint64_t sub_1DD603CD8()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1DD603614(v1 | *v0);
}

unint64_t sub_1DD603CF4()
{
  result = qword_1ECCDFE10;
  if (!qword_1ECCDFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE10);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UCGTrialFactors.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD603E28()
{
  result = qword_1ECCDFE20;
  if (!qword_1ECCDFE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE20);
  }

  return result;
}

unint64_t sub_1DD603E80()
{
  result = qword_1ECCDFE28;
  if (!qword_1ECCDFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE28);
  }

  return result;
}

unint64_t sub_1DD603ED8()
{
  result = qword_1ECCDFE30;
  if (!qword_1ECCDFE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFE30);
  }

  return result;
}

uint64_t sub_1DD603F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a4)
  {

    MEMORY[0x1E12B2260](64, 0xE100000000000000);
    MEMORY[0x1E12B2260](a3, a4);

    return a1;
  }

  else
  {
  }

  return v4;
}

void sub_1DD603FC0(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, void *))
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v19 = MEMORY[0x1E69E7CC0];
  v18 = a1 + 40;
LABEL_2:
  for (i = (v7 + 16 * v5); ; i += 2)
  {
    if (v6 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v9 = *(i - 1);
    v10 = *i;
    v22[0] = v9;
    v22[1] = v10;

    a3(v20, v22);
    v11 = sub_1DD56CE00(v21, v20[0], v20[1]);

    if (v11)
    {
      v12 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = *(v19 + 16);
        sub_1DD42A2D4();
        v12 = v23;
      }

      v15 = *(v12 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v12 + 24) >> 1)
      {
        sub_1DD42A2D4();
        v16 = v15 + 1;
        v12 = v23;
      }

      ++v5;
      *(v12 + 16) = v16;
      v19 = v12;
      v17 = v12 + 16 * v15;
      *(v17 + 32) = v9;
      *(v17 + 40) = v10;
      v7 = v18;
      goto LABEL_2;
    }

    ++v5;
  }

  __break(1u);
}

uint64_t sub_1DD604138(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a3;
    v56 = MEMORY[0x1E69E7CC0];
    v8 = OUTLINED_FUNCTION_56_10();
    sub_1DD42B3E4(v8, v9, v10);
    v12 = sub_1DD55B198(v7);
    result = v56;
    v14 = v13;
    v15 = 0;
    v16 = v7 + 56;
    v47 = v7 + 64;
    v48 = v5;
    v49 = v7;
    if ((v12 & 0x8000000000000000) == 0)
    {
      while (v12 < 1 << *(v7 + 32))
      {
        v17 = v12 >> 6;
        v18 = 1 << v12;
        if ((*(v16 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v11)
        {
          goto LABEL_26;
        }

        v52 = v12;
        v53 = v11;
        v19 = v16;
        v51 = v15;
        v20 = result;
        v21 = (*(v7 + 48) + 16 * v12);
        v22 = v21[1];
        v54[0] = *v21;
        v54[1] = v22;

        a1(v55, v54);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v23 = v55[0];
        v24 = v55[1];
        v25 = v55[2];
        result = v20;
        v56 = v20;
        v26 = *(v20 + 16);
        if (v26 >= *(v20 + 24) >> 1)
        {
          OUTLINED_FUNCTION_90();
          v45 = v39;
          v46 = v38;
          v41 = v40;
          sub_1DD42B3E4(v42, v43, v44);
          v25 = v45;
          v23 = v46;
          v24 = v41;
          result = v56;
        }

        *(result + 16) = v26 + 1;
        v27 = (result + 24 * v26);
        v27[4] = v23;
        v27[5] = v24;
        v27[6] = v25;
        if (v14)
        {
          goto LABEL_31;
        }

        v16 = v19;
        v7 = v49;
        v28 = 1 << *(v49 + 32);
        if (v52 >= v28)
        {
          goto LABEL_27;
        }

        v29 = *(v19 + 8 * v17);
        if ((v29 & v18) == 0)
        {
          goto LABEL_28;
        }

        if (*(v49 + 36) != v53)
        {
          goto LABEL_29;
        }

        v30 = v29 & (-2 << (v52 & 0x3F));
        if (v30)
        {
          v28 = __clz(__rbit64(v30)) | v52 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v31 = v17 << 6;
          v32 = v17 + 1;
          v33 = (v47 + 8 * v17);
          while (v32 < (v28 + 63) >> 6)
          {
            v35 = *v33++;
            v34 = v35;
            v31 += 64;
            ++v32;
            if (v35)
            {
              v36 = result;
              sub_1DD3AA558(v52, v53, 0);
              result = v36;
              v28 = __clz(__rbit64(v34)) + v31;
              goto LABEL_20;
            }
          }

          v37 = result;
          sub_1DD3AA558(v52, v53, 0);
          result = v37;
        }

LABEL_20:
        v15 = v51 + 1;
        if (v51 + 1 == v48)
        {
          return result;
        }

        v14 = 0;
        v11 = *(v49 + 36);
        v12 = v28;
        if (v28 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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
  }

  return result;
}

uint64_t sub_1DD6043E4(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_56_10();
  sub_1DD42A2D4();
  v6 = v18;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v16[0] = *(i - 1);
    v16[1] = v9;

    a1(v17, v16);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v17[0];
    v10 = v17[1];
    v18 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90_1();
      sub_1DD42A2D4();
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD604500()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v21 = v5;
  matched = type metadata accessor for ContactMatchRuntimeData(0);
  v7 = OUTLINED_FUNCTION_51(matched);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  v12 = *(v4 + 16);
  if (v12)
  {
    v22 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_54_10();
    sub_1DD42B564();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    OUTLINED_FUNCTION_51(v13);
    v15 = v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v16 + 72);
    while (1)
    {
      v21(v15);
      if (v2)
      {
        break;
      }

      v2 = 0;
      v17 = *(v22 + 16);
      if (v17 >= *(v22 + 24) >> 1)
      {
        sub_1DD42B564();
      }

      *(v22 + 16) = v17 + 1;
      v18 = *(v9 + 80);
      OUTLINED_FUNCTION_24_0();
      sub_1DD627288(v1, v22 + v19 + *(v9 + 72) * v17);
      v15 += v20;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1DD6046CC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v16 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_56_10();
  sub_1DD42B644();
  v6 = v16;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v14[0] = *(i - 1);
    v14[1] = v10;

    a1(&v15, v14);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v15;
    v16 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      OUTLINED_FUNCTION_90_1();
      sub_1DD42B644();
      v6 = v16;
    }

    *(v6 + 16) = v12 + 1;
    *(v6 + 8 * v12 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD604820(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v22 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v21 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DD42B5CC(0, v13, 0);
    v14 = v27;
    v15 = (a1 + 32);
    for (i = v13 - 1; ; --i)
    {
      memcpy(__dst, v15, 0x4AuLL);
      memcpy(__src, v15, 0x4AuLL);
      sub_1DD3C6A40(__dst, v24);
      v17 = a2;
      sub_1DD62034C(__src, a2, v22, v23, v12);
      if (v5)
      {
        break;
      }

      v5 = 0;
      memcpy(v24, __src, 0x4AuLL);
      sub_1DD3C6A9C(v24);
      v27 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42B5CC(v18 > 1, v19 + 1, 1);
        v14 = v27;
      }

      *(v14 + 16) = v19 + 1;
      sub_1DD3EB4B8(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (!i)
      {
        sub_1DD390754(v17, &qword_1ECCDFED8, &unk_1DD664B90);
        return v14;
      }

      v15 += 80;
      a2 = v17;
    }

    memcpy(v24, __src, 0x4AuLL);
    sub_1DD3C6A9C(v24);

    result = sub_1DD390754(a2, &qword_1ECCDFED8, &unk_1DD664B90);
    __break(1u);
  }

  else
  {
    sub_1DD390754(a2, &qword_1ECCDFED8, &unk_1DD664B90);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1DD604AC8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v19 = MEMORY[0x1E69E7CC0];
  v9 = OUTLINED_FUNCTION_55_9();
  v16 = v10;
  (v10)(v9);
  v6 = v19;
  for (i = (a3 + 32); ; ++i)
  {
    v17 = *i;

    a1(&v18, &v17);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v18;
    v19 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v16(v13 > 1, v14 + 1, 1);
      v6 = v19;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD604BFC()
{
  OUTLINED_FUNCTION_93();
  v3 = v0;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = v2;
    v6 = v1;
    v18 = MEMORY[0x1E69E7CC0];
    v7 = OUTLINED_FUNCTION_55_9();
    sub_1DD42B95C(v7, v8, v9);
    v10 = v5 + 32;
    while (1)
    {
      OUTLINED_FUNCTION_133(v17);
      OUTLINED_FUNCTION_133(__src);
      sub_1DD3C9478(v17, __dst);
      v6(&v16, __src);
      if (v3)
      {
        break;
      }

      v3 = 0;
      memcpy(__dst, __src, sizeof(__dst));
      sub_1DD3C9580(__dst);
      v11 = v16;
      v13 = *(v18 + 16);
      v12 = *(v18 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1DD42B95C((v12 > 1), v13 + 1, 1);
      }

      *(v18 + 16) = v13 + 1;
      *(v18 + 8 * v13 + 32) = v11;
      v10 += 264;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD3C9580(__dst);

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_86();
  }
}

void sub_1DD604D3C()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v24 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_51(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_65_7();
  v12 = *(v4 + 16);
  if (v12)
  {
    v26 = MEMORY[0x1E69E7CC0];
    v13 = OUTLINED_FUNCTION_54_10();
    sub_1DD42BA08(v13, v14, v15);
    v16 = (v4 + 40);
    while (1)
    {
      v17 = *v16;
      v25[0] = *(v16 - 1);
      v25[1] = v17;

      v24(v25);
      if (v2)
      {
        break;
      }

      v2 = 0;

      v18 = *(v26 + 16);
      if (v18 >= *(v26 + 24) >> 1)
      {
        OUTLINED_FUNCTION_113_0();
        sub_1DD42BA08(v21, v22, v23);
      }

      *(v26 + 16) = v18 + 1;
      v19 = *(v8 + 80);
      OUTLINED_FUNCTION_24_0();
      sub_1DD3EB4B8(v1, v26 + v20 + *(v8 + 72) * v18, &qword_1ECCDBC18, &unk_1DD6459A0);
      v16 += 2;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_86();
  }
}

void sub_1DD604ECC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v39 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_51(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7_3();
  v42 = v8;
  v9 = *(v2 + 16);
  if (v9)
  {
    v44 = MEMORY[0x1E69E7CC0];
    v10 = OUTLINED_FUNCTION_60_7();
    sub_1DD42BA08(v10, v9, 0);
    v11 = v44;
    v13 = sub_1DD55B198(v2);
    v15 = v14;
    v16 = 0;
    v40 = v2;
    v41 = v2 + 56;
    v37 = v2 + 64;
    v38 = v9;
    v17 = v2;
    if ((v13 & 0x8000000000000000) == 0)
    {
      while (v13 < 1 << *(v17 + 32))
      {
        v18 = v13 >> 6;
        if ((*(v41 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v17 + 36) != v12)
        {
          goto LABEL_26;
        }

        v19 = v12;
        v20 = (*(v17 + 48) + 16 * v13);
        v21 = v20[1];
        v43[0] = *v20;
        v43[1] = v21;

        v39(v43);
        if (v0)
        {
          goto LABEL_30;
        }

        v22 = v11;
        v45 = v11;
        v23 = *(v11 + 16);
        v24 = *(v22 + 24);
        if (v23 >= v24 >> 1)
        {
          sub_1DD42BA08(v24 > 1, v23 + 1, 1);
          v22 = v45;
        }

        *(v22 + 16) = v23 + 1;
        OUTLINED_FUNCTION_18_3();
        v26 = v25;
        sub_1DD3EB4B8(v42, v25 + v27 + *(v28 + 72) * v23, &qword_1ECCDBC18, &unk_1DD6459A0);
        if (v15)
        {
          goto LABEL_31;
        }

        v17 = v40;
        v29 = 1 << *(v40 + 32);
        if (v13 >= v29)
        {
          goto LABEL_27;
        }

        v30 = *(v41 + 8 * v18);
        if ((v30 & (1 << v13)) == 0)
        {
          goto LABEL_28;
        }

        if (*(v40 + 36) != v19)
        {
          goto LABEL_29;
        }

        v31 = v30 & (-2 << (v13 & 0x3F));
        if (v31)
        {
          v29 = __clz(__rbit64(v31)) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v32 = v18 << 6;
          v33 = v18 + 1;
          v34 = (v37 + 8 * v18);
          while (v33 < (v29 + 63) >> 6)
          {
            v36 = *v34++;
            v35 = v36;
            v32 += 64;
            ++v33;
            if (v36)
            {
              sub_1DD3AA558(v13, v19, 0);
              v17 = v40;
              v29 = __clz(__rbit64(v35)) + v32;
              goto LABEL_20;
            }
          }

          sub_1DD3AA558(v13, v19, 0);
          v17 = v40;
        }

LABEL_20:
        if (++v16 == v38)
        {
          goto LABEL_23;
        }

        v15 = 0;
        v12 = *(v17 + 36);
        v13 = v29;
        v11 = v26;
        if (v29 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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
  }

  else
  {
LABEL_23:
    OUTLINED_FUNCTION_91_1();
    OUTLINED_FUNCTION_86();
  }
}

uint64_t sub_1DD6051E4(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v22 = MEMORY[0x1E69E7CC0];
    v9 = OUTLINED_FUNCTION_56_10();
    sub_1DD42B404(v9, v10, v11);
    v6 = v22;
    for (i = (a3 + 32); ; ++i)
    {
      v20 = *i;

      a1(&v21, &v20, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v13 = v21;
      v22 = v6;
      v14 = *(v6 + 16);
      if (v14 >= *(v6 + 24) >> 1)
      {
        OUTLINED_FUNCTION_90_1();
        sub_1DD42B404(v15, v16, v17);
        v6 = v22;
      }

      *(v6 + 16) = v14 + 1;
      *(v6 + 8 * v14 + 32) = v13;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_1DD605308(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD6407B8())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v20 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_60_7();
    sub_1DD42BBE8();
    if ((i & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = 0;
    v7 = v20;
    v14 = v5 & 0xFFFFFFFFFFFFFF8;
    v15 = v5 & 0xC000000000000001;
    v9 = v5;
    while (v8 < i)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_18;
      }

      if (v15)
      {
        v11 = MEMORY[0x1E12B2C10](v8, v5);
      }

      else
      {
        if (v8 >= *(v14 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v5 + 8 * v8 + 32);
      }

      v18 = v11;
      a1(__src, &v18);
      if (v4)
      {
        goto LABEL_22;
      }

      v4 = 0;

      memcpy(__dst, __src, sizeof(__dst));
      v20 = v7;
      v12 = *(v7 + 16);
      if (v12 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_113_0();
        sub_1DD42BBE8();
        v7 = v20;
      }

      *(v7 + 16) = v12 + 1;
      memcpy((v7 + 80 * v12 + 32), __dst, 0x49uLL);
      ++v8;
      v5 = v9;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void sub_1DD6054D0()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v25 = v4;
  v26 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  OUTLINED_FUNCTION_51(v6);
  v24 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD6407B8())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_91_1();
      OUTLINED_FUNCTION_86();
      return;
    }

    v28 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_60_7();
    sub_1DD42B4F8();
    if (i < 0)
    {
      break;
    }

    v14 = 0;
    v22 = i;
    v23 = v3 & 0xC000000000000001;
    v21 = v3 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v23)
      {
        v16 = MEMORY[0x1E12B2C10](v14, v3);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v16 = *(v3 + 8 * v14 + 32);
      }

      i = v16;
      v27 = v16;
      v25(&v27);
      if (v1)
      {
        goto LABEL_20;
      }

      v1 = 0;

      v17 = *(v28 + 16);
      if (v17 >= *(v28 + 24) >> 1)
      {
        OUTLINED_FUNCTION_90();
        sub_1DD42B4F8();
      }

      *(v28 + 16) = v17 + 1;
      OUTLINED_FUNCTION_18_3();
      sub_1DD3EB4B8(v12, v28 + v18 + *(v19 + 72) * v17, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v14;
      if (v15 == v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

uint64_t sub_1DD6056DC(uint64_t a1, void (*a2)(void *, void *), uint64_t a3)
{
  v46 = a3;
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - v7;
  v9 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v40 = v3;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1DD42B4F8();
    v50 = v53;
    result = sub_1DD5FAA4C(a1);
    v13 = result;
    v14 = 0;
    v49 = a1 + 64;
    v42 = v11;
    v41 = a1 + 72;
    v43 = v9;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
    {
      v15 = v13 >> 6;
      if ((*(v49 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v11)
      {
        goto LABEL_24;
      }

      v48 = v11;
      v47 = v12;
      v16 = (*(a1 + 48) + 32 * v13);
      v17 = *v16;
      v18 = v16[1];
      v19 = v16[2];
      v20 = v16[3];
      v21 = (*(a1 + 56) + 40 * v13);
      v22 = a1;
      v23 = *v21;
      v24 = v21[1];
      v26 = v21[2];
      v25 = v21[3];
      v27 = v21[4];
      __src[0] = v17;
      __src[1] = v18;
      __src[2] = v19;
      __src[3] = v20;
      __src[4] = v23;
      __src[5] = v24;
      __src[6] = v26;
      __src[7] = v25;
      __src[8] = v27;

      v45(__src, &__src[4]);
      memcpy(__dst, __src, 0x48uLL);
      sub_1DD390754(__dst, &qword_1ECCDFF08, &unk_1DD664C00);
      v28 = v50;
      v53 = v50;
      v29 = *(v50 + 16);
      if (v29 >= *(v50 + 24) >> 1)
      {
        sub_1DD42B4F8();
        v28 = v53;
      }

      *(v28 + 16) = v29 + 1;
      v30 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v50 = v28;
      result = sub_1DD3EB4B8(v8, v28 + v30 + *(v44 + 72) * v29, &qword_1ECCDBBE8, &qword_1DD644470);
      v31 = 1 << *(v22 + 32);
      if (v13 >= v31)
      {
        goto LABEL_25;
      }

      v32 = *(v49 + 8 * v15);
      if ((v32 & (1 << v13)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v22;
      if (*(v22 + 36) != v48)
      {
        goto LABEL_27;
      }

      v33 = v32 & (-2 << (v13 & 0x3F));
      if (v33)
      {
        v31 = __clz(__rbit64(v33)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v34 = v43;
      }

      else
      {
        v35 = v15 << 6;
        v36 = v15 + 1;
        v37 = (v41 + 8 * v15);
        v34 = v43;
        while (v36 < (v31 + 63) >> 6)
        {
          v39 = *v37++;
          v38 = v39;
          v35 += 64;
          ++v36;
          if (v39)
          {
            result = sub_1DD3AA558(v13, v48, v47 & 1);
            v31 = __clz(__rbit64(v38)) + v35;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v13, v48, v47 & 1);
      }

LABEL_19:
      v12 = 0;
      ++v14;
      v13 = v31;
      v11 = v42;
      if (v14 == v34)
      {
        return v50;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD605AC0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v17 - v9;
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v21 = MEMORY[0x1E69E7CC0];
  sub_1DD42B4F8();
  v12 = v21;
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v18;
  v14 = *(v7 + 72);
  while (1)
  {
    v19(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v21 = v12;
    v15 = *(v12 + 16);
    if (v15 >= *(v12 + 24) >> 1)
    {
      sub_1DD42B4F8();
      v12 = v21;
    }

    *(v12 + 16) = v15 + 1;
    sub_1DD3EB4B8(v10, v12 + v18 + v15 * v14, &qword_1ECCDBBE8, &qword_1DD644470);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD605C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v5 = sub_1DD55B198(v2);
    v6 = 0;
    v7 = v2 + 56;
    v22 = v2 + 64;
    v23 = v1;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v27 = v4;
        v26 = v3;
        v9 = sub_1DD538ED0(*(*(v2 + 48) + 2 * v5));
        v11 = v10;
        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          sub_1DD42A2D4();
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v5 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v24 + 8 * v8);
        if ((v15 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v5 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (v22 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_1DD3AA558(v5, v26, 0);
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_1DD3AA558(v5, v26, 0);
        }

LABEL_19:
        if (++v6 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v14;
        if (v14 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1DD605EA4(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v7 = a3;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v9 = sub_1DD55B198(v7);
    result = v44;
    v11 = v10;
    v12 = 0;
    v13 = v7 + 56;
    v35 = v7 + 64;
    v36 = v5;
    v37 = v7 + 56;
    if ((v9 & 0x8000000000000000) == 0)
    {
      while (v9 < 1 << *(v7 + 32))
      {
        v14 = 1 << v9;
        if ((*(v13 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
        {
          goto LABEL_25;
        }

        if (*(v7 + 36) != v8)
        {
          goto LABEL_26;
        }

        v40 = v8;
        v41 = v9 >> 6;
        v39 = v12;
        v15 = result;
        v16 = v7;
        v17 = v9;
        v18 = (*(v7 + 48) + 16 * v9);
        v19 = v18[1];
        v42[0] = *v18;
        v42[1] = v19;

        a1(v43, v42);
        if (v4)
        {
          goto LABEL_30;
        }

        v4 = 0;

        v20 = v43[0];
        v21 = v43[1];
        result = v15;
        v44 = v15;
        v22 = *(v15 + 16);
        if (v22 >= *(result + 24) >> 1)
        {
          v34 = v43[0];
          sub_1DD42A2D4();
          v20 = v34;
          result = v44;
        }

        *(result + 16) = v22 + 1;
        v23 = result + 16 * v22;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        if (v11)
        {
          goto LABEL_31;
        }

        v24 = 1 << *(v16 + 32);
        v13 = v37;
        if (v17 >= v24)
        {
          goto LABEL_27;
        }

        v25 = *(v37 + 8 * v41);
        if ((v25 & v14) == 0)
        {
          goto LABEL_28;
        }

        v7 = v16;
        if (*(v16 + 36) != v40)
        {
          goto LABEL_29;
        }

        v26 = v25 & (-2 << (v17 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v17 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = v41 << 6;
          v28 = v41 + 1;
          v29 = (v35 + 8 * v41);
          while (v28 < (v24 + 63) >> 6)
          {
            v31 = *v29++;
            v30 = v31;
            v27 += 64;
            ++v28;
            if (v31)
            {
              v32 = result;
              sub_1DD3AA558(v17, v40, 0);
              result = v32;
              v24 = __clz(__rbit64(v30)) + v27;
              goto LABEL_20;
            }
          }

          v33 = result;
          sub_1DD3AA558(v17, v40, 0);
          result = v33;
        }

LABEL_20:
        v12 = v39 + 1;
        if (v39 + 1 == v36)
        {
          return result;
        }

        v11 = 0;
        v8 = *(v7 + 36);
        v9 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
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
  }

  return result;
}

uint64_t sub_1DD606158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1DD42C1B8(0, v5, 0);
    v7 = v36;
    result = sub_1DD55B198(v6);
    v11 = result;
    v12 = 0;
    v13 = v6 + 56;
    v28 = v6 + 64;
    v29 = v5;
    v30 = v6 + 56;
    v31 = v6;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v6 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v6 + 36) != v9)
        {
          goto LABEL_27;
        }

        v35 = v10;
        v15 = (*(v6 + 48) + 16 * v11);
        v16 = v15[1];
        v33 = v9;
        v34 = *v15;
        v18 = *(v36 + 16);
        v17 = *(v36 + 24);

        if (v18 >= v17 >> 1)
        {
          result = sub_1DD42C1B8(v17 > 1, v18 + 1, 1);
        }

        *(v36 + 16) = v18 + 1;
        v19 = (v36 + 32 * v18);
        v19[4] = a3;
        v19[5] = a4;
        v19[6] = v34;
        v19[7] = v16;
        if (v35)
        {
          goto LABEL_31;
        }

        v13 = v30;
        v6 = v31;
        v20 = 1 << *(v31 + 32);
        if (v11 >= v20)
        {
          goto LABEL_28;
        }

        v21 = *(v30 + 8 * v14);
        if ((v21 & (1 << v11)) == 0)
        {
          goto LABEL_29;
        }

        if (*(v31 + 36) != v33)
        {
          goto LABEL_30;
        }

        v22 = v21 & (-2 << (v11 & 0x3F));
        if (v22)
        {
          v20 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v14 << 6;
          v24 = v14 + 1;
          v25 = (v28 + 8 * v14);
          while (v24 < (v20 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_1DD3AA558(v11, v33, 0);
              v20 = __clz(__rbit64(v26)) + v23;
              goto LABEL_19;
            }
          }

          result = sub_1DD3AA558(v11, v33, 0);
        }

LABEL_19:
        if (++v12 == v29)
        {

          return v7;
        }

        v10 = 0;
        v9 = *(v31 + 36);
        v11 = v20;
        if (v20 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
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
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

void sub_1DD6063E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v34 = MEMORY[0x1E69E7CC0];
    sub_1DD42C14C();
    v5 = sub_1DD5FAA4C(v2);
    v6 = 0;
    v7 = v2 + 64;
    v25 = v3;
    v26 = v1;
    v24 = v2 + 72;
    v27 = v2 + 64;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v2 + 36) != v3)
      {
        goto LABEL_23;
      }

      v29 = v6;
      v30 = v3;
      v28 = v4;
      v9 = (*(v2 + 48) + 32 * v5);
      v10 = v9[1];
      v11 = v9[3];
      v32 = v9[2];
      v33 = *v9;
      v12 = *(*(v2 + 56) + 8 * v5);
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v31 = sub_1DD419018(v12);

      v13 = v2;
      v14 = *(v34 + 16);
      if (v14 >= *(v34 + 24) >> 1)
      {
        sub_1DD42C14C();
      }

      *(v34 + 16) = v14 + 1;
      v15 = (v34 + 40 * v14);
      v15[4] = v33;
      v15[5] = v10;
      v15[6] = v32;
      v15[7] = v11;
      v15[8] = v31;
      v16 = 1 << *(v13 + 32);
      if (v5 >= v16)
      {
        goto LABEL_24;
      }

      v7 = v27;
      v17 = *(v27 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v2 = v13;
      if (*(v13 + 36) != v30)
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v16 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (v24 + 8 * v8);
        while (v20 < (v16 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1DD3AA558(v5, v30, v28 & 1);
            v16 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_1DD3AA558(v5, v30, v28 & 1);
      }

LABEL_19:
      v4 = 0;
      v6 = v29 + 1;
      v5 = v16;
      v3 = v25;
      if (v29 + 1 == v26)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1DD60667C()
{
  sub_1DD5D3268(0);
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD5D2E58();
    if (v0)
    {
      break;
    }

    if (!v1)
    {
      return v16;
    }

    if (!*(v1 + 16))
    {
      __break(1u);
      break;
    }

    sub_1DD3EB3D0(v1 + 32, v12, &qword_1ECCDCF98, &qword_1DD6547F0);
    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD00, &qword_1DD6613B0);
      if (swift_dynamicCast())
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_1DD390754(v12, &qword_1ECCDCF98, &qword_1DD6547F0);
    }

    v14 = 0;
    v15 = 0;
LABEL_10:

    v2 = v15;
    if (v15)
    {
      v11 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = *(v16 + 16);
        sub_1DD3BE2A4();
        v16 = v8;
      }

      v3 = *(v16 + 16);
      v4 = v3 + 1;
      if (v3 >= *(v16 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v4 = v3 + 1;
        v16 = v9;
      }

      v5 = v16;
      *(v16 + 16) = v4;
      v6 = v5 + 16 * v3;
      *(v6 + 32) = v11;
      *(v6 + 40) = v2;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DD606844(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (*(a3 + 16) > 1uLL)
  {
    v8 = MEMORY[0x1E12B2590]();

    sub_1DD603FC0(v5, &v8, a1);
    v3 = v6;
  }

  else
  {
  }

  return v3;
}

void sub_1DD6068D8(void (*a1)(void *__return_ptr, unint64_t, __n128), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v28 - v13;
  v34 = a5;
  v15 = *(a5 + 16);

  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1DD63FC88();

  v18 = sub_1DD606B60(v17, 0, v15, a1, a2, a5, &v34, a3, a4);
  v19 = sub_1DD606F80(v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    v28 = v14;
    v33 = v16;
    sub_1DD42B4F8();
    v21 = v33;
    v31 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v32 = v34;
    v29 = v19;
    v30 = v34 + v31;
    v22 = 32;
    while (1)
    {
      v23 = *(v19 + v22);
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v23 >= *(v32 + 16))
      {
        goto LABEL_10;
      }

      v24 = v11;
      v25 = *(v11 + 72);
      v26 = v28;
      sub_1DD3EB3D0(v30 + v25 * v23, v28, &qword_1ECCDBBE8, &qword_1DD644470);
      v33 = v21;
      v27 = *(v21 + 16);
      if (v27 >= *(v21 + 24) >> 1)
      {
        sub_1DD42B4F8();
        v21 = v33;
      }

      *(v21 + 16) = v27 + 1;
      sub_1DD3EB4B8(v26, v21 + v31 + v27 * v25, &qword_1ECCDBBE8, &qword_1DD644470);
      v22 += 8;
      --v20;
      v11 = v24;
      v19 = v29;
      if (!v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

uint64_t sub_1DD606B60(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, unint64_t, __n128), uint64_t a5, uint64_t a6, uint64_t *a7, void (*a8)(uint64_t, uint64_t), uint64_t a9)
{
  v64 = a7;
  v69 = a4;
  v70 = a5;
  v58 = a9;
  v59 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v68 = *(v13 - 8);
  v14 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v56 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v63 = &v56 - v20;
  v21 = a2;
  v66 = a3;
  v67 = a6;
  for (i = a2; ; a2 = i)
  {
    if (a3 == v21)
    {

      return a1;
    }

    if (a3 < a2)
    {
      break;
    }

    if (v21 >= a3)
    {
      goto LABEL_27;
    }

    if (a2 < 0)
    {
      goto LABEL_28;
    }

    if (v21 >= *(a6 + 16))
    {
      goto LABEL_29;
    }

    v22 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v23 = *(v68 + 72);
    v71 = v21;
    v24 = v23 * v21;
    v69(v72, a6 + v22 + v23 * v21, v19);
    v25 = v72[0];
    v26 = v72[1];
    if (a1[2] && (v27 = sub_1DD3978DC(), (v28 & 1) != 0))
    {
      v62 = v26;
      v29 = *(a1[7] + 8 * v27);
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v30 = *v64;
      v31 = *(*v64 + 16);
      if (v29 >= v31)
      {
        goto LABEL_33;
      }

      v32 = v30 + v22;
      v61 = v29 * v23;
      v33 = v30 + v22 + v29 * v23;
      v34 = v60;
      sub_1DD3EB3D0(v33, v60, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v71 >= v31)
      {
        goto LABEL_34;
      }

      v35 = v57;
      sub_1DD3EB3D0(v32 + v24, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v59(v34, v35);
      sub_1DD390754(v35, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v34, &qword_1ECCDBBE8, &qword_1DD644470);
      v36 = v64;
      v37 = *v64;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v36 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD586A18(v37);
        v37 = v54;
        *v64 = v54;
      }

      v39 = *(v37 + 16);

      if (v29 >= v39)
      {
        goto LABEL_35;
      }

      sub_1DD627334(v63, v37 + v22 + v61, &qword_1ECCDBBE8, &qword_1DD644470);
      v40 = v71;
    }

    else
    {
      swift_isUniquelyReferenced_nonNull_native();
      v73 = a1;
      v41 = v26;
      v42 = sub_1DD3978DC();
      if (__OFADD__(a1[2], (v43 & 1) == 0))
      {
        goto LABEL_30;
      }

      v44 = v42;
      v45 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
      if (sub_1DD640A08())
      {
        v46 = sub_1DD3978DC();
        if ((v45 & 1) != (v47 & 1))
        {
          goto LABEL_36;
        }

        v44 = v46;
      }

      a1 = v73;
      if (v45)
      {
        v48 = v71;
        *(v73[7] + 8 * v44) = v71;
        v40 = v48;
      }

      else
      {
        v73[(v44 >> 6) + 8] |= 1 << v44;
        v49 = (a1[6] + 16 * v44);
        *v49 = v25;
        v49[1] = v41;
        v50 = v71;
        *(a1[7] + 8 * v44) = v71;
        v51 = a1[2];
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_31;
        }

        v40 = v50;
        a1[2] = v53;
      }
    }

    v21 = v40 + 1;
    a3 = v66;
    a6 = v67;
  }

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
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD606F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = *(a1 + 16);
  v4 = sub_1DD3C16A8();
  sub_1DD5D57EC(&v8, (v4 + 4), v1, a1);
  v6 = v5;

  sub_1DD3AA5A4();
  if (v6 != v1)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v8 = v4;
  sub_1DD6081D4(&v8);
  return v8;
}

uint64_t sub_1DD607064()
{
  v0 = sub_1DD640AA8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DD6070B0(char a1)
{
  if (a1)
  {
    v1 = sub_1DD640CD8();
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t sub_1DD607168(unint64_t a1, unint64_t a2)
{
  v5 = a2;
  v6 = a1;
  v7 = sub_1DD625EBC(a1, a2);
  v8 = *(*v3 + 16);
  if (__OFADD__(v8, v7))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1DD6223C4(v8 + v7, 1, sub_1DD3BE9E4);
  v2 = *v3;
  v9 = *(*v3 + 16);
  v10 = (*(*v3 + 24) >> 1) - v9;
  v11 = sub_1DD6260F4(&v33, *v3 + 4 * v9 + 32, v10, v6, v5);
  if (v11 < v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= 1)
  {
    v12 = *(v2 + 16);
    v13 = __OFADD__(v12, v11);
    v14 = v12 + v11;
    if (v13)
    {
      __break(1u);
      goto LABEL_18;
    }

    *(v2 + 16) = v14;
  }

  if (v11 == v10)
  {
LABEL_10:
    v4 = v35;
    v7 = v36;
    if (v35 >= v36)
    {
      goto LABEL_7;
    }

    v10 = *(v2 + 16);
    v5 = v33;
    v6 = v34;
    if ((v34 & 0x1000000000000000) != 0)
    {
      v19 = sub_1DD6408C8();
      v20 = (v6 & 0x2000000000000000) == 0;
      goto LABEL_21;
    }

    if ((v34 & 0x2000000000000000) == 0)
    {
      if ((v33 & 0x1000000000000000) != 0)
      {
        v16 = (v34 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v16 = sub_1DD640948();
      }

      v17 = (v16 + v4);
      v18 = *(v16 + v4);
      v19 = *(v16 + v4);
      if (v18 < 0)
      {
        switch(__clz(v19 ^ 0xFF))
        {
          case 0x1Au:
            v20 = 1;
            v21 = 2;
            v19 = v17[1] & 0x3F | ((v19 & 0x1F) << 6);
            break;
          case 0x1Bu:
            v19 = ((v19 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
            v20 = 1;
            v21 = 3;
            break;
          case 0x1Cu:
            v19 = ((v19 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
            v20 = 1;
            v21 = 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else
      {
LABEL_16:
        v20 = 1;
        v21 = 1;
      }

      goto LABEL_21;
    }

LABEL_18:
    v31 = v5;
    v32 = v6 & 0xFFFFFFFFFFFFFFLL;
    v22 = &v31 + v4;
    v19 = *(&v31 + v4);
    if (*(&v31 + v4) < 0)
    {
      switch(__clz(v19 ^ 0xFF))
      {
        case 0x1Au:
          v21 = 2;
          v19 = v22[1] & 0x3F | ((v19 & 0x1F) << 6);
          break;
        case 0x1Bu:
          v19 = ((v19 & 0xF) << 12) | ((v22[1] & 0x3F) << 6) | v22[2] & 0x3F;
          v21 = 3;
          break;
        case 0x1Cu:
          v19 = ((v19 & 0xF) << 18) | ((v22[1] & 0x3F) << 12) | ((v22[2] & 0x3F) << 6) | v22[3] & 0x3F;
          v21 = 4;
          break;
        default:
          goto LABEL_19;
      }
    }

    else
    {
LABEL_19:
      v21 = 1;
    }

    v20 = 0;
LABEL_21:
    v23 = v21 + v4;
LABEL_22:
    v24 = *(v2 + 24) >> 1;
    if (v24 < v10 + 1)
    {
      v29 = v19;
      sub_1DD3BE9E4();
      v2 = v30;
      v19 = v29;
      v24 = *(v2 + 24) >> 1;
    }

    while (1)
    {
      if (v10 >= v24)
      {
        *(v2 + 16) = v10;
        goto LABEL_22;
      }

      *(v2 + 4 * v10 + 32) = v19;
      if (v23 >= v7)
      {
        *(v2 + 16) = v10 + 1;
        goto LABEL_7;
      }

      if ((v6 & 0x1000000000000000) != 0)
      {
        v19 = sub_1DD6408C8();
        goto LABEL_35;
      }

      if (v20)
      {
        break;
      }

      v31 = v5;
      v32 = v6 & 0xFFFFFFFFFFFFFFLL;
      v26 = &v31 + v23;
      v19 = *(&v31 + v23);
      if ((*(&v31 + v23) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      switch(__clz(v19 ^ 0xFF))
      {
        case 0x1Au:
LABEL_37:
          v19 = v26[1] & 0x3F | ((v19 & 0x1F) << 6);
          v28 = 2;
          break;
        case 0x1Bu:
LABEL_38:
          v19 = ((v19 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
          v28 = 3;
          break;
        case 0x1Cu:
LABEL_39:
          v19 = ((v19 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
          v28 = 4;
          break;
        default:
          goto LABEL_34;
      }

LABEL_35:
      v23 += v28;
      ++v10;
    }

    v25 = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((v5 & 0x1000000000000000) == 0)
    {
      v25 = sub_1DD640948();
    }

    v26 = (v25 + v23);
    v27 = *(v25 + v23);
    v19 = *(v25 + v23);
    if (v27 < 0)
    {
      switch(__clz(v19 ^ 0xFF))
      {
        case 0x1Au:
          goto LABEL_37;
        case 0x1Bu:
          goto LABEL_38;
        case 0x1Cu:
          goto LABEL_39;
        default:
          break;
      }
    }

LABEL_34:
    v28 = 1;
    goto LABEL_35;
  }

LABEL_7:

  *v3 = v2;
  return result;
}

void sub_1DD6075D8(uint64_t a1)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v4))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1DD6223C4(v5 + v4, 1, sub_1DD3BEC68);
  v1 = *v2;
  v6 = *(*v2 + 16);
  v7 = (*(*v2 + 24) >> 1) - v6;
  sub_1DD5D4AF0(v33, *v2 + 8 * v6 + 32, v7, v3);
  if (v8 < v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, v8);
    v14 = v12 + v8;
    if (v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v14;
  }

  if (v8 == v7)
  {
LABEL_11:
    v3 = *(v1 + 16);
    v8 = v33[0];
    v9 = v33[1];
    v10 = v34;
    v11 = v35;
    if (v36)
    {
      v15 = (v36 - 1) & v36;
      v16 = __clz(__rbit64(v36)) | (v35 << 6);
      v17 = (v34 + 64) >> 6;
LABEL_19:
      v21 = *(*(v8 + 48) + 8 * v16);
      while (1)
      {
        v22 = *(v1 + 24) >> 1;
        if (v22 < v3 + 1)
        {
          v31 = v15;
          v32 = v8;
          v29 = v10;
          v30 = v9;
          v26 = v11;
          v27 = v21;
          sub_1DD3BEC68();
          v21 = v27;
          v9 = v30;
          v15 = v31;
          v11 = v26;
          v10 = v29;
          v1 = v28;
          v8 = v32;
          v22 = *(v1 + 24) >> 1;
        }

        if (v3 < v22)
        {
          break;
        }

        v23 = v11;
LABEL_33:
        *(v1 + 16) = v3;
        v11 = v23;
      }

      while (1)
      {
        *(v1 + 32 + 8 * v3++) = v21;
        if (!v15)
        {
          break;
        }

        v23 = v11;
LABEL_30:
        v25 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v21 = *(*(v8 + 48) + ((v23 << 9) | (8 * v25)));
        if (v3 >= v22)
        {
          goto LABEL_33;
        }
      }

      v24 = v11;
      while (1)
      {
        v23 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v23 >= v17)
        {
          sub_1DD3AA5A4();
          *(v1 + 16) = v3;
          goto LABEL_8;
        }

        v15 = *(v9 + 8 * v23);
        ++v24;
        if (v15)
        {
          v11 = v23;
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

LABEL_14:
    v17 = (v10 + 64) >> 6;
    v18 = v11;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

      if (v19 >= v17)
      {
        break;
      }

      v20 = *(v9 + 8 * v19);
      ++v18;
      if (v20)
      {
        v15 = (v20 - 1) & v20;
        v16 = __clz(__rbit64(v20)) | (v19 << 6);
        v11 = v19;
        goto LABEL_19;
      }
    }
  }

  sub_1DD3AA5A4();
LABEL_8:
  *v2 = v1;
}

void sub_1DD607854(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD6223C4(v4, 1, sub_1DD3BEE1C);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_47_12();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DD60793C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_64(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_131(result, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v4);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v8 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v8)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DD607A60(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_9_64(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DD6223C4(v4, 1, sub_1DD3C0504);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_47_12();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DD607B48(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_9_64(a1);
  if (v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_131(v6, v7);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  OUTLINED_FUNCTION_51_10();
  if (v12 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v4);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return;
  }

  v13 = *(v9 + 16);
  v8 = __OFADD__(v13, v1);
  v14 = v13 + v1;
  if (!v8)
  {
    *(v9 + 16) = v14;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DD607C0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_9_64(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_1DD6223C4(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD607D10(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DD6223C4(result, 1, sub_1DD3C129C);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBCA8, &unk_1DD649E40);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD607E00(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DD6223C4(result, 1, sub_1DD3C1380);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD607EEC(unint64_t a1)
{
  v3 = sub_1DD3CC020(a1);
  v4 = sub_1DD3CC020(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1DD62243C(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1DD4D4134(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DD607F98(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_127_0();
    goto LABEL_5;
  }

  if (a1 != 1)
  {
LABEL_5:
    v1 = sub_1DD640CD8();
    goto LABEL_6;
  }

  v1 = 1;
LABEL_6:

  return v1 & 1;
}

uint64_t sub_1DD60801C(char a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      v1 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    OUTLINED_FUNCTION_127_0();
  }

  v1 = sub_1DD640CD8();
LABEL_7:

  return v1 & 1;
}

uint64_t sub_1DD6080E8(uint64_t *a1, uint64_t a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC70C(v5);
    v5 = v6;
  }

  v7 = *(v5 + 16);
  v9[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v9[1] = v7;

  sub_1DD6224DC(v9, a2);
  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD6081D4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC810(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1DD622668(v6);
  *a1 = v2;
  return result;
}

void sub_1DD608240()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v22 = v5;
  v6 = type metadata accessor for StitchableInteraction();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v14 = v13 - v12;
  v15 = 0;
  v16 = *(v2 + 16);
  while (1)
  {
    if (v16 == v15)
    {
      v20 = 1;
      v21 = v22;
      goto LABEL_9;
    }

    v17 = *(v9 + 80);
    OUTLINED_FUNCTION_24_0();
    sub_1DD6271B8(v2 + v18 + *(v9 + 72) * v15, v14);
    v19 = v4(v14);
    if (v0)
    {
      sub_1DD627210(v14, type metadata accessor for StitchableInteraction);
      goto LABEL_10;
    }

    if (v19)
    {
      break;
    }

    sub_1DD627210(v14, type metadata accessor for StitchableInteraction);
    ++v15;
  }

  v21 = v22;
  sub_1DD627288(v14, v22);
  v20 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v21, v20, 1, v6);
LABEL_10:
  OUTLINED_FUNCTION_91_1();
  OUTLINED_FUNCTION_86();
}

uint64_t (*sub_1DD6083CC@<X0>(uint64_t (*result)(_BYTE *)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>))(_BYTE *)
{
  v4 = result;
  v6 = *(a2 + 16);
  v7 = (a2 + 32);
  if (v6)
  {
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      sub_1DD3E6404(__dst, v9);
      v8 = v4(__src);
      if (v3)
      {
        memcpy(v9, __src, sizeof(v9));
        return sub_1DD3E6460(v9);
      }

      if (v8)
      {
        return memcpy(a3, __src, 0x50uLL);
      }

      memcpy(v9, __src, sizeof(v9));
      result = sub_1DD3E6460(v9);
      v7 += 80;
      if (!--v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1DD6084D4@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v18 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v6 = *(v17 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - v8;
  v10 = 0;
  v11 = *(a2 + 16);
  while (1)
  {
    if (v11 == v10)
    {
      v13 = 1;
      v14 = v18;
      return __swift_storeEnumTagSinglePayload(v14, v13, 1, v17);
    }

    sub_1DD3EB3D0(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v9, &qword_1ECCDBBE8, &qword_1DD644470);
    v12 = a1(v9);
    if (v3)
    {
      return sub_1DD390754(v9, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    if (v12)
    {
      break;
    }

    sub_1DD390754(v9, &qword_1ECCDBBE8, &qword_1DD644470);
    ++v10;
  }

  v14 = v18;
  sub_1DD3EB4B8(v9, v18, &qword_1ECCDBBE8, &qword_1DD644470);
  v13 = 0;
  return __swift_storeEnumTagSinglePayload(v14, v13, 1, v17);
}

void sub_1DD608684(uint64_t a1)
{
  v2 = 0;
  v4 = a1 + 56;
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  OUTLINED_FUNCTION_4_1();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  if ((v7 & v6) != 0)
  {
    while (1)
    {
      v11 = v2;
LABEL_7:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_1DD56CECC(&v13, *(*(a1 + 48) + ((v11 << 9) | (8 * v12))));
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v11 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v2;
    if (v8)
    {
      v2 = v11;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1DD608750(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1DD640778();
    OUTLINED_FUNCTION_14();
    type metadata accessor for DateTimeConstraint();
    sub_1DD49C1EC();
    result = sub_1DD6402A8();
    v1 = v16[1];
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    OUTLINED_FUNCTION_14_3();
    v13 = v12 & v11;
    v15 = *(*(v1 + 48) + ((v10 << 9) | (8 * v14)));

    if (!v15)
    {
LABEL_18:
      OUTLINED_FUNCTION_28_2();
      return sub_1DD3AA5A4();
    }

    while (1)
    {
      sub_1DD56E250(v16, v15);

      v4 = v10;
      v5 = v13;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1DD6407F8())
      {
        type metadata accessor for DateTimeConstraint();
        swift_dynamicCast();
        v15 = v16[0];
        v10 = v4;
        v13 = v5;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    ++v9;
    if (*(v2 + 8 * v10))
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD608904(uint64_t a1)
{
  result = sub_1DD3CC020(a1);
  v3 = result;
  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12B2C10](i, a1);
      v5 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return result;
    }

    sub_1DD56E250(&v6, v5);
  }
}

uint64_t sub_1DD6089D4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;

    sub_1DD56CE00(&v7, v6, v5);

    v4 += 2;
  }
}

uint64_t sub_1DD608A7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    do
    {
      v3 = *v2++;
      sub_1DD56F38C();
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_1DD608AE0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v9 = a2;
  v4 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_1DD56CE00(v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD608B88(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v2 + 48) + 48 * (v11 | (v10 << 6)));
      v13 = *(v12 + 25);
      v14 = v12[1];
      v18 = *v12;
      v19[0] = v14;
      *(v19 + 9) = v13;
      sub_1DD41B16C(&v18, v15);
      sub_1DD56EF28(v15, &v18);
      result = sub_1DD41B1C8(v15[0], v15[1], v15[2], v15[3], v15[4], v16);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD608CD0(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF78, &unk_1DD644440);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22[-1] - v10;
  v12 = qword_1EE165D80;
  v13 = sub_1DD63CE68();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = *(*v2 + 104);
  *(v2 + v17) = 0;
  v18 = *(v13 - 8);
  (*(v18 + 16))(v11, a1, v13);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  swift_beginAccess();
  sub_1DD627334(v11, v2 + v12, &qword_1ECCDBF78, &unk_1DD644440);
  swift_endAccess();
  a2(v22, a1);
  if (v3)
  {

    (*(v18 + 8))(a1, v13);
  }

  else
  {
    (*(v18 + 8))(a1, v13);
    v19 = *(v2 + v17);
    *(v2 + v17) = v22[0];
  }

  return OUTLINED_FUNCTION_128_0();
}

uint64_t sub_1DD608E98(uint64_t a1)
{
  sub_1DD63CE68();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  *(v1 + *(*v1 + 104)) = a1;
  return v1;
}

void sub_1DD608EFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6504B0;
  v1 = *MEMORY[0x1E69D2398];
  *(inited + 32) = sub_1DD63FDD8();
  *(inited + 40) = v2;
  v3 = *MEMORY[0x1E69D23A8];
  *(inited + 48) = sub_1DD63FDD8();
  *(inited + 56) = v4;
  v5 = *MEMORY[0x1E69D23C0];
  *(inited + 64) = sub_1DD63FDD8();
  *(inited + 72) = v6;
  v7 = *MEMORY[0x1E69D23C8];
  *(inited + 80) = sub_1DD63FDD8();
  *(inited + 88) = v8;
  v9 = *MEMORY[0x1E69D23D0];
  *(inited + 96) = sub_1DD63FDD8();
  *(inited + 104) = v10;
  v11 = *MEMORY[0x1E69D23E8];
  *(inited + 112) = sub_1DD63FDD8();
  *(inited + 120) = v12;
  v13 = *MEMORY[0x1E69D23F0];
  *(inited + 128) = sub_1DD63FDD8();
  *(inited + 136) = v14;
  sub_1DD56C2F4();
  qword_1ECD0DE40 = v15;
}

uint64_t sub_1DD608FE8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringTokenizer() + 20);
  v4 = sub_1DD63D168();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

void sub_1DD60905C()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v51 = sub_1DD63C7F8();
  v11 = OUTLINED_FUNCTION_0(v51);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v50 = v16;
  v17 = StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(v10, v8, v6, v4);
  v18 = v2 + *(type metadata accessor for StringTokenizer() + 20);
  if (sub_1DD4F9BB8() & 1) != 0 || (sub_1DD63D118(), sub_1DD3B52B8(), sub_1DD3B530C(), v19 = sub_1DD63FD48(), , (v19))
  {
    v20 = 0;
    v53 = MEMORY[0x1E69E7CC0];
    v21 = *(v17 + 16);
    v22 = (v17 + 40);
    while (v21 != v20)
    {
      if (v20 >= *(v17 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        return;
      }

      ++v20;
      v24 = *(v22 - 1);
      v23 = *v22;

      v25 = OUTLINED_FUNCTION_73();
      sub_1DD607168(v25, v26);
      v22 += 2;
    }

    v27 = v53;
    v28 = *(v53 + 16);
    if (v28)
    {
      v54 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_55_9();
      sub_1DD42A2D4();
      v29 = 32;
      v30 = v54;
      do
      {
        *(v27 + v29);
        sub_1DD63FED8();
        OUTLINED_FUNCTION_95_1();
        v31 = *(v54 + 16);
        if (v31 >= *(v54 + 24) >> 1)
        {
          OUTLINED_FUNCTION_113_0();
          sub_1DD42A2D4();
        }

        *(v54 + 16) = v31 + 1;
        v32 = v54 + 16 * v31;
        *(v32 + 32) = v22;
        *(v32 + 40) = v1;
        v29 += 4;
        --v28;
      }

      while (v28);
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    v33 = *(v30 + 16);
    if (v33)
    {
      v52 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_55_9();
      sub_1DD42A2D4();
      v34 = v52;
      v35 = (v13 + 8);
      v36 = (v30 + 40);
      do
      {
        v55 = *(v36 - 1);
        v56 = *v36;

        sub_1DD63C7E8();
        sub_1DD3B7F10();
        sub_1DD640668();
        OUTLINED_FUNCTION_95_1();
        (*v35)(v50, v51);

        v37 = *(v52 + 16);
        if (v37 >= *(v52 + 24) >> 1)
        {
          OUTLINED_FUNCTION_113_0();
          sub_1DD42A2D4();
        }

        *(v52 + 16) = v37 + 1;
        v38 = v52 + 16 * v37;
        *(v38 + 32) = v22;
        *(v38 + 40) = v1;
        v36 += 2;
        --v33;
      }

      while (v33);
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    v39 = 0;
    v40 = *(v34 + 16);
    v41 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v42 = (v34 + 40 + 16 * v39);
    while (v40 != v39)
    {
      if (v39 >= *(v34 + 16))
      {
        goto LABEL_36;
      }

      ++v39;
      v44 = *(v42 - 1);
      v43 = *v42;
      v42 += 2;
      v45 = HIBYTE(v43) & 0xF;
      if ((v43 & 0x2000000000000000) == 0)
      {
        v45 = v44 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v41 + 16);
          OUTLINED_FUNCTION_26_2();
          sub_1DD42A2D4();
        }

        v48 = *(v41 + 16);
        v47 = *(v41 + 24);
        if (v48 >= v47 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v47);
          sub_1DD42A2D4();
        }

        *(v41 + 16) = v48 + 1;
        v49 = v41 + 16 * v48;
        *(v49 + 32) = v44;
        *(v49 + 40) = v43;
        goto LABEL_22;
      }
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD6094FC()
{
  OUTLINED_FUNCTION_93();
  v61 = v1;
  v57 = v3;
  v58 = v0;
  v68 = v4;
  v56 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = type metadata accessor for Signpost();
  v13 = OUTLINED_FUNCTION_7(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  if (qword_1EE166460 != -1)
  {
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v16 = qword_1EE16F0C0;
  v17 = v2 + *(v12 + 20);
  *v17 = "UCG.FindRelationshipAliases";
  *(v17 + 8) = 27;
  *(v17 + 16) = 2;
  v18 = v16;
  sub_1DD63F9B8();
  *(v2 + *(v12 + 24)) = v18;
  v19 = v18;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DD643F90;
  v21 = sub_1DD6408F8();
  v23 = v22;
  *(v20 + 56) = MEMORY[0x1E69E6158];
  *(v20 + 64) = sub_1DD392BD8();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  OUTLINED_FUNCTION_22();
  v59 = v19;
  v60 = v2;
  OUTLINED_FUNCTION_70_3();
  sub_1DD63F998();

  v66 = v56;
  v67 = v68;
  v24 = sub_1DD63D168();
  OUTLINED_FUNCTION_7(v24);
  v26 = *(v25 + 16);
  v27 = v57;
  v26(v11, v57, v24);
  OUTLINED_FUNCTION_21_21();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  sub_1DD3B7F10();
  v32 = sub_1DD640648();
  v34 = v33;
  sub_1DD390754(v11, &qword_1ECCDC3F0, &unk_1DD64AF50);
  v66 = v32;
  v67 = v34;
  v26(v11, v27, v24);
  OUTLINED_FUNCTION_21_21();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = sub_1DD6406C8();
  v41 = v40;
  sub_1DD390754(v11, &qword_1ECCDC3F0, &unk_1DD64AF50);
  v66 = sub_1DD63D118();
  v67 = v42;
  v64 = 45;
  v65 = 0xE100000000000000;
  v62 = 95;
  v63 = 0xE100000000000000;
  OUTLINED_FUNCTION_21_36();
  sub_1DD640678();
  OUTLINED_FUNCTION_79_3();

  v43 = sub_1DD63FE58();
  v45 = v44;

  v46 = sub_1DD6099CC(v32, v34, v39, v41, v43, v45);
  v48 = v47;

  if ((v48 & 1) != 0 || (v49 = v61, v50 = sub_1DD60A060(v46, v43, v45), v49))
  {

    v51 = v60;
  }

  else
  {
    v52 = v50;

    v64 = v52;
    v53 = sub_1DD609F50(v46);
    v51 = v60;
    if (v54)
    {
      sub_1DD56CE00(&v66, v53, v54);
    }

    sub_1DD581CB8(v32, v34);
  }

  sub_1DD6404C8();
  OUTLINED_FUNCTION_70_3();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_1_133();
  sub_1DD627210(v51, v55);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD6099CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F068);

  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();

  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_17_0();
    v12 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v12 = 136315650;
    *(v12 + 4) = sub_1DD39565C(a5, a6, v35);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1DD39565C(a3, a4, v35);
    *(v12 + 22) = 2080;
    v13 = OUTLINED_FUNCTION_118_0();
    *(v12 + 24) = sub_1DD39565C(v13, v14, v15);
    _os_log_impl(&dword_1DD38D000, v10, v11, "[UCG] Relationship alias lookup: locale='%s' normalizedLabel='%s' label='%s'", v12, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v16 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v16);
  }

  v17 = OUTLINED_FUNCTION_118_0();
  v19 = sub_1DD609E20(v17, v18, a5, a6);
  if ((v20 & 1) == 0)
  {
    return v19;
  }

  v19 = sub_1DD609E20(a3, a4, a5, a6);
  if ((v21 & 1) == 0)
  {
    return v19;
  }

  v22 = OUTLINED_FUNCTION_118_0();
  v24 = sub_1DD609D10(v22, v23);
  if (v25)
  {

    v26 = sub_1DD63F9D8();
    v27 = sub_1DD640368();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_58_9();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_6();
      v35[0] = swift_slowAlloc();
      *v28 = 136315394;
      v29 = OUTLINED_FUNCTION_118_0();
      *(v28 + 4) = sub_1DD39565C(v29, v30, v31);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_1DD39565C(a5, a6, v35);
      _os_log_impl(&dword_1DD38D000, v26, v27, "[UCG] Label '%s' does not map to a valid relationship in locale '%s'", v28, 0x16u);
      swift_arrayDestroy();
      v32 = OUTLINED_FUNCTION_12_49();
      MEMORY[0x1E12B3DA0](v32);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }
  }

  return v24;
}

uint64_t sub_1DD609D10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  if (!sub_1DD582448())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_73();
  v7 = sub_1DD63FE58();
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = v7;
  *(inited + 40) = v8;
  v9 = OUTLINED_FUNCTION_42_11(51);
  v12 = sub_1DD5804E4(v9, v10, v11);
  if (!v3)
  {
    a2 = v12;
  }

  swift_setDeallocating();
  sub_1DD46CB4C();
  return a2;
}

uint64_t sub_1DD609E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  if (!sub_1DD582448())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  v12 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &off_1F58C4E78;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  *(inited + 96) = v12;
  *(inited + 104) = &off_1F58C4E78;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v13 = OUTLINED_FUNCTION_42_11(124);
  v16 = sub_1DD5804E4(v13, v14, v15);
  if (!v5)
  {
    a2 = v16;
  }

  swift_setDeallocating();
  sub_1DD46CB4C();
  return a2;
}

uint64_t sub_1DD609F50(uint64_t a1)
{
  v4 = *(v1 + 16);
  if (!sub_1DD582448())
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69E7360];
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 56) = v6;
  *(inited + 64) = &off_1F58C4E70;
  *(inited + 32) = a1;
  v7 = sub_1DD5805F0(0xD000000000000033, 0x80000001DD673320, inited);
  if (!v2)
  {
    a1 = v7;
  }

  swift_setDeallocating();
  sub_1DD46CB4C();
  return a1;
}

uint64_t sub_1DD60A060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  if (!sub_1DD582448())
  {
    return MEMORY[0x1E69E7CD0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDB30, &qword_1DD653690);
  inited = swift_initStackObject();
  v10 = MEMORY[0x1E69E6158];
  *(inited + 16) = xmmword_1DD643F80;
  *(inited + 56) = v10;
  *(inited + 64) = &off_1F58C4E78;
  v11 = MEMORY[0x1E69E7360];
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 96) = v11;
  *(inited + 104) = &off_1F58C4E70;
  *(inited + 72) = a1;

  v12 = OUTLINED_FUNCTION_42_11(124);
  sub_1DD4061B8(v12, v13, v14);
  if (v4)
  {

    swift_setDeallocating();
    v15 = inited;
    sub_1DD46CB4C();
  }

  else
  {
    swift_setDeallocating();
    sub_1DD46CB4C();
    v16 = sub_1DD60667C();
    v15 = sub_1DD41859C(v16);
  }

  return v15;
}

uint64_t sub_1DD60A1C0()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_57();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD60A1F4(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = (&unk_1F58AA8C0 + 24 * v2 + 48);
  while (++v2 != 3)
  {
    v5 = v4 + 3;
    v6 = *v4;
    v4 += 3;
    if ((v6 & ~a1) == 0)
    {
      v8 = *(v5 - 5);
      v7 = *(v5 - 4);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v3 + 16);
        sub_1DD3BE2A4();
        v3 = v12;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v3 = v13;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      goto LABEL_2;
    }
  }

  return v3;
}

void sub_1DD60A2F0(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v4 = (&unk_1F58AA7E0 + 24 * v2 + 48);
  while (v2 != 8)
  {
    if (v2 > 7)
    {
      __break(1u);
      return;
    }

    ++v2;
    v5 = v4 + 3;
    v6 = *v4;
    v4 += 3;
    if ((v6 & ~a1) == 0)
    {
      v8 = *(v5 - 5);
      v7 = *(v5 - 4);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = *(v3 + 16);
        sub_1DD3BE2A4();
        v3 = v12;
      }

      v9 = *(v3 + 16);
      if (v9 >= *(v3 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v3 = v13;
      }

      *(v3 + 16) = v9 + 1;
      v10 = v3 + 16 * v9;
      *(v10 + 32) = v8;
      *(v10 + 40) = v7;
      goto LABEL_2;
    }
  }
}

uint64_t sub_1DD60A428(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_52_11(a1);
  result = sub_1DD587164(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1DD60A450(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_52_11(a1);
  result = sub_1DD455C58(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_1DD60A478(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1DD640CD8()) && a1[2] == a2[2])
  {
    v5 = a1[4];
    v6 = a2[4];
    if (v5)
    {
      if (v6)
      {
        v7 = a1[3] == a2[3] && v5 == v6;
        if (v7 || (sub_1DD640CD8() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1DD60A510()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v0[2]);
  if (!v0[4])
  {
    return sub_1DD640E48();
  }

  v3 = v0[3];
  sub_1DD640E48();
  OUTLINED_FUNCTION_68_4();

  return sub_1DD63FD28();
}

uint64_t sub_1DD60A590()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v4);
  sub_1DD640E48();
  if (v5)
  {
    OUTLINED_FUNCTION_68_4();
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60A624()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1DD640E28();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v4);
  sub_1DD640E48();
  if (v5)
  {
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60A6C0(uint64_t a1, void (*a2)(void))
{
  a2();
  v2 = MEMORY[0x1E12B2430]();

  return v2;
}

BOOL sub_1DD60A714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5)
  {
    return a3 == a6;
  }

  v9 = sub_1DD640CD8();
  result = 0;
  if (v9)
  {
    return a3 == a6;
  }

  return result;
}

uint64_t sub_1DD60A798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](a3);
  return sub_1DD640E78();
}

uint64_t sub_1DD60A7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1DD640CD8(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1DD640CD8();
    }
  }

  return result;
}

uint64_t sub_1DD60A898()
{
  sub_1DD63FD28();

  return sub_1DD63FD28();
}

uint64_t sub_1DD60A8E8()
{
  OUTLINED_FUNCTION_79();
  sub_1DD63FD28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD60A998()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1DD640E28();
  sub_1DD63FD28();
  MEMORY[0x1E12B3140](v3);
  return sub_1DD640E78();
}

uint64_t sub_1DD60AA14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1DD60A8E8();
}

uint64_t sub_1DD60AA20()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_1DD60A898();
}

uint64_t sub_1DD60AA2C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1DD640E28();
  sub_1DD63FD28();
  sub_1DD63FD28();
  return sub_1DD640E78();
}

uint64_t sub_1DD60AAAC()
{
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      v6 = *v0;
      v1 = *(v0 + 1);
      v7 = *(v0 + 2);
    }

    else
    {
      v4 = v0[1];
      v10 = *v0;
      v11 = v4;
      sub_1DD406EC4(&v10, v9);
      sub_1DD406EC4(&v11, v9);
    }
  }

  else
  {
    v2 = v0[1];
    v3 = *(v0 + 24);
    v10 = *v0;
    v11 = v3;
    v8 = *(v0 + 4);
    sub_1DD406EC4(&v10, v9);
    sub_1DD3EB3D0(&v11, v9, &unk_1ECCDFDF0, &unk_1DD644950);
  }

  return sub_1DD63FE38();
}

uint64_t sub_1DD60AB78(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  if (*(a1 + 40))
  {
    if (*(a1 + 40) == 1)
    {
      if (*(a2 + 40) != 1)
      {
        return 0;
      }

      v11 = v4 == v8 && v5 == v9;
      return (v11 || (sub_1DD640CD8() & 1) != 0) && v6 == v10;
    }

    if (*(a2 + 40) != 2)
    {
      return 0;
    }

    v17 = a2[3];
    v18 = v4 == v8 && v5 == v9;
    if (!v18 && (sub_1DD640CD8() & 1) == 0)
    {
      return 0;
    }

    if (v6 == v10 && v7 == v17)
    {
      return 1;
    }

    OUTLINED_FUNCTION_15_0();
  }

  else
  {
    if (*(a2 + 40))
    {
      return 0;
    }

    v12 = a1[4];
    v14 = a2[3];
    v13 = a2[4];
    v15 = v4 == v8 && v5 == v9;
    if (!v15 && (sub_1DD640CD8() & 1) == 0 || v6 != v10)
    {
      return 0;
    }

    if (!v12)
    {
      return !v13;
    }

    if (!v13)
    {
      return 0;
    }

    if (v7 == v14 && v12 == v13)
    {
      return 1;
    }
  }

  return (sub_1DD640CD8() & 1) != 0;
}

uint64_t sub_1DD60ACB0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  if (*(v0 + 40))
  {
    if (*(v0 + 40) == 1)
    {
      MEMORY[0x1E12B3140](1);
      OUTLINED_FUNCTION_101_1();
      return MEMORY[0x1E12B3140](v3);
    }

    MEMORY[0x1E12B3140](2);
    OUTLINED_FUNCTION_101_1();
    OUTLINED_FUNCTION_68_4();
  }

  else
  {
    v6 = v0[4];
    MEMORY[0x1E12B3140](0);
    OUTLINED_FUNCTION_101_1();
    MEMORY[0x1E12B3140](v3);
    if (!v6)
    {
      return sub_1DD640E48();
    }

    sub_1DD640E48();
  }

  return sub_1DD63FD28();
}

uint64_t sub_1DD60ADA4()
{
  OUTLINED_FUNCTION_79();
  sub_1DD60ACB0();
  return sub_1DD640E78();
}

uint64_t sub_1DD60ADE4()
{
  sub_1DD640E28();
  sub_1DD60ACB0();
  return sub_1DD640E78();
}

uint64_t sub_1DD60AE28()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v6 = *v0;
    v7 = v0[1];

    MEMORY[0x1E12B2260](64, 0xE100000000000000);
    MEMORY[0x1E12B2260](v3, v2);
    return v6;
  }

  else
  {
    v4 = v0[1];
  }

  return v1;
}

uint64_t sub_1DD60AEB0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = 0, (sub_1DD640CD8() & 1) != 0))
  {
    v10[0] = v2;
    v10[1] = v3;
    v9[0] = v5;
    v9[1] = v4;

    v7 = static ContactSource.== infix(_:_:)(v10, v9);
  }

  return v7 & 1;
}

uint64_t sub_1DD60AF58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD63FD28();
  if (!v4)
  {
    return MEMORY[0x1E12B3140](0);
  }

  MEMORY[0x1E12B3140](1);
  OUTLINED_FUNCTION_68_4();

  return sub_1DD63FD28();
}

uint64_t sub_1DD60AFD0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  sub_1DD63FD28();
  if (v4)
  {
    MEMORY[0x1E12B3140](1);
    OUTLINED_FUNCTION_68_4();
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60B054()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DD640E28();
  OUTLINED_FUNCTION_28_2();
  sub_1DD63FD28();
  if (v4)
  {
    MEMORY[0x1E12B3140](1);
    OUTLINED_FUNCTION_68_4();
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD60B0DC()
{
  sub_1DD41B22C();
  *(v0 + 16) = sub_1DD63FC88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF10, &qword_1DD664C18);
  *(v0 + 24) = sub_1DD63FC88();
  return v0;
}

uint64_t sub_1DD60B15C(uint64_t *a1)
{
  v45 = *a1;
  v48 = a1[1];
  v2 = a1[3];
  v1 = a1[4];
  v3 = v1 + 56;
  v42 = a1[2];
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
  v7 = (v4 + 63) >> 6;

  v40 = 0;
  v8 = 0;
  v43 = v1;
  v44 = v2;
  while (1)
  {
    v9 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v10 = *(v1 + 48) + 48 * (__clz(__rbit64(v6)) | (v8 << 6));
    v11 = *(v10 + 25);
    v12 = *(v10 + 16);
    v55 = *v10;
    *v56 = v12;
    *&v56[9] = v11;
    v47 = *(v10 + 8);
    sub_1DD41B16C(&v55, &v51);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16F068);
    sub_1DD41B16C(&v55, &v51);

    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();

    sub_1DD57ADE4(&v55);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v49 = v46;
      *v16 = 136315394;
      if (v2)
      {
        *&v51 = v45;
        *(&v51 + 1) = v48;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1E12B2260](64, 0xE100000000000000);
        MEMORY[0x1E12B2260](v42, v2);

        v18 = *(&v51 + 1);
        v17 = v51;
      }

      else
      {
        v18 = v48;

        v17 = v45;
      }

      v19 = sub_1DD39565C(v17, v18, &v49);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2080;
      if (v56[24])
      {
        if (v56[24] == 1)
        {
          v51 = v55;
          *&v52 = *v56;
        }

        else
        {
          v57 = v55;
          v58 = *v56;
          v51 = v55;
          v52 = *v56;
          sub_1DD406EC4(&v57, v50);
          sub_1DD406EC4(&v58, v50);
        }
      }

      else
      {
        v59 = v55;
        v60 = *&v56[8];
        v51 = v55;
        v52 = *v56;
        v53 = *&v56[16];
        sub_1DD406EC4(&v59, v50);
        sub_1DD3EB3D0(&v60, v50, &unk_1ECCDFDF0, &unk_1DD644950);
      }

      v20 = sub_1DD63FE38();
      v22 = sub_1DD39565C(v20, v21, &v49);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_1DD38D000, v14, v15, "[UCG] Adding new match type for candidate[%s]: %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v46, -1, -1);
      MEMORY[0x1E12B3DA0](v16, -1, -1);

      v1 = v43;
      v2 = v44;
    }

    else
    {
    }

    v6 &= v6 - 1;
    if (v56[24] == 2)
    {
      sub_1DD57ADE4(&v55);
    }

    else
    {
      v23 = v55;

      swift_beginAccess();
      sub_1DD39E698(v40);
      v24 = *(v41 + 24);
      swift_isUniquelyReferenced_nonNull_native();
      *&v51 = *(v41 + 24);
      v25 = v51;
      *(v41 + 24) = 0x8000000000000000;
      v26 = sub_1DD3978DC();
      if (__OFADD__(*(v25 + 16), (v27 & 1) == 0))
      {
        goto LABEL_34;
      }

      v28 = v26;
      v29 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF18, &qword_1DD664C20);
      v30 = sub_1DD640A08();
      v31 = v51;
      if (v30)
      {
        v32 = sub_1DD3978DC();
        v2 = v44;
        if ((v29 & 1) != (v33 & 1))
        {
          goto LABEL_36;
        }

        v28 = v32;
      }

      else
      {
        v2 = v44;
      }

      *(v41 + 24) = v31;
      if ((v29 & 1) == 0)
      {
        v31[(v28 >> 6) + 8] |= 1 << v28;
        *(v31[6] + 16 * v28) = v23;
        *(v31[7] + 8 * v28) = MEMORY[0x1E69E7CD0];
        v34 = v31[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_35;
        }

        v31[2] = v36;
      }

      v37 = v31[7] + 8 * v28;
      sub_1DD56EF28(&v51, &v55);
      swift_endAccess();

      sub_1DD41B1C8(v51, *(&v51 + 1), v52, *(&v52 + 1), v53, v54);
      v40 = sub_1DD60B7B0;
      v1 = v43;
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF20, &qword_1DD664C28);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD643F90;
      *(inited + 32) = v45;
      *(inited + 40) = v48;
      *(inited + 48) = v42;
      *(inited + 56) = v2;
      *(inited + 64) = v45;
      *(inited + 72) = v48;
      *(inited + 80) = v42;
      *(inited + 88) = v2;
      *(inited + 96) = v1;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();

      sub_1DD6257C8(inited, (v41 + 16));
      swift_endAccess();
      return sub_1DD39E698(v40);
    }

    v6 = *(v3 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD60B7C0(void *__src)
{
  v2 = v1;
  memcpy(v112, __src, 0x108uLL);
  swift_beginAccess();
  v3 = *(v1 + 16);
  v111 = v3;
  v4 = qword_1EE165FB0;

  if (v4 == -1)
  {
    goto LABEL_2;
  }

  while (2)
  {
    swift_once();
LABEL_2:
    v5 = sub_1DD63F9F8();
    v98[4] = __swift_project_value_buffer(v5, qword_1EE16F068);
    v6 = sub_1DD63F9D8();
    v7 = sub_1DD640368();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = *(v3 + 16);
      _os_log_impl(&dword_1DD38D000, v6, v7, "[UCG] Beginning merge and filter stage for %ld match records...", v8, 0xCu);
      MEMORY[0x1E12B3DA0](v8, -1, -1);
    }

    memcpy(v110, v112, 0x108uLL);
    if ((sub_1DD41E198() & 1) == 0 && ((v112[20] & 0x2000000000000000) != 0 ? (v9 = HIBYTE(v112[20]) & 0xFLL) : (v9 = v112[19] & 0xFFFFFFFFFFFFLL), !v9) || !v112[23] || ((v112[23] & 0x2000000000000000) != 0 ? (v10 = HIBYTE(v112[23]) & 0xFLL) : (v10 = v112[22] & 0xFFFFFFFFFFFFLL), !v10))
    {
      v103 = 0;
LABEL_19:
      v12 = v3;
      goto LABEL_20;
    }

    v12 = sub_1DD621710(v11);
    v103 = 0;

    v13 = *(v12 + 16);
    if (!v13)
    {

      goto LABEL_19;
    }

    v14 = v2;
    v15 = *(v3 + 16);
    v16 = sub_1DD63F9D8();
    v17 = sub_1DD640368();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = v15 - v13;
      _os_log_impl(&dword_1DD38D000, v16, v17, "[UCG] We have at least one candidate that was specified with a name AND relationship. Discarding %ld other candidates", v18, 0xCu);
      MEMORY[0x1E12B3DA0](v18, -1, -1);
    }

    swift_beginAccess();
    v111 = v12;

    v2 = v14;
LABEL_20:
    memcpy(v110, v112, 0x108uLL);
    if ((sub_1DD41E198() & 1) == 0 && !((v112[20] & 0x2000000000000000) != 0 ? HIBYTE(v112[20]) & 0xFLL : v112[19] & 0xFFFFFFFFFFFFLL))
    {
      if (!v112[23])
      {
        goto LABEL_71;
      }

      if (!((v112[23] & 0x2000000000000000) != 0 ? HIBYTE(v112[23]) & 0xFLL : v112[22] & 0xFFFFFFFFFFFFLL))
      {
        goto LABEL_71;
      }
    }

    v99 = v12;
    swift_beginAccess();
    v101 = v2;
    v20 = *(v2 + 24);
    v21 = v20 + 8;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v20[8];
    v2 = (v22 + 63) >> 6;
    v104 = v20;
    swift_bridgeObjectRetain_n();
    v3 = 0;
    v102 = MEMORY[0x1E69E7CC0];
    while (v24)
    {
LABEL_33:
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v27 = v26 | (v3 << 6);
      v28 = (v104[6] + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      v31 = *(v104[7] + 8 * v27);

      v32 = sub_1DD60C2D8(v29, v30, v31);
      v34 = v33;

      if (v34)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = v102[2];
          sub_1DD3BE2A4();
          v102 = v39;
        }

        v35 = v102[2];
        if (v35 >= v102[3] >> 1)
        {
          sub_1DD3BE2A4();
          v102 = v40;
        }

        v36 = v102;
        v102[2] = v35 + 1;
        v37 = &v36[2 * v35];
        v37[4] = v32;
        v37[5] = v34;
      }
    }

    while (1)
    {
      v25 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (v25 >= v2)
      {
        break;
      }

      v24 = v21[v25];
      ++v3;
      if (v24)
      {
        v3 = v25;
        goto LABEL_33;
      }
    }

    v100 = sub_1DD41859C(v102);
    v41 = *(v101 + 16);
    v43 = *(v41 + 64);
    v2 = v41 + 64;
    v42 = v43;
    v44 = 1 << *(*(v101 + 16) + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & v42;
    v3 = (v44 + 63) >> 6;
    v102 = *(v101 + 16);
    swift_bridgeObjectRetain_n();
    v47 = 0;
    v104 = MEMORY[0x1E69E7CC0];
    if (v46)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v48 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_82;
      }

      if (v48 >= v3)
      {
        break;
      }

      v46 = *(v2 + 8 * v48);
      ++v47;
      if (v46)
      {
        v47 = v48;
        do
        {
LABEL_46:
          v49 = __clz(__rbit64(v46)) | (v47 << 6);
          v50 = (v102[6] + 32 * v49);
          v51 = *v50;
          v52 = v50[1];
          v53 = v50[2];
          v54 = v50[3];
          v55 = (v102[7] + 40 * v49);
          v56 = *v55;
          v57 = v55[1];
          v59 = v55[2];
          v58 = v55[3];
          v60 = v55[4];
          v109[0] = v51;
          v109[1] = v52;
          v109[2] = v53;
          v109[3] = v54;
          v109[4] = v56;
          v109[5] = v57;
          v109[6] = v59;
          v109[7] = v58;
          v109[8] = v60;

          sub_1DD60C3A8(v109, &v109[4], &v105);
          memcpy(v110, v109, 0x48uLL);
          sub_1DD390754(v110, &qword_1ECCDFF08, &unk_1DD664C00);
          v62 = v105;
          v61 = v106;
          v63 = v107;
          if (v106)
          {
            v101 = v108;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = v104[2];
              sub_1DD3C1038();
              v104 = v69;
            }

            v64 = v104[2];
            if (v64 >= v104[3] >> 1)
            {
              sub_1DD3C1038();
              v104 = v70;
            }

            v65 = v104;
            v104[2] = v64 + 1;
            v66 = &v65[4 * v64];
            v66[4] = v62;
            v66[5] = v61;
            v67 = v101;
            v66[6] = v63;
            v66[7] = v67;
          }

          else
          {
            sub_1DD3AD738(v105, 0);
          }

          v46 &= v46 - 1;
        }

        while (v46);
      }
    }

    v71 = sub_1DD418F30(v104);
    if (*(v100 + 16))
    {

      v72 = sub_1DD63F9D8();
      v73 = sub_1DD640368();

      v74 = v99;
      if (os_log_type_enabled(v72, v73))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v110[0] = v76;
        *v75 = 136315138;
        v77 = sub_1DD640278();
        v79 = sub_1DD39565C(v77, v78, v110);

        *(v75 + 4) = v79;
        _os_log_impl(&dword_1DD38D000, v72, v73, "[UCG] We have MeCard relationship matches, will filter out partial name matches: %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        MEMORY[0x1E12B3DA0](v76, -1, -1);
        MEMORY[0x1E12B3DA0](v75, -1, -1);
      }

      v109[0] = MEMORY[0x1E69E7CC8];
      v2 = v74 + 64;
      v80 = 1 << *(v74 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v82 = v81 & *(v74 + 64);
      v3 = (v80 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v83 = 0;
      if (v82)
      {
        while (1)
        {
          v84 = v83;
LABEL_65:
          v85 = (*(v74 + 56) + 40 * (__clz(__rbit64(v82)) | (v84 << 6)));
          v86 = v85[1];
          v88 = v85[2];
          v87 = v85[3];
          v89 = v85[4];
          *&v110[0] = *v85;
          *(&v110[0] + 1) = v86;
          *&v110[1] = v88;
          *(&v110[1] + 1) = v87;
          *&v110[2] = v89;

          sub_1DD60C4A0(v109, v110, v100, v71);
          if (v103)
          {
            break;
          }

          v82 &= v82 - 1;

          v83 = v84;
          v74 = v99;
          if (!v82)
          {
            goto LABEL_62;
          }
        }

        __break(1u);
        return result;
      }

LABEL_62:
      while (1)
      {
        v84 = v83 + 1;
        if (__OFADD__(v83, 1))
        {
          break;
        }

        if (v84 >= v3)
        {

          v12 = v109[0];
          swift_beginAccess();
          v111 = v12;
          goto LABEL_70;
        }

        v82 = *(v2 + 8 * v84);
        ++v83;
        if (v82)
        {
          goto LABEL_65;
        }
      }

LABEL_83:
      __break(1u);
      continue;
    }

    break;
  }

  v12 = v99;
LABEL_70:

LABEL_71:
  v90 = sub_1DD63F9D8();
  v91 = sub_1DD640368();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = *(v12 + 16);
    _os_log_impl(&dword_1DD38D000, v90, v91, "[UCG] Consolidating %ld filtered match records into candidates...", v92, 0xCu);
    MEMORY[0x1E12B3DA0](v92, -1, -1);
  }

  MEMORY[0x1EEE9AC00](v93);
  v98[2] = v112;

  v95 = sub_1DD6056DC(v94, sub_1DD626C50, v98);
  swift_bridgeObjectRelease_n();
  return v95;
}

uint64_t sub_1DD60C1AC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 32);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v3 + 56;
  v7 = v5 & *(v3 + 56);
  v8 = (v4 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (!*(*(v3 + 48) + 48 * (v10 | (v9 << 6)) + 40))
    {
      v11 = 0;
      v12 = 1 << *(v3 + 32);
      v13 = -1;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      v14 = v13 & *(v3 + 56);
      v15 = (v12 + 63) >> 6;
      result = 1;
      while (v14)
      {
        v17 = v11;
LABEL_20:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        if (*(*(v3 + 48) + 48 * (v18 | (v17 << 6)) + 40) == 1)
        {
          return result;
        }
      }

      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_24;
        }

        if (v17 >= v15)
        {
          return 0;
        }

        v14 = *(v6 + 8 * v17);
        ++v11;
        if (v14)
        {
          v11 = v17;
          goto LABEL_20;
        }
      }
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return 0;
    }

    v7 = *(v6 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1DD60C2D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = 0;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  while (v7)
  {
    v8 = v4;
LABEL_10:
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    if (*(*(a3 + 48) + 48 * (v9 | (v8 << 6)) + 40) == 1)
    {

      return v3;
    }
  }

  while (1)
  {
    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v8 >= ((v5 + 63) >> 6))
    {
      return 0;
    }

    v7 = *(a3 + 56 + 8 * v8);
    ++v4;
    if (v7)
    {
      v4 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1DD60C3A8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = 0;
  v6 = *result;
  v5 = result[1];
  v8 = result[2];
  v7 = result[3];
  v9 = *(a2 + 32);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v4;
LABEL_10:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    if (*(*(v9 + 48) + 48 * (v15 | (v14 << 6)) + 40) == 1)
    {
      v16 = result[3];

LABEL_13:
      *a3 = v6;
      a3[1] = v5;
      a3[2] = v8;
      a3[3] = v7;
      return result;
    }
  }

  while (1)
  {
    v14 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      v6 = 0;
      v5 = 0;
      v8 = 0;
      v7 = 0;
      goto LABEL_13;
    }

    v12 = *(v9 + 56 + 8 * v14);
    ++v4;
    if (v12)
    {
      v4 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_1DD60C4A0(uint64_t *a1, __int128 *a2, uint64_t a3, void *a4)
{
  v7 = a2[1];
  v24 = *a2;
  v25 = v7;
  v8 = *(a2 + 4);
  v26 = v8;
  v27 = v8;

  sub_1DD626C58(&v24, v22);

  sub_1DD3EB3D0(&v27, v22, &qword_1ECCDFF10, &qword_1DD664C18);
  v9 = sub_1DD6248A8(v8, a3, &v24, a4);
  if (v9[2])
  {
    v22[0] = v24;
    v22[1] = v25;
    v23 = v9;
    swift_bridgeObjectRetain_n();

    v10 = *a1;

    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1DD400444();

    *a1 = v21;
  }

  else
  {

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1EE16F068);
    sub_1DD626C58(&v24, v22);
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    sub_1DD626C90(&v24);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v22[0] = v15;
      *v14 = 136315138;
      v16 = v24;
      v17 = v25;

      v18 = sub_1DD603F2C(v16, *(&v16 + 1), v17, *(&v17 + 1));
      v20 = sub_1DD39565C(v18, v19, v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, v12, v13, "[UCG] Discarding match [%s] after relationship filtering - looks like this was a partial name match containing a relationship label", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E12B3DA0](v15, -1, -1);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
    }
  }
}

uint64_t sub_1DD60C724@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, const void *a3@<X2>, unint64_t a4@<X8>)
{
  v196 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v213 = v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  i = v184 - v11;
  v214 = sub_1DD63D0F8();
  v197 = *(v214 - 8);
  v12 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v214);
  v188 = v184 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v192 = v184 - v15;
  v212 = type metadata accessor for ContactResolver.SignalSet(0);
  v16 = *(*(v212 - 1) + 64);
  MEMORY[0x1EEE9AC00](v212);
  v207 = v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for Contact();
  v18 = *(*(v201 - 8) + 64);
  MEMORY[0x1EEE9AC00](v201);
  v20 = v184 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[3];
  v190 = a1[2];
  v191 = v21;
  v24 = *a2;
  v25 = a2[1];
  v26 = a2[3];
  v210 = a2[2];
  v211 = v24;
  v27 = a2[4];
  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_2;
  }

LABEL_160:
  swift_once();
LABEL_2:
  v187 = a4;
  v28 = sub_1DD63F9F8();
  v29 = __swift_project_value_buffer(v28, qword_1EE16F068);

  v184[1] = v29;
  v30 = sub_1DD63F9D8();
  v31 = sub_1DD640368();
  v208 = v27;

  v193 = v22;

  a4 = v31;
  v32 = os_log_type_enabled(v30, v31);
  v198 = v23;
  if (v32)
  {
    v22 = swift_slowAlloc();
    v206 = swift_slowAlloc();
    v221[0] = v206;
    *v22 = 136315394;
    if (v23)
    {
      v222[0] = v191;
      v222[1] = v193;
      swift_bridgeObjectRetain_n();

      MEMORY[0x1E12B2260](64, 0xE100000000000000);
      MEMORY[0x1E12B2260](v190, v23);

      v33 = v222[0];
      v34 = v222[1];
    }

    else
    {
      v34 = v193;

      v33 = v191;
    }

    v35 = sub_1DD39565C(v33, v34, v221);

    *(v22 + 4) = v35;
    *(v22 + 12) = 2080;
    v222[0] = v211;
    v222[1] = v25;
    v222[2] = v210;
    v222[3] = v26;
    v27 = v208;
    v222[4] = v208;

    v36 = sub_1DD63FE38();
    v26 = sub_1DD39565C(v36, v37, v221);

    *(v22 + 14) = v26;
    _os_log_impl(&dword_1DD38D000, v30, a4, "[UCG] Peeking at matches for [%s]: %s", v22, 0x16u);
    v38 = v206;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v38, -1, -1);
    MEMORY[0x1E12B3DA0](v22, -1, -1);
  }

  else
  {

    v27 = v208;
  }

  v39 = 0;
  v40 = 1 << *(v27 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v27 + 56);
  v199 = v27 + 56;
  do
  {
    if (!v42)
    {
      while (1)
      {
        v43 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v43 >= ((v40 + 63) >> 6))
        {
          v189 = 0;
          goto LABEL_20;
        }

        v42 = *(v27 + 56 + 8 * v43);
        ++v39;
        if (v42)
        {
          v39 = v43;
          goto LABEL_17;
        }
      }

LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v43 = v39;
LABEL_17:
    v44 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
  }

  while (*(*(v27 + 48) + 48 * (v44 | (v43 << 6)) + 40) == 2);
  v189 = 1;
LABEL_20:
  swift_bridgeObjectRetain_n();
  v45 = sub_1DD624FE4(v27);
  v46 = v196;
  memcpy(v222, v196, sizeof(v222));
  sub_1DD3C9478(v196, v221);
  sub_1DD40ED6C(v222, v20);
  v47 = *(v20 + 8);
  v48 = v193;

  *v20 = v191;
  *(v20 + 8) = v48;
  v49 = (v20 + *(v201 + 88));
  v50 = v49[1];
  v51 = v198;

  *v49 = v190;
  v49[1] = v51;
  v52 = v207;
  sub_1DD43038C(v207);
  v52[v212[57]] = 1;
  memcpy(v222, v52 + 8, sizeof(v222));
  memcpy(v52 + 8, v46, 0x108uLL);
  sub_1DD3C9478(v46, v221);
  sub_1DD3C9580(v222);
  v26 = 0;
  v53 = 1 << *(v27 + 32);
  v220 = MEMORY[0x1E69E7CD0];
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  else
  {
    v54 = -1;
  }

  v25 = v54 & *(v27 + 56);
  v55 = (v53 + 63) >> 6;
  v206 = v45;
  v194 = v45 + 56;
  v23 = v20;
  v202 = (v197 + 32);
  v185 = xmmword_1DD643F90;
  v209 = v20;
  v200 = v55;
  while (v25)
  {
LABEL_30:
    v58 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v59 = *(v27 + 48) + 48 * (v58 | (v26 << 6));
    v60 = *v59;
    v20 = *(v59 + 8);
    a4 = *(v59 + 16);
    v61 = *(v59 + 24);
    v62 = *(v59 + 32);
    v63 = *(v59 + 40);
    if (v63)
    {
      if (v63 == 1)
      {
        if (!*(*(v23 + 216) + 16))
        {
          v64 = v60;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC48, &qword_1DD664C10);
          v65 = swift_allocObject();
          *(v65 + 16) = v185;
          *(v65 + 64) = 0;
          *(v65 + 72) = 0xE000000000000000;
          *(v65 + 32) = 0;
          *(v65 + 40) = 0xE000000000000000;
          *(v65 + 48) = v64;
          *(v65 + 56) = v20;
          v23 = v209;

          v55 = v200;
          *(v23 + 216) = v65;
          v52 = v207;
        }

        v66 = v212;
        v52[v212[35]] = 1;
        v52[v66[36]] = a4 & 1;
        v52[v66[37]] = (a4 & 2) != 0;
        v52[338] = 1;
      }

      else if ((v189 & 1) == 0)
      {
        v75 = v212;
        *(v23 + *(v201 + 92)) = (v52[v212[53]] & 1) == 0;
        v52[v75[51]] = 1;
        *(v52 + 169) = 0;
        v76 = v206;
        v77 = 1 << *(v206 + 32);
        if (v77 < 64)
        {
          v78 = ~(-1 << v77);
        }

        else
        {
          v78 = -1;
        }

        v23 = v78 & *(v206 + 56);
        v210 = v61;
        v211 = v60;
        v203 = v62;
        v204 = v20;
        v195 = a4;
        sub_1DD57AE38(v60, v20, a4, v61, v62, 2);
        v20 = (v77 + 63) >> 6;

        v27 = 0;
        v79 = MEMORY[0x1E69E7CC0];
        while (v23)
        {
LABEL_48:
          v81 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v82 = *(v76 + 48) + 48 * (v81 | (v27 << 6));
          if (*(v82 + 40) == 2)
          {
            v83 = *(v82 + 24);
            v205 = *(v82 + 16);
            v22 = v83;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v85 = *(v79 + 16);
              sub_1DD3BE2A4();
              v79 = v86;
            }

            a4 = *(v79 + 16);
            if (a4 >= *(v79 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v79 = v87;
            }

            *(v79 + 16) = a4 + 1;
            v84 = v79 + 16 * a4;
            v76 = v206;
            *(v84 + 32) = v205;
            *(v84 + 40) = v22;
          }
        }

        while (1)
        {
          v80 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_157;
          }

          if (v80 >= v20)
          {

            v20 = 0;
            v23 = *(v79 + 16);
            v88 = v79 + 40;
            v205 = MEMORY[0x1E69E7CC0];
            v186 = v79 + 40;
LABEL_55:
            a4 = v88 + 16 * v20;
            while (v23 != v20)
            {
              if (v20 >= *(v79 + 16))
              {
                goto LABEL_158;
              }

              v90 = *(a4 - 8);
              v89 = *a4;

              v27 = v213;
              sub_1DD63D088();

              if (__swift_getEnumTagSinglePayload(v27, 1, v214) != 1)
              {
                v91 = v27;
                v27 = *v202;
                (*v202)(v188, v91, v214);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v94 = *(v205 + 16);
                  sub_1DD3BED30();
                  v205 = v95;
                }

                v92 = *(v205 + 16);
                if (v92 >= *(v205 + 24) >> 1)
                {
                  sub_1DD3BED30();
                  v205 = v96;
                }

                ++v20;
                v93 = v205;
                *(v205 + 16) = v92 + 1;
                (v27)(v93 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v92, v188, v214);
                v88 = v186;
                goto LABEL_55;
              }

              sub_1DD390754(v27, &qword_1ECCDBAC8, &qword_1DD643E60);
              a4 += 16;
              ++v20;
            }

            v52 = v207;
            v97 = &v207[v212[52]];
            sub_1DD607C0C(v205);
            sub_1DD41B1C8(v211, v204, v195, v210, v203, 2);
            v27 = v208;
            v23 = v209;
            goto LABEL_103;
          }

          v23 = *&v194[8 * v80];
          ++v27;
          if (v23)
          {
            v27 = v80;
            goto LABEL_48;
          }
        }
      }
    }

    else
    {
      v210 = v61;
      v211 = v60;
      v67 = v52;
      if (!v198)
      {
        v71 = v62;

        goto LABEL_67;
      }

      if (v62)
      {
        v68 = *(v23 + 48);
        v69 = v61;
        v70 = v23;
        v71 = v62;
        sub_1DD57AE38(v60, v20, a4, v61, v62, 0);

        v70[5] = v69;
        v70[6] = v71;
        v72 = v70[10];

        v70[9] = 0;
        v70[10] = 0xE000000000000000;
        v73 = v70[8];

        v70[7] = 0;
        v70[8] = 0xE000000000000000;
        v74 = v70[16];

        v70[15] = 0;
        v70[16] = 0xE000000000000000;
LABEL_67:
        v22 = v71;
        goto LABEL_69;
      }

      v71 = 0;

      v22 = 0;
LABEL_69:
      v98 = (a4 & 0x20) != 0;
      v52 = v67;
      v67[333] = v98;
      v99 = &v67[v212[33]];
      v99[8] = v98;
      v99[10] = a4 & 1;
      v99[12] = (a4 & 2) != 0;
      v99[11] = (a4 & 4) != 0;
      v99[13] = (a4 & 8) != 0;
      v99[15] = (a4 & 0x10) != 0;

      v204 = v20;
      sub_1DD56CE00(v221, v211, v20);

      v100 = *(v99 + 6);
      *(v99 + 5) = v210;
      *(v99 + 6) = v71;
      v203 = v71;

      v52[338] = 1;
      if ((a4 & 0x40) != 0)
      {
        v52[336] = 1;
        v99[10] = 0;
      }

      v23 = v209;
      if ((a4 & 0x80) != 0)
      {
        v52[335] = 1;
      }

      v101 = v206;
      if (*(v206 + 16))
      {
        v195 = a4;
        v102 = v212;
        *(v23 + *(v201 + 92)) = (v52[v212[53]] & 1) == 0;
        v52[v102[51]] = 1;
        v52[339] = 0;
        v103 = 1 << *(v101 + 32);
        if (v103 < 64)
        {
          v104 = ~(-1 << v103);
        }

        else
        {
          v104 = -1;
        }

        v23 = v104 & *(v101 + 56);
        v20 = (v103 + 63) >> 6;

        v27 = 0;
        v106 = MEMORY[0x1E69E7CC0];
        while (v23)
        {
LABEL_83:
          v108 = __clz(__rbit64(v23));
          v23 &= v23 - 1;
          v109 = *(v105 + 48) + 48 * (v108 | (v27 << 6));
          if (*(v109 + 40) == 2)
          {
            v22 = *(v109 + 16);
            v110 = *(v109 + 24);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v205 = v110;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v114 = *(v106 + 16);
              sub_1DD3BE2A4();
              v106 = v115;
            }

            a4 = *(v106 + 16);
            if (a4 >= *(v106 + 24) >> 1)
            {
              sub_1DD3BE2A4();
              v106 = v116;
            }

            *(v106 + 16) = a4 + 1;
            v112 = v106 + 16 * a4;
            v113 = v205;
            v105 = v206;
            *(v112 + 32) = v22;
            *(v112 + 40) = v113;
          }
        }

        while (1)
        {
          v107 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_154;
          }

          if (v107 >= v20)
          {

            v20 = 0;
            v23 = *(v106 + 16);
            v117 = v106 + 40;
            v205 = MEMORY[0x1E69E7CC0];
            v186 = v106 + 40;
LABEL_90:
            a4 = v117 + 16 * v20;
            while (v23 != v20)
            {
              if (v20 >= *(v106 + 16))
              {
                goto LABEL_156;
              }

              v119 = *(a4 - 8);
              v118 = *a4;

              v27 = i;
              sub_1DD63D088();

              if (__swift_getEnumTagSinglePayload(v27, 1, v214) != 1)
              {
                v120 = v27;
                v27 = *v202;
                (*v202)(v192, v120, v214);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v123 = *(v205 + 16);
                  sub_1DD3BED30();
                  v205 = v124;
                }

                v121 = *(v205 + 16);
                if (v121 >= *(v205 + 24) >> 1)
                {
                  sub_1DD3BED30();
                  v205 = v125;
                }

                ++v20;
                v122 = v205;
                *(v205 + 16) = v121 + 1;
                (v27)(v122 + ((*(v197 + 80) + 32) & ~*(v197 + 80)) + *(v197 + 72) * v121, v192, v214);
                v117 = v186;
                goto LABEL_90;
              }

              sub_1DD390754(v27, &qword_1ECCDBAC8, &qword_1DD643E60);
              a4 += 16;
              ++v20;
            }

            v126 = v212;
            v52 = v207;
            v127 = &v207[v212[52]];
            sub_1DD607C0C(v205);
            sub_1DD41B1C8(v211, v204, v195, v210, v203, 0);
            v52[v126[54]] = 1;
            v23 = v209;
            goto LABEL_102;
          }

          v23 = *&v194[8 * v107];
          ++v27;
          if (v23)
          {
            v27 = v107;
            goto LABEL_83;
          }
        }
      }

      sub_1DD41B1C8(v211, v204, a4, v210, v203, 0);
LABEL_102:
      v27 = v208;
LABEL_103:
      v55 = v200;
    }
  }

  v56 = v199;
  while (1)
  {
    v57 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_153;
    }

    if (v57 >= v55)
    {
      break;
    }

    v25 = *(v199 + 8 * v57);
    ++v26;
    if (v25)
    {
      v26 = v57;
      goto LABEL_30;
    }
  }

  if (!*(v220 + 16))
  {
    goto LABEL_119;
  }

  v27 = v220 + 56;
  v128 = 1 << *(v220 + 32);
  v129 = -1;
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  a4 = v129 & *(v220 + 56);
  v20 = (v128 + 63) >> 6;

  v23 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  for (i = v130; a4; v130 = i)
  {
LABEL_112:
    v132 = (*(v130 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(a4)))));
    v22 = *v132;
    v133 = v132[1];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = *(v26 + 16);
      sub_1DD3BE2A4();
      v26 = v137;
    }

    v134 = *(v26 + 16);
    v25 = v134 + 1;
    if (v134 >= *(v26 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v26 = v138;
    }

    a4 &= a4 - 1;
    *(v26 + 16) = v25;
    v135 = v26 + 16 * v134;
    *(v135 + 32) = v22;
    *(v135 + 40) = v133;
  }

  while (2)
  {
    v131 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_159;
    }

    if (v131 < v20)
    {
      a4 = *(v27 + 8 * v131);
      ++v23;
      if (!a4)
      {
        continue;
      }

      v23 = v131;
      goto LABEL_112;
    }

    break;
  }

  v221[0] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  v139 = sub_1DD63FD58();
  v25 = v140;

  v26 = v207;
  v141 = &v207[v212[33]];
  v142 = *(v141 + 4);

  *(v141 + 3) = v139;
  *(v141 + 4) = v25;
  v52 = v26;
  v27 = v208;
  v23 = v209;
  v56 = v199;
LABEL_119:
  v143 = &v52[v212[33]];
  if (v143[13] != 1 || (v143[9] & 1) != 0 || (v143[10] & 1) != 0 || (v143[11] & 1) != 0 || (v143[12] & 1) != 0)
  {
    v144 = 0;
  }

  else
  {
    v144 = v143[15] ^ 1;
  }

  v145 = 0;
  v143[14] = v144 & 1;
  v146 = 1 << *(v27 + 32);
  v147 = -1;
  if (v146 < 64)
  {
    v147 = ~(-1 << v146);
  }

  v148 = v147 & *(v27 + 56);
  v149 = (v146 + 63) >> 6;
  while (v148)
  {
    v150 = v145;
LABEL_134:
    v151 = __clz(__rbit64(v148));
    v148 &= v148 - 1;
    if (*(*(v27 + 48) + 48 * (v151 | (v150 << 6)) + 40) == 1)
    {
      v152 = v23;

      v153 = v187;
      goto LABEL_143;
    }
  }

  while (1)
  {
    v150 = v145 + 1;
    if (__OFADD__(v145, 1))
    {
      goto LABEL_155;
    }

    if (v150 >= v149)
    {
      break;
    }

    v148 = *(v56 + 8 * v150);
    ++v145;
    if (v148)
    {
      v145 = v150;
      goto LABEL_134;
    }
  }

  v152 = v23;
  v154 = v52;

  v155 = v196;
  memcpy(v221, v196, 0x108uLL);
  if (sub_1DD41E198())
  {
    v153 = v187;
LABEL_138:
    v52 = v154;
    goto LABEL_143;
  }

  v156 = v155[20];
  v153 = v187;
  if ((v156 & 0x2000000000000000) != 0)
  {
    v157 = HIBYTE(v156) & 0xF;
  }

  else
  {
    v157 = v155[19] & 0xFFFFFFFFFFFFLL;
  }

  v52 = v154;
  if (!v157)
  {
    v160 = *(v196 + 23);
    if (v160)
    {
      v161 = v196;
      v162 = *(v196 + 22);
      memcpy(v221, v154 + 8, 0x108uLL);
      sub_1DD3C9580(v221);
      *(v154 + 1) = 0;
      *(v154 + 2) = 0xE000000000000000;
      v154[24] = 0;
      *(v154 + 6) = 0;
      *(v154 + 7) = 0xE000000000000000;
      *(v154 + 8) = 0;
      *(v154 + 9) = 0xE000000000000000;
      *(v154 + 10) = 0;
      *(v154 + 11) = 0xE000000000000000;
      *(v154 + 12) = 0;
      *(v154 + 13) = 0xE000000000000000;
      *(v154 + 14) = 0;
      *(v154 + 15) = 0xE000000000000000;
      *(v154 + 16) = 0;
      *(v154 + 17) = 0xE000000000000000;
      *(v154 + 18) = 0;
      *(v154 + 19) = 0xE000000000000000;
      *(v154 + 20) = 0;
      *(v154 + 21) = 0xE000000000000000;
      *(v154 + 13) = 0u;
      *(v154 + 14) = 0u;
      *(v154 + 11) = 0u;
      *(v154 + 12) = 0u;
      *(v154 + 30) = 0;
      *(v154 + 31) = MEMORY[0x1E69E7CC0];
      v154[256] = 1;
      *(v154 + 33) = 0;
      *(v154 + 4) = v162;
      *(v154 + 5) = v160;

      v154[336] = 0;
      v163 = v161[13];
      v223[0] = v161[12];
      v223[1] = v163;
      v224 = v161[14];
      v164 = v224;
      v165 = *(v154 + 25);
      v166 = *(v154 + 26);
      v167 = *(v154 + 27);
      v168 = *(v154 + 28);
      v169 = *(v154 + 29);
      v170 = *(v154 + 30);
      *(v154 + 200) = v223[0];
      *(v154 + 216) = v163;
      *(v154 + 232) = v164;
      sub_1DD3EB3D0(v223, v218, &qword_1ECCDFED8, &unk_1DD664B90);
      v171 = v166;
      v172 = v193;
      sub_1DD3FAA54(v165, v171, v167);

      v173 = v198;

      v174 = sub_1DD63F9D8();
      v175 = sub_1DD640368();

      if (!os_log_type_enabled(v174, v175))
      {

        v152 = v209;
        goto LABEL_138;
      }

      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v219 = v177;
      *v176 = 136315394;
      if (v173)
      {
        v218[0] = v191;
        v218[1] = v172;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1E12B2260](64, 0xE100000000000000);
        MEMORY[0x1E12B2260](v190, v173);

        v178 = v218[0];
        v172 = v218[1];
      }

      else
      {

        v178 = v191;
      }

      v179 = sub_1DD39565C(v178, v172, &v219);

      *(v176 + 4) = v179;
      *(v176 + 12) = 2080;
      swift_beginAccess();
      memcpy(v217, v154 + 8, sizeof(v217));
      memcpy(v216, v154 + 8, sizeof(v216));
      sub_1DD3C9478(v217, v218);
      v180 = ContactQuery.description.getter();
      v182 = v181;
      memcpy(v218, v216, sizeof(v218));
      sub_1DD3C9580(v218);
      v183 = sub_1DD39565C(v180, v182, &v219);

      *(v176 + 14) = v183;
      _os_log_impl(&dword_1DD38D000, v174, v175, "[UCG] Note: we've re-written the originalQuery of the signals for %s to be a name query instead of a relationship one: %s", v176, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v177, -1, -1);
      MEMORY[0x1E12B3DA0](v176, -1, -1);

      v52 = v154;
      v152 = v209;
    }
  }

LABEL_143:
  sub_1DD6271B8(v152, v153);
  swift_beginAccess();
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD6271B8(v52, v153 + *(v158 + 36));
  sub_1DD627210(v52, type metadata accessor for ContactResolver.SignalSet);
  return sub_1DD627210(v152, type metadata accessor for Contact);
}

uint64_t sub_1DD60DD28(char a1)
{
  if (!a1)
  {
    return 0x737961776C61;
  }

  if (a1 == 1)
  {
    return 0x6E49646E61436F6ELL;
  }

  return 1701736302;
}

uint64_t sub_1DD60DDA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DD607064();
  *a2 = result;
  return result;
}

uint64_t sub_1DD60DDD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DD60DD28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void static ContactRecall.search(config:locale:stringQuery:)()
{
  OUTLINED_FUNCTION_93();
  v60 = v2;
  v61 = v3;
  v55 = v4;
  v100 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_6_2();
  v10 = sub_1DD63D168();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_82_3();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_123_0();
  v17 = type metadata accessor for StringTokenizer();
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v56 = v21;
  v22 = OUTLINED_FUNCTION_6_2();
  v23 = type metadata accessor for ContactResolverConfig(v22);
  v24 = OUTLINED_FUNCTION_3(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  [v30 setUseOutOfProcessMapperExclusively_];
  v59 = v30;
  v31 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  v98[3] = sub_1DD39638C(0, &qword_1EE1638B8, 0x1E695CE18);
  v98[4] = &off_1F58B1EB8;
  v98[0] = v31;
  v58 = sub_1DD60E488(0x64726143654DLL, 0xE600000000000000, sub_1DD60E90C);
  v32 = sub_1DD60E67C();
  v33 = [objc_opt_self() indexMatcher];
  v97[3] = sub_1DD39638C(0, &qword_1ECCDCFC0, 0x1E69CE410);
  v97[4] = &off_1F58C0818;
  v97[0] = v33;
  OUTLINED_FUNCTION_33_18();
  sub_1DD6271B8(v100, v29);
  v34 = *(v13 + 16);
  v34(v0, v55, v10);
  v34(v1, v0, v10);
  v35 = 1;
  if ((sub_1DD4F9BB8() & 1) == 0)
  {
    v87[0] = sub_1DD63D118();
    v87[1] = v36;
    v62 = 24938;
    v63 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v35 = sub_1DD63FD48();
  }

  v37 = v35 & 1;
  v38 = v56;
  sub_1DD5E8D74(v1, v37, v56);
  (*(v13 + 8))(v0, v10);
  v95 = type metadata accessor for UCGStringTokenizer(0);
  v96 = &off_1F58C4140;
  __swift_allocate_boxed_opaque_existential_1(v94);
  v39 = OUTLINED_FUNCTION_8_75();
  sub_1DD627288(v39, v40);
  sub_1DD3C2388(v98, v93);
  memset(v91, 0, sizeof(v91));
  v92 = xmmword_1DD644510;
  v90 = 0;
  memset(v89, 0, sizeof(v89));
  if (v32)
  {
    v41 = type metadata accessor for RelationshipLocalizer();
    v42 = &off_1F58C4130;
  }

  else
  {
    v41 = 0;
    v42 = 0;
    v88[2] = 0;
    v88[1] = 0;
  }

  v88[0] = v32;
  v88[3] = v41;
  v88[4] = v42;
  type metadata accessor for UnifiedContactGenerator(0);
  OUTLINED_FUNCTION_14();
  type metadata accessor for AsrPhoneticSequenceFetcher();
  memset(v99, 0, 57);
  OUTLINED_FUNCTION_89_2();
  OUTLINED_FUNCTION_65_0();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
  v47 = v95;
  v48 = v96;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v50 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  (*(v51 + 16))(v10);
  v57 = v58;

  *&v54 = v91;
  *(&v54 + 1) = v89;
  v52 = MEMORY[0x1E69E7CC0];
  sub_1DD62652C(v97, MEMORY[0x1E69E7CC0], v29, 0, v10, v99, v93, v58, v54, v88, 0, 0, 2, 0, v0, v38, v47, v48);
  __swift_destroy_boxed_opaque_existential_1(v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
  *(swift_allocObject() + 16) = xmmword_1DD643F90;
  v87[0] = 0;
  v87[1] = 0xE000000000000000;
  LOBYTE(v87[2]) = 0;
  v87[3] = v60;
  v87[4] = v61;
  v87[5] = 0;
  v87[6] = 0xE000000000000000;
  v87[7] = 0;
  v87[8] = 0xE000000000000000;
  v87[9] = 0;
  v87[10] = 0xE000000000000000;
  v87[11] = 0;
  v87[12] = 0xE000000000000000;
  v87[13] = 0;
  v87[14] = 0xE000000000000000;
  v87[15] = 0;
  v87[16] = 0xE000000000000000;
  v87[17] = 0;
  v87[18] = 0xE000000000000000;
  v87[19] = 0;
  v87[20] = 0xE000000000000000;
  OUTLINED_FUNCTION_86_3(v87);
  v87[29] = 0;
  v87[30] = v52;
  LOBYTE(v87[31]) = 1;
  v87[32] = 0;
  memcpy((v53 + 32), v87, 0x108uLL);

  sub_1DD3C9478(v87, &v62);
  sub_1DD60FB88();

  swift_setDeallocating();
  sub_1DD46CBB4();
  v62 = 0;
  v63 = 0xE000000000000000;
  v64 = 0;
  v65 = v60;
  v66 = v61;
  v67 = 0;
  v68 = 0xE000000000000000;
  v69 = 0;
  v70 = 0xE000000000000000;
  v71 = 0;
  v72 = 0xE000000000000000;
  v73 = 0;
  v74 = 0xE000000000000000;
  v75 = 0;
  v76 = 0xE000000000000000;
  v77 = 0;
  v78 = 0xE000000000000000;
  v79 = 0;
  v80 = 0xE000000000000000;
  v81 = 0;
  v82 = 0xE000000000000000;
  OUTLINED_FUNCTION_86_3(&v62);
  v83 = 0;
  v84 = MEMORY[0x1E69E7CC0];
  v85 = 1;
  v86 = 0;
  sub_1DD3C9580(&v62);
  __swift_destroy_boxed_opaque_existential_1(v98);
  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD60E868@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if (qword_1EE1660F0 != -1)
  {
    swift_once();
  }

  result = (*(v5 + 16))(qword_1EE16F080, v4, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DD60E968@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - v5);
  v7 = sub_1DD63CE68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - v13;
  if (qword_1EE1659B8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_1EE16F038);
  sub_1DD3EB3D0(v15, v6, &qword_1ECCDCCA0, &qword_1DD64AED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    (*(v8 + 16))(v11, v14, v7);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1DD608CD0(v11, sub_1DD582430);
    if (v1)
    {
      return (*(v8 + 8))(v14, v7);
    }

    else
    {
      (*(v8 + 8))(v14, v7);
      sub_1DD58244C(&v25);

      v20 = v25;
      if (v25)
      {
        type metadata accessor for RelationshipLocalizer();
        v21 = swift_allocObject();
        v22 = *(v17 + 48);
        v23 = *(v17 + 52);
        swift_allocObject();
        result = sub_1DD608E98(v20);
        *(v21 + 16) = result;
      }

      else
      {
        v21 = 0;
      }

      *a1 = v21;
    }
  }

  return result;
}

uint64_t sub_1DD60EC70()
{
  v1 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping;
  if (*(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping);
  }

  else
  {
    v2 = sub_1DD60ECD8(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DD60ECD8(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v4 = *MEMORY[0x1E695C3A8];
    v5 = v2;
    v6 = [v5 contactRelations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
    v7 = sub_1DD640118();

    v13 = MEMORY[0x1E69E7CC8];
    v8 = sub_1DD3CC020(v7);
    for (i = 0; ; ++i)
    {
      if (v8 == i)
      {

        return v13;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1E12B2C10](i, v7);
      }

      else
      {
        if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v10 = *(v7 + 8 * i + 32);
      }

      v1 = v10;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v12 = v10;
      sub_1DD60EEA4(&v13, &v12, a1);
    }

    __break(1u);
LABEL_15:
    __break(1u);

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);

    return sub_1DD63FC88();
  }

  return result;
}

id sub_1DD60EEA4(uint64_t *a1, id *a2, uint64_t a3)
{
  v76 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v7 = *(*(v6 - 8) + 64);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v10 = v70 - v9;
  v11 = *a2;
  result = [*a2 label];
  if (!result)
  {
    return result;
  }

  v13 = result;
  v14 = sub_1DD63FDD8();
  v16 = v15;

  v17 = [v11 value];
  v18 = [v17 name];

  v19 = sub_1DD63FDD8();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
  }

  v70[2] = v3;
  v74 = v14;
  v75 = v16;
  v23 = a3 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config;
  v24 = *(type metadata accessor for ContactResolverConfig(0) + 32);
  v25 = sub_1DD63D168();
  (*(*(v25 - 8) + 16))(v10, v23 + v24, v25);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v25);
  sub_1DD3B7F10();
  v26 = sub_1DD640648();
  v72 = v27;
  v73 = v26;
  sub_1DD390754(v10, &qword_1ECCDC3F0, &unk_1DD64AF50);
  v28 = [v11 value];
  v29 = [v28 name];

  v30 = sub_1DD63FDD8();
  v71 = v31;

  v32 = v76;
  v33 = *v76;
  swift_isUniquelyReferenced_nonNull_native();
  v74 = *v32;
  v34 = v74;
  v35 = sub_1DD3978DC();
  if (__OFADD__(*(v34 + 16), (v36 & 1) == 0))
  {
    __break(1u);
    goto LABEL_30;
  }

  v37 = v35;
  v38 = v36;
  v70[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC310, &qword_1DD646158);
  if (sub_1DD640A08())
  {
    v39 = sub_1DD3978DC();
    v41 = &selRef_setUnderlyingQueue_;
    if ((v38 & 1) != (v40 & 1))
    {
      goto LABEL_31;
    }

    v37 = v39;
  }

  else
  {
    v41 = &selRef_setUnderlyingQueue_;
  }

  v42 = v74;
  *v76 = v74;
  if ((v38 & 1) == 0)
  {
    sub_1DD400884(v37, v14, v16, MEMORY[0x1E69E7CC0], v42);
  }

  v43 = *(v42 + 56) + 8 * v37;
  sub_1DD3BDF34();
  v44 = *(*v43 + 16);
  sub_1DD3BE0F8(v44);
  v45 = *v43;
  *(v45 + 16) = v44 + 1;
  v46 = v45 + 16 * v44;
  v47 = v71;
  v48 = v72;
  *(v46 + 32) = v30;
  *(v46 + 40) = v47;
  if (v14 == v73 && v16 == v48)
  {
  }

  v50 = sub_1DD640CD8();

  if (v50)
  {
  }

  v51 = [v11 v41[24]];
  v52 = [v51 name];

  v53 = sub_1DD63FDD8();
  v55 = v54;

  v56 = v76;
  v57 = *v76;
  swift_isUniquelyReferenced_nonNull_native();
  v58 = *v56;
  v74 = v58;
  v59 = sub_1DD3978DC();
  v61 = v60;
  if (__OFADD__(*(v58 + 16), (v60 & 1) == 0))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62 = v59;
  if (sub_1DD640A08())
  {
    v63 = sub_1DD3978DC();
    if ((v61 & 1) == (v64 & 1))
    {
      v62 = v63;
      goto LABEL_24;
    }

LABEL_31:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

LABEL_24:
  v65 = v74;
  *v76 = v74;
  if (v61)
  {
  }

  else
  {
    sub_1DD400884(v62, v73, v48, MEMORY[0x1E69E7CC0], v65);
  }

  v66 = *(v65 + 56) + 8 * v62;
  sub_1DD3BDF34();
  v67 = *(*v66 + 16);
  result = sub_1DD3BE0F8(v67);
  v68 = *v66;
  *(v68 + 16) = v67 + 1;
  v69 = v68 + 16 * v67;
  *(v69 + 32) = v53;
  *(v69 + 40) = v55;
  return result;
}

void sub_1DD60F388()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v104 = type metadata accessor for AsrPhoneticSequenceFetcher();
  v6 = OUTLINED_FUNCTION_7(v104);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v101 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_2(v14);
  v105 = sub_1DD63D168();
  v15 = OUTLINED_FUNCTION_0(v105);
  v106 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v100 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_0();
  v95 = v21;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94 - v23;
  v25 = type metadata accessor for StringTokenizer();
  v26 = OUTLINED_FUNCTION_3(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v29);
  v30 = type metadata accessor for ContactResolverCache();
  v31 = OUTLINED_FUNCTION_7(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2();
  v36 = v35 - v34;
  v37 = type metadata accessor for ContactResolverConfig(0);
  v38 = v37 - 8;
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2();
  v42 = (v41 - v40);
  v99 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator) = 0;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping) = 0;
  v43 = [objc_opt_self() indexMatcher];
  v1[5] = sub_1DD39638C(0, &qword_1ECCDCFC0, 0x1E69CE410);
  v1[6] = &off_1F58C0818;
  v1[2] = v43;
  sub_1DD3C2388(v5 + v30[8], (v1 + 7));
  sub_1DD6271B8(v3, v42);
  sub_1DD6271B8(v5, v36);
  v1[12] = sub_1DD3FB504(v42, v36);
  v44 = *(v5 + v30[11]);
  v1[13] = v44;
  sub_1DD6271B8(v3, v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config);
  sub_1DD3FA84C(v5 + v30[25], v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler);
  v45 = v5 + v30[29];
  v46 = *v45;
  LOBYTE(v45) = v45[1];
  v47 = v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_ucgTrialFactors;
  *v47 = v46;
  v47[1] = v45;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors) = *(v5 + v30[26]);
  v48 = (v5 + v30[27]);
  v49 = v48[1];
  v112[0] = *v48;
  v112[1] = v49;
  v51 = *v48;
  v50 = v48[1];
  *v113 = v48[2];
  *&v113[9] = *(v48 + 41);
  v52 = (v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors);
  *v52 = v51;
  v52[1] = v50;
  v52[2] = v48[2];
  *(v52 + 41) = *(v48 + 41);
  v53 = *(v38 + 40);
  v54 = v106 + 16;
  v55 = *(v106 + 16);
  v103 = v3;
  v55(v24, v3 + v53, v105);
  v56 = v95;
  v98 = v54;
  v97 = v55;
  (v55)();
  v57 = v44;
  sub_1DD3FAD78(v112, &v109);
  if (sub_1DD4F9BB8())
  {
    v58 = 1;
  }

  else
  {
    *&v109 = sub_1DD63D118();
    *(&v109 + 1) = v59;
    v107 = 24938;
    v108 = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v58 = sub_1DD63FD48();
  }

  sub_1DD5E8D74(v56, v58 & 1, v96);
  v61 = v106 + 8;
  v60 = *(v106 + 8);
  v62 = OUTLINED_FUNCTION_73();
  v106 = v61;
  v60(v62);
  v110 = type metadata accessor for UCGStringTokenizer(0);
  v111 = &off_1F58C4140;
  __swift_allocate_boxed_opaque_existential_1(&v109);
  v63 = OUTLINED_FUNCTION_8_75();
  sub_1DD627288(v63, v64);
  sub_1DD3AA4A8(&v109, v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
  sub_1DD3EB3D0(v5 + v30[30], v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  if (*v5)
  {
    sub_1DD58244C(&v109);
    v65 = v99;
    if (v109)
    {
      v66 = type metadata accessor for RelationshipLocalizer();
      OUTLINED_FUNCTION_57();
      v68 = swift_allocObject();
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
      v70 = *(v69 + 48);
      v71 = *(v69 + 52);
      swift_allocObject();

      *(v68 + 16) = sub_1DD608E98(v72);

      v67 = &off_1F58C4130;
    }

    else
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
    }
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v65 = v99;
  }

  v73 = (v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer);
  *v73 = v68;
  v73[1] = 0;
  v73[2] = 0;
  v73[3] = v66;
  v73[4] = v67;
  v74 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi) = *(v5 + v30[22]);
  v75 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi;
  *(v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi) = *(v5 + v30[21]);
  v76 = *(v1 + v65);
  *(v1 + v65) = 0;

  if (*v52 == 1)
  {
    v77 = *(v1 + v74);
    if (v77 && (v78 = *(v1 + v75)) != 0)
    {
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v79 = swift_allocObject();
      *(v79 + 16) = v77;
      *(v79 + 24) = v78;
      v80 = *(v1 + v65);
      *(v1 + v65) = v79;
    }

    else
    {
      type metadata accessor for EuclidVectorDb();
      OUTLINED_FUNCTION_18_9();
      swift_allocObject();
      v81 = sub_1DD4B97D4();
      type metadata accessor for EuclidEmbeddingApi();
      OUTLINED_FUNCTION_57();
      v82 = swift_allocObject();
      sub_1DD4BA174();
      OUTLINED_FUNCTION_14();
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v83 = swift_allocObject();
      *(v83 + 16) = v81;
      *(v83 + 24) = v82;
      v84 = *(v1 + v65);
      *(v1 + v65) = v83;
    }
  }

  v85 = v100;
  v86 = v105;
  v87 = v97;
  v97(v100, v5 + v30[18], v105);
  v88 = v101;
  v87(v101, v85, v86);
  sub_1DD63F488();
  v89 = sub_1DD63F468();
  if (v89)
  {
    sub_1DD63F448();

    v89 = sub_1DD63F748();
  }

  v90 = OUTLINED_FUNCTION_73();
  v60(v90);
  v91 = v104;
  *(v88 + *(v104 + 20)) = v89;
  OUTLINED_FUNCTION_34_19();
  v92 = v102;
  sub_1DD627288(v88, v102);
  OUTLINED_FUNCTION_13_50();
  sub_1DD627210(v103, v93);
  sub_1DD627210(v5, type metadata accessor for ContactResolverCache);
  __swift_storeEnumTagSinglePayload(v92, 0, 1, v91);
  sub_1DD3EB4B8(v92, v1 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_17();
}

void sub_1DD60FB88()
{
  OUTLINED_FUNCTION_93();
  v214 = v4;
  v198 = v5;
  v199 = v0;
  v6 = sub_1DD63D168();
  v7 = OUTLINED_FUNCTION_0(v6);
  v193 = v8;
  v194 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v191 = v11;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16_3();
  v188 = v13;
  OUTLINED_FUNCTION_6_2();
  v186 = type metadata accessor for StringTokenizer();
  v14 = OUTLINED_FUNCTION_7(v186);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v187 = v17;
  v18 = OUTLINED_FUNCTION_6_2();
  v185 = type metadata accessor for ContactResolverConfig(v18);
  v19 = OUTLINED_FUNCTION_7(v185);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v192 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB80, &qword_1DD64A0E0);
  OUTLINED_FUNCTION_3(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_7_3();
  v196 = v27;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v28 = OUTLINED_FUNCTION_0(v205);
  v210 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v200 = v32;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_0();
  v195 = v34;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_18_0();
  v204 = v36;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_18_0();
  v207 = v38;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_16_3();
  v206 = v40;
  OUTLINED_FUNCTION_6_2();
  v41 = type metadata accessor for Signpost();
  v42 = OUTLINED_FUNCTION_7(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  if (qword_1EE166460 != -1)
  {
LABEL_75:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v45 = qword_1EE16F0C0;
  v46 = v1 + v41[5];
  *v46 = "UCG.GenerateCandidateGroups";
  *(v46 + 1) = 27;
  v46[16] = 2;
  v47 = v45;
  sub_1DD63F9B8();
  *(v1 + v41[6]) = v47;
  v48 = v47;
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1DD643F90;
  sub_1DD6408F8();
  OUTLINED_FUNCTION_95_1();
  *(v49 + 56) = MEMORY[0x1E69E6158];
  *(v49 + 64) = sub_1DD392BD8();
  *(v49 + 32) = v2;
  *(v49 + 40) = v3;
  OUTLINED_FUNCTION_22();
  v189 = v48;
  v190 = v1;
  OUTLINED_FUNCTION_70_3();
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v50 = sub_1DD63F9F8();
  v51 = __swift_project_value_buffer(v50, qword_1EE16F068);
  v52 = v214;

  v197 = v51;
  v53 = sub_1DD63F9D8();
  sub_1DD640368();
  v54 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_18_1();
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = v52[2];

    OUTLINED_FUNCTION_78_3();
    _os_log_impl(v57, v58, v59, v60, v61, v62);
    v63 = OUTLINED_FUNCTION_12_49();
    MEMORY[0x1E12B3DA0](v63);
  }

  else
  {
  }

  v41 = &unk_1DD664BF0;
  sub_1DD3EB3D0(v199 + 56, v217, &qword_1ECCDCF48, &unk_1DD664BF0);
  v64 = *(&v217[1] + 1);
  sub_1DD390754(v217, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (!v64)
  {
    v65 = sub_1DD63F9D8();
    v41 = sub_1DD640368();
    v66 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v66, v67))
    {
      OUTLINED_FUNCTION_28();
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1DD38D000, v65, v41, "[UCG] Warning: ContactStore is nil, will not be able to hydrate matches", v68, 2u);
      v69 = OUTLINED_FUNCTION_12_49();
      MEMORY[0x1E12B3DA0](v69);
    }
  }

  v70 = v52[2];
  v71 = MEMORY[0x1E69E7CC0];
  if (v70)
  {
    v219 = MEMORY[0x1E69E7CC0];
    v72 = OUTLINED_FUNCTION_60_7();
    sub_1DD42B404(v72, v70, 0);
    v73 = 0;
    v71 = v219;
    v74 = v52 + 4;
    v75 = v206;
    while (1)
    {
      v76 = v71;
      OUTLINED_FUNCTION_133(v218);
      OUTLINED_FUNCTION_133(v217 + 8);
      *&v217[0] = v73;
      sub_1DD3C9478(v218, v216);
      v77 = v215;
      v78 = sub_1DD610AE8(v73, v217 + 8, v198, v199);
      v215 = v77;
      if (v77)
      {
        break;
      }

      v79 = v78;
      memcpy(v216, v217, sizeof(v216));
      sub_1DD390754(v216, &qword_1ECCDFF40, &qword_1DD664C58);
      v71 = v76;
      v220 = v76;
      v81 = *(v76 + 16);
      v80 = *(v76 + 24);
      v41 = (v81 + 1);
      if (v81 >= v80 >> 1)
      {
        v82 = OUTLINED_FUNCTION_1_0(v80);
        sub_1DD42B404(v82, v81 + 1, 1);
        v75 = v206;
        v71 = v220;
      }

      ++v73;
      *(v71 + 16) = v41;
      *(v71 + 8 * v81 + 32) = v79;
      v74 += 33;
      if (v70 == v73)
      {
        goto LABEL_19;
      }
    }

    memcpy(v216, v217, sizeof(v216));
    sub_1DD390754(v216, &qword_1ECCDFF40, &qword_1DD664C58);

    sub_1DD6404C8();
    v163 = v190;
    OUTLINED_FUNCTION_70_3();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v163, v164);
  }

  else
  {
    v75 = v206;
LABEL_19:
    v83 = 0;
    v203 = *(v71 + 16);
    v2 = MEMORY[0x1E69E7CC0];
    v201 = v71;
    v202 = v71 + 32;
    v1 = &qword_1ECCDBBE8;
    v3 = &qword_1DD644470;
    v213 = MEMORY[0x1E69E7CC0];
    while (v83 != v203)
    {
      if (v83 >= *(v71 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v84 = *(v202 + 8 * v83);
      *&v208 = v83 + 1;
      v212 = *(v84 + 16);

      v85 = 0;
      v209 = MEMORY[0x1E69E7CC0];
      v211 = v84;
      while (v212 != v85)
      {
        if (v85 >= *(v84 + 16))
        {
          __break(1u);
          goto LABEL_63;
        }

        v86 = (*(v210 + 80) + 32) & ~*(v210 + 80);
        v87 = *(v210 + 72);
        v88 = sub_1DD3EB3D0(v84 + v86 + v87 * v85, v75, &qword_1ECCDBBE8, &qword_1DD644470);
        v214 = &v184;
        MEMORY[0x1EEE9AC00](v88);

        v89 = v215;
        v2 = sub_1DD450800();
        v215 = v89;

        if (v2)
        {
          sub_1DD390754(v75, &qword_1ECCDBBE8, &qword_1DD644470);
          ++v85;
          v84 = v211;
        }

        else
        {
          sub_1DD3EB4B8(v75, v207, &qword_1ECCDBBE8, &qword_1DD644470);
          v2 = v209;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v217[0] = v2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v91 = *(v2 + 16);
            OUTLINED_FUNCTION_26_2();
            sub_1DD42B4F8();
            v75 = v206;
            v2 = *&v217[0];
          }

          v84 = v211;
          v93 = *(v2 + 16);
          v92 = *(v2 + 24);
          v94 = v93 + 1;
          if (v93 >= v92 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v92);
            v96 = v95;
            v214 = v97;
            sub_1DD42B4F8();
            v94 = v96;
            v93 = v214;
            v75 = v206;
            v2 = *&v217[0];
          }

          ++v85;
          *(v2 + 16) = v94;
          v209 = v2;
          sub_1DD3EB4B8(v207, v2 + v86 + v93 * v87, &qword_1ECCDBBE8, &qword_1DD644470);
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = *(v213 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD3BF6DC();
        v213 = v102;
      }

      v41 = v209;
      v99 = *(v213 + 16);
      v98 = *(v213 + 24);
      if (v99 >= v98 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v98);
        OUTLINED_FUNCTION_90();
        sub_1DD3BF6DC();
        v213 = v103;
      }

      v100 = v213;
      *(v213 + 16) = v99 + 1;
      *(v100 + 8 * v99 + 32) = v41;
      v75 = v206;
      v71 = v201;
      v83 = v208;
    }

    v3 = sub_1DD3FC100(v213, *(v199 + 96));

    v104 = 0;
    v105 = v3[2];
    v106 = MEMORY[0x1E69E7CC0];
    while (v105 != v104)
    {
      if (v104 >= v3[2])
      {
        goto LABEL_70;
      }

      v107 = &v3[v104];
      v41 = v107[4];
      v108 = *(v41 + 2);
      v1 = *(v106 + 16);
      v2 = v1 + v108;
      if (__OFADD__(v1, v108))
      {
        goto LABEL_71;
      }

      v109 = v107[4];

      if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v106 + 24) >> 1)
      {
        sub_1DD3BEC44();
        v106 = v110;
      }

      if (*(v41 + 2))
      {
        v111 = *(v106 + 16);
        v112 = *(v106 + 24);
        OUTLINED_FUNCTION_51_10();
        if (v114 < v108)
        {
          goto LABEL_73;
        }

        OUTLINED_FUNCTION_72_3(v113);
        swift_arrayInitWithCopy();

        if (v108)
        {
          v115 = *(v106 + 16);
          v116 = __OFADD__(v115, v108);
          v117 = v115 + v108;
          if (v116)
          {
            goto LABEL_74;
          }

          *(v106 + 16) = v117;
        }
      }

      else
      {

        if (v108)
        {
          goto LABEL_72;
        }
      }

      ++v104;
    }

    v118 = *(v106 + 16);
    if (v118)
    {
      v206 = v106;
      v207 = v3;
      OUTLINED_FUNCTION_18_3();
      v120 = v106 + v119;
      v212 = *(v121 + 72);
      v209 = (v200 + 368);
      v122 = &qword_1ECCDBBE8;
      v123 = &qword_1DD644470;
      *&v124 = 136315650;
      v208 = v124;
      v125 = v204;
      do
      {
        v214 = v120;
        v126 = v122;
        v127 = v123;
        sub_1DD3EB3D0(v120, v125, v122, v123);
        v128 = v125 + *(v205 + 36);
        v129 = *(type metadata accessor for ContactResolver.SignalSet(0) + 120);
        v130 = v196;
        OUTLINED_FUNCTION_22_19();
        sub_1DD3EB3D0(v131, v132, v133, v134);
        sub_1DD63F148();
        v135 = OUTLINED_FUNCTION_115_0();
        if (__swift_getEnumTagSinglePayload(v135, 1, v105) == 1)
        {
          OUTLINED_FUNCTION_28_2();
          sub_1DD390754(v136, v137, v138);
          v139 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v139 = sub_1DD63F0E8();
          (*(*(v105 - 8) + 8))(v130, v105);
        }

        v140 = v195;
        v141 = v204;
        v142 = OUTLINED_FUNCTION_96_1();
        sub_1DD3EB3D0(v142, v143, v126, v127);
        v105 = v200;
        sub_1DD3EB3D0(v141, v200, v126, v127);

        v144 = sub_1DD63F9D8();
        LODWORD(v141) = sub_1DD640368();

        LODWORD(v213) = v141;
        v145 = v141;
        v146 = v144;
        if (os_log_type_enabled(v144, v145))
        {
          OUTLINED_FUNCTION_17_0();
          v105 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_6();
          v210 = swift_slowAlloc();
          v211 = v118;
          *&v217[0] = v210;
          *v105 = v208;
          v147 = v127;
          v149 = *v140;
          v148 = v140[1];

          sub_1DD390754(v140, v126, v147);
          v150 = sub_1DD39565C(v149, v148, v217);

          *(v105 + 4) = v150;
          *(v105 + 12) = 2048;
          v151 = *(v209 + *(v205 + 36));
          sub_1DD390754(v200, v126, v147);
          *(v105 + 14) = v151;
          *(v105 + 22) = 2080;
          v152 = MEMORY[0x1E12B2430](v139, MEMORY[0x1E69E7290]);
          v154 = v153;

          v155 = v152;
          v118 = v211;
          v156 = sub_1DD39565C(v155, v154, v217);

          *(v105 + 24) = v156;
          _os_log_impl(&dword_1DD38D000, v146, v213, "[UCG] History for candidate [%s]: recencyRank=%ld history=%s", v105, 0x20u);
          swift_arrayDestroy();
          v157 = OUTLINED_FUNCTION_8_6();
          MEMORY[0x1E12B3DA0](v157);
          v158 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v158);

          v125 = v204;
          v159 = OUTLINED_FUNCTION_19();
          sub_1DD390754(v159, v160, &qword_1DD644470);
          v122 = v126;
          v123 = &qword_1DD644470;
        }

        else
        {
          sub_1DD390754(v105, v126, v127);

          sub_1DD390754(v140, v126, v127);
          v125 = v204;
          v161 = OUTLINED_FUNCTION_19();
          sub_1DD390754(v161, v162, v127);
          v122 = v126;
          v123 = v127;
        }

        v120 = v214 + v212;
        --v118;
      }

      while (v118);

      v3 = v207;
    }

    else
    {
LABEL_63:
    }

    OUTLINED_FUNCTION_33_18();
    v165 = v198;
    sub_1DD6271B8(v198, v192);
    v166 = *(v193 + 16);
    v167 = v165 + *(v185 + 32);
    v168 = v188;
    v169 = v194;
    v166(v188, v167, v194);
    v166(v191, v168, v169);
    if (sub_1DD4F9BB8())
    {
      v170 = 1;
    }

    else
    {
      *&v217[0] = sub_1DD63D118();
      *(&v217[0] + 1) = v171;
      v216[0] = 24938;
      v216[1] = 0xE200000000000000;
      sub_1DD3B52B8();
      sub_1DD3B530C();
      v170 = sub_1DD63FD48();
    }

    sub_1DD5E8D74(v191, v170 & 1, v187);
    (*(v193 + 8))(v168, v194);
    *(&v217[1] + 1) = v186;
    *&v217[2] = &off_1F58C2FE8;
    __swift_allocate_boxed_opaque_existential_1(v217);
    v172 = OUTLINED_FUNCTION_8_75();
    sub_1DD627288(v172, v173);
    v174 = type metadata accessor for CandidateContactDeduplicator();
    v175 = *(v174 + 48);
    v176 = *(v174 + 52);
    v177 = swift_allocObject();
    sub_1DD627288(v192, v177 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config);
    sub_1DD3AA4A8(v217, v177 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer);
    sub_1DD3E831C(v3);
    OUTLINED_FUNCTION_124();

    swift_setDeallocating();
    OUTLINED_FUNCTION_13_50();
    sub_1DD627210(v177 + v178, v179);
    __swift_destroy_boxed_opaque_existential_1((v177 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer));
    v180 = *(*v177 + 48);
    v181 = *(*v177 + 52);
    swift_deallocClassInstance();
    sub_1DD6404C8();
    v182 = v190;
    OUTLINED_FUNCTION_70_3();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v182, v183);
  }

  OUTLINED_FUNCTION_86();
}

uint64_t sub_1DD610AE8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v607 = a4;
  v608 = a3;
  v617 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC238, &unk_1DD654E40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v612 = (&v589 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC240, &qword_1DD645AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v620 = &v589 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v589 - v12;
  v611 = sub_1DD63CD18();
  v603 = *(v611 - 8);
  v14 = *(v603 + 64);
  MEMORY[0x1EEE9AC00](v611);
  v610 = &v589 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v596 = type metadata accessor for Signpost();
  v16 = *(*(v596 - 8) + 64);
  MEMORY[0x1EEE9AC00](v596);
  v599 = (&v589 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v629 = *(v627 - 8);
  v18 = *(v629 + 64);
  MEMORY[0x1EEE9AC00](v627);
  v615 = &v589 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v614 = &v589 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v613 = &v589 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v605 = &v589 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v626 = &v589 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v602 = &v589 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v601 = (&v589 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v594 = &v589 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v589 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v598 = &v589 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v593 = &v589 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v595 = (&v589 - v42);
  MEMORY[0x1EEE9AC00](v43);
  *&v609 = &v589 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v618 = (&v589 - v46);
  MEMORY[0x1EEE9AC00](v47);
  *&v597 = &v589 - v48;
  MEMORY[0x1EEE9AC00](v49);
  *&v600 = &v589 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v589 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v625 = (&v589 - v55);
  MEMORY[0x1EEE9AC00](v56);
  v606 = &v589 - v57;
  MEMORY[0x1EEE9AC00](v58);
  *&v623 = &v589 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v616 = &v589 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v604 = &v589 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v624 = &v589 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v589 - v67;
  memcpy(v635, a2, 0x108uLL);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v69 = sub_1DD63F9F8();
  v70 = __swift_project_value_buffer(v69, qword_1EE16F068);
  sub_1DD3C9478(v635, v634);
  v622 = v70;
  v71 = sub_1DD63F9D8();
  LOBYTE(v70) = sub_1DD640368();
  sub_1DD3C9580(v635);
  v72 = v70;
  v73 = os_log_type_enabled(v71, v70);
  v621 = v5;
  v619 = v13;
  v592 = v36;
  if (v73)
  {
    v74 = v53;
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v633 = v76;
    *v75 = 134218242;
    *(v75 + 4) = v617;
    *(v75 + 12) = 2080;
    memcpy(v630, v635, sizeof(v630));
    sub_1DD3C9478(v635, v634);
    v77 = ContactQuery.description.getter();
    v79 = v78;
    memcpy(v634, v630, sizeof(v634));
    sub_1DD3C9580(v634);
    v80 = sub_1DD39565C(v77, v79, &v633);

    *(v75 + 14) = v80;
    _os_log_impl(&dword_1DD38D000, v71, v72, "[UCG] Beginning search for query [%ld]: %s", v75, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1E12B3DA0](v76, -1, -1);
    v81 = v75;
    v53 = v74;
    MEMORY[0x1E12B3DA0](v81, -1, -1);
  }

  v82 = swift_allocObject();
  memcpy(v634, v635, sizeof(v634));
  sub_1DD614FFC();
  MEMORY[0x1EEE9AC00](v83);
  v84 = v607;
  v85 = v628;
  v86 = sub_1DD5834F8();
  v628 = v85;
  if (v85)
  {

    swift_deallocUninitializedObject();
    return v84;
  }

  v87 = v86;

  *(v82 + 16) = v87;
  memcpy(v634, v635, sizeof(v634));

  sub_1DD61E944();
  v89 = v88;

  v90 = *(v82 + 16);
  *(v82 + 16) = v89;

  sub_1DD6068D8(sub_1DD6178EC, 0, sub_1DD6178F8, 0, v89);
  v92 = v91;

  v93 = *(v82 + 16);
  v617 = v82;
  *(v82 + 16) = v92;

  v94 = 0;
  v95 = *(v92 + 16);
  v591 = v53;
  while (v95 != v94)
  {
    v96 = *(v92 + 16);
    if (v94 >= v96)
    {
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
      goto LABEL_193;
    }

    sub_1DD3EB3D0(v92 + ((*(v629 + 80) + 32) & ~*(v629 + 80)) + *(v629 + 72) * v94++, v68, &qword_1ECCDBBE8, &qword_1DD644470);
    v97 = &v68[*(v627 + 36)];
    LODWORD(v97) = v97[*(type metadata accessor for ContactResolver.SignalSet(0) + 140)];
    sub_1DD390754(v68, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v97 == 1)
    {

      v98 = v617;
      goto LABEL_24;
    }
  }

  v99 = *(v617 + 16);
  v100 = *(v99 + 16);

  v101 = 0;
  v590 = MEMORY[0x1E69E7CC0];
  while (v100 != v101)
  {
    v96 = *(v99 + 16);
    if (v101 >= v96)
    {
      goto LABEL_188;
    }

    v102 = (*(v629 + 80) + 32) & ~*(v629 + 80);
    v103 = *(v629 + 72);
    v104 = v624;
    sub_1DD3EB3D0(v99 + v102 + v103 * v101, v624, &qword_1ECCDBBE8, &qword_1DD644470);
    v105 = v628;
    v106 = sub_1DD618094(v104);
    if (v105)
    {

      sub_1DD390754(v624, &qword_1ECCDBBE8, &qword_1DD644470);

      __break(1u);
      return result;
    }

    v628 = 0;
    if (v106)
    {
      sub_1DD3EB4B8(v624, v604, &qword_1ECCDBBE8, &qword_1DD644470);
      v107 = v590;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v634[0] = v107;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = *(v107 + 16);
        sub_1DD42B4F8();
        v107 = v634[0];
      }

      v110 = *(v107 + 16);
      v111 = v110 + 1;
      if (v110 >= *(v107 + 24) >> 1)
      {
        v589 = *(v107 + 16);
        v590 = v110 + 1;
        sub_1DD42B4F8();
        v110 = v589;
        v111 = v590;
        v107 = v634[0];
      }

      ++v101;
      *(v107 + 16) = v111;
      v590 = v107;
      sub_1DD3EB4B8(v604, v107 + v102 + v110 * v103, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v624, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v101;
    }
  }

  v98 = v617;
  v112 = *(v617 + 16);
  *(v617 + 16) = v590;

  v53 = v591;
LABEL_24:
  v113 = *(v98 + 16);
  v114 = *(v113 + 16);

  v115 = 0;
  while (v114 != v115)
  {
    v96 = *(v113 + 16);
    if (v115 >= v96)
    {
      goto LABEL_189;
    }

    v116 = v616;
    sub_1DD3EB3D0(v113 + ((*(v629 + 80) + 32) & ~*(v629 + 80)) + *(v629 + 72) * v115++, v616, &qword_1ECCDBBE8, &qword_1DD644470);
    v117 = v116 + *(v627 + 36);
    LODWORD(v117) = *(v117 + *(type metadata accessor for ContactResolver.SignalSet(0) + 140));
    sub_1DD390754(v116, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v117 == 1)
    {

      v118 = v617;
      goto LABEL_58;
    }
  }

  v119 = *(v617 + 16);
  v120 = *(v119 + 16);

  v121 = 0;
  v616 = MEMORY[0x1E69E7CC0];
  while (v120 != v121)
  {
    v96 = *(v119 + 16);
    if (v121 >= v96)
    {
      goto LABEL_190;
    }

    v122 = (*(v629 + 80) + 32) & ~*(v629 + 80);
    v123 = *(v629 + 72);
    v124 = v623;
    sub_1DD3EB3D0(v119 + v122 + v123 * v121, v623, &qword_1ECCDBBE8, &qword_1DD644470);
    v125 = v124 + *(v627 + 36);
    if (*(v125 + 336) != 1 || *(v125 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204)) == 1)
    {
      sub_1DD3EB4B8(v623, v606, &qword_1ECCDBBE8, &qword_1DD644470);
      v126 = v616;
      v127 = swift_isUniquelyReferenced_nonNull_native();
      v634[0] = v126;
      if ((v127 & 1) == 0)
      {
        v128 = *(v126 + 16);
        sub_1DD42B4F8();
        v126 = v634[0];
      }

      v129 = *(v126 + 16);
      v130 = v129 + 1;
      if (v129 >= *(v126 + 24) >> 1)
      {
        v624 = v129 + 1;
        v616 = v129;
        sub_1DD42B4F8();
        v130 = v624;
        v129 = v616;
        v126 = v634[0];
      }

      ++v121;
      *(v126 + 16) = v130;
      v616 = v126;
      sub_1DD3EB4B8(v606, v126 + v122 + v129 * v123, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v623, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v121;
    }
  }

  if (*(v616 + 16))
  {
    v131 = *(v617 + 16);
    v132 = *(v131 + 16);
    v133 = MEMORY[0x1E69E7CC0];
    if (v132)
    {
      v634[0] = MEMORY[0x1E69E7CC0];

      sub_1DD42A2D4();
      v133 = v634[0];
      v134 = *(v629 + 80);
      *&v623 = v131;
      v135 = v131 + ((v134 + 32) & ~v134);
      v624 = *(v629 + 72);
      do
      {
        v136 = v625;
        sub_1DD3EB3D0(v135, v625, &qword_1ECCDBBE8, &qword_1DD644470);
        v137 = *v136;
        v138 = v136[1];

        sub_1DD390754(v136, &qword_1ECCDBBE8, &qword_1DD644470);
        v634[0] = v133;
        v139 = *(v133 + 16);
        if (v139 >= *(v133 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v133 = v634[0];
        }

        *(v133 + 16) = v139 + 1;
        v140 = v133 + 16 * v139;
        *(v140 + 32) = v137;
        *(v140 + 40) = v138;
        v135 += v624;
        --v132;
      }

      while (v132);
    }

    v141 = sub_1DD41859C(v133);
    v142 = v141;
    v143 = v616;
    v144 = *(v616 + 16);
    v145 = MEMORY[0x1E69E7CC0];
    if (v144)
    {
      *&v623 = v141;
      v634[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v145 = v634[0];
      v146 = v143 + ((*(v629 + 80) + 32) & ~*(v629 + 80));
      v624 = *(v629 + 72);
      do
      {
        v147 = v625;
        sub_1DD3EB3D0(v146, v625, &qword_1ECCDBBE8, &qword_1DD644470);
        v148 = *v147;
        v149 = v147[1];

        sub_1DD390754(v147, &qword_1ECCDBBE8, &qword_1DD644470);
        v634[0] = v145;
        v150 = *(v145 + 16);
        if (v150 >= *(v145 + 24) >> 1)
        {
          sub_1DD42A2D4();
          v145 = v634[0];
        }

        *(v145 + 16) = v150 + 1;
        v151 = v145 + 16 * v150;
        *(v151 + 32) = v148;
        *(v151 + 40) = v149;
        v146 += v624;
        --v144;
      }

      while (v144);
      v142 = v623;
    }

    v152 = sub_1DD625880(v145, v142);

    v153 = swift_allocObject();
    *(v153 + 16) = v152;
    v154 = swift_allocObject();
    *(v154 + 16) = sub_1DD627328;
    *(v154 + 24) = v153;

    v155 = sub_1DD63F9D8();
    v156 = sub_1DD640368();
    v157 = swift_allocObject();
    *(v157 + 16) = 32;
    v158 = swift_allocObject();
    *(v158 + 16) = 8;
    v159 = swift_allocObject();
    *(v159 + 16) = sub_1DD627AD8;
    *(v159 + 24) = v154;
    v160 = swift_allocObject();
    *(v160 + 16) = sub_1DD3FAEA4;
    *(v160 + 24) = v159;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v161 = swift_allocObject();
    sub_1DD3AE030(v161, 3);
    *v162 = sub_1DD3FAEC8;
    v162[1] = v157;
    v162[2] = sub_1DD3FAEC8;
    v162[3] = v158;
    v162[4] = sub_1DD3FAE9C;
    v162[5] = v160;

    v163 = os_log_type_enabled(v155, v156);
    v53 = v591;
    if (v163)
    {
      v164 = swift_slowAlloc();
      v165 = swift_slowAlloc();
      v634[0] = v165;
      *v164 = 136315138;
      v166 = sub_1DD640278();
      v168 = v167;

      v169 = sub_1DD39565C(v166, v168, v634);

      *(v164 + 4) = v169;
      _os_log_impl(&dword_1DD38D000, v155, v156, "[UCG] There are non-hypocorism matches. Discarding hypocorism candidate(s): %s", v164, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v165);
      MEMORY[0x1E12B3DA0](v165, -1, -1);
      MEMORY[0x1E12B3DA0](v164, -1, -1);
    }

    else
    {
    }

    v118 = v617;
    v170 = *(v617 + 16);
    *(v617 + 16) = v616;
  }

  else
  {

    v118 = v617;
    v53 = v591;
  }

LABEL_58:
  v171 = v118;
  v172 = *(v118 + 16);
  v173 = *(v172 + 16);

  v174 = 0;
  while (v173 != v174)
  {
    v96 = *(v172 + 16);
    if (v174 >= v96)
    {
      goto LABEL_191;
    }

    sub_1DD3EB3D0(v172 + ((*(v629 + 80) + 32) & ~*(v629 + 80)) + *(v629 + 72) * v174++, v53, &qword_1ECCDBBE8, &qword_1DD644470);
    v175 = &v53[*(v627 + 36)];
    LODWORD(v175) = v175[*(type metadata accessor for ContactResolver.SignalSet(0) + 140)];
    sub_1DD390754(v53, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v175 == 1)
    {
      goto LABEL_127;
    }
  }

  v176 = *(v171 + 16);
  v177 = *(v176 + 16);

  v178 = 0;
  *&v623 = MEMORY[0x1E69E7CC0];
  v179 = v600;
  while (v177 != v178)
  {
    v96 = *(v176 + 16);
    if (v178 >= v96)
    {
      goto LABEL_192;
    }

    v180 = (*(v629 + 80) + 32) & ~*(v629 + 80);
    v181 = *(v629 + 72);
    sub_1DD3EB3D0(v176 + v180 + v181 * v178, v179, &qword_1ECCDBBE8, &qword_1DD644470);
    v182 = v179 + *(v627 + 36);
    if (*(v182 + 333) == 1 && *(v182 + 334) == 1)
    {
      sub_1DD3EB4B8(v179, v597, &qword_1ECCDBBE8, &qword_1DD644470);
      v183 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v623;
      v634[0] = v623;
      if ((v183 & 1) == 0)
      {
        v185 = *(v623 + 16);
        sub_1DD42B4F8();
        v179 = v600;
        v184 = v634[0];
      }

      v186 = *(v184 + 16);
      v187 = v186 + 1;
      if (v186 >= *(v184 + 24) >> 1)
      {
        v624 = v186 + 1;
        *&v623 = v186;
        sub_1DD42B4F8();
        v187 = v624;
        v186 = v623;
        v179 = v600;
        v184 = v634[0];
      }

      ++v178;
      *(v184 + 16) = v187;
      *&v623 = v184;
      sub_1DD3EB4B8(v597, v184 + v180 + v186 * v181, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v179, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v178;
    }
  }

  v188 = v623;
  v189 = *(v623 + 16);
  if (v189)
  {
    v634[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42A174(v189);
    v190 = v188 + ((*(v629 + 80) + 32) & ~*(v629 + 80));
    v624 = *(v629 + 72);
    do
    {
      v191 = v625;
      sub_1DD3EB3D0(v190, v625, &qword_1ECCDBBE8, &qword_1DD644470);
      v192 = *v191;
      v193 = v191[1];

      sub_1DD390754(v191, &qword_1ECCDBBE8, &qword_1DD644470);
      v194 = v634[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v195 = *(v194 + 16);
        sub_1DD42A2D4();
        v194 = v634[0];
      }

      v196 = *(v194 + 16);
      if (v196 >= *(v194 + 24) >> 1)
      {
        sub_1DD42A2D4();
        v194 = v634[0];
      }

      *(v194 + 16) = v196 + 1;
      v197 = v194 + 16 * v196;
      *(v197 + 32) = v192;
      *(v197 + 40) = v193;
      v190 += v624;
      --v189;
    }

    while (v189);
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v198 = sub_1DD41859C(v194);
  v171 = v617;
  if (!*(v198 + 16))
  {
LABEL_127:

    v269 = *(v171 + 16);

    sub_1DD6205E0();
    v271 = v270;

    v272 = *(v171 + 16);
    *(v171 + 16) = v271;

    if (*(v607 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors) != 1)
    {
      goto LABEL_251;
    }

    v273 = *(v607 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator);
    if (!v273)
    {
      goto LABEL_251;
    }

    v624 = v607 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    v274 = qword_1EE166460;
    *&v623 = v273;

    if (v274 != -1)
    {
      goto LABEL_312;
    }

    while (1)
    {
      v275 = qword_1EE16F0C0;
      v276 = v596;
      v277 = v599;
      v278 = v599 + *(v596 + 20);
      *v278 = "ContactResolver.UCG.ASRE3";
      *(v278 + 1) = 25;
      v278[16] = 2;
      v279 = v275;
      sub_1DD63F9B8();
      *(v277 + *(v276 + 24)) = v279;
      v280 = v279;
      sub_1DD6404D8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
      v281 = swift_allocObject();
      *(v281 + 16) = xmmword_1DD643F90;
      v282 = sub_1DD6408F8();
      v284 = v283;
      *(v281 + 56) = MEMORY[0x1E69E6158];
      *(v281 + 64) = sub_1DD392BD8();
      *(v281 + 32) = v282;
      *(v281 + 40) = v284;
      v606 = v280;
      sub_1DD63F998();

      v285 = v635[3];
      v286 = v635[4];
      v287 = v635[4] & 0x2000000000000000;
      v288 = HIBYTE(v635[4]) & 0xFLL;
      v289 = v635[3] & 0xFFFFFFFFFFFFLL;
      if ((v635[4] & 0x2000000000000000) != 0)
      {
        v290 = HIBYTE(v635[4]) & 0xFLL;
      }

      else
      {
        v290 = v635[3] & 0xFFFFFFFFFFFFLL;
      }

      if (!v290)
      {
        v285 = v635[7];
        v286 = v635[8];
        v287 = v635[8] & 0x2000000000000000;
        v288 = HIBYTE(v635[8]) & 0xFLL;
        v289 = v635[7] & 0xFFFFFFFFFFFFLL;
        if (!((v635[8] & 0x2000000000000000) != 0 ? HIBYTE(v635[8]) & 0xFLL : v635[7] & 0xFFFFFFFFFFFFLL))
        {
          v285 = v635[11];
          v286 = v635[12];
          v287 = v635[12] & 0x2000000000000000;
          v288 = HIBYTE(v635[12]) & 0xFLL;
          v289 = v635[11] & 0xFFFFFFFFFFFFLL;
        }
      }

      v171 = v617;

      if (v287)
      {
        v292 = v288;
      }

      else
      {
        v292 = v289;
      }

      if (!v292)
      {
        goto LABEL_249;
      }

      v634[0] = v285;
      v634[1] = v286;
      v630[0] = 31868;
      v630[1] = 0xE200000000000000;
      sub_1DD3B7F10();
      if (sub_1DD6406D8())
      {
        v634[0] = v285;
        v634[1] = v286;
        v293 = sub_1DD6406E8();

        v294 = v293[2];
        if (v294)
        {
          v634[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42A174(v294);
          v295 = v634[0];
          v618 = v293;
          v296 = v293 + 7;
          do
          {
            v298 = *(v296 - 3);
            v297 = *(v296 - 2);
            v299 = *(v296 - 1);
            v300 = *v296;

            v301 = MEMORY[0x1E12B2190](v298, v297, v299, v300);
            v303 = v302;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v304 = *(v295 + 16);
              sub_1DD42A2D4();
              v295 = v634[0];
            }

            v305 = *(v295 + 16);
            if (v305 >= *(v295 + 24) >> 1)
            {
              sub_1DD42A2D4();
              v295 = v634[0];
            }

            *(v295 + 16) = v305 + 1;
            v306 = v295 + 16 * v305;
            *(v306 + 32) = v301;
            *(v306 + 40) = v303;
            v296 += 4;
            --v294;
          }

          while (v294);

          v171 = v617;
        }

        else
        {

          v295 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
        v307 = swift_allocObject();
        v295 = sub_1DD3AE030(v307, 1);
        *v308 = v285;
        v308[1] = v286;
      }

      v310 = *(v624 + 8);
      v309 = *(v624 + 16);

      v311 = sub_1DD607064();
      if (v311 == 3)
      {
        goto LABEL_249;
      }

      v312 = v311;
      if ((sub_1DD6070B0(v311) & 1) == 0)
      {
        break;
      }

      v84 = v607;
      v313 = sub_1DD61884C(v295);

      memcpy(v634, v635, sizeof(v634));
      v314 = v628;
      v315 = sub_1DD618B58(v313, v634);
      v628 = v314;
      if (v314)
      {

        goto LABEL_159;
      }

      v327 = v315;
      *&v609 = v313;
      v328 = sub_1DD63F9D8();
      v329 = sub_1DD640368();
      if (os_log_type_enabled(v328, v329))
      {
        v330 = swift_slowAlloc();
        *v330 = 0;
        _os_log_impl(&dword_1DD38D000, v328, v329, "[UCG][ASR-E3] Candidates:", v330, 2u);
        MEMORY[0x1E12B3DA0](v330, -1, -1);
      }

      v618 = v327;
      v332 = v598;
      v616 = v327[2];
      if (v616)
      {
        v333 = v618 + ((*(v629 + 80) + 32) & ~*(v629 + 80));
        v334 = *(v629 + 72);
        *&v600 = v603 + 8;
        *&v331 = 136315138;
        v597 = v331;
        v335 = v616;
        v604 = v334;
        do
        {
          sub_1DD3EB3D0(v333, v332, &qword_1ECCDBBE8, &qword_1DD644470);
          v336 = sub_1DD63F9D8();
          v337 = sub_1DD640368();
          if (os_log_type_enabled(v336, v337))
          {
            v338 = swift_slowAlloc();
            v624 = swift_slowAlloc();
            v634[0] = v624;
            *v338 = v597;
            v339 = v610;
            Contact.nameComponents.getter();
            v340 = sub_1DD63CCF8();
            v342 = v341;
            (*v600)(v339, v611);
            sub_1DD390754(v598, &qword_1ECCDBBE8, &qword_1DD644470);
            v343 = sub_1DD39565C(v340, v342, v634);
            v334 = v604;

            *(v338 + 4) = v343;
            _os_log_impl(&dword_1DD38D000, v336, v337, "%s", v338, 0xCu);
            v344 = v624;
            __swift_destroy_boxed_opaque_existential_1(v624);
            MEMORY[0x1E12B3DA0](v344, -1, -1);
            v345 = v338;
            v332 = v598;
            MEMORY[0x1E12B3DA0](v345, -1, -1);
          }

          else
          {

            sub_1DD390754(v332, &qword_1ECCDBBE8, &qword_1DD644470);
          }

          v333 += v334;
          --v335;
        }

        while (v335);
      }

      v346 = *(v617 + 16);
      v347 = *(v346 + 16);
      v96 = MEMORY[0x1E69E7CC0];
      if (v347)
      {
        v634[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A174(v347);
        v348 = *(v629 + 80);
        *&v600 = v346;
        v349 = v346 + ((v348 + 32) & ~v348);
        v604 = *(v629 + 72);
        v350 = v634[0];
        v351 = v595;
        do
        {
          v352 = v625;
          sub_1DD3EB3D0(v349, v625, &qword_1ECCDBBE8, &qword_1DD644470);
          v353 = v352[1];
          v624 = *v352;

          sub_1DD390754(v352, &qword_1ECCDBBE8, &qword_1DD644470);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v354 = *(v350 + 16);
            sub_1DD42A2D4();
            v351 = v595;
            v350 = v634[0];
          }

          v355 = *(v350 + 16);
          v356 = v350;
          if (v355 >= *(v350 + 24) >> 1)
          {
            sub_1DD42A2D4();
            v351 = v595;
            v356 = v634[0];
          }

          v356[2] = v355 + 1;
          v357 = &v356[2 * v355];
          v357[4] = v624;
          v357[5] = v353;
          v349 += v604;
          --v347;
          v350 = v356;
        }

        while (v347);
        v625 = v356;
      }

      else
      {
LABEL_193:
        v625 = v96;
        v351 = v595;
      }

      v362 = 0;
      v604 = MEMORY[0x1E69E7CC0];
      while (v616 != v362)
      {
        v363 = v618;
        sub_1DD408C00(v362, 1, v618);
        v364 = (*(v629 + 80) + 32) & ~*(v629 + 80);
        v365 = *(v629 + 72);
        v366 = sub_1DD3EB3D0(v363 + v364 + v365 * v362, v351, &qword_1ECCDBBE8, &qword_1DD644470);
        v367 = v351[1];
        v634[0] = *v351;
        v634[1] = v367;
        MEMORY[0x1EEE9AC00](v366);
        v368 = v628;
        v369 = sub_1DD450388();
        v628 = v368;
        if (v369)
        {
          sub_1DD390754(v351, &qword_1ECCDBBE8, &qword_1DD644470);
          ++v362;
        }

        else
        {
          sub_1DD3EB4B8(v351, v593, &qword_1ECCDBBE8, &qword_1DD644470);
          v370 = v604;
          v371 = swift_isUniquelyReferenced_nonNull_native();
          v630[0] = v370;
          if ((v371 & 1) == 0)
          {
            v372 = *(v370 + 16);
            sub_1DD42B4F8();
            v351 = v595;
            v370 = v630[0];
          }

          v373 = *(v370 + 16);
          v374 = (v373 + 1);
          if (v373 >= *(v370 + 24) >> 1)
          {
            v375 = (v373 + 1);
            v624 = v373;
            sub_1DD42B4F8();
            v374 = v375;
            v373 = v624;
            v351 = v595;
            v370 = v630[0];
          }

          ++v362;
          *(v370 + 16) = v374;
          v604 = v370;
          sub_1DD3EB4B8(v593, v370 + v364 + v373 * v365, &qword_1ECCDBBE8, &qword_1DD644470);
        }
      }

      v376 = 0;
      v377 = v609;
      v624 = *(v609 + 16);
      v378 = v609 + 64;
      v618 = MEMORY[0x1E69E7CC0];
      v616 = v609 + 64;
LABEL_204:
      v379 = (v378 + 40 * v376);
      for (i = v376; ; i = (i + 1))
      {
        if (v624 == i)
        {

          v394 = v604;

          sub_1DD60793C(v395);
          v396 = swift_allocObject();
          *(v396 + 16) = v394;

          v397 = sub_1DD63F9D8();
          v398 = sub_1DD640368();
          v399 = swift_allocObject();
          *(v399 + 16) = 0;
          v400 = swift_allocObject();
          *(v400 + 16) = 8;
          v401 = swift_allocObject();
          *(v401 + 16) = sub_1DD627314;
          *(v401 + 24) = v396;
          v402 = swift_allocObject();
          *(v402 + 16) = sub_1DD627AFC;
          *(v402 + 24) = v401;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
          v403 = swift_allocObject();
          sub_1DD3AE030(v403, 3);
          *v404 = sub_1DD3FAEC8;
          v404[1] = v399;
          v404[2] = sub_1DD3FAEC8;
          v404[3] = v400;
          v404[4] = sub_1DD627A7C;
          v404[5] = v402;

          if (os_log_type_enabled(v397, v398))
          {
            v405 = swift_slowAlloc();
            *v405 = 134217984;
            v406 = v398;
            v407 = *(v394 + 16);

            *(v405 + 4) = v407;

            _os_log_impl(&dword_1DD38D000, v397, v406, "[UCG][ASR-E3] Generated new (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to always", v405, 0xCu);
            MEMORY[0x1E12B3DA0](v405, -1, -1);
          }

          else
          {
          }

          sub_1DD618464();

          goto LABEL_218;
        }

        v381 = sub_1DD408C00(i, 1, v377);
        v376 = (i + 1);
        if (__OFADD__(i, 1))
        {
          break;
        }

        v383 = *(v379 - 3);
        v382 = *(v379 - 2);
        v384 = *v379;
        v385 = *(v379 - 2);
        v386 = *(v379 - 4);
        v634[0] = v383;
        v634[1] = v382;
        MEMORY[0x1EEE9AC00](v381);

        v387 = v628;
        v388 = sub_1DD450388();
        v628 = v387;
        if (!v388)
        {
          v389 = v618;
          v390 = swift_isUniquelyReferenced_nonNull_native();
          v630[0] = v389;
          if ((v390 & 1) == 0)
          {
            v391 = v389[2];
            sub_1DD42B4BC();
            v389 = v630[0];
          }

          v392 = v389[2];
          if (v392 >= v389[3] >> 1)
          {
            sub_1DD42B4BC();
            v389 = v630[0];
          }

          v389[2] = v392 + 1;
          v618 = v389;
          v393 = &v389[5 * v392];
          v393[4] = v386;
          v393[5] = v383;
          v393[6] = v382;
          *(v393 + 14) = v385;
          v393[8] = v384;
          v377 = v609;
          v378 = v616;
          goto LABEL_204;
        }

        v379 += 5;
        v377 = v609;
      }

      __break(1u);
LABEL_312:
      swift_once();
    }

    if (sub_1DD607F98(v312))
    {
      swift_retain_n();
      v316 = sub_1DD63F9D8();
      v317 = sub_1DD640368();
      v318 = swift_allocObject();
      *(v318 + 16) = 0;
      v319 = swift_allocObject();
      *(v319 + 16) = 8;
      v320 = swift_allocObject();
      *(v320 + 16) = sub_1DD62730C;
      *(v320 + 24) = v171;
      v321 = swift_allocObject();
      *(v321 + 16) = sub_1DD627AFC;
      *(v321 + 24) = v320;
      v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
      v322 = swift_allocObject();
      sub_1DD3AE030(v322, 3);
      *v323 = sub_1DD3FAEC8;
      v323[1] = v318;
      v323[2] = sub_1DD3FAEC8;
      v323[3] = v319;
      v323[4] = sub_1DD627A7C;
      v323[5] = v321;
      v171 = v617;

      if (os_log_type_enabled(v316, v317))
      {
        v324 = swift_slowAlloc();
        *v324 = 134217984;
        swift_beginAccess();
        v325 = *(*(v171 + 16) + 16);

        *(v324 + 4) = v325;

        _os_log_impl(&dword_1DD38D000, v316, v317, "[UCG][ASR-E3] Candidate count to CRR pre ASR-E3: %ld", v324, 0xCu);
        MEMORY[0x1E12B3DA0](v324, -1, -1);
      }

      else
      {
      }

      v358 = v592;
      swift_beginAccess();
      if (*(*(v171 + 16) + 16))
      {
        goto LABEL_249;
      }

      v84 = v607;
      v359 = sub_1DD61884C(v295);

      memcpy(v634, v635, sizeof(v634));
      v360 = v628;
      v361 = sub_1DD618B58(v359, v634);
      v628 = v360;
      if (!v360)
      {
        v439 = v361;
        v596 = v359;
        v440 = sub_1DD63F9D8();
        v441 = sub_1DD640368();
        if (os_log_type_enabled(v440, v441))
        {
          v442 = swift_slowAlloc();
          *v442 = 0;
          _os_log_impl(&dword_1DD38D000, v440, v441, "[UCG][ASR-E3] Candidates:", v442, 2u);
          MEMORY[0x1E12B3DA0](v442, -1, -1);
        }

        *&v597 = v439;
        v444 = *(v439 + 16);
        if (v444)
        {
          v445 = v597 + ((*(v629 + 80) + 32) & ~*(v629 + 80));
          v446 = *(v629 + 72);
          v604 = v603 + 8;
          *&v443 = 136315138;
          v600 = v443;
          *&v609 = v446;
          do
          {
            sub_1DD3EB3D0(v445, v358, &qword_1ECCDBBE8, &qword_1DD644470);
            v447 = sub_1DD63F9D8();
            v448 = sub_1DD640368();
            if (os_log_type_enabled(v447, v448))
            {
              v449 = swift_slowAlloc();
              v618 = v449;
              v450 = swift_slowAlloc();
              v624 = v447;
              v625 = v450;
              v634[0] = v450;
              *v449 = v600;
              v451 = v610;
              Contact.nameComponents.getter();
              v452 = sub_1DD63CCF8();
              LODWORD(v616) = v448;
              v453 = v358;
              v455 = v454;
              v456 = v451;
              v446 = v609;
              (*v604)(v456, v611);
              sub_1DD390754(v453, &qword_1ECCDBBE8, &qword_1DD644470);
              v457 = sub_1DD39565C(v452, v455, v634);

              v458 = v618;
              *(v618 + 4) = v457;
              v459 = v624;
              v460 = v458;
              _os_log_impl(&dword_1DD38D000, v624, v616, "%s", v458, 0xCu);
              v461 = v625;
              __swift_destroy_boxed_opaque_existential_1(v625);
              v462 = v461;
              v358 = v453;
              MEMORY[0x1E12B3DA0](v462, -1, -1);
              MEMORY[0x1E12B3DA0](v460, -1, -1);
            }

            else
            {

              sub_1DD390754(v358, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v445 += v446;
            --v444;
          }

          while (v444);
        }

        v463 = *(v617 + 16);
        v464 = v597;
        *(v617 + 16) = v597;

        v465 = swift_allocObject();
        *(v465 + 16) = v464;

        v269 = sub_1DD63F9D8();
        v466 = sub_1DD640368();
        v467 = swift_allocObject();
        *(v467 + 16) = 0;
        v468 = swift_allocObject();
        *(v468 + 16) = 8;
        v469 = swift_allocObject();
        *(v469 + 16) = sub_1DD627AB0;
        *(v469 + 24) = v465;
        v470 = swift_allocObject();
        *(v470 + 16) = sub_1DD627AFC;
        *(v470 + 24) = v469;
        v471 = swift_allocObject();
        sub_1DD3AE030(v471, 3);
        *v472 = sub_1DD3FAEC8;
        v472[1] = v467;
        v472[2] = sub_1DD3FAEC8;
        v472[3] = v468;
        v472[4] = sub_1DD627A7C;
        v472[5] = v470;

        if (os_log_type_enabled(v269, v466))
        {
          v473 = swift_slowAlloc();
          *v473 = 134217984;
          v474 = *(v464 + 16);

          *(v473 + 4) = v474;

          _os_log_impl(&dword_1DD38D000, v269, v466, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and appending it in CRR since triggering condition is set to noCandidatesInCrr", v473, 0xCu);
          MEMORY[0x1E12B3DA0](v473, -1, -1);

          goto LABEL_310;
        }

        goto LABEL_309;
      }

      sub_1DD627210(v599, type metadata accessor for Signpost);
    }

    else
    {
      if ((sub_1DD60801C(v312) & 1) == 0)
      {
        goto LABEL_249;
      }

      v84 = v607;
      v199 = sub_1DD61884C(v295);

      memcpy(v634, v635, sizeof(v634));
      v326 = v628;
      v200 = sub_1DD618B58(v199, v634);
      v628 = v326;
      if (!v326)
      {
        goto LABEL_220;
      }

LABEL_159:
      sub_1DD627210(v599, type metadata accessor for Signpost);
    }

    return v84;
  }

  v199 = *(v617 + 16);
  *&v623 = *(v199 + 16);

  v201 = 0;
  v616 = MEMORY[0x1E69E7CC0];
  v606 = v199;
LABEL_85:
  v202 = v201;
  while (1)
  {
    if (v202 == v623)
    {

      v221 = *(v171 + 16);
      v222 = *(v221 + 16);
      v223 = MEMORY[0x1E69E7CC0];
      if (v222)
      {
        v634[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A174(v222);
        v224 = *(v629 + 80);
        *&v623 = v221;
        v225 = v221 + ((v224 + 32) & ~v224);
        v624 = *(v629 + 72);
        v223 = v634[0];
        do
        {
          v226 = v625;
          sub_1DD3EB3D0(v225, v625, &qword_1ECCDBBE8, &qword_1DD644470);
          v227 = *v226;
          v228 = v226[1];

          sub_1DD390754(v226, &qword_1ECCDBBE8, &qword_1DD644470);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v229 = *(v223 + 16);
            sub_1DD42A2D4();
            v223 = v634[0];
          }

          v230 = *(v223 + 16);
          if (v230 >= *(v223 + 24) >> 1)
          {
            sub_1DD42A2D4();
            v223 = v634[0];
          }

          *(v223 + 16) = v230 + 1;
          v231 = v223 + 16 * v230;
          *(v231 + 32) = v227;
          *(v231 + 40) = v228;
          v225 += v624;
          --v222;
        }

        while (v222);
      }

      v232 = sub_1DD41859C(v223);
      v233 = v232;
      v234 = v616;
      v235 = *(v616 + 16);
      v236 = MEMORY[0x1E69E7CC0];
      if (v235)
      {
        *&v623 = v232;
        v634[0] = MEMORY[0x1E69E7CC0];
        sub_1DD42A174(v235);
        v237 = v234 + ((*(v629 + 80) + 32) & ~*(v629 + 80));
        v624 = *(v629 + 72);
        do
        {
          v238 = v625;
          sub_1DD3EB3D0(v237, v625, &qword_1ECCDBBE8, &qword_1DD644470);
          v239 = *v238;
          v240 = v238[1];

          sub_1DD390754(v238, &qword_1ECCDBBE8, &qword_1DD644470);
          v236 = v634[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v241 = *(v236 + 16);
            sub_1DD42A2D4();
            v236 = v634[0];
          }

          v242 = *(v236 + 16);
          if (v242 >= *(v236 + 24) >> 1)
          {
            sub_1DD42A2D4();
            v236 = v634[0];
          }

          *(v236 + 16) = v242 + 1;
          v243 = v236 + 16 * v242;
          *(v243 + 32) = v239;
          *(v243 + 40) = v240;
          v237 += v624;
          --v235;
        }

        while (v235);
        v233 = v623;
      }

      v244 = sub_1DD625880(v236, v233);

      v245 = swift_allocObject();
      v246 = v616;
      *(v245 + 16) = v616;
      v247 = swift_allocObject();
      *(v247 + 16) = v244;
      v248 = swift_allocObject();
      *(v248 + 16) = sub_1DD627AAC;
      *(v248 + 24) = v247;
      v616 = v246;
      swift_retain_n();
      *&v623 = v244;

      v618 = sub_1DD63F9D8();
      LODWORD(v624) = sub_1DD640368();
      *&v609 = swift_allocObject();
      *(v609 + 16) = 0;
      v249 = swift_allocObject();
      *(v249 + 16) = 8;
      v250 = swift_allocObject();
      *(v250 + 16) = sub_1DD627AB0;
      *(v250 + 24) = v245;
      v251 = swift_allocObject();
      *(v251 + 16) = sub_1DD627AFC;
      *(v251 + 24) = v250;
      v252 = swift_allocObject();
      *(v252 + 16) = 32;
      v253 = swift_allocObject();
      *(v253 + 16) = 8;
      v254 = swift_allocObject();
      *(v254 + 16) = sub_1DD627320;
      *(v254 + 24) = v248;
      v255 = swift_allocObject();
      *(v255 + 16) = sub_1DD3FAEA4;
      *(v255 + 24) = v254;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
      v256 = swift_allocObject();
      sub_1DD3AE030(v256, 6);
      v257 = v609;
      *v258 = sub_1DD3FAEC8;
      v258[1] = v257;
      v258[2] = sub_1DD3FAEC8;
      v258[3] = v249;
      v258[4] = sub_1DD627A7C;
      v258[5] = v251;
      v259 = v618;
      v258[6] = sub_1DD3FAEC8;
      v258[7] = v252;
      v258[8] = sub_1DD3FAEC8;
      v258[9] = v253;
      v258[10] = sub_1DD3FAE9C;
      v258[11] = v255;

      if (os_log_type_enabled(v259, v624))
      {
        v260 = swift_slowAlloc();
        v261 = swift_slowAlloc();
        v634[0] = v261;
        *v260 = 134218242;
        v262 = v616;
        v263 = *(v616 + 16);

        *(v260 + 4) = v263;

        *(v260 + 12) = 2080;
        v264 = sub_1DD640278();
        v266 = v265;

        v267 = sub_1DD39565C(v264, v266, v634);

        *(v260 + 14) = v267;
        _os_log_impl(&dword_1DD38D000, v259, v624, "[UCG] We have %ld candidate(s) with exact name matches or from PICS. Discarding other non-exact candidate(s): %s", v260, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v261);
        MEMORY[0x1E12B3DA0](v261, -1, -1);
        MEMORY[0x1E12B3DA0](v260, -1, -1);
      }

      else
      {

        v262 = v616;
      }

      v171 = v617;
      v268 = *(v617 + 16);
      *(v617 + 16) = v262;
      goto LABEL_127;
    }

    if (v202 >= *(v199 + 16))
    {
      break;
    }

    v203 = (*(v629 + 80) + 32) & ~*(v629 + 80);
    v204 = *(v629 + 72);
    v624 = v202 + 1;
    v205 = v618;
    sub_1DD3EB3D0(v199 + v203 + v204 * v202, v618, &qword_1ECCDBBE8, &qword_1DD644470);
    v206 = v205 + *(v627 + 36);
    v207 = type metadata accessor for ContactResolver.SignalSet(0);
    if (v206[*(v207 + 204)] & 1) != 0 || (v206[*(v207 + 140)])
    {
LABEL_101:
      sub_1DD3EB4B8(v618, v609, &qword_1ECCDBBE8, &qword_1DD644470);
      v217 = v616;
      v218 = swift_isUniquelyReferenced_nonNull_native();
      v630[0] = v217;
      if ((v218 & 1) == 0)
      {
        v219 = *(v217 + 16);
        sub_1DD42B4F8();
        v217 = v630[0];
      }

      v220 = *(v217 + 16);
      if (v220 >= *(v217 + 24) >> 1)
      {
        sub_1DD42B4F8();
        v217 = v630[0];
      }

      *(v217 + 16) = v220 + 1;
      v616 = v217;
      v200 = sub_1DD3EB4B8(v609, v217 + v203 + v220 * v204, &qword_1ECCDBBE8, &qword_1DD644470);
      v171 = v617;
      v199 = v606;
      v201 = v624;
      goto LABEL_85;
    }

    if (*(v198 + 16))
    {
      v208.isa = *v618;
      v209 = v618[1];
      v210 = *(v198 + 40);
      sub_1DD640E28();
      sub_1DD63FD28();
      v211 = sub_1DD640E78();
      v212 = ~(-1 << *(v198 + 32));
      while (1)
      {
        v213 = v211 & v212;
        if (((*(v198 + 56 + (((v211 & v212) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v211 & v212)) & 1) == 0)
        {
          break;
        }

        v214 = (*(v198 + 48) + 16 * v213);
        if (*v214 != v208.isa || v214[1] != v209)
        {
          v216 = sub_1DD640CD8();
          v211 = v213 + 1;
          if ((v216 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_101;
      }

      v199 = v606;
    }

    v200 = sub_1DD390754(v618, &qword_1ECCDBBE8, &qword_1DD644470);
    v202 = v624;
    v171 = v617;
  }

  __break(1u);
LABEL_220:
  v408 = v200;
  v409 = sub_1DD63F9D8();
  v410 = sub_1DD640368();
  if (os_log_type_enabled(v409, v410))
  {
    v411 = swift_slowAlloc();
    *v411 = 0;
    _os_log_impl(&dword_1DD38D000, v409, v410, "[UCG][ASR-E3] Candidates:", v411, 2u);
    MEMORY[0x1E12B3DA0](v411, -1, -1);
  }

  *&v600 = v199;

  v604 = v408;
  v413 = *(v408 + 16);
  v414 = v594;
  if (v413)
  {
    v415 = v604 + ((*(v629 + 80) + 32) & ~*(v629 + 80));
    v416 = *(v629 + 72);
    v616 = v603 + 8;
    *&v412 = 136315138;
    v609 = v412;
    v618 = v416;
    do
    {
      sub_1DD3EB3D0(v415, v414, &qword_1ECCDBBE8, &qword_1DD644470);
      v417 = sub_1DD63F9D8();
      v418 = sub_1DD640368();
      if (os_log_type_enabled(v417, v418))
      {
        v419 = swift_slowAlloc();
        v625 = swift_slowAlloc();
        v634[0] = v625;
        *v419 = v609;
        v420 = v610;
        Contact.nameComponents.getter();
        v421 = sub_1DD63CCF8();
        v423 = v422;
        (*v616)(v420, v611);
        sub_1DD390754(v594, &qword_1ECCDBBE8, &qword_1DD644470);
        v424 = sub_1DD39565C(v421, v423, v634);
        v414 = v594;

        *(v419 + 4) = v424;
        _os_log_impl(&dword_1DD38D000, v417, v418, "%s", v419, 0xCu);
        v425 = v625;
        __swift_destroy_boxed_opaque_existential_1(v625);
        MEMORY[0x1E12B3DA0](v425, -1, -1);
        v426 = v419;
        v416 = v618;
        MEMORY[0x1E12B3DA0](v426, -1, -1);
      }

      else
      {

        sub_1DD390754(v414, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      v415 += v416;
      --v413;
    }

    while (v413);
  }

  v427 = swift_allocObject();
  v428 = v604;
  *(v427 + 16) = v604;

  v429 = sub_1DD63F9D8();
  v430 = sub_1DD640368();
  v431 = swift_allocObject();
  *(v431 + 16) = 0;
  v432 = swift_allocObject();
  *(v432 + 16) = 8;
  v433 = swift_allocObject();
  *(v433 + 16) = sub_1DD627AB0;
  *(v433 + 24) = v427;
  v434 = swift_allocObject();
  *(v434 + 16) = sub_1DD627AFC;
  *(v434 + 24) = v433;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
  v435 = swift_allocObject();
  sub_1DD3AE030(v435, 3);
  *v436 = sub_1DD3FAEC8;
  v436[1] = v431;
  v436[2] = sub_1DD3FAEC8;
  v436[3] = v432;
  v436[4] = sub_1DD627A7C;
  v436[5] = v434;

  if (os_log_type_enabled(v429, v430))
  {
    v437 = swift_slowAlloc();
    *v437 = 134217984;
    v438 = *(v428 + 16);

    *(v437 + 4) = v438;

    _os_log_impl(&dword_1DD38D000, v429, v430, "[UCG][ASR-E3] Generated (%ld) candidates from Euclid match and not passing any to CRR since triggering condition is set to None", v437, 0xCu);
    MEMORY[0x1E12B3DA0](v437, -1, -1);
  }

  else
  {
  }

  v171 = v617;
  if (*(v624 + 56) == 1)
  {
    sub_1DD3BEE08();
    v476 = v475;
    v477 = *(v475 + 16);
    v478 = v477 + 1;
    if (v477 >= *(v475 + 24) >> 1)
    {
      sub_1DD3BEE08();
      v476 = v587;
    }

    *(v476 + 16) = v478;
    *(v476 + v477 + 32) = 0;
    if (!*(*(v171 + 16) + 16))
    {
      v479 = v477 + 2;
      if (v479 > *(v476 + 24) >> 1)
      {
        sub_1DD3BEE08();
        v476 = v588;
      }

      *(v476 + 16) = v479;
      *(v476 + v478 + 32) = 1;
    }
  }

  sub_1DD618464();

LABEL_249:

  while (1)
  {
    sub_1DD6404C8();
    v269 = v599;
    sub_1DD63F9A8();

    sub_1DD627210(v269, type metadata accessor for Signpost);
LABEL_251:
    v480 = type metadata accessor for ContactResolverConfig(0);
    v481 = v608;
    if (*(v608 + *(v480 + 12)))
    {
      break;
    }

    v618 = v480;
    v482 = sub_1DD63F9D8();
    v483 = sub_1DD640368();
    if (os_log_type_enabled(v482, v483))
    {
      v484 = swift_slowAlloc();
      *v484 = 0;
      _os_log_impl(&dword_1DD38D000, v482, v483, "[UCG] Filtering out contacts that are first party based on config...", v484, 2u);
      MEMORY[0x1E12B3DA0](v484, -1, -1);
    }

    swift_beginAccess();
    v485 = *(v171 + 16);
    v486 = *(v485 + 16);
    v269 = v601;
    v624 = (v601 + 1);
    v625 = v486;

    v487 = 0;
    *&v623 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v625 == v487)
      {

        v497 = *(v617 + 16);
        *(v617 + 16) = v623;

        v481 = v608;
        v480 = v618;
        goto LABEL_265;
      }

      if (v487 >= *(v485 + 16))
      {
        break;
      }

      v488 = (*(v629 + 80) + 32) & ~*(v629 + 80);
      v489 = *(v629 + 72);
      sub_1DD3EB3D0(v485 + v488 + v489 * v487, v269, &qword_1ECCDBBE8, &qword_1DD644470);
      v490 = *(v624 + *(type metadata accessor for Contact() + 88));

      if (v490)
      {
        sub_1DD3EB4B8(v269, v602, &qword_1ECCDBBE8, &qword_1DD644470);
        v491 = v623;
        v492 = swift_isUniquelyReferenced_nonNull_native();
        v493 = v491;
        v634[0] = v491;
        if ((v492 & 1) == 0)
        {
          v494 = *(v491 + 16);
          sub_1DD42B4F8();
          v269 = v601;
          v493 = v634[0];
        }

        v495 = *(v493 + 16);
        v496 = v495 + 1;
        if (v495 >= *(v493 + 24) >> 1)
        {
          *&v623 = v495 + 1;
          sub_1DD42B4F8();
          v496 = v623;
          v269 = v601;
          v493 = v634[0];
        }

        ++v487;
        *(v493 + 16) = v496;
        *&v623 = v493;
        sub_1DD3EB4B8(v602, v493 + v488 + v495 * v489, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      else
      {

        sub_1DD390754(v269, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v487;
      }
    }

LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:

LABEL_310:
    sub_1DD618464();

LABEL_218:
    v171 = v617;
  }

LABEL_265:
  v498 = 0;
  v499 = *(v481 + *(v480 + 11));
  v624 = *(v499 + 16);
  v500 = v499 + 40;
  v625 = MEMORY[0x1E69E7CC0];
  *&v623 = v499 + 40;
LABEL_266:
  v501 = (v500 + 16 * v498);
  while (v624 != v498)
  {
    if (v498 >= *(v499 + 16))
    {
      __break(1u);
LABEL_305:
      __break(1u);
      goto LABEL_306;
    }

    v502 = *(v501 - 1);
    v503 = *v501;
    v634[0] = v502;
    v634[1] = v503;
    v630[0] = 0x6C7070612E6D6F63;
    v630[1] = 0xEA00000000002E65;
    sub_1DD3B52B8();
    sub_1DD3B530C();

    v269 = v634;
    if ((sub_1DD63FD48() & 1) == 0)
    {
      v269 = v625;
      v504 = swift_isUniquelyReferenced_nonNull_native();
      v632 = v269;
      if ((v504 & 1) == 0)
      {
        v505 = v269[2];
        sub_1DD42A2D4();
        v269 = v632;
      }

      v506 = v269[2];
      if (v506 >= v269[3] >> 1)
      {
        sub_1DD42A2D4();
        v269 = v632;
      }

      ++v498;
      v269[2] = v506 + 1;
      v625 = v269;
      v507 = &v269[2 * v506];
      v507[4] = v502;
      v507[5] = v503;
      v500 = v623;
      goto LABEL_266;
    }

    v501 += 2;
    ++v498;
  }

  v269 = v617;
  swift_beginAccess();
  v508 = v269[2];
  v509 = *(v508 + 16);

  v510 = 0;
  v624 = MEMORY[0x1E69E7CC0];
  while (v509 != v510)
  {
    if (v510 >= *(v508 + 16))
    {
      goto LABEL_305;
    }

    v511 = (*(v629 + 80) + 32) & ~*(v629 + 80);
    v512 = *(v629 + 72);
    v513 = v626;
    sub_1DD3EB3D0(v508 + v511 + v512 * v510, v626, &qword_1ECCDBBE8, &qword_1DD644470);
    v514 = type metadata accessor for Contact();
    v515 = (v513 + *(v514 + 88));
    v516 = v515[1];
    if (!v516 || (v269 = &v589, v634[0] = *v515, v634[1] = v516, MEMORY[0x1EEE9AC00](v514), v517 = v628, v518 = sub_1DD450388(), v628 = v517, v518))
    {
      sub_1DD3EB4B8(v626, v605, &qword_1ECCDBBE8, &qword_1DD644470);
      v269 = v624;
      v519 = swift_isUniquelyReferenced_nonNull_native();
      v630[0] = v269;
      if ((v519 & 1) == 0)
      {
        v520 = v269[2];
        sub_1DD42B4F8();
        v269 = v630[0];
      }

      v521 = v269[2];
      v522 = v521 + 1;
      if (v521 >= v269[3] >> 1)
      {
        v624 = v521 + 1;
        *&v623 = v521;
        sub_1DD42B4F8();
        v522 = v624;
        v521 = v623;
        v269 = v630[0];
      }

      ++v510;
      v269[2] = v522;
      v624 = v269;
      sub_1DD3EB4B8(v605, v269 + v511 + v521 * v512, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v626, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v510;
    }
  }

  v523 = v617;
  v524 = *(v617 + 16);
  v525 = v624;
  *(v617 + 16) = v624;

  if (*(v525 + 16) == 1)
  {
    swift_beginAccess();
    sub_1DD586904();
    v526 = *(v523 + 16);
    sub_1DD587178(0, v526);
    v527 = v526 + *(v627 + 36) + ((*(v629 + 80) + 32) & ~*(v629 + 80));
    *(v527 + *(type metadata accessor for ContactResolver.SignalSet(0) + 224)) = 1;
    *(v523 + 16) = v526;
    swift_endAccess();
  }

  v528 = swift_allocObject();
  memcpy((v528 + 16), v635, 0x108uLL);
  v529 = swift_allocObject();
  *(v529 + 16) = sub_1DD6272FC;
  *(v529 + 24) = v528;

  sub_1DD3C9478(v635, v634);

  v627 = sub_1DD63F9D8();
  LODWORD(v626) = sub_1DD640368();
  v530 = swift_allocObject();
  *(v530 + 16) = 0;
  v531 = swift_allocObject();
  *(v531 + 16) = 8;
  v532 = swift_allocObject();
  *(v532 + 16) = sub_1DD627B00;
  *(v532 + 24) = v523;
  v533 = swift_allocObject();
  *(v533 + 16) = sub_1DD49C24C;
  *(v533 + 24) = v532;
  v534 = swift_allocObject();
  *(v534 + 16) = 32;
  v535 = swift_allocObject();
  *(v535 + 16) = 8;
  v536 = swift_allocObject();
  *(v536 + 16) = sub_1DD627304;
  *(v536 + 24) = v529;
  v537 = swift_allocObject();
  *(v537 + 16) = sub_1DD3FA514;
  *(v537 + 24) = v536;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
  v538 = swift_allocObject();
  sub_1DD3AE030(v538, 6);
  *v539 = sub_1DD3FA50C;
  v539[1] = v530;
  v539[2] = sub_1DD3FAEC8;
  v539[3] = v531;
  v540 = v626;
  v539[4] = sub_1DD49C254;
  v539[5] = v533;
  v541 = v617;
  v539[6] = sub_1DD3FAEC8;
  v539[7] = v534;
  v539[8] = sub_1DD3FAEC8;
  v539[9] = v535;
  v542 = v627;
  v539[10] = sub_1DD3FA51C;
  v539[11] = v537;

  if (os_log_type_enabled(v542, v540))
  {
    v543 = swift_slowAlloc();
    v544 = swift_slowAlloc();
    v631 = v544;
    *v543 = 134218242;
    v545 = *(*(v541 + 16) + 16);

    *(v543 + 4) = v545;

    *(v543 + 12) = 2080;
    memcpy(v630, v635, sizeof(v630));
    sub_1DD3C9478(v635, v634);
    v546 = ContactQuery.description.getter();
    v548 = v547;
    memcpy(v634, v630, sizeof(v634));
    sub_1DD3C9580(v634);
    v549 = sub_1DD39565C(v546, v548, &v631);

    *(v543 + 14) = v549;
    _os_log_impl(&dword_1DD38D000, v542, v540, "[UCG] Final candidates (%ld) before signal generation for query: %s", v543, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v544);
    MEMORY[0x1E12B3DA0](v544, -1, -1);
    MEMORY[0x1E12B3DA0](v543, -1, -1);
  }

  else
  {
  }

  v550 = v620;
  v551 = v621;
  v552 = v619;
  v554 = v614;
  v553 = v615;
  v555 = v541;
  v556 = v613;
  v557 = *(v555 + 16);
  v558 = v557[2];
  v624 = v603 + 8;
  v625 = v557;

  v559 = 0;
  v269 = &qword_1DD644470;
  *&v560 = 134218498;
  v623 = v560;
  v626 = v558;
  while (1)
  {
    if (v559 == v558)
    {
      v561 = 1;
      v627 = v558;
    }

    else
    {
      if ((v559 & 0x8000000000000000) != 0)
      {
        goto LABEL_307;
      }

      if (v559 >= v625[2])
      {
        goto LABEL_308;
      }

      v562 = v559 + 1;
      v563 = v625 + ((*(v629 + 80) + 32) & ~*(v629 + 80)) + *(v629 + 72) * v559;
      v564 = *(v551 + 48);
      v565 = v550;
      v566 = v612;
      *v612 = v559;
      sub_1DD3EB3D0(v563, v566 + v564, &qword_1ECCDBBE8, &qword_1DD644470);
      v567 = v566;
      v550 = v565;
      sub_1DD3EB4B8(v567, v565, &qword_1ECCDC238, &unk_1DD654E40);
      v561 = 0;
      v627 = v562;
    }

    __swift_storeEnumTagSinglePayload(v550, v561, 1, v551);
    sub_1DD3EB4B8(v550, v552, &qword_1ECCDC240, &qword_1DD645AA0);
    if (__swift_getEnumTagSinglePayload(v552, 1, v551) == 1)
    {
      break;
    }

    v568 = *v552;
    sub_1DD3EB4B8(v552 + *(v551 + 48), v556, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3EB3D0(v556, v554, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3EB3D0(v556, v553, &qword_1ECCDBBE8, &qword_1DD644470);
    v569 = v556;
    v570 = sub_1DD63F9D8();
    v571 = sub_1DD640368();
    if (os_log_type_enabled(v570, v571))
    {
      v572 = swift_slowAlloc();
      v573 = swift_slowAlloc();
      v634[0] = v573;
      *v572 = v623;
      *(v572 + 4) = v568;
      *(v572 + 12) = 2080;
      v574 = v554;
      v575 = v610;
      v576 = v574;
      Contact.nameComponents.getter();
      v577 = sub_1DD63CCF8();
      v579 = v578;
      (*v624)(v575, v611);
      sub_1DD390754(v576, &qword_1ECCDBBE8, &qword_1DD644470);
      v580 = sub_1DD39565C(v577, v579, v634);

      *(v572 + 14) = v580;
      *(v572 + 22) = 2080;
      v553 = v615;
      v581 = sub_1DD5590A8();
      v583 = v582;
      sub_1DD390754(v553, &qword_1ECCDBBE8, &qword_1DD644470);
      v584 = sub_1DD39565C(v581, v583, v634);

      *(v572 + 24) = v584;
      _os_log_impl(&dword_1DD38D000, v570, v571, "[UCG] Candidate [%ld] (%s): %s", v572, 0x20u);
      swift_arrayDestroy();
      v585 = v573;
      v551 = v621;
      MEMORY[0x1E12B3DA0](v585, -1, -1);
      v550 = v620;
      MEMORY[0x1E12B3DA0](v572, -1, -1);

      v556 = v613;
      v269 = &qword_1DD644470;
      sub_1DD390754(v613, &qword_1ECCDBBE8, &qword_1DD644470);
      v552 = v619;
      v554 = v614;
      v558 = v626;
      v559 = v627;
    }

    else
    {

      v269 = &qword_1DD644470;
      sub_1DD390754(v553, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v554, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v569, &qword_1ECCDBBE8, &qword_1DD644470);
      v552 = v619;
      v550 = v620;
      v556 = v569;
      v558 = v626;
      v559 = v627;
      v551 = v621;
    }
  }

  v84 = *(v617 + 16);

  return v84;
}

void sub_1DD614FFC()
{
  OUTLINED_FUNCTION_18_4();
  memcpy(__dst, v0, 0x108uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBED8, &qword_1DD64A0A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DD643F90;
  memcpy((v1 + 32), v0, 0x108uLL);
  sub_1DD3C9478(__dst, __src);
  v2 = MEMORY[0x1E69E7CC0];
  memcpy(__src, (v1 + 32), sizeof(__src));
  memcpy(v39, (v1 + 32), sizeof(v39));
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_102_0(KeyPath);
  v4 = sub_1DD621400();

  sub_1DD3C9580(__src);
  v5 = *(v4 + 16);
  v6 = *(v2 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_41;
  }

  if (!swift_isUniquelyReferenced_nonNull_native() || (v7 = *(v2 + 24) >> 1, v7 < v6 + v5))
  {
    sub_1DD3BFD44();
    v2 = v8;
    v7 = *(v8 + 24) >> 1;
  }

  if (*(v4 + 16))
  {
    v9 = *(v2 + 16);
    if (v7 - v9 >= v5)
    {
      OUTLINED_FUNCTION_76_3(v2 + 264 * v9);
      swift_arrayInitWithCopy();

      if (!v5)
      {
        goto LABEL_11;
      }

      v10 = *(v2 + 16);
      v11 = __OFADD__(v10, v5);
      v12 = v10 + v5;
      if (!v11)
      {
        *(v2 + 16) = v12;
        goto LABEL_11;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return;
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v5)
  {
LABEL_41:
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
    __break(1u);
    goto LABEL_48;
  }

LABEL_11:
  swift_setDeallocating();
  sub_1DD46CBB4();
  v13 = 0;
  v14 = *(v2 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = 32;
  while (v14 != v13)
  {
    if (v13 >= *(v2 + 16))
    {
      goto LABEL_42;
    }

    memcpy(__src, (v2 + v16), sizeof(__src));
    memcpy(v39, __src, sizeof(v39));
    v17 = swift_getKeyPath();
    OUTLINED_FUNCTION_102_0(v17);
    v18 = sub_1DD621400();

    sub_1DD3C9580(__src);
    v19 = *(v18 + 16);
    v20 = *(v15 + 16);
    if (__OFADD__(v20, v19))
    {
      goto LABEL_43;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v21 = *(v15 + 24) >> 1, v21 < v20 + v19))
    {
      OUTLINED_FUNCTION_21_21();
      sub_1DD3BFD44();
      v15 = v22;
      v21 = *(v22 + 24) >> 1;
    }

    if (*(v18 + 16))
    {
      v23 = *(v15 + 16);
      if (v21 - v23 < v19)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_76_3(v15 + 264 * v23);
      swift_arrayInitWithCopy();

      if (v19)
      {
        v24 = *(v15 + 16);
        v11 = __OFADD__(v24, v19);
        v25 = v24 + v19;
        if (v11)
        {
          goto LABEL_52;
        }

        *(v15 + 16) = v25;
      }
    }

    else
    {

      if (v19)
      {
        goto LABEL_44;
      }
    }

    v16 += 264;
    ++v13;
  }

  v26 = 0;
  v27 = *(v15 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v29 = 32;
  while (v27 != v26)
  {
    if (v26 >= *(v15 + 16))
    {
      goto LABEL_45;
    }

    memcpy(__src, (v15 + v29), sizeof(__src));
    memcpy(v39, __src, sizeof(v39));
    v30 = swift_getKeyPath();
    OUTLINED_FUNCTION_102_0(v30);
    v31 = sub_1DD621400();

    sub_1DD3C9580(__src);
    v32 = *(v31 + 16);
    v33 = *(v28 + 16);
    if (__OFADD__(v33, v32))
    {
      goto LABEL_46;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || (v34 = *(v28 + 24) >> 1, v34 < v33 + v32))
    {
      sub_1DD3BFD44();
      v28 = v35;
      v34 = *(v35 + 24) >> 1;
    }

    if (*(v31 + 16))
    {
      v36 = *(v28 + 16);
      if (v34 - v36 < v32)
      {
        goto LABEL_50;
      }

      OUTLINED_FUNCTION_76_3(v28 + 264 * v36);
      swift_arrayInitWithCopy();

      if (v32)
      {
        v37 = *(v28 + 16);
        v11 = __OFADD__(v37, v32);
        v38 = v37 + v32;
        if (v11)
        {
          goto LABEL_53;
        }

        *(v28 + 16) = v38;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_47;
      }
    }

    v29 += 264;
    ++v26;
  }

  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD61545C@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v165 = a3;
  v157 = a2;
  v151 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v163 = *(v5 - 8);
  v6 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v164 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v166 = &v148 - v9;
  v10 = sub_1DD63F9C8();
  v152 = *(v10 - 8);
  v153 = v10;
  v11 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v154 = &v148 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Signpost();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v148 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  memcpy(v170, a1, 0x108uLL);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v17 = qword_1EE16F0C0;
    v18 = v16 + *(v13 + 20);
    *v18 = "UCG.GenerateCandidatesForQuery";
    *(v18 + 1) = 30;
    v18[16] = 2;
    v19 = v17;
    sub_1DD63F9B8();
    *(v16 + *(v13 + 24)) = v19;
    v20 = v19;
    sub_1DD6404D8();
    v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v21 = swift_allocObject();
    v160 = xmmword_1DD643F90;
    *(v21 + 16) = xmmword_1DD643F90;
    v22 = sub_1DD6408F8();
    v24 = v23;
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v159 = sub_1DD392BD8();
    *(v21 + 64) = v159;
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    v146 = v21;
    v145 = 2;
    v144 = 22;
    v155 = v16;
    v156 = v20;
    sub_1DD63F998();

    type metadata accessor for ContactSearchResultCollector();
    swift_allocObject();
    v25 = sub_1DD60B0DC();
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    v27 = __swift_project_value_buffer(v26, qword_1EE16F068);
    sub_1DD3C9478(v170, v169);
    v162 = v27;
    v28 = sub_1DD63F9D8();
    v29 = sub_1DD640368();
    sub_1DD3C9580(v170);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v171 = v31;
      *v30 = 136315138;
      memcpy(v168, v170, sizeof(v168));
      sub_1DD3C9478(v170, v169);
      v32 = ContactQuery.description.getter();
      v34 = v33;
      memcpy(v169, v168, sizeof(v169));
      sub_1DD3C9580(v169);
      v35 = sub_1DD39565C(v32, v34, &v171);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1DD38D000, v28, v29, "[UCG] Looking at ASR candidate: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x1E12B3DA0](v31, -1, -1);
      MEMORY[0x1E12B3DA0](v30, -1, -1);
    }

    v36 = v157;
    memcpy(v169, v170, sizeof(v169));
    v37 = sub_1DD41E198();
    v158 = v25;
    if (v37)
    {
      goto LABEL_10;
    }

    v38 = v170[19] & 0xFFFFFFFFFFFFLL;
    if ((v170[20] & 0x2000000000000000) != 0)
    {
      v38 = HIBYTE(v170[20]) & 0xFLL;
    }

    if (v38)
    {
LABEL_10:
      memcpy(v169, v170, sizeof(v169));
      sub_1DD41E258();
      v40 = v39;
      MEMORY[0x1EEE9AC00](v39);
      v146 = v36;
      v41 = sub_1DD606844(sub_1DD6273A0, &v144, v40);
      v169[0] = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
      sub_1DD4477A4();
      v42 = sub_1DD63FD58();
      v44 = v43;

      v45 = sub_1DD63F9D8();
      v46 = sub_1DD640368();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v169[0] = v149;
        *v47 = 136315394;
        v48 = MEMORY[0x1E12B2430](v41, MEMORY[0x1E69E6158]);
        v150 = v44;
        v49 = v40;
        v50 = v48;
        v51 = v42;
        v53 = v52;

        v54 = sub_1DD39565C(v50, v53, v169);

        *(v47 + 4) = v54;
        v40 = v49;
        v55 = v150;
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_1DD39565C(v51, v55, v169);
        _os_log_impl(&dword_1DD38D000, v45, v46, "[UCG] Searching for contacts by name tokens: %s (%s)", v47, 0x16u);
        v56 = v149;
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v56, -1, -1);
        MEMORY[0x1E12B3DA0](v47, -1, -1);
      }

      else
      {
      }

      v57 = v167;
      sub_1DD61962C();
      if (v57)
      {

LABEL_15:
        sub_1DD6404C8();
        goto LABEL_16;
      }

      v61 = v58;
      v150 = v40;
      v167 = 0;

      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = (v61 + 64);
        do
        {
          v64 = *(v63 - 4);
          v65 = *(v63 - 3);
          v66 = *(v63 - 2);
          v67 = *(v63 - 1);
          v68 = *v63;
          v63 += 5;
          v169[0] = v64;
          v169[1] = v65;
          v169[2] = v66;
          v169[3] = v67;
          v169[4] = v68;

          sub_1DD60B15C(v169);

          --v62;
        }

        while (v62);
      }

      v69 = v150[2];
      if (v69)
      {
        v71 = v150[4];
        v70 = v150[5];

        if (v69 == 1)
        {

          v72 = sub_1DD63F9D8();
          v73 = sub_1DD640368();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v169[0] = v75;
            *v74 = 136315138;
            *(v74 + 4) = sub_1DD39565C(v71, v70, v169);
            _os_log_impl(&dword_1DD38D000, v72, v73, "[UCG] Searching for contacts by relationship using name field as relationship label: %s", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v75);
            MEMORY[0x1E12B3DA0](v75, -1, -1);
            MEMORY[0x1E12B3DA0](v74, -1, -1);
          }

          v169[0] = v71;
          v169[1] = v70;
          v76 = sub_1DD640048();
          v169[0] = 0;
          v169[1] = v76;
          v169[2] = v77;
          v78 = *(type metadata accessor for ContactResolverConfig(0) + 32);
          v79 = v167;
          sub_1DD61B8D4();
          v167 = v79;
          if (v79)
          {

            goto LABEL_15;
          }

          v114 = *(v80 + 16);
          if (v114)
          {
            v115 = (v80 + 64);
            do
            {
              v116 = *(v115 - 4);
              v117 = *(v115 - 3);
              v118 = *(v115 - 2);
              v119 = *(v115 - 1);
              v120 = *v115;
              v115 += 5;
              v169[0] = v116;
              v169[1] = v117;
              v169[2] = v118;
              v169[3] = v119;
              v169[4] = v120;

              sub_1DD60B15C(v169);

              --v114;
            }

            while (v114);
          }
        }
      }
    }

    v81 = v170[23];
    if (v170[23])
    {
      v82 = v170[22];
      v83 = HIBYTE(v170[23]) & 0xFLL;
      if ((v170[23] & 0x2000000000000000) == 0)
      {
        v83 = v170[22] & 0xFFFFFFFFFFFFLL;
      }

      if (!v83)
      {
        v97 = v165;
        goto LABEL_52;
      }

      v84 = v170[21];
      sub_1DD41D254(v170[21], v170[22], v170[23]);

      v85 = sub_1DD63F9D8();
      v86 = sub_1DD640368();
      sub_1DD4178B4(v84, v82, v81);
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v150 = v84;
        v88 = v87;
        v89 = swift_slowAlloc();
        LODWORD(v149) = v86;
        v90 = v89;
        v169[0] = v89;
        *v88 = 136315138;

        v91 = v82;
        v92 = sub_1DD39565C(v82, v81, v169);

        *(v88 + 4) = v92;
        v82 = v91;
        _os_log_impl(&dword_1DD38D000, v85, v149, "[UCG] Searching for contacts by relationship label: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v90);
        MEMORY[0x1E12B3DA0](v90, -1, -1);
        v93 = v88;
        v84 = v150;
        MEMORY[0x1E12B3DA0](v93, -1, -1);
      }

      v94 = v167;
      v169[0] = v84;
      v169[1] = v82;
      v169[2] = v81;
      v95 = *(type metadata accessor for ContactResolverConfig(0) + 32);
      sub_1DD61B8D4();
      if (v94)
      {

        sub_1DD4178B4(v84, v82, v81);
        goto LABEL_15;
      }

      v149 = v82;
      v150 = v84;
      v167 = 0;
      v98 = *(v96 + 16);
      if (v98)
      {
        v99 = (v96 + 64);
        do
        {
          v100 = *(v99 - 4);
          v101 = *(v99 - 3);
          v102 = *(v99 - 2);
          v103 = *(v99 - 1);
          v104 = *v99;
          v99 += 5;
          v169[0] = v100;
          v169[1] = v101;
          v169[2] = v102;
          v169[3] = v103;
          v169[4] = v104;

          sub_1DD60B15C(v169);

          --v98;
        }

        while (v98);
      }

      v106 = v149;
      v105 = v150;
      sub_1DD41D254(v150, v149, v81);
      v107 = sub_1DD63F9D8();
      v108 = sub_1DD640368();
      sub_1DD4178B4(v105, v106, v81);
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v169[0] = v110;
        *v109 = 136315138;

        v111 = sub_1DD39565C(v106, v81, v169);

        *(v109 + 4) = v111;
        v106 = v149;
        _os_log_impl(&dword_1DD38D000, v107, v108, "[UCG] Searching for contacts by name using the relationship label as a search term: %s", v109, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v110);
        MEMORY[0x1E12B3DA0](v110, -1, -1);
        MEMORY[0x1E12B3DA0](v109, -1, -1);
      }

      v112 = v167;
      sub_1DD61962C();
      if (v112)
      {
        sub_1DD4178B4(v150, v106, v81);

        goto LABEL_15;
      }

      v167 = 0;
      v121 = *(v113 + 16);
      if (v121)
      {
        v122 = (v113 + 64);
        do
        {
          v123 = *(v122 - 4);
          v124 = *(v122 - 3);
          v125 = *(v122 - 2);
          v126 = *(v122 - 1);
          v127 = *v122;
          v122 += 5;
          v169[0] = v123;
          v169[1] = v124;
          v169[2] = v125;
          v169[3] = v126;
          v169[4] = v127;

          sub_1DD60B15C(v169);

          --v121;
        }

        while (v121);
      }

      sub_1DD4178B4(v150, v149, v81);
    }

    v97 = v165;
LABEL_52:
    v128 = v156;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    v129 = swift_allocObject();
    *(v129 + 16) = v160;
    v130 = sub_1DD6408F8();
    v131 = v159;
    *(v129 + 56) = MEMORY[0x1E69E6158];
    *(v129 + 64) = v131;
    *(v129 + 32) = v130;
    *(v129 + 40) = v132;
    v146 = v129;
    v145 = 2;
    v144 = 22;
    sub_1DD63F998();

    memcpy(v169, v170, sizeof(v169));
    v13 = sub_1DD60B7C0(v169);
    v133 = *(v13 + 16);
    v134 = v164;
    if (!v133)
    {
      break;
    }

    v150 = v128;
    v169[0] = MEMORY[0x1E69E7CC0];
    *&v160 = v133;
    sub_1DD42B4F8();
    v135 = 0;
    v136 = v169[0];
    v159 = (*(v163 + 80) + 32) & ~*(v163 + 80);
    v161 = v13;
    v162 = v13 + v159;
    v16 = &qword_1DD644470;
    v137 = v167;
    while (v135 < *(v13 + 16))
    {
      v138 = *(v163 + 72);
      sub_1DD3EB3D0(v162 + v138 * v135, v134, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD6166B4(v134, v97, v168, v166);
      if (v137)
      {

        sub_1DD390754(v134, &qword_1ECCDBBE8, &qword_1DD644470);

        sub_1DD6404C8();
        v140 = v154;
        sub_1DD63F9A8();

        (*(v152 + 8))(v140, v153);
        goto LABEL_15;
      }

      v167 = 0;
      sub_1DD390754(v134, &qword_1ECCDBBE8, &qword_1DD644470);
      v169[0] = v136;
      v139 = *(v136 + 16);
      if (v139 >= *(v136 + 24) >> 1)
      {
        sub_1DD42B4F8();
        v136 = v169[0];
      }

      ++v135;
      *(v136 + 16) = v139 + 1;
      sub_1DD3EB4B8(v166, v136 + v159 + v139 * v138, &qword_1ECCDBBE8, &qword_1DD644470);
      v137 = v167;
      v134 = v164;
      v97 = v165;
      v13 = v161;
      if (v160 == v135)
      {

        goto LABEL_62;
      }
    }

    __break(1u);
LABEL_65:
    swift_once();
  }

  v136 = MEMORY[0x1E69E7CC0];
LABEL_62:
  MEMORY[0x1EEE9AC00](v141);
  v146 = v97;
  v147 = v157;
  v142 = sub_1DD605AC0(sub_1DD627A80, &v144, v136);

  sub_1DD6404C8();
  v143 = v154;
  sub_1DD63F9A8();

  (*(v152 + 8))(v143, v153);
  *v151 = v142;
  sub_1DD6404C8();
LABEL_16:
  v59 = v155;
  sub_1DD63F9A8();
  return sub_1DD627210(v59, type metadata accessor for Signpost);
}

uint64_t sub_1DD616578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - v8;
  v10 = a1[1];
  v17[0] = *a1;
  v17[1] = v10;
  v11 = *(type metadata accessor for ContactResolverConfig(0) + 32);
  v12 = sub_1DD63D168();
  (*(*(v12 - 8) + 16))(v9, a2 + v11, v12);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_1DD3B7F10();
  v13 = sub_1DD640648();
  v15 = v14;
  result = sub_1DD390754(v9, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *a3 = v13;
  a3[1] = v15;
  return result;
}

uint64_t sub_1DD6166B4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v197 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v193 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v191 = (&v181 - v12);
  MEMORY[0x1EEE9AC00](v13);
  v194 = (&v181 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v192 = (&v181 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v195 = &v181 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v181 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v181 - v28;
  v196 = a2;
  sub_1DD3EB3D0(a2 + 56, &v202, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (!v203)
  {
    sub_1DD390754(&v202, &qword_1ECCDCF48, &unk_1DD664BF0);
    return sub_1DD3EB3D0(a1, a4, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v189 = v29;
  v190 = v8;
  sub_1DD3AA4A8(&v202, v204);
  v198 = a1;
  v30 = *a1;
  v31 = a1[1];
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {
    __swift_destroy_boxed_opaque_existential_1(v204);
    a1 = v198;
    return sub_1DD3EB3D0(a1, a4, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v188 = a4;
  v34 = v205;
  v33 = v206;
  __swift_project_boxed_opaque_existential_1(v204, v205);
  v35 = (*(v33 + 24))(v30, v31, v34, v33);
  if (v4)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v204);
    *v197 = v4;
    return result;
  }

  if (v35)
  {
    sub_1DD40B108();
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v195;
  v39 = type metadata accessor for Contact();
  v40 = __swift_storeEnumTagSinglePayload(v22, v37, 1, v39);
  MEMORY[0x1EEE9AC00](v40);
  *(&v181 - 2) = v198;
  v41 = v189;
  sub_1DD3ECA40(sub_1DD6273A8, (&v181 - 4), v208, v42, v43, v44, v45, v46, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192);
  sub_1DD390754(v22, &qword_1ECCDC268, &qword_1DD64CE00);
  sub_1DD3EB3D0(v41, v26, &qword_1ECCDFC10, &unk_1DD664BA0);
  v47 = v190;
  if (__swift_getEnumTagSinglePayload(v26, 1, v190) == 1)
  {
    sub_1DD390754(v26, &qword_1ECCDFC10, &unk_1DD664BA0);
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v48 = sub_1DD63F9F8();
    __swift_project_value_buffer(v48, qword_1EE16F068);
    a1 = v198;
    v49 = v193;
    sub_1DD3EB3D0(v198, v193, &qword_1ECCDBBE8, &qword_1DD644470);
    v50 = sub_1DD63F9D8();
    v51 = sub_1DD640368();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v202 = v53;
      *v52 = 136315138;
      v54 = v49;
      v55 = *v49;
      v56 = *(v54 + 8);

      sub_1DD390754(v54, &qword_1ECCDBBE8, &qword_1DD644470);
      v57 = sub_1DD39565C(v55, v56, &v202);

      *(v52 + 4) = v57;
      _os_log_impl(&dword_1DD38D000, v50, v51, "[UCG] Unable to find candidate %s in the contact store. Skipping hydration of it...", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x1E12B3DA0](v53, -1, -1);
      MEMORY[0x1E12B3DA0](v52, -1, -1);
    }

    else
    {

      sub_1DD390754(v49, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    sub_1DD390754(v189, &qword_1ECCDFC10, &unk_1DD664BA0);
    a4 = v188;
    __swift_destroy_boxed_opaque_existential_1(v204);
    return sub_1DD3EB3D0(a1, a4, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  sub_1DD3EB4B8(v26, v38, &qword_1ECCDBBE8, &qword_1DD644470);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v58 = sub_1DD63F9F8();
  v59 = __swift_project_value_buffer(v58, qword_1EE16F068);
  v60 = v192;
  sub_1DD3EB3D0(v198, v192, &qword_1ECCDBBE8, &qword_1DD644470);
  v187 = v59;
  v61 = sub_1DD63F9D8();
  v62 = sub_1DD640368();
  v63 = os_log_type_enabled(v61, v62);
  v186 = 0;
  if (v63)
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v202 = v65;
    *v64 = 136315394;
    v66 = v60;
    v67 = *v60;
    v68 = v60[1];

    sub_1DD390754(v66, &qword_1ECCDBBE8, &qword_1DD644470);
    v69 = sub_1DD39565C(v67, v68, &v202);

    *(v64 + 4) = v69;
    *(v64 + 12) = 2080;
    swift_beginAccess();
    v70 = Contact.description.getter();
    v72 = sub_1DD39565C(v70, v71, &v202);

    *(v64 + 14) = v72;
    _os_log_impl(&dword_1DD38D000, v61, v62, "[UCG] Found candidate %s in address book: %s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v65, -1, -1);
    MEMORY[0x1E12B3DA0](v64, -1, -1);
  }

  else
  {

    sub_1DD390754(v60, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  v73 = v198;
  v74 = v198 + *(v47 + 36);
  memcpy(v207, (v74 + 8), 0x108uLL);
  v75 = (v196 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
  v76 = *(v196 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 24);
  v77 = *(v196 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 32);
  v78 = __swift_project_boxed_opaque_existential_1((v196 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer), v76);
  v195 = sub_1DD4179C4(v78, 0, v207, v76, v77);
  v193 = type metadata accessor for ContactResolver.SignalSet(0);
  v79 = *(v193 + 132);
  v183 = v74;
  v80 = (v74 + v79);
  v81 = *(v74 + v79 + 32);
  if (v81)
  {
    v82 = v80[3];
    v83 = v75[3];
    v84 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v83);
    v85 = sub_1DD5E8CD4(v82, v81, v83, v84);
    v86 = sub_1DD41859C(v85);
  }

  else
  {
    v87 = v75[3];
    v88 = v75[4];
    v89 = __swift_project_boxed_opaque_existential_1(v75, v87);
    v86 = sub_1DD417B78(v89, 0, v73, v87, v88);
  }

  v197 = v86;
  swift_beginAccess();
  v90 = v75[3];
  v91 = v75[4];
  v92 = __swift_project_boxed_opaque_existential_1(v75, v90);
  v93 = sub_1DD417B78(v92, 0, v38, v90, v91);
  v94 = v80[6];
  v184 = v75;
  if (v94)
  {
    v95 = v80[5];
    v96 = v75[3];
    v97 = v75[4];
    __swift_project_boxed_opaque_existential_1(v75, v96);
    v98 = sub_1DD5E8CD4(v95, v94, v96, v97);
    v99 = sub_1DD41859C(v98);
    v100 = v198;
  }

  else
  {
    v101 = v75[3];
    v102 = v75[4];
    v103 = __swift_project_boxed_opaque_existential_1(v75, v101);
    v100 = v198;
    v99 = sub_1DD417B78(v103, 0, v198, v101, v102);
  }

  v192 = v99;
  v104 = v100;
  v105 = v194;
  sub_1DD3EB3D0(v104, v194, &qword_1ECCDBBE8, &qword_1DD644470);
  v106 = v195;

  v107 = sub_1DD63F9D8();
  v108 = sub_1DD640368();

  v185 = v93;

  HIDWORD(v182) = v108;
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v201[0] = v181;
    *v109 = 136316162;
    v110 = *v105;
    v111 = v105[1];

    sub_1DD390754(v105, &qword_1ECCDBBE8, &qword_1DD644470);
    v112 = sub_1DD39565C(v110, v111, v201);

    *(v109 + 4) = v112;
    *(v109 + 12) = 2080;
    v113 = sub_1DD640278();
    v115 = sub_1DD39565C(v113, v114, v201);

    *(v109 + 14) = v115;
    *(v109 + 22) = 2080;
    v116 = sub_1DD640278();
    v118 = sub_1DD39565C(v116, v117, v201);

    *(v109 + 24) = v118;
    *(v109 + 32) = 2080;
    v119 = v185;
    v120 = sub_1DD640278();
    v122 = sub_1DD39565C(v120, v121, v201);

    *(v109 + 34) = v122;
    *(v109 + 42) = 2080;
    v123 = v190;
    v124 = sub_1DD640278();
    v126 = sub_1DD39565C(v124, v125, v201);

    *(v109 + 44) = v126;
    _os_log_impl(&dword_1DD38D000, v107, BYTE4(v182), "[UCG] Candidate %s match:\n  queryTokens=%s matchedQueryTokens=%s\n  contactTokens=%s matchedContactTokens=%s", v109, 0x34u);
    v127 = v181;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v127, -1, -1);
    v128 = v109;
    v106 = v195;
    MEMORY[0x1E12B3DA0](v128, -1, -1);

    v129 = v193;
    v130 = v119;
  }

  else
  {

    sub_1DD390754(v105, &qword_1ECCDBBE8, &qword_1DD644470);
    v129 = v193;
    v123 = v190;
    v130 = v185;
  }

  v131 = sub_1DD5839F8(v192, v130);

  v132 = v184;
  if (v131)
  {
    v133 = *(v183 + 335) ^ 1;
  }

  else
  {
    v133 = 0;
  }

  v134 = v197;
  swift_beginAccess();
  v135 = v38 + *(v123 + 36);
  *(v135 + 334) = v133 & 1;
  v136 = v135 + v129[33];
  *(v136 + 9) = v133 & 1;
  *v136 = *(v130 + 16);

  v137 = sub_1DD5839F8(v134, v106);

  swift_beginAccess();
  v138 = v38 + *(v123 + 36);
  *(v138 + 333) = v137 & 1;
  *(v138 + v129[33] + 8) = v137 & 1;
  v139 = v106;
  v140 = *(v38 + 120);
  v141 = *(v38 + 128);
  v142 = HIBYTE(v141) & 0xF;
  if ((v141 & 0x2000000000000000) == 0)
  {
    v142 = v140 & 0xFFFFFFFFFFFFLL;
  }

  if (v142)
  {
    v143 = v132[3];
    v144 = v132[4];
    __swift_project_boxed_opaque_existential_1(v132, v143);

    v145 = sub_1DD5E8CD4(v140, v141, v143, v144);

    v146 = sub_1DD41859C(v145);
    v147 = sub_1DD5839F8(v146, v139);

    v148 = v190;
    if (v147)
    {
      v149 = v191;
      sub_1DD3EB3D0(v198, v191, &qword_1ECCDBBE8, &qword_1DD644470);
      v150 = sub_1DD63F9D8();
      v151 = sub_1DD640368();
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v200 = v153;
        *v152 = 136315138;
        v154 = v149;
        v155 = *v149;
        v156 = *(v154 + 8);

        sub_1DD390754(v154, &qword_1ECCDBBE8, &qword_1DD644470);
        v157 = sub_1DD39565C(v155, v156, &v200);
        v129 = v193;

        *(v152 + 4) = v157;
        _os_log_impl(&dword_1DD38D000, v150, v151, "[UCG] Candidate %s is an exact nickname match. Overriding exact match signals...", v152, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x1E12B3DA0](v153, -1, -1);
        MEMORY[0x1E12B3DA0](v152, -1, -1);
      }

      else
      {

        sub_1DD390754(v149, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      swift_beginAccess();
      v158 = v38 + *(v148 + 36);
      *(v158 + 333) = 1;
      *(v158 + v129[33] + 8) = 1;
    }
  }

  else
  {

    v148 = v190;
  }

  swift_beginAccess();
  *(v38 + *(v148 + 36) + v129[59]) = 1;
  v159 = *(v38 + 216);
  *(v38 + 216) = v198[27];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD664730;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  sub_1DD408BFC(0);
  sub_1DD408BFC(2);
  v161 = 0;
  do
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E12B2C10](v161, inited);
    }

    else
    {
      v162 = *(inited + 8 * v161 + 32);
    }

    swift_beginAccess();
    swift_getAtKeyPath();
    v163 = v199;
    swift_endAccess();
    if (v163)
    {
      v164 = 1;
    }

    else
    {
      v164 = *(v38 + *(v148 + 36) + v129[36]);
    }

    ++v161;
    swift_beginAccess();
    v199 = v164;
    swift_setAtWritableKeyPath();
    swift_endAccess();
  }

  while (v161 != 3);
  swift_setDeallocating();
  sub_1DD46CABC();
  v165 = *(v196 + 104);
  if (!v165)
  {
    sub_1DD390754(v189, &qword_1ECCDFC10, &unk_1DD664BA0);
    goto LABEL_67;
  }

  v167 = *v38;
  v166 = *(v38 + 8);
  v168 = v165;

  v169 = [v168 identifier];
  v170 = sub_1DD63FDD8();
  v172 = v171;

  if (v167 == v170 && v166 == v172)
  {

    v175 = v193;
    goto LABEL_63;
  }

  v174 = sub_1DD640CD8();

  v175 = v193;
  if (v174)
  {
LABEL_63:
    v176 = [v168 identifier];
    v177 = sub_1DD63FDD8();
    v179 = v178;

    sub_1DD390754(v189, &qword_1ECCDFC10, &unk_1DD664BA0);

    v180 = HIBYTE(v179) & 0xF;
    if ((v179 & 0x2000000000000000) == 0)
    {
      v180 = v177 & 0xFFFFFFFFFFFFLL;
    }

    if (v180)
    {
      swift_beginAccess();
      *(v38 + 16) = 1;
      *(v38 + *(v190 + 36) + *(v175 + 136)) = 1;
    }

    goto LABEL_67;
  }

  sub_1DD390754(v189, &qword_1ECCDFC10, &unk_1DD664BA0);

LABEL_67:
  sub_1DD3EB3D0(v38, v188, &qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD390754(v38, &qword_1ECCDBBE8, &qword_1DD644470);
  return __swift_destroy_boxed_opaque_existential_1(v204);
}

uint64_t sub_1DD617864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DD6271B8(a1, a3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  return sub_1DD6271B8(a2 + *(v5 + 36), a3 + *(v5 + 36));
}

uint64_t sub_1DD6178EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1DD6178F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = type metadata accessor for ContactResolver.SignalSet(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v49 - v12);
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD63F9F8();
  v15 = __swift_project_value_buffer(v14, qword_1EE16F068);
  sub_1DD3EB3D0(a1, v13, &qword_1ECCDBBE8, &qword_1DD644470);
  v55 = v15;
  v16 = sub_1DD63F9D8();
  v17 = sub_1DD640368();
  v18 = os_log_type_enabled(v16, v17);
  v52 = v8;
  v53 = v5;
  v51 = v9;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v56 = v20;
    *v19 = 136315138;
    v21 = a1;
    v22 = a2;
    v24 = *v13;
    v23 = v13[1];

    sub_1DD390754(v13, &qword_1ECCDBBE8, &qword_1DD644470);
    v25 = sub_1DD39565C(v24, v23, &v56);

    *(v19 + 4) = v25;
    a2 = v22;
    a1 = v21;
    _os_log_impl(&dword_1DD38D000, v16, v17, "[UCG] We found candidate %s multiple ways - attempting to de-duplicate it...", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12B3DA0](v20, -1, -1);
    MEMORY[0x1E12B3DA0](v19, -1, -1);
  }

  else
  {

    sub_1DD390754(v13, &qword_1ECCDBBE8, &qword_1DD644470);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCB38, &qword_1DD664C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 10;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 10;
  *(inited + 64) = swift_getKeyPath();
  *(inited + 72) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
  v27 = *(v10 + 72);
  v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DD643F80;
  sub_1DD3EB3D0(a1, v29 + v28, &qword_1ECCDBBE8, &qword_1DD644470);
  sub_1DD3EB3D0(a2, v29 + v28 + v27, &qword_1ECCDBBE8, &qword_1DD644470);
  v56 = v29;

  sub_1DD6080E8(&v56, inited);
  swift_setDeallocating();
  sub_1DD46CC94();

  v30 = v56;

  v31 = sub_1DD63F9D8();
  v32 = sub_1DD640368();

  if (!os_log_type_enabled(v31, v32))
  {

    goto LABEL_11;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v56 = v34;
  *v33 = 136315650;
  if (!v30[2])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v49 = v34;
  v50 = v32;
  v55 = v28;
  v35 = v30 + v28;
  v36 = *(v30 + v28);
  v37 = *(v30 + v28 + 8);

  v38 = sub_1DD39565C(v36, v37, &v56);

  *(v33 + 4) = v38;
  *(v33 + 12) = 2080;
  v39 = v51;
  v40 = v52;
  sub_1DD6271B8(&v35[*(v51 + 36)], v52);
  v41 = sub_1DD63FE38();
  v43 = sub_1DD39565C(v41, v42, &v56);

  *(v33 + 14) = v43;
  *(v33 + 22) = 2080;
  if (v30[2] >= 2uLL)
  {
    sub_1DD6271B8(&v35[v27 + *(v39 + 36)], v40);
    v44 = sub_1DD63FE38();
    v46 = sub_1DD39565C(v44, v45, &v56);

    *(v33 + 24) = v46;
    _os_log_impl(&dword_1DD38D000, v31, v50, "[UCG] Picking match [a] over [b] in de-dup for %s:\n  [a] %s\n  [b] %s", v33, 0x20u);
    v47 = v49;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v47, -1, -1);
    MEMORY[0x1E12B3DA0](v33, -1, -1);

    v28 = v55;
LABEL_11:
    if (v30[2])
    {
      sub_1DD3EB3D0(v30 + v28, v54, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DD617EDC()
{

  sub_1DD3EC3B8();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1DD42B97C();
    v3 = v13;
    v4 = *(v13 + 16);
    v5 = 40;
    do
    {
      v6 = *(v1 + v5);
      if (v4 >= *(v13 + 24) >> 1)
      {
        sub_1DD42B97C();
      }

      *(v13 + 16) = v4 + 1;
      *(v13 + 8 * v4 + 32) = v6;
      v5 += 16;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = (v3 + 32);
    while (1)
    {
      v11 = *v10++;
      v12 = __OFADD__(v9, v11);
      v9 += v11;
      if (v12)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
LABEL_14:

    return v9;
  }

  return result;
}

uint64_t sub_1DD618034(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  swift_getAtKeyPath();
  return v5;
}

uint64_t sub_1DD618094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v29 - v7);
  v10 = (a1 + *(v9 + 44));
  v11 = type metadata accessor for ContactResolver.SignalSet(0);
  if (v10[*(v11 + 204)])
  {
    v12 = 1;
  }

  else
  {
    v12 = v10[*(v11 + 236)] ^ 1;
  }

  memcpy(v29, v10 + 8, 0x108uLL);
  sub_1DD41E024();
  v14 = *(v13 + 16);

  v15 = *(sub_1DD40FB18() + 16);

  result = 1;
  if (v14 && v15 && (v12 & 1) == 0 && (v10[333] & 1) == 0 && (v10[334] & 1) == 0)
  {
    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16F068);
    sub_1DD3EB3D0(a1, v8, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD3EB3D0(a1, v5, &qword_1ECCDBBE8, &qword_1DD644470);
    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640368();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v29[0] = v30;
      *v20 = 136315394;
      v21 = *v8;
      v22 = v8[1];

      sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
      v23 = sub_1DD39565C(v21, v22, v29);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2080;
      v24 = sub_1DD5590A8();
      v26 = v25;
      sub_1DD390754(v5, &qword_1ECCDBBE8, &qword_1DD644470);
      v27 = sub_1DD39565C(v24, v26, v29);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1DD38D000, v18, v19, "[UCG] Discarding overmatched candidate %s (queryOvermatch && nameOvermatch): %s", v20, 0x16u);
      v28 = v30;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v28, -1, -1);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
    }

    else
    {

      sub_1DD390754(v5, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v8, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    return 0;
  }

  return result;
}

BOOL sub_1DD618420(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4[2] = a2;
  return sub_1DD450638(sub_1DD45D6DC, v4, v2);
}

void sub_1DD618464()
{
  OUTLINED_FUNCTION_18_4();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_14();
  v8 = sub_1DD63D0F8();
  v9 = OUTLINED_FUNCTION_0(v8);
  v65 = v10;
  v66 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v67 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v15 = OUTLINED_FUNCTION_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_82_3();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_3();
  v62 = v20;
  v21 = OUTLINED_FUNCTION_6_2();
  v22 = type metadata accessor for InferenceEuclidLog(v21);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  sub_1DD4B8C28(v7, v1);
  v63 = v1;
  v25 = v1 + *(v23 + 28);
  v60 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v26 = v25 + *(v60 + 28);
  if (*(v26 + 8) != 1)
  {
    v27 = *(v3 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 48);
    *(v26 + 16) = v27;
    *(v26 + 20) = 0;
  }

  v61 = v25;
  v64 = v3;
  v28 = *(v5 + 16);
  if (v28)
  {
    v29 = (v5 + 32);
    v30 = MEMORY[0x1E69E7CC0];
    v31 = v66;
    v32 = (v65 + 32);
    do
    {
      v33 = *v29++;
      sub_1DD63D088();
      OUTLINED_FUNCTION_8(v2, 1, v31);
      if (v34)
      {
        sub_1DD390754(v2, &qword_1ECCDBAC8, &qword_1DD643E60);
      }

      else
      {
        v35 = *v32;
        (*v32)(v67, v2, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = *(v30 + 16);
          OUTLINED_FUNCTION_26_2();
          sub_1DD3BED30();
          v30 = v43;
        }

        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v37);
          OUTLINED_FUNCTION_21_21();
          sub_1DD3BED30();
          v30 = v44;
        }

        *(v30 + 16) = v38 + 1;
        v31 = v66;
        OUTLINED_FUNCTION_18_3();
        v41 = v30 + v39 + *(v40 + 72) * v38;
        v32 = (v65 + 32);
        v35(v41, v67, v66);
      }

      --v28;
    }

    while (v28);
  }

  else
  {
    v30 = MEMORY[0x1E69E7CC0];
  }

  v45 = *(v60 + 20);
  v46 = *(v61 + v45);

  *(v61 + v45) = v30;
  v47 = *(v64 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 8);
  v48 = *(v64 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 16);

  if (sub_1DD607064() == 3)
  {
    OUTLINED_FUNCTION_65_0();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v66);
  }

  else
  {
    sub_1DD6080A0();
  }

  sub_1DD627334(v62, v61, &qword_1ECCDBAC8, &qword_1DD643E60);
  v52 = *(v64 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config + 8);
  v53 = *(v64 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config + 16);
  sub_1DD5AC168();
  v54 = *v63;
  v55 = v63[8];
  v56 = *(v63 + 1);
  sub_1DD5AC8AC();
  OUTLINED_FUNCTION_68_4();
  sub_1DD390754(v57, v58, v59);
  sub_1DD627210(v63, type metadata accessor for InferenceEuclidLog);
  OUTLINED_FUNCTION_17();
}

unint64_t sub_1DD61884C(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F068);

  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();

  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_18_1();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E12B2430](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1DD39565C(v9, v10, &v28);

    *(v7 + 4) = v11;
    OUTLINED_FUNCTION_78_3();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v18 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v18);
    v19 = OUTLINED_FUNCTION_12_49();
    MEMORY[0x1E12B3DA0](v19);
  }

  if (!*(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v21 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 40);
  v20 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 48);
  v23 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 24);
  v22 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 32);
  v24 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer;
  v25 = *(v2 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator);

  v26 = sub_1DD4B822C(a1, v22, v23, (v2 + v24), v20, v21);

  return v26;
}

uint64_t sub_1DD618B58(uint64_t a1, const void *a2)
{
  memcpy(v12, a2, sizeof(v12));
  sub_1DD3EB3D0(v2 + 56, &v9, &qword_1ECCDCF48, &unk_1DD664BF0);
  if (v10)
  {
    v5 = sub_1DD3AA4A8(&v9, v11);
    MEMORY[0x1EEE9AC00](v5);
    OUTLINED_FUNCTION_31_0();
    *(v6 - 16) = v11;
    *(v6 - 8) = v12;
    sub_1DD5E7B34(sub_1DD626C34, v7, a1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    if (v3)
    {
      return OUTLINED_FUNCTION_128_0();
    }
  }

  else
  {
    sub_1DD390754(&v9, &qword_1ECCDCF48, &unk_1DD664BF0);
  }

  sub_1DD619204();

  return OUTLINED_FUNCTION_128_0();
}

void *sub_1DD618C84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v61 = a3;
  v60 = type metadata accessor for ContactResolver.SignalSet(0);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DD63CD18();
  v58 = *(v8 - 8);
  v59 = v8;
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Contact();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v53 - v17;
  v19 = *(a1 + 8);
  v63 = *a1;
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v24 = v65;
  result = (*(v22 + 24))(v19, v20, v23, v22);
  if (!v24)
  {
    v57 = v11;
    v65 = v18;
    v26 = v64;
    if (result)
    {
      v27 = result;
      v28 = v65;
      v56 = v27;
      sub_1DD40B108();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v29 = sub_1DD63F9F8();
      __swift_project_value_buffer(v29, qword_1EE16F068);
      sub_1DD6271B8(v28, v15);
      v30 = v63;

      v31 = sub_1DD63F9D8();
      v32 = sub_1DD640368();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v55 = v32;
        v35 = v34;
        v67[0] = v34;
        *v33 = 136315394;
        v36 = v26;
        v37 = v15;
        v38 = v57;
        v54 = v31;
        Contact.nameComponents.getter();
        v39 = sub_1DD63CCF8();
        v41 = v40;
        (*(v58 + 8))(v38, v59);
        v42 = v37;
        v26 = v36;
        sub_1DD627210(v42, type metadata accessor for Contact);
        v43 = sub_1DD39565C(v39, v41, v67);
        v30 = v63;

        *(v33 + 4) = v43;
        *(v33 + 12) = 2048;
        *(v33 + 14) = v21;
        v44 = v54;
        _os_log_impl(&dword_1DD38D000, v54, v55, "[UCG][ASR-E3] Euclid candidate found: %s, with score: %f", v33, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v35);
        v28 = v65;
        MEMORY[0x1E12B3DA0](v35, -1, -1);
        MEMORY[0x1E12B3DA0](v33, -1, -1);
      }

      else
      {

        sub_1DD627210(v15, type metadata accessor for Contact);
      }

      v46 = v61;
      v47 = v62;
      v48 = v60;
      sub_1DD43038C(v62);
      memcpy(v67, (v47 + 8), 0x108uLL);
      sub_1DD3C9478(v46, &v66);
      sub_1DD3C9580(v67);
      memcpy((v47 + 8), v46, 0x108uLL);
      *(v47 + *(v48 + 232)) = 1;
      v49 = sub_1DD47F270(1, v30);
      v50 = v30;
      v51 = (v47 + *(v48 + 132));
      v51[10] = v49 & 1;
      v51[11] = sub_1DD47F270(4, v50) & 1;
      v51[12] = sub_1DD47F270(2, v50) & 1;
      v51[15] = sub_1DD47F270(16, v50) & 1;
      LOBYTE(v50) = sub_1DD47F270(32, v50);

      v51[8] = v50 & 1;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD6271B8(v47, v26 + *(v52 + 36));
      sub_1DD627288(v28, v26);
      __swift_storeEnumTagSinglePayload(v26, 0, 1, v52);
      return sub_1DD627210(v47, type metadata accessor for ContactResolver.SignalSet);
    }

    else
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
      return __swift_storeEnumTagSinglePayload(v26, 1, 1, v45);
    }
  }

  return result;
}

void sub_1DD619204()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v6 = OUTLINED_FUNCTION_0(v80);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v13 = (v11 - v12);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_82_3();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_3();
  v17 = *(v3 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v83 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_54_10();
    sub_1DD42B4F8();
    v18 = v83;
    v79 = (v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
    v74 = v0;
    v19 = *(v0 + 104);
    v20 = *(v8 + 80);
    OUTLINED_FUNCTION_24_0();
    v78 = v21;
    v23 = v3 + v22;
    v77 = *(v8 + 72);
    v75 = v13;
    while (1)
    {
      v82 = v17;
      OUTLINED_FUNCTION_19();
      OUTLINED_FUNCTION_22_19();
      sub_1DD3EB3D0(v24, v25, v26, v27);
      OUTLINED_FUNCTION_22_19();
      sub_1DD3EB3D0(v28, v29, v30, v31);
      v32 = v79[3];
      v33 = v79[4];
      v34 = __swift_project_boxed_opaque_existential_1(v79, v32);
      v35 = *(sub_1DD417B78(v34, 0, v13, v32, v33) + 16);

      v36 = v13 + *(v80 + 36);
      v37 = type metadata accessor for ContactResolver.SignalSet(0);
      *&v36[*(v37 + 132)] = v35;
      v36[*(v37 + 236)] = 1;
      if (v78)
      {
        v38 = v37;
        v76 = v36;
        v81 = v18;
        v40 = *v13;
        v39 = v13[1];
        v41 = v78;
        v42 = [v41 identifier];
        v43 = sub_1DD63FDD8();
        v45 = v44;

        if (v40 == v43 && v39 == v45)
        {

LABEL_12:
          v54 = [v41 identifier];
          v55 = sub_1DD63FDD8();
          v57 = v56;

          OUTLINED_FUNCTION_28_2();
          sub_1DD390754(v58, v59, v60);

          v61 = HIBYTE(v57) & 0xF;
          if ((v57 & 0x2000000000000000) == 0)
          {
            v61 = v55 & 0xFFFFFFFFFFFFLL;
          }

          v13 = v75;
          v18 = v81;
          if (v61)
          {
            *(v75 + 16) = 1;
            v76[*(v38 + 136)] = 1;
          }

          goto LABEL_16;
        }

        v47 = sub_1DD640CD8();

        if (v47)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_28_2();
        sub_1DD390754(v48, v49, v50);

        v13 = v75;
        v18 = v81;
      }

      else
      {
        OUTLINED_FUNCTION_28_2();
        sub_1DD390754(v51, v52, v53);
      }

LABEL_16:
      OUTLINED_FUNCTION_22_19();
      sub_1DD3EB4B8(v62, v63, v64, v65);
      v67 = *(v18 + 16);
      v66 = *(v18 + 24);
      if (v67 >= v66 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v66);
        sub_1DD42B4F8();
      }

      *(v18 + 16) = v67 + 1;
      OUTLINED_FUNCTION_22_19();
      v16 = sub_1DD3EB4B8(v68, v69, v70, v71);
      v23 += v77;
      v17 = v82 - 1;
      if (v82 == 1)
      {
        v1 = v74;
        break;
      }
    }
  }

  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_0();
  *(v72 - 16) = v1;
  *(v72 - 8) = v5;
  sub_1DD605AC0(sub_1DD626C14, v73, v18);

  OUTLINED_FUNCTION_17();
}

void sub_1DD61962C()
{
  OUTLINED_FUNCTION_93();
  v141 = v1;
  v143 = v0;
  v145 = v3;
  v146 = v2;
  v148 = sub_1DD63DE08();
  v4 = OUTLINED_FUNCTION_0(v148);
  v154 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v144 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCF38, &unk_1DD664750);
  OUTLINED_FUNCTION_3(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v137 - v13;
  v142 = type metadata accessor for AsrPhoneticSequenceFetcher();
  v15 = OUTLINED_FUNCTION_7(v142);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v147 = v18;
  OUTLINED_FUNCTION_6_2();
  v19 = type metadata accessor for Signpost();
  v20 = OUTLINED_FUNCTION_7(v19);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  i = v24 - v23;
  if (qword_1EE166460 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v26 = qword_1EE16F0C0;
    v27 = (i + *(v19 + 20));
    *v27 = "UCG.SearchForCandidatesByName";
    *(v27 + 1) = 29;
    v27[16] = 2;
    v28 = v26;
    sub_1DD63F9B8();
    *(i + *(v19 + 24)) = v28;
    v29 = v28;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1DD643F90;
    v31 = sub_1DD6408F8();
    v33 = v32;
    *(v30 + 56) = MEMORY[0x1E69E6158];
    *(v30 + 64) = sub_1DD392BD8();
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    OUTLINED_FUNCTION_22();
    v139 = v29;
    sub_1DD63F998();

    v34 = v143;
    sub_1DD3EB3D0(v143 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, v14, &qword_1ECCDCF38, &unk_1DD664750);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v142);
    v36 = v34;
    v140 = i;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DD390754(v14, &qword_1ECCDCF38, &unk_1DD664750);
      v37 = 0;
      v38 = v145;
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_34_19();
    sub_1DD627288(v14, v147);
    v38 = v145;
    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v39 = sub_1DD63F9F8();
    v40 = __swift_project_value_buffer(v39, qword_1EE16F068);

    v41 = sub_1DD63F9D8();
    sub_1DD640368();

    if (OUTLINED_FUNCTION_103_0())
    {
      OUTLINED_FUNCTION_18_1();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v43 = swift_slowAlloc();
      v149 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1DD39565C(v146, v38, &v149);
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v44, v45, v46, v47, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v49 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v49);
      v50 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v50);
    }

    v51 = [objc_allocWithZone(MEMORY[0x1E69D1140]) init];
    if (!v51)
    {
      break;
    }

    v37 = v51;
    v52 = sub_1DD3C98E4(v146, v38);
    if (!v52)
    {
LABEL_15:
      v57 = v37;
      v58 = sub_1DD63F9D8();
      sub_1DD640368();
      v59 = OUTLINED_FUNCTION_5_32();
      if (os_log_type_enabled(v59, v60))
      {
        OUTLINED_FUNCTION_18_1();
        v61 = swift_slowAlloc();
        *v61 = 134217984;
        *(v61 + 4) = [v57 asrTokensCount];

        OUTLINED_FUNCTION_38_8();
        _os_log_impl(v62, v63, v64, v65, v61, 0xCu);
        v66 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v66);
      }

      else
      {
      }

      OUTLINED_FUNCTION_38_16();
      goto LABEL_22;
    }

    v19 = v52;
    v142 = v40;
    v53 = 0;
    v14 = *(v52 + 16);
    for (i = v52 + 40; ; i += 16)
    {
      if (v14 == v53)
      {

        v38 = v145;
        v36 = v143;
        goto LABEL_15;
      }

      if (v53 >= *(v19 + 16))
      {
        break;
      }

      ++v53;
      v54 = *(i - 8);
      v55 = *i;
      sub_1DD39638C(0, &qword_1ECCDFEF0, 0x1E69D1148);
      swift_bridgeObjectRetain_n();
      v56 = sub_1DD3CA34C(v54, v55);
      [v37 addAsrTokens_];
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v67 = sub_1DD63F9D8();
  sub_1DD640368();
  v68 = OUTLINED_FUNCTION_5_32();
  if (os_log_type_enabled(v68, v69))
  {
    OUTLINED_FUNCTION_28();
    v70 = swift_slowAlloc();
    *v70 = 0;
    OUTLINED_FUNCTION_38_8();
    _os_log_impl(v71, v72, v73, v74, v70, 2u);
    v75 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v75);
  }

  OUTLINED_FUNCTION_38_16();
  v37 = 0;
LABEL_22:
  v76 = v141;
  v77 = v36[5];
  v19 = v36[6];
  __swift_project_boxed_opaque_existential_1(v36 + 2, v77);
  v78 = v36 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config;
  v79 = type metadata accessor for ContactResolverConfig(0);
  v80 = (*(v19 + 8))(v146, v38, &v78[*(v79 + 32)], v37, v77, v19);
  if (v76)
  {

    sub_1DD6404C8();
    v81 = v140;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v81, v82);
  }

  else
  {
    i = v80;
    v137[1] = 0;
    v138 = v37;
    v14 = sub_1DD3CC020(v80);
    v83 = 0;
    v147 = i & 0xC000000000000001;
    v84 = MEMORY[0x1E69E7CC0];
    while (v14 != v83)
    {
      if (v147)
      {
        v19 = MEMORY[0x1E12B2C10](v83, i);
      }

      else
      {
        if (v83 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v19 = *(i + 8 * v83 + 32);
      }

      if (__OFADD__(v83, 1))
      {
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      sub_1DD63E6B8();
      OUTLINED_FUNCTION_132();
      if (v149 || (sub_1DD63E958(), OUTLINED_FUNCTION_132(), v149))
      {
        v85 = sub_1DD63E308();

        if (v85)
        {
          v86 = v85;
        }

        else
        {
          v86 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {

        v86 = MEMORY[0x1E69E7CC0];
      }

      v19 = *(v86 + 16);
      v87 = *(v84 + 16);
      if (__OFADD__(v87, v19))
      {
        goto LABEL_70;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v87 + v19 > *(v84 + 24) >> 1)
      {
        sub_1DD3C11C4();
        v84 = v88;
      }

      if (*(v86 + 16))
      {
        v89 = *(v84 + 16);
        v90 = *(v84 + 24);
        OUTLINED_FUNCTION_51_10();
        if (v92 < v19)
        {
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_72_3(v91);
        swift_arrayInitWithCopy();

        if (v19)
        {
          v93 = *(v84 + 16);
          v94 = __OFADD__(v93, v19);
          v95 = v93 + v19;
          if (v94)
          {
            goto LABEL_74;
          }

          *(v84 + 16) = v95;
        }
      }

      else
      {

        if (v19)
        {
          goto LABEL_71;
        }
      }

      ++v83;
    }

    v96 = *(v84 + 16);
    if (v96)
    {
      v97 = *(v154 + 16);
      v98 = *(v154 + 80);
      OUTLINED_FUNCTION_24_0();
      v100 = v84 + v99;
      v142 = *(v101 + 56);
      v143 = v102;
      v141 = (v101 - 8);
      v103 = MEMORY[0x1E69E7CC0];
      do
      {
        (v143)(v144, v100, v148);
        sub_1DD61A0C8();
        v104 = *v141;
        v105 = OUTLINED_FUNCTION_96_1();
        v106(v105);
        v108 = v149;
        v107 = v150;
        v110 = v151;
        v109 = v152;
        if (v150)
        {
          v147 = v153;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = *(v103 + 16);
            OUTLINED_FUNCTION_26_2();
            sub_1DD3C10F4();
            v103 = v117;
          }

          v112 = *(v103 + 16);
          v111 = *(v103 + 24);
          v113 = v103;
          if (v112 >= v111 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v111);
            sub_1DD3C10F4();
            v113 = v118;
          }

          *(v113 + 16) = v112 + 1;
          v103 = v113;
          v114 = (v113 + 40 * v112);
          v114[4] = v108;
          v114[5] = v107;
          v114[6] = v110;
          v114[7] = v109;
          v114[8] = v147;
        }

        else
        {
          sub_1DD626BC4(v149, 0);
        }

        v100 += v142;
        --v96;
        v115 = v146;
      }

      while (v96);
    }

    else
    {

      v103 = MEMORY[0x1E69E7CC0];
      v115 = v146;
    }

    v119 = *(v103 + 16);
    v120 = v140;
    v121 = v145;
    v122 = v138;
    if (!v119)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v123 = sub_1DD63F9F8();
      __swift_project_value_buffer(v123, qword_1EE16F068);

      v124 = sub_1DD63F9D8();
      v125 = sub_1DD640368();

      if (os_log_type_enabled(v124, v125))
      {
        OUTLINED_FUNCTION_18_1();
        v126 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v127 = swift_slowAlloc();
        v128 = v115;
        v129 = v127;
        v149 = v127;
        *v126 = 136315138;
        *(v126 + 4) = sub_1DD39565C(v128, v121, &v149);
        OUTLINED_FUNCTION_38_8();
        _os_log_impl(v130, v131, v132, v133, v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v129);
        v134 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v134);
        v135 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v135);
      }
    }

    sub_1DD6404C8();
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_1_133();
    sub_1DD627210(v120, v136);
  }

  OUTLINED_FUNCTION_86();
}

void sub_1DD61A0C8()
{
  OUTLINED_FUNCTION_18_4();
  v275 = v2;
  v276 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEF8, &qword_1DD664BD8);
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_2(v10);
  v274 = sub_1DD63E448();
  v11 = OUTLINED_FUNCTION_0(v274);
  v261 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v15);
  v266 = sub_1DD63EE88();
  v16 = OUTLINED_FUNCTION_0(v266);
  v267 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v265 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF00, &unk_1DD664BE0);
  OUTLINED_FUNCTION_3(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_14_2(v25);
  v264 = sub_1DD63EEB8();
  v26 = OUTLINED_FUNCTION_0(v264);
  v263 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_14_2(v30);
  v277 = sub_1DD63DD88();
  v31 = OUTLINED_FUNCTION_0(v277);
  v273 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v269 = v35;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v254 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_14_2(v41);
  v42 = sub_1DD63DE08();
  v43 = OUTLINED_FUNCTION_0(v42);
  v272 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1_4();
  v49 = (v47 - v48);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v254 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v254 - v54;
  v56 = sub_1DD63DDC8();
  if (!v57)
  {
    goto LABEL_23;
  }

  v58 = v56;
  v59 = v57;
  v60 = sub_1DD63DD98();
  v268 = v61;
  if (!v61)
  {

LABEL_23:
    v5[4] = 0;
    *v5 = 0u;
    *(v5 + 1) = 0u;
    goto LABEL_33;
  }

  v258 = v60;
  v260 = v5;
  v259 = v0;
  v62 = sub_1DD63DDD8();
  if (!v63)
  {
    goto LABEL_9;
  }

  v64 = v62 == 0x50646574616C6552 && v63 == 0xED00006E6F737265;
  if (v64)
  {

    goto LABEL_26;
  }

  v65 = sub_1DD640CD8();

  if (v65)
  {
LABEL_26:

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v85 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v85, qword_1EE16F068);
    v86 = v268;

    v87 = sub_1DD63F9D8();
    v88 = sub_1DD640368();

    v89 = os_log_type_enabled(v87, v88);
    v90 = v260;
    if (v89)
    {
      OUTLINED_FUNCTION_18_1();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_17_0();
      v92 = swift_slowAlloc();
      v280 = v92;
      *v91 = 136315138;
      v93 = sub_1DD39565C(v258, v86, &v280);

      *(v91 + 4) = v93;
      OUTLINED_FUNCTION_38_8();
      _os_log_impl(v94, v95, v96, v97, v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v98 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v98);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    goto LABEL_32;
  }

LABEL_9:
  if (qword_1ECCDB150 != -1)
  {
    swift_once();
  }

  v66 = OUTLINED_FUNCTION_94_1();
  if (sub_1DD47EEBC(v66, v67, v68) || (v69 = sub_1DD63DDB8(), (v69 & 0x100000000) != 0) || (v70 = v69, v71 = sub_1DD63DDE8(), (v71 & 0x100000000) != 0))
  {

    v84 = v260;
    v260[4] = 0;
    *v84 = 0u;
    v84[1] = 0u;
    goto LABEL_33;
  }

  v72 = v70;
  v255 = v70;
  v256 = v71;
  v73 = v276;
  v74 = v275;
  sub_1DD6211E4(v276, v275, v72, v71);
  v280 = v73;
  v281 = v74;
  v257 = sub_1DD3B7F10();

  v255 = sub_1DD63FEF8();
  v280 = v73;
  v281 = v74;

  v75 = sub_1DD63FEF8() >> 14;
  if (v75 <= v255 >> 14)
  {
    goto LABEL_18;
  }

  v76 = HIBYTE(v74) & 0xF;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v76 = v276 & 0xFFFFFFFFFFFFLL;
  }

  if (v75 > 4 * v76)
  {
LABEL_18:

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v77 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v77, qword_1EE16F068);
    v78 = v272;
    (*(v272 + 16))(v49, v259, v42);
    v79 = v275;

    v80 = sub_1DD63F9D8();
    v81 = sub_1DD640378();

    v82 = os_log_type_enabled(v80, v81);
    v5 = v260;
    if (v82)
    {
      OUTLINED_FUNCTION_58_9();
      v83 = swift_slowAlloc();
      OUTLINED_FUNCTION_64_6();
      v280 = swift_slowAlloc();
      *v83 = 136315394;
      *(v83 + 4) = sub_1DD39565C(v276, v79, &v280);
      *(v83 + 12) = 2080;
      v110 = sub_1DD632D2C();
      v112 = v111;
      (*(v272 + 8))(v49, v42);
      v113 = sub_1DD39565C(v110, v112, &v280);

      *(v83 + 14) = v113;
      _os_log_impl(&dword_1DD38D000, v80, v81, "[UCG] Indexes look wrong for query string '%s': %s", v83, 0x16u);
      swift_arrayDestroy();
      v114 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v114);
      v115 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v115);
    }

    else
    {

      (*(v78 + 8))(v49, v42);
    }

    goto LABEL_23;
  }

  v99 = sub_1DD640058();
  v255 = MEMORY[0x1E12B2190](v99);
  v256 = v100;

  v101 = *MEMORY[0x1E69D2388];
  if (v58 == sub_1DD63FDD8() && v59 == v102)
  {

    v108 = 0;
    v109 = 0;
    OUTLINED_FUNCTION_48_16();
  }

  else
  {
    OUTLINED_FUNCTION_94_1();
    v104 = sub_1DD640CD8();

    OUTLINED_FUNCTION_48_16();
    if (v104 & 1) != 0 || ((OUTLINED_FUNCTION_122_0(), v58 == v106 + 9) ? (v107 = v59 == v105) : (v107 = 0), v107 || (OUTLINED_FUNCTION_94_1(), (sub_1DD640CD8())))
    {
      v108 = 0;
      v109 = 0;
    }

    else
    {

      v108 = v58;
      v109 = v59;
    }
  }

  OUTLINED_FUNCTION_122_0();
  v118 = v58 == v117 + 2 && v59 == v116;
  if (v118 || (OUTLINED_FUNCTION_94_1(), (sub_1DD640CD8() & 1) != 0))
  {

    if (qword_1EE165FB0 == -1)
    {
LABEL_53:
      v119 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v119, qword_1EE16F068);
      v120 = v272;
      v121 = *(v272 + 16);
      OUTLINED_FUNCTION_73_2();
      v121();
      v274 = v109;
      v122 = sub_1DD63F9D8();
      sub_1DD640368();
      v123 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v123, v124))
      {
        OUTLINED_FUNCTION_18_1();
        v125 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v49 = swift_slowAlloc();
        v280 = v49;
        *v125 = 136315138;
        (v121)(v52, v55, v42);
        v126 = sub_1DD63FE38();
        v128 = v127;
        v130 = *(v120 + 8);
        v129 = v120 + 8;
        v130(v55, v42);
        v131 = sub_1DD39565C(v126, v128, &v280);

        *(v125 + 4) = v131;
        OUTLINED_FUNCTION_78_3();
        _os_log_impl(v132, v133, v134, v135, v136, v137);
        __swift_destroy_boxed_opaque_existential_1(v49);
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_73_2();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        v138 = *(v120 + 8);
        v129 = v120 + 8;
        v138(v55, v42);
      }

      v139 = v260;
      sub_1DD63DDD8();
      OUTLINED_FUNCTION_106_0();
      if (!v141)
      {
        goto LABEL_62;
      }

      if (v140 == 0x4364656E7261656CLL && v141 == 0xEE00746361746E6FLL)
      {
      }

      else
      {
        v143 = sub_1DD640CD8();

        if ((v143 & 1) == 0)
        {
LABEL_62:

          v139[4] = 0;
          *v139 = 0u;
          *(v139 + 1) = 0u;
          goto LABEL_33;
        }
      }

      v150 = *(sub_1DD63DDA8() + 16);
      if (v150)
      {
        v151 = v273 + 16;
        v276 = *(v273 + 16);
        v152 = *(v273 + 80);
        OUTLINED_FUNCTION_24_0();
        v272 = v153;
        v155 = v153 + v154;
        v275 = *(v151 + 56);
        v49 = (v151 - 8);
        v156 = MEMORY[0x1E69E7CC0];
        v273 = v151;
        while (1)
        {
          OUTLINED_FUNCTION_112_0();
          (v276)();
          if (sub_1DD63DD78() == 0xD000000000000012 && 0x80000001DD674FC0 == v157)
          {
            break;
          }

          v159 = sub_1DD640CD8();

          if (v159)
          {
            goto LABEL_82;
          }

          (*v49)(v278, v129);
LABEL_92:
          v155 += v275;
          if (!--v150)
          {

            OUTLINED_FUNCTION_48_16();
            goto LABEL_95;
          }
        }

LABEL_82:
        v160 = v278;
        v161 = sub_1DD63DD58();
        v163 = v162;
        (*v49)(v160, v129);
        if (v163)
        {
          v164 = HIBYTE(v163) & 0xF;
          if ((v163 & 0x2000000000000000) == 0)
          {
            v164 = v161 & 0xFFFFFFFFFFFFLL;
          }

          if (v164)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v168 = v156[2];
              OUTLINED_FUNCTION_26_2();
              sub_1DD3BE2A4();
              v156 = v169;
            }

            v166 = v156[2];
            v165 = v156[3];
            v129 = v166 + 1;
            if (v166 >= v165 >> 1)
            {
              OUTLINED_FUNCTION_1_0(v165);
              OUTLINED_FUNCTION_21_21();
              sub_1DD3BE2A4();
              v156 = v170;
            }

            v156[2] = v129;
            v167 = &v156[2 * v166];
            v167[4] = v161;
            v167[5] = v163;
            OUTLINED_FUNCTION_106_0();
          }

          else
          {
          }
        }

        goto LABEL_92;
      }

      v156 = MEMORY[0x1E69E7CC0];
LABEL_95:
      v90 = v260;
      if (v156[2] == 1)
      {
        v172 = v156[4];
        v171 = v156[5];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC98, &qword_1DD644078);
        *(swift_initStackObject() + 16) = xmmword_1DD643F90;
        OUTLINED_FUNCTION_43_16();
        *(v173 + 32) = v175;
        *(v173 + 40) = v174;
        *(v173 + 48) = v258;
        *(v173 + 56) = v49;
        *(v173 + 64) = 0;
        *(v173 + 72) = 2;
        sub_1DD56C80C(v173);
        *v90 = v172;
        v90[1] = v171;
        v90[2] = 0;
        v90[3] = 0;
        v90[4] = v176;
        goto LABEL_33;
      }

      v177 = sub_1DD63F9D8();
      sub_1DD640368();
      v178 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v178, v179))
      {
        OUTLINED_FUNCTION_18_1();
        v181 = swift_slowAlloc();
        *v181 = 134217984;
        v182 = v156[2];

        *(v181 + 4) = v182;

        OUTLINED_FUNCTION_41_14();
        _os_log_impl(v183, v184, v185, v186, v187, 0xCu);
        v188 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v188);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

LABEL_32:
      v90[4] = 0;
      *v90 = 0u;
      *(v90 + 1) = 0u;
      goto LABEL_33;
    }

LABEL_155:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_53;
  }

  v254 = v108;
  v42 = 0xEE0065756C61765FLL;
  v52 = 0x6369746E616D6573;
  v272 = v109;

  v109 = v259;
  v55 = sub_1DD63DDA8();
  v144 = 0;
  v49 = *(v55 + 2);
  v278 = v273 + 16;
  v276 = v273 + 8;
  OUTLINED_FUNCTION_106_0();
  while (1)
  {
    if (v49 == v144)
    {

      v189 = 0;
      v190 = 0;
      v191 = 0;
      OUTLINED_FUNCTION_48_16();
      OUTLINED_FUNCTION_117_0();
      OUTLINED_FUNCTION_8_68();
      goto LABEL_109;
    }

    if (v144 >= *(v55 + 2))
    {
      __break(1u);
      goto LABEL_155;
    }

    OUTLINED_FUNCTION_18_3();
    (*(v146 + 16))(v38, &v55[v145 + *(v146 + 72) * v144], v58);
    v147 = sub_1DD63DD78();
    v109 = v148;
    if (v147 == 0x6369746E616D6573 && v148 == 0xEE0065756C61765FLL)
    {

      goto LABEL_104;
    }

    v58 = sub_1DD640CD8();

    if (v58)
    {
      break;
    }

    v58 = v277;
    (*v276)(v38, v277);
    v144 = (v144 + 1);
  }

  OUTLINED_FUNCTION_106_0();
LABEL_104:

  v192 = v273 + 32;
  (*(v273 + 32))(v1, v38, v58);
  v190 = sub_1DD63DD58();
  v193 = *(v192 - 24);
  v191 = v194;
  v193(v1, v58);
  OUTLINED_FUNCTION_48_16();
  OUTLINED_FUNCTION_8_68();
  if (v191)
  {

    v189 = v190;
  }

  else
  {
    v189 = 0;
  }

  OUTLINED_FUNCTION_117_0();
LABEL_109:
  v195 = v262;
  sub_1DD63DDF8();
  OUTLINED_FUNCTION_8(v195, 1, v1);
  if (v64)
  {

    sub_1DD390754(v195, &qword_1ECCDFF00, &unk_1DD664BE0);
    v196 = 0;
    OUTLINED_FUNCTION_73_2();
  }

  else
  {
    (*(v263 + 32))(v58, v195, v1);
    v197 = v265;
    sub_1DD63EE68();
    v198 = sub_1DD63EE38();
    v199 = *(v267 + 8);
    v267 += 8;
    (v199)(v197, v266);
    if (v198)
    {
      v200 = 32;
    }

    else
    {
      v200 = 0;
    }

    if (v191)
    {
      v280 = v190;
      v281 = v191;
      OUTLINED_FUNCTION_43_16();
      v279[0] = v202;
      v279[1] = v201;

      v203 = sub_1DD640688();
      swift_bridgeObjectRelease_n();

      LODWORD(v275) = v203 == 0;
    }

    else
    {

      LODWORD(v275) = 0;
    }

    v204 = v265;
    sub_1DD63EE48();
    v205 = sub_1DD63EE38();
    OUTLINED_FUNCTION_45_12();
    v199();
    OUTLINED_FUNCTION_73_2();
    if ((v205 & 1) != 0 || (v49 = v55, sub_1DD63EE78(), v206 = sub_1DD63EE38(), OUTLINED_FUNCTION_48_16(), OUTLINED_FUNCTION_45_12(), v199(), !(v275 & 1 | ((v206 & 1) == 0))))
    {
      v200 |= 0x80uLL;
    }

    v275 = v200;
    sub_1DD63EE58();
    v207 = sub_1DD63EE38();
    OUTLINED_FUNCTION_45_12();
    v199();
    if ((v207 & 1) == 0)
    {
      OUTLINED_FUNCTION_39_14();
      OUTLINED_FUNCTION_105_1();
      v220();
      goto LABEL_131;
    }

    v208 = sub_1DD63EE98();
    v209 = v275;
    if ((v208 & 0x100000000) != 0 || (v210 = v208, v211 = sub_1DD63EEA8(), (v211 & 0x100000000) != 0) || v210 >= v211)
    {
      OUTLINED_FUNCTION_39_14();
      OUTLINED_FUNCTION_105_1();
      v221();
      v196 = v209 | 0x40;
    }

    else
    {
      v212 = v191;
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v213 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v213, qword_1EE16F068);

      v214 = sub_1DD63F9D8();
      v215 = sub_1DD640368();

      if (os_log_type_enabled(v214, v215))
      {
        OUTLINED_FUNCTION_18_1();
        v216 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v217 = swift_slowAlloc();
        v279[0] = v217;
        *v216 = 136315138;
        if (v55)
        {
          v204 = v268;
          v280 = v258;
          v281 = v268;
          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_8_68();

          MEMORY[0x1E12B2260](64, 0xE100000000000000);
          MEMORY[0x1E12B2260](v254, v55);

          v218 = v280;
          v219 = v281;
        }

        else
        {
          v219 = v268;

          v218 = v258;
        }

        sub_1DD39565C(v218, v219, v279);
        OUTLINED_FUNCTION_115_0();

        *(v216 + 4) = v204;
        _os_log_impl(&dword_1DD38D000, v214, v215, "[UCG] Skipping hypocorism annotation of match for %s because there are also non-alias token matches", v216, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v217);
        v251 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v251);
        v252 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v252);

        OUTLINED_FUNCTION_39_14();
        OUTLINED_FUNCTION_105_1();
        v253();
        OUTLINED_FUNCTION_48_16();
        OUTLINED_FUNCTION_73_2();
        OUTLINED_FUNCTION_8_68();
      }

      else
      {

        OUTLINED_FUNCTION_39_14();
        OUTLINED_FUNCTION_105_1();
        v250();
        OUTLINED_FUNCTION_73_2();
      }

      v191 = v212;
LABEL_131:
      v196 = v275;
    }
  }

  v222 = sub_1DD63FC88();
  v223 = sub_1DD63DDA8();
  v224 = *(v223 + 16);
  if (v224)
  {
    v275 = v196;
    v266 = v189;
    v267 = v191;
    OUTLINED_FUNCTION_18_3();
    v265 = v223;
    v226 = v223 + v225;
    v228 = *(v227 + 72);
    v229 = *(v227 + 16);
    v230 = (v261 + 32);
    v49 = (v261 + 8);
    do
    {
      v231 = v269;
      v232 = OUTLINED_FUNCTION_96_1();
      v55 = v277;
      v229(v232);
      v233 = v271;
      sub_1DD63DD68();
      v234 = v231;
      v235 = v233;
      (*v276)(v234, v55);
      v236 = v233;
      v237 = v274;
      OUTLINED_FUNCTION_8(v236, 1, v274);
      if (v64)
      {
        sub_1DD390754(v235, &qword_1ECCDFEF8, &qword_1DD664BD8);
      }

      else
      {
        (*v230)(v270, v235, v237);
        sub_1DD63E438();
        v55 = v238;
        if (*(v222 + 16))
        {
          v239 = sub_1DD3978DC();
          v241 = v240;

          v242 = *v49;
          if (v241)
          {
            v243 = *(*(v222 + 56) + 8 * v239);
            v242(v270, v274);
            if ((v243 & ~v275) != 0)
            {
              v244 = v243;
            }

            else
            {
              v244 = 0;
            }

            v275 |= v244;
          }

          else
          {
            v242(v270, v274);
          }
        }

        else
        {

          (*v49)(v270, v237);
        }
      }

      v226 += v228;
      --v224;
    }

    while (v224);

    OUTLINED_FUNCTION_48_16();
    OUTLINED_FUNCTION_8_68();
    v191 = v267;
    v189 = v266;
    v196 = v275;
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC98, &qword_1DD644078);
  *(swift_initStackObject() + 16) = xmmword_1DD643F90;
  OUTLINED_FUNCTION_43_16();
  *(v245 + 32) = v247;
  *(v245 + 40) = v246;
  *(v245 + 48) = v196;
  *(v245 + 56) = v189;
  *(v245 + 64) = v191;
  *(v245 + 72) = 0;
  sub_1DD56C80C(v245);
  v248 = v260;
  *v260 = v258;
  v248[1] = v49;
  v248[2] = v254;
  v248[3] = v55;
  v248[4] = v249;
LABEL_33:
  OUTLINED_FUNCTION_17();
}

void sub_1DD61B8D4()
{
  OUTLINED_FUNCTION_93();
  v298 = v1;
  v299 = v0;
  v287 = v2;
  OUTLINED_FUNCTION_14();
  v3 = type metadata accessor for Signpost();
  v4 = OUTLINED_FUNCTION_7(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v9 = (v8 - v7);
  v10 = v0[1];
  v284 = *v0;
  v289 = v10;
  v11 = v0[2];
  if (qword_1EE166460 != -1)
  {
    goto LABEL_188;
  }

  while (1)
  {
    v12 = qword_1EE16F0C0;
    v13 = v9 + *(v3 + 20);
    *v13 = "UCG.SearchForCandidatesByRelationship";
    *(v13 + 1) = 37;
    v13[16] = 2;
    v14 = v12;
    sub_1DD63F9B8();
    *(v9 + *(v3 + 24)) = v14;
    v15 = v14;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v16 = swift_allocObject();
    v297 = xmmword_1DD643F90;
    *(v16 + 16) = xmmword_1DD643F90;
    v17 = sub_1DD6408F8();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1DD392BD8();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    v279 = v16;
    LOBYTE(v278) = 2;
    OUTLINED_FUNCTION_22();
    v285 = v15;
    v286 = v9;
    sub_1DD63F998();

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
    v21 = swift_allocObject();
    *(v21 + 16) = v297;
    *(v21 + 32) = v289;
    *(v21 + 40) = v11;

    MEMORY[0x1EEE9AC00](v22);
    v9 = v299;
    v279 = v299;
    v280 = v287;
    swift_bridgeObjectRetain_n();
    v23 = v298;
    v24 = sub_1DD471094(MEMORY[0x1E69E7CD0], sub_1DD626B68, &v277, v21);
    if (v23)
    {
      break;
    }

    v3 = v24;
    v288 = v20;
    v295 = 0;
    v292 = v11;
    swift_setDeallocating();
    sub_1DD46CAFC();
    v28 = v3 + 56;
    v27 = *(v3 + 56);
    v29 = *(v3 + 32);
    OUTLINED_FUNCTION_4_1();
    v11 = v31 & v30;
    v33 = (v32 + 63) >> 6;

    v34 = 0;
    v35 = qword_1EE16F068;
    *&v36 = 136315394;
    v282 = v36;
    *&v293 = v3;
    v294 = v3 + 56;
    if (!v11)
    {
      goto LABEL_8;
    }

    do
    {
      v37 = v34;
LABEL_11:
      v19 = *(*(v3 + 48) + ((v37 << 7) | (2 * __clz(__rbit64(v11)))));
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v11 &= v11 - 1;
      v38 = sub_1DD63F9F8();
      __swift_project_value_buffer(v38, qword_1EE16F068);
      v39 = sub_1DD63F9D8();
      LODWORD(v298) = sub_1DD640368();
      v40 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v40, v41))
      {
        OUTLINED_FUNCTION_58_9();
        v42 = swift_slowAlloc();
        OUTLINED_FUNCTION_64_6();
        *&v297 = swift_slowAlloc();
        *v306 = v297;
        *v42 = v282;
        v43 = sub_1DD538ED0(v19);
        v45 = sub_1DD39565C(v43, v44, v306);

        *(v42 + 4) = v45;
        *(v42 + 12) = 2080;
        sub_1DD534E3C(v19);
        v46 = MEMORY[0x1E12B2430]();
        v48 = v47;

        v49 = sub_1DD39565C(v46, v48, v306);
        v9 = v299;

        *(v42 + 14) = v49;
        v35 = qword_1EE16F068;
        _os_log_impl(&dword_1DD38D000, v39, v298, "[UCG] CN relationship keys for: '%s': %s", v42, 0x16u);
        v19 = v297;
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v3 = v293;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v34 = v37;
      v28 = v294;
    }

    while (v11);
    while (1)
    {
LABEL_8:
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_175;
      }

      if (v37 >= v33)
      {
        break;
      }

      v11 = *(v28 + 8 * v37);
      ++v34;
      if (v11)
      {
        goto LABEL_11;
      }
    }

    OUTLINED_FUNCTION_35_17(MEMORY[0x1E69E7CC0]);
    v50 = 0;
    v51 = v288;
    v52 = MEMORY[0x1E69E7CD0];
    v283 = v28;
LABEL_18:
    v11 = v292;
    if (v35)
    {
LABEL_22:
      v54 = OUTLINED_FUNCTION_37_18();
      v11 = sub_1DD534E3C(v54);
      v3 = 0;
      v298 = *(v11 + 16);
      v9 = (v11 + 40);
      v55 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v298 == v3)
        {

          v19 = v55[2];
          if (v19)
          {
            v305[0] = MEMORY[0x1E69E7CC0];
            v70 = OUTLINED_FUNCTION_54_10();
            sub_1DD42C1B8(v70, v71, v72);
            v73 = v305[0];
            v74 = v55 + 5;
            do
            {
              v75 = *(v74 - 1);
              v76 = *v74;
              v298 = sub_1DD538ED0(v296);
              *&v297 = v77;
              v305[0] = v73;
              v79 = *(v73 + 16);
              v78 = *(v73 + 24);

              if (v79 >= v78 >> 1)
              {
                sub_1DD42C1B8(v78 > 1, v79 + 1, 1);
                v73 = v305[0];
              }

              *(v73 + 16) = v79 + 1;
              OUTLINED_FUNCTION_121_0((v73 + 32 * v79));
              v74 += 2;
              --v19;
            }

            while (v19);
          }

          else
          {

            v73 = MEMORY[0x1E69E7CC0];
          }

          sub_1DD607E00(v73);
          v9 = v299;
          v3 = v293;
          v51 = v288;
          v52 = MEMORY[0x1E69E7CD0];
          v28 = v283;
          v35 = v290;
          v50 = v291;
          goto LABEL_18;
        }

        if (v3 >= *(v11 + 16))
        {
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
          goto LABEL_169;
        }

        v56 = *(v9 - 1);
        v57 = *v9;

        v58 = sub_1DD60EC70();
        if (*(v58 + 16) && (v59 = sub_1DD3978DC(), (v60 & 1) != 0))
        {
          v61 = *(*(v58 + 56) + 8 * v59);
        }

        else
        {
          v61 = MEMORY[0x1E69E7CC0];
        }

        v19 = *(v61 + 16);
        v62 = v55[2];
        if (__OFADD__(v62, v19))
        {
          goto LABEL_167;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v62 + v19 > (v55[3] >> 1))
        {
          sub_1DD3BE2A4();
          v55 = v63;
        }

        if (*(v61 + 16))
        {
          v64 = v55[2];
          v65 = v55[3];
          OUTLINED_FUNCTION_51_10();
          if (v66 < v19)
          {
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          swift_arrayInitWithCopy();

          if (v19)
          {
            v67 = v55[2];
            v68 = __OFADD__(v67, v19);
            v69 = v67 + v19;
            if (v68)
            {
              goto LABEL_174;
            }

            v55[2] = v69;
          }
        }

        else
        {

          if (v19)
          {
            goto LABEL_168;
          }
        }

        v9 += 2;
        ++v3;
      }
    }

    while (1)
    {
      v53 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_179;
      }

      if (v53 >= v28)
      {
        break;
      }

      v35 = *(v294 + 8 * v53);
      ++v50;
      if (v35)
      {
        goto LABEL_22;
      }
    }

    v308 = *v306;
    if (*(*v306 + 16))
    {
      goto LABEL_81;
    }

    v281 = *v306;
    OUTLINED_FUNCTION_35_17(MEMORY[0x1E69E7CC0]);
    v80 = 0;
    v283 = v28;
LABEL_50:
    if (!v35)
    {
      while (1)
      {
        v81 = v80 + 1;
        if (__OFADD__(v80, 1))
        {
          goto LABEL_185;
        }

        if (v81 >= v28)
        {
          break;
        }

        v35 = *(v294 + 8 * v81);
        ++v80;
        if (v35)
        {
          goto LABEL_54;
        }
      }

      v308 = *v306;
      if (*(*v306 + 16))
      {
LABEL_81:

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v307 = v52;
        v204 = swift_allocObject();
        *(v204 + 16) = xmmword_1DD652040;
        v9 = v289;
        *(v204 + 32) = v289;
        *(v204 + 40) = v11;
        *v306 = v9;
        *&v306[8] = v11;
        v305[0] = 32;
        v305[1] = 0xE100000000000000;
        v301 = 0;
        v302 = 0xE000000000000000;
        v205 = sub_1DD3B7F10();
        v279 = v205;
        v280 = v205;
        OUTLINED_FUNCTION_80_2();
        v278 = v205;
        v206 = MEMORY[0x1E69E6158];
        v277 = MEMORY[0x1E69E6158];
        OUTLINED_FUNCTION_21_36();
        sub_1DD640678();
        OUTLINED_FUNCTION_79_3();

        *(v204 + 48) = v51;
        *(v204 + 56) = v35;
        *v306 = v9;
        *&v306[8] = v11;
        v305[0] = 32;
        v305[1] = 0xE100000000000000;
        v301 = 45;
        v302 = 0xE100000000000000;
        v276[0] = v205;
        v276[1] = v205;
        OUTLINED_FUNCTION_80_2();
        v275[0] = v206;
        v275[1] = v205;
        OUTLINED_FUNCTION_21_36();
        sub_1DD640678();
        OUTLINED_FUNCTION_79_3();

        *(v204 + 64) = v51;
        *(v204 + 72) = v35;
        *v306 = v9;
        *&v306[8] = v11;
        v305[0] = 32;
        v305[1] = 0xE100000000000000;
        v301 = 95;
        v302 = 0xE100000000000000;
        v273 = v205;
        v274 = v205;
        OUTLINED_FUNCTION_80_2();
        v272[0] = v206;
        v272[1] = v205;
        OUTLINED_FUNCTION_21_36();
        v207 = sub_1DD640678();
        v209 = v208;

        *(v204 + 80) = v207;
        *(v204 + 88) = v209;
        v210 = *(v299 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 24);
        v211 = *(v299 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer + 32);
        __swift_project_boxed_opaque_existential_1((v299 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer), v210);
        v212 = OUTLINED_FUNCTION_19();
        *v306 = sub_1DD5E8CD4(v212, v213, v210, v211);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
        sub_1DD4477A4();
        v214 = sub_1DD63FD58();
        v216 = v215;

        *(v204 + 96) = v214;
        *(v204 + 104) = v216;
        sub_1DD6089D4(v204);
        v217 = v295;
        sub_1DD605C6C(v293);
        v219 = v218;

        v220 = sub_1DD6089D4(v219);
        v221 = v275;
        v222 = v307;
        MEMORY[0x1EEE9AC00](v220);
        v273 = v287;

        v223 = sub_1DD605EA4(sub_1DD626BA4, v272, v222);
        v224 = v217;

        sub_1DD41859C(v223);
        OUTLINED_FUNCTION_115_0();

        v307 = v275;
        if (qword_1EE165FB0 != -1)
        {
LABEL_192:
          OUTLINED_FUNCTION_0_2();
          swift_once();
        }

        v225 = sub_1DD63F9F8();
        v226 = __swift_project_value_buffer(v225, qword_1EE16F068);
        OUTLINED_FUNCTION_89_2();

        v227 = sub_1DD63F9D8();
        v228 = sub_1DD640368();

        v229 = OUTLINED_FUNCTION_103_0();
        v298 = v221;
        v295 = v226;
        v296 = v224;
        if (v229)
        {
          OUTLINED_FUNCTION_58_9();
          v230 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_6();
          v231 = swift_slowAlloc();
          v232 = v11;
          v11 = v231;
          *v306 = v231;
          *v230 = v282;
          *(v230 + 4) = sub_1DD39565C(v289, v232, v306);
          *(v230 + 12) = 2080;

          v233 = sub_1DD640278();
          v9 = v234;

          v235 = sub_1DD39565C(v233, v9, v306);

          *(v230 + 14) = v235;
          v221 = v298;
          _os_log_impl(&dword_1DD38D000, v227, v228, "[UCG] No semantic CN relationship found for '%s'. Will search for it as a custom relationship using these potential labels: %s", v230, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        v236 = v221[7];
        *&v297 = v221 + 7;
        v237 = *(v221 + 32);
        OUTLINED_FUNCTION_4_1();
        v3 = v239 & v238;
        v224 = (v240 + 63) >> 6;
        swift_bridgeObjectRetain_n();
        v241 = 0;
        v242 = MEMORY[0x1E69E7CC0];
        while (v3)
        {
LABEL_148:
          v244 = (v221[6] + ((v241 << 10) | (16 * __clz(__rbit64(v3)))));
          v245 = *v244;
          v246 = v244[1];

          v247 = sub_1DD60EC70();
          if (*(v247 + 16) && (v248 = sub_1DD3978DC(), (v249 & 1) != 0))
          {
            v221 = *(*(v247 + 56) + 8 * v248);
          }

          else
          {
            v221 = MEMORY[0x1E69E7CC0];
          }

          v11 = v221[2];
          v250 = *(v242 + 16);
          v9 = (v250 + v11);
          if (__OFADD__(v250, v11))
          {
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
            goto LABEL_192;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v9 > *(v242 + 24) >> 1)
          {
            sub_1DD3BE2A4();
            v242 = v251;
          }

          v3 &= v3 - 1;
          if (v221[2])
          {
            OUTLINED_FUNCTION_47_12();
            if (v252 < v11)
            {
              goto LABEL_190;
            }

            swift_arrayInitWithCopy();

            v221 = v298;
            if (v11)
            {
              v253 = *(v242 + 16);
              v68 = __OFADD__(v253, v11);
              v254 = v253 + v11;
              if (v68)
              {
                goto LABEL_191;
              }

              *(v242 + 16) = v254;
            }
          }

          else
          {

            v221 = v298;
            if (v11)
            {
              __break(1u);
              goto LABEL_163;
            }
          }
        }

        while (1)
        {
          v243 = v241 + 1;
          if (__OFADD__(v241, 1))
          {
            goto LABEL_187;
          }

          if (v243 >= v224)
          {
            break;
          }

          v3 = *(v297 + 8 * v243);
          ++v241;
          if (v3)
          {
            v241 = v243;
            goto LABEL_148;
          }
        }

LABEL_163:

        v255 = sub_1DD41859C(v242);
        v256 = sub_1DD63F9D8();
        v19 = sub_1DD640368();
        v257 = OUTLINED_FUNCTION_27_5();
        if (os_log_type_enabled(v257, v258))
        {
          OUTLINED_FUNCTION_18_1();
          v259 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v260 = swift_slowAlloc();
          OUTLINED_FUNCTION_116(v260);
          *v259 = 136315138;
          v261 = sub_1DD640278();
          v263 = sub_1DD39565C(v261, v262, v306);

          *(v259 + 4) = v263;
          _os_log_impl(&dword_1DD38D000, v256, v19, "[UCG] MeCard related names matching custom relationship: %s", v259, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v221);
          v264 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v264);
          v265 = OUTLINED_FUNCTION_10_2();
          MEMORY[0x1E12B3DA0](v265);
        }

        v11 = v292;
        v9 = v299;
        v266 = v296;
        v267 = v284;

        v268 = sub_1DD606158(v255, v267, v289, v11);
        v295 = v266;

        sub_1DD607E00(v268);
      }

      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v105 = sub_1DD63F9F8();
      v106 = __swift_project_value_buffer(v105, qword_1EE16F068);
      OUTLINED_FUNCTION_89_2();

      *&v297 = v106;
      v107 = sub_1DD63F9D8();
      sub_1DD640368();

      if (OUTLINED_FUNCTION_103_0())
      {
        OUTLINED_FUNCTION_58_9();
        v3 = swift_slowAlloc();
        OUTLINED_FUNCTION_64_6();
        v108 = swift_slowAlloc();
        OUTLINED_FUNCTION_116(v108);
        *v3 = v282;
        *(v3 + 4) = sub_1DD39565C(v289, v11, v306);
        *(v3 + 12) = 2080;
        swift_beginAccess();

        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBCB8, &unk_1DD649E50);
        MEMORY[0x1E12B2430](v308, v109);
        OUTLINED_FUNCTION_95_1();

        v110 = sub_1DD39565C(v19, v11, v306);

        *(v3 + 14) = v110;
        OUTLINED_FUNCTION_35_6();
        _os_log_impl(v111, v112, v113, v114, v115, 0x16u);
        swift_arrayDestroy();
        v116 = OUTLINED_FUNCTION_12_49();
        MEMORY[0x1E12B3DA0](v116);
        v117 = OUTLINED_FUNCTION_15_10();
        MEMORY[0x1E12B3DA0](v117);
      }

      swift_beginAccess();
      v11 = v308;
      v118 = *(v308 + 16);
      v291 = v308;
      if (!v118)
      {

        v119 = sub_1DD63F9D8();
        v3 = sub_1DD640368();

        if (os_log_type_enabled(v119, v3))
        {
          OUTLINED_FUNCTION_18_1();
          v120 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v121 = swift_slowAlloc();
          *v306 = v121;
          *v120 = 136315138;
          v122 = sub_1DD60EC70();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
          sub_1DD63FC68();
          OUTLINED_FUNCTION_95_1();

          sub_1DD39565C(v19, v308, v306);
          OUTLINED_FUNCTION_124();
          v11 = v291;

          *(v120 + 4) = v122;
          _os_log_impl(&dword_1DD38D000, v119, v3, "[UCG] Couldn't find any MeCard relationships matching query. Here's what's in the MeCard: %s", v120, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v121);
          v123 = OUTLINED_FUNCTION_10_2();
          MEMORY[0x1E12B3DA0](v123);
          v124 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v124);
        }
      }

      *v306 = MEMORY[0x1E69E7CC0];
      v125 = *(v11 + 16);

      v126 = 0;
      v127 = (v11 + 56);
      while (v125 != v126)
      {
        if (v126 >= *(v11 + 16))
        {
          goto LABEL_182;
        }

        v128 = *(v127 - 1);
        v129 = *v127;
        v131 = *(v127 - 3);
        v130 = *(v127 - 2);

        v132 = v128;
        v133 = v295;
        sub_1DD61DC7C(v131, v130, v132, v129);
        v295 = v133;
        if (v133)
        {

          goto LABEL_4;
        }

        v3 = v134;

        ++v126;
        sub_1DD607D10(v3);
        v127 += 4;
      }

      v298 = *v306;

      v3 = 0;
      v135 = 32;
      *&v136 = 134219010;
      v293 = v136;
      while (1)
      {
        v137 = *(v298 + 16);
        if (v3 == v137)
        {
          break;
        }

        if (v3 >= v137)
        {
          goto LABEL_183;
        }

        memcpy(v305, (v298 + v135), sizeof(v305));
        memmove(v306, (v298 + v135), 0x68uLL);
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_36_17();
        OUTLINED_FUNCTION_36_17();
        sub_1DD3EB3D0(v305, &v301, &qword_1ECCDBCA8, &unk_1DD649E40);
        v138 = sub_1DD63F9D8();
        v11 = sub_1DD640368();
        OUTLINED_FUNCTION_44_15();
        OUTLINED_FUNCTION_44_15();
        OUTLINED_FUNCTION_44_15();
        OUTLINED_FUNCTION_44_15();
        if (os_log_type_enabled(v138, v11))
        {
          v139 = swift_slowAlloc();
          v294 = swift_slowAlloc();
          v300 = v294;
          *v139 = v293;
          *(v139 + 4) = v3;
          *(v139 + 12) = 2080;
          v140 = *&v306[72];
          v141 = *&v306[80];

          v142 = sub_1DD39565C(v140, v141, &v300);
          v296 = v3;
          v143 = v142;

          *(v139 + 14) = v143;
          *(v139 + 22) = 2080;
          v301 = *v306;
          v302 = *&v306[8];
          v303 = *&v306[16];

          v144 = sub_1DD63FE38();
          v146 = sub_1DD39565C(v144, v145, &v300);

          *(v139 + 24) = v146;
          *(v139 + 32) = 2080;
          v301 = *&v306[32];
          v302 = *&v306[40];
          v303 = *&v306[48];
          v304 = *&v306[64];

          v147 = sub_1DD63FE38();
          v149 = sub_1DD39565C(v147, v148, &v300);

          *(v139 + 34) = v149;
          *(v139 + 42) = 2080;
          v150 = *&v306[88];
          v151 = *&v306[96];

          OUTLINED_FUNCTION_44_15();
          v152 = sub_1DD39565C(v150, v151, &v300);
          v9 = v299;

          *(v139 + 44) = v152;
          v3 = v296;
          _os_log_impl(&dword_1DD38D000, v138, v11, "[UCG] Relationship lookup [%ld] for '%s': %s => %s based on search term %s", v139, 0x34u);
          v11 = v294;
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v153 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v153);
        }

        else
        {

          OUTLINED_FUNCTION_44_15();
        }

        v135 += 104;
        ++v3;
      }

      v19 = v298;

      v3 = 0;
      v11 = *(v19 + 16);
      v294 = MEMORY[0x1E69E7CC0];
      v154 = 32;
      v155 = &unk_1DD649E40;
      v290 = 32;
LABEL_103:
      v156 = v154 + 104 * v3;
      while (v11 != v3)
      {
        if (v3 >= *(v19 + 16))
        {
          goto LABEL_184;
        }

        memcpy(v306, (v19 + v156), sizeof(v306));
        if ((v306[48] & 0x20) != 0)
        {
          v157 = *&v306[32] == *&v306[88] && *&v306[40] == *&v306[96];
          if (v157 || (sub_1DD640CD8() & 1) != 0)
          {
            sub_1DD3EB3D0(v306, v305, &qword_1ECCDBCA8, &unk_1DD649E40);
            v158 = v294;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v301 = v158;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              OUTLINED_FUNCTION_36_2();
              v160 = OUTLINED_FUNCTION_26_2();
              sub_1DD42C198(v160, v161, v162);
              v158 = v301;
            }

            v164 = *(v158 + 16);
            v163 = *(v158 + 24);
            if (v164 >= v163 >> 1)
            {
              OUTLINED_FUNCTION_1_0(v163);
              OUTLINED_FUNCTION_90_1();
              sub_1DD42C198(v165, v166, v167);
              v158 = v301;
            }

            ++v3;
            *(v158 + 16) = v164 + 1;
            v294 = v158;
            memcpy((v158 + 104 * v164 + 32), v306, 0x68uLL);
            v19 = v298;
            v9 = v299;
            v154 = v290;
            goto LABEL_103;
          }
        }

        v156 += 104;
        ++v3;
      }

      if (*(v294 + 16))
      {

        OUTLINED_FUNCTION_89_2();

        v168 = v292;

        v169 = sub_1DD63F9D8();
        sub_1DD640368();

        if (OUTLINED_FUNCTION_103_0())
        {
          OUTLINED_FUNCTION_18_1();
          v170 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v171 = swift_slowAlloc();
          OUTLINED_FUNCTION_116(v171);
          *(v170 + 4) = OUTLINED_FUNCTION_99_1(4.8149e-34);
          OUTLINED_FUNCTION_35_6();
          _os_log_impl(v172, v173, v174, v175, v176, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(&unk_1DD649E40);
          v177 = OUTLINED_FUNCTION_12_49();
          MEMORY[0x1E12B3DA0](v177);
          v178 = OUTLINED_FUNCTION_15_10();
          MEMORY[0x1E12B3DA0](v178);

LABEL_171:
          MEMORY[0x1EEE9AC00](v179);
          v277 = v284;
          v278 = v19;
          v279 = v168;
          v280 = v287;
          v269 = sub_1DD46D53C(MEMORY[0x1E69E7CC8], sub_1DD626B84, v276, v294);
          sub_1DD6063E4(v269);

          sub_1DD6404C8();
          v270 = v286;
          sub_1DD63F9A8();
          OUTLINED_FUNCTION_1_133();
          sub_1DD627210(v270, v271);
          goto LABEL_5;
        }
      }

      else
      {
        v296 = v11;

        v3 = 0;
        v294 = MEMORY[0x1E69E7CC0];
        *&v293 = v9 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer;
        v11 = &qword_1ECCDBCA8;
        v9 = &unk_1DD649E40;
LABEL_123:
        v180 = v290 + 104 * v3;
        while (v296 != v3)
        {
          if (v3 >= *(v19 + 16))
          {
            goto LABEL_186;
          }

          memcpy(v306, (v19 + v180), sizeof(v306));
          if ((~v306[48] & 3) == 0)
          {
            v181 = *&v306[32];
            v299 = *&v306[40];
            v155 = *(v293 + 24);
            v182 = *(v293 + 32);
            __swift_project_boxed_opaque_existential_1(v293, v155);
            sub_1DD3EB3D0(v306, v305, &qword_1ECCDBCA8, &unk_1DD649E40);
            v183 = *(sub_1DD5E8CD4(v181, v299, v155, v182) + 16);

            if (v183 > 1)
            {
              v184 = v294;
              v185 = swift_isUniquelyReferenced_nonNull_native();
              v301 = v184;
              if ((v185 & 1) == 0)
              {
                OUTLINED_FUNCTION_36_2();
                v186 = OUTLINED_FUNCTION_26_2();
                sub_1DD42C198(v186, v187, v188);
                v184 = v301;
              }

              v19 = v298;
              v190 = *(v184 + 16);
              v189 = *(v184 + 24);
              v155 = (v190 + 1);
              if (v190 >= v189 >> 1)
              {
                OUTLINED_FUNCTION_1_0(v189);
                OUTLINED_FUNCTION_90();
                sub_1DD42C198(v191, v192, v193);
                v184 = v301;
              }

              ++v3;
              *(v184 + 16) = v155;
              v294 = v184;
              memcpy((v184 + 104 * v190 + 32), v306, 0x68uLL);
              goto LABEL_123;
            }

            sub_1DD390754(v306, &qword_1ECCDBCA8, &unk_1DD649E40);
            v19 = v298;
          }

          v180 += 104;
          ++v3;
        }

        if (*(v294 + 16))
        {

          OUTLINED_FUNCTION_89_2();

          v168 = v292;

          v194 = sub_1DD63F9D8();
          sub_1DD640368();

          if (OUTLINED_FUNCTION_103_0())
          {
            OUTLINED_FUNCTION_18_1();
            v195 = swift_slowAlloc();
            OUTLINED_FUNCTION_17_0();
            v196 = swift_slowAlloc();
            OUTLINED_FUNCTION_116(v196);
            *(v195 + 4) = OUTLINED_FUNCTION_99_1(4.8149e-34);
            OUTLINED_FUNCTION_35_6();
            _os_log_impl(v197, v198, v199, v200, v201, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v155);
            v202 = OUTLINED_FUNCTION_12_49();
            MEMORY[0x1E12B3DA0](v202);
            v203 = OUTLINED_FUNCTION_15_10();
            MEMORY[0x1E12B3DA0](v203);
          }

          else
          {

            v19 = v289;
          }

          goto LABEL_171;
        }

LABEL_169:

        v294 = v19;
        v168 = v292;
      }

      v19 = v289;
      goto LABEL_171;
    }

LABEL_54:
    v82 = OUTLINED_FUNCTION_37_18();
    v3 = sub_1DD538AD0(v82);
    v83 = 0;
    v298 = *(v3 + 16);
    v9 = (v3 + 40);
    v11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v298 == v83)
      {

        v98 = *(v11 + 16);
        if (v98)
        {
          v305[0] = MEMORY[0x1E69E7CC0];
          sub_1DD42C1B8(0, v98, 0);
          v19 = v305[0];
          v99 = (v11 + 40);
          do
          {
            v100 = *(v99 - 1);
            v101 = *v99;
            v298 = sub_1DD538ED0(v296);
            *&v297 = v102;
            v305[0] = v19;
            v104 = *(v19 + 16);
            v103 = *(v19 + 24);

            if (v104 >= v103 >> 1)
            {
              sub_1DD42C1B8(v103 > 1, v104 + 1, 1);
              v19 = v305[0];
            }

            *(v19 + 16) = v104 + 1;
            OUTLINED_FUNCTION_121_0((v19 + 32 * v104));
            v99 += 2;
            --v98;
          }

          while (v98);
        }

        else
        {

          v19 = MEMORY[0x1E69E7CC0];
        }

        sub_1DD607E00(v19);
        v11 = v292;
        v3 = v293;
        v9 = v299;
        v51 = v288;
        v52 = MEMORY[0x1E69E7CD0];
        v28 = v283;
        v35 = v290;
        v80 = v291;
        goto LABEL_50;
      }

      if (v83 >= *(v3 + 16))
      {
        goto LABEL_176;
      }

      v84 = *(v9 - 1);
      v85 = *v9;

      v86 = sub_1DD60EC70();
      if (*(v86 + 16) && (v87 = sub_1DD3978DC(), (v88 & 1) != 0))
      {
        v89 = *(*(v86 + 56) + 8 * v87);
      }

      else
      {
        v89 = MEMORY[0x1E69E7CC0];
      }

      v90 = *(v89 + 16);
      v91 = *(v11 + 16);
      if (__OFADD__(v91, v90))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v91 + v90 > *(v11 + 24) >> 1)
      {
        sub_1DD3BE2A4();
        v11 = v92;
      }

      if (*(v89 + 16))
      {
        v93 = *(v11 + 16);
        v94 = *(v11 + 24);
        OUTLINED_FUNCTION_51_10();
        if (v95 < v90)
        {
          goto LABEL_180;
        }

        swift_arrayInitWithCopy();

        if (v90)
        {
          v96 = *(v11 + 16);
          v68 = __OFADD__(v96, v90);
          v97 = v96 + v90;
          if (v68)
          {
            goto LABEL_181;
          }

          *(v11 + 16) = v97;
        }
      }

      else
      {

        if (v90)
        {
          goto LABEL_178;
        }
      }

      v9 += 2;
      ++v83;
    }

LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
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
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  swift_bridgeObjectRelease_n();
  swift_setDeallocating();
  sub_1DD46CAFC();
LABEL_4:
  sub_1DD6404C8();
  v25 = v286;
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_1_133();
  sub_1DD627210(v25, v26);
LABEL_5:
  OUTLINED_FUNCTION_128_0();
  OUTLINED_FUNCTION_86();
}

void sub_1DD61D490(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v4 = v3;
  v6 = a2[1];
  v58 = *a2;
  v7 = &unk_1EE165000;
  if (sub_1DD538D38() == 376)
  {
    if (qword_1EE165FB0 != -1)
    {
LABEL_38:
      swift_once();
    }

    v8 = sub_1DD63F9F8();
    __swift_project_value_buffer(v8, qword_1EE16F068);

    v9 = sub_1DD63F9D8();
    v10 = sub_1DD640368();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v57[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1DD39565C(v58, v6, v57);
      _os_log_impl(&dword_1DD38D000, v9, v10, "[UCG] Spoken relationship label '%s' is not a semantic relationship label", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E12B3DA0](v12, -1, -1);
      v13 = v11;
      v7 = 0x1EE165000;
      MEMORY[0x1E12B3DA0](v13, -1, -1);
    }
  }

  else
  {
    sub_1DD56F38C();
  }

  sub_1DD3EB3D0(a3 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &v55, &qword_1ECCDCF50, &qword_1DD664BD0);
  if (v56)
  {
    sub_1DD3AA4A8(&v55, v57);
    v14 = *__swift_project_boxed_opaque_existential_1(v57, v57[3]);
    v15 = v58;
    sub_1DD6094FC();
    if (!v4)
    {
      v17 = v16;
      if (*(v7 + 4016) != -1)
      {
        swift_once();
      }

      v18 = sub_1DD63F9F8();
      __swift_project_value_buffer(v18, qword_1EE16F068);

      v19 = sub_1DD63F9D8();
      v20 = sub_1DD640368();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *&v55 = v22;
        *v21 = 136315394;
        *(v21 + 4) = sub_1DD39565C(v15, v6, &v55);
        *(v21 + 12) = 2080;
        v23 = sub_1DD640278();
        v25 = sub_1DD39565C(v23, v24, &v55);

        *(v21 + 14) = v25;
        _os_log_impl(&dword_1DD38D000, v19, v20, "[UCG] Relationship aliases for: '%s': %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v22, -1, -1);
        MEMORY[0x1E12B3DA0](v21, -1, -1);
      }

      v4 = v17 + 56;
      v26 = 1 << *(v17 + 32);
      v27 = -1;
      if (v26 < 64)
      {
        v27 = ~(-1 << v26);
      }

      a3 = v27 & *(v17 + 56);
      v28 = (v26 + 63) >> 6;

      v7 = 0;
      v29 = MEMORY[0x1E69E7CC0];
LABEL_16:
      v30 = &qword_1DD643000;
      while (a3)
      {
LABEL_22:
        v32 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v33 = (*(v17 + 48) + ((v7 << 10) | (16 * v32)));
        v35 = *v33;
        v34 = v33[1];

        v36 = sub_1DD532D04();
        v30 = &qword_1DD643000;
        if (v36 != 376)
        {
          v37 = v36;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = *(v29 + 16);
            sub_1DD3C145C();
            v29 = v41;
          }

          v38 = *(v29 + 16);
          v39 = v38 + 1;
          if (v38 >= *(v29 + 24) >> 1)
          {
            sub_1DD3C145C();
            v39 = v38 + 1;
            v29 = v42;
          }

          *(v29 + 16) = v39;
          *(v29 + 2 * v38 + 32) = v37;
          goto LABEL_16;
        }
      }

      while (1)
      {
        v31 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v31 >= v28)
        {
          break;
        }

        a3 = *(v4 + 8 * v31);
        ++v7;
        if (a3)
        {
          v7 = v31;
          goto LABEL_22;
        }
      }

      v47 = v29;

      v48 = sub_1DD63F9D8();
      v49 = sub_1DD640368();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v55 = v51;
        *v50 = v30[507];
        *(v50 + 4) = sub_1DD39565C(v58, v6, &v55);
        *(v50 + 12) = 2080;
        v52 = MEMORY[0x1E12B2430](v47, &type metadata for NLSemanticRelationLabel);
        v54 = sub_1DD39565C(v52, v53, &v55);

        *(v50 + 14) = v54;
        _os_log_impl(&dword_1DD38D000, v48, v49, "[UCG] Semantic labels for all aliases of: '%s': %s", v50, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v51, -1, -1);
        MEMORY[0x1E12B3DA0](v50, -1, -1);
      }

      sub_1DD608A7C(v47);
    }

    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  else
  {
    sub_1DD390754(&v55, &qword_1ECCDCF50, &qword_1DD664BD0);
    if (*(v7 + 4016) != -1)
    {
      swift_once();
    }

    v43 = sub_1DD63F9F8();
    __swift_project_value_buffer(v43, qword_1EE16F068);
    v44 = sub_1DD63F9D8();
    v45 = sub_1DD640378();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DD38D000, v44, v45, "[UCG] No relationship localizer available. This will hurt search results...", v46, 2u);
      MEMORY[0x1E12B3DA0](v46, -1, -1);
    }
  }
}

uint64_t sub_1DD61DB44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v16 - v8;
  v10 = a1[1];
  v16[0] = *a1;
  v16[1] = v10;
  v11 = sub_1DD63D168();
  (*(*(v11 - 8) + 16))(v9, a2, v11);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
  sub_1DD3B7F10();
  v12 = sub_1DD640648();
  v14 = v13;
  result = sub_1DD390754(v9, &qword_1ECCDC3F0, &unk_1DD64AF50);
  *a3 = v12;
  a3[1] = v14;
  return result;
}

void sub_1DD61DC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DD61962C();
  v10 = v9;
  if (v4)
  {
    return;
  }

  v57 = a1;
  v58 = a3;
  v11 = 0;
  v79[3] = MEMORY[0x1E69E7CC0];
  v62 = v9 + 32;
  v63 = *(v9 + 16);
  v59 = a2;
  v60 = a4;
  v61 = v9;
LABEL_3:
  if (v11 == v63)
  {

    return;
  }

  if (v11 >= *(v10 + 16))
  {
    goto LABEL_43;
  }

  v12 = (v62 + 40 * v11);
  v70 = *v12;
  v13 = v12[3];
  v66 = v12[2];
  v14 = v12[4];
  v64 = v11 + 1;
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v73 = v12[1];

  swift_bridgeObjectRetain_n();
  v20 = 0;
  v65 = MEMORY[0x1E69E7CC0];
  v71 = v14;
  v72 = v19;
  while (v18)
  {
LABEL_14:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(v14 + 48) + 48 * (v22 | (v20 << 6));
    v24 = *v23;
    v25 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 24);
    v28 = *(v23 + 32);
    v29 = *(v23 + 40);
    v75 = v27;
    v76 = v28;
    v74 = v26;
    v77 = *v23;
    v78 = v25;
    if (v29)
    {
      sub_1DD57AE38(v24, v25, v26, v27, v28, v29);
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v30 = sub_1DD63F9F8();
      __swift_project_value_buffer(v30, qword_1EE16F068);

      v31 = sub_1DD63F9D8();
      v32 = sub_1DD640368();

      if (os_log_type_enabled(v31, v32))
      {
        v68 = v32;
        v33 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v79[0] = v67;
        *v33 = 136315138;
        if (v13)
        {
          swift_bridgeObjectRetain_n();

          MEMORY[0x1E12B2260](64, 0xE100000000000000);
          MEMORY[0x1E12B2260](v66, v13);

          v34 = v70;
          v35 = v73;
        }

        else
        {
          v35 = v73;

          v34 = v70;
        }

        v19 = v72;
        v42 = sub_1DD39565C(v34, v35, v79);

        *(v33 + 4) = v42;
        _os_log_impl(&dword_1DD38D000, v31, v68, "[UCG] Filtering out relationship match for '%s' since it was not a name based match", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v67);
        MEMORY[0x1E12B3DA0](v67, -1, -1);
        MEMORY[0x1E12B3DA0](v33, -1, -1);

        v43 = v77;
        v44 = v78;
        v45 = v74;
        v46 = v75;
        v47 = v76;
        v48 = v29;
        goto LABEL_33;
      }

      sub_1DD41B1C8(v77, v78, v74, v75, v28, v29);
      v19 = v72;
    }

    else
    {
      sub_1DD57AE38(v24, v25, v26, v27, v28, 0);
      if ((v26 & 8) == 0 || (v26 & 3) == 3)
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v54 = *(v65 + 16);
          sub_1DD3C129C();
          v65 = v55;
        }

        v50 = *(v65 + 16);
        v52 = v57;
        v51 = v58;
        if (v50 >= *(v65 + 24) >> 1)
        {
          sub_1DD3C129C();
          v52 = v57;
          v51 = v58;
          v65 = v56;
        }

        *(v65 + 16) = v50 + 1;
        v53 = (v65 + 104 * v50);
        v53[4] = v70;
        v53[5] = v73;
        v53[6] = v66;
        v53[7] = v13;
        v53[8] = v77;
        v53[9] = v78;
        v53[10] = v26;
        v53[11] = v27;
        v53[12] = v28;
        v53[13] = v52;
        v53[14] = v59;
        v53[15] = v51;
        v53[16] = v60;
        v14 = v71;
      }

      else
      {
        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v36 = sub_1DD63F9F8();
        __swift_project_value_buffer(v36, qword_1EE16F068);

        v37 = sub_1DD63F9D8();
        v38 = sub_1DD640368();

        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v79[0] = v69;
          *v39 = 136315138;
          if (v13)
          {
            swift_bridgeObjectRetain_n();

            MEMORY[0x1E12B2260](64, 0xE100000000000000);
            MEMORY[0x1E12B2260](v66, v13);

            v40 = v70;
            v41 = v73;
          }

          else
          {
            v41 = v73;

            v40 = v70;
          }

          v19 = v72;
          v49 = sub_1DD39565C(v40, v41, v79);

          *(v39 + 4) = v49;
          _os_log_impl(&dword_1DD38D000, v37, v38, "[UCG] Filtering out relationship match for '%s' since it was an organization match", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          MEMORY[0x1E12B3DA0](v69, -1, -1);
          MEMORY[0x1E12B3DA0](v39, -1, -1);

          v43 = v77;
          v44 = v78;
          v45 = v74;
          v46 = v75;
          v47 = v76;
          v48 = 0;
LABEL_33:
          sub_1DD41B1C8(v43, v44, v45, v46, v47, v48);
          v14 = v71;
        }

        else
        {

          sub_1DD41B1C8(v77, v78, v26, v75, v28, 0);
          v14 = v71;
          v19 = v72;
        }
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      sub_1DD607D10(v65);
      v10 = v61;
      v11 = v64;
      goto LABEL_3;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_1DD61E368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = a1;
  v59 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v52 - v11);
  v13 = *(a2 + 8);
  v64 = *a2;
  v14 = *(a2 + 24);
  v60 = *(a2 + 16);
  v15 = *(a2 + 80);
  v56 = *(a2 + 72);
  v57 = v13;
  if ((*(a2 + 48) & 0x20) != 0)
  {
    v55 = a6;
    v18 = *(a2 + 88);
    v19 = *(a2 + 96);
    if (*(a2 + 32) == v18 && *(a2 + 40) == v19)
    {

      swift_bridgeObjectRetain_n();
    }

    else
    {
      v21 = *(a2 + 88);
      v22 = *(a2 + 96);
      v23 = sub_1DD640CD8();

      swift_bridgeObjectRetain_n();

      if ((v23 & 1) == 0)
      {

        v17 = 0;
        v18 = v13;
        goto LABEL_18;
      }
    }

    if (qword_1EE165FB0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

  v16 = *(a2 + 64);

  swift_bridgeObjectRetain_n();

  v17 = 0;
  v18 = v13;
  while (1)
  {
    v62 = v56;
    v63 = v15;
    v61[0] = v59;
    v61[1] = a5;
    v33 = sub_1DD63D168();
    (*(*(v33 - 8) + 16))(v12, a6, v33);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v33);
    sub_1DD3B7F10();
    v19 = sub_1DD6406B8();
    sub_1DD390754(v12, &qword_1ECCDC3F0, &unk_1DD64AF50);

    v15 = a5;

    v12 = v58;
    v34 = *v58;
    swift_isUniquelyReferenced_nonNull_native();
    v62 = *v12;
    v35 = v62;
    v36 = sub_1DD3FEDF8(v64, v18, v60, v14);
    v38 = *(v35 + 16);
    v39 = (v37 & 1) == 0;
    a5 = v38 + v39;
    if (!__OFADD__(v38, v39))
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
LABEL_11:
    v24 = sub_1DD63F9F8();
    __swift_project_value_buffer(v24, qword_1EE16F068);

    v25 = sub_1DD63F9D8();
    v26 = sub_1DD640358();

    if (os_log_type_enabled(v25, v26))
    {
      v53 = v26;
      v27 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v61[0] = v52;
      *v27 = 136315394;
      v54 = a5;
      if (v14)
      {
        v62 = v64;
        v63 = v57;
        swift_bridgeObjectRetain_n();

        MEMORY[0x1E12B2260](64, 0xE100000000000000);
        MEMORY[0x1E12B2260](v60, v14);

        v28 = v62;
        v29 = v63;
      }

      else
      {
        v29 = v57;

        v28 = v64;
      }

      v30 = sub_1DD39565C(v28, v29, v61);

      *(v27 + 4) = v30;
      *(v27 + 12) = 2080;
      v31 = sub_1DD39565C(v18, v19, v61);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_1DD38D000, v25, v53, "[UCG] relationship based match %s is based on person name %s and is an exact match", v27, 0x16u);
      v32 = v52;
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v32, -1, -1);
      MEMORY[0x1E12B3DA0](v27, -1, -1);

      v17 = 1;
      a5 = v54;
    }

    else
    {

      v17 = 1;
    }

    v18 = v57;
LABEL_18:
    a6 = v55;
  }

  v40 = v36;
  v41 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEE8, &qword_1DD664BC8);
  v42 = sub_1DD640A08();
  v43 = v62;
  if (v42)
  {
    v44 = v57;
    v45 = sub_1DD3FEDF8(v64, v57, v60, v14);
    if ((v41 & 1) != (v46 & 1))
    {
      result = sub_1DD640D58();
      __break(1u);
      return result;
    }

    v40 = v45;
  }

  else
  {
    v44 = v57;
  }

  *v58 = v43;
  if (v41)
  {
  }

  else
  {
    sub_1DD400A2C(v40, v64, v44, v60, v14, MEMORY[0x1E69E7CC0], v43);
  }

  if (v19)
  {
    v17 |= 2uLL;
  }

  v47 = *(v43 + 56) + 8 * v40;
  sub_1DD3BE084();
  v48 = *(*v47 + 16);
  result = sub_1DD3BE244(v48);
  v50 = *v47;
  *(v50 + 16) = v48 + 1;
  v51 = v50 + 48 * v48;
  *(v51 + 32) = v59;
  *(v51 + 40) = v15;
  *(v51 + 56) = 0;
  *(v51 + 64) = 0;
  *(v51 + 48) = v17;
  *(v51 + 72) = 1;
  return result;
}

void sub_1DD61E944()
{
  OUTLINED_FUNCTION_18_4();
  v244 = v0;
  v257 = v4;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_7_3();
  v235 = v11;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8);
  v12 = OUTLINED_FUNCTION_7(v241);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v236 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_0();
  v230 = v17;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_0();
  v232 = v19;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_0();
  v237 = v21;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  v234 = v23;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16_3();
  v240 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEE0, &unk_1DD664BB0);
  v27 = OUTLINED_FUNCTION_3(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2_1();
  v239 = v30;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_16_3();
  v242 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_3(v33);
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_7_3();
  v238 = v37;
  OUTLINED_FUNCTION_6_2();
  v38 = sub_1DD63D0F8();
  v39 = OUTLINED_FUNCTION_0(v38);
  v246 = v40;
  v247 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  v245 = v43;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v44 = OUTLINED_FUNCTION_0(v256);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  v229 = v49;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_0();
  v231 = v51;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_0();
  v233 = v53;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_0();
  v249 = v55;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_0();
  v248 = v57;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_18_0();
  v254 = v59;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_18_0();
  v251 = v61;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_0();
  v250 = v64;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_123_0();
  v66 = type metadata accessor for Signpost();
  v67 = OUTLINED_FUNCTION_7(v66);
  v69 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_65_7();
  memcpy(v267, v6, sizeof(v267));
  if (qword_1EE166460 != -1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v70 = qword_1EE16F0C0;
    v71 = v3 + *(v66 + 20);
    *v71 = "UCG.FilterPICSCandidates";
    *(v71 + 8) = 24;
    *(v71 + 16) = 2;
    v72 = v70;
    sub_1DD63F9B8();
    *(v3 + *(v66 + 24)) = v72;
    v72;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    OUTLINED_FUNCTION_23_5();
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_1DD643F90;
    v74 = sub_1DD6408F8();
    v76 = v75;
    *(v73 + 56) = MEMORY[0x1E69E6158];
    *(v73 + 64) = sub_1DD392BD8();
    *(v73 + 32) = v74;
    *(v73 + 40) = v76;
    OUTLINED_FUNCTION_22();
    v243 = v3;
    sub_1DD63F998();

    v77 = 0;
    v78 = v257;
    v261 = *(v257 + 16);
    v252 = MEMORY[0x1E69E7CC0];
    v255 = v46;
    while (v261 != v77)
    {
      v79 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v80 = v46[9];
      OUTLINED_FUNCTION_112_0();
      sub_1DD3EB3D0(v81, v82, v83, &qword_1DD644470);
      v84 = v2 + *(v256 + 36);
      if (v84[*(type metadata accessor for ContactResolver.SignalSet(0) + 204)])
      {
        sub_1DD390754(v2, &qword_1ECCDBBE8, &qword_1DD644470);
        ++v77;
      }

      else
      {
        sub_1DD3EB4B8(v2, v250, &qword_1ECCDBBE8, &qword_1DD644470);
        v85 = v252;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v264 = v252;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_36_2();
          OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8();
          v85 = *v264;
        }

        v88 = *(v85 + 16);
        v87 = *(v85 + 24);
        v89 = v88 + 1;
        if (v88 >= v87 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v87);
          v253 = v90;
          sub_1DD42B4F8();
          v89 = v253;
          v85 = *v264;
        }

        ++v77;
        *(v85 + 16) = v89;
        v252 = v85;
        sub_1DD3EB4B8(v250, v85 + v79 + v88 * v80, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      v46 = v255;
      v78 = v257;
    }

    v91 = 0;
    v250 = MEMORY[0x1E69E7CC0];
    v2 = &qword_1ECCDBBE8;
    while (v261 != v91)
    {
      v92 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v93 = v46[9];
      OUTLINED_FUNCTION_28_2();
      sub_1DD3EB3D0(v94, v95, v96, &qword_1DD644470);
      v97 = v1 + *(v256 + 36);
      if (*(v97 + *(type metadata accessor for ContactResolver.SignalSet(0) + 216)) == 1)
      {
        sub_1DD3EB4B8(v1, v251, &qword_1ECCDBBE8, &qword_1DD644470);
        v101 = v250;
        v102 = swift_isUniquelyReferenced_nonNull_native();
        *v264 = v250;
        if ((v102 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_2();
          OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8();
          v101 = *v264;
        }

        v104 = *(v101 + 16);
        v103 = *(v101 + 24);
        if (v104 >= v103 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v103);
          sub_1DD42B4F8();
          v101 = *v264;
        }

        ++v91;
        *(v101 + 16) = v104 + 1;
        v250 = v101;
        sub_1DD3EB4B8(v251, v101 + v92 + v104 * v93, &qword_1ECCDBBE8, &qword_1DD644470);
        v46 = v255;
        v78 = v257;
      }

      else
      {
        OUTLINED_FUNCTION_112_0();
        sub_1DD390754(v98, v99, v100);
        ++v91;
        v78 = v257;
      }
    }

    v105 = 0;
    v251 = MEMORY[0x1E69E7CC0];
    v106 = &qword_1ECCDBBE8;
    v107 = v256;
    while (v261 != v105)
    {
      v2 = ((*(v46 + 80) + 32) & ~*(v46 + 80));
      v108 = v46[9];
      sub_1DD3EB3D0(v2 + v78 + v108 * v105, v254, v106, &qword_1DD644470);
      v109 = v106;
      v110 = v254 + *(v107 + 36);
      if (*(v110 + *(type metadata accessor for ContactResolver.SignalSet(0) + 204)) == 1)
      {
        sub_1DD3EB4B8(v254, v248, v109, &qword_1DD644470);
        v111 = v251;
        v112 = swift_isUniquelyReferenced_nonNull_native();
        *v264 = v251;
        if ((v112 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_2();
          OUTLINED_FUNCTION_26_2();
          sub_1DD42B4F8();
          v111 = *v264;
        }

        v114 = *(v111 + 16);
        v113 = *(v111 + 24);
        if (v114 >= v113 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v113);
          OUTLINED_FUNCTION_90();
          sub_1DD42B4F8();
          v111 = *v264;
        }

        ++v105;
        *(v111 + 16) = v114 + 1;
        v251 = v111;
        v115 = v2 + v111 + v114 * v108;
        v106 = v109;
        sub_1DD3EB4B8(v248, v115, v109, &qword_1DD644470);
        v46 = v255;
        v107 = v256;
        v78 = v257;
      }

      else
      {
        sub_1DD390754(v254, v109, &qword_1DD644470);
        ++v105;
        v78 = v257;
        v106 = v109;
      }
    }

    v116 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config;
    v117 = sub_1DD553818(v244 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config);
    if ((sub_1DD554570(*(v244 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors), v117) & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_1DD3EB3D0(v244 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler, v264, &qword_1ECCDCF40, &qword_1DD64CBF0);
    if (*&v264[24] == 1)
    {

      sub_1DD390754(v264, &qword_1ECCDCF40, &qword_1DD64CBF0);
      goto LABEL_36;
    }

    v265[0] = *v264;
    v265[1] = *&v264[16];
    v266 = *&v264[32];
    if (v117 == 2)
    {
      sub_1DD44FDCC(v265);
LABEL_35:

LABEL_36:
      v1 = *(v252 + 16);
      if (qword_1EE165FB0 != -1)
      {
        goto LABEL_97;
      }

      goto LABEL_37;
    }

    v228 = v116;
    v3 = *(v251 + 16);
    v1 = MEMORY[0x1E69E7CC0];
    LODWORD(v248) = v117;
    if (v3)
    {
      break;
    }

LABEL_55:
    sub_1DD55858C(v244 + v228, v238);
    OUTLINED_FUNCTION_8(v238, 1, v247);
    if (v147)
    {
      v66 = v245;
      sub_1DD63D0E8();
      OUTLINED_FUNCTION_8(v238, 1, v247);
      v148 = v255;
      v3 = v250;
      if (!v147)
      {
        sub_1DD390754(v238, &qword_1ECCDBAC8, &qword_1DD643E60);
      }
    }

    else
    {
      v66 = v245;
      (*(v246 + 32))(v245, v238, v247);
      v148 = v255;
      v3 = v250;
    }

    memcpy(v264, v267, sizeof(v264));
    sub_1DD55A32C(v264, v1, v66, v248, v242);

    sub_1DD3EB3D0(v242, v239, &qword_1ECCDFEE0, &unk_1DD664BB0);
    OUTLINED_FUNCTION_8(v239, 1, v241);
    if (!v147)
    {
      v161 = v240;
      sub_1DD3EB4B8(v239, v240, &qword_1ECCDEB40, &qword_1DD65B2B8);
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v162 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v162, qword_1EE16F068);
      sub_1DD3EB3D0(v240, v234, &qword_1ECCDEB40, &qword_1DD65B2B8);
      v163 = sub_1DD63F9D8();
      v164 = sub_1DD640368();
      if (os_log_type_enabled(v163, v164))
      {
        OUTLINED_FUNCTION_18_1();
        v165 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v258 = swift_slowAlloc();
        *v264 = v258;
        *v165 = 136315138;
        v166 = v234[1];
        v167 = *(v241 + 64);
        v168 = *(v234 + v167);
        v169 = *(v241 + 48);
        *v237 = *v234;
        *(v237 + 1) = v166;
        (*(v246 + 16))(&v237[v169], v234 + v169, v247);
        v237[v167] = v168;
        sub_1DD3EB3D0(v237, v232, &qword_1ECCDEB40, &qword_1DD65B2B8);

        v170 = sub_1DD63FE38();
        v172 = v171;
        sub_1DD390754(v237, &qword_1ECCDEB40, &qword_1DD65B2B8);
        sub_1DD390754(v234, &qword_1ECCDEB40, &qword_1DD65B2B8);
        sub_1DD39565C(v170, v172, v264);
        OUTLINED_FUNCTION_115_0();

        *(v165 + 4) = v170;
        v161 = v240;
        _os_log_impl(&dword_1DD38D000, v163, v164, "[UCG] Found a valid PICS candidate: %s", v165, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v258);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        v173 = sub_1DD390754(v234, &qword_1ECCDEB40, &qword_1DD65B2B8);
      }

      MEMORY[0x1EEE9AC00](v173);
      OUTLINED_FUNCTION_31_0();
      *(v184 - 16) = v161;
      sub_1DD6084D4(sub_1DD626B28, v251, v235);

      OUTLINED_FUNCTION_8(v235, 1, v256);
      if (v147)
      {
        sub_1DD390754(v235, &qword_1ECCDFC10, &unk_1DD664BA0);
        sub_1DD3EB3D0(v161, v236, &qword_1ECCDEB40, &qword_1DD65B2B8);
        v185 = sub_1DD63F9D8();
        v186 = sub_1DD640368();
        if (os_log_type_enabled(v185, v186))
        {
          OUTLINED_FUNCTION_18_1();
          v187 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v262 = swift_slowAlloc();
          *v264 = v262;
          *v187 = 136315138;
          sub_1DD3EB3D0(v236, v237, &qword_1ECCDEB40, &qword_1DD65B2B8);
          v188 = *(v237 + 1);

          v190 = *(v241 + 48);
          v191 = MEMORY[0x1E12AF3B0](v189);
          v193 = v192;
          sub_1DD390754(v236, &qword_1ECCDEB40, &qword_1DD65B2B8);
          v194 = *(v246 + 8);
          v194(&v237[v190], v247);
          sub_1DD39565C(v191, v193, v264);
          OUTLINED_FUNCTION_124();

          *(v187 + 4) = v191;
          _os_log_impl(&dword_1DD38D000, v185, v186, "[UCG] PLUS Candidate was not a valid PICs match for this request. Removing... (plusId was %s", v187, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v262);
          v161 = v240;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v195 = OUTLINED_FUNCTION_8_6();
          MEMORY[0x1E12B3DA0](v195);

          sub_1DD390754(v242, &qword_1ECCDFEE0, &unk_1DD664BB0);
          v194(v245, v247);
        }

        else
        {

          sub_1DD390754(v236, &qword_1ECCDEB40, &qword_1DD65B2B8);
          sub_1DD390754(v242, &qword_1ECCDFEE0, &unk_1DD664BB0);
          (*(v246 + 8))(v245, v247);
        }

        sub_1DD44FDCC(v265);
      }

      else
      {
        sub_1DD3EB4B8(v235, v233, &qword_1ECCDBBE8, &qword_1DD644470);
        v196 = v233 + *(v256 + 36);
        v197 = type metadata accessor for ContactResolver.SignalSet(0);
        if (*(v196 + *(v197 + 236)) == 1)
        {
          v198 = v197;
          v259 = *(*(v196 + *(v197 + 208)) + 16) > 1uLL;
          sub_1DD3EB3D0(v233, v231, &qword_1ECCDBBE8, &qword_1DD644470);
          v199 = (*(v161 + *(v241 + 64)) & 1) == 0;
          *(v231 + *(type metadata accessor for Contact() + 92)) = v199;
          v200 = v231 + *(v256 + 36);
          *(v200 + v198[51]) = 1;
          sub_1DD3EB3D0(v161, v237, &qword_1ECCDEB40, &qword_1DD65B2B8);
          v201 = *(v237 + 1);

          v202 = *(v241 + 48);
          *(v200 + v198[53]) = v237[*(v241 + 64)];
          v263 = *(v246 + 8);
          v263(&v237[v202], v247);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC60, &qword_1DD664BC0);
          v203 = *(v246 + 72);
          v204 = (*(v246 + 80) + 32) & ~*(v246 + 80);
          v205 = swift_allocObject();
          *(v205 + 16) = xmmword_1DD643F90;
          sub_1DD3EB3D0(v161, v237, &qword_1ECCDEB40, &qword_1DD65B2B8);
          v206 = *(v237 + 1);

          (*(v246 + 32))(v205 + v204, &v237[*(v241 + 48)], v247);
          v207 = v198[52];
          v208 = *(v200 + v207);

          *(v200 + v207) = v205;
          *(v200 + v198[55]) = v259;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
          v209 = v255[9];
          v210 = (*(v255 + 80) + 32) & ~*(v255 + 80);
          v211 = swift_allocObject();
          *(v211 + 16) = xmmword_1DD643F90;
          sub_1DD3EB3D0(v231, v211 + v210, &qword_1ECCDBBE8, &qword_1DD644470);
          *v264 = v252;
          OUTLINED_FUNCTION_15_55();
          sub_1DD60793C(v211);
          sub_1DD390754(v242, &qword_1ECCDFEE0, &unk_1DD664BB0);
          v263(v245, v247);
          sub_1DD44FDCC(v265);
          sub_1DD390754(v233, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v231, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v240, &qword_1ECCDEB40, &qword_1DD65B2B8);
          goto LABEL_40;
        }

        sub_1DD3EB3D0(v233, v229, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD3EB3D0(v161, v230, &qword_1ECCDEB40, &qword_1DD65B2B8);
        v212 = sub_1DD63F9D8();
        v213 = sub_1DD640368();
        if (os_log_type_enabled(v212, v213))
        {
          OUTLINED_FUNCTION_58_9();
          v214 = swift_slowAlloc();
          OUTLINED_FUNCTION_64_6();
          *v264 = swift_slowAlloc();
          *v214 = 136315394;
          v260 = v213;
          v215 = *v229;
          v216 = v229[1];

          sub_1DD390754(v229, &qword_1ECCDBBE8, &qword_1DD644470);
          v217 = sub_1DD39565C(v215, v216, v264);

          *(v214 + 4) = v217;
          *(v214 + 12) = 2080;
          sub_1DD3EB3D0(v230, v237, &qword_1ECCDEB40, &qword_1DD65B2B8);
          v218 = *(v237 + 1);

          v220 = *(v241 + 48);
          v221 = MEMORY[0x1E12AF3B0](v219);
          v223 = v222;
          v224 = OUTLINED_FUNCTION_94_1();
          sub_1DD390754(v224, v225, &qword_1DD65B2B8);
          v226 = *(v246 + 8);
          v226(&v237[v220], v247);
          sub_1DD39565C(v221, v223, v264);
          OUTLINED_FUNCTION_124();

          *(v214 + 14) = v221;
          _os_log_impl(&dword_1DD38D000, v212, v260, "[UCG] PLUS Candidate %s no longer exists in the address book. Ignoring... (plusId was %s)", v214, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v227 = OUTLINED_FUNCTION_8_6();
          MEMORY[0x1E12B3DA0](v227);

          sub_1DD390754(v242, &qword_1ECCDFEE0, &unk_1DD664BB0);
          v226(v245, v247);
          v161 = v240;
        }

        else
        {

          sub_1DD390754(v230, &qword_1ECCDEB40, &qword_1DD65B2B8);
          sub_1DD390754(v229, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v242, &qword_1ECCDFEE0, &unk_1DD664BB0);
          (*(v246 + 8))(v245, v247);
        }

        sub_1DD44FDCC(v265);
        sub_1DD390754(v233, &qword_1ECCDBBE8, &qword_1DD644470);
      }

      sub_1DD390754(v161, &qword_1ECCDEB40, &qword_1DD65B2B8);
      v130 = v243;
      goto LABEL_41;
    }

    sub_1DD390754(v239, &qword_1ECCDFEE0, &unk_1DD664BB0);
    v149 = *(v3 + 16);
    if (!v149)
    {
LABEL_72:
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v174 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v174, qword_1EE16F068);
      v175 = sub_1DD63F9D8();
      sub_1DD640368();
      v176 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v176, v177))
      {
        OUTLINED_FUNCTION_28();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_41_14();
        _os_log_impl(v178, v179, v180, v181, v182, 2u);
        v183 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v183);
      }

      *v264 = v252;
      OUTLINED_FUNCTION_15_55();
      sub_1DD60793C(v3);
      sub_1DD390754(v242, &qword_1ECCDFEE0, &unk_1DD664BB0);
      (*(v246 + 8))(v66, v247);
      sub_1DD44FDCC(v265);
      goto LABEL_40;
    }

    v150 = 0;
    v1 = 2;
    v46 = v256;
    while (1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD586A18(v3);
        v3 = v160;
      }

      if (v150 >= *(v3 + 16))
      {
        break;
      }

      v2 = (v150 + 1);
      v151 = *(v148 + 80);
      OUTLINED_FUNCTION_24_0();
      v153 = v3 + v152 + v148[9] * v150;
      v154 = v3;
      v155 = v153 + *(v256 + 36);
      v156 = type metadata accessor for ContactResolver.SignalSet(0);
      *(v155 + v156[51]) = 0;
      *(v153 + *(v256 + 36) + v156[53]) = 0;
      *(v153 + *(type metadata accessor for Contact() + 92)) = 2;
      v3 = v154;
      v157 = v153 + *(v256 + 36);
      v66 = v245;
      v158 = v156[52];
      v159 = *(v157 + v158);
      *(v157 + v158) = MEMORY[0x1E69E7CC0];

      v150 = v2;
      if (v149 == v2)
      {
        goto LABEL_72;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v261 = v249 + *(v107 + 36);
  v257 = *(type metadata accessor for ContactResolver.SignalSet(0) + 208);
  v132 = *(v46 + 80);
  OUTLINED_FUNCTION_24_0();
  v134 = v251 + v133;
  v254 = v46[9];
  v46 = &qword_1DD644470;
  while (1)
  {
    OUTLINED_FUNCTION_112_0();
    sub_1DD3EB3D0(v135, v136, v137, &qword_1DD644470);
    v138 = *(v261 + v257);

    sub_1DD390754(v249, &qword_1ECCDBBE8, &qword_1DD644470);
    v66 = *(v138 + 16);
    v139 = *(v1 + 16);
    v2 = (v139 + v66);
    if (__OFADD__(v139, v66))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v2 > *(v1 + 24) >> 1)
    {
      sub_1DD3BED30();
      v1 = v140;
    }

    if (*(v138 + 16))
    {
      break;
    }

    if (v66)
    {
      goto LABEL_92;
    }

LABEL_54:
    v134 += v254;
    if (!--v3)
    {
      goto LABEL_55;
    }
  }

  OUTLINED_FUNCTION_47_12();
  if (v141 < v66)
  {
    goto LABEL_93;
  }

  v142 = (*(v246 + 80) + 32) & ~*(v246 + 80);
  v143 = *(v246 + 72);
  swift_arrayInitWithCopy();

  if (!v66)
  {
    goto LABEL_54;
  }

  v144 = *(v1 + 16);
  v145 = __OFADD__(v144, v66);
  v146 = v144 + v66;
  if (!v145)
  {
    *(v1 + 16) = v146;
    goto LABEL_54;
  }

  __break(1u);
LABEL_97:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_37:
  v118 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v118, qword_1EE16F068);
  v119 = sub_1DD63F9D8();
  sub_1DD640368();
  v120 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v120, v121))
  {
    v122 = v261 - v1;
    OUTLINED_FUNCTION_18_1();
    v123 = swift_slowAlloc();
    *v123 = 134217984;
    *(v123 + 4) = v122;
    OUTLINED_FUNCTION_41_14();
    _os_log_impl(v124, v125, v126, v127, v128, 0xCu);
    v129 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v129);
  }

LABEL_40:
  v130 = v243;
LABEL_41:
  sub_1DD6404C8();
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_1_133();
  sub_1DD627210(v130, v131);
  OUTLINED_FUNCTION_17();
}

BOOL sub_1DD6201A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
  v4 = *(v3 + *(type metadata accessor for ContactResolver.SignalSet(0) + 208));
  v6[2] = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEB40, &qword_1DD65B2B8) + 48);
  return sub_1DD4508A8(sub_1DD626B48, v6, v4);
}

uint64_t sub_1DD620254@<X0>(uint64_t a1@<X0>, unsigned __int16 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1DD3EB3D0(a1, a3, &qword_1ECCDBBE8, &qword_1DD644470);
  v5 = *(a3 + *(type metadata accessor for Contact() + 80));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v7 = a3 + *(v6 + 36);
  v8 = *(v7 + 232);
  v9 = *(v7 + 216);
  v17[0] = *(v7 + 200);
  v17[1] = v9;
  v17[2] = v8;
  v11 = OUTLINED_FUNCTION_130_0(v6, v10);
  OUTLINED_FUNCTION_130_0(v11, v12);

  v14 = sub_1DD604820(v13, v17, v4, a3);
  sub_1DD390754(v17, &qword_1ECCDFED8, &unk_1DD664B90);

  v15 = *(v7 + 272);

  *(v7 + 272) = v14;
  return result;
}

uint64_t sub_1DD62034C@<X0>(const void *a1@<X0>, __int128 *a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = type metadata accessor for ContactResolver.HandleSignalSet(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(__dst, a1, 0x4AuLL);
  *(v13 + 1) = 0;
  v14 = v10[9];
  v15 = sub_1DD63F148();
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v15);
  v13[v10[10]] = 0;
  v16 = v10[12];
  v13[v16] = 0;
  v13[v10[13]] = 0;
  v13[v10[14]] = 0;
  *v13 = __dst[72];
  v17 = *(a2 + 2);
  if (v17)
  {
    v26 = *a2;
    v28 = *(a2 + 24);
    v29 = *(a2 + 5);
    memcpy(v30, __dst, 0x4AuLL);
    v27 = v17;
    sub_1DD40B80C(&v26);
    v13[3] = v18 != 0;
    v13[2] = v18 == 2;
    v13[4] = v18 == 1;
  }

  v19 = HIBYTE(a3);
  if (a3 == 2)
  {
    v20 = 3;
  }

  else
  {
    v20 = HIBYTE(a3);
  }

  v21 = __dst[16];
  if (__dst[16] != 3)
  {
    if (__dst[16] != v20)
    {
      goto LABEL_8;
    }

LABEL_12:
    v13[v16] = 1;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
    v23 = type metadata accessor for ContactResolver.SignalSet(0);
    *(a4 + v22 + *(v23 + 188)) = 1;
    goto LABEL_13;
  }

  if (v20 == 3)
  {
    goto LABEL_12;
  }

LABEL_8:
  if (a3 == 2 || (a3 & 1) == 0)
  {
    v13[v16] = 1;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) + 36);
    v23 = type metadata accessor for ContactResolver.SignalSet(0);
LABEL_13:
    *(a4 + v22 + *(v23 + 192)) = 1;
    v19 = v20;
  }

  v13[v10[11]] = v19 == v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  sub_1DD627288(v13, a5 + *(v24 + 36));
  memcpy(a5, __dst, 0x4AuLL);
  return sub_1DD3C6A40(__dst, v30);
}

void sub_1DD6205E0()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v67 - v11;
  v13 = *(v2 + 16);
  if (!v13 || (v14 = v2 + *(v8 + 36), v78 = (*(v10 + 80) + 32) & ~*(v10 + 80), v15 = (v14 + v78), (v16 = v15[27]) == 0))
  {
LABEL_24:

    goto LABEL_26;
  }

  v69 = v10;
  v17 = v15[25];
  v18 = v15[26];
  v20 = v15[28];
  v19 = v15[29];
  v21 = v15[30];
  v76 = v9;
  v77 = v17;
  LOBYTE(v83) = v17;
  *(&v83 + 1) = v18;
  *&v84 = v16;
  *(&v84 + 1) = v20;
  *&v85 = v19;
  *(&v85 + 1) = v21;
  v22 = qword_1EE165FB0;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v23 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v23, qword_1EE16F068);

  v70 = v0;
  v24 = sub_1DD63F9D8();
  v25 = sub_1DD640368();
  sub_1DD3FAA54(v77, v18, v16);
  v26 = os_log_type_enabled(v24, v25);
  v74 = v18;
  v75 = v16;
  v73 = v20;
  v72 = v19;
  v71 = v21;
  if (v26)
  {
    OUTLINED_FUNCTION_18_1();
    v27 = swift_slowAlloc();
    OUTLINED_FUNCTION_17_0();
    v67 = swift_slowAlloc();
    v82 = v67;
    *v27 = 136315138;
    v79 = v83;
    v80 = v84;
    v81 = v85;

    v28 = v25;
    v29 = ContactHandleQuery.description.getter();
    v31 = v30;
    v32 = v24;

    v33 = sub_1DD39565C(v29, v31, &v82);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1DD38D000, v32, v28, "[UCG] There's a handle in the query - attempting to filter handles: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {
  }

  v34 = 0;
  v35 = *(v69 + 72);
  v36 = v2 + v78;
  v37 = MEMORY[0x1E69E7CC0];
  v69 = v2 + v78;
LABEL_9:
  v38 = v36 + v35 * v34;
  while (v13 != v34)
  {
    v39 = OUTLINED_FUNCTION_96_1();
    sub_1DD3EB3D0(v39, v40, &qword_1ECCDBBE8, &qword_1DD644470);
    if (sub_1DD620B8C(v12, &v83))
    {
      v41 = v76;
      sub_1DD3EB4B8(v12, v76, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v79 = v37;
      v68 = v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = *(v37 + 16);
        OUTLINED_FUNCTION_26_2();
        sub_1DD42B4F8();
        v41 = v76;
        v37 = v79;
      }

      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v44);
        v48 = v47;
        sub_1DD42B4F8();
        v46 = v48;
        v41 = v76;
        v37 = v79;
      }

      ++v34;
      *(v37 + 16) = v46;
      sub_1DD3EB4B8(v41, v37 + v78 + v45 * v35, &qword_1ECCDBBE8, &qword_1DD644470);
      v2 = v68;
      v36 = v69;
      goto LABEL_9;
    }

    sub_1DD390754(v12, &qword_1ECCDBBE8, &qword_1DD644470);
    v38 += v35;
    ++v34;
  }

  sub_1DD3FAA54(v77, v74, v75);
  if (!*(v37 + 16))
  {

    v59 = sub_1DD63F9D8();
    sub_1DD640368();
    v60 = OUTLINED_FUNCTION_5_32();
    if (os_log_type_enabled(v60, v61))
    {
      OUTLINED_FUNCTION_28();
      v62 = swift_slowAlloc();
      *v62 = 0;
      OUTLINED_FUNCTION_38_8();
      _os_log_impl(v63, v64, v65, v66, v62, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    goto LABEL_24;
  }

  v49 = sub_1DD63F9D8();
  sub_1DD640368();
  v50 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v50, v51))
  {
    OUTLINED_FUNCTION_58_9();
    v52 = swift_slowAlloc();
    *v52 = 134218240;
    *(v52 + 4) = v13;

    *(v52 + 12) = 2048;
    *(v52 + 14) = *(v37 + 16);

    OUTLINED_FUNCTION_41_14();
    _os_log_impl(v53, v54, v55, v56, v57, 0x16u);
    v58 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v58);
  }

  else
  {
  }

LABEL_26:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD620B8C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + *(type metadata accessor for Contact() + 80));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *MEMORY[0x1E69964B0];
  v46 = *MEMORY[0x1E69964B0] + 16;
  v7 = 32;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    memcpy(__dst, (v3 + v7), 0x4AuLL);
    v8 = *a2;
    if (*a2 && v8 != LOBYTE(__dst[1]))
    {
      goto LABEL_32;
    }

    v9 = *(a2 + 4);
    v10 = *(a2 + 5);
    if (*a2)
    {
      if (v8 != 1)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        sub_1DD3C6A40(__dst, v42);
LABEL_15:

        v17 = sub_1DD40B8E0();
        v18 = sub_1DD415480(v17);
        if (v19)
        {
          v14 = v18;
        }

        else
        {
          v14 = 0;
        }

        if (v19)
        {
          v16 = v19;
        }

        else
        {
          v16 = 0xE000000000000000;
        }

        goto LABEL_21;
      }

      sub_1DD3C6A40(__dst, v42);
      v11 = sub_1DD63FDA8();
      v12 = (*(v6 + 16))(v6, v11);
    }

    else
    {
      *&v41[0] = *(a2 + 4);
      *(&v41[0] + 1) = v10;
      v43 = 64;
      v44 = 0xE100000000000000;
      sub_1DD3C6A40(__dst, v42);
      sub_1DD3B7F10();
      if ((sub_1DD6406D8() & 1) == 0)
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);
        goto LABEL_15;
      }

      v11 = sub_1DD63FDA8();
      v12 = (*(v6 + 16))(v6, v11);
    }

    v13 = v12;

    v14 = sub_1DD63FDD8();
    v16 = v15;

LABEL_21:
    v20 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v20 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20 || (v14 == *(&__dst[3] + 1) ? (v21 = v16 == *&__dst[4]) : (v21 = 0), v21))
    {
    }

    else
    {
      v22 = sub_1DD640CD8();

      if ((v22 & 1) == 0)
      {
        sub_1DD3C6A9C(__dst);
        goto LABEL_32;
      }
    }

    memcpy(v42, __dst, 0x4AuLL);
    v23 = *(a2 + 1);
    v41[0] = *a2;
    v41[1] = v23;
    v41[2] = *(a2 + 2);
    sub_1DD412278();
    v25 = v24;
    sub_1DD3C6A9C(__dst);
    if (v25)
    {
      return 1;
    }

LABEL_32:
    v7 += 80;
    ++v5;
  }

  if (qword_1EE165FB0 == -1)
  {
    goto LABEL_34;
  }

LABEL_41:
  swift_once();
LABEL_34:
  v26 = sub_1DD63F9F8();
  __swift_project_value_buffer(v26, qword_1EE16F068);

  sub_1DD3FAAA4(a2, __dst);
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();
  sub_1DD3FAB00(a2);
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v41[0] = v30;
    *v29 = 136315394;
    v31 = MEMORY[0x1E12B2430](v3, &type metadata for ContactHandle);
    v33 = v32;

    v34 = sub_1DD39565C(v31, v33, v41);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2080;
    v35 = *(a2 + 1);
    __dst[0] = *a2;
    __dst[1] = v35;
    __dst[2] = *(a2 + 2);
    sub_1DD3FAAA4(a2, v42);
    v36 = ContactHandleQuery.description.getter();
    v38 = v37;

    v39 = sub_1DD39565C(v36, v38, v41);

    *(v29 + 14) = v39;
    _os_log_impl(&dword_1DD38D000, v27, v28, "[UCG] Nominating contact with %s for removal because it doesn't match the query for %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v30, -1, -1);
    MEMORY[0x1E12B3DA0](v29, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1DD621028()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DD390754(v0 + 56, &qword_1ECCDCF48, &unk_1DD664BF0);
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_13_50();
  sub_1DD627210(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors + 16);

  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler, &qword_1ECCDCF40, &qword_1DD64CBF0);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer));
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &qword_1ECCDCF50, &qword_1DD664BD0);
  v5 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator);

  v6 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi);

  v7 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi);

  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
  v8 = *(v0 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping);

  return v0;
}

uint64_t sub_1DD621168()
{
  sub_1DD621028();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1DD6211E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1;
  }

  v9 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v9 = 11;
  }

  v10 = v9 | (v8 << 16);
  v26[0] = a3;
  v26[1] = a4;
  v11 = &unk_1EE165000;
  do
  {
    v12 = v6;
    v13 = v26[v7];
    sub_1DD63FFE8();
    if (v14)
    {
      if (v11[502] != -1)
      {
        swift_once();
      }

      v15 = sub_1DD63F9F8();
      __swift_project_value_buffer(v15, qword_1EE16F068);

      v16 = sub_1DD63F9D8();
      v17 = sub_1DD640388();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = v10;
        v20 = v11;
        v21 = swift_slowAlloc();
        v25 = v21;
        *v18 = 136315906;
        *(v18 + 4) = sub_1DD39565C(a1, a2, &v25);
        *(v18 + 12) = 2048;
        *(v18 + 14) = v13;
        *(v18 + 22) = 2048;
        *(v18 + 24) = a3;
        *(v18 + 32) = 2048;
        *(v18 + 34) = a4;
        _os_log_impl(&dword_1DD38D000, v16, v17, "[UCG] Invalid UTF-16 offset: string=%s offset=%ld range=%ld:%ld", v18, 0x2Au);
        __swift_destroy_boxed_opaque_existential_1(v21);
        v22 = v21;
        v11 = v20;
        v10 = v19;
        MEMORY[0x1E12B3DA0](v22, -1, -1);
        MEMORY[0x1E12B3DA0](v18, -1, -1);
      }
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v12 & 1) == 0);
}

uint64_t sub_1DD621400()
{
  memcpy(__dst, v0, sizeof(__dst));
  memcpy(__src, v0, sizeof(__src));
  sub_1DD3C9478(__dst, v20);
  swift_getAtKeyPath();
  memcpy(v20, __src, 0x108uLL);
  sub_1DD3C9580(v20);
  v14 = v16[0];
  v15 = v16[1];
  sub_1DD3B7F10();
  v1 = sub_1DD6406E8();

  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1DD42BAD8(0, v2, 0);
    v3 = v17;
    v4 = v2 - 1;
    for (i = (v1 + 56); ; i += 4)
    {
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      memcpy(v16, __dst, sizeof(v16));
      sub_1DD3C9478(__dst, &v14);

      v14 = MEMORY[0x1E12B2190](v6, v7, v8, v9);
      v15 = v10;
      swift_setAtWritableKeyPath();

      memcpy(__src, v16, sizeof(__src));
      v17 = v3;
      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1DD42BAD8(v11 > 1, v12 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v12 + 1;
      memcpy((v3 + 264 * v12 + 32), __src, 0x108uLL);
      if (!v4)
      {
        break;
      }

      --v4;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

__n128 sub_1DD6215F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 40);
  sub_1DD640E28();
  sub_1DD63FD28();
  if (a4)
  {
    MEMORY[0x1E12B3140](1);
    sub_1DD63FD28();
  }

  else
  {
    MEMORY[0x1E12B3140](0);
  }

  sub_1DD640E78();
  v13 = -1 << *(a6 + 32);
  v14 = sub_1DD640758();
  *(a6 + 64 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
  v15 = (*(a6 + 48) + 32 * v14);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  v16 = *(a6 + 56) + 40 * v14;
  *(v16 + 32) = *(a5 + 32);
  result = *(a5 + 16);
  *v16 = *a5;
  *(v16 + 16) = result;
  ++*(a6 + 16);
  return result;
}

uint64_t sub_1DD621710(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      v2 = sub_1DD621B5C(v9, v4, v2, sub_1DD621888);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
      goto LABEL_5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v10 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1DD57634C(0, v4, v5);
  sub_1DD621888(v5, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }

  else
  {
    v2 = v6;
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DD621888(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = *(a3 + 56);
    v15 = (*(a3 + 48) + 32 * v13);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v28[0] = *v15;
    v28[1] = v16;
    v28[2] = v17;
    v28[3] = v18;
    v19 = (v14 + 40 * v13);
    v20 = v19[1];
    v22 = v19[2];
    v21 = v19[3];
    v23 = v19[4];
    v27[0] = *v19;
    v27[1] = v20;
    v27[2] = v22;
    v27[3] = v21;
    v27[4] = v23;

    LOBYTE(v18) = sub_1DD60C1AC(v28, v27);

    if (v18)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1DD621F54(a1, a2, v29, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1DD621A4C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1DD626C58(a5, v13);

    sub_1DD626C58(a5, v13);

    v12 = sub_1DD625210(v11, a2, a3, a4, a5, a6);

    sub_1DD626C90(a5);

    sub_1DD626C90(a5);

    return v12;
  }

  return result;
}

void *sub_1DD621B5C(void *result, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a4(v7, a2, a3);

    return OUTLINED_FUNCTION_128_0();
  }

  return result;
}

void sub_1DD621BE0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF38, &unk_1DD664C48);
      v7 = sub_1DD640A78();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v32 = v4;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_16:
        v14 = v10 | (v9 << 6);
        v15 = *(v4 + 56);
        v16 = (*(v4 + 48) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v15 + 8 * v14);
        v20 = *(v7 + 40);
        sub_1DD640E28();

        sub_1DD63FD28();
        v21 = sub_1DD640E78();
        OUTLINED_FUNCTION_57_13(v21);
        if (v22)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v7 + 64 + 8 * v24) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        OUTLINED_FUNCTION_40_12(v23);
        *v28 = v17;
        v28[1] = v18;
        OUTLINED_FUNCTION_63_4(v29, v31, v32, v19);
        if (v30)
        {
          goto LABEL_30;
        }

        v4 = v32;
      }

      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        ++v11;
        if (a1[v9])
        {
          OUTLINED_FUNCTION_14_3();
          v8 = v13 & v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1DD621D9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFF30, &unk_1DD664C38);
      v7 = sub_1DD640A78();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v32 = v4;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_16:
        v14 = v10 | (v9 << 6);
        v15 = *(v4 + 56);
        v16 = (*(v4 + 48) + 16 * v14);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v15 + 8 * v14);
        v20 = *(v7 + 40);
        sub_1DD640E28();

        v33 = v19;
        sub_1DD63FD28();
        v21 = sub_1DD640E78();
        OUTLINED_FUNCTION_57_13(v21);
        if (v22)
        {
          OUTLINED_FUNCTION_4_3();
          while (++v24 != v26 || (v25 & 1) == 0)
          {
            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            if (*(v7 + 64 + 8 * v24) != -1)
            {
              OUTLINED_FUNCTION_8_41();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_5_53();
LABEL_25:
        OUTLINED_FUNCTION_40_12(v23);
        *v28 = v17;
        v28[1] = v18;
        OUTLINED_FUNCTION_63_4(v29, v31, v32, v33);
        if (v30)
        {
          goto LABEL_30;
        }

        v4 = v32;
      }

      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        ++v11;
        if (a1[v9])
        {
          OUTLINED_FUNCTION_14_3();
          v8 = v13 & v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

void sub_1DD621F54(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDDD98, &unk_1DD654CF0);
      v23 = sub_1DD640A78();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      while (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_16:
        v13 = v10 | (v9 << 6);
        v14 = (a4[6] + 32 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = v14[2];
        v18 = v14[3];
        v19 = a4[7] + 40 * v13;
        v20 = *(v19 + 32);
        v21 = *(v19 + 16);
        v25[0] = *v19;
        v25[1] = v21;
        v26 = v20;

        sub_1DD626C58(v25, v24);
        sub_1DD6215F8(v15, v16, v17, v18, v25, v23);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_20;
        }

        if (!v5)
        {
          return;
        }
      }

      v11 = v9;
      while (1)
      {
        v9 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        v12 = a1[v9];
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          v8 = (v12 - 1) & v12;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }
  }
}

uint64_t sub_1DD6220D4(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v3 = a1;
  v4 = 0;
  v42 = *(a1 + 16);
  v5 = 32;
  while (1)
  {
    if (v42 == v4)
    {
    }

    if (v4 >= *(v3 + 16))
    {
      break;
    }

    memcpy(__dst, (v3 + v5), 0x48uLL);
    v6 = __dst[8];
    v43 = __dst[6];
    v46 = __dst[5];
    v47 = __dst[7];
    v8 = __dst[3];
    v7 = __dst[4];
    v9 = __dst[1];
    v10 = __dst[2];
    v11 = __dst[0];
    sub_1DD3EB3D0(__dst, v50, &qword_1ECCDFF28, &qword_1DD664C30);
    if (!v9)
    {
    }

    v44 = v5;
    v45 = v4;
    v12 = *v52;
    v14 = sub_1DD3FEDF8(v11, v9, v10, v8);
    v15 = *(v12 + 16);
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_18;
    }

    v18 = v13;
    if (*(v12 + 24) >= v17)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC320, &qword_1DD646168);
        sub_1DD640A18();
      }
    }

    else
    {
      v19 = v52;
      sub_1DD4E6DCC(v17, a2 & 1);
      v20 = *v19;
      v21 = sub_1DD3FEDF8(v11, v9, v10, v8);
      if ((v18 & 1) != (v22 & 1))
      {
        goto LABEL_20;
      }

      v14 = v21;
    }

    v23 = *v52;
    if (v18)
    {
      v24 = 5 * v14;
      v25 = (v23[7] + 40 * v14);
      v27 = *v25;
      v26 = v25[1];
      v28 = v25[3];
      v49 = v25[2];
      v29 = v25[4];

      v30 = sub_1DD608B88(v6, v29);

      v31 = (v23[7] + 8 * v24);
      v32 = v31[1];
      v34 = v31[3];
      v33 = v31[4];
      *v31 = v27;
      v31[1] = v26;
      v31[2] = v49;
      v31[3] = v28;
      v31[4] = v30;
    }

    else
    {
      v23[(v14 >> 6) + 8] |= 1 << v14;
      v35 = (v23[6] + 32 * v14);
      *v35 = v11;
      v35[1] = v9;
      v35[2] = v10;
      v35[3] = v8;
      v36 = (v23[7] + 40 * v14);
      *v36 = v7;
      v36[1] = v46;
      v36[2] = v43;
      v36[3] = v47;
      v36[4] = v6;
      v37 = v23[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_19;
      }

      v23[2] = v39;
    }

    v5 = v44 + 72;
    v4 = v45 + 1;
    a2 = 1;
    v3 = a1;
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD6223C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_1DD62243C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_1DD6407B8();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_1DD640918();
  *v1 = result;
  return result;
}

uint64_t sub_1DD6224DC(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1DD640CA8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
        v8 = sub_1DD640158();
        *(v8 + 16) = v7;
      }

      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_1DD622CA4(v10, v11, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1DD62275C(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1DD622668(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DD640CA8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1DD623C74(v7, v8, a1, v4);
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
    return sub_1DD622C48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DD62275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v57 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v10 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v53 = a2;
  if (a3 != a2)
  {
    v64 = *a4;
    v65 = v5;
    v59 = *(v16 + 72);
    v60 = v14;
    v61 = a5;
    v58 = &v52 - v17;
LABEL_4:
    v54 = a3;
    v20 = a3;
    while (1)
    {
      v21 = v20 - 1;
      v22 = v64;
      v23 = v59;
      v62 = v64 + v59 * v20;
      sub_1DD3EB3D0(v62, v18, &qword_1ECCDBBE8, &qword_1DD644470);
      v63 = v21;
      v24 = v22 + v21 * v23;
      v25 = sub_1DD3EB3D0(v24, v14, &qword_1ECCDBBE8, &qword_1DD644470);
      MEMORY[0x1EEE9AC00](v25);
      *(&v52 - 2) = v18;

      v26 = v65;
      sub_1DD3EC3B8();
      v28 = v27;
      v29 = *(v27 + 16);
      if (v29)
      {
        v66 = MEMORY[0x1E69E7CC0];
        sub_1DD42B97C();
        v30 = v66;
        v31 = v66[2];
        v32 = 40;
        do
        {
          v33 = *(v28 + v32);
          v66 = v30;
          if (v31 >= v30[3] >> 1)
          {
            sub_1DD42B97C();
            v30 = v66;
          }

          v30[2] = v31 + 1;
          v30[v31 + 4] = v33;
          v32 += 16;
          ++v31;
          --v29;
        }

        while (v29);

        v14 = v60;
      }

      else
      {

        v30 = MEMORY[0x1E69E7CC0];
      }

      v34 = v30[2];
      if (v34)
      {
        break;
      }

      v35 = 0;
LABEL_18:

      MEMORY[0x1EEE9AC00](v39);
      *(&v52 - 2) = v14;

      sub_1DD3EC3B8();
      v41 = v40;
      v65 = v26;
      v42 = *(v40 + 16);
      if (v42)
      {
        v66 = MEMORY[0x1E69E7CC0];
        sub_1DD42B97C();
        v43 = v66;
        v44 = v66[2];
        v45 = 40;
        do
        {
          v46 = *(v41 + v45);
          v66 = v43;
          if (v44 >= v43[3] >> 1)
          {
            sub_1DD42B97C();
            v43 = v66;
          }

          v43[2] = v44 + 1;
          v43[v44 + 4] = v46;
          v45 += 16;
          ++v44;
          --v42;
        }

        while (v42);

        v14 = v60;
      }

      else
      {

        v43 = MEMORY[0x1E69E7CC0];
      }

      v47 = v43[2];
      v18 = v58;
      v48 = 0;
      if (v47)
      {
        v49 = v43 + 4;
        while (1)
        {
          v50 = *v49++;
          v38 = __OFADD__(v48, v50);
          v48 += v50;
          if (v38)
          {
            break;
          }

          if (!--v47)
          {
            goto LABEL_29;
          }
        }

LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

LABEL_29:

      sub_1DD390754(v14, &qword_1ECCDBBE8, &qword_1DD644470);
      result = sub_1DD390754(v18, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v48 >= v35)
      {
        goto LABEL_32;
      }

      if (!v64)
      {
        goto LABEL_36;
      }

      v51 = v55;
      sub_1DD3EB4B8(v62, v55, &qword_1ECCDBBE8, &qword_1DD644470);
      swift_arrayInitWithTakeFrontToBack();
      sub_1DD3EB4B8(v51, v24, &qword_1ECCDBBE8, &qword_1DD644470);
      v20 = v63;
      if (v63 == v57)
      {
LABEL_32:
        a3 = v54 + 1;
        if (v54 + 1 != v53)
        {
          goto LABEL_4;
        }
      }
    }

    v35 = 0;
    v36 = v30 + 4;
    while (1)
    {
      v37 = *v36++;
      v38 = __OFADD__(v35, v37);
      v35 += v37;
      if (v38)
      {
        break;
      }

      if (!--v34)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_35;
  }
}

uint64_t sub_1DD622C48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD622CA4(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v179 = a1;
  v180 = a4;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v192 = *(v185 - 8);
  v7 = *(v192 + 64);
  MEMORY[0x1EEE9AC00](v185);
  v181 = &v177 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v177 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v196 = &v177 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v191 = &v177 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v197 = &v177 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v194 = &v177 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v177 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v177 - v22;
  v195 = a3;
  v23 = a3[1];
  v198 = a5;
  if (v23 >= 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();
    v25 = 0;
    v26 = v24;
    v27 = &qword_1DD644470;
    while (1)
    {
      v28 = v25 + 1;
      v187 = v25;
      i = v26;
      if (v25 + 1 >= v23)
      {
        v67 = v180;
      }

      else
      {
        v29 = *v195;
        v30 = *(v192 + 72);
        v31 = v177;
        sub_1DD3EB3D0(*v195 + v30 * v28, v177, &qword_1ECCDBBE8, &qword_1DD644470);
        v190 = v30;
        v184 = v29;
        v32 = v178;
        sub_1DD3EB3D0(v29 + v30 * v25, v178, &qword_1ECCDBBE8, &qword_1DD644470);
        v189 = sub_1DD617EDC();
        v186 = sub_1DD617EDC();
        v33 = v32;
        v34 = v25 + 1;
        sub_1DD390754(v33, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD390754(v31, &qword_1ECCDBBE8, &qword_1DD644470);
        v35 = v25 + 2;
        v183 = v23;
        while (1)
        {
          v36 = v35;
          v37 = v34 + 1;
          if (v34 + 1 >= v23)
          {
            break;
          }

          v193 = v35;
          v38 = v190;
          v39 = v184;
          v40 = v194;
          sub_1DD3EB3D0(v184 + v37 * v190, v194, &qword_1ECCDBBE8, &qword_1DD644470);
          v41 = sub_1DD3EB3D0(v39 + v34 * v38, v197, &qword_1ECCDBBE8, &qword_1DD644470);
          MEMORY[0x1EEE9AC00](v41);
          *(&v177 - 2) = v40;

          v42 = v199;
          sub_1DD3EC3B8();
          v44 = v43;
          v45 = *(v43 + 16);
          if (v45)
          {
            v200 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C();
            v46 = v200;
            v47 = v200[2];
            v48 = 40;
            do
            {
              v49 = *(v44 + v48);
              v200 = v46;
              if (v47 >= v46[3] >> 1)
              {
                sub_1DD42B97C();
                v46 = v200;
              }

              v46[2] = v47 + 1;
              v46[v47 + 4] = v49;
              v48 += 16;
              ++v47;
              --v45;
            }

            while (v45);

            v27 = &qword_1DD644470;
          }

          else
          {

            v46 = MEMORY[0x1E69E7CC0];
          }

          v50 = v46[2];
          if (v50)
          {
            v28 = 0;
            v51 = v46 + 4;
            while (1)
            {
              v52 = *v51++;
              v96 = __OFADD__(v28, v52);
              v28 += v52;
              if (v96)
              {
                break;
              }

              if (!--v50)
              {
                goto LABEL_19;
              }
            }

            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

          v28 = 0;
LABEL_19:

          MEMORY[0x1EEE9AC00](v53);
          *(&v177 - 2) = v197;

          sub_1DD3EC3B8();
          v55 = v54;
          v199 = v42;
          v56 = *(v54 + 16);
          if (v56)
          {
            v200 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C();
            v57 = v200;
            v58 = v200[2];
            v59 = 40;
            do
            {
              v60 = *(v55 + v59);
              v200 = v57;
              if (v58 >= v57[3] >> 1)
              {
                sub_1DD42B97C();
                v57 = v200;
              }

              v57[2] = v58 + 1;
              v57[v58 + 4] = v60;
              v59 += 16;
              ++v58;
              --v56;
            }

            while (v56);

            v27 = &qword_1DD644470;
          }

          else
          {

            v57 = MEMORY[0x1E69E7CC0];
          }

          v61 = v57[2];
          if (v61)
          {
            v62 = 0;
            v63 = v57 + 4;
            while (1)
            {
              v64 = *v63++;
              v96 = __OFADD__(v62, v64);
              v62 += v64;
              if (v96)
              {
                goto LABEL_166;
              }

              if (!--v61)
              {
                goto LABEL_32;
              }
            }
          }

          v62 = 0;
LABEL_32:
          v65 = v186 < v189;

          sub_1DD390754(v197, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v194, &qword_1ECCDBBE8, &qword_1DD644470);
          v66 = v65 ^ (v62 >= v28);
          v36 = v193;
          v35 = v193 + 1;
          v34 = v37;
          v23 = v183;
          if ((v66 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v37 = v23;
LABEL_36:
        v67 = v180;
        if (v186 >= v189)
        {
          goto LABEL_56;
        }

        v68 = v187;
        if (v37 < v187)
        {
          goto LABEL_193;
        }

        if (v187 >= v37)
        {
LABEL_56:
          v28 = v37;
        }

        else
        {
          v69 = v23 >= v36 ? v36 : v23;
          v70 = v190 * (v69 - 1);
          v71 = v190 * v69;
          v72 = v187 * v190;
          v73 = v37;
          do
          {
            if (v68 != --v73)
            {
              v74 = *v195;
              if (!*v195)
              {
                goto LABEL_197;
              }

              sub_1DD3EB4B8(v74 + v72, v181, &qword_1ECCDBBE8, &qword_1DD644470);
              if (v72 < v70 || v74 + v72 >= v74 + v71)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v72 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1DD3EB4B8(v181, v74 + v70, &qword_1ECCDBBE8, &qword_1DD644470);
              v67 = v180;
            }

            ++v68;
            v70 -= v190;
            v71 -= v190;
            v72 += v190;
          }

          while (v68 < v73);
          v28 = v37;
          v27 = &qword_1DD644470;
        }
      }

      v76 = v195[1];
      if (v28 >= v76)
      {
        goto LABEL_65;
      }

      if (__OFSUB__(v28, v187))
      {
        goto LABEL_189;
      }

      if (v28 - v187 >= v67)
      {
        goto LABEL_65;
      }

      v77 = v187 + v67;
      if (__OFADD__(v187, v67))
      {
        break;
      }

      if (v77 >= v76)
      {
        v77 = v195[1];
      }

      if (v77 < v187)
      {
        goto LABEL_192;
      }

      if (v28 == v77)
      {
        goto LABEL_65;
      }

      v193 = *v195;
      v186 = *(v192 + 72);
      v183 = v77;
      do
      {
        v184 = v28;
        v129 = v28;
        do
        {
          v130 = v129 - 1;
          v131 = v193;
          v132 = v186;
          v189 = v193 + v186 * v129;
          v133 = v191;
          sub_1DD3EB3D0(v189, v191, &qword_1ECCDBBE8, &qword_1DD644470);
          v190 = v130;
          v134 = v131 + v130 * v132;
          v135 = sub_1DD3EB3D0(v134, v196, &qword_1ECCDBBE8, &qword_1DD644470);
          MEMORY[0x1EEE9AC00](v135);
          *(&v177 - 2) = v133;

          v136 = v199;
          sub_1DD3EC3B8();
          v138 = v137;
          v27 = *(v137 + 16);
          if (v27)
          {
            v200 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C();
            v139 = v200;
            v140 = v200[2];
            v141 = 40;
            do
            {
              v142 = *(v138 + v141);
              v200 = v139;
              if (v140 >= v139[3] >> 1)
              {
                sub_1DD42B97C();
                v139 = v200;
              }

              v139[2] = v140 + 1;
              v139[v140 + 4] = v142;
              v141 += 16;
              ++v140;
              v27 = (v27 - 1);
            }

            while (v27);
          }

          else
          {

            v139 = MEMORY[0x1E69E7CC0];
          }

          v143 = v139[2];
          if (v143)
          {
            v28 = 0;
            v144 = v139 + 4;
            while (1)
            {
              v145 = *v144++;
              v96 = __OFADD__(v28, v145);
              v28 += v145;
              if (v96)
              {
                goto LABEL_167;
              }

              if (!--v143)
              {
                goto LABEL_132;
              }
            }
          }

          v28 = 0;
LABEL_132:

          MEMORY[0x1EEE9AC00](v146);
          *(&v177 - 2) = v196;

          sub_1DD3EC3B8();
          v148 = v147;
          v199 = v136;
          v149 = *(v147 + 16);
          if (v149)
          {
            v200 = MEMORY[0x1E69E7CC0];
            sub_1DD42B97C();
            v150 = v200;
            v151 = v200[2];
            v152 = 40;
            do
            {
              v153 = *(v148 + v152);
              v200 = v150;
              if (v151 >= v150[3] >> 1)
              {
                sub_1DD42B97C();
                v150 = v200;
              }

              v150[2] = v151 + 1;
              v150[v151 + 4] = v153;
              v152 += 16;
              ++v151;
              --v149;
            }

            while (v149);
          }

          else
          {

            v150 = MEMORY[0x1E69E7CC0];
          }

          v154 = v150[2];
          v27 = &qword_1DD644470;
          v155 = 0;
          if (v154)
          {
            v156 = v150 + 4;
            while (1)
            {
              v157 = *v156++;
              v96 = __OFADD__(v155, v157);
              v155 += v157;
              if (v96)
              {
                break;
              }

              if (!--v154)
              {
                goto LABEL_143;
              }
            }

LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
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
            v163 = sub_1DD4EC2B8(v28);
            goto LABEL_153;
          }

LABEL_143:

          sub_1DD390754(v196, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v191, &qword_1ECCDBBE8, &qword_1DD644470);
          if (v155 >= v28)
          {
            break;
          }

          if (!v193)
          {
            goto LABEL_195;
          }

          v158 = v182;
          sub_1DD3EB4B8(v189, v182, &qword_1ECCDBBE8, &qword_1DD644470);
          swift_arrayInitWithTakeFrontToBack();
          sub_1DD3EB4B8(v158, v134, &qword_1ECCDBBE8, &qword_1DD644470);
          v129 = v190;
        }

        while (v190 != v187);
        v28 = v184 + 1;
      }

      while (v184 + 1 != v183);
      v28 = v183;
LABEL_65:
      if (v28 < v187)
      {
        goto LABEL_188;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v184 = v28;
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = i;
      }

      else
      {
        v159 = *(i + 2);
        sub_1DD3BEB7C();
        v26 = v160;
      }

      v28 = *(v26 + 2);
      v79 = v28 + 1;
      if (v28 >= *(v26 + 3) >> 1)
      {
        sub_1DD3BEB7C();
        v26 = v161;
      }

      *(v26 + 2) = v79;
      v80 = v26 + 32;
      v81 = &v26[16 * v28 + 32];
      v82 = v184;
      *v81 = v187;
      v81[1] = v82;
      v193 = *v179;
      if (!v193)
      {
        goto LABEL_198;
      }

      if (v28)
      {
        v190 = (v26 + 32);
        while (1)
        {
          v83 = v79 - 1;
          v84 = &v80[2 * v79 - 2];
          v85 = &v26[16 * v79];
          if (v79 >= 4)
          {
            break;
          }

          if (v79 == 3)
          {
            v86 = *(v26 + 4);
            v87 = *(v26 + 5);
            v96 = __OFSUB__(v87, v86);
            v88 = v87 - v86;
            v89 = v96;
LABEL_86:
            if (v89)
            {
              goto LABEL_178;
            }

            v101 = *v85;
            v100 = *(v85 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_181;
            }

            v105 = v84[1];
            v106 = v105 - *v84;
            if (__OFSUB__(v105, *v84))
            {
              goto LABEL_184;
            }

            if (__OFADD__(v103, v106))
            {
              goto LABEL_186;
            }

            if (v103 + v106 >= v88)
            {
              if (v88 < v106)
              {
                v83 = v79 - 2;
              }

              goto LABEL_108;
            }

            goto LABEL_101;
          }

          if (v79 < 2)
          {
            goto LABEL_180;
          }

          v108 = *v85;
          v107 = *(v85 + 1);
          v96 = __OFSUB__(v107, v108);
          v103 = v107 - v108;
          v104 = v96;
LABEL_101:
          if (v104)
          {
            goto LABEL_183;
          }

          v110 = *v84;
          v109 = v84[1];
          v96 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v96)
          {
            goto LABEL_185;
          }

          if (v111 < v103)
          {
            goto LABEL_115;
          }

LABEL_108:
          if (v83 - 1 >= v79)
          {
            goto LABEL_169;
          }

          v115 = *v195;
          if (!*v195)
          {
            goto LABEL_194;
          }

          v116 = v26;
          v117 = &v80[2 * v83 - 2];
          v118 = *v117;
          v28 = v83;
          v119 = &v80[2 * v83];
          v120 = *(v119 + 1);
          v121 = *(v192 + 72);
          v122 = v115 + v121 * *v117;
          v123 = v115 + v121 * *v119;
          v124 = v115 + v121 * v120;
          v125 = v198;

          v126 = v122;
          v127 = v199;
          sub_1DD624240(v126, v123, v124, v193, v125);
          v27 = v127;
          if (v127)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v120 < v118)
          {
            goto LABEL_170;
          }

          v199 = 0;
          v27 = *(v116 + 2);
          if (v28 > v27)
          {
            goto LABEL_171;
          }

          *v117 = v118;
          v117[1] = v120;
          if (v28 >= v27)
          {
            goto LABEL_172;
          }

          v79 = v27 - 1;
          sub_1DD4EC4E4(v119 + 16, v27 - v28 - 1, v119);
          v26 = v116;
          *(v116 + 2) = v27 - 1;
          v128 = v27 > 2;
          v27 = &qword_1DD644470;
          v80 = v190;
          if (!v128)
          {
            goto LABEL_115;
          }
        }

        v90 = &v80[2 * v79];
        v91 = *(v90 - 8);
        v92 = *(v90 - 7);
        v96 = __OFSUB__(v92, v91);
        v93 = v92 - v91;
        if (v96)
        {
          goto LABEL_176;
        }

        v95 = *(v90 - 6);
        v94 = *(v90 - 5);
        v96 = __OFSUB__(v94, v95);
        v88 = v94 - v95;
        v89 = v96;
        if (v96)
        {
          goto LABEL_177;
        }

        v97 = *(v85 + 1);
        v98 = v97 - *v85;
        if (__OFSUB__(v97, *v85))
        {
          goto LABEL_179;
        }

        v96 = __OFADD__(v88, v98);
        v99 = v88 + v98;
        if (v96)
        {
          goto LABEL_182;
        }

        if (v99 >= v93)
        {
          v113 = *v84;
          v112 = v84[1];
          v96 = __OFSUB__(v112, v113);
          v114 = v112 - v113;
          if (v96)
          {
            goto LABEL_187;
          }

          if (v88 < v114)
          {
            v83 = v79 - 2;
          }

          goto LABEL_108;
        }

        goto LABEL_86;
      }

LABEL_115:
      v23 = v195[1];
      v25 = v184;
      if (v184 >= v23)
      {
        goto LABEL_150;
      }
    }

    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_195:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_196:

    __break(1u);
LABEL_197:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_198:
    swift_bridgeObjectRelease_n();
    __break(1u);
    goto LABEL_199;
  }

  swift_bridgeObjectRetain_n();
  v26 = MEMORY[0x1E69E7CC0];
LABEL_150:
  v196 = *v179;
  if (!v196)
  {
LABEL_199:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
    return result;
  }

  v28 = v26;
  swift_bridgeObjectRetain_n();
  v162 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v199;
  if ((v162 & 1) == 0)
  {
    goto LABEL_190;
  }

  v163 = v28;
LABEL_153:
  v28 = (v163 + 16);
  v164 = *(v163 + 2);
  for (i = v163; ; v163 = i)
  {
    if (v164 < 2)
    {

      return swift_bridgeObjectRelease_n();
    }

    v165 = *v195;
    if (!*v195)
    {
      goto LABEL_196;
    }

    v166 = v27;
    v167 = &v163[16 * v164];
    v168 = *v167;
    v169 = v28;
    v170 = v28 + 16 * v164;
    v171 = *v170;
    v172 = *(v170 + 8);
    v173 = *(v192 + 72);
    v199 = (v165 + v173 * *v167);
    v197 = v165 + v173 * v171;
    v174 = v165 + v173 * v172;
    v28 = v198;

    sub_1DD624240(v199, v197, v174, v196, v28);
    v27 = v166;
    if (v166)
    {
      break;
    }

    if (v172 < v168)
    {
      goto LABEL_173;
    }

    if (v164 - 2 >= *v169)
    {
      goto LABEL_174;
    }

    v28 = v169;
    *v167 = v168;
    *(v167 + 1) = v172;
    v175 = *v169 - v164;
    if (*v169 < v164)
    {
      goto LABEL_175;
    }

    v164 = *v169 - 1;
    sub_1DD4EC4E4((v170 + 16), v175, v170);
    *v169 = v164;
  }

  swift_bridgeObjectRelease_n();
}

void sub_1DD623C74(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_1DD3BEB7C();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_1DD624734((*a3 + 8 * *v64), (*a3 + 8 * *v66), (*a3 + 8 * v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD624114(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD624114(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD624734((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

void sub_1DD624240(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v59 = a5;
  v60 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v8 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v50 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v63 = a1;
  v62 = v60;
  v18 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v30 = v60;
    sub_1DD3C1BE8(a2, v15 / v13, v60);
    v31 = v30 + v18 * v13;
    v32 = -v13;
    v33 = v31;
    v52 = a1;
    v53 = -v13;
LABEL_36:
    v34 = a2 + v32;
    v35 = a3;
    v50 = v33;
    v36 = v33;
    v54 = a2 + v32;
    while (1)
    {
      if (v31 <= v60)
      {
        v63 = a2;
        v61 = v36;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v51 = v36;
      a3 = v35 + v32;
      v37 = v31 + v32;
      v38 = v31 + v32;
      v39 = v57;
      v40 = v31;
      v41 = v35;
      sub_1DD3EB3D0(v38, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v42 = v34;
      v43 = v58;
      sub_1DD3EB3D0(v42, v58, &qword_1ECCDBBE8, &qword_1DD644470);
      v55 = sub_1DD617EDC();
      v44 = sub_1DD617EDC();
      sub_1DD390754(v43, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v39, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v44 < v55)
      {
        v46 = v40;
        if (v41 < a2 || a3 >= a2)
        {
          a2 = v54;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v51;
          a1 = v52;
          v32 = v53;
          v31 = v46;
        }

        else
        {
          v48 = v51;
          a1 = v52;
          v33 = v51;
          v14 = v41 == a2;
          v32 = v53;
          v49 = v54;
          a2 = v54;
          v31 = v46;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            v31 = v46;
            a2 = v49;
            v33 = v48;
          }
        }

        goto LABEL_36;
      }

      if (v41 < v40 || a3 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v35 = a3;
        v31 = v37;
        v36 = v37;
        a1 = v52;
        v32 = v53;
        v34 = v54;
      }

      else
      {
        v36 = v37;
        v14 = v40 == v41;
        v35 = a3;
        v31 = v37;
        a1 = v52;
        v32 = v53;
        v34 = v54;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v35 = a3;
          v31 = v37;
          v36 = v37;
        }
      }
    }

    v63 = a2;
    v61 = v50;
  }

  else
  {
    v19 = v60;
    sub_1DD3C1BE8(a1, (a2 - a1) / v13, v60);
    v54 = a3;
    v55 = v19 + v17 * v13;
    v61 = v55;
    while (v60 < v55 && a2 < a3)
    {
      v21 = v13;
      v22 = v57;
      sub_1DD3EB3D0(a2, v57, &qword_1ECCDBBE8, &qword_1DD644470);
      v23 = a2;
      v24 = v58;
      sub_1DD3EB3D0(v60, v58, &qword_1ECCDBBE8, &qword_1DD644470);
      v25 = sub_1DD617EDC();
      v26 = sub_1DD617EDC();
      sub_1DD390754(v24, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v22, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v26 >= v25)
      {
        v13 = v21;
        v28 = v60 + v21;
        if (a1 < v60 || a1 >= v28)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v23;
        }

        else
        {
          a2 = v23;
          if (a1 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v62 = v28;
        v60 = v28;
      }

      else
      {
        v13 = v21;
        a2 = v23 + v21;
        if (a1 < v23 || a1 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v23)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      a1 += v13;
      v63 = a1;
      a3 = v54;
    }
  }

LABEL_58:
  sub_1DD4EC2FC(&v63, &v62, &v61);
}

uint64_t sub_1DD624734(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1DD3AA4C0(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DD3AA4C0(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void *sub_1DD6248A8(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v5 = v4;
  v9 = a1;
  v84 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  v73 = a3;
  v67 = v5;
  v77 = a2;
  v14 = v81;
  if (v11 > 0xD)
  {
    goto LABEL_47;
  }

  sub_1DD626C58(a3, v81);

  while (2)
  {
    v65 = &v58;
    MEMORY[0x1EEE9AC00](v15);
    v66 = v12;
    v68 = (&v58 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v12, v68);
    v69 = 0;
    a2 = 0;
    v17 = v9 + 56;
    v18 = 1 << *(v9 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v78 = v19 & *(v9 + 56);
    a3 = ((v18 + 63) >> 6);
    v76 = v77 + 7;
    *&v16 = 136315138;
    v64 = v16;
    v71 = a4;
    v70 = v9;
    while (v78)
    {
      v20 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
LABEL_14:
      v23 = v20 | (a2 << 6);
      v24 = *(v9 + 48);
      v72 = v23;
      v25 = v24 + 48 * v23;
      if (*(v25 + 40))
      {
        goto LABEL_41;
      }

      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = *(v25 + 24);
      v13 = *(v25 + 32);
      v75 = v27;
      v74 = v26;
      if (!v13)
      {
        v30 = 0;
LABEL_31:
        sub_1DD57AE38(v26, v27, v28, v29, v30, 0);
        goto LABEL_32;
      }

      v30 = v13;
      if ((v28 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      v30 = v13;
      if (!v77[2])
      {
        goto LABEL_31;
      }

      v31 = v77;
      v12 = v26;
      v32 = v77[5];
      sub_1DD640E28();
      sub_1DD57AE38(v12, v27, v28, v29, v13, 0);
      sub_1DD63FD28();
      v33 = sub_1DD640E78();
      v34 = ~(-1 << *(v31 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(v76 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v36 = (v77[6] + 16 * v35);
        if (*v36 != v29 || v13 != v36[1])
        {
          v38 = sub_1DD640CD8();
          v33 = v35 + 1;
          if ((v38 & 1) == 0)
          {
            continue;
          }
        }

        if (qword_1EE165FB0 != -1)
        {
          swift_once();
        }

        v39 = sub_1DD63F9F8();
        __swift_project_value_buffer(v39, qword_1EE16F068);
        v12 = v73;
        sub_1DD626C58(v73, v81);
        v40 = sub_1DD63F9D8();
        v41 = sub_1DD640368();
        sub_1DD626C90(v12);
        v63 = v41;
        v42 = os_log_type_enabled(v40, v41);
        a4 = v71;
        if (v42)
        {
          v61 = v40;
          v43 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v80 = v60;
          v62 = v43;
          *v43 = v64;
          v44 = *(v73 + 1);
          v82 = *v73;
          v83 = v44;
          v45 = *(&v82 + 1);
          v46 = v82;
          v47 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            v59 = v83;
            v79 = v82;
            sub_1DD626CC0(&v82, v81);

            MEMORY[0x1E12B2260](64, 0xE100000000000000);
            MEMORY[0x1E12B2260](v59, v47);
            sub_1DD626CF8(&v82);
            v45 = *(&v79 + 1);
            v46 = v79;
          }

          else
          {
          }

          v49 = sub_1DD39565C(v46, v45, &v80);

          v50 = v62;
          *(v62 + 1) = v49;
          v12 = v61;
          _os_log_impl(&dword_1DD38D000, v61, v63, "[UCG] Relationship match [%s] is getting treated as an exact nickname-based relationship match.", v50, 0xCu);
          v51 = v60;
          __swift_destroy_boxed_opaque_existential_1(v60);
          MEMORY[0x1E12B3DA0](v51, -1, -1);
          MEMORY[0x1E12B3DA0](v62, -1, -1);
        }

        else
        {
        }

        sub_1DD41B1C8(v74, v75, v28, v29, v13, 0);
        goto LABEL_40;
      }

LABEL_32:
      if ((v28 & 0x20) != 0)
      {
        sub_1DD41B1C8(v74, v75, v28, v29, v13, 0);
        a4 = v71;
LABEL_40:
        v9 = v70;
        goto LABEL_41;
      }

      a4 = v71;
      v48 = sub_1DD47F0E4(*v73, v73[1], v73[2], v73[3], v71);
      sub_1DD41B1C8(v74, v75, v28, v29, v13, 0);
      v9 = v70;
      if (v48)
      {
LABEL_41:
        *(v68 + ((v72 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v72;
        if (__OFADD__(v69++, 1))
        {
          __break(1u);
          goto LABEL_49;
        }
      }
    }

    v21 = a2;
    while (1)
    {
      a2 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (a2 >= a3)
      {
        sub_1DD516230(v68, v66, v69, v9);
        v54 = v53;
        a3 = v73;
        goto LABEL_45;
      }

      v22 = *(v17 + 8 * a2);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v78 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_47:
    sub_1DD626C58(a3, v14);

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

LABEL_49:
  v57 = swift_slowAlloc();

  sub_1DD626C58(a3, v81);

  v54 = sub_1DD621A4C(v57, v12, v9, a2, a3, a4);

  MEMORY[0x1E12B3DA0](v57, -1, -1);
LABEL_45:

  sub_1DD626C90(a3);

  sub_1DD626C90(a3);

  v55 = *MEMORY[0x1E69E9840];
  return v54;
}

void *sub_1DD624FE4(uint64_t a1)
{
  v1 = a1;
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = ((1 << v2) + 63) >> 6;
  v4 = (8 * v3);
  if ((v2 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v4 = (v20 - ((v4 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v3, v4);
    v5 = 0;
    v6 = 0;
    v7 = 1 << *(v1 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v1 + 56);
    while (v9)
    {
      v10 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v11 = v10 | (v6 << 6);
LABEL_12:
      if (*(*(v1 + 48) + 48 * v11 + 40) == 2)
      {
        *(v4 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (__OFADD__(v5++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1DD516230(v4, v3, v5, v1);
          v16 = v15;
          goto LABEL_17;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= ((v7 + 63) >> 6))
      {
        goto LABEL_16;
      }

      v13 = *(v1 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v9 = (v13 - 1) & v13;
        v11 = __clz(__rbit64(v13)) | (v6 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v19 = swift_slowAlloc();
  v16 = sub_1DD621B5C(v19, v3, v1, sub_1DD6256AC);

  MEMORY[0x1E12B3DA0](v19, -1, -1);
LABEL_17:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t sub_1DD625210(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v6 = a5;
  v50 = result;
  v51 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v58 = a4 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v53 = v13 | (v7 << 6);
    v16 = *(a3 + 48) + 48 * v53;
    if (*(v16 + 40))
    {
      goto LABEL_38;
    }

    v17 = *(v16 + 8);
    v19 = *(v16 + 16);
    v18 = *(v16 + 24);
    v20 = *(v16 + 32);
    v56 = *v16;
    v57 = v17;
    if (v20)
    {
      v21 = *(v16 + 32);
      if ((v19 & 0x10) != 0)
      {
        v21 = *(v16 + 32);
        if (*(a4 + 16))
        {
          v22 = v11;
          v23 = *v16;
          v24 = *(a4 + 40);
          sub_1DD640E28();
          v25 = v23;
          v11 = v22;
          sub_1DD57AE38(v25, v17, v19, v18, v20, 0);
          sub_1DD63FD28();
          v26 = sub_1DD640E78();
          v27 = ~(-1 << *(a4 + 32));
          while (1)
          {
            v28 = v26 & v27;
            if (((*(v58 + (((v26 & v27) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v26 & v27)) & 1) == 0)
            {
              goto LABEL_30;
            }

            v29 = (*(a4 + 48) + 16 * v28);
            if (*v29 != v18 || v20 != v29[1])
            {
              v31 = sub_1DD640CD8();
              v26 = v28 + 1;
              if ((v31 & 1) == 0)
              {
                continue;
              }
            }

            if (qword_1EE165FB0 != -1)
            {
              swift_once();
            }

            v32 = sub_1DD63F9F8();
            __swift_project_value_buffer(v32, qword_1EE16F068);
            v6 = a5;
            sub_1DD626C58(a5, v61);
            oslog = sub_1DD63F9D8();
            v33 = sub_1DD640368();
            sub_1DD626C90(a5);
            v47 = v33;
            if (os_log_type_enabled(oslog, v33))
            {
              v34 = swift_slowAlloc();
              v45 = swift_slowAlloc();
              buf = v34;
              v64 = v45;
              *v34 = 136315138;
              v35 = *(a5 + 1);
              v62 = *a5;
              v63 = v35;
              v36 = *(&v62 + 1);
              v37 = v62;
              if (*(&v35 + 1))
              {
                v42 = *(&v63 + 1);
                v43 = v63;
                v60 = v62;
                sub_1DD626CC0(&v62, v61);

                MEMORY[0x1E12B2260](64, 0xE100000000000000);
                MEMORY[0x1E12B2260](v43, v42);
                sub_1DD626CF8(&v62);
                v36 = *(&v60 + 1);
                v37 = v60;
              }

              else
              {
              }

              v44 = sub_1DD39565C(v37, v36, &v64);

              *(buf + 4) = v44;
              _os_log_impl(&dword_1DD38D000, oslog, v47, "[UCG] Relationship match [%s] is getting treated as an exact nickname-based relationship match.", buf, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v45);
              MEMORY[0x1E12B3DA0](v45, -1, -1);
              MEMORY[0x1E12B3DA0](buf, -1, -1);
            }

            else
            {
            }

            result = sub_1DD41B1C8(v56, v57, v19, v18, v20, 0);
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      v21 = 0;
    }

    sub_1DD57AE38(*v16, v17, v19, v18, v21, 0);
LABEL_30:
    if ((v19 & 0x20) != 0)
    {
      result = sub_1DD41B1C8(v56, v57, v19, v18, v20, 0);
      v6 = a5;
LABEL_38:
      *(v50 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
      if (__OFADD__(v51++, 1))
      {
        goto LABEL_43;
      }
    }

    else
    {
      v6 = a5;
      v38 = sub_1DD47F0E4(*a5, a5[1], a5[2], a5[3], a6);
      result = sub_1DD41B1C8(v56, v57, v19, v18, v20, 0);
      if (v38)
      {
        goto LABEL_38;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      sub_1DD516230(v50, a2, v51, a3);
      v41 = v40;

      sub_1DD626C90(v6);

      return v41;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_1DD6256AC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v12 = v11 | (v7 << 6);
LABEL_11:
    if (*(*(a3 + 48) + 48 * v12 + 40) == 2)
    {
      *(a1 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_15:

        sub_1DD516230(a1, a2, v6, a3);
        return;
      }
    }
  }

  v13 = v7;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= ((v8 + 63) >> 6))
    {
      goto LABEL_15;
    }

    v14 = *(a3 + 56 + 8 * v7);
    ++v13;
    if (v14)
    {
      v10 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v7 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1DD6257C8(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a2;
  result = sub_1DD6220D4(a1, isUniquelyReferenced_nonNull_native, &v7);
  *a2 = v7;
  return result;
}

uint64_t sub_1DD625824(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1DD63FFF8();
    OUTLINED_FUNCTION_85_3(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1E12B22C0](15, a1 >> 16);
    OUTLINED_FUNCTION_85_3(v3);
    return v4 | 8;
  }
}

uint64_t sub_1DD625880(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v47[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v47[0] = a1;
    v3 = *(a1 + 16);
    v45 = a1 + 32;
    v4 = a2 + 56;
    v5 = 0;

    v44 = v3;
LABEL_3:
    if (v5 != v3)
    {
      v6 = (v45 + 16 * v5);
      v8 = *v6;
      v7 = v6[1];
      ++v5;
      v9 = *(v2 + 40);
      sub_1DD640E28();

      sub_1DD63FD28();
      v10 = sub_1DD640E78();
      v11 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = 1 << (v10 & v11);
        if ((v14 & *(v4 + 8 * v13)) == 0)
        {

          v3 = v44;
          goto LABEL_3;
        }

        v15 = (*(v2 + 48) + 16 * v12);
        v16 = *v15 == v8 && v15[1] == v7;
        if (v16 || (sub_1DD640CD8() & 1) != 0)
        {
          break;
        }

        v10 = v12 + 1;
      }

      v17 = v5;
      v47[1] = v5;

      v19 = *(v2 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      v21 = 8 * v20;
      if ((v19 & 0x3Fu) > 0xD)
      {
LABEL_38:

        if (!swift_stdlib_isStackAllocationSafe())
        {
LABEL_41:
          v38 = swift_slowAlloc();
          v39 = sub_1DD625E34(v38, v20, (v2 + 56), v20, v2, v12, v47);

          MEMORY[0x1E12B3DA0](v38, -1, -1);

          v2 = v39;
          goto LABEL_35;
        }
      }

      v40[0] = v20;
      v40[1] = v40;
      MEMORY[0x1EEE9AC00](v18);
      v22 = v40 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
      memcpy(v22, (v2 + 56), v21);
      v23 = *&v22[8 * v13] & ~v14;
      v42 = v22;
      *&v22[8 * v13] = v23;
      v24 = *(v2 + 16) - 1;
      v12 = v46;
      v44 = *(v46 + 16);
      v20 = v17;
      while (1)
      {
        v41 = v24;
        v43 = v17;
LABEL_16:
        while (2)
        {
          if (v20 == v44)
          {
            sub_1DD515BB8(v42, v40[0], v41, v2);
            v2 = v35;
            goto LABEL_33;
          }

          if ((v17 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (v20 >= *(v12 + 16))
          {
            goto LABEL_37;
          }

          v25 = (v45 + 16 * v20);
          v14 = *v25;
          v13 = v25[1];
          ++v20;
          v26 = *(v2 + 40);
          sub_1DD640E28();

          sub_1DD63FD28();
          v27 = sub_1DD640E78();
          v21 = ~(-1 << *(v2 + 32));
          do
          {
            v28 = v27 & v21;
            v29 = (v27 & v21) >> 6;
            v30 = 1 << (v27 & v21);
            if ((v30 & *(v4 + 8 * v29)) == 0)
            {

              v12 = v46;
              v17 = v43;
              goto LABEL_16;
            }

            v31 = (*(v2 + 48) + 16 * v28);
            if (*v31 == v14 && v31[1] == v13)
            {
              break;
            }

            v33 = sub_1DD640CD8();
            v27 = v28 + 1;
          }

          while ((v33 & 1) == 0);

          v34 = v42[v29];
          v42[v29] = v34 & ~v30;
          v16 = (v34 & v30) == 0;
          v12 = v46;
          v17 = v43;
          if (v16)
          {
            continue;
          }

          break;
        }

        v24 = v41 - 1;
        if (__OFSUB__(v41, 1))
        {
          break;
        }

        v17 = v20;
        if (v41 == 1)
        {

          v2 = MEMORY[0x1E69E7CD0];
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_33:
  }

  else
  {

    v2 = MEMORY[0x1E69E7CD0];
  }

LABEL_35:
  v36 = *MEMORY[0x1E69E9840];
  return v2;
}

void sub_1DD625C88(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v8 = a3 + 56;
  v27 = a5;
  while (1)
  {
    v25 = v7;
LABEL_3:
    v9 = a5[1];
    v10 = *(*a5 + 16);
    if (v9 == v10)
    {

      sub_1DD515BB8(a1, a2, v25, a3);
      return;
    }

    if (v9 >= v10)
    {
      break;
    }

    v11 = *a5 + 16 * v9;
    v13 = *(v11 + 32);
    v12 = *(v11 + 40);
    a5[1] = v9 + 1;
    v14 = *(a3 + 40);
    sub_1DD640E28();

    sub_1DD63FD28();
    v15 = sub_1DD640E78();
    v16 = ~(-1 << *(a3 + 32));
    do
    {
      v17 = v15 & v16;
      v18 = (v15 & v16) >> 6;
      v19 = 1 << (v15 & v16);
      if ((v19 & *(v8 + 8 * v18)) == 0)
      {

        a5 = v27;
        goto LABEL_3;
      }

      v20 = (*(a3 + 48) + 16 * v17);
      if (*v20 == v13 && v20[1] == v12)
      {
        break;
      }

      v22 = sub_1DD640CD8();
      v15 = v17 + 1;
    }

    while ((v22 & 1) == 0);

    v23 = a1[v18];
    a1[v18] = v23 & ~v19;
    a5 = v27;
    if ((v23 & v19) == 0)
    {
      goto LABEL_3;
    }

    v7 = v25 - 1;
    if (__OFSUB__(v25, 1))
    {
      goto LABEL_20;
    }

    if (v25 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1DD625E34(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  sub_1DD625C88(a1, a2, a5, a6, a7);
  v13 = v12;

  return v13;
}

unint64_t sub_1DD625EBC(unint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1;
  }

  v5 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  v6 = v5 | (v4 << 16);
  v7 = sub_1DD626310(0xFuLL, a1, a2);
  result = sub_1DD626310(v6, a1, a2);
  v9 = result >> 14;
  if (v7 >> 14 < result >> 14)
  {
    for (i = 0; ; ++i)
    {
      v11 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1DD63FEB8();
        v7 = result;
      }

      else
      {
        v12 = v7 >> 16;
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          v13 = *(&v22 + v12);
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1DD640948();
          }

          v13 = *(result + v12);
        }

        v14 = v13;
        v15 = __clz(v13 ^ 0xFF) - 24;
        if (v14 >= 0)
        {
          LOBYTE(v15) = 1;
        }

        v7 = ((v12 + v15) << 16) | 5;
      }

      if (v9 <= v7 >> 14)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  if (v9 < v7 >> 14)
  {
    v11 = 0;
    while (!__OFSUB__(v11--, 1))
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1DD63FEC8();
        v7 = result;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v22 = a1;
          v23 = a2 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v22 + (v7 >> 16) - 1) & 0xC0) == 0x80)
          {
            v20 = &v22 + (v7 >> 16) - 2;
            v19 = 1;
            do
            {
              ++v19;
              v21 = *v20--;
            }

            while ((v21 & 0xC0) == 0x80);
          }

          else
          {
            v19 = 1;
          }
        }

        else
        {
          result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            result = sub_1DD640948();
          }

          v17 = 0;
          do
          {
            v18 = *(result + (v7 >> 16) - 1 + v17--) & 0xC0;
          }

          while (v18 == 128);
          v19 = -v17;
        }

        v7 = (v7 - (v19 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v9 >= v7 >> 14)
      {
        return v11;
      }
    }

    goto LABEL_42;
  }

  return 0;
}

void *sub_1DD6260F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v8 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v12 = 0;
    v9 = 0;
    goto LABEL_27;
  }

  v9 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  v12 = 0;
  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_29;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v19 = v7;
      v17 = sub_1DD6408C8();
      v7 = v19;
    }

    else
    {
      if ((a5 & 0x2000000000000000) != 0)
      {
        v21[0] = a4;
        v21[1] = a5 & 0xFFFFFFFFFFFFFFLL;
        v15 = v21 + v12;
        v17 = *(v21 + v12);
        if (*(v21 + v12) < 0)
        {
          switch(__clz(v17 ^ 0xFF))
          {
            case 0x1Au:
LABEL_21:
              v17 = v15[1] & 0x3F | ((v17 & 0x1F) << 6);
              v18 = 2;
              break;
            case 0x1Bu:
LABEL_22:
              v17 = ((v17 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
              v18 = 3;
              break;
            case 0x1Cu:
LABEL_23:
              v17 = ((v17 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
              v18 = 4;
              break;
            default:
              goto LABEL_17;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v14 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v20 = v7;
          v14 = sub_1DD640948();
          v7 = v20;
        }

        v15 = (v14 + v12);
        v16 = *(v14 + v12);
        v17 = *(v14 + v12);
        if (v16 < 0)
        {
          switch(__clz(v17 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_21;
            case 0x1Bu:
              goto LABEL_22;
            case 0x1Cu:
              goto LABEL_23;
            default:
              break;
          }
        }
      }

LABEL_17:
      v18 = 1;
    }

LABEL_18:
    v12 += v18;
    *(a2 + 4 * v11++) = v17;
    if (v13 == v9)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  v9 = v11;
LABEL_27:
  *v7 = a4;
  v7[1] = a5;
  v7[2] = v12;
  v7[3] = v8;
  return v9;
}

unint64_t sub_1DD626310(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v5)
  {
    goto LABEL_9;
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1DD6263B0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1DD626420(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1DD6263B0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v5 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((result & 0xC) == 4 << v5)
  {
    result = sub_1DD625824(result, a2, a3);
  }

  v6 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v6 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DD626420(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v10 = HIBYTE(a3) & 0xF;
      if ((a3 & 0x2000000000000000) == 0)
      {
        v10 = a2 & 0xFFFFFFFFFFFFLL;
      }

      if (v5 != v10)
      {

        return MEMORY[0x1EEE6A340]();
      }
    }

    else
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v9 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
        }

        else
        {
          v9 = result >> 16;
        }

        v5 = v9;
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v7 = a2 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = result >> 16;
          v6 = sub_1DD640948();
          v5 = v12;
        }

        if (v5 != v7)
        {
          do
          {
            v8 = *(v6 + v5--) & 0xC0;
          }

          while (v8 == 128);
          ++v5;
        }
      }

      return v5 << 16;
    }
  }

  return result;
}

uint64_t sub_1DD62652C(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6, uint64_t a7, void *a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v40 = a7;
  v41 = a8;
  v39 = a6;
  v38 = a4;
  v36 = a2;
  v37 = a3;
  v35 = a1;
  v33 = a10;
  v34 = a9;
  v18 = *(a17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v33 - v24;
  (*(v18 + 32))(&v33 - v24, v26, a17, v23);
  v27 = type metadata accessor for UnifiedContactGenerator(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  (*(v18 + 16))(v21, v25, a17);
  v31 = sub_1DD626D28(v35, v36, v37, v38, v21, v39, v40, v41, v34, *(&v34 + 1), v33, *(&v33 + 1), a11, a12, a13, a14, a15, v30, a17, a18);
  (*(v18 + 8))(v25, a17);
  return v31;
}

_BYTE *storeEnumTagSinglePayload for ContactRecall(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DD6267E0()
{
  v0 = type metadata accessor for ContactResolverConfig(319);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1DD626910();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1DD626910()
{
  if (!qword_1ECCDFEB0)
  {
    type metadata accessor for AsrPhoneticSequenceFetcher();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDFEB0);
    }
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DD626988(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD6269C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_1DD626A7C()
{
  result = qword_1ECCDFEC8;
  if (!qword_1ECCDFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFEC8);
  }

  return result;
}

unint64_t sub_1DD626AD4()
{
  result = qword_1ECCDFED0;
  if (!qword_1ECCDFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFED0);
  }

  return result;
}

uint64_t sub_1DD626BC4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DD626D28(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char *a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v44[3] = a19;
  v44[4] = a20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a19 - 8) + 32))(boxed_opaque_existential_1, a5, a19);
  v29 = OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3Orchestrator) = 0;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator____lazy_storage___semanticRelationshipMapping) = 0;
  sub_1DD3C2388(a1, a18 + 16);
  sub_1DD3EB3D0(a7, a18 + 56, &qword_1ECCDCF48, &unk_1DD664BF0);
  *(a18 + 104) = a8;
  sub_1DD6271B8(a3, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_config);
  *(a18 + 96) = a2;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusTrialFactors) = a4;
  v30 = *(a6 + 2);
  if (v30)
  {
    v31 = *a6;
    v32 = a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    *v32 = *a6;
    *(v32 + 1) = *(a6 + 1);
    *(v32 + 8) = *(a6 + 1);
    *(v32 + 16) = v30;
    *(v32 + 24) = *(a6 + 24);
    *(v32 + 40) = *(a6 + 40);
    *(v32 + 56) = a6[56];
    v33 = v31 ^ 1;
  }

  else
  {
    v34 = a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_e3TrialFactors;
    *v34 = 0;
    *(v34 + 8) = 1701736302;
    *(v34 + 16) = 0xE400000000000000;
    *(v34 + 24) = 0;
    *(v34 + 32) = 0;
    *(v34 + 40) = xmmword_1DD64CBD0;
    *(v34 + 56) = 0;
    v33 = 1;
  }

  sub_1DD3EB3D0(a9, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_plusSuggestionHandler, &qword_1ECCDCF40, &qword_1DD64CBF0);
  sub_1DD3C2388(v44, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_tokenizer);
  sub_1DD3EB3D0(a10, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  sub_1DD3EB3D0(a11, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_relationshipLocalizer, &qword_1ECCDCF50, &qword_1DD664BD0);
  *(a18 + v29) = a12;
  if (a12 || (v33 & 1) != 0)
  {
    sub_1DD390754(a11, &qword_1ECCDCF50, &qword_1DD664BD0);
    sub_1DD390754(a10, &qword_1ECCDC250, &qword_1DD645B10);
    sub_1DD390754(a9, &qword_1ECCDCF40, &qword_1DD64CBF0);
    sub_1DD390754(a7, &qword_1ECCDCF48, &unk_1DD664BF0);
    sub_1DD627210(a3, type metadata accessor for ContactResolverConfig);
    __swift_destroy_boxed_opaque_existential_1(a1);
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {
    type metadata accessor for EuclidVectorDb();
    swift_allocObject();
    v43 = a1;
    v35 = a8;
    v36 = a3;
    v37 = sub_1DD4B97D4();
    type metadata accessor for EuclidEmbeddingApi();
    swift_allocObject();
    v38 = sub_1DD4BA174();

    sub_1DD390754(a11, &qword_1ECCDCF50, &qword_1DD664BD0);
    sub_1DD390754(a10, &qword_1ECCDC250, &qword_1DD645B10);
    sub_1DD390754(a9, &qword_1ECCDCF40, &qword_1DD64CBF0);
    sub_1DD390754(a7, &qword_1ECCDCF48, &unk_1DD664BF0);
    sub_1DD627210(v36, type metadata accessor for ContactResolverConfig);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    type metadata accessor for E3Orchestrator();
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v38;
    v40 = *(a18 + v29);
    *(a18 + v29) = v39;
  }

  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3VectorDbApi) = a13;
  *(a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_asrE3EmbedderApi) = a14;
  v41 = a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_ucgTrialFactors;
  if (a15 == 2)
  {
    *v41 = 0;
  }

  else
  {
    *v41 = a15 & 1;
    *(v41 + 1) = a16 & 1;
  }

  sub_1DD3EB4B8(a17, a18 + OBJC_IVAR____TtC13SiriInference23UnifiedContactGenerator_phoneSequenceFetcher, &qword_1ECCDCF38, &unk_1DD664750);
  return a18;
}

uint64_t sub_1DD6271B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t sub_1DD627210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DD627288(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_14();
  v5 = v4(v3);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t sub_1DD627334(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 40);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return v4;
}

_BYTE *storeEnumTagSinglePayload for TriggeringCondition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DD6274B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_100_1(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_100_1(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DD62750C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_100_1(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_100_1(result, a2);
    }
  }

  return result;
}

unint64_t sub_1DD627560()
{
  result = qword_1ECCDFF48;
  if (!qword_1ECCDFF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF48);
  }

  return result;
}

unint64_t sub_1DD6275B8()
{
  result = qword_1ECCDFF50;
  if (!qword_1ECCDFF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF50);
  }

  return result;
}

unint64_t sub_1DD627610()
{
  result = qword_1ECCDFF58;
  if (!qword_1ECCDFF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF58);
  }

  return result;
}

unint64_t sub_1DD627668()
{
  result = qword_1ECCDFF60;
  if (!qword_1ECCDFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF60);
  }

  return result;
}

unint64_t sub_1DD6276BC()
{
  result = qword_1ECCDFF68;
  if (!qword_1ECCDFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF68);
  }

  return result;
}

unint64_t sub_1DD627714()
{
  result = qword_1ECCDFF70;
  if (!qword_1ECCDFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF70);
  }

  return result;
}

unint64_t sub_1DD627768(uint64_t a1)
{
  result = sub_1DD627790();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD627790()
{
  result = qword_1ECCDFF78;
  if (!qword_1ECCDFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF78);
  }

  return result;
}

unint64_t sub_1DD6277E8()
{
  result = qword_1ECCDFF80;
  if (!qword_1ECCDFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF80);
  }

  return result;
}

unint64_t sub_1DD627840()
{
  result = qword_1ECCDFF88;
  if (!qword_1ECCDFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF88);
  }

  return result;
}

unint64_t sub_1DD6278A4()
{
  result = qword_1ECCDFF90;
  if (!qword_1ECCDFF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF90);
  }

  return result;
}

unint64_t sub_1DD6278FC()
{
  result = qword_1ECCDFF98;
  if (!qword_1ECCDFF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFF98);
  }

  return result;
}

unint64_t sub_1DD627950(uint64_t a1)
{
  result = sub_1DD627978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD627978()
{
  result = qword_1ECCDFFA0;
  if (!qword_1ECCDFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFFA0);
  }

  return result;
}

unint64_t sub_1DD6279D0()
{
  result = qword_1ECCDFFA8;
  if (!qword_1ECCDFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFFA8);
  }

  return result;
}

unint64_t sub_1DD627A28()
{
  result = qword_1ECCDFFB0;
  if (!qword_1ECCDFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFFB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_17@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 216) = a1;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 56);
}

uint64_t OUTLINED_FUNCTION_36_17()
{

  return sub_1DD3EB3D0(v3 - 216, v0 + 232, v2, v1);
}

uint64_t OUTLINED_FUNCTION_37_18()
{
  *(v1 + 88) = (v3 - 1) & v3;
  *(v1 + 96) = v0;
  result = *(*(v2 + 48) + ((v0 << 7) | (2 * __clz(__rbit64(v3)))));
  *(v1 + 152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_16()
{
  v2 = *(v0 - 136);

  return sub_1DD627210(v2, type metadata accessor for AsrPhoneticSequenceFetcher);
}

uint64_t OUTLINED_FUNCTION_44_15()
{

  return sub_1DD390754(v2 - 216, v1, v0);
}

uint64_t OUTLINED_FUNCTION_52_11(uint64_t *a1)
{
  result = *a1;
  v3 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_57_13(uint64_t result)
{
  v3 = result & ~(-1 << *(v1 + 32));
  v4 = (-1 << v3) & ~*(v2 + 8 * (v3 >> 6));
  return result;
}

double OUTLINED_FUNCTION_86_3@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_99_1(float a1)
{
  *v2 = a1;
  v6 = *(v1 + 80);

  return sub_1DD39565C(v6, v3, (v4 - 216));
}

uint64_t OUTLINED_FUNCTION_101_1()
{

  return sub_1DD63FD28();
}

uint64_t OUTLINED_FUNCTION_102_0(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_1DD3C9478(&STACK[0x218], va);
}

BOOL OUTLINED_FUNCTION_103_0()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_121_0(void *a1@<X8>)
{
  v4 = *(v1 + 160);
  a1[4] = *(v1 + 184);
  a1[5] = v4;
  a1[6] = v2;
  a1[7] = v3;
}

uint64_t OUTLINED_FUNCTION_130_0(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);

  return sub_1DD3EB3D0(va1, va, v2, v3);
}

uint64_t OUTLINED_FUNCTION_131(uint64_t a1, uint64_t (*a2)(void))
{

  return sub_1DD6223C4(a1, 1, a2);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return sub_1DD63E7D8();
}

void *OUTLINED_FUNCTION_133(void *a1)
{

  return memcpy(a1, v1, 0x108uLL);
}

uint64_t sub_1DD628068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v26[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DD63CE68();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = [objc_opt_self() defaultManager];
  v26[0] = 0;
  v17 = [v16 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:v26];

  v18 = v26[0];
  if (v17)
  {
    sub_1DD63CE48();
    v19 = v18;

    sub_1DD63CE28();
    sub_1DD63CE28();
    v20 = *(v5 + 8);
    v20(v10, v2);
    sub_1DD63CE28();

    v20(v13, v2);
    result = (v20)(v15, v2);
  }

  else
  {
    v22 = v26[0];

    sub_1DD63CD98();

    result = swift_willThrow();
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DD6282D8()
{
  v0 = sub_1DD63CE68();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  sub_1DD63CDF8();
  sub_1DD63CE28();
  sub_1DD63CE28();

  v11 = *(v3 + 8);
  v11(v8, v0);
  return (v11)(v10, v0);
}

uint64_t sub_1DD628448()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1DD63CE68();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD63CE38();
  v8 = [objc_opt_self() defaultManager];
  v9 = sub_1DD63CE08();
  v16[0] = 0;
  v10 = [v8 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:v16];

  if (v10)
  {
    v11 = *(v3 + 8);
    v12 = v16[0];
    result = v11(v7, v0);
  }

  else
  {
    v14 = v16[0];
    sub_1DD63CD98();

    swift_willThrow();
    result = (*(v3 + 8))(v7, v0);
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DD6285EC()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  sub_1DD63CE58();
  v1 = sub_1DD63FDA8();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    v3 = sub_1DD63CE08();
    v19[0] = 0;
    v4 = [v0 removeItemAtURL:v3 error:v19];

    if (v4)
    {
      v5 = v19[0];
    }

    else
    {
      v6 = v19[0];
      v7 = sub_1DD63CD98();

      swift_willThrow();
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v8 = sub_1DD63F9F8();
      __swift_project_value_buffer(v8, qword_1EE16F0C8);
      v9 = v7;
      v10 = sub_1DD63F9D8();
      v11 = sub_1DD640388();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19[0] = v13;
        *v12 = 136315138;
        v14 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
        v15 = sub_1DD63FE38();
        v17 = sub_1DD39565C(v15, v16, v19);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_1DD38D000, v10, v11, "error when deleting file: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1E12B3DA0](v13, -1, -1);
        MEMORY[0x1E12B3DA0](v12, -1, -1);
      }

      swift_willThrow();
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DD62886C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v4 = sub_1DD63FE58();
  v6 = v5;
  v7 = (a3 + 40);
  v8 = *(a3 + 16) + 1;
  while (--v8)
  {
    v9 = v7 + 2;
    v11 = *(v7 - 1);
    v10 = *v7;

    LOBYTE(v11) = sub_1DD640008();

    v7 = v9;
    if (v11)
    {

      return 1;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1ECD0DDF0);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_1DD39565C(v4, v6, &v21);

    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v18 = sub_1DD63FD58();
    v20 = sub_1DD39565C(v18, v19, &v21);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_1DD38D000, v14, v15, "PervasiveEntityResolution rejected use case %s, allowed=%s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return 0;
}

BOOL sub_1DD628ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DD63FE58();
  v7 = v6;
  v8 = (a4 + 40);
  v9 = *(a4 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 2;
    v12 = *(v8 - 1);
    v11 = *v8;

    LOBYTE(v12) = sub_1DD640008();

    v8 = v10;
    if (v12)
    {

      return v9 != 0;
    }
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_7();
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1ECD0DDF0);

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136315138;
    v18 = sub_1DD39565C(v5, v7, &v20);

    *(v16 + 4) = v18;
    _os_log_impl(&dword_1DD38D000, v14, v15, "PervasiveEntityResolution will log for use case %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  return v9 != 0;
}

uint64_t sub_1DD628C6C(uint64_t a1)
{
  if (!a1)
  {
    return 5000257;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
  sub_1DD4477A4();
  return sub_1DD63FD58();
}

uint64_t sub_1DD628CE8()
{
  v71 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_6_41();
  v2 = sub_1DD63FDA8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70[0] = v68;
  v70[1] = v69;
  if (!*(&v69 + 1))
  {
    sub_1DD4E82AC(v70);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_4_95() & 1) == 0)
  {
LABEL_13:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v33 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v33, qword_1EE16F0C8);
    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v36, v37, "Was not able to unarchive BMBookmark: no data");
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_18;
  }

  objc_opt_self();
  v4 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  OUTLINED_FUNCTION_48_1();
  sub_1DD640268();

  OUTLINED_FUNCTION_48_1();
  v5 = sub_1DD640258();

  OUTLINED_FUNCTION_15();
  v6 = sub_1DD63CF08();
  *&v70[0] = 0;
  v7 = OUTLINED_FUNCTION_8_76();
  v9 = [v7 v8];

  if (!v9)
  {
    v40 = *&v70[0];
    v41 = sub_1DD63CD98();

    swift_willThrow();
    goto LABEL_21;
  }

  v10 = *&v70[0];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFD0, &unk_1DD665588);
  if ((OUTLINED_FUNCTION_4_95() & 1) == 0)
  {
LABEL_21:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v42 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v42, qword_1EE16F0C8);
    v43 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v43, v44);
    v45 = sub_1DD63F9D8();
    sub_1DD640368();
    v46 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v46, v47);
    if (OUTLINED_FUNCTION_16_54())
    {
      v48 = OUTLINED_FUNCTION_54();
      v49 = OUTLINED_FUNCTION_62();
      *&v70[0] = v49;
      *v48 = 136315138;
      v50 = OUTLINED_FUNCTION_15();
      sub_1DD3D01B4(v50, v51);
      OUTLINED_FUNCTION_15();
      v52 = sub_1DD63CEB8();
      v54 = v53;
      v55 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v55, v56);
      v57 = sub_1DD39565C(v52, v54, v70);

      *(v48 + 4) = v57;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v58, v59, v60, v61, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
      v62 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v62, v63);
    }

    else
    {

      v64 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v64, v65);
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v11 = v68;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v12, qword_1EE16F0C8);
  v13 = OUTLINED_FUNCTION_15();
  sub_1DD3D01B4(v13, v14);
  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  v17 = OUTLINED_FUNCTION_15();
  sub_1DD3AD790(v17, v18);
  if (os_log_type_enabled(v15, v16))
  {
    v19 = OUTLINED_FUNCTION_54();
    v20 = OUTLINED_FUNCTION_62();
    *&v70[0] = v20;
    *v19 = 136315138;
    v21 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v21, v22);
    OUTLINED_FUNCTION_15();
    v23 = sub_1DD63CEB8();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v26, v27);
    v28 = sub_1DD39565C(v23, v25, v70);

    *(v19 + 4) = v28;
    OUTLINED_FUNCTION_14_50(&dword_1DD38D000, v29, v30, "returning BMBookmark bookmark: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    v31 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v31, v32);
  }

  else
  {

    v66 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v66, v67);
  }

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1DD6291C4(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_13_51(v3, sel_archivedDataWithRootObject_requiringSecureCoding_error_, v4, v5, v6, v7, v8, v9, v52, v53, 0);
    v11 = *v54;
    if (v10)
    {
      swift_unknownObjectRelease();
      sub_1DD63CF28();

      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v12 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v12, qword_1EE16F0C8);
      v13 = OUTLINED_FUNCTION_25_3();
      sub_1DD3D01B4(v13, v14);
      v15 = sub_1DD63F9D8();
      v16 = sub_1DD640368();
      v17 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v17, v18);
      if (os_log_type_enabled(v15, v16))
      {
        v19 = OUTLINED_FUNCTION_54();
        v20 = OUTLINED_FUNCTION_62();
        *v54 = v20;
        *v19 = 136315138;
        v21 = OUTLINED_FUNCTION_25_3();
        sub_1DD3D01B4(v21, v22);
        OUTLINED_FUNCTION_25_3();
        v23 = sub_1DD63CEB8();
        v25 = v24;
        v26 = OUTLINED_FUNCTION_25_3();
        sub_1DD3AD790(v26, v27);
        v28 = sub_1DD39565C(v23, v25, v54);

        *(v19 + 4) = v28;
        OUTLINED_FUNCTION_15_56(&dword_1DD38D000, v29, v30, "setting BMBookmark bookmark: %s");
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v31 = *(v2 + 16);
      OUTLINED_FUNCTION_25_3();
      v32 = sub_1DD63CF08();
      OUTLINED_FUNCTION_6_41();
      v33 = sub_1DD63FDA8();
      v34 = OUTLINED_FUNCTION_8_76();
      [v34 v35];

      v36 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v36, v37);
      goto LABEL_13;
    }

    v38 = v11;
    v39 = sub_1DD63CD98();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v40 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v40, qword_1EE16F0C8);
  swift_unknownObjectRetain();
  v41 = sub_1DD63F9D8();
  sub_1DD640368();
  swift_unknownObjectRelease();
  if (!OUTLINED_FUNCTION_16_54())
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v42 = OUTLINED_FUNCTION_54();
  v43 = OUTLINED_FUNCTION_62();
  *v54 = v43;
  *v42 = 136315138;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFC0, &unk_1DD665578);
  v44 = sub_1DD63FE38();
  v46 = sub_1DD39565C(v44, v45, v54);

  *(v42 + 4) = v46;
  OUTLINED_FUNCTION_37_0();
  _os_log_impl(v47, v48, v49, v50, v42, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_1();

LABEL_13:
  swift_unknownObjectRelease();
LABEL_15:
  v51 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1DD629520()
{
  v71 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_6_41();
  v2 = sub_1DD63FDA8();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1DD6406F8();
    swift_unknownObjectRelease();
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
  }

  v70[0] = v68;
  v70[1] = v69;
  if (!*(&v69 + 1))
  {
    sub_1DD4E82AC(v70);
    goto LABEL_13;
  }

  if ((OUTLINED_FUNCTION_4_95() & 1) == 0)
  {
LABEL_13:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v33 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v33, qword_1EE16F0C8);
    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v36, v37, "Was not able to unarchive appIntentTranscriptCodingKey BMBookmark: no data");
      OUTLINED_FUNCTION_0_1();
    }

    goto LABEL_18;
  }

  objc_opt_self();
  v4 = [objc_opt_self() bm_allowedClassesForSecureCodingBMBookmark];
  OUTLINED_FUNCTION_48_1();
  sub_1DD640268();

  OUTLINED_FUNCTION_48_1();
  v5 = sub_1DD640258();

  OUTLINED_FUNCTION_15();
  v6 = sub_1DD63CF08();
  *&v70[0] = 0;
  v7 = OUTLINED_FUNCTION_8_76();
  v9 = [v7 v8];

  if (!v9)
  {
    v40 = *&v70[0];
    v41 = sub_1DD63CD98();

    swift_willThrow();
    goto LABEL_21;
  }

  v10 = *&v70[0];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFD0, &unk_1DD665588);
  if ((OUTLINED_FUNCTION_4_95() & 1) == 0)
  {
LABEL_21:
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v42 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v42, qword_1EE16F0C8);
    v43 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v43, v44);
    v45 = sub_1DD63F9D8();
    sub_1DD640368();
    v46 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v46, v47);
    if (OUTLINED_FUNCTION_16_54())
    {
      v48 = OUTLINED_FUNCTION_54();
      v49 = OUTLINED_FUNCTION_62();
      *&v70[0] = v49;
      *v48 = 136315138;
      v50 = OUTLINED_FUNCTION_15();
      sub_1DD3D01B4(v50, v51);
      OUTLINED_FUNCTION_15();
      v52 = sub_1DD63CEB8();
      v54 = v53;
      v55 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v55, v56);
      v57 = sub_1DD39565C(v52, v54, v70);

      *(v48 + 4) = v57;
      OUTLINED_FUNCTION_37_0();
      _os_log_impl(v58, v59, v60, v61, v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
      v62 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v62, v63);
    }

    else
    {

      v64 = OUTLINED_FUNCTION_15();
      sub_1DD3AD790(v64, v65);
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  v11 = v68;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v12 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v12, qword_1EE16F0C8);
  v13 = OUTLINED_FUNCTION_15();
  sub_1DD3D01B4(v13, v14);
  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  v17 = OUTLINED_FUNCTION_15();
  sub_1DD3AD790(v17, v18);
  if (os_log_type_enabled(v15, v16))
  {
    v19 = OUTLINED_FUNCTION_54();
    v20 = OUTLINED_FUNCTION_62();
    *&v70[0] = v20;
    *v19 = 136315138;
    v21 = OUTLINED_FUNCTION_15();
    sub_1DD3D01B4(v21, v22);
    OUTLINED_FUNCTION_15();
    v23 = sub_1DD63CEB8();
    v25 = v24;
    v26 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v26, v27);
    v28 = sub_1DD39565C(v23, v25, v70);

    *(v19 + 4) = v28;
    OUTLINED_FUNCTION_14_50(&dword_1DD38D000, v29, v30, "returning appIntentTranscriptCodingKey BMBookmark bookmark: %s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
    v31 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v31, v32);
  }

  else
  {

    v66 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v66, v67);
  }

LABEL_19:
  v38 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1DD6299FC(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = v1;
    objc_opt_self();
    v3 = swift_unknownObjectRetain();
    v10 = OUTLINED_FUNCTION_13_51(v3, sel_archivedDataWithRootObject_requiringSecureCoding_error_, v4, v5, v6, v7, v8, v9, v52, v53, 0);
    v11 = *v54;
    if (v10)
    {
      swift_unknownObjectRelease();
      sub_1DD63CF28();

      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v12 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v12, qword_1EE16F0C8);
      v13 = OUTLINED_FUNCTION_25_3();
      sub_1DD3D01B4(v13, v14);
      v15 = sub_1DD63F9D8();
      v16 = sub_1DD640368();
      v17 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v17, v18);
      if (os_log_type_enabled(v15, v16))
      {
        v19 = OUTLINED_FUNCTION_54();
        v20 = OUTLINED_FUNCTION_62();
        *v54 = v20;
        *v19 = 136315138;
        v21 = OUTLINED_FUNCTION_25_3();
        sub_1DD3D01B4(v21, v22);
        OUTLINED_FUNCTION_25_3();
        v23 = sub_1DD63CEB8();
        v25 = v24;
        v26 = OUTLINED_FUNCTION_25_3();
        sub_1DD3AD790(v26, v27);
        v28 = sub_1DD39565C(v23, v25, v54);

        *(v19 + 4) = v28;
        OUTLINED_FUNCTION_15_56(&dword_1DD38D000, v29, v30, "setting BMBookmark bookmark: %s");
        __swift_destroy_boxed_opaque_existential_1(v20);
        OUTLINED_FUNCTION_0_1();
        OUTLINED_FUNCTION_0_1();
      }

      v31 = *(v2 + 16);
      OUTLINED_FUNCTION_25_3();
      v32 = sub_1DD63CF08();
      OUTLINED_FUNCTION_6_41();
      v33 = sub_1DD63FDA8();
      v34 = OUTLINED_FUNCTION_8_76();
      [v34 v35];

      v36 = OUTLINED_FUNCTION_25_3();
      sub_1DD3AD790(v36, v37);
      goto LABEL_13;
    }

    v38 = v11;
    v39 = sub_1DD63CD98();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v40 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v40, qword_1EE16F0C8);
  swift_unknownObjectRetain();
  v41 = sub_1DD63F9D8();
  sub_1DD640368();
  swift_unknownObjectRelease();
  if (!OUTLINED_FUNCTION_16_54())
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v42 = OUTLINED_FUNCTION_54();
  v43 = OUTLINED_FUNCTION_62();
  *v54 = v43;
  *v42 = 136315138;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFFC0, &unk_1DD665578);
  v44 = sub_1DD63FE38();
  v46 = sub_1DD39565C(v44, v45, v54);

  *(v42 + 4) = v46;
  OUTLINED_FUNCTION_37_0();
  _os_log_impl(v47, v48, v49, v50, v42, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v43);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_1();

LABEL_13:
  swift_unknownObjectRelease();
LABEL_15:
  v51 = *MEMORY[0x1E69E9840];
}

id OUTLINED_FUNCTION_13_51(int a1, const char *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{

  return [v12 a2];
}

void OUTLINED_FUNCTION_14_50(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1DD629DBC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 publisher];
  v9 = sub_1DD629520();
  OUTLINED_FUNCTION_14_51();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v24 = sub_1DD62A190;
  v25 = v10;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1DD62A19C;
  v23 = &block_descriptor_25;
  v11 = _Block_copy(&v20);
  v12 = a1;
  v13 = a2;
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_14_51();
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = a3;
  v14[5] = a4;
  v24 = sub_1DD62A300;
  v25 = v14;
  v20 = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1DD47E600;
  v23 = &block_descriptor_6_0;
  v15 = _Block_copy(&v20);
  v16 = v12;
  v17 = v13;
  swift_unknownObjectRetain();

  v18 = [v8 sinkWithBookmark:v9 completion:v11 receiveInput:v15];
  _Block_release(v15);
  _Block_release(v11);

  return swift_unknownObjectRelease();
}

void sub_1DD629FA8(void *a1)
{
  if ([a1 state] == 1)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v1 = sub_1DD63F9F8();
    __swift_project_value_buffer(v1, qword_1EE16F0C8);
    oslog = sub_1DD63F9D8();
    v2 = sub_1DD640368();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v2, "UserEngagementSignalPublisher completion failure", v3, 2u);
      MEMORY[0x1E12B3DA0](v3, -1, -1);
    }
  }

  else
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1EE16F0C8);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640368();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DD38D000, v5, v6, "UserEngagementSignalPublisher completion", v7, 2u);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }

    v8 = swift_unknownObjectRetain();
    sub_1DD6299FC(v8);
  }
}

void sub_1DD62A190(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1DD629FA8(a1);
}

void sub_1DD62A19C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  swift_unknownObjectRetain();
  v6(v7, a3);

  swift_unknownObjectRelease();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1DD62A23C(void *a1, uint64_t a2, void *a3)
{
  v6 = MEMORY[0x1E12B3350]();
  sub_1DD62A30C(a1, a2, a3);

  objc_autoreleasePoolPop(v6);
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_14_51();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

void sub_1DD62A300(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1DD62A23C(a1, *(v1 + 16), *(v1 + 24));
}

void sub_1DD62A30C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v104 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v96 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v96 - v12;
  v14 = sub_1DD63D078();
  v105 = *(v14 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DD63D0F8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  *&v20 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v22 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [a1 eventBody];
  if (!v23)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v40 = sub_1DD63F9F8();
    __swift_project_value_buffer(v40, qword_1EE16F0C8);
    v41 = a1;
    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640368();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v108 = v45;
      *v44 = 136315138;
      v46 = v41;
      v47 = [v46 description];
      v48 = sub_1DD63FDD8();
      v50 = v49;

      v51 = sub_1DD39565C(v48, v50, &v108);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_1DD38D000, v42, v43, "UserEngagementSignalPublisher: %s is incorrect event", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12B3DA0](v45, -1, -1);
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

LABEL_18:

    return;
  }

  v24 = v23;
  v25 = [v23 executionUUID];
  if (!v25)
  {
LABEL_14:
    if (qword_1EE166510 != -1)
    {
LABEL_47:
      swift_once();
    }

    v52 = sub_1DD63F9F8();
    __swift_project_value_buffer(v52, qword_1EE16F0C8);
    v53 = v24;
    v42 = sub_1DD63F9D8();
    v54 = sub_1DD640368();

    if (os_log_type_enabled(v42, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v108 = v56;
      *v55 = 136315138;
      v57 = v53;
      v58 = [v57 description];
      v59 = sub_1DD63FDD8();
      v61 = v60;

      v62 = sub_1DD39565C(v59, v61, &v108);

      *(v55 + 4) = v62;
      _os_log_impl(&dword_1DD38D000, v42, v54, "UserEngagementSignalPublisher: %s is incorrect event", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      MEMORY[0x1E12B3DA0](v56, -1, -1);
      MEMORY[0x1E12B3DA0](v55, -1, -1);

      return;
    }

    goto LABEL_18;
  }

  v26 = v25;
  sub_1DD63D0D8();

  v27 = [v24 executionDate];
  if (!v27)
  {
    (*(v18 + 8))(v22, v17);
    goto LABEL_14;
  }

  v28 = v27;
  v100 = v18;
  v101 = v14;
  sub_1DD63D048();

  v29 = [v24 source];
  switch(v29)
  {
    case 0u:
    case 2u:
    case 5u:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v30 = sub_1DD63F9F8();
      __swift_project_value_buffer(v30, qword_1EE16F0C8);
      v31 = sub_1DD63F9D8();
      v32 = sub_1DD640368();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v99 = v17;
        v34 = v33;
        v35 = swift_slowAlloc();
        v108 = v35;
        *v34 = 136315138;
        v107 = v29;
        type metadata accessor for BMAppIntentInvocationSource(0);
        v36 = sub_1DD63FE38();
        v38 = v22;
        v39 = sub_1DD39565C(v36, v37, &v108);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_1DD38D000, v31, v32, "UserEngagementSignalPublisher: Skip the source: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x1E12B3DA0](v35, -1, -1);
        MEMORY[0x1E12B3DA0](v34, -1, -1);

        (*(v105 + 8))(v106, v101);
        (*(v100 + 8))(v38, v99);
      }

      else
      {

        (*(v105 + 8))(v106, v101);
        (*(v100 + 8))(v22, v17);
      }

      return;
    case 3u:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v63 = sub_1DD63F9F8();
      __swift_project_value_buffer(v63, qword_1EE16F0C8);
      v64 = sub_1DD63F9D8();
      v65 = sub_1DD640368();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v100;
      if (v66)
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_1DD38D000, v64, v65, "UserEngagementSignalPublisher: Skip the siri sources", v68, 2u);
        MEMORY[0x1E12B3DA0](v68, -1, -1);
      }

      goto LABEL_44;
    default:
      v69 = sub_1DD62AEA4(v24);
      v70 = sub_1DD3CC020(v69);
      v102 = v69;
      v103 = v22;
      v99 = v17;
      v97 = v24;
      if (v70 < 1)
      {
        v78 = 0;
      }

      else
      {
        v98 = v3;
        v96 = MEMORY[0x1E69E7CC0];
        v108 = MEMORY[0x1E69E7CC0];
        v71 = sub_1DD3CC020(v69);
        v72 = 0;
        v73 = v69 & 0xC000000000000001;
        v74 = v69 & 0xFFFFFFFFFFFFFF8;
        while (v71 != v72)
        {
          if (v73)
          {
            v75 = MEMORY[0x1E12B2C10](v72, v102);
          }

          else
          {
            if (v72 >= *(v74 + 16))
            {
              goto LABEL_46;
            }

            v75 = *(v102 + 8 * v72 + 32);
          }

          v76 = v75;
          v24 = (v72 + 1);
          if (__OFADD__(v72, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v77 = [v75 candidateId];

          ++v72;
          v22 = v103;
          if (v77)
          {
            MEMORY[0x1E12B23F0]();
            if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD640138();
            }

            sub_1DD640168();
            v96 = v108;
            v72 = v24;
            v22 = v103;
          }
        }

        sub_1DD39638C(0, &qword_1EE160250, 0x1E698EC48);
        v78 = sub_1DD62B2A4(v96, 3);
        v4 = v98;
        v17 = v99;
        v24 = v97;
      }

      v79 = v101;
      (*(v105 + 16))(v13, v106, v101);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v79);
      v67 = v100;
      (*(v100 + 16))(v9, v22, v17);
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v17);
      objc_allocWithZone(MEMORY[0x1E698EBF8]);
      v96 = v78;
      v80 = sub_1DD62DBA0(v13, 0, v9, 0, 0, 3u, v78);
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v81 = sub_1DD63F9F8();
      __swift_project_value_buffer(v81, qword_1EE16F0C8);
      v82 = v80;
      v83 = sub_1DD63F9D8();
      v84 = sub_1DD640368();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v98 = v4;
        v86 = v85;
        v87 = swift_slowAlloc();
        v108 = v87;
        *v86 = 136315138;
        v88 = v84;
        v89 = v82;
        v90 = [v89 description];
        v91 = sub_1DD63FDD8();
        v93 = v92;

        v22 = v103;
        v94 = sub_1DD39565C(v91, v93, &v108);
        v67 = v100;

        *(v86 + 4) = v94;
        _os_log_impl(&dword_1DD38D000, v83, v88, "UserEngagementSignalPublisher: Send biomeEvent sent: %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x1E12B3DA0](v87, -1, -1);
        v17 = v99;
        v24 = v97;
        MEMORY[0x1E12B3DA0](v86, -1, -1);
      }

      v95 = [v104 source];
      [v95 sendEvent_];

LABEL_44:
      (*(v105 + 8))(v106, v101);
      (*(v67 + 8))(v22, v17);
      break;
  }
}

uint64_t sub_1DD62AEA4(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC0];
  v45 = MEMORY[0x1E69E7CC0];
  v3 = &selRef_setIsFamilyNameMatch_;
  v4 = [a1 resolvedAction];
  if (v4)
  {
    sub_1DD582C90(v4);
    if (v5)
    {
      v6 = sub_1DD3CA460(v1, &selRef_bundleID);
      if (v7)
      {
        v8 = v6;
        v9 = v7;
        v10 = objc_allocWithZone(MEMORY[0x1E698EC40]);
        sub_1DD62DD6C(v8, v9);
        v11 = objc_allocWithZone(MEMORY[0x1E698EC18]);
        OUTLINED_FUNCTION_5_90();
        OUTLINED_FUNCTION_7_74();
        v20 = sub_1DD62DDD0(v12, v13, v14, v15, v16, v17, v18, v19, 0, 0);
        objc_allocWithZone(MEMORY[0x1E698EC08]);
        v21 = v20;
        OUTLINED_FUNCTION_5_90();
        v27 = sub_1DD62DE9C(v22, v23, v24, v25, v26);
        [objc_allocWithZone(MEMORY[0x1E698EC10]) initWithCandidateId:v27 userAlignment:3];

        MEMORY[0x1E12B23F0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_33:
          sub_1DD640138();
        }

        sub_1DD640168();
        v2 = v45;
      }

      else
      {

        v2 = MEMORY[0x1E69E7CC0];
      }
    }
  }

  v28 = [v1 v3[159]];
  if (!v28)
  {
    return v2;
  }

  v29 = v28;
  v30 = [v28 parameters];

  sub_1DD39638C(0, &qword_1EE160188, 0x1E698EAE0);
  v31 = sub_1DD640118();

  v3 = sub_1DD3CC020(v31);
  v44 = v1;
  v21 = 0;
  v1 = 0;
  while (2)
  {
    for (i = v21; ; i = (i + 1))
    {
      if (v3 == i)
      {

        return v2;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x1E12B2C10](i, v31);
      }

      else
      {
        if (i >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v33 = *(v31 + 8 * i + 32);
      }

      v34 = v33;
      v21 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v35 = sub_1DD3CA460(v44, &selRef_bundleID);
      v37 = sub_1DD62B334(v35, v36);

      if (v37 >> 62)
      {
        break;
      }

      v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        goto LABEL_20;
      }

LABEL_17:
    }

    result = sub_1DD6407B8();
    v39 = result;
    if (!result)
    {
      goto LABEL_17;
    }

LABEL_20:
    v43 = v3;
    if (v39 >= 1)
    {
      for (j = 0; j != v39; ++j)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x1E12B2C10](j, v37);
        }

        else
        {
          v41 = *(v37 + 8 * j + 32);
        }

        v42 = v41;
        [objc_allocWithZone(MEMORY[0x1E698EC10]) initWithCandidateId:v41 userAlignment:3];
        MEMORY[0x1E12B23F0]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();
      }

      v2 = v45;

      v3 = v43;
      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

id sub_1DD62B2A4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1DD39638C(0, &qword_1EE160168, 0x1E698EC08);
  v4 = sub_1DD6400F8();

  v5 = [v3 initWithCandidateIds:v4 userAlignment:a2];

  return v5;
}

uint64_t sub_1DD62B334(uint64_t a1, void *a2)
{
  v5 = [v2 value];
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = v5;
  v7 = [v5 valueType];
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  sub_1DD62DFE8(v6);
  if (v9 >> 60 == 15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  switch([v8 containerType])
  {
    case 1u:
      v17 = OUTLINED_FUNCTION_73();
      v12 = sub_1DD62BAB4(v17, v18, a1, a2);
      v19 = OUTLINED_FUNCTION_73();
      sub_1DD3AD77C(v19, v20);

      return v12;
    case 2u:
      v14 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62BD54(v14, v15);
      goto LABEL_15;
    case 3u:
      v24 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62B6E4(v24, v25, a1, a2);
      goto LABEL_15;
    case 4u:
      [v8 legacyIntent];
      v26 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62BFAC(v26, v27, v28);
      goto LABEL_15;
    case 7u:
      [v8 primitive];
      v21 = OUTLINED_FUNCTION_73();
      v16 = sub_1DD62B4F8(v21, v22, v23);
LABEL_15:
      v12 = v16;
      v29 = OUTLINED_FUNCTION_73();
      sub_1DD3AD77C(v29, v30);

      break;
    default:

      v10 = OUTLINED_FUNCTION_73();
      sub_1DD3AD77C(v10, v11);
      return MEMORY[0x1E69E7CC0];
  }

  return v12;
}

uint64_t sub_1DD62B4F8(uint64_t a1, unint64_t a2, int a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1;
      v6 = a1 >> 32;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_7:
      if (v5 == v6 || a3 != 11)
      {
        return v4;
      }

      goto LABEL_12;
    case 3uLL:
      return v4;
    default:
      if ((a2 & 0xFF000000000000) == 0 || a3 != 11)
      {
        return v4;
      }

LABEL_12:
      v4 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      sub_1DD39638C(0, &qword_1ECCDB4E0, 0x1E695FC20);
      v8 = OUTLINED_FUNCTION_3_103();
      if (!v3)
      {
        v9 = v8;
        if (v8)
        {
          sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
          OUTLINED_FUNCTION_9_65();
          v10 = sub_1DD640588();
          v11 = [objc_allocWithZone(MEMORY[0x1E698EC38]) initWithExists_];

          v12 = objc_allocWithZone(MEMORY[0x1E698EC18]);
          OUTLINED_FUNCTION_0_147();
          OUTLINED_FUNCTION_7_74();
          v21 = sub_1DD62DDD0(v13, v14, v15, v16, v17, v18, v19, v20, v11, 0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
          OUTLINED_FUNCTION_10_1();
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_1DD643B80;
          v22 = sub_1DD640328();
          v24 = v23;
          objc_allocWithZone(MEMORY[0x1E698EC08]);
          v25 = v21;
          *(v4 + 32) = sub_1DD62DE9C(v22, v24, 0, 0, v21);
        }

        else
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v4;
  }
}

uint64_t sub_1DD62B6E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1;
      v9 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);
LABEL_6:
      if (v8 != v9)
      {
        goto LABEL_7;
      }

      return v5;
    case 3uLL:
      return v5;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return v5;
      }

LABEL_7:
      v5 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      sub_1DD39638C(0, &qword_1EE160158, 0x1E69AC7C8);
      v10 = sub_1DD6403D8();
      if (!v4)
      {
        v11 = v10;
        if (v10)
        {
          if (qword_1EE166510 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          v12 = sub_1DD63F9F8();
          __swift_project_value_buffer(v12, qword_1EE16F0C8);
          v13 = v11;
          v14 = sub_1DD63F9D8();
          v15 = sub_1DD640368();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v53 = v49;
            *v16 = 136315138;
            v17 = v13;
            v51 = v13;
            v18 = [v17 description];
            v19 = sub_1DD63FDD8();
            v48 = v15;
            v21 = v20;

            v22 = sub_1DD39565C(v19, v21, &v53);

            *(v16 + 4) = v22;
            v13 = v51;
            _os_log_impl(&dword_1DD38D000, v14, v48, "UserEngagementSignalPublisher: the entity candidate is %s", v16, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v49);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          v23 = [v13 identifier];
          v24 = v13;
          v25 = [v23 instanceIdentifier];

          v26 = sub_1DD63FDD8();
          v50 = v27;
          v52 = v26;

          v28 = [v24 identifier];
          v29 = [v28 typeIdentifier];

          v30 = sub_1DD63FDD8();
          v32 = v31;

          v33 = objc_allocWithZone(MEMORY[0x1E698EC20]);

          v34 = sub_1DD62DF48(a3, a4, v30, v32);
          v35 = objc_allocWithZone(MEMORY[0x1E698EC18]);
          v36 = v34;
          OUTLINED_FUNCTION_0_147();
          OUTLINED_FUNCTION_7_74();
          v45 = sub_1DD62DDD0(v37, v38, v39, v40, v41, v42, v43, v44, 0, v34);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
          OUTLINED_FUNCTION_10_1();
          v5 = swift_allocObject();
          *(v5 + 16) = xmmword_1DD643B80;
          objc_allocWithZone(MEMORY[0x1E698EC08]);
          v46 = v45;
          *(v5 + 32) = sub_1DD62DE9C(v52, v50, v30, v32, v45);
        }

        else
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v5;
  }
}

uint64_t sub_1DD62BAB4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFFE0, &unk_1DD665598);
  OUTLINED_FUNCTION_14_51();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD643F80;
  *(v6 + 32) = sub_1DD39638C(0, &qword_1ECCDFFE8, 0x1E695DEC8);
  v7 = sub_1DD39638C(0, &qword_1ECCDFFF0, 0x1E69ACA88);
  *(v6 + 40) = v7;
  sub_1DD6403E8();

  if (!v20[3])
  {
    sub_1DD4E82AC(v20);
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFFF8, &qword_1DD6655A8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F0C8);

  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20[0] = v14;
    *v13 = 136315138;
    v15 = MEMORY[0x1E12B2430](v19, v7);
    v17 = sub_1DD39565C(v15, v16, v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1DD38D000, v11, v12, "UserEngagementSignalPublisher: the array candidate is %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v8 = sub_1DD62C058(v19, a3, a4, v18);

  return v8;
}

uint64_t sub_1DD62BD54(uint64_t a1, unint64_t a2)
{
  v3 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1;
      v5 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(a1 + 16);
      v5 = *(a1 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      return v3;
    case 3uLL:
      return v3;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return v3;
      }

LABEL_7:
      v3 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      sub_1DD39638C(0, &qword_1ECCE0018, 0x1E69AC7E0);
      v6 = OUTLINED_FUNCTION_3_103();
      if (!v2)
      {
        v7 = v6;
        if (v6)
        {

          v8 = [v7 typeIdentifier];
          v9 = sub_1DD63FDD8();
          v11 = v10;

          v12 = objc_allocWithZone(MEMORY[0x1E698EC20]);
          v13 = OUTLINED_FUNCTION_73();
          v15 = sub_1DD62DF48(v13, v14, v9, v11);
          v16 = objc_allocWithZone(MEMORY[0x1E698EC18]);
          v36 = v15;
          OUTLINED_FUNCTION_0_147();
          OUTLINED_FUNCTION_7_74();
          v25 = sub_1DD62DDD0(v17, v18, v19, v20, v21, v22, v23, v24, 0, v15);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
          OUTLINED_FUNCTION_10_1();
          v3 = swift_allocObject();
          *(v3 + 16) = xmmword_1DD643B80;
          v26 = [v7 instanceIdentifier];
          v27 = sub_1DD63FDD8();
          v35 = v28;

          v29 = [v7 typeIdentifier];
          v30 = sub_1DD63FDD8();
          v32 = v31;

          objc_allocWithZone(MEMORY[0x1E698EC08]);
          v33 = v25;
          *(v3 + 32) = sub_1DD62DE9C(v27, v35, v30, v32, v25);
        }

        else
        {
          return MEMORY[0x1E69E7CC0];
        }
      }

      return v3;
  }
}

uint64_t sub_1DD62BFAC(uint64_t a1, unint64_t a2, int a3)
{
  result = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = a1;
      v6 = a1 >> 32;
      goto LABEL_6;
    case 2uLL:
      v5 = *(a1 + 16);
      v6 = *(a1 + 24);
LABEL_6:
      if (v5 != v6)
      {
        goto LABEL_7;
      }

      return result;
    case 3uLL:
      return result;
    default:
      if ((a2 & 0xFF000000000000) == 0)
      {
        return result;
      }

LABEL_7:
      switch(a3)
      {
        case 13:
          return sub_1DD62D4D8();
        case 4:
          return sub_1DD62D344();
        case 1:
          return sub_1DD62D1A8();
      }

      return result;
  }
}

uint64_t sub_1DD62C058(uint64_t result, uint64_t a2, id a3, __n128 a4)
{
  v7 = result;
  if (result >> 62)
  {
LABEL_92:
    result = sub_1DD6407B8();
    v8 = result;
    if (result)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  if (v8 < 1)
  {
    goto LABEL_98;
  }

  v9 = 0;
  v73 = v7 & 0xC000000000000001;
  v70 = v7 + 32;
  v74 = MEMORY[0x1E69E7CC0];
  a4.n128_u64[0] = 136315138;
  v60 = a4;
  v62 = a3;
  v63 = v4;
  v64 = a2;
  v71 = v7;
  v72 = v8;
  while (1)
  {
    v10 = v73 ? MEMORY[0x1E12B2C10](v9, v7) : *(v70 + 8 * v9);
    v11 = v10;
    v12 = [v10 valueType];
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();

    v14 = v74 >> 62;
    if (!v13)
    {
      break;
    }

    v15 = [v11 value];
    sub_1DD6406F8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFFF8, &qword_1DD6655A8);
    if (swift_dynamicCast())
    {
      v7 = sub_1DD62C058(v75, a2, a3);

      if (v7 >> 62)
      {
        if (sub_1DD6407B8() < 1)
        {
LABEL_77:

          v7 = v71;
          v8 = v72;
          goto LABEL_78;
        }

        v16 = sub_1DD6407B8();
      }

      else
      {
        v16 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v16)
        {
          goto LABEL_77;
        }
      }

      v68 = v11;
      if (v14)
      {
        v17 = sub_1DD6407B8();
      }

      else
      {
        v17 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v16;
      v18 = __OFADD__(v17, v16);
      v19 = v17 + v16;
      if (v18)
      {
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v14)
        {
          v20 = v74 & 0xFFFFFFFFFFFFFF8;
          if (v19 > *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_35:
            v34 = *(v20 + 16);
            goto LABEL_40;
          }

          goto LABEL_41;
        }
      }

      else if (!v14)
      {
        v20 = v74 & 0xFFFFFFFFFFFFFF8;
        goto LABEL_35;
      }

      sub_1DD6407B8();
LABEL_40:
      v74 = sub_1DD640918();
      v20 = v74 & 0xFFFFFFFFFFFFFF8;
LABEL_41:
      v36 = *(v20 + 16);
      a2 = (*(v20 + 24) >> 1) - v36;
      v37 = v20 + 8 * v36;
      if (v7 >> 62)
      {
        v39 = sub_1DD6407B8();
        if (!v39)
        {
          goto LABEL_55;
        }

        v40 = v39;
        v61 = sub_1DD6407B8();
        if (a2 < v61)
        {
          goto LABEL_89;
        }

        if (v40 < 1)
        {
          goto LABEL_90;
        }

        v41 = v37 + 32;
        sub_1DD62E04C();
        for (i = 0; i != v40; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0000, qword_1DD6655B0);
          v43 = sub_1DD5B5E98(v76, i, v7);
          v45 = *v44;
          v43(v76, 0);
          *(v41 + 8 * i) = v45;
        }

        a3 = v62;
        v4 = v63;
        v8 = v72;
        v38 = v61;
LABEL_51:

        a2 = v64;
        v7 = v71;
        v46 = v68;
        if (v38 < v65)
        {
          goto LABEL_84;
        }

        if (v38 > 0)
        {
          v47 = *(v20 + 16);
          v18 = __OFADD__(v47, v38);
          v48 = v47 + v38;
          if (v18)
          {
            goto LABEL_87;
          }

          *(v20 + 16) = v48;
        }
      }

      else
      {
        v38 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
          v8 = v72;
          if (a2 < v38)
          {
            goto LABEL_88;
          }

          sub_1DD39638C(0, &qword_1EE160168, 0x1E698EC08);
          OUTLINED_FUNCTION_15_57();
          goto LABEL_51;
        }

LABEL_55:

        a2 = v64;
        v7 = v71;
        v8 = v72;
        v46 = v68;
        if (v65 > 0)
        {
          goto LABEL_84;
        }
      }

      goto LABEL_78;
    }

LABEL_78:
    if (++v9 == v8)
    {
      return v74;
    }
  }

  v21 = sub_1DD62C878(v11);
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1EE16F0C8);
  a3 = v11;
  v4 = sub_1DD63F9D8();
  v23 = sub_1DD640368();

  if (os_log_type_enabled(v4, v23))
  {
    v7 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v76[0] = v66;
    *v7 = v60.n128_u32[0];
    v24 = a3;
    v25 = [v24 description];
    v26 = sub_1DD63FDD8();
    v69 = a3;
    v28 = v27;

    v29 = v26;
    a2 = v64;
    v30 = sub_1DD39565C(v29, v28, v76);
    a3 = v69;

    *(v7 + 4) = v30;
    _os_log_impl(&dword_1DD38D000, v4, v23, "UserEngagementSignalPublisher: the LNValue candidate is %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v66);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  if (v21 >> 62)
  {
    v31 = sub_1DD6407B8();
    if (v14)
    {
      goto LABEL_82;
    }

LABEL_27:
    v32 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v31 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_27;
    }

LABEL_82:
    v32 = sub_1DD6407B8();
  }

  v33 = v32 + v31;
  if (__OFADD__(v32, v31))
  {
    goto LABEL_85;
  }

  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (result)
  {
    if (!v14)
    {
      v7 = v74 & 0xFFFFFFFFFFFFFF8;
      if (v33 > *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_38:
        v35 = *(v7 + 16);
        goto LABEL_58;
      }

      goto LABEL_59;
    }
  }

  else if (!v14)
  {
    v7 = v74 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_38;
  }

  sub_1DD6407B8();
LABEL_58:
  result = sub_1DD640918();
  v74 = result;
  v7 = result & 0xFFFFFFFFFFFFFF8;
LABEL_59:
  v49 = *(v7 + 16);
  v4 = ((*(v7 + 24) >> 1) - v49);
  v50 = (v7 + 8 * v49);
  if (v21 >> 62)
  {
    v52 = sub_1DD6407B8();
    if (v52)
    {
      v53 = v52;
      result = sub_1DD6407B8();
      v67 = result;
      if (v4 < result)
      {
        goto LABEL_96;
      }

      if (v53 < 1)
      {
        goto LABEL_97;
      }

      v4 = v50 + 4;
      sub_1DD62E04C();
      for (j = 0; j != v53; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0000, qword_1DD6655B0);
        v55 = sub_1DD5B5E98(v76, j, v21);
        v57 = *v56;
        v55(v76, 0);
        v4[j].isa = v57;
      }

      a2 = v64;
      v51 = v67;
LABEL_69:

      v8 = v72;
      if (v51 < v31)
      {
        goto LABEL_86;
      }

      if (v51 > 0)
      {
        v58 = *(v7 + 16);
        v18 = __OFADD__(v58, v51);
        v59 = v58 + v51;
        if (v18)
        {
          goto LABEL_91;
        }

        *(v7 + 16) = v59;
      }

LABEL_74:

      a3 = v62;
      v4 = v63;
      v7 = v71;
      goto LABEL_78;
    }

LABEL_73:

    v8 = v72;
    if (v31 > 0)
    {
      goto LABEL_86;
    }

    goto LABEL_74;
  }

  v51 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v51)
  {
    goto LABEL_73;
  }

  if (v4 >= v51)
  {
    sub_1DD39638C(0, &qword_1EE160168, 0x1E698EC08);
    OUTLINED_FUNCTION_15_57();
    goto LABEL_69;
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
  return result;
}

uint64_t sub_1DD62C878(void *a1)
{
  v2 = [a1 valueType];
  objc_opt_self();
  if (OUTLINED_FUNCTION_16_55())
  {
    v3 = v2;
    v4 = sub_1DD62C9B4(a1);

    return v4;
  }

  objc_opt_self();
  if (OUTLINED_FUNCTION_16_55())
  {
    v6 = OUTLINED_FUNCTION_13_52();
    v9 = sub_1DD62CCE8(v6, v7, v8);
  }

  else
  {
    objc_opt_self();
    if (!OUTLINED_FUNCTION_16_55())
    {
      objc_opt_self();
      v14 = OUTLINED_FUNCTION_16_55();
      if (v14)
      {
        v15 = v14;
        v16 = v2;
        v13 = sub_1DD62D134(a1, v15);
      }

      else
      {

        return MEMORY[0x1E69E7CC0];
      }

      return v13;
    }

    v10 = OUTLINED_FUNCTION_13_52();
    v9 = sub_1DD62CF10(v10, v11, v12);
  }

  v13 = v9;

  return v13;
}

uint64_t sub_1DD62C9B4(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 placemarkValueType];
  sub_1DD39638C(0, &qword_1ECCE0010, 0x1E69AC940);
  v4 = sub_1DD6405B8();

  if ((v4 & 1) == 0)
  {
    v23 = [v2 stringValueType];
    v24 = OUTLINED_FUNCTION_12_50();

    if ((v24 & 1) == 0)
    {
      v25 = [v2 BOOLValueType];
      v26 = OUTLINED_FUNCTION_12_50();

      if ((v26 & 1) == 0)
      {
        v27 = [v2 intValueType];
        v28 = OUTLINED_FUNCTION_12_50();

        if ((v28 & 1) == 0)
        {
          v29 = [v2 doubleValueType];
          v30 = OUTLINED_FUNCTION_12_50();

          if ((v30 & 1) == 0)
          {
            v31 = [v2 dateValueType];
            v32 = OUTLINED_FUNCTION_12_50();

            if ((v32 & 1) == 0)
            {
              v33 = [v2 dateComponentsValueType];
              v34 = OUTLINED_FUNCTION_12_50();

              if ((v34 & 1) == 0)
              {
                v35 = [v2 URLValueType];
                v36 = OUTLINED_FUNCTION_12_50();

                if ((v36 & 1) == 0)
                {
                  v37 = [v2 attributedStringValueType];
                  sub_1DD6405B8();
                }
              }
            }
          }
        }
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

  v5 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1ECCDB4E0, 0x1E695FC20);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v6 = sub_1DD640588();
  v7 = [objc_allocWithZone(MEMORY[0x1E698EC38]) initWithExists_];

  v8 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  OUTLINED_FUNCTION_0_147();
  OUTLINED_FUNCTION_7_74();
  v17 = sub_1DD62DDD0(v9, v10, v11, v12, v13, v14, v15, v16, v7, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1DD643B80;
  v19 = sub_1DD640328();
  v21 = v20;
  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v22 = v17;
  *(v18 + 32) = sub_1DD62DE9C(v19, v21, 0, 0, v17);

  return v18;
}

uint64_t sub_1DD62CCE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 value];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1EE160158, 0x1E69AC7C8);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v33 identifier];
  v7 = [v6 instanceIdentifier];

  v8 = sub_1DD63FDD8();
  v31 = v9;
  v32 = v8;

  v10 = [v33 identifier];
  v11 = [v10 typeIdentifier];

  v12 = sub_1DD63FDD8();
  v14 = v13;

  objc_allocWithZone(MEMORY[0x1E698EC20]);

  v15 = sub_1DD62DF48(a2, a3, v12, v14);
  v16 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v17 = v15;
  OUTLINED_FUNCTION_0_147();
  OUTLINED_FUNCTION_7_74();
  v26 = sub_1DD62DDD0(v18, v19, v20, v21, v22, v23, v24, v25, 0, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1DD643B80;
  v28 = objc_allocWithZone(MEMORY[0x1E698EC08]);
  v29 = v26;
  *(v27 + 32) = sub_1DD62DE9C(v32, v31, v12, v14, v26);

  return v27;
}

uint64_t sub_1DD62CF10(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 value];
  sub_1DD6406F8();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1ECCE0018, 0x1E69AC7E0);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = [v34 typeIdentifier];
  v7 = sub_1DD63FDD8();
  v9 = v8;

  v10 = objc_allocWithZone(MEMORY[0x1E698EC20]);
  v11 = sub_1DD62DF48(a2, a3, v7, v9);
  v12 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v33 = v11;
  OUTLINED_FUNCTION_0_147();
  OUTLINED_FUNCTION_7_74();
  v21 = sub_1DD62DDD0(v13, v14, v15, v16, v17, v18, v19, v20, 0, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1DD643B80;
  v23 = [v34 instanceIdentifier];
  v24 = sub_1DD63FDD8();
  v26 = v25;

  v27 = [v34 typeIdentifier];
  v28 = sub_1DD63FDD8();
  v30 = v29;

  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v31 = v21;
  *(v22 + 32) = sub_1DD62DE9C(v24, v26, v28, v30, v21);

  return v22;
}

uint64_t sub_1DD62D134(void *a1, id a2)
{
  v3 = [a2 typeIdentifier];
  if (v3 == 12)
  {
    return sub_1DD62D958(a1);
  }

  if (v3 == 3)
  {
    return sub_1DD62D7C8(a1);
  }

  if (v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return sub_1DD62D660(a1);
}

uint64_t sub_1DD62D1A8()
{
  OUTLINED_FUNCTION_20_9();
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, &qword_1EE160148, 0x1E696AEC0);
  v2 = OUTLINED_FUNCTION_3_103();
  if (!v0)
  {
    v3 = v2;
    if (v2)
    {
      sub_1DD63FDC8();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1DD62D344()
{
  OUTLINED_FUNCTION_20_9();
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  v2 = OUTLINED_FUNCTION_3_103();
  if (!v0)
  {
    v3 = v2;
    if (v2)
    {
      sub_1DD62DAE8();
      if (v4)
      {
        sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
        OUTLINED_FUNCTION_9_65();
        v5 = sub_1DD640588();
        v6 = [objc_allocWithZone(MEMORY[0x1E698EC30]) initWithExists_];

        v7 = objc_allocWithZone(MEMORY[0x1E698EC18]);
        v8 = OUTLINED_FUNCTION_0_147();
        v14 = sub_1DD62DDD0(v8, v9, v10, v11, v12, v13, 0, v6, 0, 0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
        OUTLINED_FUNCTION_10_1();
        v1 = swift_allocObject();
        *(v1 + 16) = xmmword_1DD643B80;
        objc_allocWithZone(MEMORY[0x1E698EC08]);
        v15 = v14;
        OUTLINED_FUNCTION_5_90();
        *(v1 + 32) = sub_1DD62DE9C(v16, v17, v18, v19, v20);

        v3 = v15;
      }

      else
      {
        v1 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t sub_1DD62D4D8()
{
  OUTLINED_FUNCTION_20_9();
  v1 = sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, &qword_1ECCE0020, 0x1E696E840);
  v2 = OUTLINED_FUNCTION_3_103();
  if (!v0)
  {
    v3 = v2;
    if (v2)
    {
      sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
      OUTLINED_FUNCTION_9_65();
      v4 = sub_1DD640588();
      v5 = [objc_allocWithZone(MEMORY[0x1E698EC28]) initWithExists_];

      v6 = objc_allocWithZone(MEMORY[0x1E698EC18]);
      v7 = OUTLINED_FUNCTION_0_147();
      v13 = sub_1DD62DDD0(v7, v8, v9, v10, v11, v12, v5, 0, 0, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
      OUTLINED_FUNCTION_10_1();
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1DD643B80;
      sub_1DD3CA460(v3, &selRef_typeIdentifier);
      objc_allocWithZone(MEMORY[0x1E698EC08]);
      v14 = v13;
      OUTLINED_FUNCTION_5_90();
      *(v1 + 32) = sub_1DD62DE9C(v15, v16, v17, v18, v19);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v1;
}

uint64_t sub_1DD62D660(void *a1)
{
  v1 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v2 = sub_1DD640588();
  [objc_allocWithZone(MEMORY[0x1E698EC00]) initWithExists_];

  v3 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  OUTLINED_FUNCTION_1_134();
  OUTLINED_FUNCTION_7_74();
  v12 = sub_1DD62DDD0(v4, v5, v6, v7, v8, v9, v10, v11, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643B80;
  objc_allocWithZone(MEMORY[0x1E698EC08]);

  v14 = v12;
  *(v13 + 32) = sub_1DD62DE9C(v16, v17, v16, v17, v12);

  return v13;
}

uint64_t sub_1DD62D7C8(void *a1)
{
  v1 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  OUTLINED_FUNCTION_4_96();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD62DAE8();
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v3 = sub_1DD640588();
  v4 = [objc_allocWithZone(MEMORY[0x1E698EC30]) initWithExists_];

  v5 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v6 = OUTLINED_FUNCTION_0_147();
  v12 = sub_1DD62DDD0(v6, v7, v8, v9, v10, v11, 0, v4, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DD643B80;
  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v14 = v12;
  OUTLINED_FUNCTION_5_90();
  *(v13 + 32) = sub_1DD62DE9C(v15, v16, v17, v18, v19);

  return v13;
}

uint64_t sub_1DD62D958(void *a1)
{
  v1 = [a1 value];
  OUTLINED_FUNCTION_17_43();
  swift_unknownObjectRelease();
  sub_1DD39638C(0, &qword_1ECCE0020, 0x1E696E840);
  OUTLINED_FUNCTION_4_96();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DD39638C(0, &qword_1EE163880, 0x1E696AD98);
  OUTLINED_FUNCTION_9_65();
  v2 = sub_1DD640588();
  v3 = [objc_allocWithZone(MEMORY[0x1E698EC28]) initWithExists_];

  v4 = objc_allocWithZone(MEMORY[0x1E698EC18]);
  v5 = OUTLINED_FUNCTION_0_147();
  v11 = sub_1DD62DDD0(v5, v6, v7, v8, v9, v10, v3, 0, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  OUTLINED_FUNCTION_10_1();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DD643B80;
  sub_1DD3CA460(v20, &selRef_typeIdentifier);
  objc_allocWithZone(MEMORY[0x1E698EC08]);
  v13 = v11;
  OUTLINED_FUNCTION_5_90();
  *(v12 + 32) = sub_1DD62DE9C(v14, v15, v16, v17, v18);

  return v12;
}

uint64_t sub_1DD62DAE8()
{
  v1 = [v0 personHandle];
  if (!v1)
  {
    return sub_1DD640568();
  }

  v2 = v1;
  v4 = sub_1DD6403A8();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return sub_1DD640568();
  }

  return v4;
}

id sub_1DD62DBA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7)
{
  v8 = v7;
  v14 = sub_1DD63D078();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) != 1)
  {
    v15 = sub_1DD63CFA8();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  v16 = sub_1DD63D0F8();
  v17 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v16) != 1)
  {
    v17 = sub_1DD63D0B8();
    (*(*(v16 - 8) + 8))(a3, v16);
  }

  if (a5)
  {
    v18 = sub_1DD63FDA8();
  }

  else
  {
    v18 = 0;
  }

  sub_1DD39638C(0, &qword_1EE160248, 0x1E698EC10);
  v19 = sub_1DD6400F8();

  v20 = [v8 initWithAbsoluteTimestamp:v15 transcriptStatementId:a2 appIntentInvocationUUID:v17 sirikitIntentItemId:v18 trigger:a6 tupleInteraction:a7 candidateInteractions:v19];

  return v20;
}

id sub_1DD62DD6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD63FDA8();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithBundleId_];

  return v4;
}

id sub_1DD62DDD0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v11 = v10;
  v21 = [v11 initWithUnknown:a1 primitive:a2 device:a3 schema:a4 tool:a5 app:a6 file:a7 person:a8 placemark:a9 custom:a10];

  return v21;
}

id sub_1DD62DE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a2)
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1DD63FDA8();

LABEL_6:
  v10 = [v5 initWithIdentifier:v8 bundleId:v9 type:a5];

  return v10;
}

id sub_1DD62DF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_1DD63FDA8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_1DD63FDA8();

LABEL_6:
  v8 = [v4 initWithBundleId:v6 typeName:v7];

  return v8;
}

uint64_t sub_1DD62DFE8(void *a1)
{
  v1 = [a1 value];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DD63CF28();

  return v3;
}

unint64_t sub_1DD62E04C()
{
  result = qword_1ECCE0008;
  if (!qword_1ECCE0008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCE0000, qword_1DD6655B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0008);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_103()
{

  return sub_1DD6403D8();
}

uint64_t OUTLINED_FUNCTION_12_50()
{

  return sub_1DD6405B8();
}

uint64_t UserSelection.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1DD4B69A0(v2, v3, v4);
}

uint64_t UserSelection.encodedPayload.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

__n128 UserSelection.init(type:encodedPayload:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u8[0];
  result = *a1;
  *a4 = *a1;
  a4[1].n128_u8[0] = v4;
  a4[1].n128_u64[1] = a2;
  a4[2].n128_u64[0] = a3;
  return result;
}

uint64_t sub_1DD62E17C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1DD62E1BC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t UsoEntity_common_Agent.toContactQuery()@<X0>(void *a1@<X8>)
{
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F068);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "converting USO Agent to ContactQuery", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  *v29 = 0;
  *&v29[8] = 0xE000000000000000;
  v29[16] = 0;
  *&v29[24] = 0;
  *&v29[32] = 0xE000000000000000;
  *&v29[40] = 0;
  *&v29[48] = 0xE000000000000000;
  *&v29[56] = 0;
  *&v29[64] = 0xE000000000000000;
  *&v29[72] = 0;
  *&v29[80] = 0xE000000000000000;
  *&v29[88] = 0;
  *&v29[96] = 0xE000000000000000;
  *&v29[104] = 0;
  *&v29[112] = 0xE000000000000000;
  *&v29[120] = 0;
  *&v29[128] = 0xE000000000000000;
  *&v29[136] = 0;
  *&v29[144] = 0xE000000000000000;
  *&v29[152] = 0;
  *&v29[160] = 0xE000000000000000;
  memset(&v29[168], 0, 72);
  *&v29[240] = MEMORY[0x1E69E7CC0];
  *&v29[256] = 0;
  v29[248] = 2;
  v6 = sub_1DD63E5B8();
  if (v7)
  {
    *&v29[24] = v6;
    *&v29[32] = v7;
  }

  if (sub_1DD63E5A8())
  {
    if (sub_1DD63396C())
    {
    }

    else
    {
      sub_1DD63E6B8();
      sub_1DD6339D4(__dst);

      v8 = LOBYTE(__dst[0]);
      *v23 = *&__dst[3];
      v24 = *&__dst[1];
      v9 = __dst[5];
      sub_1DD3FAA54(*&v29[192], *&v29[200], *&v29[208]);
      *&v29[200] = v24;
      *&v29[216] = *v23;
      *&v29[192] = v8;
      *&v29[232] = v9;
    }
  }

  v10 = sub_1DD63E318();
  if (v10)
  {
    v11 = v10;
    sub_1DD63E6B8();
    sub_1DD633F10(v11);
    v13 = v12;

    *&v29[240] = v13;
  }

  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v16 = 136315138;
    swift_beginAccess();
    OUTLINED_FUNCTION_0_148(v27);
    OUTLINED_FUNCTION_0_148(__src);
    sub_1DD3C9478(v27, __dst);
    v18 = ContactQuery.description.getter();
    v20 = v19;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DD3C9580(__dst);
    v21 = sub_1DD39565C(v18, v20, v26);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_1DD38D000, v14, v15, "converted UsoEntity_common_Agent to ContactQuery %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
    MEMORY[0x1E12B3DA0](v16, -1, -1);
  }

  swift_beginAccess();
  OUTLINED_FUNCTION_0_148(v27);
  memcpy(a1, v29, 0x108uLL);
  OUTLINED_FUNCTION_0_148(__dst);
  sub_1DD3C9478(v27, __src);
  return sub_1DD3C9580(__dst);
}

uint64_t UsoEntity_common_Date.toDate()()
{
  v1 = sub_1DD63E508();
  v2 = OUTLINED_FUNCTION_0(v1);
  v83 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v84 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0028, &qword_1DD665738);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v82 - v9;
  v11 = sub_1DD63DEA8();
  v12 = OUTLINED_FUNCTION_0(v11);
  v92 = v13;
  v93 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v94 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v82 - v18;
  if (sub_1DD63E4D8())
  {
    sub_1DD631D0C(&v99);
  }

  else
  {
    v99 = 12;
  }

  if (sub_1DD63E4B8())
  {
    v20 = sub_1DD6317A0();
    v90 = v21;
  }

  else
  {
    v20 = 0;
    v90 = 1;
  }

  if (sub_1DD63E4A8())
  {
    v22 = sub_1DD6317A0();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 1;
  }

  v25 = sub_1DD63E2F8();
  v91 = v10;
  v88 = v1;
  v89 = v20;
  v87 = v22;
  v86 = v24;
  if (v25)
  {
    sub_1DD6317C0(&v96);
    v26 = v96;
    if (v96 == 20)
    {

      goto LABEL_13;
    }

    if (sub_1DD63E528())
    {

      if (!sub_1DD63E528() || (sub_1DD6317A0(), OUTLINED_FUNCTION_3_104(), (v22 & 1) != 0))
      {

        v31 = 11;
LABEL_80:
        LOBYTE(v96) = v31;
        LOBYTE(v95) = v26;
        goto LABEL_81;
      }
    }

    if (sub_1DD63E4D8())
    {

      if (!sub_1DD63E4D8() || (OUTLINED_FUNCTION_0_149(), sub_1DD631D0C(v34), , v96 == 12))
      {

        v31 = 9;
        goto LABEL_80;
      }
    }

    if (sub_1DD63E4B8())
    {

      v31 = 10;
      goto LABEL_80;
    }

    if (sub_1DD63E538())
    {

      if (!sub_1DD63E538())
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_0_149();
      sub_1DD630E00(v41);

      if (v96 == 7)
      {
        goto LABEL_69;
      }
    }

    if (!sub_1DD63E4A8())
    {

LABEL_79:
      v31 = 38;
      goto LABEL_80;
    }

    if (!sub_1DD63E4A8())
    {
LABEL_69:
    }

    else
    {
      sub_1DD6317A0();
      OUTLINED_FUNCTION_3_104();

      if ((v22 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    v31 = 8;
    goto LABEL_80;
  }

LABEL_13:
  if (sub_1DD63E528())
  {
    OUTLINED_FUNCTION_0_149();
    sub_1DD63108C(v27);

    v28 = v96;
    if (v96 != 20)
    {
      v32 = 11;
      if (!sub_1DD63E528())
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }
  }

  if (!sub_1DD63E4D8())
  {
    v10 = v91;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_0_149();
  sub_1DD63108C(v29);

  v30 = v96;
  v10 = v91;
  if (v96 == 20)
  {
LABEL_36:
    if (!sub_1DD63E4B8() || (OUTLINED_FUNCTION_0_149(), sub_1DD63108C(v35), , v30 = v96, v96 == 20))
    {
      if (!sub_1DD63E4A8() || (OUTLINED_FUNCTION_0_149(), sub_1DD63108C(v36), , v28 = v96, v96 == 20))
      {
        if (!sub_1DD63E538() || (OUTLINED_FUNCTION_0_149(), sub_1DD63108C(v37), , v28 = v96, v96 == 20))
        {
          if (sub_1DD63E4E8())
          {
            v33 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
          }

          else
          {
            v33 = 0;
          }

          goto LABEL_30;
        }

        if (sub_1DD63E538())
        {
          OUTLINED_FUNCTION_0_149();
          sub_1DD630E00(v39);

          if (v96 == 7)
          {
            v40 = 10;
          }

          else
          {
            v40 = 38;
          }
        }

        else
        {
          v40 = 10;
        }

        LOBYTE(v96) = v40;
LABEL_29:
        LOBYTE(v95) = v28;
        type metadata accessor for DateTime.DateTimeRange();
        swift_allocObject();
        v33 = OUTLINED_FUNCTION_1_135();
LABEL_30:
        v10 = v91;
        goto LABEL_82;
      }

      v32 = 9;
      if (!sub_1DD63E4A8())
      {
LABEL_28:
        LOBYTE(v96) = v32;
        goto LABEL_29;
      }

LABEL_26:
      sub_1DD6317A0();
      OUTLINED_FUNCTION_3_104();
      if ((v22 & 1) == 0)
      {
        v32 = 38;
      }

      goto LABEL_28;
    }

    if (v90)
    {
      if (v96 == 2)
      {
        v90 = 0;
        v30 = 20;
        v38 = 1;
      }

      else
      {
        if (v96 != 3)
        {
          v90 = 1;
          goto LABEL_76;
        }

        v90 = 0;
        v30 = 20;
        v38 = 52;
      }

      v89 = v38;
    }

    else
    {
      v90 = 0;
    }

LABEL_76:
    v42 = 10;
    goto LABEL_77;
  }

  if (v99 == 12)
  {
    if (v96 == 3)
    {
      v99 = 11;
    }

    else
    {
      if (v96 != 2)
      {
        v42 = 9;
        goto LABEL_77;
      }

      v99 = 0;
    }

    v30 = 20;
  }

  v42 = 38;
LABEL_77:
  LOBYTE(v96) = v42;
  LOBYTE(v95) = v30;
LABEL_81:
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v33 = OUTLINED_FUNCTION_1_135();
LABEL_82:
  v85 = v33;

  result = sub_1DD63E318();
  if (result)
  {
    v44 = result;
    v82[0] = v19;
    v82[1] = v0;
    v45 = 0;
    v46 = *(result + 16);
    v47 = (v92 + 8);
    while (1)
    {
      if (v46 == v45)
      {

        v58 = 0;
        v59 = 0;
        goto LABEL_109;
      }

      if (v45 >= *(v44 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v92 + 16))(v94, v44 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v45, v93);
      if (sub_1DD63DE18() == 0xD000000000000013 && 0x80000001DD675200 == v48)
      {
LABEL_106:

LABEL_107:

        v60 = v93;
        v61 = v92 + 32;
        v62 = v82[0];
        (*(v92 + 32))(v82[0], v94, v93);
        v58 = sub_1DD63DE88();
        v59 = v63;
        (*(v61 - 24))(v62, v60);
LABEL_109:
        v10 = v91;
        goto LABEL_110;
      }

      v50 = sub_1DD640CD8();

      if (v50)
      {
        goto LABEL_107;
      }

      if (sub_1DD63DE18() == 0xD000000000000015 && 0x80000001DD675220 == v51)
      {
      }

      else
      {
        v53 = sub_1DD640CD8();

        if ((v53 & 1) == 0)
        {
          goto LABEL_104;
        }
      }

      v54 = sub_1DD63DE98();
      if (v55)
      {
        if (v54 == 0x4E796164696C6F68 && v55 == 0xEB00000000656D61)
        {
          goto LABEL_106;
        }

        v57 = sub_1DD640CD8();

        if (v57)
        {
          goto LABEL_107;
        }
      }

LABEL_104:
      result = (*v47)(v94, v93);
      ++v45;
    }
  }

  v58 = 0;
  v59 = 0;
LABEL_110:
  v64 = sub_1DD63E518();
  if (v65 && (v66 = v65, v59))
  {
    v67 = v64;
    LOBYTE(v96) = 12;
    type metadata accessor for DateTime.Date.Holiday();
    swift_allocObject();
    v68 = DateTime.Date.Holiday.init(with:name:calendarSystem:)(v58, v59, v67, v66, &v96);
  }

  else
  {

    v68 = 0;
  }

  if (sub_1DD63E528())
  {
    v69 = sub_1DD6317A0();
    OUTLINED_FUNCTION_3_104();
    if ((v59 & 1) == 0)
    {
      v96 = v69;
      sub_1DD62F1CC(&v96, &v95);
      v70 = 0;
      v69 = v95;
      goto LABEL_119;
    }
  }

  else
  {
    v69 = 0;
  }

  v70 = 1;
LABEL_119:
  if (sub_1DD63E4D8() && (v71 = sub_1DD63E8E8(), , v71))
  {
    v72 = sub_1DD6317A0();
    v74 = v73;
  }

  else
  {
    v72 = 0;
    v74 = 1;
  }

  v75 = v88;
  sub_1DD63E4F8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v75) == 1)
  {
    sub_1DD62F164(v10);
    v76 = 7;
  }

  else
  {
    v77 = v83;
    v78 = v84;
    (*(v83 + 16))(v84, v10, v75);
    v79 = (*(v77 + 88))(v78, v75);
    if (v79 == *MEMORY[0x1E69D1BA0])
    {
      v76 = 1;
    }

    else if (v79 == *MEMORY[0x1E69D1B90])
    {
      v76 = 3;
    }

    else if (v79 == *MEMORY[0x1E69D1B88])
    {
      v76 = 5;
    }

    else if (v79 == *MEMORY[0x1E69D1B98])
    {
      v76 = 0;
    }

    else if (v79 == *MEMORY[0x1E69D1B80])
    {
      v76 = 2;
    }

    else
    {
      (*(v77 + 8))(v84, v75);
      v76 = 7;
    }

    (*(v77 + 8))(v91, v75);
  }

  LOBYTE(v96) = v76;
  LOBYTE(v95) = v99;
  if (sub_1DD63E538())
  {
    sub_1DD630E00(&v98);

    v80 = v98;
  }

  else
  {
    v80 = 7;
  }

  v98 = v80;
  sub_1DD63E4C8();
  v81 = v85;

  v97 = 7;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  return DateTime.Date.init(withDay:month:year:definedValue:holiday:monthOfYear:weekOfYear:dayOfWeek:dayOfWeekOrdinal:calendarEra:occurringIn:)(v87, v86 & 1, v72, v74 & 1, v69, v70, &v96, v68, &v95, v89, v90 & 1, &v98, 0, 1, &v97, v81);
}

uint64_t sub_1DD62F164(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0028, &qword_1DD665738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DD62F1CC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 <= 0x31)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD63F9F8();
    __swift_project_value_buffer(v9, qword_1ECD0DDC0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (!os_log_type_enabled(v5, v6))
    {

      v3 += 2000;
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218240;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2048;
    v3 += 2000;
    goto LABEL_11;
  }

  if ((v3 - 100) >= 0xFFFFFFFFFFFFFFCELL)
  {
    if (qword_1ECCDB0C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    __swift_project_value_buffer(v4, qword_1ECD0DDC0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (!os_log_type_enabled(v5, v6))
    {

      v3 += 1900;
      goto LABEL_14;
    }

    v7 = swift_slowAlloc();
    v8 = v7;
    *v7 = 134218240;
    *(v7 + 4) = v3;
    *(v7 + 12) = 2048;
    v3 += 1900;
LABEL_11:
    *(v7 + 14) = v3;
    _os_log_impl(&dword_1DD38D000, v5, v6, "Mapping a 2 digit year from %ld to %ld", v8, 0x16u);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

LABEL_14:
  *a2 = v3;
}

uint64_t OUTLINED_FUNCTION_3_104()
{
}

uint64_t UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(uint64_t a1)
{
  v2 = sub_1DD62F484(a1);
  if (qword_1ECCDB0C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1DD63F9F8();
  __swift_project_value_buffer(v3, qword_1ECD0DDC0);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  Logger.asyncBackground(_:)(sub_1DD62FB10, v4);

  return v2;
}

uint64_t sub_1DD62F484(uint64_t a1)
{
  v36 = a1;
  v1 = sub_1DD63E728();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v35 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0030, &qword_1DD665740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  if (!sub_1DD63E738() || (v15 = sub_1DD63E758(), , !v15))
  {
    if (!sub_1DD63E758())
    {
      v17 = 0;
      goto LABEL_11;
    }
  }

  sub_1DD63DD48();
  sub_1DD63EB08();
  OUTLINED_FUNCTION_0_150();

  if (v37)
  {

    v16 = _s12SiriOntology32UsoEntity_common_Time12HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0();
  }

  else
  {
    sub_1DD63DD48();

    sub_1DD63EB58();
    OUTLINED_FUNCTION_0_150();

    if (!v37)
    {
      v17 = _s12SiriOntology21UsoEntity_common_TimeC0A9InferenceE02toagF0AD04DateF0C0F0CSgyF_0();
      goto LABEL_9;
    }

    v16 = _s12SiriOntology32UsoEntity_common_Time24HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0();
  }

  v17 = v16;

LABEL_9:

LABEL_11:
  if (sub_1DD63E708() && (v18 = sub_1DD63E768(), v19 = UsoEntity_common_Duration.toInterval(offsetDirection:)(v18), , , v19))
  {
    type metadata accessor for DateTime.DateTimeRange();
    swift_allocObject();
    v20 = DateTime.DateTimeRange.init(withInterval:)(v19);
  }

  else if (!sub_1DD63E738() || (v21 = sub_1DD63E6F8(), v22 = , !v21) || (v20 = UsoEntity_common_DateTimeRange.toDateTimeRange()(v22), , !v20))
  {
    v23 = sub_1DD63E6F8();
    if (v23)
    {
      v20 = UsoEntity_common_DateTimeRange.toDateTimeRange()(v23);
    }

    else
    {
      v20 = 0;
    }
  }

  if (!sub_1DD63E738() || (v24 = sub_1DD63E748(), , !v24) || (v25 = UsoEntity_common_Date.toDate()(), , !v25))
  {
    if (sub_1DD63E748())
    {
      v25 = UsoEntity_common_Date.toDate()();
    }

    else
    {
      v25 = 0;
    }
  }

  if (sub_1DD63E738())
  {
    sub_1DD63E718();

    if (__swift_getEnumTagSinglePayload(v14, 1, v1) == 1)
    {
      sub_1DD62FB18(v14);
    }

    else
    {
      (*(v2 + 16))(v7, v14, v1);
      v26 = (*(v2 + 88))(v7, v1);
      v27 = v7;
      v28 = *(v2 + 8);
      if (v26 == *MEMORY[0x1E69D1C00])
      {
        v28(v14, v1);
        v29 = 0;
        goto LABEL_37;
      }

      v28(v27, v1);
      v28(v14, v1);
    }
  }

  sub_1DD63E718();
  if (__swift_getEnumTagSinglePayload(v11, 1, v1) == 1)
  {
    sub_1DD62FB18(v11);
    v29 = 1;
  }

  else
  {
    v30 = v35;
    (*(v2 + 16))(v35, v11, v1);
    v31 = (*(v2 + 88))(v30, v1);
    v32 = *(v2 + 8);
    v29 = v31 != *MEMORY[0x1E69D1C00];
    if (v31 != *MEMORY[0x1E69D1C00])
    {
      v32(v30, v1);
    }

    v32(v11, v1);
  }

LABEL_37:
  LOBYTE(v37) = v29;
  v38 = 4;
  type metadata accessor for DateTime();
  swift_allocObject();
  v33 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v25, v17, &v37, v36, &v38, v20);

  return v33;
}

uint64_t sub_1DD62FA24()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000049, 0x80000001DD675240);
  sub_1DD63DD48();
  v0 = sub_1DD63EEC8();
  v2 = v1;

  MEMORY[0x1E12B2260](v0, v2);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD675290);
  v3 = sub_1DD48A1FC();
  MEMORY[0x1E12B2260](v3);

  return 0;
}

uint64_t sub_1DD62FB10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD62FA24();
}

uint64_t sub_1DD62FB18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0030, &qword_1DD665740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UsoEntity_common_DateTimeRange.toDateTimeRange()()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0038, &qword_1DD665748);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v37 - v5;
  if (!sub_1DD63EA58() || (sub_1DD630AF8(&v41), , v7 = v41, v41 == 20))
  {
    if (sub_1DD63E2F8())
    {
      sub_1DD6317C0(&v41);

      v7 = v41;
    }

    else
    {
      v7 = 20;
    }
  }

  if (sub_1DD63EA48() && (v8 = OUTLINED_FUNCTION_14(), v1 = UsoEntity_common_Duration.toInterval(offsetDirection:)(v8), , v1))
  {
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v11 = *(v1 + 25);

    LOBYTE(v41) = v11;
    v40 = v7;
    type metadata accessor for DateTime.Interval();
    swift_allocObject();
    v39 = DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v9, v10, &v41, &v40);
  }

  else
  {
    v39 = 0;
  }

  if (sub_1DD63EA18())
  {
    v12 = OUTLINED_FUNCTION_14();
    v13 = sub_1DD62F484(v12);
  }

  else
  {
    v13 = 0;
  }

  if (sub_1DD63EA38())
  {
    v14 = OUTLINED_FUNCTION_14();
    v15 = sub_1DD62F484(v14);
  }

  else
  {
    v15 = 0;
  }

  v38 = v7;
  if (sub_1DD63EA28())
  {
    v16 = OUTLINED_FUNCTION_14();
    v17 = sub_1DD62F484(v16);
  }

  else
  {
    v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0040, &qword_1DD665750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  if (v13)
  {
    v19 = *(v13 + 56);
  }

  else
  {
    v20 = 0;
  }

  *(inited + 32) = v20;
  if (v15)
  {
    v21 = *(v15 + 56);
  }

  else
  {
    v22 = 0;
  }

  *(inited + 40) = v22;
  if (v17)
  {
    v23 = *(v17 + 56);
  }

  else
  {
    v24 = 0;
  }

  v25 = 0;
  *(inited + 48) = v24;
  v41 = MEMORY[0x1E69E7CC0];
  while (v25 != 3)
  {
    if (v25 > 2)
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_47;
    }

    v26 = inited + 8 * v25;
    v1 = *(v26 + 32);
    ++v25;
    if (v1)
    {
      v27 = *(v26 + 32);

      MEMORY[0x1E12B23F0](v28);
      if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      sub_1DD640168();
    }
  }

  swift_setDeallocating();
  sub_1DD46CCA8();
  if (v13)
  {
    v29 = sub_1DD6304EC();
    if (v15)
    {
LABEL_37:
      v30 = sub_1DD6304EC();
      goto LABEL_40;
    }
  }

  else
  {
    v29 = 0;
    if (v15)
    {
      goto LABEL_37;
    }
  }

  v30 = 0;
LABEL_40:
  v37 = v13;
  if (v17)
  {
    v31 = sub_1DD6304EC();
  }

  else
  {
    v31 = 0;
  }

  sub_1DD63E9F8();
  v32 = sub_1DD63EA08();
  if (__swift_getEnumTagSinglePayload(v6, 1, v32) == 1)
  {
    sub_1DD6306E0(v6);
    v33 = 38;
  }

  else
  {
    sub_1DD630750(&v41);
    (*(*(v32 - 8) + 8))(v6, v32);
    v33 = v41;
  }

  LOBYTE(v41) = v33;
  v40 = v38;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(v29, v30, v31, v39, 0, &v41, &v40);

  v1 = sub_1DD63008C();

  if (qword_1ECCDB0C0 != -1)
  {
    goto LABEL_49;
  }

LABEL_47:
  v34 = sub_1DD63F9F8();
  __swift_project_value_buffer(v34, qword_1ECD0DDC0);
  v35 = swift_allocObject();
  *(v35 + 16) = v2;
  *(v35 + 24) = v1;

  Logger.asyncBackground(_:)(sub_1DD630748, v35);

  return v1;
}

uint64_t sub_1DD63008C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643B80;
  *(inited + 32) = v0;
  v35 = inited;

  sub_1DD607EEC(v2);
  v3 = v35;
  result = sub_1DD3CC020(v35);
  v5 = result;
  v6 = 0;
  v7 = v35 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if (v7)
    {
      result = MEMORY[0x1E12B2C10](v6, v35);
      v8 = result;
    }

    else
    {
      if (v6 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

      v8 = *(v35 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return result;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

    ++v6;
  }

  v10 = *(v8 + 16);

LABEL_12:
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      v13 = 0;
      goto LABEL_23;
    }

    if (v7)
    {
      result = MEMORY[0x1E12B2C10](i, v35);
      v12 = result;
    }

    else
    {
      if (i >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v12 = *(v35 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_80;
    }

    v13 = *(v12 + 24);
    if (v13)
    {
      break;
    }
  }

  v14 = *(v12 + 24);

LABEL_23:
  for (j = 0; ; ++j)
  {
    if (v5 == j)
    {
      v17 = 0;
      goto LABEL_34;
    }

    if (v7)
    {
      result = MEMORY[0x1E12B2C10](j, v35);
      v16 = result;
    }

    else
    {
      if (j >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v16 = *(v35 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      goto LABEL_82;
    }

    v17 = *(v16 + 32);
    if (v17)
    {
      break;
    }
  }

  v18 = *(v16 + 32);

LABEL_34:
  v19 = 0;
  v33 = v9;
  while (1)
  {
    if (v5 == v19)
    {
      v21 = 0;
      goto LABEL_45;
    }

    if (v7)
    {
      result = MEMORY[0x1E12B2C10](v19, v35);
      v20 = result;
    }

    else
    {
      if (v19 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v20 = *(v35 + 8 * v19 + 32);
    }

    if (__OFADD__(v19, 1))
    {
      goto LABEL_84;
    }

    v21 = *(v20 + 40);
    if (v21)
    {
      break;
    }

    ++v19;
  }

  v22 = *(v20 + 40);

LABEL_45:
  for (k = 0; ; ++k)
  {
    if (v5 == k)
    {
      v25 = 0;
      goto LABEL_56;
    }

    if (v7)
    {
      result = MEMORY[0x1E12B2C10](k, v35);
      v24 = result;
    }

    else
    {
      if (k >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v24 = *(v35 + 8 * k + 32);
    }

    if (__OFADD__(k, 1))
    {
      goto LABEL_86;
    }

    v25 = *(v24 + 48);
    if (v25)
    {
      break;
    }
  }

  v26 = *(v24 + 48);

LABEL_56:
  v27 = 0;
  while (v5 != v27)
  {
    if (v7)
    {
      result = MEMORY[0x1E12B2C10](v27, v35);
    }

    else
    {
      if (v27 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v28 = *(v35 + 8 * v27 + 32);
    }

    if (__OFADD__(v27, 1))
    {
      goto LABEL_88;
    }

    v29 = *(result + 56);

    ++v27;
    if (v29 != 38)
    {
      goto LABEL_66;
    }
  }

  LOBYTE(v29) = 38;
LABEL_66:
  v30 = 0;
  LOBYTE(v35) = v29;
  while (1)
  {
    if (v5 == v30)
    {

      v32 = 20;
      goto LABEL_77;
    }

    if (v7)
    {
      result = MEMORY[0x1E12B2C10](v30, v3);
      v31 = result;
    }

    else
    {
      if (v30 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_91;
      }

      v31 = *(v3 + 8 * v30 + 32);
    }

    if (__OFADD__(v30, 1))
    {
      goto LABEL_90;
    }

    if (*(v31 + 57) != 20)
    {
      break;
    }

    ++v30;
  }

  v32 = *(v31 + 57);

LABEL_77:
  v34 = v32;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  return DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(v33, v13, v17, v21, v25, &v35, &v34);
}

uint64_t sub_1DD6304EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v7 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  type metadata accessor for DateTime();
  swift_allocObject();
  v4 = DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(v1, v2, &v7, v3, &v6, 0);

  return v4;
}

uint64_t sub_1DD630584()
{
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD00000000000004ELL, 0x80000001DD6752B0);
  sub_1DD63DD48();
  v0 = sub_1DD63EEC8();
  v2 = v1;

  MEMORY[0x1E12B2260](v0, v2);

  MEMORY[0x1E12B2260](0xD000000000000016, 0x80000001DD675290);
  v3 = sub_1DD49D2E4();
  MEMORY[0x1E12B2260](v3);

  return 0;
}

uint64_t UsoEntity_common_DateTimeRange.toDateTime()()
{
  v3 = 1;
  v2 = 4;
  v0 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  type metadata accessor for DateTime();
  swift_allocObject();
  return DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(0, 0, &v3, 0, &v2, v0);
}

uint64_t sub_1DD6306E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0038, &qword_1DD665748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD630748()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DD630584();
}

uint64_t sub_1DD630750@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63EA08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69D1F18])
  {
    v11 = 10;
LABEL_5:
    *a1 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E69D1F68])
  {
    v11 = 18;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F08])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1F60])
  {
    v11 = 17;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F58])
  {
    v11 = 1;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FA0])
  {
    v11 = 21;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FC0])
  {
    v11 = 6;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F50])
  {
    v11 = 16;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FB0])
  {
    v11 = 14;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F80])
  {
    v11 = 12;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F70])
  {
    v11 = 20;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F48])
  {
    v11 = 7;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F98])
  {
    v11 = 13;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F90])
  {
    v11 = 19;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F20])
  {
    v11 = 11;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F28])
  {
    v11 = 9;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FB8])
  {
    v11 = 3;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F88])
  {
    v11 = 15;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F10])
  {
    v11 = 8;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F40])
  {
    v11 = 4;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1FA8])
  {
    v11 = 2;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F38])
  {
    v11 = 38;
    goto LABEL_5;
  }

  if (result == *MEMORY[0x1E69D1F78])
  {
    v11 = 5;
    goto LABEL_5;
  }

  v12 = *MEMORY[0x1E69D1F30];
  *a1 = 38;
  if (result != v12)
  {
    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_1DD630AF8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0048, &qword_1DD665758);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DD63ED98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1DD63ED88();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1DD630D98(v5);
LABEL_3:
    v15 = 20;
    goto LABEL_14;
  }

  v16 = *(v7 + 32);
  v16(v13, v5, v6);
  v16(v10, v13, v6);
  result = (*(v7 + 88))(v10, v6);
  if (result == *MEMORY[0x1E69D2268])
  {
    v15 = 6;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2270])
  {
    v15 = 7;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2248])
  {
    v15 = 1;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2258])
  {
    v15 = 3;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2240])
  {
    v15 = 4;
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E69D2260])
  {
    goto LABEL_3;
  }

  if (result == *MEMORY[0x1E69D2250])
  {
    *a1 = 0;
    return result;
  }

  if (result != *MEMORY[0x1E69D2278])
  {
    *a1 = 20;
    return (*(v7 + 8))(v10, v6);
  }

  v15 = 5;
LABEL_14:
  *a1 = v15;
  return result;
}

uint64_t sub_1DD630D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0048, &qword_1DD665758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD630E00@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0050, &qword_1DD665760);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DD63E7F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1DD63E7E8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1DD6310E8(v5);
    v15 = 7;
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v16(v10, v13, v6);
    result = (*(v7 + 88))(v10, v6);
    if (result == *MEMORY[0x1E69D1CC0])
    {
      v15 = 3;
    }

    else if (result == *MEMORY[0x1E69D1C90])
    {
      v15 = 2;
    }

    else if (result == *MEMORY[0x1E69D1CB8])
    {
      v15 = 5;
    }

    else if (result == *MEMORY[0x1E69D1C98])
    {
      v15 = 4;
    }

    else
    {
      if (result == *MEMORY[0x1E69D1CA0])
      {
        *a1 = 0;
        return result;
      }

      if (result == *MEMORY[0x1E69D1CB0])
      {
        v15 = 1;
      }

      else
      {
        if (result != *MEMORY[0x1E69D1CA8])
        {
          *a1 = 7;
          return (*(v7 + 8))(v10, v6);
        }

        v15 = 6;
      }
    }
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1DD63108C@<X0>(char *a1@<X8>)
{
  result = sub_1DD63E2F8();
  if (result)
  {
    sub_1DD6317C0(a1);
  }

  else
  {
    *a1 = 20;
  }

  return result;
}

uint64_t sub_1DD6310E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0050, &qword_1DD665760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UsoEntity_common_Duration.toInterval(offsetDirection:)(uint64_t a1)
{
  result = sub_1DD63E778();
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (sub_1DD3CC020(result) != 1)
  {
    v27 = a1;
    v10 = sub_1DD3CC020(v3);
    v11 = 0;
    a1 = v3 & 0xFFFFFFFFFFFFFF8;
    v12 = 0.0;
    while (1)
    {
      if (v10 == v11)
      {

        v29[0] = 10;
        if (!v27 || (sub_1DD6322F4(&v30), v25 = v30, v30 == 20))
        {
          if (sub_1DD63E788())
          {
            sub_1DD63208C(&v30);

            v25 = v30;
          }

          else
          {
            v25 = 20;
          }
        }

        v26 = *&v12;
        v28 = v25;
        goto LABEL_44;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12B2C10](v11, v3);
      }

      else
      {
        if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }

        v13 = *(v3 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = sub_1DD6314B4();
      if (v15)
      {

LABEL_35:

        return 0;
      }

      v16 = *&v14;
      sub_1DD63E1C8();
      if (*v29 && (v17 = sub_1DD63EBE8(), , v17))
      {
        sub_1DD636738(&v30);

        v18 = v30;
      }

      else
      {
        v18 = 13;
      }

      v29[0] = v18;
      if (sub_1DD63E788())
      {
        sub_1DD63208C(&v30);

        v19 = v30;
      }

      else
      {
        v19 = 20;
      }

      v30 = v19;
      sub_1DD631594(v29, &v30, v16);
      v21 = v20;
      v23 = v22;

      if (v23)
      {
        goto LABEL_35;
      }

      v12 = v12 + v21;
      ++v11;
    }

    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_1DD408BFC(0);
  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_48:
    MEMORY[0x1E12B2C10](0, v3);
    goto LABEL_5;
  }

  v4 = *(v3 + 32);

LABEL_5:

  v5 = sub_1DD6314B4();
  v7 = v6;
  sub_1DD63E1C8();
  if (*v29 && (v8 = sub_1DD63EBE8(), , v8))
  {
    sub_1DD636738(&v30);

    v9 = v30;
  }

  else
  {
    v9 = 13;
  }

  v29[0] = v9;
  if (a1 && (sub_1DD6322F4(&v30), v24 = v30, v30 != 20))
  {
  }

  else if (sub_1DD63E788())
  {
    sub_1DD63208C(&v30);

    v24 = v30;
  }

  else
  {

    v24 = 20;
  }

  if (v7)
  {
    v26 = 0x3FF0000000000000;
  }

  else
  {
    v26 = v5;
  }

  v28 = v24;
LABEL_44:
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  return DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v26, 0, v29, &v28);
}

uint64_t sub_1DD6314B4()
{
  sub_1DD63E1C8();
  if (!v5)
  {
    goto LABEL_5;
  }

  v0 = sub_1DD63EBF8();

  if (!v0)
  {
    goto LABEL_5;
  }

  sub_1DD63DD48();

  sub_1DD63E6D8();
  sub_1DD63E7D8();

  v1 = sub_1DD63E6C8();
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    *&result = v1;
  }

  else
  {
LABEL_5:
    *&result = 0.0;
  }

  return result;
}

double sub_1DD631594(_BYTE *a1, _BYTE *a2, double a3)
{
  if (*a1 == 13)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v3 = sub_1DD63F9F8();
    __swift_project_value_buffer(v3, qword_1EE16F0C8);
    v4 = sub_1DD63F9D8();
    v5 = sub_1DD640368();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      v7 = "timeUnit is not present, not normalizing and returning nil";
LABEL_6:
      _os_log_impl(&dword_1DD38D000, v4, v5, v7, v6, 2u);
      MEMORY[0x1E12B3DA0](v6, -1, -1);
    }

LABEL_7:
  }

  else
  {
    v9 = 1.0;
    if (*a2 == 9)
    {
      v9 = -1.0;
    }

    switch(*a1)
    {
      case 4:
        a3 = a3 * 60.0;
        goto LABEL_12;
      case 5:
        v10 = a3 / 1000.0;
        goto LABEL_14;
      case 6:
LABEL_12:
        v10 = a3 * 60.0;
LABEL_14:
        result = v10 * v9;
        break;
      case 0xA:
        result = v9 * a3;
        break;
      default:
        if (qword_1EE166510 != -1)
        {
          swift_once();
        }

        v11 = sub_1DD63F9F8();
        __swift_project_value_buffer(v11, qword_1EE16F0C8);
        v4 = sub_1DD63F9D8();
        v5 = sub_1DD640368();
        if (!os_log_type_enabled(v4, v5))
        {
          goto LABEL_7;
        }

        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = "normalization only supported for grains time less than or equal to 'hour'";
        goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_1DD6317A0()
{
  result = sub_1DD63E6C8();
  if (v1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1DD6317C0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0058, &qword_1DD665768);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  sub_1DD63E928();
  v9 = sub_1DD63E938();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_1DD631A28(v8, v5);
    v11 = *(v9 - 8);
    v12 = (*(v11 + 88))(v5, v9);
    if (v12 == *MEMORY[0x1E69D1DE0])
    {
      v10 = 2;
      goto LABEL_17;
    }

    if (v12 == *MEMORY[0x1E69D1E60] || v12 == *MEMORY[0x1E69D1E68])
    {
      v10 = 3;
      goto LABEL_17;
    }

    if (v12 == *MEMORY[0x1E69D1EE0])
    {
      v10 = 19;
      goto LABEL_17;
    }

    if (v12 == *MEMORY[0x1E69D1EC0])
    {
      v10 = 16;
      goto LABEL_17;
    }

    if (v12 == *MEMORY[0x1E69D1E70])
    {
      v10 = 17;
      goto LABEL_17;
    }

    (*(v11 + 8))(v5, v9);
  }

  v10 = 20;
LABEL_17:
  *a1 = v10;
  return sub_1DD6319C0(v8);
}

uint64_t sub_1DD6319C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0058, &qword_1DD665768);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD631A28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0058, &qword_1DD665768);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD631A98@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0060, &qword_1DD665770);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1DD63E798();
  v9 = sub_1DD63E7A8();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
  {
    sub_1DD631C9C(v8, v5);
    v11 = *(v9 - 8);
    v12 = (*(v11 + 88))(v5, v9);
    if (v12 == *MEMORY[0x1E69D1C20])
    {
      v10 = 1;
      goto LABEL_7;
    }

    if (v12 == *MEMORY[0x1E69D1C18])
    {
      v10 = 0;
      goto LABEL_7;
    }

    (*(v11 + 8))(v5, v9);
  }

  v10 = 2;
LABEL_7:
  *a1 = v10;
  return sub_1DD631C34(v8);
}

uint64_t sub_1DD631C34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0060, &qword_1DD665770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD631C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0060, &qword_1DD665770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD631D0C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0068, &qword_1DD665778);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DD63E8F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1DD63E8D8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1DD632024(v5);
    v15 = 12;
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v16(v10, v13, v6);
    result = (*(v7 + 88))(v10, v6);
    if (result == *MEMORY[0x1E69D1D80])
    {
      v15 = 3;
    }

    else if (result == *MEMORY[0x1E69D1DA8])
    {
      v15 = 11;
    }

    else
    {
      if (result == *MEMORY[0x1E69D1D98])
      {
        *a1 = 0;
        return result;
      }

      if (result == *MEMORY[0x1E69D1DB8])
      {
        v15 = 10;
      }

      else if (result == *MEMORY[0x1E69D1D78])
      {
        v15 = 5;
      }

      else if (result == *MEMORY[0x1E69D1DB0])
      {
        v15 = 1;
      }

      else if (result == *MEMORY[0x1E69D1D60])
      {
        v15 = 8;
      }

      else if (result == *MEMORY[0x1E69D1D88])
      {
        v15 = 2;
      }

      else if (result == *MEMORY[0x1E69D1D70])
      {
        v15 = 6;
      }

      else if (result == *MEMORY[0x1E69D1D68])
      {
        v15 = 4;
      }

      else if (result == *MEMORY[0x1E69D1D90])
      {
        v15 = 7;
      }

      else
      {
        if (result != *MEMORY[0x1E69D1DA0])
        {
          *a1 = 12;
          return (*(v7 + 8))(v10, v6);
        }

        v15 = 9;
      }
    }
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1DD632024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0068, &qword_1DD665778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD63208C@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0070, &qword_1DD665780);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DD63E818();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1DD63E808();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1DD63228C(v5);
    v15 = 20;
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v16(v10, v13, v6);
    result = (*(v7 + 88))(v10, v6);
    if (result == *MEMORY[0x1E69D1CF0])
    {
      v15 = 9;
    }

    else
    {
      if (result != *MEMORY[0x1E69D1CF8])
      {
        *a1 = 20;
        return (*(v7 + 8))(v10, v6);
      }

      v15 = 8;
    }
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1DD63228C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0070, &qword_1DD665780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD6322F4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0078, &qword_1DD665788);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DD63EAA8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1DD63EA98();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1DD6324F4(v5);
    v15 = 20;
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v16(v10, v13, v6);
    result = (*(v7 + 88))(v10, v6);
    if (result == *MEMORY[0x1E69D2138])
    {
      v15 = 8;
    }

    else
    {
      if (result != *MEMORY[0x1E69D2140])
      {
        *a1 = 20;
        return (*(v7 + 8))(v10, v6);
      }

      v15 = 9;
    }
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1DD6324F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0078, &qword_1DD665788);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD63255C(uint64_t a1, char a2)
{
  v4 = sub_1DD63FE28();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_117();
  v19 = a2;
  v8 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v8);
  v9 = sub_1DD63C7C8();
  sub_1DD45A898();
  sub_1DD63C7B8();
  OUTLINED_FUNCTION_7_75();

  if (!v9)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v10)
    {
      OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53();
      OUTLINED_FUNCTION_3_105();
      v14 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], a1, v19);
      OUTLINED_FUNCTION_9_66(v14);
      OUTLINED_FUNCTION_0_151();
      sub_1DD6350D0(v15, v16);
      v17 = OUTLINED_FUNCTION_8_77();
      OUTLINED_FUNCTION_12_51(v17, v18);
    }

    v11 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v11, v12);
  }

  return OUTLINED_FUNCTION_5_91();
}

uint64_t sub_1DD63270C()
{
  v1 = sub_1DD63FE28();
  v2 = OUTLINED_FUNCTION_3(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_117();
  v17 = v0;
  v5 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v5);
  sub_1DD63C7C8();
  v6 = sub_1DD63E6B8();
  sub_1DD6350D0(&qword_1EE163788, MEMORY[0x1E69D1BF8]);
  OUTLINED_FUNCTION_18_42();
  OUTLINED_FUNCTION_7_75();

  if (!v6)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v7)
    {
      OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53();
      OUTLINED_FUNCTION_3_105();
      v11 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v16, v17);
      OUTLINED_FUNCTION_9_66(v11);
      OUTLINED_FUNCTION_0_151();
      sub_1DD6350D0(v12, v13);
      v14 = OUTLINED_FUNCTION_8_77();
      OUTLINED_FUNCTION_12_51(v14, v15);
    }

    v8 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v8, v9);
  }

  return OUTLINED_FUNCTION_5_91();
}

uint64_t sub_1DD6328C8(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v7 = sub_1DD63FE28();
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_117();
  v11 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v11);
  v12 = sub_1DD63C7C8();
  a1(0);
  sub_1DD6350D0(a2, a3);
  sub_1DD63C7B8();
  OUTLINED_FUNCTION_7_75();

  if (!v12)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    v13 = sub_1DD63FDF8();
    if (v14)
    {
      v3 = v13;
    }

    else
    {
      OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53();
      OUTLINED_FUNCTION_3_105();
      v18 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v23, v24);
      OUTLINED_FUNCTION_9_66(v18);
      OUTLINED_FUNCTION_0_151();
      sub_1DD6350D0(v19, v20);
      v21 = OUTLINED_FUNCTION_8_77();
      OUTLINED_FUNCTION_12_51(v21, v22);
    }

    v15 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v15, v16);
  }

  return v3;
}

uint64_t sub_1DD632A44(char a1)
{
  v2 = sub_1DD63FE28();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_117();
  v18 = a1;
  v6 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v6);
  sub_1DD63C7C8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00A0, &qword_1DD6657B0);
  sub_1DD63501C();
  OUTLINED_FUNCTION_18_42();
  OUTLINED_FUNCTION_7_75();

  if (!v7)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v8)
    {
      OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53();
      OUTLINED_FUNCTION_3_105();
      v12 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v17, v18);
      OUTLINED_FUNCTION_9_66(v12);
      OUTLINED_FUNCTION_0_151();
      sub_1DD6350D0(v13, v14);
      v15 = OUTLINED_FUNCTION_8_77();
      OUTLINED_FUNCTION_12_51(v15, v16);
    }

    v9 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v9, v10);
  }

  return OUTLINED_FUNCTION_5_91();
}

uint64_t sub_1DD632BE0(char a1)
{
  v2 = sub_1DD63FE28();
  v3 = OUTLINED_FUNCTION_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_117();
  v18 = a1;
  v6 = sub_1DD63C7D8();
  OUTLINED_FUNCTION_20_36(v6);
  v7 = sub_1DD63C7C8();
  sub_1DD635118();
  sub_1DD63C7B8();
  OUTLINED_FUNCTION_7_75();

  if (!v7)
  {
    sub_1DD63FE18();
    OUTLINED_FUNCTION_15();
    sub_1DD63FDF8();
    if (!v8)
    {
      OUTLINED_FUNCTION_21_37();
      OUTLINED_FUNCTION_13_53();
      OUTLINED_FUNCTION_3_105();
      v12 = OUTLINED_FUNCTION_1_136(MEMORY[0x1E69E7CC0], v17, v18);
      OUTLINED_FUNCTION_9_66(v12);
      OUTLINED_FUNCTION_0_151();
      sub_1DD6350D0(v13, v14);
      v15 = OUTLINED_FUNCTION_8_77();
      OUTLINED_FUNCTION_12_51(v15, v16);
    }

    v9 = OUTLINED_FUNCTION_15();
    sub_1DD3AD790(v9, v10);
  }

  return OUTLINED_FUNCTION_5_91();
}

_BYTE *sub_1DD632D88()
{
  v2 = sub_1DD63FE28();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(v19, v0, sizeof(v19));
  v6 = sub_1DD63C7D8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_1DD63C7C8();
  sub_1DD4236C0();
  v9 = sub_1DD63C7B8();
  v11 = v10;

  if (!v1)
  {
    sub_1DD63FE18();
    v12 = sub_1DD63FDF8();
    if (v13)
    {
      v5 = v12;
    }

    else
    {
      v5 = type metadata accessor for InferenceError();
      swift_allocObject();
      v15 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000077, 0x80000001DD675300, 0x697274536E6F736ALL, 0xEC0000002928676ELL, 14, MEMORY[0x1E69E7CC0], 2);
      v16 = *(v15 + 32);
      *(v15 + 24) = 0;
      *(v15 + 32) = 0xE000000000000000;

      sub_1DD6350D0(&qword_1EE1663F0, type metadata accessor for InferenceError);
      swift_allocError();
      *v17 = v15;
      swift_willThrow();
    }

    sub_1DD3AD790(v9, v11);
  }

  return v5;
}

uint64_t UsoEntity_common_Person.toContactQuery()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = *v1;
  v4 = sub_1DD63E658();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v95 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0080, &qword_1DD665790);
  v11 = OUTLINED_FUNCTION_7(v96);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v93 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0088, &qword_1DD665798);
  v16 = OUTLINED_FUNCTION_3(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v97 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v93 - v24;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  v27 = __swift_project_value_buffer(v26, qword_1EE16F068);

  v101 = v27;
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();

  v30 = os_log_type_enabled(v28, v29);
  v102 = v23;
  v99 = v7;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v94 = v25;
    v33 = v32;
    v107[0] = v32;
    *v31 = 136315138;
    v34 = sub_1DD634088();
    v36 = sub_1DD39565C(v34, v35, v107);

    *(v31 + 4) = v36;
    _os_log_impl(&dword_1DD38D000, v28, v29, "[USO Extension] Converting UsoEntity_common_Person to ContactQuery: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v25 = v94;
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v37 = 0xE000000000000000;
  v106[0] = 0;
  v106[1] = 0xE000000000000000;
  LOBYTE(v106[2]) = 0;
  v106[5] = 0;
  v106[6] = 0xE000000000000000;
  v106[7] = 0;
  v106[8] = 0xE000000000000000;
  v106[9] = 0;
  v106[10] = 0xE000000000000000;
  v106[11] = 0;
  v106[12] = 0xE000000000000000;
  v106[13] = 0;
  v106[14] = 0xE000000000000000;
  v106[15] = 0;
  v106[16] = 0xE000000000000000;
  v106[17] = 0;
  v106[18] = 0xE000000000000000;
  memset(&v106[21], 0, 72);
  v106[30] = MEMORY[0x1E69E7CC0];
  sub_1DD63E6A8();
  OUTLINED_FUNCTION_5_5();
  if (v78)
  {
    v40 = 0xE000000000000000;
  }

  else
  {
    v40 = v38;
  }

  v106[3] = v39;
  v106[4] = v40;
  v41 = sub_1DD63E678();
  v42 = v100;
  if (v41)
  {
    v43 = sub_1DD63E948();
    v45 = v44;

    if (v45)
    {
      v46 = v43;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v37 = v45;
    }
  }

  else
  {
    v46 = 0;
  }

  v106[19] = v46;
  v106[20] = v37;
  LOBYTE(v106[31]) = 3;
  if (sub_1DD63E668())
  {
    sub_1DD63E868();
    OUTLINED_FUNCTION_5_5();
    if (v78)
    {
      v49 = 0xE000000000000000;
    }

    else
    {
      v49 = v47;
    }

    v106[5] = v48;
    v106[6] = v49;
    sub_1DD63E838();
    OUTLINED_FUNCTION_5_5();
    if (v78)
    {
      v52 = 0xE000000000000000;
    }

    else
    {
      v52 = v50;
    }

    v106[7] = v51;
    v106[8] = v52;
    sub_1DD63E858();
    OUTLINED_FUNCTION_5_5();
    if (v78)
    {
      v55 = 0xE000000000000000;
    }

    else
    {
      v55 = v53;
    }

    v106[9] = v54;
    v106[10] = v55;
    sub_1DD63E848();
    OUTLINED_FUNCTION_5_5();
    if (v78)
    {
      v58 = 0xE000000000000000;
    }

    else
    {
      v58 = v56;
    }

    v106[11] = v57;
    v106[12] = v58;
    sub_1DD63E878();
    OUTLINED_FUNCTION_5_5();
    if (v78)
    {
      v61 = 0xE000000000000000;
    }

    else
    {
      v61 = v59;
    }

    v106[15] = v60;
    v106[16] = v61;
    v62 = sub_1DD63E828();
    v64 = v63;

    if (v64)
    {
      v65 = v62;
    }

    else
    {
      v65 = 0;
    }

    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = 0xE000000000000000;
    }

    v106[17] = v65;
    v106[18] = v66;
  }

  if (sub_1DD63E688())
  {
    v67 = sub_1DD63ECC8();
    v69 = v68;
    if (v68)
    {
      v70 = v67;
    }

    else
    {
      v70 = 0;
    }

    if (sub_1DD63ECB8())
    {
      UsoEntity_common_Person.toContactQuery()(v105);

      nullsub_1(v105);
      memcpy(v107, v105, 0x108uLL);
    }

    else
    {

      sub_1DD447694(v107);
    }

    memcpy(v105, v107, sizeof(v105));
    if (sub_1DD3C94D4(v105) == 1)
    {
      v71 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC760, &qword_1DD648250);
      v71 = swift_allocObject();
      memcpy((v71 + 16), v107, 0x108uLL);
    }

    if (!v69)
    {
      v69 = 0xE000000000000000;
    }

    sub_1DD4178B4(v106[21], v106[22], v106[23]);
    v106[21] = v71;
    v106[22] = v70;
    v106[23] = v69;
  }

  v72 = sub_1DD63E698();
  v73 = v99;
  if (v72)
  {
    if (sub_1DD63396C())
    {
    }

    else
    {
      sub_1DD6339D4(v107);

      v74 = LOBYTE(v107[0]);
      v93 = *&v107[3];
      v94 = *&v107[1];
      v75 = v107[5];
      sub_1DD3FAA54(v106[24], v106[25], v106[26]);
      *&v106[25] = v94;
      *&v106[27] = v93;
      v106[24] = v74;
      v106[29] = v75;
    }
  }

  sub_1DD63E648();
  v76 = v102;
  (*(v73 + 104))(v102, *MEMORY[0x1E69D1BE0], v4);
  __swift_storeEnumTagSinglePayload(v76, 0, 1, v4);
  v77 = *(v96 + 48);
  sub_1DD3DD9B4(v25, v42, &qword_1ECCE0088, &qword_1DD665798);
  sub_1DD3DD9B4(v76, v42 + v77, &qword_1ECCE0088, &qword_1DD665798);
  OUTLINED_FUNCTION_11_5(v42);
  if (v78)
  {
    OUTLINED_FUNCTION_28_14(v76);
    OUTLINED_FUNCTION_28_14(v25);
    OUTLINED_FUNCTION_11_5(v42 + v77);
    if (v78)
    {
      sub_1DD390754(v42, &qword_1ECCE0088, &qword_1DD665798);
LABEL_66:
      LOBYTE(v106[2]) = 1;
      goto LABEL_67;
    }

LABEL_64:
    sub_1DD390754(v42, &qword_1ECCE0080, &qword_1DD665790);
    goto LABEL_67;
  }

  sub_1DD3DD9B4(v42, v97, &qword_1ECCE0088, &qword_1DD665798);
  OUTLINED_FUNCTION_11_5(v42 + v77);
  if (v78)
  {
    OUTLINED_FUNCTION_28_14(v102);
    OUTLINED_FUNCTION_28_14(v25);
    (*(v73 + 8))(v97, v4);
    goto LABEL_64;
  }

  v79 = v95;
  (*(v73 + 32))(v95, v42 + v77, v4);
  sub_1DD6350D0(&qword_1ECCE0090, MEMORY[0x1E69D1BE8]);
  v80 = v97;
  LODWORD(v96) = sub_1DD63FD98();
  v81 = *(v73 + 8);
  v81(v79, v4);
  sub_1DD390754(v102, &qword_1ECCE0088, &qword_1DD665798);
  sub_1DD390754(v25, &qword_1ECCE0088, &qword_1DD665798);
  v81(v80, v4);
  sub_1DD390754(v42, &qword_1ECCE0088, &qword_1DD665798);
  if (v96)
  {
    goto LABEL_66;
  }

LABEL_67:
  v106[32] = v2;

  v82 = sub_1DD63E318();
  if (v82)
  {
    sub_1DD633F10(v82);
    v84 = v83;

    v106[30] = v84;
  }

  memcpy(v107, v106, 0x108uLL);
  sub_1DD3C9478(v107, v105);
  v85 = sub_1DD63F9D8();
  v86 = sub_1DD640368();
  sub_1DD3C9580(v107);
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    v105[0] = v88;
    *v87 = 136315138;
    v89 = sub_1DD632D88();
    v91 = sub_1DD39565C(v89, v90, v105);

    *(v87 + 4) = v91;
    _os_log_impl(&dword_1DD38D000, v85, v86, "[USO Extension] Converted UsoEntity_common_person to ContactQuery %s", v87, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v88);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  swift_beginAccess();
  memcpy(v104, v106, sizeof(v104));
  memcpy(v98, v106, 0x108uLL);
  memcpy(v105, v106, sizeof(v105));
  sub_1DD3C9478(v104, &v103);
  return sub_1DD3C9580(v105);
}

BOOL sub_1DD63396C()
{
  sub_1DD63DD48();
  sub_1DD63EA68();
  sub_1DD63E7D8();

  if (v1)
  {
  }

  return v1 != 0;
}

uint64_t sub_1DD6339D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD63DEA8();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DD63EA88();
  v12 = 0xE000000000000000;
  if (!v11)
  {
    goto LABEL_7;
  }

  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_7:
    v14 = 0;
    v16 = 0xE000000000000000;
    goto LABEL_8;
  }

  v14 = sub_1DD40B5BC();
  v16 = v15;

LABEL_8:
  sub_1DD6340F8(v77);
  LODWORD(v17) = v77[0];
  sub_1DD63EA78();
  OUTLINED_FUNCTION_5_5();
  v73 = v19;
  if (!v28)
  {
    v12 = v18;
  }

  result = sub_1DD63E318();
  if (!result)
  {
    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_58;
  }

  v68 = v17;
  v69 = v16;
  v70 = v14;
  v71 = a1;
  v78 = MEMORY[0x1E69E7CD0];
  v79 = MEMORY[0x1E69E7CD0];
  v21 = *(result + 16);
  if (!v21)
  {

    v55 = MEMORY[0x1E69E7CD0];
    goto LABEL_50;
  }

  v72 = v12;
  OUTLINED_FUNCTION_4_97();
  OUTLINED_FUNCTION_16_56();
  v22 = *(v5 + 16);
  v23 = *(v5 + 80);
  v67 = v24;
  v25 = v24 + ((v23 + 32) & ~v23);
  v75 = *(v5 + 72);
  v76 = v22;
  v74 = v5 + 16;
  do
  {
    v76(v9, v25, v2);
    v26 = sub_1DD63DE98();
    if (!v27)
    {
      goto LABEL_23;
    }

    v28 = v26 == v14 && v27 == 0xEB00000000657079;
    if (v28)
    {
    }

    else
    {
      v29 = sub_1DD640CD8();

      if ((v29 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v30 = sub_1DD63DE88();
    v32 = v31;
    OUTLINED_FUNCTION_24_26();
    if (sub_1DD640018())
    {
      OUTLINED_FUNCTION_24_26();
      v33 = sub_1DD63FF08();
      v34 = sub_1DD6341B0(v33);
      MEMORY[0x1E12B2190](v34);
      OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_10_57();

      v35 = OUTLINED_FUNCTION_22_33();
      sub_1DD56ECB8(v35, 2);
LABEL_23:
      v36 = OUTLINED_FUNCTION_11_56();
      v37(v36);
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_24_26();
    if (sub_1DD640018())
    {
      OUTLINED_FUNCTION_24_26();
      v38 = sub_1DD63FF08();
      v39 = sub_1DD6341B0(v38);
      MEMORY[0x1E12B2190](v39);
      OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_10_57();

      v40 = OUTLINED_FUNCTION_22_33();
      sub_1DD56ECB8(v40, 1);
      v41 = OUTLINED_FUNCTION_11_56();
      v42(v41);
LABEL_30:
      OUTLINED_FUNCTION_16_56();
      goto LABEL_24;
    }

    v14 = 0x7373657264646120;
    if (sub_1DD640018())
    {
      v43 = sub_1DD63FF08();
      v44 = sub_1DD6341B0(v43);
      MEMORY[0x1E12B2190](v44);
      OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_10_57();

      v45 = OUTLINED_FUNCTION_11_56();
      v46(v45);
      OUTLINED_FUNCTION_4_97();
      goto LABEL_30;
    }

    if (v30 == 0x656E6F6870 && v32 == 0xE500000000000000)
    {

      OUTLINED_FUNCTION_4_97();
    }

    else
    {
      OUTLINED_FUNCTION_25_26();
      OUTLINED_FUNCTION_4_97();
      if ((v48 & 1) == 0)
      {
        if (v30 == 0x6C69616D65 && v32 == 0xE500000000000000)
        {
        }

        else
        {
          v54 = OUTLINED_FUNCTION_25_26();

          if ((v54 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        v49 = OUTLINED_FUNCTION_22_33();
        v50 = 1;
        goto LABEL_39;
      }
    }

    OUTLINED_FUNCTION_16_56();

    v49 = OUTLINED_FUNCTION_22_33();
    v50 = 2;
LABEL_39:
    sub_1DD56ECB8(v49, v50);
    v51 = OUTLINED_FUNCTION_11_56();
    v52(v51);
    v72 = 0xE000000000000000;
    v73 = 0;
LABEL_24:
    v25 += v75;
    --v21;
  }

  while (v21);

  v55 = v78;
  v12 = v72;
LABEL_50:
  sub_1DD581CB8(0, 0xE000000000000000);

  v56 = sub_1DD594058(v79);
  v57 = sub_1DD55B198(v55);
  v59 = v58;
  v61 = v60;
  result = sub_1DD55ADE0(v55);
  if (v61 & 1) != 0 || (v63)
  {
    goto LABEL_60;
  }

  v14 = v70;
  a1 = v71;
  v16 = v69;
  if (v59 != v62)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (v57 == result)
  {

    LOBYTE(v17) = v68;
  }

  else
  {
    sub_1DD55B050(v57, v59, v55, v77);
    v64 = v12;
    v65 = v77[0];
    v17 = *(v55 + 16);

    v28 = v17 == 1;
    LOBYTE(v17) = v68;
    if (v28)
    {
      LOBYTE(v17) = v65;
    }

    v12 = v64;
  }

LABEL_58:
  v66 = v73;
  *a1 = v17;
  *(a1 + 8) = v66;
  *(a1 + 16) = v12;
  *(a1 + 24) = v56;
  *(a1 + 32) = v14;
  *(a1 + 40) = v16;
  return result;
}

void sub_1DD633F10(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v5 = *(sub_1DD63DEA8() - 8);
    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_13;
    }

    sub_1DD634270(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2, &v18);
    v7 = v19;
    ++v2;
    if (v19)
    {
      v9 = v18;
      v8 = *(&v18 + 1);
      v16 = v21;
      v17 = v20;
      v10 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v4 + 16);
        sub_1DD3C0BE0();
        v4 = v14;
      }

      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_1DD3C0BE0();
        v4 = v15;
      }

      *(v4 + 16) = v11 + 1;
      v12 = v4 + 48 * v11;
      *(v12 + 32) = v9 & 1;
      *(v12 + 40) = v8;
      *(v12 + 48) = v7;
      *(v12 + 56) = v17;
      *(v12 + 64) = v16;
      *(v12 + 72) = v10;
      v2 = v6;
    }
  }
}

uint64_t sub_1DD634088()
{
  sub_1DD63DD48();
  v0 = sub_1DD63EEC8();
  v2 = v1;

  MEMORY[0x1E12B2260](v0, v2);

  return 10;
}

uint64_t sub_1DD6340F8@<X0>(char *a1@<X8>)
{
  sub_1DD63DD48();
  sub_1DD63E908();
  sub_1DD63E7D8();
  if (v4)
  {

    v3 = 2;
  }

  else
  {
    sub_1DD63E918();
    sub_1DD63E7D8();

    result = 0;
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1DD6341B0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1DD63FF28();
    v1 = sub_1DD640058();

    return v1;
  }

  return result;
}

uint64_t sub_1DD634270@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v114 = a2;
  v3 = sub_1DD63E428();
  v101 = *(v3 - 8);
  v102 = v3;
  v4 = *(v101 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v100 = &v93[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v99 = &v93[-v7];
  v107 = sub_1DD63E448();
  v112 = *(v107 - 8);
  v8 = *(v112 + 64);
  MEMORY[0x1EEE9AC00](v107);
  v97 = &v93[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00A8, &qword_1DD6657B8);
  v10 = *(*(v111 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v111);
  v104 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v93[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFEF8, &qword_1DD664BD8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v96 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v105 = &v93[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v110 = &v93[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v95 = &v93[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v108 = &v93[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v109 = &v93[-v26];
  v27 = sub_1DD63DE38();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v98 = &v93[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00B0, &qword_1DD6657C0);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v93[-v34];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00B8, &qword_1DD6657C8);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v106 = &v93[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v93[-v41];
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v93[-v43];
  v113 = a1;
  sub_1DD63DE48();
  (*(v28 + 104))(v42, *MEMORY[0x1E69D1758], v27);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v27);
  v45 = *(v32 + 56);
  sub_1DD3DD9B4(v44, v35, &qword_1ECCE00B8, &qword_1DD6657C8);
  sub_1DD3DD9B4(v42, &v35[v45], &qword_1ECCE00B8, &qword_1DD6657C8);
  if (__swift_getEnumTagSinglePayload(v35, 1, v27) == 1)
  {
    sub_1DD390754(v42, &qword_1ECCE00B8, &qword_1DD6657C8);
    sub_1DD390754(v44, &qword_1ECCE00B8, &qword_1DD6657C8);
    if (__swift_getEnumTagSinglePayload(&v35[v45], 1, v27) == 1)
    {
      sub_1DD390754(v35, &qword_1ECCE00B8, &qword_1DD6657C8);
      goto LABEL_10;
    }

LABEL_6:
    result = sub_1DD390754(v35, &qword_1ECCE00B0, &qword_1DD6657C0);
    goto LABEL_7;
  }

  v46 = v106;
  sub_1DD3DD9B4(v35, v106, &qword_1ECCE00B8, &qword_1DD6657C8);
  if (__swift_getEnumTagSinglePayload(&v35[v45], 1, v27) == 1)
  {
    sub_1DD390754(v42, &qword_1ECCE00B8, &qword_1DD6657C8);
    sub_1DD390754(v44, &qword_1ECCE00B8, &qword_1DD6657C8);
    (*(v28 + 8))(v46, v27);
    goto LABEL_6;
  }

  v49 = &v35[v45];
  v50 = v98;
  (*(v28 + 32))(v98, v49, v27);
  sub_1DD6350D0(&qword_1EE1637A0, MEMORY[0x1E69D1778]);
  v94 = sub_1DD63FD98();
  v51 = *(v28 + 8);
  v51(v50, v27);
  sub_1DD390754(v42, &qword_1ECCE00B8, &qword_1DD6657C8);
  sub_1DD390754(v44, &qword_1ECCE00B8, &qword_1DD6657C8);
  v51(v46, v27);
  result = sub_1DD390754(v35, &qword_1ECCE00B8, &qword_1DD6657C8);
  if ((v94 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_10:
  v52 = v109;
  sub_1DD63DE68();
  v53 = *(v112 + 104);
  v54 = v107;
  v55 = v108;
  v53(v108, *MEMORY[0x1E69D1B30], v107);
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
  v56 = *(v111 + 48);
  v57 = v103;
  sub_1DD3DD9B4(v52, v103, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD3DD9B4(v55, v57 + v56, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(v57, 1, v54) == 1)
  {
    sub_1DD390754(v55, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v52, &qword_1ECCDFEF8, &qword_1DD664BD8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57 + v56, 1, v54);
    v59 = v105;
    if (EnumTagSinglePayload == 1)
    {
      sub_1DD390754(v57, &qword_1ECCDFEF8, &qword_1DD664BD8);
      goto LABEL_17;
    }

LABEL_15:
    sub_1DD390754(v57, &qword_1ECCE00A8, &qword_1DD6657B8);
    LODWORD(v57) = 0;
    goto LABEL_20;
  }

  v60 = v95;
  sub_1DD3DD9B4(v57, v95, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(v57 + v56, 1, v54) == 1)
  {
    sub_1DD390754(v108, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v109, &qword_1ECCDFEF8, &qword_1DD664BD8);
    (*(v112 + 8))(v60, v54);
    v59 = v105;
    goto LABEL_15;
  }

  v61 = v112;
  v62 = v57 + v56;
  v63 = v97;
  (*(v112 + 32))(v97, v62, v54);
  sub_1DD6350D0(&qword_1EE163790, MEMORY[0x1E69D1B40]);
  LODWORD(v106) = sub_1DD63FD98();
  v64 = *(v61 + 8);
  v64(v63, v54);
  sub_1DD390754(v108, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD390754(v109, &qword_1ECCDFEF8, &qword_1DD664BD8);
  v64(v60, v54);
  sub_1DD390754(v57, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if ((v106 & 1) == 0)
  {
    LODWORD(v57) = 0;
    goto LABEL_19;
  }

LABEL_17:
  v65 = v99;
  sub_1DD63DE58();
  v57 = v100;
  v66 = v101;
  v67 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x1E69D1AE8], v102);
  v68 = MEMORY[0x1E12B0710](v65, v57);
  v69 = *(v66 + 8);
  v70 = v57;
  LODWORD(v57) = v68;
  v69(v70, v67);
  v71 = v65;
  v54 = v107;
  v69(v71, v67);
LABEL_19:
  v59 = v105;
LABEL_20:
  v72 = v110;
  sub_1DD63DE68();
  v53(v59, *MEMORY[0x1E69D1B10], v54);
  __swift_storeEnumTagSinglePayload(v59, 0, 1, v54);
  v73 = *(v111 + 48);
  v74 = v104;
  sub_1DD3DD9B4(v72, v104, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD3DD9B4(v59, &v74[v73], &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(v74, 1, v54) == 1)
  {
    sub_1DD390754(v59, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v72, &qword_1ECCDFEF8, &qword_1DD664BD8);
    if (__swift_getEnumTagSinglePayload(&v74[v73], 1, v54) == 1)
    {
      sub_1DD390754(v74, &qword_1ECCDFEF8, &qword_1DD664BD8);
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v75 = v96;
  sub_1DD3DD9B4(v74, v96, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if (__swift_getEnumTagSinglePayload(&v74[v73], 1, v54) == 1)
  {
    sub_1DD390754(v59, &qword_1ECCDFEF8, &qword_1DD664BD8);
    sub_1DD390754(v110, &qword_1ECCDFEF8, &qword_1DD664BD8);
    (*(v112 + 8))(v75, v54);
LABEL_25:
    result = sub_1DD390754(v74, &qword_1ECCE00A8, &qword_1DD6657B8);
    goto LABEL_26;
  }

  LODWORD(v111) = v57;
  v57 = v112;
  v76 = v97;
  (*(v112 + 32))(v97, &v74[v73], v54);
  sub_1DD6350D0(&qword_1EE163790, MEMORY[0x1E69D1B40]);
  LODWORD(v109) = sub_1DD63FD98();
  v77 = *(v57 + 8);
  v77(v76, v54);
  sub_1DD390754(v59, &qword_1ECCDFEF8, &qword_1DD664BD8);
  sub_1DD390754(v110, &qword_1ECCDFEF8, &qword_1DD664BD8);
  v77(v75, v54);
  LOBYTE(v57) = v111;
  result = sub_1DD390754(v74, &qword_1ECCDFEF8, &qword_1DD664BD8);
  if ((v109 & 1) == 0)
  {
LABEL_26:
    if (v57)
    {
      goto LABEL_30;
    }

LABEL_7:
    v48 = v114;
    v114[1] = 0u;
    v48[2] = 0u;
    *v48 = 0u;
    return result;
  }

LABEL_29:
  v78 = v99;
  sub_1DD63DE58();
  v80 = v100;
  v79 = v101;
  v81 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x1E69D1AE8], v102);
  sub_1DD6350D0(&qword_1EE163798, MEMORY[0x1E69D1AF8]);
  v82 = sub_1DD63FD98();
  v83 = *(v79 + 8);
  v83(v80, v81);
  result = (v83)(v78, v81);
  if (!(v57 & 1 | ((v82 & 1) == 0)))
  {
    goto LABEL_7;
  }

LABEL_30:
  v84 = sub_1DD63DE18();
  v86 = v85;
  v87 = sub_1DD63DE88();
  v89 = v88;
  result = sub_1DD63DE28();
  v91 = v114;
  *v114 = 0;
  v91[1] = v84;
  if (v90)
  {
    v92 = 0;
  }

  else
  {
    v92 = result;
  }

  v91[2] = v86;
  v91[3] = v87;
  v91[4] = v89;
  v91[5] = v92;
  return result;
}

unint64_t sub_1DD63501C()
{
  result = qword_1EE163780;
  if (!qword_1EE163780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCE00A0, &qword_1DD6657B0);
    sub_1DD6350D0(&qword_1EE163788, MEMORY[0x1E69D1BF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163780);
  }

  return result;
}

uint64_t sub_1DD6350D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD635118()
{
  result = qword_1EE163480;
  if (!qword_1EE163480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163480);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_57()
{
  v4 = v1;
  v5 = *(v2 - 136);

  return sub_1DD56CE00(v2 - 112, v0, v4);
}

uint64_t OUTLINED_FUNCTION_12_51(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_53()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_19_40()
{
}

uint64_t OUTLINED_FUNCTION_28_14(uint64_t a1)
{

  return sub_1DD390754(a1, v1, v2);
}

uint64_t UsoEntity_common_RecurringDateTime.toDateTime()()
{
  v32 = sub_1DD63EC58();
  v29 = *(v32 - 8);
  v0 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v28 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00C0, &qword_1DD6657E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v28 - v4;
  v33 = sub_1DD635698();
  v31 = v5;
  v6 = sub_1DD63EC08();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1DD3CC020(v8);
  v10 = result;
  v11 = 0;
  while (v10 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E12B2C10](v11, v8);
    }

    else
    {
      if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    sub_1DD63E1C8();
    if (v34)
    {
      UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(0);

      MEMORY[0x1E12B23F0](v13);
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      result = sub_1DD640168();
      v7 = v35;
      ++v11;
    }

    else
    {

      ++v11;
    }
  }

  if (sub_1DD63EC18())
  {
    v14 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  }

  else
  {
    v14 = 0;
  }

  v15 = v32;
  v16 = v33;
  v17 = v31;
  sub_1DD418CA4(v7);
  v19 = v18;
  if (sub_1DD63EC38())
  {
    v20 = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(0);
  }

  else
  {
    v20 = 0;
  }

  if (sub_1DD63EC28())
  {
    v21 = UsoEntity_common_DateTime.toDateTime(recurrencePattern:)(0);
  }

  else
  {
    v21 = 0;
  }

  v22 = v30;
  sub_1DD63EC48();
  if (__swift_getEnumTagSinglePayload(v22, 1, v15) == 1)
  {
    sub_1DD3ADFD0(v22, &qword_1ECCE00C0, &qword_1DD6657E0);
    v23 = 3;
  }

  else
  {
    v24 = v28;
    v25 = v29;
    (*(v29 + 16))(v28, v22, v15);
    v26 = (*(v25 + 88))(v24, v15);
    if (v26 == *MEMORY[0x1E69D2168])
    {
      v23 = 2;
    }

    else if (v26 == *MEMORY[0x1E69D2158])
    {
      v23 = 0;
    }

    else if (v26 == *MEMORY[0x1E69D2160])
    {
      v23 = 1;
    }

    else
    {
      (*(v25 + 8))(v24, v15);
      v23 = 3;
    }

    (*(v25 + 8))(v22, v15);
  }

  LOBYTE(v35) = v23;
  type metadata accessor for DateTime.RecurrencePattern();
  swift_allocObject();
  v27 = DateTime.RecurrencePattern.init(withRecurrenceDateTimeRange:recurrencePeriod:totalNumberOfOccurrences:recurrenceDateTimes:fromDateTime:toDateTime:definedValue:)(v14, v17, 0, 1, v19, v20, v21, &v35);
  LOBYTE(v35) = 1;
  LOBYTE(v34) = 4;
  type metadata accessor for DateTime();
  swift_allocObject();
  return DateTime.init(withDate:time:definedValue:recurrencePattern:temporalIntent:occurringIn:)(0, 0, &v35, v27, &v34, v16);
}

uint64_t sub_1DD635698()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0038, &qword_1DD665748);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v33 - v2;
  v4 = sub_1DD63EA08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0030, &qword_1DD665740);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  if (sub_1DD63EC68())
  {
    v13 = UsoEntity_common_Duration.toInterval(offsetDirection:)(0);

    if (v13)
    {
      type metadata accessor for DateTime.DateTimeRange();
      swift_allocObject();
      v14 = DateTime.DateTimeRange.init(withInterval:)(v13);

      return v14;
    }
  }

  v15 = sub_1DD63EC08();
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v34 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00C8, &qword_1DD6657E8);
  v17 = *(v5 + 72);
  v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DD6657D0;
  v20 = v19 + v18;
  v21 = *(v5 + 104);
  v21(v20, *MEMORY[0x1E69D1F40], v4);
  v21(v20 + v17, *MEMORY[0x1E69D1F48], v4);
  v21(v20 + 2 * v17, *MEMORY[0x1E69D1F88], v4);
  v21(v20 + 3 * v17, *MEMORY[0x1E69D1F98], v4);
  v21(v20 + 4 * v17, *MEMORY[0x1E69D1F08], v4);
  v21(v20 + 5 * v17, *MEMORY[0x1E69D1F80], v4);
  v21(v20 + 6 * v17, *MEMORY[0x1E69D1F78], v4);
  v21(v20 + 7 * v17, *MEMORY[0x1E69D1F50], v4);
  v21(v20 + 8 * v17, *MEMORY[0x1E69D1FA8], v4);
  v21(v20 + 9 * v17, *MEMORY[0x1E69D1FB8], v4);
  v21(v20 + 10 * v17, *MEMORY[0x1E69D1FB0], v4);
  v21(v20 + 11 * v17, *MEMORY[0x1E69D1FC0], v4);
  v21(v20 + 12 * v17, *MEMORY[0x1E69D1F10], v4);
  v21(v20 + 13 * v17, *MEMORY[0x1E69D1F30], v4);
  v21(v20 + 14 * v17, *MEMORY[0x1E69D1F38], v4);
  sub_1DD56CC18();
  v22 = sub_1DD3CC020(v16);
  if (!v22)
  {
    LODWORD(v24) = 0;
    goto LABEL_14;
  }

  sub_1DD408BFC(0);
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12B2C10](0, v16);
  }

  else
  {
    v23 = *(v16 + 32);
  }

  sub_1DD63E1C8();

  if (!v36)
  {
    goto LABEL_12;
  }

  v24 = sub_1DD63E6F8();

  if (v24)
  {

    v25 = sub_1DD63E748();

    if (!v25)
    {

      sub_1DD63E718();

      v29 = sub_1DD63E728();
      LODWORD(v24) = __swift_getEnumTagSinglePayload(v12, 1, v29) == 1;
      sub_1DD3ADFD0(v12, &qword_1ECCE0030, &qword_1DD665740);
      goto LABEL_14;
    }

LABEL_12:
    LODWORD(v24) = 0;
  }

LABEL_14:
  if (sub_1DD3CC020(v16) != 1 || !v24 || !v22)
  {

LABEL_24:

LABEL_25:

    return 0;
  }

  sub_1DD408BFC(0);
  if ((v16 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E12B2C10](0, v16);
  }

  else
  {
    v26 = *(v16 + 32);
  }

  sub_1DD63E1C8();

  if (!v36)
  {
    goto LABEL_24;
  }

  v27 = sub_1DD63E6F8();

  if (!v27)
  {
    goto LABEL_24;
  }

  sub_1DD63E9F8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {

    sub_1DD3ADFD0(v3, &qword_1ECCE0038, &qword_1DD665748);
    return 0;
  }

  v30 = v34;
  (*(v5 + 32))(v34, v3, v4);
  v31 = sub_1DD47F31C();

  if ((v31 & 1) == 0)
  {
    (*(v5 + 8))(v30, v4);

    goto LABEL_25;
  }

  if (sub_1DD63EA48() || sub_1DD63EA18() || sub_1DD63EA28() || sub_1DD63EA38())
  {

    (*(v5 + 8))(v30, v4);
    return 0;
  }

  sub_1DD630750(&v36);

  (*(v5 + 8))(v30, v4);
  v32 = v36;
  if (v36 == 38)
  {
    v32 = 8;
  }

  LOBYTE(v36) = v32;
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v14 = DateTime.DateTimeRange.init(withDefinedValue:)(&v36);
  LOBYTE(v36) = 1;
  v35 = 20;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(0x3FF0000000000000, 0, &v36, &v35);
  return v14;
}

uint64_t UsoEntity_common_RecurringDateTime.toRecurrencePattern()()
{
  v0 = *(UsoEntity_common_RecurringDateTime.toDateTime()() + 40);

  return v0;
}

uint64_t _s12SiriOntology21UsoEntity_common_TimeC0A9InferenceE02toagF0AD04DateF0C0F0CSgyF_0()
{
  v1 = sub_1DD63E568();
  v2 = *(v1 - 8);
  v38 = v1;
  v39 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00D0, &qword_1DD6657F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v35[-v7];
  if (sub_1DD63E2F8() && (sub_1DD6317C0(&v42), , v42 != 20))
  {
    v41 = 38;
    v40 = v42;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152();
    v13 = &v41;
    v14 = &v40;
  }

  else if (sub_1DD63E578() && (sub_1DD63108C(&v53), , v9 = v53, v53 != 20))
  {
    v15 = 31;
    if (sub_1DD63E578())
    {
      sub_1DD6317A0();
      OUTLINED_FUNCTION_1_137();
      if (v0)
      {
        v15 = 31;
      }

      else
      {
        v15 = 38;
      }
    }

    v44 = v15;
    v43 = v9;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152();
    v13 = &v44;
    v14 = &v43;
  }

  else if (sub_1DD63E588() && (sub_1DD63108C(&v52), , v10 = v52, v52 != 20))
  {
    v16 = 32;
    if (sub_1DD63E588())
    {
      sub_1DD6317A0();
      OUTLINED_FUNCTION_1_137();
      if (v0)
      {
        v16 = 32;
      }

      else
      {
        v16 = 38;
      }
    }

    v46 = v16;
    v45 = v10;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152();
    v13 = &v46;
    v14 = &v45;
  }

  else
  {
    if (!sub_1DD63E598() || (sub_1DD63108C(&v51), , v11 = v51, v51 == 20))
    {
      if (sub_1DD63E548())
      {
        v12 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_28;
    }

    v17 = 33;
    if (sub_1DD63E598())
    {
      sub_1DD6317A0();
      OUTLINED_FUNCTION_1_137();
      if (v0)
      {
        v17 = 33;
      }

      else
      {
        v17 = 38;
      }
    }

    v48 = v17;
    v47 = v11;
    type metadata accessor for DateTime.DateTimeRange();
    OUTLINED_FUNCTION_0_152();
    v13 = &v48;
    v14 = &v47;
  }

  v12 = DateTime.DateTimeRange.init(at:start:end:duration:interval:definedValue:qualifier:)(0, 0, 0, 0, 0, v13, v14);
LABEL_28:

  if (sub_1DD63E578())
  {
    v18 = sub_1DD6317A0();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 1;
  }

  if (sub_1DD63E588())
  {
    v21 = sub_1DD6317A0();
    LODWORD(v23) = v22;
  }

  else
  {
    v21 = 0;
    LODWORD(v23) = 1;
  }

  if (sub_1DD63E598())
  {
    v24 = sub_1DD6317A0();
    OUTLINED_FUNCTION_1_137();
  }

  else
  {
    v24 = 0;
    v0 = 1;
  }

  v50 = 2;
  sub_1DD63E558();

  v25 = v38;
  if (__swift_getEnumTagSinglePayload(v8, 1, v38) != 1)
  {
    v36 = v23;
    v23 = v21;
    v27 = v8;
    v28 = v20;
    v29 = v18;
    v30 = v39;
    v31 = v37;
    v32 = v27;
    (*(v39 + 16))(v37);
    v33 = (*(v30 + 88))(v31, v25);
    if (v33 == *MEMORY[0x1E69D1BB8])
    {
      v26 = 2;
      v18 = v29;
    }

    else
    {
      v18 = v29;
      if (v33 != *MEMORY[0x1E69D1BC0])
      {
        v20 = v28;
        if (v33 == *MEMORY[0x1E69D1BC8])
        {
          v26 = 0;
        }

        else
        {
          (*(v39 + 8))(v37, v25);
          v26 = 3;
        }

        goto LABEL_44;
      }

      v26 = 1;
    }

    v20 = v28;
LABEL_44:
    (*(v39 + 8))(v32, v25);
    v21 = v23;
    LOBYTE(v23) = v36;
    goto LABEL_45;
  }

  sub_1DD6363D4(v8);
  v26 = 3;
LABEL_45:
  v49 = v26;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v18, v20 & 1, v21, v23 & 1, v24, v0 & 1, &v50, &v49, v12, 1);
}

uint64_t sub_1DD6363D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00D0, &qword_1DD6657F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12SiriOntology32UsoEntity_common_Time12HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0()
{
  if (sub_1DD63EAC8())
  {
    v0 = sub_1DD6317A0();
    v2 = v1;
  }

  else
  {
    v0 = 0;
    v2 = 1;
  }

  if (sub_1DD63EAD8())
  {
    v3 = sub_1DD6317A0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 1;
  }

  if (sub_1DD63EAE8())
  {
    v6 = sub_1DD6317A0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  if (sub_1DD63EAF8())
  {
    sub_1DD631A98(&v14);

    v9 = v14;
  }

  else
  {
    v9 = 2;
  }

  v13 = v9;
  v12 = 3;
  if (sub_1DD63EAB8())
  {
    v10 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v0, v2 & 1, v3, v5 & 1, v6, v8 & 1, &v13, &v12, v10, 1);
}

uint64_t _s12SiriOntology32UsoEntity_common_Time24HourClockC0A9InferenceE02toaI4TimeAD04DateK0C0K0CSgyF_0()
{
  if (sub_1DD63EB28())
  {
    v0 = sub_1DD6317A0();
    v2 = v1;

    if (v2)
    {
      v3 = 2;
    }

    else
    {
      v3 = v0 > 11;
    }

    v4 = (v2 & 1) != 0;
  }

  else
  {
    v0 = 0;
    v4 = 1;
    v3 = 2;
  }

  if (sub_1DD63EB38())
  {
    v5 = sub_1DD6317A0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 1;
  }

  if (sub_1DD63EB48())
  {
    v8 = sub_1DD6317A0();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 1;
  }

  v14 = v3;
  v13 = 3;
  if (sub_1DD63EB18())
  {
    v11 = UsoEntity_common_DateTimeRange.toDateTimeRange()();
  }

  else
  {
    v11 = 0;
  }

  type metadata accessor for DateTime.Time();
  swift_allocObject();
  return DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(v0, v4, v5, v7 & 1, v8, v10 & 1, &v14, &v13, v11, 1);
}

uint64_t sub_1DD636738@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCE00D8, &qword_1DD6657F8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_1DD63E7C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  sub_1DD63E7B8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    result = sub_1DD636A6C(v5);
    v15 = 13;
  }

  else
  {
    v16 = *(v7 + 32);
    v16(v13, v5, v6);
    v16(v10, v13, v6);
    result = (*(v7 + 88))(v10, v6);
    if (result == *MEMORY[0x1E69D1C38])
    {
      v15 = 9;
    }

    else if (result == *MEMORY[0x1E69D1C28])
    {
      v15 = 3;
    }

    else if (result == *MEMORY[0x1E69D1C60])
    {
      v15 = 12;
    }

    else
    {
      if (result == *MEMORY[0x1E69D1C88])
      {
        *a1 = 0;
        return result;
      }

      if (result == *MEMORY[0x1E69D1C80])
      {
        v15 = 10;
      }

      else if (result == *MEMORY[0x1E69D1C40])
      {
        v15 = 8;
      }

      else if (result == *MEMORY[0x1E69D1C78])
      {
        v15 = 6;
      }

      else if (result == *MEMORY[0x1E69D1C48])
      {
        v15 = 1;
      }

      else if (result == *MEMORY[0x1E69D1C50])
      {
        v15 = 4;
      }

      else if (result == *MEMORY[0x1E69D1C30])
      {
        v15 = 5;
      }

      else if (result == *MEMORY[0x1E69D1C68])
      {
        v15 = 7;
      }

      else if (result == *MEMORY[0x1E69D1C70])
      {
        v15 = 2;
      }

      else
      {
        if (result != *MEMORY[0x1E69D1C58])
        {
          *a1 = 13;
          return (*(v7 + 8))(v10, v6);
        }

        v15 = 11;
      }
    }
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1DD636A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCE00D8, &qword_1DD6657F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD636AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_1DD63FE38();
}

uint64_t sub_1DD636B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_1_41();
  v19[0] = v8;
  v19[1] = v7;
  MEMORY[0x1E12B2260](a1, a2);
  sub_1DD63FE68();

  v9 = os_transaction_create();

  *(v6 + 16) = v9;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v10 = sub_1DD63F9F8();
  __swift_project_value_buffer(v10, qword_1EE16F0C8);
  v11 = sub_1DD63F9D8();
  v12 = sub_1DD640368();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v13 = 136315138;
    v19[3] = v9;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00E8, qword_1DD665828);
    v14 = sub_1DD63FE38();
    v16 = sub_1DD39565C(v14, v15, v19);

    *(v13 + 4) = v16;
    _os_log_impl(&dword_1DD38D000, v11, v12, "opening transaction %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD4D7508(a3);
  sub_1DD39A63C(v6);
}

uint64_t sub_1DD636E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_57();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_1_41();
  OUTLINED_FUNCTION_4_98();
  sub_1DD63FE68();

  v8 = os_transaction_create();

  *(v7 + 16) = v8;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v9 = sub_1DD63F9F8();
  __swift_project_value_buffer(v9, qword_1EE16F0C8);
  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640368();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18[0] = v17;
    *v12 = 136315138;
    v18[3] = v8;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00E8, qword_1DD665828);
    v13 = sub_1DD63FE38();
    v15 = sub_1DD39565C(v13, v14, v18);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1DD38D000, v10, v11, "opening transaction %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  sub_1DD5AB7C0();
  sub_1DD39A63C(v7);
}

uint64_t sub_1DD6370BC(uint64_t a1)
{
  v2 = sub_1DD637248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD6370F8(uint64_t a1)
{
  v2 = sub_1DD637248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Empty.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE00F0, &qword_1DD665970);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD637248();
  sub_1DD640EF8();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DD637248()
{
  result = qword_1ECCE00F8;
  if (!qword_1ECCE00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE00F8);
  }

  return result;
}

uint64_t sub_1DD6372F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6BE70](a3, a2, AssociatedTypeWitness, &protocol requirements base descriptor for ValueResolver, &associated conformance descriptor for ValueResolver.ValueResolver.Output: Decodable);
}

uint64_t sub_1DD63736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE6BE70](a3, a2, AssociatedTypeWitness, &protocol requirements base descriptor for ValueResolver, &associated conformance descriptor for ValueResolver.ValueResolver.Output: Encodable);
}

_BYTE *storeEnumTagSinglePayload for Empty(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1DD637558()
{
  result = qword_1ECCE0100;
  if (!qword_1ECCE0100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0100);
  }

  return result;
}

unint64_t sub_1DD6375B0()
{
  result = qword_1ECCE0108;
  if (!qword_1ECCE0108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0108);
  }

  return result;
}

uint64_t sub_1DD637604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v17 = 5;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 0;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(0, 0, 0, 0, 0, 0, v1, v2, v13, v15);
  type metadata accessor for DateTime();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_1_62();
  DateTime.init(withDate:time:)(v3, v4);
  v17 = 6;
  v5 = swift_allocObject();
  v6 = DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 1;
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(11, 0, 59, 0, 59, 0, v7, v8, v14, v16);
  OUTLINED_FUNCTION_1_11();
  v9 = DateTime.init(withDate:time:)(v6, v5);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_1_62();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v10, v11);
  OUTLINED_FUNCTION_1_11();
  *(inited + 56) = DateTime.init(occurringIn:)(v9);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD6377E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 6);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(31, 8);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  v34 = 2;
  type metadata accessor for DateTime.Date.Holiday();
  swift_allocObject();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v6 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v6);
  OUTLINED_FUNCTION_1_11();
  v7 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v7);
  v8 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v8, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v9, v10, v11, v12, v28, *v30, *&v30[4], v30[6], v34);
  OUTLINED_FUNCTION_2_10();
  v13 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v13);
  OUTLINED_FUNCTION_1_11();
  v14 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v14);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v15 = OUTLINED_FUNCTION_34();
  v16 = DateTime.init(occurringIn:)(v15);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v16;
  *(inited + 112) = 1;
  v17 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v17, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v18, v19, v20, v21, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v22 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v22);
  OUTLINED_FUNCTION_1_11();
  v23 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v23);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD637B04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v2 = 0;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(0, 0, 0, &v2 + 1, 3, 0, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD637BCC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v17 = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 0;
  type metadata accessor for DateTime.Time();
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(0, 0, 0, 0, 0, 0, v1, v2, v13, v15);
  type metadata accessor for DateTime();
  swift_allocObject();
  v3 = OUTLINED_FUNCTION_1_62();
  DateTime.init(withDate:time:)(v3, v4);
  v17 = 4;
  v5 = swift_allocObject();
  v6 = DateTime.Date.init(withDayOfWeek:)(&v17);
  v17 = 1;
  swift_allocObject();
  OUTLINED_FUNCTION_0_83();
  DateTime.Time.init(withHour:minute:second:meridiem:definedValue:occurringIn:setByUser:)(11, 0, 59, 0, 59, 0, v7, v8, v14, v16);
  OUTLINED_FUNCTION_1_11();
  v9 = DateTime.init(withDate:time:)(v6, v5);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  v10 = OUTLINED_FUNCTION_1_62();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v10, v11);
  OUTLINED_FUNCTION_1_11();
  *(inited + 56) = DateTime.init(occurringIn:)(v9);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

dispatch_semaphore_t sub_1DD637DA8()
{
  result = dispatch_semaphore_create(1);
  qword_1EE166270 = result;
  return result;
}

uint64_t static XPCActivity.register(name:repeatInterval:isPrivacyCritical:makeOperation:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *a3;
  OUTLINED_FUNCTION_1_41();
  MEMORY[0x1E12B2260]();

  sub_1DD637E84();
}

void sub_1DD637E84()
{
  v1 = v0[1];
  v30 = *v0;
  v31 = v1;
  v32 = *(v0 + 4);
  if (qword_1EE166268 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE166270;
  sub_1DD6404F8();

  if (qword_1EE166280 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE166288;
  v4 = v30;

  v5 = sub_1DD47EEBC(v30, *(&v30 + 1), v3);

  if (v5)
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1EE16F0C8);
    sub_1DD6393E0(&v30, aBlock);
    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640368();
    sub_1DD639418(&v30);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      aBlock[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1DD39565C(v4, *(&v4 + 1), aBlock);
      _os_log_impl(&dword_1DD38D000, v7, v8, "XPC activity is already registered. id=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
    }
  }

  else
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1EE16F0C8);
    sub_1DD6393E0(&v30, aBlock);
    sub_1DD6393E0(&v30, aBlock);
    sub_1DD6393E0(&v30, aBlock);
    sub_1DD6393E0(&v30, aBlock);
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      aBlock[0] = v15;
      *v14 = 136315906;
      *(v14 + 4) = sub_1DD39565C(v4, *(&v4 + 1), aBlock);
      *(v14 + 12) = 2080;
      LOBYTE(v27) = v31;
      v16 = sub_1DD63FE38();
      v18 = sub_1DD39565C(v16, v17, aBlock);

      *(v14 + 14) = v18;
      *(v14 + 22) = 1024;
      sub_1DD639418(&v30);
      *(v14 + 24) = BYTE1(v31) & 1;
      sub_1DD639418(&v30);
      *(v14 + 28) = 1024;
      sub_1DD639418(&v30);
      *(v14 + 30) = BYTE2(v31) & 1;
      sub_1DD639418(&v30);
      _os_log_impl(&dword_1DD38D000, v12, v13, "registering XPC activity\nid=%s\nrepeatInterval=%s\nrequireScreenSleep=%{BOOL}d\nallowBattery=%{BOOL}d", v14, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x1E12B3DA0](v15, -1, -1);
      MEMORY[0x1E12B3DA0](v14, -1, -1);
    }

    else
    {
      sub_1DD639418(&v30);
      sub_1DD639418(&v30);
      sub_1DD639418(&v30);
      sub_1DD639418(&v30);
    }

    v27 = v30;
    v28 = v31;
    v29 = v32;
    v19 = sub_1DD638CE8();
    v20 = swift_allocObject();
    v21 = v31;
    *(v20 + 16) = v30;
    *(v20 + 32) = v21;
    *(v20 + 48) = v32;
    aBlock[4] = sub_1DD639448;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DD54F324;
    aBlock[3] = &block_descriptor_13_1;
    v22 = _Block_copy(aBlock);
    sub_1DD6393E0(&v30, v25);

    v23 = sub_1DD63FE68();
    xpc_activity_register((v23 + 32), v19, v22);

    _Block_release(v22);
    swift_unknownObjectRelease();
  }

  v24 = qword_1EE166270;
  sub_1DD640508();
}

uint64_t static XPCActivity.unregister(name:)()
{
  OUTLINED_FUNCTION_1_41();
  MEMORY[0x1E12B2260](v0, v1);
  v2 = sub_1DD63FE68();

  xpc_activity_unregister((v2 + 32));
}

uint64_t static XPCActivity.registerFirstBoot()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0110, &qword_1DD665B18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = *MEMORY[0x1E69E9D88];
  v1 = xpc_BOOL_create(0);
  v2 = *MEMORY[0x1E69E9D68];
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v3 = xpc_string_create(*MEMORY[0x1E69E9D78]);
  v4 = *MEMORY[0x1E69E9C68];
  *(inited + 56) = v3;
  *(inited + 64) = v4;
  v5 = xpc_int64_create(0);
  v6 = *MEMORY[0x1E69E9C98];
  *(inited + 72) = v5;
  *(inited + 80) = v6;
  *(inited + 88) = xpc_int64_create(120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0118, &qword_1DD665B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC380, &qword_1DD646178);
  sub_1DD6385B4();
  v7 = sub_1DD63FC88();

  v9 = sub_1DD5940F0(v8);

  v11 = sub_1DD594148(v10);
  v12 = sub_1DD3FE498(v11);

  v13 = *(v7 + 16);

  v14 = xpc_dictionary_create((v9 + 32), (v12 + 32), v13);

  v18[4] = sub_1DD638618;
  v18[5] = 0;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_1_138();
  v18[2] = v15;
  v18[3] = &block_descriptor_26;
  v16 = _Block_copy(v18);
  xpc_activity_register("com.apple.siri.inference.FirstBoot", v14, v16);
  _Block_release(v16);
  return swift_unknownObjectRelease();
}

unint64_t sub_1DD6385B4()
{
  result = qword_1EE160328;
  if (!qword_1EE160328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCE0118, &qword_1DD665B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE160328);
  }

  return result;
}

void sub_1DD638618(_xpc_activity_s *a1)
{
  if (qword_1EE166108 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F088);
  v3 = sub_1DD63F9D8();
  v4 = sub_1DD640368();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DD38D000, v3, v4, "received FirstBoot XPC Activity", v5, 2u);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  if (!xpc_activity_set_state(a1, 5))
  {
    oslog = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v6, "failed to set FirstBoot to DONE", v7, 2u);
      MEMORY[0x1E12B3DA0](v7, -1, -1);
    }
  }
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

xpc_activity_state_t sub_1DD6387F0(_xpc_activity_s *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v21 - v4;
  v6 = type metadata accessor for TaskSuccessMetricsPublisher();
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    sub_1DD39638C(0, &qword_1EE160230, 0x1E698F2B0);
    sub_1DD63DA28();
    v11 = v6[5];
    sub_1DD39638C(0, &qword_1EE160240, 0x1E698F248);
    sub_1DD63DA28();
    v12 = &v9[v6[6]];
    *(v12 + 3) = &type metadata for SELFTaskSuccessLogger;
    *(v12 + 4) = &off_1F58BF870;
    type metadata accessor for SystemUserDefaultsProvider();
    v13 = swift_allocObject();
    *(v13 + 16) = [objc_opt_self() standardUserDefaults];
    v14 = &v9[v6[8]];
    *v14 = v13;
    v14[1] = &off_1F58C4BC8;
    v15 = &v9[v6[7]];
    *v15 = 0;
    *(v15 + 1) = 0;

    v16 = sub_1DD63D078();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v16);
    v17 = sub_1DD63F6D8();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v20 = sub_1DD63F6B8();
    v21[0] = a1;
    v21[1] = v20;
    sub_1DD55CD08(v21);

    swift_unknownObjectRelease();
    return sub_1DD639384(v9);
  }

  return result;
}

uint64_t sub_1DD638A64(int64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0110, &qword_1DD665B18);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = *MEMORY[0x1E69E9D88];
  v9 = xpc_BOOL_create(1);
  v10 = *MEMORY[0x1E69E9D68];
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  v11 = xpc_string_create(*MEMORY[0x1E69E9D78]);
  v12 = *MEMORY[0x1E69E9C68];
  *(inited + 56) = v11;
  *(inited + 64) = v12;
  v13 = xpc_int64_create(a1);
  v14 = *MEMORY[0x1E69E9C40];
  *(inited + 72) = v13;
  *(inited + 80) = v14;
  *(inited + 88) = xpc_BOOL_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0118, &qword_1DD665B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC380, &qword_1DD646178);
  sub_1DD6385B4();
  v15 = sub_1DD63FC88();

  v17 = sub_1DD5940F0(v16);

  v19 = sub_1DD594148(v18);
  v20 = sub_1DD3FE498(v19);

  v21 = *(v15 + 16);

  v22 = xpc_dictionary_create((v17 + 32), (v20 + 32), v21);

  v26[4] = a2;
  v26[5] = 0;
  OUTLINED_FUNCTION_1_132();
  OUTLINED_FUNCTION_1_138();
  v26[2] = v23;
  v26[3] = a3;
  v24 = _Block_copy(v26);
  xpc_activity_register(a4, v22, v24);
  _Block_release(v24);
  return swift_unknownObjectRelease();
}

void sub_1DD638C34(_xpc_activity_s *a1)
{
  if (xpc_activity_get_state(a1) == 2)
  {
    type metadata accessor for SystemUserDefaultsProvider();
    v1 = swift_allocObject();
    *(v1 + 16) = [objc_opt_self() standardUserDefaults];
    v6 = sub_1DD639258();
    v3 = v2;
    sub_1DD629DBC(v6, v2, v4, v5);
    swift_unknownObjectRelease();
  }
}

xpc_object_t sub_1DD638CE8()
{
  v1 = v0[16];
  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCE0130, qword_1DD665BF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD652040;
  *(inited + 32) = *MEMORY[0x1E69E9CB0];
  v6 = MEMORY[0x1E69E9CC8];
  v7 = inited;
  switch(v2)
  {
    case 1uLL:
      goto LABEL_5;
    case 2uLL:
      v6 = MEMORY[0x1E69E9CE0];
      goto LABEL_5;
    case 3uLL:
      v6 = MEMORY[0x1E69E9CF8];
      goto LABEL_5;
    case 4uLL:
      v6 = MEMORY[0x1E69E9CC0];
LABEL_5:
      v2 = xpc_int64_create(*v6);
      break;
    default:
      break;
  }

  v8 = *MEMORY[0x1E69E9D88];
  v7[5] = v2;
  v7[6] = v8;
  v9 = xpc_BOOL_create(v1 != 0);
  v10 = *MEMORY[0x1E69E9D68];
  v7[7] = v9;
  v7[8] = v10;
  v11 = xpc_string_create(*MEMORY[0x1E69E9D78]);
  v12 = *MEMORY[0x1E69E9DC0];
  v7[9] = v11;
  v7[10] = v12;
  v13 = xpc_BOOL_create(v3);
  v14 = *MEMORY[0x1E69E9C40];
  v7[11] = v13;
  v7[12] = v14;
  v7[13] = xpc_BOOL_create(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0118, &qword_1DD665B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC388, &qword_1DD646180);
  sub_1DD6385B4();
  v15 = sub_1DD63FC88();

  v17 = sub_1DD5940F0(v16);

  v19 = sub_1DD59411C(v18);
  v20 = *(v15 + 16);

  v21 = xpc_dictionary_create((v17 + 32), (v19 + 32), v20);

  return v21;
}

void sub_1DD638ECC(_xpc_activity_s *a1, uint64_t a2)
{
  if (xpc_activity_get_state(a1) == 2)
  {
    v4 = *(a2 + 32);
    v5 = (*(a2 + 24))(a1);
    if (qword_1EE166628 != -1)
    {
      swift_once();
    }

    [qword_1EE166630 addOperation_];
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v6 = sub_1DD63F9F8();
    __swift_project_value_buffer(v6, qword_1EE16F0C8);
    sub_1DD6393E0(a2, v11);
    v7 = sub_1DD63F9D8();
    v8 = sub_1DD640368();
    sub_1DD639418(a2);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1DD39565C(*a2, *(a2 + 8), v11);
      _os_log_impl(&dword_1DD38D000, v7, v8, "queued XPC activity. id=%s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
      MEMORY[0x1E12B3DA0](v9, -1, -1);
    }
  }
}

uint64_t XPCActivity.RepeatInterval.hashValue.getter()
{
  v1 = *v0;
  sub_1DD640E28();
  MEMORY[0x1E12B3140](v1);
  return sub_1DD640E78();
}

unint64_t sub_1DD639118()
{
  result = qword_1ECCE0120;
  if (!qword_1ECCE0120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0120);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for XPCActivity.RepeatInterval(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

id sub_1DD639258()
{
  v0 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v1 = [v0 Intents];
  swift_unknownObjectRelease();
  v2 = [v1 Transcript];
  swift_unknownObjectRelease();
  v3 = [BiomeLibrary() IntelligenceEngine];
  swift_unknownObjectRelease();
  v4 = [v3 Interaction];
  swift_unknownObjectRelease();
  v5 = [v4 Donation];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1DD639384(uint64_t a1)
{
  v2 = type metadata accessor for TaskSuccessMetricsPublisher();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *XPCActivityOperation.init(activity:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity] = 0;
  *&v1[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for XPCActivityOperation();
  v3 = objc_msgSendSuper2(&v10, sel_init);
  v4 = *&v3[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity];
  *&v3[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity] = a1;
  v5 = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a1;
  swift_unknownObjectRetain();
  v7 = sub_1DD63CDB8();

  swift_unknownObjectRelease();
  v8 = *&v5[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation];
  *&v5[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation] = v7;

  return v5;
}

uint64_t sub_1DD6395C4()
{
  if ([v0 isCancelled])
  {
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v1 = sub_1DD63F9F8();
    __swift_project_value_buffer(v1, qword_1EE16F0C8);
    v2 = sub_1DD63F9D8();
    v3 = sub_1DD640368();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1DD38D000, v2, v3, "XPC activity has been cancelled", v4, 2u);
      MEMORY[0x1E12B3DA0](v4, -1, -1);
    }

    return 1;
  }

  if (*&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity])
  {
    v5 = *&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity];
    v6 = swift_unknownObjectRetain();
    if (xpc_activity_should_defer(v6))
    {
      [v0 cancel];
      if (qword_1EE166510 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v7 = sub_1DD63F9F8();
      __swift_project_value_buffer(v7, qword_1EE16F0C8);
      v8 = sub_1DD63F9D8();
      v9 = sub_1DD640368();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1DD38D000, v8, v9, "XPC activity has been deferred", v10, 2u);
        MEMORY[0x1E12B3DA0](v10, -1, -1);
      }

      swift_unknownObjectRelease();
      return 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id XPCActivityOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id XPCActivityOperation.init()()
{
  v1 = OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity;
  *&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_activity] = 0;
  *&v0[OBJC_IVAR____TtC13SiriInference20XPCActivityOperation_completionKVObservation] = 0;
  *&v0[v1] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for XPCActivityOperation();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1DD639870(uint64_t a1, uint64_t a2, uint64_t a3, _xpc_activity_s *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0158, &qword_1DD665C68);
  result = sub_1DD63CDA8();
  if (v7 != 2 && (v7 & 1) != 0)
  {
    if (sub_1DD6395C4())
    {
      v6 = 3;
    }

    else
    {
      v6 = 5;
    }

    return xpc_activity_set_state(a4, v6);
  }

  return result;
}

id XPCActivityOperation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for XPCActivityOperation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SiriInference::Zipcode::Prefix_optional __swiftcall Zipcode.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Zipcode.Prefix.rawValue.getter()
{
  v1 = 28265;
  if (*v0 != 1)
  {
    v1 = 1918985582;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65646F6370697ALL;
  }
}

uint64_t sub_1DD639A8C@<X0>(uint64_t *a1@<X8>)
{
  result = Zipcode.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Zipcode.value.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t static Zipcode.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 3 && (v2 == 3);
    if (v2 != 3 && v3 != 3)
    {

      return sub_1DD3AE554(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD639C3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x786966657270 && a2 == 0xE600000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1DD639CFC(char a1)
{
  if (a1)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0x786966657270;
  }
}

uint64_t sub_1DD639D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD639C3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD639D5C(uint64_t a1)
{
  v2 = sub_1DD63A138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD639D98(uint64_t a1)
{
  v2 = sub_1DD63A138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Zipcode.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0160, &qword_1DD665C70);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = *(v1 + 1);
  v16[0] = *(v1 + 2);
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD63A138();
  sub_1DD640EF8();
  v19 = v12;
  v18 = 0;
  sub_1DD63A18C();
  sub_1DD640C08();
  if (!v2)
  {
    v17 = 1;
    sub_1DD640C18();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t Zipcode.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCE0178, &qword_1DD665C78);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD63A138();
  sub_1DD640ED8();
  if (!v2)
  {
    v21 = 0;
    sub_1DD63A1E0();
    sub_1DD640B18();
    v14 = v22;
    v20 = 1;
    v16 = sub_1DD640B28();
    v18 = v17;
    (*(v8 + 8))(v12, v5);
    *a2 = v14;
    *(a2 + 8) = v16;
    *(a2 + 16) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD63A138()
{
  result = qword_1ECCE0168;
  if (!qword_1ECCE0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0168);
  }

  return result;
}

unint64_t sub_1DD63A18C()
{
  result = qword_1ECCE0170;
  if (!qword_1ECCE0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0170);
  }

  return result;
}

unint64_t sub_1DD63A1E0()
{
  result = qword_1ECCE0180;
  if (!qword_1ECCE0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0180);
  }

  return result;
}

unint64_t sub_1DD63A238()
{
  result = qword_1ECCE0188;
  if (!qword_1ECCE0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0188);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Zipcode.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Zipcode.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD63A458()
{
  result = qword_1ECCE0190;
  if (!qword_1ECCE0190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0190);
  }

  return result;
}

unint64_t sub_1DD63A4B0()
{
  result = qword_1ECCE0198;
  if (!qword_1ECCE0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE0198);
  }

  return result;
}

unint64_t sub_1DD63A508()
{
  result = qword_1ECCE01A0;
  if (!qword_1ECCE01A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE01A0);
  }

  return result;
}

unint64_t sub_1DD63A55C()
{
  result = qword_1ECCE01A8;
  if (!qword_1ECCE01A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCE01A8);
  }

  return result;
}

id sub_1DD63A628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x737475706E69 && a2 == 0xE600000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD63A748()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_1DD640268();

  return v2;
}

id sub_1DD63A7A0()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD63FDA8();
  v3 = [v1 featureValueForName_];

  return v3;
}

id sub_1DD63A808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1DD63A884()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1DD63A9EC()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD63FDA8();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

void sub_1DD63AA6C()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD63FDA8();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_1DD63AB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1DD63AC28(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63AC94(a1, v2);

  return v3;
}

uint64_t sub_1DD63AC94(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for ContactInference_v3_24_0_enlifeOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DD63AD90(void *a1)
{
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1DD63B208();
  sub_1DD51FA60();
  (*(v4 + 16))(v8, v10, v3);
  v11 = sub_1DD551650(v8, a1);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v4 + 8))(v10, v3);
  type metadata accessor for MessageAppPredictorPeopleCentric();
  OUTLINED_FUNCTION_57();
  result = swift_allocObject();
  *(result + 16) = v13;
  return result;
}

id sub_1DD63AFC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 88 && a2 == 0xE100000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

id sub_1DD63B134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

uint64_t sub_1DD63B1B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_57();

  return swift_deallocClassInstance();
}

void sub_1DD63B208()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD000000000000020, 0x80000001DD666100, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63B2C4(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63B330(a1, v2);

  return v3;
}

uint64_t sub_1DD63B330(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for MessageAppPredictorPeopleCentricOutput();
    OUTLINED_FUNCTION_57();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DD63B404(void *a1)
{
  type metadata accessor for MessageAppPredictorPeopleCentricInput();
  OUTLINED_FUNCTION_57();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1DD63B2C4(v2);

  return v4;
}

uint64_t sub_1DD63B46C()
{
  OUTLINED_FUNCTION_57();

  return swift_deallocClassInstance();
}

id sub_1DD63B540(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E695F6C65646F6DLL && a2 == 0xEB00000000747570;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  else
  {
    return 0;
  }
}

void sub_1DD63B5FC()
{
  v1 = *(v0 + 16);
  v2 = sub_1DD63FDA8();
  v3 = [v1 featureValueForName_];

  if (!v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  v4 = [v3 multiArrayValue];

  if (!v4)
  {
LABEL_5:
    __break(1u);
  }
}

id sub_1DD63B718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1DD63B7B8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD000000000000019, 0x80000001DD6661A0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63B874(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63B8E0(a1, v2);

  return v3;
}

uint64_t sub_1DD63B8E0(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PervasiveEntityResolutionOutput();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DD63B9DC(void *a1)
{
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1DD63BE48();
  sub_1DD51FA60();
  (*(v4 + 16))(v8, v10, v3);
  v11 = sub_1DD551650(v8, a1);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v4 + 8))(v10, v3);
  type metadata accessor for PhoneAppPredictor();
  OUTLINED_FUNCTION_57();
  result = swift_allocObject();
  *(result + 16) = v13;
  return result;
}

id sub_1DD63BBC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 88 && a2 == 0xE100000000000000;
  if (v3 || (sub_1DD640CD8() & 1) != 0)
  {
    v6 = 16;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  v8 = a1 == 0x745F6E69616D6F64 && a2 == 0xEB00000000657079;
  if (v8 || (sub_1DD640CD8() & 1) != 0)
  {
    v6 = 24;
    return [objc_opt_self() featureValueWithMultiArray_];
  }

  return 0;
}

uint64_t sub_1DD63BCCC()
{
  sub_1DD63BCA4();

  return swift_deallocClassInstance();
}

id sub_1DD63BDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1DD63BE48()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD000000000000011, 0x80000001DD666220, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63BF04(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63BF70(a1, v2);

  return v3;
}

uint64_t sub_1DD63BF70(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PhoneAppPredictorOutput();
    OUTLINED_FUNCTION_57();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DD63C044(void *a1, void *a2)
{
  type metadata accessor for PhoneAppPredictorInput();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  v7 = sub_1DD63BF04(v4);

  return v7;
}

uint64_t sub_1DD63C0E4(void *a1)
{
  v3 = sub_1DD63CE68();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - v9;
  sub_1DD63C42C();
  sub_1DD51FA60();
  (*(v4 + 16))(v8, v10, v3);
  v11 = sub_1DD551650(v8, a1);
  if (v1)
  {
    return (*(v4 + 8))(v10, v3);
  }

  v13 = v11;
  (*(v4 + 8))(v10, v3);
  type metadata accessor for PhoneAppPredictorPeopleCentric();
  OUTLINED_FUNCTION_57();
  result = swift_allocObject();
  *(result + 16) = v13;
  return result;
}

id sub_1DD63C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = sub_1DD63FDD8();
  v7 = v6;

  v8 = a4(v5, v7);

  return v8;
}

void sub_1DD63C42C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_1DD63C6B4(0xD00000000000001ELL, 0x80000001DD6662C0, 0x636C65646F6D6C6DLL, 0xE800000000000000, v1);
  if (v2)
  {
    v3 = v2;
    sub_1DD63CE48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1DD63C4E8(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v3 = sub_1DD63C554(a1, v2);

  return v3;
}

uint64_t sub_1DD63C554(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  v13[0] = 0;
  v6 = [v5 predictionFromFeatures:a1 options:a2 error:v13];
  v7 = v13[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for PhoneAppPredictorPeopleCentricOutput();
    OUTLINED_FUNCTION_57();
    v3 = swift_allocObject();
    *(v3 + 16) = v8;
    v9 = v7;
  }

  else
  {
    v10 = v13[0];
    sub_1DD63CD98();

    swift_willThrow();
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1DD63C628(void *a1)
{
  type metadata accessor for PhoneAppPredictorPeopleCentricInput();
  OUTLINED_FUNCTION_57();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = a1;
  v4 = sub_1DD63C4E8(v2);

  return v4;
}

id sub_1DD63C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1DD63FDA8();

  v7 = sub_1DD63FDA8();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}