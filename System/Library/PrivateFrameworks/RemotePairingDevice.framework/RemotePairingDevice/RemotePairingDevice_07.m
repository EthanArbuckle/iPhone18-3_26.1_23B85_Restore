uint64_t TunnelEndpoint.__deallocating_deinit()
{
  TunnelEndpoint.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_261FF3E94()
{
  OUTLINED_FUNCTION_96();
  v3 = v2;
  v5 = v4;
  LODWORD(v89) = v6;
  OUTLINED_FUNCTION_23_4();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_60_2();
  v10 = *(v9 + 88);
  v11 = type metadata accessor for TunnelEndpoint.Event();
  v12 = OUTLINED_FUNCTION_0(v11);
  v87 = v13;
  v88 = v12;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44();
  v86 = v17;
  OUTLINED_FUNCTION_9_5();
  v18 = type metadata accessor for TunnelEndpoint.State();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v82 - v25;
  v27 = sub_26203A4AC();
  if (qword_28108B618 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v90 = qword_28108B620;
  v28 = os_log_type_enabled(qword_28108B620, v27);
  v91 = v1;
  if (v28)
  {
    OUTLINED_FUNCTION_42_1();
    v29 = swift_slowAlloc();
    v85 = v5;
    v30 = v29;
    v83 = v29;
    OUTLINED_FUNCTION_30();
    v84 = swift_slowAlloc();
    v94 = v84;
    *v30 = 136446210;
    v92 = v89;
    v93 = BYTE2(v89) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA2A8, &qword_2620440B8);
    v31 = sub_26203A20C();
    v33 = v21;
    v34 = v18;
    v35 = v27;
    v36 = v10;
    v37 = OUTLINED_FUNCTION_303(v31, v32);

    v38 = v83;
    *(v83 + 4) = v37;
    v10 = v36;
    v39 = v35;
    v18 = v34;
    v21 = v33;
    _os_log_impl(&dword_261F5B000, v90, v39, "TunnelEndpoint: Establishing a client tunnel with MTU = %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v5 = v85;
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  sub_261F798CC(v26);
  OUTLINED_FUNCTION_108();
  swift_storeEnumTagMultiPayload();
  v40 = OUTLINED_FUNCTION_256();
  v42 = sub_261FF4548(v40, v41);
  v43 = *(v21 + 8);
  v44 = OUTLINED_FUNCTION_108();
  v43(v44);
  v45 = (v43)(v26, v18);
  if ((v42 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    v50 = sub_261F665E4(v45);
    __break(1u);
    goto LABEL_22;
  }

  v46 = v89;
  if ((v89 & 0x10000) != 0)
  {
    v47 = v10[1];
    v48 = OUTLINED_FUNCTION_11_0();
    v46 = v49(v48);
  }

  v45 = sub_261FF246C();
  if (v45)
  {
    goto LABEL_21;
  }

  v50 = sub_261FF24D0();
  if (!v50)
  {
    v51 = v10[2];
    v52 = OUTLINED_FUNCTION_11_0();
    if (v46 >= v51(v52))
    {
      v64 = v10[3];
      v65 = OUTLINED_FUNCTION_11_0();
      if (v64(v65) >= v46)
      {

        sub_261FF258C();
        OUTLINED_FUNCTION_46();
        v77 = swift_allocObject();
        *(v77 + 16) = v5;
        *(v77 + 24) = v3;

        OUTLINED_FUNCTION_19_5();
        sub_261FF24AC();
        OUTLINED_FUNCTION_46();
        v78 = swift_allocObject();
        *(v78 + 16) = v5;
        *(v78 + 24) = v3;

        OUTLINED_FUNCTION_19_5();
        sub_261FF2510();
        *v86 = v46;
        swift_storeEnumTagMultiPayload();
        sub_261F6D760();
        v79 = *(v87 + 8);
        v80 = OUTLINED_FUNCTION_98_0();
        v81(v80);
        goto LABEL_19;
      }

      v66 = sub_26203A48C();
      if (os_log_type_enabled(v90, v66))
      {
        OUTLINED_FUNCTION_30();
        v0 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v89 = swift_slowAlloc();
        v94 = v89;
        *v0 = 136446722;
        v67 = sub_261F7C884();
        OUTLINED_FUNCTION_188(v67, v68);
        v91 = v10;
        OUTLINED_FUNCTION_73_2();

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_280();
        v69 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v69, v70);
        OUTLINED_FUNCTION_142_0();

        v71 = OUTLINED_FUNCTION_165_0();
        v92 = v64(v71);
        OUTLINED_FUNCTION_280();
        v72 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v72, v73);
        OUTLINED_FUNCTION_70();

        v0[3] = v10 + 3;
        OUTLINED_FUNCTION_282(&dword_261F5B000, v74, v75, "%{public}s: the client tunnel MTU = %{public}s is more than the maximum supported MTU = %{public}s");
        OUTLINED_FUNCTION_273();
        swift_arrayDestroy();
        v76 = OUTLINED_FUNCTION_29_7();
        MEMORY[0x266724180](v76);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }
    }

    else
    {
      v53 = sub_26203A48C();
      if (os_log_type_enabled(v90, v53))
      {
        OUTLINED_FUNCTION_30();
        v0 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v89 = swift_slowAlloc();
        v94 = v89;
        *v0 = 136446722;
        v54 = sub_261F7C884();
        OUTLINED_FUNCTION_188(v54, v55);
        v91 = v10;
        OUTLINED_FUNCTION_73_2();

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_280();
        v56 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v56, v57);
        OUTLINED_FUNCTION_142_0();

        v58 = OUTLINED_FUNCTION_165_0();
        v92 = v51(v58);
        OUTLINED_FUNCTION_280();
        v59 = sub_26203ABAC();
        OUTLINED_FUNCTION_188(v59, v60);
        OUTLINED_FUNCTION_70();

        v0[3] = v10 + 2;
        OUTLINED_FUNCTION_282(&dword_261F5B000, v61, v62, "%{public}s: the client tunnel MTU = %{public}s is less than the minimum supported MTU = %{public}s");
        OUTLINED_FUNCTION_273();
        swift_arrayDestroy();
        v63 = OUTLINED_FUNCTION_29_7();
        MEMORY[0x266724180](v63);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }
    }

    sub_261F9D610();
    OUTLINED_FUNCTION_19();
    swift_allocError();
    OUTLINED_FUNCTION_250();
    sub_261F9BCE0();
    OUTLINED_FUNCTION_124_0();
    OUTLINED_FUNCTION_235();
    v5(v0);

LABEL_19:
    OUTLINED_FUNCTION_31_0();
    return;
  }

LABEL_22:
  sub_261F665E4(v50);
  __break(1u);
}

uint64_t sub_261FF4548(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_26203965C();
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v43 = &v41 - v7;
  v8 = type metadata accessor for TunnelEndpoint.State();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v41 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v20 = *(v47 + 64);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v41 - v22;
  v24 = &v41 + *(v21 + 48) - v22;
  v46 = v9;
  v25 = *(v9 + 16);
  v25(&v41 - v22, a1, v8);
  v25(v24, v48, v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v25(v16, v23, v8);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_31;
      }

      v26 = *v16;
      goto LABEL_21;
    case 2u:
      v25(v13, v23, v8);
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v44 + 8))(&v13[v27], v45);
LABEL_31:
        (*(v47 + 8))(v23, TupleTypeMetadata2);
        goto LABEL_32;
      }

      LODWORD(v48) = *v13;
      v28 = *v24;
      v29 = v44;
      v30 = v45;
      v31 = *(v44 + 32);
      v32 = &v13[v27];
      v33 = v43;
      v31(v43, v32, v45);
      v34 = &v24[v27];
      v35 = v42;
      v31(v42, v34, v30);
      if (v48 != v28)
      {
        v36 = *(v29 + 8);
        v36(v35, v30);
        v36(v33, v30);
        (*(v46 + 8))(v23, v8);
LABEL_32:
        v38 = 0;
        return v38 & 1;
      }

      v38 = sub_26203962C();
      v40 = *(v29 + 8);
      v40(v35, v30);
      v40(v33, v30);
      (*(v46 + 8))(v23, v8);
      return v38 & 1;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 7u:
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_31;
      }

LABEL_29:
      (*(v46 + 8))(v23, v8);
      v38 = 1;
      return v38 & 1;
    default:
      v25(v18, v23, v8);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_31;
      }

      v26 = *v18;
LABEL_21:
      v37 = v26 ^ *v24;
      (*(v46 + 8))(v23, v8);
      v38 = v37 ^ 1;
      return v38 & 1;
  }
}

void sub_261FF4B00()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v115 = v3;
  v116 = v4;
  v117 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_23_4();
  v9 = *(v8 + 80);
  OUTLINED_FUNCTION_60_2();
  v11 = *(v10 + 88);
  OUTLINED_FUNCTION_210();
  v12 = type metadata accessor for TunnelEndpoint.Event();
  v13 = OUTLINED_FUNCTION_0(v12);
  v112 = v14;
  v113 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_44();
  v111 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_40(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_44();
  v110 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  OUTLINED_FUNCTION_40(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_44();
  v108 = v28;
  OUTLINED_FUNCTION_9_5();
  v118 = type metadata accessor for TunnelInterfaceParameters();
  v29 = OUTLINED_FUNCTION_6_1(v118);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v109 = v32;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_88_1();
  v114 = v34;
  OUTLINED_FUNCTION_9_5();
  v35 = type metadata accessor for TunnelEndpoint.State();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v41);
  v43 = (&v107 - v42);
  sub_261F798CC(&v107 - v42);
  swift_storeEnumTagMultiPayload();
  v44 = sub_261FF4548(v43, v0);
  v45 = *(v38 + 8);
  v45(v0, v35);
  v45(v43, v35);
  if ((v44 & 1) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v46 = sub_262039ACC();
  sub_261F6E4A4(&qword_28108B390, MEMORY[0x277CD8C88]);
  if (sub_26203A17C())
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = v7;
  v47 = sub_261FF246C();
  if (v47)
  {
    v48 = sub_261F665E4(v47);
    __break(1u);
  }

  else
  {
    v48 = sub_261FF24D0();
    if (!v48)
    {
      v49 = *&v7[*(v118 + 24)];
      v0 = *(v11 + 16);
      v50 = OUTLINED_FUNCTION_119_0();
      if (v49 >= v0(v50))
      {
        v0 = *(v11 + 24);
        v67 = OUTLINED_FUNCTION_119_0();
        if (v49 <= v0(v67))
        {

          sub_261FF258C();
          OUTLINED_FUNCTION_46();
          v91 = swift_allocObject();
          v93 = v115;
          v92 = v116;
          *(v91 + 16) = v115;
          *(v91 + 24) = v92;

          OUTLINED_FUNCTION_19_5();
          sub_261FF24AC();
          OUTLINED_FUNCTION_46();
          v94 = swift_allocObject();
          *(v94 + 16) = v93;
          *(v94 + 24) = v92;

          OUTLINED_FUNCTION_19_5();
          sub_261FF2510();
          OUTLINED_FUNCTION_4_13();
          sub_261FFEE24(v45, v108);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v95, v96, v97, v118);
          sub_261FF23FC();
          OUTLINED_FUNCTION_71(v46);
          (*(v98 + 16))(v110, v117, v46);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v99, v100, v101, v46);
          sub_261FF1A04();
          swift_storeEnumTagMultiPayload();
          sub_261F6D760();
          v102 = *(v112 + 8);
          v103 = OUTLINED_FUNCTION_98_0();
          v104(v103);
LABEL_20:
          OUTLINED_FUNCTION_31_0();
          return;
        }

        v68 = sub_26203A48C();
        if (qword_28108B618 != -1)
        {
          OUTLINED_FUNCTION_0_27();
          swift_once();
        }

        v69 = qword_28108B620;
        OUTLINED_FUNCTION_4_13();
        v70 = v109;
        sub_261FFEE24(v45, v109);
        if (os_log_type_enabled(v69, v68))
        {
          OUTLINED_FUNCTION_30();
          v71 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v120 = swift_slowAlloc();
          *v71 = 136446722;
          LODWORD(v117) = v68;
          v72 = sub_261F7C884();
          OUTLINED_FUNCTION_188(v72, v73);
          OUTLINED_FUNCTION_70();

          *(v71 + 4) = v2;
          *(v71 + 12) = 2082;
          v119 = *(v70 + *(v118 + 24));
          sub_26203ABAC();
          OUTLINED_FUNCTION_263();
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v74, v75);
          v76 = OUTLINED_FUNCTION_45_0();
          sub_261F67FE4(v76, v77, v78);
          OUTLINED_FUNCTION_263();

          *(v71 + 14) = &v119;
          *(v71 + 22) = 2082;
          v79 = OUTLINED_FUNCTION_119_0();
          v119 = v0(v79);
          v80 = sub_26203ABAC();
          OUTLINED_FUNCTION_188(v80, v81);
          OUTLINED_FUNCTION_70();

          *(v71 + 24) = 2082;
          OUTLINED_FUNCTION_271();
          _os_log_impl(v82, v83, v84, v85, v86, v87);
          swift_arrayDestroy();
          v88 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v88);
          v89 = OUTLINED_FUNCTION_24_5();
          MEMORY[0x266724180](v89);
        }

        else
        {
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v70, v105);
        }

        v106 = v115;
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_250();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_235();
        v106(v0);
LABEL_19:

        goto LABEL_20;
      }

      LODWORD(v7) = sub_26203A48C();
      if (qword_28108B618 == -1)
      {
LABEL_7:
        v51 = qword_28108B620;
        OUTLINED_FUNCTION_4_13();
        v52 = v114;
        sub_261FFEE24(v45, v114);
        if (os_log_type_enabled(v51, v7))
        {
          OUTLINED_FUNCTION_30();
          v53 = swift_slowAlloc();
          OUTLINED_FUNCTION_101();
          v120 = swift_slowAlloc();
          *v53 = 136446722;
          LODWORD(v117) = v7;
          v54 = v52;
          v55 = sub_261F7C884();
          OUTLINED_FUNCTION_188(v55, v56);
          OUTLINED_FUNCTION_70();

          *(v53 + 4) = v2;
          *(v53 + 12) = 2082;
          v119 = *(v52 + *(v118 + 24));
          v57 = sub_26203ABAC();
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v54, v58);
          v59 = OUTLINED_FUNCTION_135();
          sub_261F67FE4(v59, v60, v61);
          OUTLINED_FUNCTION_61_2();

          *(v53 + 14) = v57;
          *(v53 + 22) = 2082;
          v62 = OUTLINED_FUNCTION_119_0();
          v119 = v0(v62);
          v63 = sub_26203ABAC();
          v65 = OUTLINED_FUNCTION_188(v63, v64);

          *(v53 + 24) = v65;
          _os_log_impl(&dword_261F5B000, v51, v117, "%{public}s: the server tunnel MTU = %{public}s is less than the minimum supported MTU = %{public}s", v53, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_26();
          MEMORY[0x266724180]();
          v66 = OUTLINED_FUNCTION_16_3();
          MEMORY[0x266724180](v66);
        }

        else
        {
          OUTLINED_FUNCTION_2_19();
          sub_261FFEE7C(v52, v90);
        }

        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_250();
        sub_261F9BCE0();
        OUTLINED_FUNCTION_124_0();
        OUTLINED_FUNCTION_235();
        v115(v0);
        goto LABEL_19;
      }

LABEL_23:
      OUTLINED_FUNCTION_0_27();
      swift_once();
      goto LABEL_7;
    }
  }

  sub_261F665E4(v48);
  __break(1u);
}

void sub_261FF5370()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v36 = v3;
  v5 = v4;
  OUTLINED_FUNCTION_23_4();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_60_2();
  v9 = *(v8 + 88);
  v10 = type metadata accessor for TunnelEndpoint.Event();
  v11 = OUTLINED_FUNCTION_0(v10);
  v37 = v12;
  v38 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14();
  v16 = type metadata accessor for TunnelEndpoint.State();
  v17 = OUTLINED_FUNCTION_0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_54();
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  sub_261F798CC(&v35 - v23);
  OUTLINED_FUNCTION_177_0();
  swift_storeEnumTagMultiPayload();
  v25 = OUTLINED_FUNCTION_204();
  LOBYTE(v7) = sub_261FF4548(v25, v26);
  v27 = *(v19 + 8);
  v28 = OUTLINED_FUNCTION_177_0();
  v27(v28);
  v29 = (v27)(v24, v16);
  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v29 = sub_261FF246C();
  if (v29)
  {
LABEL_8:
    v30 = sub_261F665E4(v29);
    __break(1u);
    goto LABEL_9;
  }

  v30 = sub_261FF24D0();
  if (!v30)
  {
    OUTLINED_FUNCTION_46();
    v31 = swift_allocObject();
    v32 = v36;
    *(v31 + 16) = v36;
    *(v31 + 24) = v2;

    sub_261FF24AC();
    OUTLINED_FUNCTION_46();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v2;

    sub_261FF2510();
    *v0 = v5;
    v34 = v38;
    swift_storeEnumTagMultiPayload();
    sub_261F6D760();
    (*(v37 + 8))(v0, v34);
LABEL_6:
    OUTLINED_FUNCTION_31_0();
    return;
  }

LABEL_9:
  sub_261F665E4(v30);
  __break(1u);
}

void sub_261FF55F4()
{
  OUTLINED_FUNCTION_96();
  v2 = *v0;
  v3 = sub_262039FAC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_16_10();
  OUTLINED_FUNCTION_9_5();
  v81 = sub_262039FEC();
  v7 = OUTLINED_FUNCTION_0(v81);
  v80 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_16_10();
  v79 = v11;
  OUTLINED_FUNCTION_9_5();
  v78 = sub_26203A03C();
  v12 = OUTLINED_FUNCTION_0(v78);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_16_10();
  v77 = v15;
  OUTLINED_FUNCTION_9_5();
  v16 = sub_26203A5AC();
  v17 = OUTLINED_FUNCTION_0(v16);
  v82 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_74();
  v21 = sub_262039F9C();
  v22 = OUTLINED_FUNCTION_0(v21);
  v85 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_88_1();
  v84 = v27;
  OUTLINED_FUNCTION_266();
  v29 = *(v28 + 80);
  OUTLINED_FUNCTION_266();
  v31 = *(v30 + 88);
  OUTLINED_FUNCTION_110_0();
  v32 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_195();
  v76 = v29;
  v75 = v31;
  v38 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_0(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_37();
  sub_261F798CC(v1);
  OUTLINED_FUNCTION_75();
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_17;
  }

  v44 = sub_261FF246C();
  if (v44)
  {
    v45 = sub_261F665E4(v44);
    __break(1u);
    goto LABEL_16;
  }

  v45 = sub_261FF24D0();
  if (v45)
  {
LABEL_16:
    sub_261F665E4(v45);
    __break(1u);
LABEL_17:
    v71 = *(v40 + 8);
    v72 = OUTLINED_FUNCTION_75();
    v73(v72);
    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_253();
    OUTLINED_FUNCTION_252();
    sub_26203A91C();
    __break(1u);
    return;
  }

  v46 = v21;

  sub_261FF2510();
  OUTLINED_FUNCTION_162_0();
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  v47 = *(v34 + 8);
  v48 = OUTLINED_FUNCTION_162_0();
  v49(v48);
  if (qword_28108B420 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_146();
  v50 = byte_28108B438;
  v51 = qword_28108B440;

  v52 = OUTLINED_FUNCTION_72();
  sub_261F83F58(v52, v53, v50, v51);
  OUTLINED_FUNCTION_61_2();

  if (v51 > 0)
  {
    *v84 = v51;
    v54 = *MEMORY[0x277D85188];
    v83 = *(v85 + 104);
    v83();
    sub_261F9B6D0(0, &qword_28108B2A8, 0x277D85CA0);
    v55 = sub_261F6E294();
    v86[0] = MEMORY[0x277D84F90];
    sub_261F6E4A4(&unk_28108B2B0, MEMORY[0x277D85278]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA2B8, &qword_2620440C0);
    OUTLINED_FUNCTION_25_2();
    sub_261F67F70(v56, &unk_27FEFA2B8, &qword_2620440C0);
    sub_26203A75C();
    sub_26203A5CC();

    v57 = *(v82 + 8);
    v58 = OUTLINED_FUNCTION_204();
    v59(v58);
    sub_261FF255C();
    if (sub_261FF2534())
    {
      ObjectType = swift_getObjectType();
      sub_26203A02C();
      *v74 = 500;
      (v83)(v74, *MEMORY[0x277D85178], v46);
      MEMORY[0x266722B00](v77, v84, v74, ObjectType);
      swift_unknownObjectRelease();
      (*(v85 + 8))(v74, v46);
      v61 = OUTLINED_FUNCTION_99();
      v62(v61, v78);
    }

    if (sub_261FF2534())
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_63();
      v63 = swift_allocObject();
      OUTLINED_FUNCTION_270(v63);
      swift_weakInit();
      OUTLINED_FUNCTION_107();
      v64 = swift_allocObject();
      v64[2] = v76;
      v64[3] = v75;
      v64[4] = v85 + 104;
      v86[4] = sub_261F7B990;
      v86[5] = v64;
      v86[0] = MEMORY[0x277D85DD0];
      v86[1] = 1107296256;
      v86[2] = sub_261F78F64;
      v86[3] = &block_descriptor_35;
      v65 = _Block_copy(v86);

      sub_262039FCC();
      sub_261FF0554();
      OUTLINED_FUNCTION_133_0();
      sub_26203A5EC();
      _Block_release(v65);
      swift_unknownObjectRelease();
      v66 = OUTLINED_FUNCTION_99();
      v67(v66);
      (*(v80 + 8))(v79, v81);
    }

    if (sub_261FF2534())
    {
      swift_getObjectType();
      sub_26203A62C();
      swift_unknownObjectRelease();
    }

    v68 = *(v85 + 8);
    v69 = OUTLINED_FUNCTION_177_0();
    v70(v69);
  }

  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FF5E0C()
{
  OUTLINED_FUNCTION_23_4();
  v1 = *(v0 + 80);
  v3 = *(v2 + 88);
  v4 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_75();
  swift_storeEnumTagMultiPayload();
  sub_261F6D760();
  v10 = *(v6 + 8);
  v11 = OUTLINED_FUNCTION_75();
  return v12(v11);
}

uint64_t sub_261FF5EE8(char a1, uint64_t a2)
{
  type metadata accessor for TunnelEndpoint.State.Groups();
  v4 = type metadata accessor for TunnelEndpoint.State();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = &v18 - v9;
  v11 = &v18 + *(v8 + 48) - v9;
  *(&v18 - v9) = a1;
  (*(*(v4 - 8) + 16))(v11, a2, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1)
  {
    if (a1 == 1)
    {
      if ((EnumCaseMultiPayload - 10) < 2 || EnumCaseMultiPayload == 1)
      {
        return 1;
      }
    }

    else if (EnumCaseMultiPayload == 1 || EnumCaseMultiPayload == 11)
    {
      return 1;
    }
  }

  else if ((EnumCaseMultiPayload - 10) < 2)
  {
    return 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
    v16 = sub_26203965C();
    (*(*(v16 - 8) + 8))(&v11[v15], v16);
    return 1;
  }

  (*(v6 + 8))(v10, TupleTypeMetadata2);
  return 0;
}

BOOL sub_261FF60E4(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_261F7D264(*a1, *a2);
}

uint64_t sub_261FF60F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_261F91950(*v1);
}

uint64_t sub_261FF6104(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_261F7D274(a1, *v2);
}

uint64_t sub_261FF6110(uint64_t a1, uint64_t a2)
{
  sub_26203ADDC();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_261F7D274(v7, *v2);
  return sub_26203AE0C();
}

uint64_t sub_261FF6158(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  v6 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
      v6 = *v5;
      break;
    case 2u:
      v6 = *v5;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798) + 48);
      v8 = sub_26203965C();
      (*(*(v8 - 8) + 8))(&v5[v7], v8);
      break;
    case 4u:
    case 5u:
    case 0xAu:
    case 0xBu:
      return v6;
    case 6u:
    case 7u:
    case 8u:
      v6 = 1;
      break;
    default:
      (*(v2 + 8))(v5, a1);
      v6 = 2;
      break;
  }

  return v6;
}

uint64_t sub_261FF62D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_261FF4548(a1, a2);
}

void sub_261FF62E0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_43_1();
  v2 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_146();
  if (swift_weakLoadStrong())
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
    v9 = OUTLINED_FUNCTION_75();
    sub_261F79740(v9, v10);
    sub_261F674BC(v0, v1 + v8, &qword_27FEFA2D0, &qword_262045930);
    OUTLINED_FUNCTION_98_0();
    swift_storeEnumTagMultiPayload();
    sub_261F6D760(v1);

    v11 = *(v4 + 8);
    v12 = OUTLINED_FUNCTION_98_0();
    v13(v12);
  }

  OUTLINED_FUNCTION_22_2();
}

uint64_t sub_261FF640C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = sub_26203A6DC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  sub_261F7A074(&v9 - v5);
  result = __swift_getEnumTagSinglePayload(v6, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = (*(*(v1 + 88) + 40))(v2);
    (*(*(v2 - 8) + 8))(v6, v2);
    return v8;
  }

  return result;
}

uint64_t sub_261FF6540()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  sub_261FF23A0();
  v4 = type metadata accessor for TunnelInterfaceParameters();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *&v3[*(v4 + 24)];
    sub_261FFEE7C(v3, type metadata accessor for TunnelInterfaceParameters);
    return v6;
  }

  return result;
}

uint64_t sub_261FF6608(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TunnelEndpoint.Event();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_261F79740(a3, v9);
    *(v9 + 5) = a1;
    swift_storeEnumTagMultiPayload();
    v11 = a1;
    sub_261F6D760(v9);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

const void *sub_261FF673C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_261FBA4C4(*(a1 + 16), 0);
  v4 = sub_261FFDF50(&v6, v3 + 32, v2, a1);
  sub_261FFED8C();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_261FF67CC()
{
  OUTLINED_FUNCTION_43_1();
  sub_26203965C();
  OUTLINED_FUNCTION_10_8();
  sub_261F6E4A4(v0, v1);
  OUTLINED_FUNCTION_151_0();
  return sub_26203ABAC();
}

uint64_t sub_261FF6820(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
  return sub_26203A20C();
}

double sub_261FF6864@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261FA3868(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98A8, &unk_2620447A0);
    sub_26203A8EC();
    v12 = *(*(v16 + 48) + 16 * v9 + 8);

    v13 = (*(v16 + 56) + 48 * v9);
    v14 = v13[1];
    *a3 = *v13;
    a3[1] = v14;
    a3[2] = v13[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    sub_261F67F70(qword_28108CBA0, &qword_27FEF98B0, &unk_26203F690);
    sub_26203A90C();
    *v4 = v16;
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

double sub_261FF6998@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_261FA3868(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF98C0, &qword_26203F6A0);
    sub_26203A8EC();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_261F797BC((*(v14 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    sub_261F67F70(qword_28108CBA0, &qword_27FEF98B0, &unk_26203F690);
    sub_26203A90C();
    *v4 = v14;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_261FF6AE0(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_72();
  return v4(v3);
}

uint64_t sub_261FF6B34()
{
  v0 = *(sub_261FF2098() + 16);

  return v0;
}

uint64_t sub_261FF6B64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = type metadata accessor for TunnelEndpoint.Event();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA370, &qword_2620447C8) + 48);
    *v9 = a2;
    v12 = sub_26203965C();
    (*(*(v12 - 8) + 16))(&v9[v11], a3, v12);
    swift_storeEnumTagMultiPayload();
    v13 = a2;
    sub_261F6D760(v9);

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_261FF6CE8(uint64_t a1)
{
  sub_261F79740(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
  return sub_26203A20C();
}

uint64_t sub_261FF6D2C()
{
  v0 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_126_0();
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_98_0();
  v7(v6);
  return sub_26203A20C();
}

uint64_t sub_261FF6DD8(uint64_t a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = type metadata accessor for TunnelEndpoint.State();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  sub_261F798CC(&v7 - v5);
  return sub_26203A20C();
}

void sub_261FF6E8C()
{
  OUTLINED_FUNCTION_96();
  v2 = v1;
  v88 = v3;
  v89 = v4;
  v6 = v5;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  OUTLINED_FUNCTION_6_1(v85);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_44();
  v86 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA360, &qword_2620447B8);
  v12 = OUTLINED_FUNCTION_40(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  v18 = type metadata accessor for TunnelMessage();
  v19 = OUTLINED_FUNCTION_6_1(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_6_0();
  v84 = v22;
  OUTLINED_FUNCTION_29();
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v84 - v25;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_88_1();
  v87 = v27;
  OUTLINED_FUNCTION_9_5();
  v28 = sub_26203A07C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_74();
  v36 = (v35 - v34);
  *v36 = sub_261F6E294();
  (*(v31 + 104))(v36, *MEMORY[0x277D85200], v28);
  v37 = sub_26203A0AC();
  v38 = *(v31 + 8);
  v39 = OUTLINED_FUNCTION_59_0();
  v40(v39);
  if (v37)
  {
    v41 = v6[3];
    v42 = v6[4];
    v43 = OUTLINED_FUNCTION_133_0();
    __swift_project_boxed_opaque_existential_0Tm(v43, v44);
    OUTLINED_FUNCTION_164_0();
    v45 = OUTLINED_FUNCTION_61_2();
    v46(v45, v42);
    v47 = sub_261FF20DC();
    v48 = OUTLINED_FUNCTION_94();
    sub_261F7DCD0(v48, v49, v47);
    OUTLINED_FUNCTION_128_0();

    if (v2)
    {
      sub_261FD46AC(v2);

      v50 = OUTLINED_FUNCTION_211();
      if (__swift_getEnumTagSinglePayload(v50, v51, v18) != 1)
      {
        OUTLINED_FUNCTION_3_19();
        sub_261FFEEEC(v17, v87);
        v52 = v6[3];
        v53 = v6[4];
        v54 = OUTLINED_FUNCTION_133_0();
        __swift_project_boxed_opaque_existential_0Tm(v54, v55);
        OUTLINED_FUNCTION_80_1();
        v56 = OUTLINED_FUNCTION_18_5();
        v57(v56);
        v58 = sub_261FF2120();
        OUTLINED_FUNCTION_155_0();
        v62 = sub_261FF0340(v59, v60, v61);
        if (*v63)
        {
          sub_261FF0460(v0);
          (v62)(v92, 0);

          v58(v91, 0);
          v64 = 0;
        }

        else
        {
          (v62)(v92, 0);

          v58(v91, 0);
          v64 = 1;
        }

        __swift_storeEnumTagSinglePayload(v0, v64, 1, v18);
        sub_261F66E60(v0, &unk_27FEFA360, &qword_2620447B8);
        v0 = sub_26203A4AC();
        if (qword_28108B618 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_108_0();
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v18);
    }

    sub_261F66E60(v17, &unk_27FEFA360, &qword_2620447B8);
    v68 = v6[3];
    v69 = v6[4];
    __swift_project_boxed_opaque_existential_0Tm(v6, v68);
    (*(v69 + 40))(v88, v89, v68, v69);
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  OUTLINED_FUNCTION_0_27();
  swift_once();
LABEL_10:
  v70 = qword_28108B620;
  OUTLINED_FUNCTION_3_19();
  sub_261FFEE24(v87, v26);
  sub_261F79740(v6, v91);
  if (os_log_type_enabled(v70, v0))
  {
    OUTLINED_FUNCTION_57_1();
    v71 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v90 = swift_slowAlloc();
    *v71 = 136315394;
    sub_261FFEE24(v26, v84);
    sub_26203A20C();
    sub_261FFEE7C(v26, type metadata accessor for TunnelMessage);
    v72 = OUTLINED_FUNCTION_94();
    sub_261F67FE4(v72, v73, v74);
    OUTLINED_FUNCTION_128_0();

    *(v71 + 4) = type metadata accessor for TunnelMessage;
    *(v71 + 12) = 2080;
    v75 = v91[4];
    __swift_project_boxed_opaque_existential_0Tm(v91, v91[3]);
    OUTLINED_FUNCTION_164_0();
    v76 = OUTLINED_FUNCTION_61_2();
    v77(v76, v75);
    v93 = 0x5F6E6F6374;
    v94 = 0xE500000000000000;
    MEMORY[0x266722710](v92[0], v92[1]);
    v78 = v93;
    v79 = v94;

    __swift_destroy_boxed_opaque_existential_0Tm(v91);
    sub_261F67FE4(v78, v79, &v90);
    OUTLINED_FUNCTION_128_0();

    *(v71 + 14) = v78;
    _os_log_impl(&dword_261F5B000, v70, v0, "Returning pre-read message %s for connection %s", v71, 0x16u);
    swift_arrayDestroy();
    v80 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v80);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  else
  {
    OUTLINED_FUNCTION_1_20();
    sub_261FFEE7C(v26, v81);
    __swift_destroy_boxed_opaque_existential_0Tm(v91);
  }

  OUTLINED_FUNCTION_103_0();
  v82 = v86;
  v83 = v87;
  sub_261FFEE24(v87, v86);
  swift_storeEnumTagMultiPayload();
  v88(v82);
  sub_261F66E60(v82, &qword_27FEFA2D0, &qword_262045930);
  sub_261FFEE7C(v83, v0);
LABEL_14:
  OUTLINED_FUNCTION_31_0();
}

uint64_t sub_261FF74C0@<X0>(_OWORD *a1@<X8>)
{
  v2 = sub_261FF2098();
  v4 = sub_261FFBDB8(v2);
  sub_261FFBD4C(&v4);

  sub_261FD47F8(v4, a1);
}

void sub_261FF7550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v22;
  a20 = v23;
  v256 = v21;
  v277 = v24;
  v251 = v25;
  OUTLINED_FUNCTION_23_4();
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_60_2();
  v29 = *(v28 + 88);
  OUTLINED_FUNCTION_157();
  v250 = type metadata accessor for TunnelEndpoint.Event();
  v30 = OUTLINED_FUNCTION_0(v250);
  v249 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_140(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910);
  OUTLINED_FUNCTION_40(v36);
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_140(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2A0, &qword_2620440B0);
  v42 = OUTLINED_FUNCTION_40(v41);
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_88_1();
  v242 = v46;
  OUTLINED_FUNCTION_9_5();
  v254 = sub_262039ACC();
  v47 = OUTLINED_FUNCTION_0(v254);
  v260 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_16_10();
  v261 = v51;
  OUTLINED_FUNCTION_9_5();
  v255 = type metadata accessor for TunnelInterfaceParameters();
  v52 = OUTLINED_FUNCTION_6_1(v255);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_16_10();
  v257 = v55;
  OUTLINED_FUNCTION_9_5();
  v56 = type metadata accessor for TunnelMessage();
  v57 = OUTLINED_FUNCTION_6_1(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_140(v63);
  v267 = v27;
  v268 = v29;
  v64 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_206();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_0(TupleTypeMetadata2);
  v264 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_37();
  OUTLINED_FUNCTION_16();
  v71 = v70;
  v73 = *(v72 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  v76 = MEMORY[0x28223BE20](v75);
  v78 = &v241 - v77;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_117_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v81);
  v83 = &v241 - v82;
  v263 = v20;
  sub_261F798CC(&v241 - v82);
  v265 = TupleTypeMetadata2;
  v84 = *(TupleTypeMetadata2 + 48);
  v85 = v83;
  v86 = v27;
  (*(v71 + 32))(v27, v85, v64);
  OUTLINED_FUNCTION_3_19();
  sub_261FFEE24(v277, v27 + v84);
  v266 = v56;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_19();
      v152 = v259;
      sub_261FFEE24(v27 + v84, v259);
      OUTLINED_FUNCTION_133_0();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        sub_261F66E60(v152, &qword_27FEF9E10, &qword_2620447B0);
        goto LABEL_32;
      }

      v258 = v84;
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
      v154 = v153[12];
      v155 = *(v152 + v153[16]);
      v156 = *(v152 + v153[20]);
      OUTLINED_FUNCTION_4_13();
      v157 = v257;
      sub_261FFEEEC(v152, v257);
      v158 = v254;
      (*(v260 + 32))(v261, v152 + v154, v254);
      v159 = sub_26203A4AC();
      if (qword_28108B618 != -1)
      {
        OUTLINED_FUNCTION_0_27();
        swift_once();
      }

      v160 = qword_28108B620;
      if (os_log_type_enabled(qword_28108B620, v159))
      {
        OUTLINED_FUNCTION_42_1();
        v161 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v162 = v86;
        v163 = swift_slowAlloc();
        *&v274 = v163;
        *v161 = 136446210;
        OUTLINED_FUNCTION_264();
        v164 = sub_261F7C884();
        v166 = sub_261F67FE4(v164, v165, &v274);

        *(v161 + 4) = v166;
        _os_log_impl(&dword_261F5B000, v160, v159, "%{public}s: Client received handshake response", v161, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v163);
        v86 = v162;
        v158 = v254;
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        v157 = v257;
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      v167 = *(v157 + *(v255 + 24));
      v168 = v268;
      v169 = *(v268 + 16);
      v170 = OUTLINED_FUNCTION_131();
      if (v167 >= v171(v170) && (v172 = *(v168 + 24), v173 = OUTLINED_FUNCTION_131(), v167 <= v174(v173)))
      {
        v208 = sub_262039AAC();
        v210 = sub_261FD460C(v208, v209);
        v211 = OUTLINED_FUNCTION_135();
        sub_261F6BFFC(v211, v212);
        if ((v210 & 0x1FF) == 0xFD && (v213 = sub_262039AAC(), v215 = sub_261FD460C(v213, v214), v216 = OUTLINED_FUNCTION_135(), sub_261F6BFFC(v216, v217), (v215 & 0x1FF) == 0xFD))
        {
          OUTLINED_FUNCTION_4_13();
          sub_261FFEE24(v157, v242);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v218, v219, v220, v255);
          OUTLINED_FUNCTION_264();
          sub_261FF23FC();
          v221 = v260;
          OUTLINED_FUNCTION_248();
          v222 = v261;
          v223(v243, v261, v158);
          OUTLINED_FUNCTION_182_0();
          __swift_storeEnumTagSinglePayload(v224, v225, v226, v158);
          sub_261FF1A04();
          sub_261FF1B80(v155);
          *&v274 = v156;
          BYTE8(v274) = 0;
          sub_261FF1C68(&v274);
          v227 = v248;
          swift_storeEnumTagMultiPayload();
          sub_261FF2200(v227);
          v228 = v244;
          *v244 = 0;
          OUTLINED_FUNCTION_256();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_288();
          sub_261F6E52C(v228);
          OUTLINED_FUNCTION_20_6(&v274);
          v229 = OUTLINED_FUNCTION_256();
          v230(v229);
          (*(v221 + 8))(v222, v158);
          OUTLINED_FUNCTION_2_19();
          v180 = v157;
        }

        else
        {
          OUTLINED_FUNCTION_198();
          sub_26203A7CC();
          OUTLINED_FUNCTION_193();
          MEMORY[0x266722710](v231 + 27, v232 | 0x8000000000000000);
          OUTLINED_FUNCTION_258();
          sub_26203A8CC();
          MEMORY[0x266722710](0x65746F6D6572202CLL, 0xEB00000000203D20);
          v233 = v261;
          OUTLINED_FUNCTION_258();
          sub_26203A8CC();
          MEMORY[0x266722710](41, 0xE100000000000000);
          sub_261F9BCE0();
          OUTLINED_FUNCTION_69_2();
          OUTLINED_FUNCTION_276();
          sub_261F9D610();
          OUTLINED_FUNCTION_19();
          swift_allocError();
          OUTLINED_FUNCTION_68_2();
          swift_willThrow();
          OUTLINED_FUNCTION_20_6(&a12);
          v234(v233, v158);
          OUTLINED_FUNCTION_2_19();
          v180 = v257;
        }
      }

      else
      {
        OUTLINED_FUNCTION_198();
        sub_26203A7CC();
        OUTLINED_FUNCTION_193();
        MEMORY[0x266722710](v175 + 5, v176 | 0x8000000000000000);
        LOWORD(v271) = v167;
        v177 = sub_26203ABAC();
        MEMORY[0x266722710](v177);

        sub_261F9BCE0();
        OUTLINED_FUNCTION_69_2();
        OUTLINED_FUNCTION_276();
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_68_2();
        swift_willThrow();
        OUTLINED_FUNCTION_20_6(&a12);
        v178(v261, v158);
        OUTLINED_FUNCTION_2_19();
        v180 = v157;
      }

      sub_261FFEE7C(v180, v179);
      goto LABEL_39;
    case 2u:
      OUTLINED_FUNCTION_3_19();
      v258 = v84;
      v102 = v262;
      sub_261FFEE24(v27 + v84, v262);
      v260 = *v102;
      v103 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
      v104 = *(v71 + 16);
      v261 = v27;
      v104(v29, v27, v64);
      v105 = sub_261FF5EE8(2, v29);
      v106 = *(v71 + 8);
      v107 = OUTLINED_FUNCTION_159_0();
      v106(v107);
      if (v105)
      {
        v108 = v263;
        sub_261F798CC(v253);
        v109 = sub_261FF6158(v64);
        v110 = OUTLINED_FUNCTION_59_0();
        v259 = v71 + 8;
        v106(v110);
        if (v109 != 2 && (v109 & 1) != 0)
        {
          v279 = v64;
          v111 = v251;
          OUTLINED_FUNCTION_229();
          v112 = OUTLINED_FUNCTION_50_2();
          v113(v112);
          v114 = *(*v108 + 192);
          OUTLINED_FUNCTION_36_1();
          swift_beginAccess();
          v115 = OUTLINED_FUNCTION_159_0();
          sub_26202CE60(v115, v116, v117);
          swift_endAccess();

          v118 = *(&v275 + 1);
          sub_261F66E60(&v274, &qword_27FEFA288, &qword_262044098);
          if (v118)
          {
            OUTLINED_FUNCTION_229();
            v119 = OUTLINED_FUNCTION_50_2();
            v120(v119);
            v121 = v269;
            v122 = v270;
            sub_261F79740(v111, &v274);
            *(&v276 + 1) = v260;
            v123 = *(*v108 + 184);
            OUTLINED_FUNCTION_36_1();
            swift_beginAccess();
            sub_262029D2C();
            swift_endAccess();
            v124 = v245;
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_229();
            OUTLINED_FUNCTION_63();
            v125 = swift_allocObject();
            OUTLINED_FUNCTION_270(v125);
            swift_weakInit();
            sub_261F79740(v111, &v274);
            v126 = OUTLINED_FUNCTION_167();
            v127 = v268;
            v126[2] = v267;
            v126[3] = v127;
            v126[4] = v111;
            sub_261F797BC(&v274, (v126 + 5));
            v128 = *(v122 + 24);

            OUTLINED_FUNCTION_258();
            v128();

            OUTLINED_FUNCTION_103_0();
            sub_261FFEE7C(v124, v129);

            v130 = OUTLINED_FUNCTION_197();
            sub_261F66E60(v130, v131, v132);
            v133 = v261;
            sub_261FFEE7C(v258 + v261, v121);
            v134 = v133;
          }

          else
          {
            v235 = OUTLINED_FUNCTION_197();
            sub_261F66E60(v235, v236, v237);
            OUTLINED_FUNCTION_1_20();
            v238 = v261;
            sub_261FFEE7C(v258 + v261, v239);
            v134 = v238;
          }

          (v106)(v134, v279);
          goto LABEL_48;
        }

        v183 = OUTLINED_FUNCTION_197();
      }

      else
      {
        v181 = &qword_27FEFA270;
        v182 = &qword_262041910;
        v183 = v102 + v103;
      }

      sub_261F66E60(v183, v181, v182);
      v86 = v261;
LABEL_32:
      sub_261F9BCE0();
      sub_26203AD3C();
      OUTLINED_FUNCTION_276();
      v269 = 0;
      v270 = 0xE000000000000000;
      sub_26203A7CC();
      MEMORY[0x266722710](0xD000000000000024, 0x80000002620515A0);
      sub_26203A8CC();
      MEMORY[0x266722710](46, 0xE100000000000000);
      sub_261F9D610();
      OUTLINED_FUNCTION_72_0();
      swift_allocError();
      sub_26203AD4C();
      swift_willThrow();
      OUTLINED_FUNCTION_20_6(&a16);
      v184(v86, v265);
      goto LABEL_48;
    case 3u:
      (*(v71 + 16))(v78, v27, v64);
      v135 = sub_261FF5EE8(2, v78);
      v136 = *(v71 + 8);
      v137 = OUTLINED_FUNCTION_209();
      v136(v137);
      if ((v135 & 1) == 0)
      {
        goto LABEL_32;
      }

      sub_261F798CC(v252);
      v138 = sub_261FF6158(v64);
      v139 = OUTLINED_FUNCTION_59_0();
      v136(v139);
      if (v138 == 2 || (v138 & 1) != 0)
      {
        goto LABEL_32;
      }

      v140 = v251[4];
      __swift_project_boxed_opaque_existential_0Tm(v251, v251[3]);
      v141 = OUTLINED_FUNCTION_50_2();
      v142(v141);
      OUTLINED_FUNCTION_264();
      v143 = sub_261FF2178();
      OUTLINED_FUNCTION_159_0();
      sub_261FA1BC8(v143, v144);

      if (*(&v272 + 1))
      {
        v274 = v271;
        v275 = v272;
        v276 = v273;
        sub_261FF8A80(&v274, v145, v146, v147, v148, v149, v150, v151, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252);
        sub_261FFEDE8(&v274);
      }

      else
      {
        sub_261F66E60(&v271, &qword_27FEFA340, &qword_262044790);
      }

      OUTLINED_FUNCTION_1_20();
      sub_261FFEE7C(v86 + v84, v240);
      (v136)(v86, v64);
      goto LABEL_48;
    default:
      OUTLINED_FUNCTION_3_19();
      v87 = v258;
      sub_261FFEE24(v27 + v84, v258);
      v88 = *v87;
      v89 = *(v87 + 1);
      v90 = *(v87 + 2);
      OUTLINED_FUNCTION_133_0();
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_32;
      }

      v266 = v89;
      v278 = v64;
      v258 = v84;
      v91 = sub_26203A4AC();
      if (qword_28108B618 != -1)
      {
        OUTLINED_FUNCTION_0_27();
        swift_once();
      }

      v92 = qword_28108B620;
      if (os_log_type_enabled(qword_28108B620, v91))
      {
        OUTLINED_FUNCTION_42_1();
        v93 = swift_slowAlloc();
        OUTLINED_FUNCTION_30();
        v94 = swift_slowAlloc();
        *&v274 = v94;
        *v93 = 136446210;
        OUTLINED_FUNCTION_264();
        v95 = sub_261F7C884();
        sub_261F67FE4(v95, v96, &v274);
        OUTLINED_FUNCTION_142_0();

        *(v93 + 4) = v86;
        _os_log_impl(&dword_261F5B000, v92, v91, "%{public}s: Server received handshake request", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      v97 = (*(v268 + 16))();
      v98 = v263;
      if (v88 < v97)
      {
        OUTLINED_FUNCTION_198();
        sub_26203A7CC();
        OUTLINED_FUNCTION_193();
        MEMORY[0x266722710](v99 + 4, v100 | 0x8000000000000000);
        LOWORD(v271) = v88;
        v101 = sub_26203ABAC();
        MEMORY[0x266722710](v101);

        MEMORY[0x266722710](46, 0xE100000000000000);
        sub_261F9BCE0();
        OUTLINED_FUNCTION_69_2();
        OUTLINED_FUNCTION_276();
        sub_261F9D610();
        OUTLINED_FUNCTION_19();
        swift_allocError();
        OUTLINED_FUNCTION_68_2();
        swift_willThrow();
        goto LABEL_39;
      }

      v185 = v247;
      sub_261FF23A0();
      v186 = v255;
      OUTLINED_FUNCTION_150_0(v185, 1, v255);
      if (v187)
      {
        __break(1u);
        goto LABEL_50;
      }

      v188 = *(v185 + *(v186 + 24));
      OUTLINED_FUNCTION_2_19();
      sub_261FFEE7C(v185, v189);
      v190 = v98 + *(*v98 + 240);
      OUTLINED_FUNCTION_148();
      swift_beginAccess();
      OUTLINED_FUNCTION_150_0(v190, 1, v186);
      if (v187)
      {
LABEL_50:
        __break(1u);
        return;
      }

      if (v188 >= v88)
      {
        v191 = v88;
      }

      else
      {
        v191 = v188;
      }

      *(v190 + *(v186 + 24)) = v191;
      *&v274 = v90;
      BYTE8(v274) = 0;
      sub_261FF1C68(&v274);
      v192 = v98 + *(*v98 + 160);
      v193 = v266;
      *v192 = v266;
      *(v192 + 8) = 0;
      v194 = v251;
      v195 = v251[3];
      v196 = v251[4];
      v197 = OUTLINED_FUNCTION_256();
      __swift_project_boxed_opaque_existential_0Tm(v197, v198);
      v199 = *(v196 + 8);
      v200 = OUTLINED_FUNCTION_159_0();
      v201(v200);
      sub_261F79740(v194, &v274);
      *(&v276 + 1) = v193;
      v202 = *(*v98 + 168);
      OUTLINED_FUNCTION_36_1();
      swift_beginAccess();
      sub_262029D2C();
      swift_endAccess();
      v203 = v248;
      swift_storeEnumTagMultiPayload();
      sub_261FF2200(v203);
      v204 = v246;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_288();
      sub_261F6E52C(v204);
      v205 = OUTLINED_FUNCTION_99();
      v206(v205, v278);
LABEL_39:
      OUTLINED_FUNCTION_1_20();
      sub_261FFEE7C(v258 + v86, v207);
LABEL_48:
      OUTLINED_FUNCTION_38_0();
      return;
  }
}

uint64_t sub_261FF897C()
{
  OUTLINED_FUNCTION_43_1();
  v2 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_146();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = OUTLINED_FUNCTION_75();
    sub_261F79740(v9, v10);
    *(v1 + 40) = v0;
    OUTLINED_FUNCTION_98_0();
    swift_storeEnumTagMultiPayload();
    v11 = v0;
    sub_261F6D760(v1);

    v12 = *(v4 + 8);
    v13 = OUTLINED_FUNCTION_98_0();
    return v14(v13);
  }

  return result;
}

void sub_261FF8A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_96();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v26 = *v20;
  v193 = sub_26203965C();
  v27 = OUTLINED_FUNCTION_0(v193);
  v192 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_54();
  v33 = v31 - v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_88_1();
  OUTLINED_FUNCTION_140(v35);
  OUTLINED_FUNCTION_266();
  v37 = *(v36 + 80);
  OUTLINED_FUNCTION_266();
  v39 = *(v38 + 88);
  OUTLINED_FUNCTION_157();
  v40 = type metadata accessor for TunnelEndpoint.State();
  v41 = OUTLINED_FUNCTION_0(v40);
  v197 = v42;
  v198 = v41;
  v44 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_26_0();
  MEMORY[0x28223BE20](v46);
  v48 = &v188 - v47;
  OUTLINED_FUNCTION_157();
  v196 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_0(v196);
  v195 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v52);
  v54 = &v188 - v53;
  v55 = v25[3];
  v56 = v25[4];
  v57 = OUTLINED_FUNCTION_59_0();
  __swift_project_boxed_opaque_existential_0Tm(v57, v58);
  OUTLINED_FUNCTION_80_1();
  v59 = OUTLINED_FUNCTION_18_5();
  v60(v59);
  OUTLINED_FUNCTION_40_4();
  v62 = *(v61 + 184);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  v63 = OUTLINED_FUNCTION_42_3();
  sub_26202CD88(v63, v64, v65);
  sub_261F66E60(v203, &qword_27FEFA340, &qword_262044790);
  swift_endAccess();

  v66 = v25[3];
  v67 = v25[4];
  v68 = OUTLINED_FUNCTION_59_0();
  __swift_project_boxed_opaque_existential_0Tm(v68, v69);
  OUTLINED_FUNCTION_80_1();
  v70 = OUTLINED_FUNCTION_18_5();
  v71(v70);
  v72 = OUTLINED_FUNCTION_137_0();
  sub_261FA5688(v72, v73);
  OUTLINED_FUNCTION_40_4();
  v75 = *(v74 + 168);
  OUTLINED_FUNCTION_36_1();
  swift_beginAccess();
  OUTLINED_FUNCTION_155_0();
  sub_262029D2C();
  swift_endAccess();
  v76 = sub_26203A4AC();
  if (qword_28108B618 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  v189 = v33;
  v77 = qword_28108B620;
  v78 = OUTLINED_FUNCTION_137_0();
  sub_261FA5688(v78, v79);
  if (os_log_type_enabled(v77, v76))
  {
    swift_retain_n();
    OUTLINED_FUNCTION_30();
    v80 = swift_slowAlloc();
    v188 = v25;
    v81 = v80;
    OUTLINED_FUNCTION_56();
    v199[0] = swift_slowAlloc();
    *v81 = 136446722;
    v82 = sub_261F7C884();
    v84 = sub_261F67FE4(v82, v83, v199);

    *(v81 + 4) = v84;
    *(v81 + 12) = 2080;
    sub_261F79740(v203, v201);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
    v85 = sub_26203A20C();
    v87 = v86;
    sub_261FFEDE8(v203);
    v88 = sub_261F67FE4(v85, v87, v199);

    *(v81 + 14) = v88;
    *(v81 + 22) = 2048;
    v89 = *(sub_261FF2098() + 16);

    *(v81 + 24) = v89;

    v90 = v77;
    _os_log_impl(&dword_261F5B000, v77, v76, "%{public}s: Starting packet transfer on new connection %s. Current connection pool count = %ld", v81, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v25 = v188;
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  else
  {
    v90 = v77;
    sub_261FFEDE8(v203);
  }

  v91 = v197;
  sub_261F79740(v25, v54);
  swift_storeEnumTagMultiPayload();
  sub_261F6D760(v54);
  OUTLINED_FUNCTION_20_6(&a18);
  v92 = OUTLINED_FUNCTION_209();
  v93(v92);
  sub_261F798CC(v48);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v95 = *(v91 + 8);
  v96 = OUTLINED_FUNCTION_204();
  v95(v96);
  if (EnumCaseMultiPayload == 11)
  {
    v97 = sub_26203A4AC();
    v98 = OUTLINED_FUNCTION_137_0();
    sub_261FA5688(v98, v99);
    if (os_log_type_enabled(v90, v97))
    {
      OUTLINED_FUNCTION_57_1();
      v100 = swift_slowAlloc();
      OUTLINED_FUNCTION_56();
      v199[0] = swift_slowAlloc();
      *v100 = 136446466;
      v101 = sub_261F7C884();
      sub_261F67FE4(v101, v102, v199);
      OUTLINED_FUNCTION_142_0();

      *(v100 + 4) = v77;
      *(v100 + 12) = 2080;
      sub_261F79740(v203, v201);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
      v103 = sub_26203A20C();
      v105 = v104;
      sub_261FFEDE8(v203);
      sub_261F67FE4(v103, v105, v199);
      OUTLINED_FUNCTION_181_0();

      *(v100 + 14) = v103;
      _os_log_impl(&dword_261F5B000, v90, v97, "%{public}s: Completing unpause with tunnel connection %s", v100, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }

    else
    {
      sub_261FFEDE8(v203);
    }

    v142 = v194;
    *v194 = 0;
    OUTLINED_FUNCTION_45_0();
    swift_storeEnumTagMultiPayload();
    sub_261FF2200(v142);
    v143 = OUTLINED_FUNCTION_137_0();
    sub_261F79740(v143, v144);
LABEL_14:
    sub_261FF1FB8();
LABEL_23:
    v169 = v25[5];
    OUTLINED_FUNCTION_40_4();
    v171 = v23 + *(v170 + 160);
    *v171 = v172;
    v171[8] = 0;
LABEL_24:
    OUTLINED_FUNCTION_31_0();
    return;
  }

  v106 = v190;
  sub_261F798CC(v190);
  OUTLINED_FUNCTION_204();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    LODWORD(v197) = *v106;
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA348, &qword_262044798);
    v108 = v192;
    v109 = &v106[*(v107 + 48)];
    v110 = v193;
    (*(v192 + 32))(v191, v109, v193);
    v111 = v90;
    v112 = sub_26203A4AC();
    v113 = *(v108 + 16);
    v114 = v189;
    v115 = OUTLINED_FUNCTION_42_3();
    v116(v115);
    v117 = OUTLINED_FUNCTION_137_0();
    sub_261FA5688(v117, v118);
    LODWORD(v196) = v112;
    if (os_log_type_enabled(v111, v112))
    {
      OUTLINED_FUNCTION_30();
      v119 = swift_slowAlloc();
      OUTLINED_FUNCTION_101();
      v199[0] = swift_slowAlloc();
      *v119 = 136446722;
      v120 = v108;
      v121 = sub_261F7C884();
      sub_261F67FE4(v121, v122, v199);
      OUTLINED_FUNCTION_73_2();

      OUTLINED_FUNCTION_192();
      OUTLINED_FUNCTION_10_8();
      sub_261F6E4A4(v123, v124);
      v125 = sub_26203ABAC();
      v126 = *(v120 + 8);
      v126(v114, v193);
      v127 = OUTLINED_FUNCTION_131();
      sub_261F67FE4(v127, v128, v129);
      OUTLINED_FUNCTION_67_2();

      *(v119 + 14) = v125;
      *(v119 + 22) = 2080;
      sub_261F79740(v203, v201);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
      v130 = sub_26203A20C();
      sub_261FFEDE8(v203);
      v131 = OUTLINED_FUNCTION_131();
      sub_261F67FE4(v131, v132, v133);
      OUTLINED_FUNCTION_67_2();

      *(v119 + 24) = v130;
      v110 = v193;
      OUTLINED_FUNCTION_271();
      _os_log_impl(v134, v135, v136, v137, v138, v139);
      swift_arrayDestroy();
      v140 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v140);
      v141 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v141);
    }

    else
    {
      sub_261FFEDE8(v203);
      v126 = *(v108 + 8);
      v165 = OUTLINED_FUNCTION_75();
      (v126)(v165);
    }

    if (sub_261FF25B0())
    {
      sub_26203A05C();
    }

    sub_261FF25D8();
    v166 = v194;
    *v194 = v197;
    OUTLINED_FUNCTION_45_0();
    swift_storeEnumTagMultiPayload();
    sub_261FF2200(v166);
    v167 = OUTLINED_FUNCTION_137_0();
    sub_261F79740(v167, v168);
    sub_261FF1FB8();
    v126(v191, v110);
    goto LABEL_23;
  }

  v145 = OUTLINED_FUNCTION_204();
  v95(v145);
  OUTLINED_FUNCTION_40_4();
  v147 = v23 + *(v146 + 160);
  if ((v147[8] & 1) == 0)
  {
    v148 = *v147;
    v149 = v25[5];
    v150 = sub_26203A4AC();
    v151 = OUTLINED_FUNCTION_137_0();
    if (v148 >= v149)
    {
      sub_261FA5688(v151, v152);
      sub_261FA5688(v25, v201);
      if (os_log_type_enabled(v90, v150))
      {
        v173 = swift_slowAlloc();
        OUTLINED_FUNCTION_101();
        v200 = swift_slowAlloc();
        *v173 = 136447234;
        sub_261F7C884();
        OUTLINED_FUNCTION_74_2();
        sub_261F67FE4(v174, v175, v176);
        OUTLINED_FUNCTION_65();

        *(v173 + 4) = v25;
        *(v173 + 12) = 2080;
        sub_261F7B38C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA288, &qword_262044098);
        v177 = OUTLINED_FUNCTION_295();
        v179 = sub_261F67FE4(v177, v178, &v200);

        *(v173 + 14) = v179;
        *(v173 + 22) = 2080;
        sub_261F79740(v203, v199);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
        OUTLINED_FUNCTION_295();
        sub_261FFEDE8(v203);
        v180 = OUTLINED_FUNCTION_47();
        v183 = sub_261F67FE4(v180, v181, v182);

        *(v173 + 24) = v183;
        *(v173 + 32) = 2048;
        v184 = v202;
        sub_261FFEDE8(v201);
        *(v173 + 34) = v184;
        *(v173 + 42) = 2048;
        *(v173 + 44) = v148;
        _os_log_impl(&dword_261F5B000, v90, v150, "%{public}s: Not migrating from %s to new connection %s because priority %ld is lower than %ld", v173, 0x34u);
        swift_arrayDestroy();
        v185 = OUTLINED_FUNCTION_32_4();
        MEMORY[0x266724180](v185);
        OUTLINED_FUNCTION_26();
        MEMORY[0x266724180]();
      }

      else
      {
        sub_261FFEDE8(v201);
        sub_261FFEDE8(v203);
      }

      goto LABEL_24;
    }

    sub_261FA5688(v151, v152);
    sub_261FA5688(v25, v201);
    if (os_log_type_enabled(v90, v150))
    {
      v153 = swift_slowAlloc();
      OUTLINED_FUNCTION_101();
      v200 = swift_slowAlloc();
      *v153 = 136447234;
      sub_261F7C884();
      OUTLINED_FUNCTION_74_2();
      sub_261F67FE4(v154, v155, v156);
      OUTLINED_FUNCTION_142_0();

      *(v153 + 4) = v77;
      *(v153 + 12) = 2080;
      sub_261F7B38C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA288, &qword_262044098);
      OUTLINED_FUNCTION_295();
      OUTLINED_FUNCTION_74_2();
      sub_261F67FE4(v157, v158, v159);
      OUTLINED_FUNCTION_142_0();

      *(v153 + 14) = v77;
      *(v153 + 22) = 2080;
      sub_261F79740(v203, v199);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
      v160 = OUTLINED_FUNCTION_295();
      v162 = v161;
      sub_261FFEDE8(v203);
      sub_261F67FE4(v160, v162, &v200);
      OUTLINED_FUNCTION_181_0();

      *(v153 + 24) = v160;
      *(v153 + 32) = 2048;
      v163 = v202;
      sub_261FFEDE8(v201);
      *(v153 + 34) = v163;
      *(v153 + 42) = 2048;
      *(v153 + 44) = v148;
      _os_log_impl(&dword_261F5B000, v90, v150, "%{public}s: Migrating tunnel connection from %s to new connection %s because priority %ld is higher than %ld", v153, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v164 = OUTLINED_FUNCTION_32_4();
      MEMORY[0x266724180](v164);
    }

    else
    {
      sub_261FFEDE8(v201);
      sub_261FFEDE8(v203);
    }

    v186 = OUTLINED_FUNCTION_137_0();
    sub_261F79740(v186, v187);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_75_2();
  v188 = 1209;
  OUTLINED_FUNCTION_253();
  OUTLINED_FUNCTION_252();
  sub_26203A91C();
  __break(1u);
}

void sub_261FF97CC()
{
  OUTLINED_FUNCTION_96();
  v4 = v0;
  v6 = v5;
  OUTLINED_FUNCTION_23_4();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_60_2();
  v10 = *(v9 + 88);
  v11 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_6_1(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14();
  v15 = &unk_28108B000;
  if (v6)
  {
    v16 = v6;
    v17 = sub_26203A48C();
    if (qword_28108B618 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v18 = qword_28108B620;
    if (os_log_type_enabled(qword_28108B620, v17))
    {
      OUTLINED_FUNCTION_57_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_57_2();
      v99[0] = swift_slowAlloc();
      *v2 = 136446466;
      *(v2 + 4) = sub_261F67FE4(*(v4 + 16), *(v4 + 24), v99);
      *(v2 + 12) = 2082;
      v100 = v6;
      v19 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v20 = sub_26203A20C();
      v3 = sub_261F67FE4(v20, v21, v99);

      *(v2 + 14) = v3;
      _os_log_impl(&dword_261F5B000, v18, v17, "%{public}s: Cancelling TunnelEndpoint due to error %{public}s", v2, 0x16u);
      swift_arrayDestroy();
      v22 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v22);
      v23 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v23);
    }
  }

  else
  {
    v24 = sub_26203A4AC();
    if (qword_28108B618 != -1)
    {
      OUTLINED_FUNCTION_0_27();
      swift_once();
    }

    v18 = qword_28108B620;
    if (os_log_type_enabled(qword_28108B620, v24))
    {
      OUTLINED_FUNCTION_42_1();
      v25 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v26 = swift_slowAlloc();
      v99[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_261F67FE4(*(v4 + 16), *(v4 + 24), v99);
      _os_log_impl(&dword_261F5B000, v18, v24, "%{public}s: Cancelling TunnelEndpoint", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      v27 = OUTLINED_FUNCTION_16_3();
      MEMORY[0x266724180](v27);
      v28 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v28);
    }
  }

  v29 = sub_26203A4AC();
  if (qword_28108B618 != -1)
  {
    OUTLINED_FUNCTION_0_27();
    swift_once();
  }

  if (os_log_type_enabled(v18, v29))
  {
    OUTLINED_FUNCTION_57_1();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v31 = swift_slowAlloc();
    OUTLINED_FUNCTION_251(v31);
    *v30 = 136446466;
    v32 = sub_261F7C884();
    OUTLINED_FUNCTION_219(v32, v33);
    OUTLINED_FUNCTION_154_0();

    *(v30 + 4) = v3;
    *(v30 + 12) = 2080;
    v34 = sub_261FF22B0();
    sub_261FF9FA0(v34, v35);
    OUTLINED_FUNCTION_154_0();

    v36 = MEMORY[0x266722880](v3, MEMORY[0x277D837D0]);
    v15 = v37;

    v38 = OUTLINED_FUNCTION_131();
    sub_261F67FE4(v38, v39, v40);
    OUTLINED_FUNCTION_67_2();

    *(v30 + 14) = v36;
    _os_log_impl(&dword_261F5B000, v18, v29, "%{public}s recent events prior to cancellation: %s", v30, 0x16u);
    OUTLINED_FUNCTION_186_0();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v41 = OUTLINED_FUNCTION_16_3();
    MEMORY[0x266724180](v41);
  }

  v42 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_222(v42))
  {
    OUTLINED_FUNCTION_57_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_57_2();
    v43 = swift_slowAlloc();
    OUTLINED_FUNCTION_251(v43);
    *v29 = 136446466;
    v44 = sub_261F7C884();
    OUTLINED_FUNCTION_219(v44, v45);
    OUTLINED_FUNCTION_73_2();

    OUTLINED_FUNCTION_192();
    v46 = sub_261FF2300();
    sub_261FF9FA0(v46, v47);
    OUTLINED_FUNCTION_73_2();

    v48 = MEMORY[0x266722880](v15, MEMORY[0x277D837D0]);
    v3 = v49;

    v50 = OUTLINED_FUNCTION_45_0();
    sub_261F67FE4(v50, v51, v52);
    OUTLINED_FUNCTION_263();

    *(v29 + 14) = v48;
    OUTLINED_FUNCTION_169_0(&dword_261F5B000, v53, v54, "%{public}s recent incoming packet flow events prior to cancellation: %s");
    OUTLINED_FUNCTION_186_0();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v55 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v55);
  }

  v56 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_222(v56))
  {
    OUTLINED_FUNCTION_57_1();
    swift_slowAlloc();
    OUTLINED_FUNCTION_57_2();
    v57 = swift_slowAlloc();
    OUTLINED_FUNCTION_251(v57);
    *v29 = 136446466;
    v58 = sub_261F7C884();
    OUTLINED_FUNCTION_219(v58, v59);
    OUTLINED_FUNCTION_73_2();

    OUTLINED_FUNCTION_192();
    v60 = sub_261FF2350();
    sub_261FF9FA0(v60, v61);
    OUTLINED_FUNCTION_73_2();

    v62 = MEMORY[0x266722880](v15, MEMORY[0x277D837D0]);
    v3 = v63;

    v64 = OUTLINED_FUNCTION_45_0();
    sub_261F67FE4(v64, v65, v66);
    OUTLINED_FUNCTION_263();

    *(v29 + 14) = v62;
    OUTLINED_FUNCTION_169_0(&dword_261F5B000, v67, v68, "%{public}s recent incoming packet flow events prior to cancellation: %s");
    OUTLINED_FUNCTION_186_0();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    v69 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v69);
  }

  swift_storeEnumTagMultiPayload();
  sub_261FF2200(v1);
  sub_261FF258C();
  OUTLINED_FUNCTION_84();
  sub_261FF24AC();
  if (sub_261FF2534())
  {
    swift_getObjectType();
    sub_26203A61C();
    swift_unknownObjectRelease();
  }

  sub_261FF255C();
  if (v6 && (v70 = sub_261FF24D0()) != 0)
  {
    v71 = v70;
    v72 = v6;
    v73 = sub_26203A48C();
    if (OUTLINED_FUNCTION_222(v73))
    {
      OUTLINED_FUNCTION_57_1();
      swift_slowAlloc();
      OUTLINED_FUNCTION_57_2();
      v74 = swift_slowAlloc();
      OUTLINED_FUNCTION_251(v74);
      *v29 = 136446466;
      v75 = sub_261F7C884();
      OUTLINED_FUNCTION_219(v75, v76);
      OUTLINED_FUNCTION_154_0();

      *(v29 + 4) = v3;
      *(v29 + 12) = 2080;
      v100 = v6;
      v77 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
      v78 = sub_26203A20C();
      OUTLINED_FUNCTION_219(v78, v79);
      OUTLINED_FUNCTION_154_0();

      *(v29 + 14) = v3;
      OUTLINED_FUNCTION_169_0(&dword_261F5B000, v80, v81, "%{public}s: failed with error: %s");
      OUTLINED_FUNCTION_186_0();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      v82 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x266724180](v82);
    }

    v71(v6);
    v83 = OUTLINED_FUNCTION_39_1();
    sub_261F665E4(v83);
  }

  else
  {
    v84 = sub_26203A4AC();
    if (os_log_type_enabled(v18, v84))
    {
      OUTLINED_FUNCTION_42_1();
      v85 = swift_slowAlloc();
      OUTLINED_FUNCTION_30();
      v86 = swift_slowAlloc();
      v99[0] = v86;
      *v85 = 136446210;
      v87 = sub_261F7C884();
      OUTLINED_FUNCTION_219(v87, v88);
      OUTLINED_FUNCTION_142_0();

      *(v85 + 4) = v29;
      _os_log_impl(&dword_261F5B000, v18, v84, "%{public}s: cancelled", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
      OUTLINED_FUNCTION_26();
      MEMORY[0x266724180]();
    }
  }

  OUTLINED_FUNCTION_84();
  sub_261FF2510();
  v100 = MEMORY[0x277D84F90];
  v89 = sub_261FF2098();
  sub_261FF0078(v89);
  OUTLINED_FUNCTION_70();

  sub_261FFA278(v18);
  v90 = sub_261FF2178();
  v91 = sub_261FF0078(v90);

  sub_261FFA278(v91);
  v92 = sub_261FF21BC();
  sub_261FFA368(v92);
  v93 = v100[2];
  if (v93)
  {
    v94 = (v100 + 4);
    do
    {
      sub_261F79740(v94, v99);
      v95 = v99[4];
      __swift_project_boxed_opaque_existential_0Tm(v99, v99[3]);
      v96 = *(v95 + 48);
      v97 = OUTLINED_FUNCTION_18_5();
      v98(v97);
      __swift_destroy_boxed_opaque_existential_0Tm(v99);
      v94 += 40;
      --v93;
    }

    while (v93);
  }

  OUTLINED_FUNCTION_31_0();
}

void sub_261FF9FA0(uint64_t a1, int64_t a2)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_261FFAD44(a2, v3, a1);
  if (a2 < 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = v7;
  v11 = sub_261FFAD44(0, a2, a1);
  sub_261FFE218(v11, v12, v13, v14);
  v15 = v10 >> 1;
  v16 = MEMORY[0x277D84F90];
  v17 = v9;
  v18 = v9;
LABEL_4:
  v19 = (v8 - 16 + 16 * v17);
  while (v15 != v18)
  {
    if (v17 < v9 || v18 >= v15)
    {
      __break(1u);
      goto LABEL_18;
    }

    v21 = v19[3];
    ++v18;
    v19 += 2;
    if (v21)
    {
      v22 = *v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v16 + 16);
        sub_261F67ABC();
        v16 = v26;
      }

      v23 = *(v16 + 16);
      if (v23 >= *(v16 + 24) >> 1)
      {
        sub_261F67ABC();
        v16 = v27;
      }

      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v22;
      *(v24 + 40) = v21;
      v17 = v18;
      goto LABEL_4;
    }
  }

  swift_unknownObjectRelease();
}

void sub_261FFA16C()
{
  OUTLINED_FUNCTION_243();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(*v0 + 16);
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v2;
  sub_261FFB518(v6 + v5, 1, v1);
  v8 = *v0;
  if (!*(v4 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v9 = (*(v8 + 24) >> 1) - *(v8 + 16);
  v10 = *(v7(0) - 8);
  if (v9 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v0 = v8;
    OUTLINED_FUNCTION_22_2();
    return;
  }

  v13 = *(v8 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_261FFA278(uint64_t a1)
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

  result = sub_261FFB518(result, 1, sub_261FBA008);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF95D0, &qword_26203E5F0);
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

uint64_t sub_261FFA368(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(*v2 + 16);
  result = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_261FFB518(result, 1, sub_261FBA008);
  v1 = *v2;
  v9 = *(*v2 + 16);
  v10 = (*(*v2 + 24) >> 1) - v9;
  result = sub_261FFDF50(v34, *v2 + 40 * v9 + 32, v10, a1);
  if (result < v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result)
  {
    v12 = *(v1 + 16);
    v13 = __OFADD__(v12, result);
    v14 = v12 + result;
    if (v13)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(v1 + 16) = v14;
  }

  if (result != v10)
  {
    result = sub_261FFED8C();
LABEL_8:
    *v2 = v1;
    return result;
  }

LABEL_11:
  v4 = *(v1 + 16);
  v10 = v34[1];
  v11 = v35;
  v3 = v36;
  v26 = v34[0];
  if (v37)
  {
    v15 = (v37 - 1) & v37;
    v16 = __clz(__rbit64(v37)) | (v36 << 6);
    v17 = (v35 + 64) >> 6;
LABEL_19:
    sub_261F79740(*(v26 + 56) + 40 * v16, &v31);
LABEL_20:
    v20 = &qword_27FEFA288;
    while (2)
    {
      sub_261F674BC(&v31, &v29, v20, &qword_262044098);
      if (v30)
      {
        v21 = v20;
        sub_261F66E60(&v29, v20, &qword_262044098);
        v22 = *(v1 + 24) >> 1;
        if (v22 < v4 + 1)
        {
          sub_261FBA008();
          v1 = v25;
          v22 = *(v25 + 24) >> 1;
        }

LABEL_24:
        while (1)
        {
          sub_261F674BC(&v31, &v27, v21, &qword_262044098);
          if (!v28)
          {
            break;
          }

          sub_261F797BC(&v27, &v29);
          if (v4 >= v22)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(&v29);
            v20 = v21;
            goto LABEL_36;
          }

          sub_261F66E60(&v31, v21, &qword_262044098);
          sub_261F797BC(&v29, v1 + 32 + 40 * v4++);
          if (!v15)
          {
            while (1)
            {
              v23 = v3 + 1;
              if (__OFADD__(v3, 1))
              {
                break;
              }

              if (v23 >= v17)
              {
                v15 = 0;
                v33 = 0;
                v31 = 0u;
                v32 = 0u;
                goto LABEL_24;
              }

              v15 = *(v10 + 8 * v23);
              ++v3;
              if (v15)
              {
                v3 = v23;
                goto LABEL_32;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

          v23 = v3;
LABEL_32:
          v24 = __clz(__rbit64(v15));
          v15 &= v15 - 1;
          sub_261F79740(*(v26 + 56) + 40 * (v24 | (v23 << 6)), &v31);
        }

        v20 = v21;
        sub_261F66E60(&v27, v21, &qword_262044098);
LABEL_36:
        *(v1 + 16) = v4;
        continue;
      }

      break;
    }

LABEL_38:
    sub_261F66E60(&v31, &qword_27FEFA288, &qword_262044098);
    sub_261FFED8C();
    result = sub_261F66E60(&v29, &qword_27FEFA288, &qword_262044098);
    goto LABEL_8;
  }

LABEL_14:
  v17 = (v11 + 64) >> 6;
  while (1)
  {
    v18 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v15 = 0;
      v33 = 0;
      v31 = 0u;
      v32 = 0u;
      goto LABEL_20;
    }

    v19 = *(v10 + 8 * v18);
    ++v3;
    if (v19)
    {
      v15 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v18 << 6);
      v3 = v18;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void sub_261FFA6C4()
{
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_23_4();
  v2 = *(v1 + 80);
  OUTLINED_FUNCTION_60_2();
  v4 = *(v3 + 88);
  v5 = type metadata accessor for TunnelEndpoint.State();
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_37();
  v9 = sub_26203A07C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_74();
  v17 = (v16 - v15);
  *v17 = sub_261F6E294();
  (*(v12 + 104))(v17, *MEMORY[0x277D85200], v9);
  v18 = sub_26203A0AC();
  v20 = *(v12 + 8);
  v19 = v12 + 8;
  v20(v17, v9);
  if (v18)
  {
    LOBYTE(v17) = sub_26203A4AC();
    if (qword_28108B618 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_0_27();
  swift_once();
LABEL_3:
  v21 = qword_28108B620;
  if (os_log_type_enabled(qword_28108B620, v17))
  {
    OUTLINED_FUNCTION_57_1();
    v18 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v19 = swift_slowAlloc();
    v62 = v19;
    *v18 = 136446466;
    v22 = sub_261F7C884();
    v24 = sub_261F67FE4(v22, v23, &v62);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    sub_261F798CC(v0);
    OUTLINED_FUNCTION_75();
    v25 = sub_26203A20C();
    v27 = sub_261F67FE4(v25, v26, &v62);

    *(v18 + 14) = v27;
    _os_log_impl(&dword_261F5B000, v21, v17, "State dump: %{public}s has state %s", v18, 0x16u);
    swift_arrayDestroy();
    v28 = OUTLINED_FUNCTION_24_5();
    MEMORY[0x266724180](v28);
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v29 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_226(v29))
  {
    OUTLINED_FUNCTION_57_1();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v62 = swift_slowAlloc();
    *v30 = 136446466;
    v31 = sub_261F7C884();
    OUTLINED_FUNCTION_303(v31, v32);
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_190();
    v33 = sub_261FF22B0();
    sub_261FF9FA0(v33, v34);
    OUTLINED_FUNCTION_238();
    v35 = MEMORY[0x266722880](v19, MEMORY[0x277D837D0]);
    v37 = v36;

    v18 = sub_261F67FE4(v35, v37, &v62);

    *(v30 + 14) = v18;
    OUTLINED_FUNCTION_168_0(&dword_261F5B000, v38, v39, "State dump: %{public}s recently processed events: %s");
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v40 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_226(v40))
  {
    OUTLINED_FUNCTION_57_1();
    v41 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v62 = swift_slowAlloc();
    *v41 = 136446466;
    v42 = sub_261F7C884();
    OUTLINED_FUNCTION_303(v42, v43);
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_190();
    v44 = sub_261FF2300();
    sub_261FF9FA0(v44, v45);
    OUTLINED_FUNCTION_238();
    v46 = MEMORY[0x266722880](v19, MEMORY[0x277D837D0]);
    v48 = v47;

    v18 = sub_261F67FE4(v46, v48, &v62);

    *(v41 + 14) = v18;
    OUTLINED_FUNCTION_168_0(&dword_261F5B000, v49, v50, "State dump: %{public}s recently processed incoming packet flow events: %s");
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  v51 = sub_26203A4AC();
  if (OUTLINED_FUNCTION_226(v51))
  {
    OUTLINED_FUNCTION_57_1();
    v52 = swift_slowAlloc();
    OUTLINED_FUNCTION_56();
    v62 = swift_slowAlloc();
    *v52 = 136446466;
    v53 = sub_261F7C884();
    OUTLINED_FUNCTION_303(v53, v54);
    OUTLINED_FUNCTION_238();
    OUTLINED_FUNCTION_190();
    v55 = sub_261FF2350();
    sub_261FF9FA0(v55, v56);
    OUTLINED_FUNCTION_65();

    v57 = MEMORY[0x266722880](v18, MEMORY[0x277D837D0]);
    v59 = v58;

    sub_261F67FE4(v57, v59, &v62);
    OUTLINED_FUNCTION_181_0();

    *(v52 + 14) = v57;
    OUTLINED_FUNCTION_168_0(&dword_261F5B000, v60, v61, "State dump: %{public}s recently processed outgoing packet flow events: %s");
    OUTLINED_FUNCTION_220();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
    OUTLINED_FUNCTION_26();
    MEMORY[0x266724180]();
  }

  OUTLINED_FUNCTION_31_0();
}

unint64_t sub_261FFAD44(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_261FFADB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a3)
    {
      v5 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
      v6 = sub_26203A3FC();
      *(v6 + 16) = a3;
      v7 = a3 - 1;
      for (i = 32; ; i += 16)
      {
        v9 = (v6 + i);
        *v9 = v5;
        v9[1] = a2;
        if (!v7)
        {
          break;
        }

        --v7;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }

    return v6;
  }

  return result;
}

uint64_t sub_261FFAE58(void (*a1)(void *__return_ptr))
{
  a1(v2);
  MEMORY[0x266722710](v2[0], v2[1]);

  return 0x5F6E6F6374;
}

uint64_t (*sub_261FFAECC(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_261FFB4BC(v7);
  v7[9] = sub_261FFB060(v7 + 4, a2, a3);
  return sub_261FFF854;
}

uint64_t (*sub_261FFAF64(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_261FFB4E4(v7);
  v7[9] = sub_261FFB26C(v7 + 4, a2, a3);
  return sub_261FFAFFC;
}

void sub_261FFB000(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_261FFB060(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_261FA3868(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FEFA3A0, &qword_26203F6A8);
  if (sub_26203A8EC())
  {
    v14 = *v4;
    v15 = sub_261FA3868(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_261FFB1A0;
}

void sub_261FFB1A0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_261FA5004(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = OUTLINED_FUNCTION_240();
    sub_261FA41D4(v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9D80, &unk_262044800);
    OUTLINED_FUNCTION_72();
    sub_26203A90C();
  }

  v7 = *v1;

  free(v1);
}

void (*sub_261FFB26C(void *a1, uint64_t a2, uint64_t a3))()
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_261FA3868(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B8, &qword_2620447C0);
  if (sub_26203A8EC())
  {
    v14 = *v4;
    v15 = sub_261FA3868(a2, a3);
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF98B0, &unk_26203F690);
    result = sub_26203AC9C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v17 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v17 = 0;
  }

  *v8 = v17;
  return sub_261FFB3B8;
}

void sub_261FFB3B8()
{
  OUTLINED_FUNCTION_243();
  v1 = *v0;
  v2 = **v0;
  v3 = *(*v0 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_261FA5008(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*v0)[5])
  {
    OUTLINED_FUNCTION_240();
    OUTLINED_FUNCTION_153();
    sub_261F66E60(v6, v7, v8);
    v9 = OUTLINED_FUNCTION_39_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA278, &unk_26204AE90);
    OUTLINED_FUNCTION_11_9();
    OUTLINED_FUNCTION_153();
    sub_261F67F70(v11, v12, v13);
    OUTLINED_FUNCTION_72();
    sub_26203A90C();
  }

  v14 = *v1;

  OUTLINED_FUNCTION_22_2();

  free(v15);
}

uint64_t (*sub_261FFB4BC(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_261FFF7F8;
}

uint64_t (*sub_261FFB4E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_261FFB50C;
}

uint64_t sub_261FFB518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

uint64_t sub_261FFB5BC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_261FFB518(result, 1, sub_261FB9C28);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 32 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA55C((v9 + 32 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261FFB6D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = *(*v8 + 16);
  if (v9 < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_261FFB518(result, 1, a7);
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_267();

  return a8();
}

void sub_261FFB7AC()
{
  OUTLINED_FUNCTION_243();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = *(*v0 + 16);
  if (v4 < v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v1;
  v6 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v1 - v2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_261FFB518(v4 - v6, 1, sub_261FB9CF4);
  v8 = *v0;
  v9 = *v0 + 32;
  v10 = (v9 + 32 * v5);
  OUTLINED_FUNCTION_72();
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v0 = v8;
    OUTLINED_FUNCTION_22_2();
    return;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, v3))
  {
    goto LABEL_16;
  }

  sub_261FBA55C((v9 + 32 * v3), v11 - v3, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_261FFB890(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_261FFB518(result, 1, sub_261FB9EF8);
  v8 = *v2;
  v9 = *(type metadata accessor for TunnelMessage() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA594(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261FFB9D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA55C((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_261FFBB14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = *v7;
  v15 = (v14 + 32 + 32 * result);
  result = swift_arrayDestroy();
  v16 = a3 - v8;
  if (__OFSUB__(a3, v8))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = *(v14 + 16);
  if (__OFSUB__(v17, a2))
  {
    goto LABEL_16;
  }

  result = sub_261FBA55C((v14 + 32 + 32 * a2), v17 - a2, &v15[4 * a3]);
  v18 = *(v14 + 16);
  v19 = __OFADD__(v18, v16);
  v20 = v18 + v16;
  if (v19)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v14 + 16) = v20;
LABEL_7:
  if (a3 < 1)
  {
    sub_261F6BFFC(a4, a5);
  }

  else
  {
    *v15 = a4;
    v15[1] = a5;
    v15[2] = a6;
    v15[3] = a7;
    if (v15 + 4 < &v15[4 * a3])
    {
      sub_261F6B73C(a4, a5);

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_261FFBC68(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_11;
  }

  result = sub_261F7DED0((v7 + 32 + 16 * a2), v11 - a2, (v8 + 16 * a3));
  v12 = *(v7 + 16);
  v9 = __OFADD__(v12, v10);
  v13 = v12 + v10;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v7 + 16) = v13;
LABEL_7:
  if (a3 > 0)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_261FFBD4C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_261FFED94(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_261FFBF48(v6);
  *a1 = v2;
  return result;
}

_OWORD *sub_261FFBDB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_261FBA44C(*(a1 + 16), 0);
  v4 = sub_261FFDE00(&v6, v3 + 2, v1, a1);

  sub_261FFED8C();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v3;
}

void sub_261FFBE74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AC8, &qword_262040310);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 96);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_261FFBF48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26203AB9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_26203A3FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_261FFC138(v7, v8, a1, v4);
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
    return sub_261FFC03C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261FFC03C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 48 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_261FA5688(v9, v20);
        v10 = v9 - 3;
        sub_261FA5688((v9 - 3), v18);
        v11 = v21;
        v12 = v19;
        sub_261FFEDE8(v18);
        result = sub_261FFEDE8(v20);
        if (v12 >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v14 = v9[1];
        v13 = v9[2];
        v15 = *v9;
        v16 = *(v9 - 2);
        *v9 = *v10;
        v9[1] = v16;
        v9[2] = *(v9 - 1);
        *v10 = v15;
        *(v9 - 2) = v14;
        v9 -= 3;
        v10[2] = v13;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 48;
      --v7;
      if (v4 != v22)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_261FFC138(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v113 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_95:
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v104 = v8;
      v92 = (v8 + 16);
      v93 = *(v8 + 16);
      v8 = 48;
      while (v93 >= 2)
      {
        if (!*v113)
        {
          goto LABEL_133;
        }

        v94 = (v104 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_261FFC7C0((*v113 + 48 * *v94), (*v113 + 48 * *v96), (*v113 + 48 * v97), v108);
        if (v5)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_121;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_122;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_123;
        }

        v93 = *v92 - 1;
        memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_261FFC9D0(v8);
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v102 = v8;
      v10 = *v113;
      sub_261FA5688(*v113 + 48 * v7, v111);
      v11 = 48 * v9;
      sub_261FA5688(v10 + 48 * v9, v109);
      v105 = v110;
      v108 = v112;
      sub_261FFEDE8(v109);
      sub_261FFEDE8(v111);
      v8 = v10 + 48 * v9 + 96;
      v12 = v9 + 2;
      while (1)
      {
        v13 = v12;
        if (++v7 >= v6)
        {
          break;
        }

        sub_261FA5688(v8, v111);
        sub_261FA5688(v8 - 48, v109);
        v14 = v5;
        v15 = v112;
        v16 = v110;
        sub_261FFEDE8(v109);
        sub_261FFEDE8(v111);
        v17 = v16 < v15;
        v5 = v14;
        v18 = !v17;
        v19 = (v105 < v108) ^ v18;
        v8 += 48;
        v12 = v13 + 1;
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v7 = v6;
LABEL_12:
      if (v105 >= v108)
      {
        v8 = v102;
      }

      else
      {
        if (v7 < v9)
        {
          goto LABEL_127;
        }

        if (v9 >= v7)
        {
          v8 = v102;
        }

        else
        {
          if (v6 >= v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = v6;
          }

          v21 = 48 * v20 - 48;
          v22 = v7;
          v23 = v9;
          v8 = v102;
          do
          {
            if (v23 != --v22)
            {
              v24 = *v113;
              if (!*v113)
              {
                goto LABEL_134;
              }

              v25 = (v24 + v11);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = v25[1];
              v29 = v25[2];
              v31 = v26[1];
              v30 = v26[2];
              *v25 = *v26;
              v25[1] = v31;
              v25[2] = v30;
              v26[1] = v28;
              v26[2] = v29;
              *v26 = v27;
            }

            ++v23;
            v21 -= 48;
            v11 += 48;
          }

          while (v23 < v22);
        }
      }
    }

    v32 = v113[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_126;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_42:
    if (v7 < v9)
    {
      goto LABEL_125;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = *(v8 + 16);
      sub_261FB9F34();
      v8 = v90;
    }

    v47 = *(v8 + 16);
    v48 = v47 + 1;
    if (v47 >= *(v8 + 24) >> 1)
    {
      sub_261FB9F34();
      v8 = v91;
    }

    *(v8 + 16) = v48;
    v49 = v8 + 32;
    v50 = (v8 + 32 + 16 * v47);
    *v50 = v9;
    v50[1] = v7;
    v108 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    if (v47)
    {
      v107 = v7;
      while (1)
      {
        v51 = v48 - 1;
        v52 = (v49 + 16 * (v48 - 1));
        v53 = (v8 + 16 * v48);
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v8 + 32);
          v55 = *(v8 + 40);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_63:
          if (v57)
          {
            goto LABEL_112;
          }

          v69 = *v53;
          v68 = v53[1];
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_115;
          }

          v73 = v52[1];
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_120;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v48 < 2)
        {
          goto LABEL_114;
        }

        v76 = *v53;
        v75 = v53[1];
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_78:
        if (v72)
        {
          goto LABEL_117;
        }

        v78 = *v52;
        v77 = v52[1];
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_119;
        }

        if (v79 < v71)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v51 - 1 >= v48)
        {
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
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
          goto LABEL_129;
        }

        if (!*v113)
        {
          goto LABEL_132;
        }

        v83 = (v49 + 16 * (v51 - 1));
        v84 = *v83;
        v85 = v51;
        v86 = (v49 + 16 * v51);
        v87 = v86[1];
        sub_261FFC7C0((*v113 + 48 * *v83), (*v113 + 48 * *v86), (*v113 + 48 * v87), v108);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v87 < v84)
        {
          goto LABEL_107;
        }

        v5 = v49;
        v88 = v8;
        v8 = *(v8 + 16);
        if (v85 > v8)
        {
          goto LABEL_108;
        }

        *v83 = v84;
        v83[1] = v87;
        if (v85 >= v8)
        {
          goto LABEL_109;
        }

        v48 = v8 - 1;
        memmove(v86, v86 + 2, 16 * (v8 - 1 - v85));
        *(v88 + 16) = v8 - 1;
        v17 = v8 > 2;
        v8 = v88;
        v49 = v5;
        v5 = 0;
        v7 = v107;
        if (!v17)
        {
          goto LABEL_92;
        }
      }

      v58 = v49 + 16 * v48;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_110;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_111;
      }

      v65 = v53[1];
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_113;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_116;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = v52[1];
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_124;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = v113[1];
    if (v7 >= v6)
    {
      goto LABEL_95;
    }
  }

  v33 = (v9 + a4);
  if (__OFADD__(v9, a4))
  {
    goto LABEL_128;
  }

  if (v33 >= v32)
  {
    v33 = v113[1];
  }

  if (v33 < v9)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v7 == v33)
  {
    goto LABEL_42;
  }

  v103 = v8;
  v106 = v5;
  v34 = *v113;
  v35 = *v113 + 48 * v7;
  v100 = v9;
  v36 = v9 - v7;
  v108 = v33;
LABEL_35:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_261FA5688(v38, v111);
    v39 = v38 - 3;
    sub_261FA5688((v38 - 3), v109);
    v40 = v112;
    v41 = v110;
    sub_261FFEDE8(v109);
    sub_261FFEDE8(v111);
    if (v41 >= v40)
    {
LABEL_40:
      ++v7;
      v35 += 48;
      --v36;
      if (v7 == v108)
      {
        v7 = v108;
        v8 = v103;
        v5 = v106;
        v9 = v100;
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    if (!v34)
    {
      break;
    }

    v43 = v38[1];
    v42 = v38[2];
    v44 = *v38;
    v45 = *(v38 - 2);
    *v38 = *v39;
    v38[1] = v45;
    v38[2] = *(v38 - 1);
    *v39 = v44;
    *(v38 - 2) = v43;
    v38 -= 3;
    v39[2] = v42;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_40;
    }
  }

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
}

uint64_t sub_261FFC7C0(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 48;
  v9 = (a3 - a2) / 48;
  if (v8 < v9)
  {
    sub_261FBA66C(a1, (a2 - a1) / 48, a4);
    v10 = &v4[48 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      sub_261FA5688(v6, v33);
      sub_261FA5688(v4, v31);
      v12 = v34;
      v13 = v32;
      sub_261FFEDE8(v31);
      sub_261FFEDE8(v33);
      if (v13 >= v12)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 48;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 48;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 48;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v14;
    v17 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v17;
    *v7 = v16;
    goto LABEL_13;
  }

  sub_261FBA66C(a2, (a3 - a2) / 48, a4);
  v18 = &v4[48 * v9];
LABEL_15:
  v19 = v6 - 48;
  v5 -= 48;
  for (i = v18 - 48; ; i -= 48)
  {
    v10 = i + 48;
    if (i + 48 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_261FA5688(i, v33);
    sub_261FA5688((v6 - 48), v31);
    v22 = v34;
    v23 = v32;
    sub_261FFEDE8(v31);
    sub_261FFEDE8(v33);
    if (v23 < v22)
    {
      v18 = i + 48;
      v15 = v5 + 48 == v6;
      v6 -= 48;
      if (!v15)
      {
        v26 = *v19;
        v27 = *(v19 + 2);
        *(v5 + 1) = *(v19 + 1);
        *(v5 + 2) = v27;
        *v5 = v26;
        v6 = v19;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 48)
    {
      v24 = *i;
      v25 = *(i + 2);
      *(v5 + 1) = *(i + 1);
      *(v5 + 2) = v25;
      *v5 = v24;
    }

    v5 -= 48;
  }

LABEL_28:
  v28 = (v10 - v4) / 48;
  if (v6 != v4 || v6 >= &v4[48 * v28])
  {
    memmove(v6, v4, 48 * v28);
  }

  return 1;
}

char *sub_261FFC9E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A48, &qword_2620402B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_261FFCAE4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_261FF3ABC();
}

unint64_t sub_261FFCB08()
{
  result = qword_27FEFA2C8;
  if (!qword_27FEFA2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA2C8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_261FFCCBC(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = sub_26203A6DC();
  if (v4 <= 0x3F)
  {
    v12 = *(v3 - 8) + 64;
    sub_261FFD454(319, &unk_28108B380, MEMORY[0x277CD8C88]);
    if (v6 <= 0x3F)
    {
      v13 = *(v5 - 8) + 64;
      v7 = *(a1 + 88);
      v8 = type metadata accessor for TunnelEndpoint.State();
      if (v9 <= 0x3F)
      {
        v14 = *(v8 - 8) + 64;
        sub_261FFD454(319, qword_28108B8C8, type metadata accessor for TunnelInterfaceParameters);
        if (v11 <= 0x3F)
        {
          v15 = *(v10 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

void sub_261FFD454(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26203A6DC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_261FFD4A8()
{
  sub_261FFD51C();
  if (v0 <= 0x3F)
  {
    sub_261FFD544();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_261FFD51C()
{
  result = qword_28108B300;
  if (!qword_28108B300)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_28108B300);
  }

  return result;
}

void sub_261FFD544()
{
  if (!qword_28108B308)
  {
    sub_26203965C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28108B308);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_261FFD5C4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_261FFD604(uint64_t result, int a2, int a3)
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

void sub_261FFD660(uint64_t a1)
{
  sub_261FFD828();
  if (v2 <= 0x3F)
  {
    sub_261FFD8CC(319, &qword_28108C788);
    if (v3 <= 0x3F)
    {
      sub_261FFD8CC(319, &qword_28108C778);
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
        type metadata accessor for TunnelEndpoint.State();
        if (v7 <= 0x3F)
        {
          sub_261FFD954(319, &qword_28108C7A8);
          if (v8 <= 0x3F)
          {
            sub_261FFD8CC(319, &qword_28108C7A0);
            if (v9 <= 0x3F)
            {
              sub_261FFD8CC(319, &unk_28108C790);
              if (v10 <= 0x3F)
              {
                sub_261FFD850();
                if (v11 <= 0x3F)
                {
                  sub_261FFD8CC(319, &qword_28108C780);
                  if (v12 <= 0x3F)
                  {
                    sub_261FFD954(319, &qword_28108B268);
                    if (v13 <= 0x3F)
                    {
                      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_261FFD828()
{
  result = qword_28108B240;
  if (!qword_28108B240)
  {
    result = MEMORY[0x277D84C58];
    atomic_store(MEMORY[0x277D84C58], &qword_28108B240);
  }

  return result;
}

void sub_261FFD850()
{
  if (!qword_28108B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEF9A90, &unk_26203EB50);
    sub_26203965C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28108B260);
    }
  }
}

void sub_261FFD8CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEF95D0, &qword_26203E5F0);
    v3 = OUTLINED_FUNCTION_75();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    OUTLINED_FUNCTION_131();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_261FFD954(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TunnelConnectionType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TunnelConnectionType.SinglePathCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_261FFDB44()
{
  result = qword_27FEFA2F0;
  if (!qword_27FEFA2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA2F0);
  }

  return result;
}

unint64_t sub_261FFDB9C()
{
  result = qword_27FEFA2F8;
  if (!qword_27FEFA2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA2F8);
  }

  return result;
}

unint64_t sub_261FFDBF4()
{
  result = qword_27FEFA300;
  if (!qword_27FEFA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA300);
  }

  return result;
}

unint64_t sub_261FFDC4C()
{
  result = qword_27FEFA308;
  if (!qword_27FEFA308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA308);
  }

  return result;
}

unint64_t sub_261FFDCA4()
{
  result = qword_27FEFA310;
  if (!qword_27FEFA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA310);
  }

  return result;
}

unint64_t sub_261FFDCFC()
{
  result = qword_27FEFA318;
  if (!qword_27FEFA318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA318);
  }

  return result;
}

unint64_t sub_261FFDD54()
{
  result = qword_27FEFA320;
  if (!qword_27FEFA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA320);
  }

  return result;
}

unint64_t sub_261FFDDAC()
{
  result = qword_27FEFA328;
  if (!qword_27FEFA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEFA328);
  }

  return result;
}

uint64_t sub_261FFDE00(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      result = sub_261FA5688(*(a4 + 56) + 48 * (v16 | (v13 << 6)), v19);
      v18 = v19[1];
      v17 = v19[2];
      *v11 = v19[0];
      v11[1] = v18;
      v11[2] = v17;
      v11 += 3;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FFDF50(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_19:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            v13 = v15;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_261F79740(*(a4 + 56) + 40 * (v16 | (v13 << 6)), v17);
      sub_261F797BC(v17, v18);
      result = sub_261F797BC(v18, v11);
      v11 += 40;
      v12 = v14;
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261FFE0A8(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0 || (v5 = *v1, result = swift_isUniquelyReferenced_nonNull(), *v1 = v5, (result & 1) == 0))
  {
LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_261FBA2E8(v4 - v14, v2);
      if (v4 >= v14)
      {
        v15 = result;
        v16 = v1[1] + 16 * v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
        swift_arrayInitWithCopy();
        sub_261F961E8(v15, v14);
        v5 = v17;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v24 = *v1;
        result = swift_unknownObjectRelease();
        v1[1] = v19;
        v1[2] = v21;
        v1[3] = v23;
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[1];
  sub_26203AC5C();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + 16 * v6 + 16 * v7 != v9 + 16 * v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_13:
      *v1 = v5;
      return result;
    }

    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_261FFE218(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = result;
  result = sub_261FFE660((a4 >> 1) - a3);
  v11 = v4[2];
  v10 = v4[3];
  v12 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v13 = v4[1] + 16 * v11 + 16 * v12;
  if ((v10 & 1) == 0)
  {
LABEL_8:
    v17 = v12;
    goto LABEL_10;
  }

  v14 = *v4;
  sub_26203AC5C();
  swift_unknownObjectRetain();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);
  if (v13 != v15 + 16 * v16 + 32)
  {

    goto LABEL_8;
  }

  v18 = *(v15 + 24);

  v19 = (v18 >> 1) - v16;
  v20 = __OFADD__(v12, v19);
  v17 = v12 + v19;
  if (v20)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_10:
  v21 = v17 - v12;
  if (__OFSUB__(v17, v12))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_18;
    }

    goto LABEL_26;
  }

  if (v21 < v6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    result = (v12 + v6);
    if (__OFADD__(v12, v6))
    {
LABEL_29:
      __break(1u);
      return result;
    }

    sub_261FFE768(result);
  }

LABEL_18:
  if (v6 == v21)
  {
    v23[0] = v9;
    v23[1] = a2;
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = v5;
    return sub_261FFE820(v23);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

void sub_261FFE3EC(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v4;
  v41 = v15;
  v18 = (v9 + 32);
  v19 = v9 + 32 + 16 * a2;
  v39 = (v19 + 16 * a3);
  v20 = sub_261FFEC34(v7);
  v40 = v9;
  if (v20)
  {
    v21 = v20;
    v37 = v13;
    v38 = v4[2];
    v22 = (v4[1] + 16 * v38);
    v23 = v20 + 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
    swift_arrayDestroy();
    sub_261F7DED0(v22, a2, v18);
    swift_arrayDestroy();
    a4(v19, a3);
    sub_261F7DED0(&v22[16 * a2 + 16 * v41], v37, v39);
    v24 = v23 + 16 * *(v21 + 16) - &v22[16 * v7];
    swift_arrayDestroy();
    *(v21 + 16) = 0;
    v25 = v38;

LABEL_15:
    v32 = *v16;

    swift_unknownObjectRelease();
    sub_261F961E8(v40, v25);
    *v16 = v33;
    v16[1] = v34;
    v16[2] = v35;
    v16[3] = v36;
    return;
  }

  v25 = v4[2];
  v26 = v25 + a2;
  if (__OFADD__(v25, a2))
  {
    goto LABEL_21;
  }

  v27 = a2;
  if (v26 < v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFSUB__(v26, v25))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = a4;
  v29 = v16[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A60, &unk_26203E650);
  swift_arrayInitWithCopy();
  v28(&v18[16 * v27], a3);
  v30 = v26 + v41;
  if (__OFADD__(v26, v41))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v31 = v16[3] >> 1;
  if (v31 < v30)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!__OFSUB__(v31, v30))
  {
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_261FFE660(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v6 = *v1;
  v7 = v1[1];
  sub_26203AC5C();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  if (v7 + 16 * v3 + 16 * v4 != v8 + 16 * v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_9:
  result = v4 + v5;
  if (__OFADD__(v4, v5))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 >= 0)
    {
      v14 = 2 * v10;
      if (v14 > result)
      {
        result = v14;
      }

      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_14:

  return sub_261FFE0A8(result);
}

uint64_t sub_261FFE768(uint64_t result)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  v8 = *v1;
  sub_26203AC5C();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v9 = *(result + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v1[3] = v3 & 1 | (2 * v11);
  return result;
}

void *sub_261FFE820(void *result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24) >> 1;
  v4 = v3 - v2;
  if (__OFSUB__(v3, v2))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v6 = result[3];
  v5 = result[4];
  v29 = result;
  if (v5 == v6 >> 1)
  {
    return sub_261F66E60(v29, &qword_27FEFA338, &qword_262044788);
  }

  v7 = v6 >> 1;
  v32 = result[2];
  if (v5 >= v32 && v5 < v7)
  {
    v9 = result[1];
    v10 = v5 + 1;
    v11 = (v9 + 16 * v5);
    v13 = *v11;
    v12 = v11[1];

    v30 = v9 + 8;
    while (!__OFADD__(v4, 1))
    {
      v33 = sub_261FFEA58(v4, v4 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
      v14 = sub_261FFEC18();
      sub_261FFE3EC(&v33, v4, 0, v14);

      v16 = *(v1 + 16);
      v15 = *(v1 + 24);
      v17 = (v15 >> 1) - v16;
      if (__OFSUB__(v15 >> 1, v16))
      {
        goto LABEL_31;
      }

      v18 = *(v1 + 8);
      if (v15)
      {
        v31 = *(v1 + 8);
        v19 = *v1;
        sub_26203AC5C();
        swift_unknownObjectRetain();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          swift_unknownObjectRelease();
          v20 = MEMORY[0x277D84F90];
        }

        v21 = *(v20 + 16);
        v18 = v31;
        if (v31 + 16 * v16 + 16 * v17 == v20 + 16 * v21 + 32)
        {
          v22 = *(v20 + 24);

          v23 = (v22 >> 1) - v21;
          v24 = __OFADD__(v17, v23);
          v17 += v23;
          if (v24)
          {
            goto LABEL_32;
          }

          v18 = v31;
        }

        else
        {
        }
      }

      v25 = (v18 + 16 * v4 + 16 * v16 + 8);
      v26 = (v30 + 16 * v10);
      v27 = v10;
      while (v4 < v17)
      {
        *(v25 - 1) = v13;
        *v25 = v12;
        if (v7 == v27)
        {
          v13 = 0;
          ++v4;
          v27 = v7;
          v12 = 1;
          break;
        }

        if (v10 < v32 || v27 >= v7)
        {
          __break(1u);
          goto LABEL_30;
        }

        ++v27;
        v13 = *(v26 - 1);
        v12 = *v26;

        v25 += 2;
        v26 += 2;
        ++v4;
      }

      result = sub_261FFE768(v4);
      v10 = v27;
      if (v12 == 1)
      {
        return sub_261F66E60(v29, &qword_27FEFA338, &qword_262044788);
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
  return result;
}

void *sub_261FFEA58(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_261FBA2E8(v6, v25);
}

uint64_t sub_261FFEC34(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  if (!isUniquelyReferenced_nonNull)
  {
    return 0;
  }

  v7 = v1[2];
  v6 = v1[3];
  v8 = (v6 >> 1) - v7;
  if (__OFSUB__(v6 >> 1, v7))
  {
    __break(1u);
    goto LABEL_18;
  }

  v9 = *v1;
  v10 = v1[1] + 16 * v7;
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_26203AC5C();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (v10 + 16 * v8 != v11 + 16 * v12 + 32)
  {

LABEL_8:
    v13 = v8;
    goto LABEL_10;
  }

  v14 = *(v11 + 24);

  v16 = (v14 >> 1) - v12;
  v17 = __OFADD__(v8, v16);
  v13 = v8 + v16;
  if (!v17)
  {
LABEL_10:
    if (v13 < a1)
    {
      return 0;
    }

    sub_26203AC5C();
    swift_unknownObjectRetain();
    a1 = swift_dynamicCastClass();
    if (!a1)
    {
      swift_unknownObjectRelease();
      a1 = MEMORY[0x277D84F90];
    }

    v18 = (v10 - a1 - 32) / 16;
    isUniquelyReferenced_nonNull = v8 + v18;
    if (!__OFADD__(v8, v18))
    {
      v5 = *(a1 + 16);
      if (isUniquelyReferenced_nonNull >= v5)
      {
        return a1;
      }

LABEL_19:
      sub_261FFBC68(isUniquelyReferenced_nonNull, v5, 0);
      return a1;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_261FFEDA8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_26203A76C();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_261FFEE18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_261FFEE24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return a2;
}

uint64_t sub_261FFEE7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_261FFEEEC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_43_1();
  v5 = v4(v3);
  OUTLINED_FUNCTION_6_1(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_47();
  v9(v8);
  return a2;
}

uint64_t objectdestroy_154Tm()
{
  v1 = sub_26203965C();
  OUTLINED_FUNCTION_6_1(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261FFEFE8()
{
  v0 = sub_26203965C();
  OUTLINED_FUNCTION_40(v0);
  v2 = *(v1 + 80);
  return sub_261FF67CC();
}

uint64_t sub_261FFF080()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

void sub_261FFF0A8(double **a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v3();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_261FFF0E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_26203965C();
  OUTLINED_FUNCTION_40(v3);
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_261FF6B64(v5, v6, v7);
}

uint64_t objectdestroy_106Tm()
{
  OUTLINED_FUNCTION_243();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_56_2();
  v3 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_249(v3);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v0 + v5;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
    case 0xCu:
      v9 = OUTLINED_FUNCTION_300();
      goto LABEL_11;
    case 3u:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
      v8 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA378, &qword_2620447D0) + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_10;
      }

      type metadata accessor for TunnelMessage();
      OUTLINED_FUNCTION_151_0();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEFA350, &unk_262041920) + 48);
        v31 = sub_262039ACC();
        if (!OUTLINED_FUNCTION_286(v31))
        {
          OUTLINED_FUNCTION_71(v1);
          (*(v32 + 8))(v8 + v30);
        }
      }

      else if (EnumCaseMultiPayload == 1)
      {
        v22 = sub_262039ACC();
        OUTLINED_FUNCTION_6_1(v22);
        v24 = *(v23 + 8);
        v25 = OUTLINED_FUNCTION_108();
        v24(v25);
        v26 = type metadata accessor for TunnelInterfaceParameters();
        v27 = OUTLINED_FUNCTION_257(*(v26 + 20));
        v24(v27);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9E10, &qword_2620447B0);
        v29 = OUTLINED_FUNCTION_257(*(v28 + 48));
        v24(v29);
      }

      break;
    case 4u:
      OUTLINED_FUNCTION_56_2();
      type metadata accessor for TunnelEndpoint.State();
      OUTLINED_FUNCTION_151_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        break;
      }

      v10 = &qword_27FEFA348;
      v11 = &qword_262044798;
LABEL_8:
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v10, v11) + 48);
      v13 = sub_26203965C();
      OUTLINED_FUNCTION_6_1(v13);
      (*(v14 + 8))(v8 + v12);
      break;
    case 5u:
      v15 = *v8;

      v16 = *(v8 + 16);

      break;
    case 6u:
    case 8u:
    case 0xAu:
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));
      break;
    case 7u:
    case 9u:
      OUTLINED_FUNCTION_300();

      break;
    case 0xBu:

      v10 = &qword_27FEFA370;
      v11 = &qword_2620447C8;
      goto LABEL_8;
    case 0xDu:
LABEL_10:
      v9 = *v8;
LABEL_11:

      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_22_2();

  return MEMORY[0x2821FE8E8](v17, v18, v19);
}

uint64_t sub_261FFF458()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for TunnelEndpoint.Event();
  OUTLINED_FUNCTION_40(v3);
  v5 = *(v4 + 80);
  return sub_261FF6D2C();
}

uint64_t objectdestroy_103Tm(uint64_t a1)
{
  v3 = *(v1 + 32);

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_261FFF518(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_261FF6608(a1, v1[4], (v1 + 5));
}

uint64_t sub_261FFF570@<X0>(_WORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_261FFF5A8@<X0>(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_261FFF5E0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_261FF897C();
}

uint64_t sub_261FFF604(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA2D0, &qword_262045930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_261FFF674()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_261FF62E0();
}

unint64_t sub_261FFF69C()
{
  result = qword_28108BA70;
  if (!qword_28108BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28108BA70);
  }

  return result;
}

_BYTE *sub_261FFF6F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

void OUTLINED_FUNCTION_27_5(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
  v3 = *v1;
}

uint64_t OUTLINED_FUNCTION_30_5(uint64_t *a1)
{
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v3 = *(*(v1 + 856) + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_66_2()
{
  *v0 = 258;
  *(v0 + 2) = 34;
}

void OUTLINED_FUNCTION_78_1(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  v3[8] = v2;
  v4 = *v1;
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1)
{
  v3 = *(v2 + v1);
  *(v2 + v1) = a1;
}

uint64_t OUTLINED_FUNCTION_130_0()
{
  result = *(v0 + 920);
  v2 = *(v0 + 872);
  return result;
}

void OUTLINED_FUNCTION_132_0()
{
  v1 = v0[151];
  v0[145] = v0[150];
  v0[146] = v1;
}

void OUTLINED_FUNCTION_135_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v7 = *(v4 + 912);
  v8 = *(v4 + 912);
  v9 = *(v4 + 920);

  _os_log_impl(a1, v9, v8, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_143_0()
{
  v2 = *(v0 + 872);

  return sub_26203ABDC();
}

uint64_t OUTLINED_FUNCTION_165_0()
{
  *(v0 + 14) = v1;
  *(v0 + 22) = 2082;
  result = v2;
  v5 = *(v3 - 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_166_0@<X0>(__int16 a1@<W8>)
{
  *v1 = a1;
  *(v1 + 2) = 34;
}

void OUTLINED_FUNCTION_168_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_169_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_170_0()
{

  JUMPOUT(0x266722710);
}

uint64_t OUTLINED_FUNCTION_174_0()
{
  v2 = *(v0 + 776);

  return sub_261F798CC(v2);
}

uint64_t OUTLINED_FUNCTION_178_0()
{
  *(v1 + 4) = v0;
}

uint64_t OUTLINED_FUNCTION_185_0()
{
}

uint64_t OUTLINED_FUNCTION_186_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_187()
{
}

uint64_t OUTLINED_FUNCTION_188(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_191(uint64_t a1)
{
  *(a1 + 32) = v1;
  sub_261F797BC((v3 - 240), v2 + 40);
}

void *OUTLINED_FUNCTION_202()
{

  return __swift_project_boxed_opaque_existential_0Tm((v1 - 192), v0);
}

uint64_t OUTLINED_FUNCTION_216()
{
  v2 = *(v0[98] + 8);
  result = v0[95] + v1;
  v4 = v0[99];
  return result;
}

__n128 OUTLINED_FUNCTION_217()
{
  result = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = v1 - 240;
  *(v4 + 64) = result;
  *(v4 + 80) = v3;
  *(v4 + 48) = *v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_218(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 + 1160));
}

uint64_t OUTLINED_FUNCTION_219(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 136));
}

uint64_t OUTLINED_FUNCTION_220()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_221()
{
  v2 = *(v0 + 888);

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_222(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_224()
{

  return sub_261F797BC(v0, v1 - 192);
}

uint64_t OUTLINED_FUNCTION_225()
{
  *(v0 + 3) = 8;
}

BOOL OUTLINED_FUNCTION_226(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_227()
{
}

uint64_t OUTLINED_FUNCTION_228()
{
  v5 = v1 + 16 * v0;
  v6 = *(v5 + 40);
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;
}

void *OUTLINED_FUNCTION_229()
{
  v2 = v0[4];
  v3 = v0[3];

  return __swift_project_boxed_opaque_existential_0Tm(v0, v3);
}

uint64_t OUTLINED_FUNCTION_231()
{

  return sub_26203ABEC();
}

uint64_t OUTLINED_FUNCTION_233()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_234(char a1, uint64_t a2)
{
  v4 = *(v2 + 840);
  v5 = *(v2 + 824);

  return sub_261FF5EE8(a1, a2);
}

uint64_t OUTLINED_FUNCTION_235()
{

  return sub_26203AD3C();
}

void *OUTLINED_FUNCTION_236()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 168);

  return __swift_project_boxed_opaque_existential_0Tm((v0 - 192), v3);
}

uint64_t OUTLINED_FUNCTION_237()
{

  return sub_261F797BC((v0 - 240), v0 - 192);
}

uint64_t OUTLINED_FUNCTION_238()
{
}

uint64_t OUTLINED_FUNCTION_259()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 - 240));

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 - 192));
}

void OUTLINED_FUNCTION_268()
{
  v2 = *(v1 + 8);
  *v0 = *v1;
  *(v0 + 8) = v2;
}

void OUTLINED_FUNCTION_276()
{
  v1 = *(v0 - 136);
  *(v0 - 192) = *(v0 - 144);
  *(v0 - 184) = v1;
}

void OUTLINED_FUNCTION_281()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2082;
  *(v3 - 92) = v2;
}

void OUTLINED_FUNCTION_282(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v8 = *(v6 - 112);

  _os_log_impl(a1, v8, v5, a4, v4, 0x20u);
}

uint64_t OUTLINED_FUNCTION_287@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 8) = a1 % v1;

  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_288()
{
  v2 = *(v0 - 392);

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_289()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_290()
{
  v2 = *(v0 + 928);

  return swift_retain_n();
}

uint64_t OUTLINED_FUNCTION_291()
{

  return sub_261F79740(v0 - 136, v0 - 192);
}

uint64_t OUTLINED_FUNCTION_292()
{

  return sub_26203ABEC();
}

BOOL OUTLINED_FUNCTION_293@<W0>(os_log_type_t a1@<W8>)
{
  v3 = *(v1 + 920);

  return os_log_type_enabled(v3, a1);
}

uint64_t OUTLINED_FUNCTION_294()
{
}

uint64_t OUTLINED_FUNCTION_295()
{

  return sub_26203A20C();
}

BOOL OUTLINED_FUNCTION_296()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_297()
{
}

uint64_t OUTLINED_FUNCTION_298()
{
}

uint64_t OUTLINED_FUNCTION_301()
{
  v2 = *(v0 + 720);

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_303(uint64_t a1, unint64_t a2)
{

  return sub_261F67FE4(a1, a2, (v2 - 88));
}

void sub_262000380(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2620393EC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_262000410()
{
  sub_261F9B6D0(0, &qword_28108CF90, 0x277D86200);
  result = sub_26203A6BC();
  qword_27FEFA430 = result;
  return result;
}

uint64_t RPPairableHostBrowser.state.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);
  sub_261FA0600(&v6);
  v4 = v6;
  sub_261FA0B3C(v6);
  sub_261FC3EDC(v4);

  *a1 = v4;
  return result;
}

id sub_2620004F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA450, &qword_262044908);
  swift_allocObject();
  *&v0[OBJC_IVAR___RPPairableHostBrowser__stateStorage] = sub_261FA09DC(1, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  sub_2620398EC();
  sub_2620398CC();
  OUTLINED_FUNCTION_43_1();
  sub_26203990C();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = &v0[OBJC_IVAR___RPPairableHostBrowser_connection];
  v3 = MEMORY[0x277D28160];
  *v2 = v1;
  v2[1] = v3;
  v5.receiver = v0;
  v5.super_class = RPPairableHostBrowser;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t RPPairableHostBrowser.registerInvalidationHandler(onQueue:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = qword_27FEFAA30;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);
  v10 = *(v9 + 16);
  v11 = v7;
  swift_retain_n();
  v12 = v11;

  v13 = a1;
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v14 = *(v9 + 24);
  v15 = *(v9 + 32);
  v16 = *(v9 + 40);
  if ((v14 - 1) >= 2)
  {
    sub_261FA0B3C(*(v9 + 24));

    sub_261FA0B3C(v14);
    sub_262000870(v14, v12, a2, a3);
    sub_261FC3EDC(v14);
  }

  else
  {
    v17 = swift_allocObject();
    *(v17 + 16) = sub_262001D30;
    *(v17 + 24) = v8;

    sub_261FA0B3C(v14);

    v27 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v16 + 16);
      sub_261FB9908();
      v16 = v25;
    }

    v18 = *(v16 + 16);
    if (v18 >= *(v16 + 24) >> 1)
    {
      sub_261FB9908();
      v16 = v26;
    }

    *(v16 + 16) = v18 + 1;
    v19 = v16 + 16 * v18;
    *(v19 + 32) = sub_262001D3C;
    *(v19 + 40) = v17;
    v10 = v27;
  }

  v20 = *(v9 + 24);
  v21 = *(v9 + 32);
  v22 = *(v9 + 40);
  *(v9 + 24) = v14;
  *(v9 + 32) = v15;
  *(v9 + 40) = v16;
  sub_261FC3EDC(v20);

  os_unfair_lock_unlock(v10);
}

uint64_t sub_262000870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262039FEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = sub_261F9B62C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_28;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  sub_262039FCC();
  v21[1] = MEMORY[0x277D84F90];
  sub_2620020C8(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

void RPPairableHostBrowser.registerHostDiscoveredHandler(on:handler:)(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    if (qword_27FEF8718 != -1)
    {
      OUTLINED_FUNCTION_6_2();
    }

    v7 = qword_27FEFAA30;
  }

  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;
  v9 = *(v3 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);

  v10 = a1;
  v11 = v7;

  sub_261FC354C(v9, sub_262001E30, v8);
}

uint64_t sub_262000C58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_262039FAC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262039FEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a1;
  aBlock[4] = sub_261FD3974;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261F78F64;
  aBlock[3] = &block_descriptor_11;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  sub_262039FCC();
  v21[1] = MEMORY[0x277D84F90];
  sub_2620020C8(&qword_28108B370, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA0B0, &unk_262040690);
  sub_261F98F68();
  sub_26203A75C();
  MEMORY[0x266722A20](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_262000F3C(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_63();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(a3, a6, v12);
}

Swift::Void __swiftcall RPPairableHostBrowser.startBrowsing()()
{
  swift_getObjectType();
  v1 = *&v0[OBJC_IVAR___RPPairableHostBrowser__stateStorage];
  v2 = v0;
  sub_261FC3694(v1, v2);
  v3 = *&v2[OBJC_IVAR___RPPairableHostBrowser_connection];
  OUTLINED_FUNCTION_63();
  *(swift_allocObject() + 16) = v2;
  v4 = v2;
  sub_261F940EC();
}

void sub_26200109C(id *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    v3 = *(a2 + OBJC_IVAR___RPPairableHostBrowser_connection + 8);
    v4 = **(a2 + OBJC_IVAR___RPPairableHostBrowser_connection);
    OUTLINED_FUNCTION_63();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DeviceServiceEvent(0);
    sub_2620020C8(&qword_27FEF9EB0, type metadata accessor for DeviceServiceEvent);
    sub_2620020C8(&qword_27FEF9EB8, type metadata accessor for DeviceServiceEvent);
    sub_26203984C();

    sub_26203975C();
    sub_261FC3EDC(*a1);
    *a1 = 2;
  }

  else
  {
    sub_26203A7CC();
    MEMORY[0x266722710](0xD000000000000026, 0x8000000262051CC0);
    v5 = sub_26203AE8C();
    MEMORY[0x266722710](v5);

    MEMORY[0x266722710](46, 0xE100000000000000);
    MEMORY[0x266722710](0x6F72427472617473, 0xEF2928676E697377);
    MEMORY[0x266722710](0xD00000000000001CLL, 0x8000000262051CF0);
    sub_26203A91C();
    __break(1u);
  }
}

void sub_262001300(uint64_t a1)
{
  v2 = type metadata accessor for PairableHostInfo(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceServiceEvent(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v37 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC0, &unk_262042070);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (v37 - v18);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_262001F48(a1, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v19;
      v23 = sub_26203A4AC();
      if (qword_27FEF86B8 != -1)
      {
        swift_once();
      }

      v24 = qword_27FEFA430;
      if (os_log_type_enabled(qword_27FEFA430, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v37[1] = v22;
        v38 = v26;
        *v25 = 136446210;
        v27 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
        v28 = sub_26203A20C();
        v30 = sub_261F67FE4(v28, v29, &v38);

        *(v25 + 4) = v30;
        _os_log_impl(&dword_261F5B000, v24, v23, "Receieved XPC error from service: %{public}s", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v26);
        MEMORY[0x266724180](v26, -1, -1);
        MEMORY[0x266724180](v25, -1, -1);
      }

      v31 = v22;
      sub_26200179C(v22);
    }

    else
    {
      sub_262001FB8(v19, v15);
      sub_26200206C(v15, v13);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26203A48C();
        if (qword_27FEF86B8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_26203E9E0;
        sub_26200206C(v15, v10);
        v33 = sub_26203A20C();
        v35 = v34;
        *(v32 + 56) = MEMORY[0x277D837D0];
        *(v32 + 64) = sub_261FBC69C();
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        sub_26203969C();

        sub_262002014(v15, type metadata accessor for DeviceServiceEvent);
        v36 = v13;
      }

      else
      {
        sub_262001FB8(v13, v5);
        sub_2620017F4();

        sub_262002014(v5, type metadata accessor for PairableHostInfo);
        v36 = v15;
      }

      sub_262002014(v36, type metadata accessor for DeviceServiceEvent);
    }
  }
}

void sub_26200179C(void *a1)
{
  v3 = *&v1[OBJC_IVAR___RPPairableHostBrowser__stateStorage];
  v4 = a1;
  sub_261FC3798(v3, a1, v1);
}

void sub_2620017F4()
{
  v1 = OUTLINED_FUNCTION_43_1();
  v2 = type metadata accessor for PairableHostInfo(v1);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26200206C(v0, v5);
  v6 = objc_allocWithZone(RPPairableHost);
  v7 = sub_261FD0F7C(v5);
  v8 = *(v0 + OBJC_IVAR___RPPairableHostBrowser__stateStorage);
  v9 = v7;
  sub_261FC38A4(v8, v9);
}

void sub_2620018C8(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    sub_26203A48C();
    if (qword_27FEF86B8 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9AA0, &qword_262040540);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_26203E9E0;
    v3 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9A90, &unk_26203EB50);
    v4 = sub_26203A20C();
    v6 = v5;
    *(v2 + 56) = MEMORY[0x277D837D0];
    *(v2 + 64) = sub_261FBC69C();
    *(v2 + 32) = v4;
    *(v2 + 40) = v6;
    sub_26203969C();

    sub_26200179C(v1);
  }
}

Swift::Void __swiftcall RPPairableHostBrowser.cancel()()
{
  sub_26203A4AC();
  if (qword_27FEF86B8 != -1)
  {
    swift_once();
  }

  sub_26203969C();

  sub_26200179C(0);
}

uint64_t sub_262001B38(uint64_t a1, id a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a2;
  sub_261FC3EDC(v6);
  *a1 = a2;
  v8 = *(a1 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = (v8 + 40);
    do
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v17 = a2;

      v12(&v17);

      v10 += 2;
      --v9;
    }

    while (v9);
  }

  v13 = MEMORY[0x277D84F90];
  *(a1 + 16) = MEMORY[0x277D84F90];
  v14 = *(a1 + 8);

  *(a1 + 8) = v13;
  v15 = *(a3 + OBJC_IVAR___RPPairableHostBrowser_connection);
  return sub_26203974C();
}

uint64_t sub_262001CBC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_262001D3C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_262001DB0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);

  v2 = OUTLINED_FUNCTION_2_20();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

uint64_t get_enum_tag_for_layout_string_So21RPPairableHostBrowserC19RemotePairingDeviceE5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_262001E68(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_262001ECC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_262001F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF9EC0, &unk_262042070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262001FB8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_6_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_262002014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_6_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26200206C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_43_1();
  v6 = v5(v4);
  OUTLINED_FUNCTION_6_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_2620020C8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL NWInterface.isValidForNetworkControlChannel.getter()
{
  if (qword_27FEF8528 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27FEF8F30;
  v1 = *algn_27FEF8F38;
  v2 = byte_27FEF8F40;
  if (byte_27FEF8F41)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_261F83BA8(v0, v1, v3 | v2);

  if (v4)
  {
    return 1;
  }

  v6 = sub_262039B2C();
  return !InterfaceIndexCorrespondsToAppleNCMInterface(v6);
}

uint64_t sub_2620021FC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v8;
      goto LABEL_7;
    case 2uLL:
      v5 = *(a1 + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v7 = v5;
LABEL_7:
      result = sub_262005DCC(a1, v7, v6, a3);
      break;
    case 3uLL:
      memset(v10, 0, 14);
      result = *(v10 + a3);
      break;
    default:
      v10[0] = a1;
      LOWORD(v10[1]) = a2;
      BYTE2(v10[1]) = BYTE2(a2);
      BYTE3(v10[1]) = BYTE3(a2);
      BYTE4(v10[1]) = BYTE4(a2);
      BYTE5(v10[1]) = BYTE5(a2);
      result = *(v10 + a3);
      break;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26200232C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v13[2] = *MEMORY[0x277D85DE8];
  switch(a2 >> 62)
  {
    case 1uLL:
      v11 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v8 = v11;
      goto LABEL_8;
    case 2uLL:
      v6 = *(a1 + 24);
      v7 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v8 = v6;
LABEL_8:
      result = sub_262005E44(a1, v8, v7, a3);
      v12 = *MEMORY[0x277D85DE8];
      return result;
    case 3uLL:
      memset(v13, 0, 14);
      v4 = *(v13 + a3);
      v9 = *MEMORY[0x277D85DE8];
      return bswap32(v4);
    default:
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v4 = *(v13 + a3);
      v5 = *MEMORY[0x277D85DE8];
      return bswap32(v4);
  }
}

uint64_t TunnelPacket.init(data:)()
{
  OUTLINED_FUNCTION_6_13();
  sub_261F6B73C(v4, v5);
  v6 = OUTLINED_FUNCTION_1_1();
  if (MEMORY[0x266721A20](v6) < 40)
  {
    v7 = OUTLINED_FUNCTION_1_1();
    sub_261F6BFFC(v7, v8);
    sub_261F9BCE0();
    sub_26203ACEC();
    v28 = v29;
    sub_261F9D610();
    OUTLINED_FUNCTION_6();
    sub_26203AD4C();
    swift_willThrow();
LABEL_5:
    v13 = OUTLINED_FUNCTION_1_1();
    return sub_261F6BFFC(v13, v14);
  }

  v9 = OUTLINED_FUNCTION_1_1();
  sub_261F6B73C(v9, v10);
  OUTLINED_FUNCTION_1_1();
  IPv6Header.init(_:)();
  if (v2)
  {
    v11 = OUTLINED_FUNCTION_1_1();
    sub_261F6BFFC(v11, v12);
    goto LABEL_5;
  }

  v16 = *(&v29 + 1);
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v22 = v33;
  v21 = v34;
  if (qword_28108CB70 != -1)
  {
    swift_once();
    v21 = v34;
    v19 = v31;
    v22 = v33;
    v18 = v30;
    v16 = *(&v29 + 1);
  }

  v35 = v16;
  v27 = v18;
  if (byte_27FF07DF0 == 1)
  {
    *(&v29 + 1) = v16;
    v30 = v18;
    v31 = v19;
    v33 = v22;
    v34 = v21;
    v23 = v19;
    v24 = v21;
    sub_261F6B73C(v19, v32);
    sub_261F6B73C(v22, v24);
    result = sub_2620043E4(&v29, v3, v0, &v28);
    v25 = v28;
  }

  else
  {
    v23 = v19;
    v24 = v21;
    result = sub_261F6BFFC(v3, v0);
    v25 = xmmword_26203F730;
  }

  *v1 = 30;
  v26 = v35;
  *(v1 + 8) = v17;
  *(v1 + 16) = v26;
  *(v1 + 24) = v27;
  *(v1 + 32) = v23;
  *(v1 + 40) = v20;
  *(v1 + 48) = v22;
  *(v1 + 56) = v24;
  *(v1 + 64) = v25;
  *(v1 + 80) = v3;
  *(v1 + 88) = v0;
  return result;
}

uint64_t sub_2620026A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2620026FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_262002760(unsigned __int8 *a1, unsigned __int8 a2)
{
  v3 = (*v2 & a2);
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_262002790(unsigned __int8 a1)
{
  v2 = *v1;
  if ((*v1 & a1) != 0)
  {
    *v1 = v2 & ~a1;
  }

  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t sub_2620027C0(char a1)
{
  v2 = *v1;
  *v1 |= a1;
  return (v2 & a1) | (((v2 & a1) == 0) << 8);
}

uint64_t TunnelInterfaceParameters.init(address:netmask:mtu:)@<X0>(uint64_t a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_262039ACC();
  OUTLINED_FUNCTION_6_1(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_75();
  v8(v9);
  v10 = type metadata accessor for TunnelInterfaceParameters();
  result = (v8)(a3 + *(v10 + 20), a1, v6);
  *(a3 + *(v10 + 24)) = a2;
  return result;
}

uint64_t sub_2620028E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_262039ACC();
  v11 = MEMORY[0x277CD8C80];
  v23[3] = v10;
  v23[4] = MEMORY[0x277CD8C80];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  v13 = *(*(v10 - 8) + 16);
  v13(boxed_opaque_existential_0, a2, v10);
  v14 = type metadata accessor for TunnelInterfaceParameters();
  v15 = *(v14 + 20);
  v22[3] = v10;
  v22[4] = v11;
  v16 = __swift_allocate_boxed_opaque_existential_0(v22);
  v13(v16, a2 + v15, v10);
  (*(a7 + 56))(a1, v23, v22, *(a2 + *(v14 + 24)), a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, a6, a7);
  return sub_261FCF214(a2);
}

uint64_t sub_262002A18@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v107 = *MEMORY[0x277D85DE8];
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEF9B60, &unk_262040530) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v3);
  v78 = &v75 - v4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEFA270, &qword_262041910) - 8) + 64);
  OUTLINED_FUNCTION_88();
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = v1 + *(type metadata accessor for TunnelInterfaceParameters() + 20);
  v10 = sub_262039AAC();
  v12 = v11;
  v13 = sub_262039AAC();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_42_3();
  v17 = MEMORY[0x266721A20](v16);
  v18 = OUTLINED_FUNCTION_20_8();
  if (v17 != MEMORY[0x266721A20](v18))
  {
    goto LABEL_88;
  }

  v19 = OUTLINED_FUNCTION_20_8();
  v20 = MEMORY[0x266721A20](v19);
  if (v20 < 0)
  {
LABEL_89:
    __break(1u);
LABEL_90:
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
  }

  v21 = v20;
  v22 = 0;
  v82 = v10;
  v81 = v10 >> 32;
  v80 = BYTE6(v12);
  v89 = v12 >> 62;
  v84 = v20;
  v77 = v8;
  v85 = v10;
  v91 = v12;
  while (1)
  {
    v23 = v22;
LABEL_5:
    v102 = v13;
    v100 = v13 >> 32;
    v83 = (v13 >> 32) - v13;
    v24 = v23;
    v101 = v23;
LABEL_6:
    if (v21 == v24)
    {
      break;
    }

    if (v24 >= v21)
    {
      __break(1u);
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
LABEL_77:
      __break(1u);
LABEL_78:
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
      goto LABEL_89;
    }

    if (__OFADD__(v24, 1))
    {
      goto LABEL_72;
    }

    v90 = v24 + 1;
    v92 = v13 >> 24;
    v93 = HIDWORD(v13);
    v96 = HIWORD(v13);
    v97 = HIBYTE(v13);
    v99 = HIDWORD(v15);
    v98 = v15 >> 16;
    v94 = v13 >> 40;
    v95 = v15 >> 8;
    v25 = v15 >> 62;
    v87 = v15 >> 40;
    v88 = HIWORD(v15);
    v86 = v15 >> 24;
    switch(v15 >> 62)
    {
      case 1uLL:
        if (v24 >= v100 || v101 < v102)
        {
          goto LABEL_77;
        }

        v32 = sub_26203937C();
        if (!v32)
        {
          goto LABEL_98;
        }

        v28 = v32;
        v33 = sub_2620393AC();
        v30 = v24 - v33;
        if (!__OFSUB__(v24, v33))
        {
          goto LABEL_24;
        }

        goto LABEL_79;
      case 2uLL:
        if (v24 < *(v13 + 16))
        {
          goto LABEL_76;
        }

        if (v24 >= *(v13 + 24))
        {
          goto LABEL_78;
        }

        v27 = sub_26203937C();
        if (!v27)
        {
          goto LABEL_100;
        }

        v28 = v27;
        v29 = sub_2620393AC();
        v30 = v24 - v29;
        if (__OFSUB__(v24, v29))
        {
          goto LABEL_82;
        }

LABEL_24:
        v26 = *(v28 + v30);
        break;
      case 3uLL:
        goto LABEL_97;
      default:
        if (v24 >= BYTE6(v15))
        {
          goto LABEL_75;
        }

        LOWORD(v103) = v13;
        BYTE2(v103) = BYTE2(v13);
        BYTE3(v103) = v92;
        BYTE4(v103) = v93;
        BYTE5(v103) = v94;
        BYTE6(v103) = v96;
        HIBYTE(v103) = v97;
        LOBYTE(v104) = v15;
        BYTE1(v104) = v95;
        BYTE2(v104) = v98;
        HIBYTE(v104) = BYTE3(v15);
        LOBYTE(v105) = v99;
        HIBYTE(v105) = BYTE5(v15);
        v26 = *(&v103 + v24);
        break;
    }

    switch(v89)
    {
      case 1uLL:
        if (v24 < v82 || v24 >= v81)
        {
          goto LABEL_83;
        }

        v40 = sub_26203937C();
        if (!v40)
        {
          goto LABEL_101;
        }

        v36 = v40;
        v41 = sub_2620393AC();
        v38 = v24 - v41;
        if (!__OFSUB__(v24, v41))
        {
          goto LABEL_41;
        }

        goto LABEL_85;
      case 2uLL:
        if (v24 < *(v85 + 16))
        {
          goto LABEL_80;
        }

        if (v24 >= *(v85 + 24))
        {
          goto LABEL_84;
        }

        v35 = sub_26203937C();
        if (!v35)
        {
          goto LABEL_102;
        }

        v36 = v35;
        v37 = sub_2620393AC();
        v38 = v24 - v37;
        if (__OFSUB__(v24, v37))
        {
          goto LABEL_86;
        }

LABEL_41:
        v34 = *(v36 + v38);
        v21 = v84;
LABEL_42:
        if (v25 == 1)
        {
          if (v24 >= v100 || v101 < v102)
          {
            goto LABEL_73;
          }

          v43 = v34 & v26;
          v44 = v15 & 0x3FFFFFFFFFFFFFFFLL;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {

            if (sub_26203937C() && __OFSUB__(v102, sub_2620393AC()))
            {
              goto LABEL_87;
            }

            v45 = sub_2620393BC();
            v46 = *(v45 + 48);
            v47 = *(v45 + 52);
            swift_allocObject();
            v48 = sub_26203935C();

            v44 = v48;
          }

          sub_26203934C();
          v49 = sub_26203937C();
          if (!v49)
          {
            goto LABEL_96;
          }

          v50 = v49;
          v51 = sub_2620393AC();
          if (__OFSUB__(v24, v51))
          {
            goto LABEL_74;
          }

          *(v50 + v24 - v51) = v43;
          v15 = v44 | 0x4000000000000000;
          ++v24;
          goto LABEL_6;
        }

        if (v25 == 2)
        {
          if (v24 < *(v13 + 16))
          {
            goto LABEL_91;
          }

          if (v24 >= *(v13 + 24))
          {
            goto LABEL_92;
          }

          v52 = v34 & v26;
          v53 = v15 & 0x3FFFFFFFFFFFFFFFLL;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_62;
          }

          v54 = *(v13 + 16);
          v55 = *(v13 + 24);
          if (sub_26203937C() && __OFSUB__(v54, sub_2620393AC()))
          {
            goto LABEL_95;
          }

          if (__OFSUB__(v55, v54))
          {
            goto LABEL_94;
          }

          v56 = sub_2620393BC();
          v57 = *(v56 + 48);
          v58 = *(v56 + 52);
          swift_allocObject();
          v59 = sub_26203935C();

          v53 = v59;
LABEL_62:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = *(v13 + 16);
            v61 = *(v13 + 24);
            sub_2620394AC();
            v62 = swift_allocObject();
            *(v62 + 16) = v60;
            *(v62 + 24) = v61;

            v13 = v62;
          }

          v63 = v53;
          sub_26203934C();
          v64 = sub_26203937C();
          if (!v64)
          {
            __break(1u);
LABEL_104:
            sub_261F66E60(v63, &qword_27FEFA270, &qword_262041910);
            result = sub_26203A91C();
            __break(1u);
            return result;
          }

          v65 = v64;
          v66 = sub_2620393AC();
          if (__OFSUB__(v24, v66))
          {
            goto LABEL_93;
          }

          *(v65 + v24 - v66) = v52;
          v15 = v53 | 0x8000000000000000;
          v23 = v90;
          goto LABEL_5;
        }

        LOWORD(v103) = v13;
        BYTE2(v103) = BYTE2(v13);
        BYTE3(v103) = v92;
        BYTE4(v103) = v93;
        BYTE5(v103) = v94;
        BYTE6(v103) = v96;
        HIBYTE(v103) = v97;
        LOBYTE(v104) = v15;
        BYTE1(v104) = v95;
        BYTE2(v104) = v98;
        HIBYTE(v104) = v86;
        LOBYTE(v105) = v99;
        HIBYTE(v105) = v87;
        v106 = v88;
        if (v24 >= v88)
        {
          goto LABEL_90;
        }

        *(&v103 + v24) = v34 & v26;
        v13 = v103;
        v15 = v76 & 0xF00000000000000 | v104 | ((v105 | (v106 << 16)) << 32);
        v76 = v15;
        v22 = v90;
        break;
      case 3uLL:
        goto LABEL_99;
      default:
        if (v24 >= v80)
        {
          goto LABEL_81;
        }

        v103 = v85;
        v104 = v91;
        v105 = WORD2(v91);
        v34 = *(&v103 + v24);
        goto LABEL_42;
    }
  }

  v67 = sub_262039B3C();
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v67);
  v68 = OUTLINED_FUNCTION_20_8();
  sub_261F6B73C(v68, v69);
  v63 = v77;
  OUTLINED_FUNCTION_20_8();
  sub_262039ADC();
  v70 = sub_262039ACC();
  if (__swift_getEnumTagSinglePayload(v63, 1, v70) == 1)
  {
    goto LABEL_104;
  }

  sub_261F6BFFC(v85, v91);
  (*(*(v70 - 8) + 32))(v79, v63, v70);
  v71 = OUTLINED_FUNCTION_20_8();
  result = sub_261F6BFFC(v71, v72);
  v74 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_262003314()
{
  if (qword_28108B4A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_28108B4A8;
  v1 = unk_28108B4B0;
  v2 = byte_28108B4B8;
  if (byte_28108B4B9)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_261F83BA8(v0, v1, v3 | v2);

  byte_27FF07DF0 = v4 & 1;
  return result;
}

uint64_t sub_2620033D4(char a1)
{
  v2 = a1 < 0;
  if (a1 < 0)
  {
    v3 = 67;
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x266722710](v3, v4);

  OUTLINED_FUNCTION_21_7();
  v5 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v5);

  OUTLINED_FUNCTION_21_7();
  v6 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v6);

  OUTLINED_FUNCTION_21_7();
  v7 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v7);

  OUTLINED_FUNCTION_21_7();
  v8 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v8);

  OUTLINED_FUNCTION_21_7();
  v9 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v9);

  OUTLINED_FUNCTION_21_7();
  v10 = OUTLINED_FUNCTION_42_3();
  MEMORY[0x266722710](v10);

  v11 = (a1 & 0x10) == 0;
  if ((a1 & 0x10) != 0)
  {
    v12 = 46;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xE000000000000000;
  }

  else
  {
    v13 = 0xE100000000000000;
  }

  OUTLINED_FUNCTION_21_7();
  MEMORY[0x266722710](v12, v13);

  MEMORY[0x266722710](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_2620035FC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_30_1();
  *a1 = result;
  return result;
}

uint64_t sub_262003630@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002750(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_262003660@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262031C64(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_262003690@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002758(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2620036C8@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002790(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_2620036FC@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2620027C0(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_262003748@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_262002808(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_2620037BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2620026FC(a1);
  *a2 = result;
  return result;
}

void sub_2620037E4()
{
  OUTLINED_FUNCTION_6_13();
  if (MEMORY[0x266721A20]() >= 20)
  {
    OUTLINED_FUNCTION_19_7();
    switch(v11)
    {
      case 1:
        v13 = v4 + 2;
        v14 = v3;
        v12 = v4;
        goto LABEL_8;
      case 2:
        v12 = *(v1 + 16);
        v13 = v12 + 2;
        if (__OFADD__(v12, 2))
        {
          goto LABEL_140;
        }

        v14 = *(v1 + 24);
LABEL_8:
        if (v14 < v13 || v12 >= v13)
        {
          goto LABEL_56;
        }

        v16 = OUTLINED_FUNCTION_1_1();
        v18 = sub_261F6BE04(v16, v17, 0);
        if (v2)
        {
          if (v2 == 2)
          {
            v19 = *(v1 + 16);
          }

          else
          {
            v19 = v4;
          }
        }

        else
        {
          v19 = 0;
        }

        v20 = __OFADD__(v19, 2);
        v21 = v19 + 2;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          v22 = v21 + 2;
          if (!__OFADD__(v21, 2))
          {
            if (v2)
            {
              if (v2 == 2)
              {
                v23 = *(v1 + 16);
              }

              else
              {
                v23 = v4;
              }

              if (v21 < v23)
              {
                goto LABEL_56;
              }

              if (v2 == 2)
              {
                v24 = *(v1 + 24);
              }

              else
              {
                v24 = v3;
              }
            }

            else
            {
              if (v21 < 0)
              {
                goto LABEL_56;
              }

              v24 = v5;
            }

            if (v21 >= v22 || v24 < v22)
            {
              goto LABEL_56;
            }

            v26 = OUTLINED_FUNCTION_1_1();
            sub_261F6BE04(v26, v27, 2);
            if (v2)
            {
              if (v2 == 2)
              {
                v28 = *(v1 + 16);
              }

              else
              {
                v28 = v4;
              }
            }

            else
            {
              v28 = 0;
            }

            v20 = __OFADD__(v28, 4);
            v29 = v28 + 4;
            if (!v20)
            {
              v30 = v29 + 4;
              if (!__OFADD__(v29, 4))
              {
                if (v2)
                {
                  if (v2 == 2)
                  {
                    v31 = *(v1 + 16);
                  }

                  else
                  {
                    v31 = v4;
                  }

                  if (v29 < v31)
                  {
                    goto LABEL_56;
                  }

                  if (v2 == 2)
                  {
                    v32 = *(v1 + 24);
                  }

                  else
                  {
                    v32 = v3;
                  }
                }

                else
                {
                  if (v29 < 0)
                  {
                    goto LABEL_56;
                  }

                  v32 = v5;
                }

                if (v29 < v30 && v32 >= v30)
                {
                  v36 = OUTLINED_FUNCTION_1_1();
                  v38 = sub_26200232C(v36, v37, 4);
                  if (v2)
                  {
                    if (v2 == 2)
                    {
                      v39 = *(v1 + 16);
                    }

                    else
                    {
                      v39 = v4;
                    }
                  }

                  else
                  {
                    v39 = 0;
                  }

                  v20 = __OFADD__(v39, 8);
                  v40 = v39 + 8;
                  if (!v20)
                  {
                    v41 = v40 + 4;
                    if (!__OFADD__(v40, 4))
                    {
                      switch(v2)
                      {
                        case 1:
                          v43 = v4;
                          goto LABEL_77;
                        case 2:
                          v43 = *(v1 + 16);
LABEL_77:
                          if (v40 < v43)
                          {
                            goto LABEL_56;
                          }

                          if (v2 == 2)
                          {
                            v42 = *(v1 + 24);
                          }

                          else
                          {
                            v42 = v3;
                          }

LABEL_81:
                          if (v40 >= v41 || v42 < v41)
                          {
                            goto LABEL_56;
                          }

                          v76 = v38;
                          v50 = OUTLINED_FUNCTION_1_1();
                          v47 = sub_26200232C(v50, v51, 8);
                          if (v2)
                          {
                            if (v2 == 2)
                            {
                              v48 = *(v1 + 16);
                            }

                            else
                            {
                              v48 = v4;
                            }
                          }

                          else
                          {
                            v48 = 0;
                          }

LABEL_90:
                          v20 = __OFADD__(v48, 13);
                          v52 = v48 + 13;
                          if (v20)
                          {
                            goto LABEL_145;
                          }

                          v53 = v52 + 1;
                          if (__OFADD__(v52, 1))
                          {
                            goto LABEL_146;
                          }

                          switch(v2)
                          {
                            case 1:
                              v55 = v4;
                              goto LABEL_104;
                            case 2:
                              v55 = *(v1 + 16);
LABEL_104:
                              if (v52 < v55)
                              {
                                goto LABEL_56;
                              }

                              if (v2 == 2)
                              {
                                v54 = *(v1 + 24);
                              }

                              else
                              {
                                v54 = v3;
                              }

LABEL_108:
                              if (v52 >= v53 || v54 < v53)
                              {
                                goto LABEL_56;
                              }

                              v75 = v47;
                              v62 = OUTLINED_FUNCTION_1_1();
                              v59 = sub_2620021FC(v62, v63, 13);
                              if (v2)
                              {
                                if (v2 == 2)
                                {
                                  v60 = *(v1 + 16);
                                }

                                else
                                {
                                  v60 = v4;
                                }
                              }

                              else
                              {
                                v60 = 0;
                              }

LABEL_117:
                              v20 = __OFADD__(v60, 14);
                              v64 = v60 + 14;
                              if (v20)
                              {
                                goto LABEL_147;
                              }

                              v65 = v64 + 2;
                              if (__OFADD__(v64, 2))
                              {
                                goto LABEL_148;
                              }

                              switch(v2)
                              {
                                case 1:
                                  goto LABEL_123;
                                case 2:
                                  v4 = *(v1 + 16);
LABEL_123:
                                  if (v64 < v4)
                                  {
                                    goto LABEL_56;
                                  }

                                  if (v2 == 2)
                                  {
                                    v3 = *(v1 + 24);
                                  }

LABEL_126:
                                  if (v64 >= v65 || v3 < v65)
                                  {
                                    goto LABEL_56;
                                  }

LABEL_137:
                                  v77 = v59;
                                  v68 = OUTLINED_FUNCTION_1_1();
                                  v70 = v69;
                                  v72 = sub_261F6BE04(v68, v71, 14);
                                  v73 = OUTLINED_FUNCTION_1_1();
                                  sub_261F6BFFC(v73, v74);
                                  *v0 = v18;
                                  *(v0 + 2) = v70;
                                  *(v0 + 4) = v76;
                                  *(v0 + 8) = v75;
                                  *(v0 + 12) = v72;
                                  *(v0 + 14) = v77;
                                  break;
                                case 3:
                                  if (v64 < 0)
                                  {
                                    goto LABEL_56;
                                  }

                                  if (v65 > 0 || __OFSUB__(v64, v65))
                                  {
                                    goto LABEL_56;
                                  }

                                  goto LABEL_137;
                                default:
                                  if (v64 < 0)
                                  {
                                    goto LABEL_56;
                                  }

                                  v3 = v5;
                                  goto LABEL_126;
                              }

                              break;
                            case 3:
                              if (v52 < 0)
                              {
                                goto LABEL_56;
                              }

                              if (v53 > 0 || __OFSUB__(v52, v53))
                              {
                                goto LABEL_56;
                              }

                              v75 = v47;
                              v57 = OUTLINED_FUNCTION_1_1();
                              v59 = sub_2620021FC(v57, v58, 13);
                              v60 = 0;
                              goto LABEL_117;
                            default:
                              if (v52 < 0)
                              {
                                goto LABEL_56;
                              }

                              v54 = v5;
                              goto LABEL_108;
                          }

                          break;
                        case 3:
                          if (v40 < 0)
                          {
                            goto LABEL_56;
                          }

                          if (v41 > 0 || __OFSUB__(v40, v41))
                          {
                            goto LABEL_56;
                          }

                          v76 = v38;
                          v45 = OUTLINED_FUNCTION_1_1();
                          v47 = sub_26200232C(v45, v46, 8);
                          v48 = 0;
                          goto LABEL_90;
                        default:
                          if (v40 < 0)
                          {
                            goto LABEL_56;
                          }

                          v42 = v5;
                          goto LABEL_81;
                      }

                      return;
                    }

LABEL_144:
                    __break(1u);
LABEL_145:
                    __break(1u);
LABEL_146:
                    __break(1u);
LABEL_147:
                    __break(1u);
LABEL_148:
                    __break(1u);
                    return;
                  }

LABEL_143:
                  __break(1u);
                  goto LABEL_144;
                }

LABEL_56:
                sub_261F9BCE0();
                OUTLINED_FUNCTION_131();
                sub_26203ACEC();
                sub_261F9D610();
                OUTLINED_FUNCTION_6();
                OUTLINED_FUNCTION_12_10();
                goto LABEL_57;
              }

LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

LABEL_141:
            __break(1u);
            goto LABEL_142;
          }
        }

        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      case 3:
        goto LABEL_56;
      default:
        v12 = 0;
        v13 = 2;
        v14 = v5;
        goto LABEL_8;
    }
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_122();
  sub_26203ACEC();
  OUTLINED_FUNCTION_17_9();
  sub_26203A7CC();

  OUTLINED_FUNCTION_16_11();
  v6 = OUTLINED_FUNCTION_1_1();
  MEMORY[0x266721A20](v6);
  OUTLINED_FUNCTION_126();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  v8 = OUTLINED_FUNCTION_0_28();
  MEMORY[0x266722710](v8);
  OUTLINED_FUNCTION_126();
  v9 = sub_26203ABAC();
  MEMORY[0x266722710](v9);

  v10 = OUTLINED_FUNCTION_15_8();
  MEMORY[0x266722710](v10, 0xE600000000000000);
  sub_261F9D610();
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_0_0();
LABEL_57:
  sub_26203AD4C();
  swift_willThrow();
  v34 = OUTLINED_FUNCTION_1_1();
  sub_261F6BFFC(v34, v35);
}

void sub_262003DB4()
{
  OUTLINED_FUNCTION_6_13();
  if (MEMORY[0x266721A20]() >= 16)
  {
    OUTLINED_FUNCTION_19_7();
    switch(v11)
    {
      case 1:
        v13 = v4 + 2;
        v14 = v3;
        v12 = v4;
        goto LABEL_8;
      case 2:
        v12 = *(v1 + 16);
        v13 = v12 + 2;
        if (__OFADD__(v12, 2))
        {
          goto LABEL_57;
        }

        v14 = *(v1 + 24);
LABEL_8:
        if (v14 < v13 || v12 >= v13)
        {
          goto LABEL_53;
        }

        v16 = OUTLINED_FUNCTION_1_1();
        v18 = sub_261F6BE04(v16, v17, 0);
        v19 = v2;
        if (v2)
        {
          if (v2 == 2)
          {
            v20 = *(v1 + 16);
          }

          else
          {
            v20 = v4;
          }
        }

        else
        {
          v20 = 0;
        }

        v21 = __OFADD__(v20, 2);
        v22 = v20 + 2;
        if (v21)
        {
          __break(1u);
        }

        else
        {
          v23 = v22 + 2;
          if (!__OFADD__(v22, 2))
          {
            if (v2)
            {
              if (v2 == 2)
              {
                v24 = *(v1 + 16);
              }

              else
              {
                v24 = v4;
              }

              if (v22 < v24)
              {
                goto LABEL_53;
              }

              if (v2 == 2)
              {
                v25 = *(v1 + 24);
              }

              else
              {
                v25 = v3;
              }
            }

            else
            {
              if (v22 < 0)
              {
                goto LABEL_53;
              }

              v25 = v5;
            }

            if (v22 >= v23 || v25 < v23)
            {
              goto LABEL_53;
            }

            v27 = OUTLINED_FUNCTION_1_1();
            v29 = sub_261F6BE04(v27, v28, 2);
            if (v2)
            {
              if (v2 == 2)
              {
                v19 = *(v1 + 16);
              }

              else
              {
                v19 = v4;
              }
            }

            v30 = v19 + 4;
            if (!__OFADD__(v19, 4))
            {
              v31 = v19 + 6;
              if (!__OFADD__(v30, 2))
              {
                if (v2)
                {
                  if (v2 == 2)
                  {
                    v4 = *(v1 + 16);
                  }

                  if (v30 >= v4)
                  {
                    if (v2 == 2)
                    {
                      v3 = *(v1 + 24);
                    }

LABEL_48:
                    if (v30 < v31 && v3 >= v31)
                    {
                      v35 = v29;
                      v36 = OUTLINED_FUNCTION_1_1();
                      v38 = sub_261F6BE04(v36, v37, 4);
                      v39 = OUTLINED_FUNCTION_1_1();
                      sub_261F6BFFC(v39, v40);
                      *v0 = v18;
                      v0[1] = v35;
                      v0[2] = v38;
                      return;
                    }
                  }
                }

                else if ((v30 & 0x8000000000000000) == 0)
                {
                  v3 = v5;
                  goto LABEL_48;
                }

LABEL_53:
                sub_261F9BCE0();
                OUTLINED_FUNCTION_131();
                sub_26203ACEC();
                sub_261F9D610();
                OUTLINED_FUNCTION_6();
                OUTLINED_FUNCTION_12_10();
                goto LABEL_54;
              }

LABEL_59:
              __break(1u);
              return;
            }

LABEL_58:
            __break(1u);
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      case 3:
        goto LABEL_53;
      default:
        v12 = 0;
        v13 = 2;
        v14 = v5;
        goto LABEL_8;
    }
  }

  sub_261F9BCE0();
  OUTLINED_FUNCTION_122();
  sub_26203ACEC();
  sub_26203A7CC();

  OUTLINED_FUNCTION_16_11();
  v6 = OUTLINED_FUNCTION_1_1();
  MEMORY[0x266721A20](v6);
  OUTLINED_FUNCTION_126();
  v7 = sub_26203ABAC();
  MEMORY[0x266722710](v7);

  v8 = OUTLINED_FUNCTION_0_28();
  MEMORY[0x266722710](v8);
  OUTLINED_FUNCTION_126();
  v9 = sub_26203ABAC();
  MEMORY[0x266722710](v9);

  v10 = OUTLINED_FUNCTION_15_8();
  MEMORY[0x266722710](v10, 0xE600000000000000);
  sub_261F9D610();
  OUTLINED_FUNCTION_14_0();
LABEL_54:
  sub_26203AD4C();
  swift_willThrow();
  v33 = OUTLINED_FUNCTION_1_1();
  sub_261F6BFFC(v33, v34);
}