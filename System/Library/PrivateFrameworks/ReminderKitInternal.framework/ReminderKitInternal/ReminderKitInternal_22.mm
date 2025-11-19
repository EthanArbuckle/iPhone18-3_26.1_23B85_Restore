id sub_2301FF918(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t (*a4)(void), uint64_t *a5, void (*a6)(char *, uint64_t))
{
  v116 = a6;
  v119 = a3;
  v112 = a2;
  v9 = sub_2303113D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v113 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v114 = &v107 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v110 = (&v107 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v115 = &v107 - v18;
  MEMORY[0x28223BE20](v17);
  v118 = &v107 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14A68);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v109 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v107 = &v107 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v111 = &v107 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v108 = &v107 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v107 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v107 - v35;
  v37 = a4(0);
  sub_230055F74(a1, &v122, &qword_27DB14810);
  v117 = v36;
  if (v123)
  {
    sub_23004B314(&v122, v121);
    sub_23004D5CC(v121, v120);
    sub_2303113B8();
    __swift_destroy_boxed_opaque_existential_1(v121);
    v38 = v10;
    v39 = *(v10 + 56);
    v40 = v36;
    v41 = 0;
  }

  else
  {
    v38 = v10;
    v39 = *(v10 + 56);
    v40 = v36;
    v41 = 1;
  }

  v42 = v9;
  v39(v40, v41, 1, v9);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  *&v122 = v37;
  v43 = v118;
  sub_2303113B8();
  if (v119)
  {
    if (qword_27DB13AD0 != -1)
    {
      swift_once();
    }

    v44 = sub_23030EF48();
    __swift_project_value_buffer(v44, qword_27DB14A50);
    v45 = v117;
    sub_230055F74(v117, v34, &qword_27DB14A68);
    v46 = v38;
    v47 = *(v38 + 16);
    v48 = v115;
    v47(v115, v43, v42);

    v49 = sub_23030EF38();
    v50 = sub_230310298();

    v51 = os_log_type_enabled(v49, v50);
    v110 = v47;
    if (v51)
    {
      LODWORD(v109) = v50;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v122 = v53;
      *v52 = 136315650;
      v54 = v108;
      sub_230055F74(v34, v108, &qword_27DB14A68);
      if ((*(v46 + 48))(v54, 1, v42) == 1)
      {
        v55 = 0xE300000000000000;
        v56 = 7104878;
      }

      else
      {
        v70 = v114;
        (*(v46 + 32))(v114, v54, v42);
        v47(v113, v70, v42);
        v56 = sub_23030F948();
        v55 = v71;
        v72 = v70;
        v48 = v115;
        (*(v46 + 8))(v72, v42);
      }

      sub_230061918(v34, &qword_27DB14A68);
      v73 = sub_23004E30C(v56, v55, &v122);

      *(v52 + 4) = v73;
      *(v52 + 12) = 2080;
      v74 = sub_2303113C8();
      v76 = v75;
      v116 = *(v46 + 8);
      v116(v48, v42);
      v77 = sub_23004E30C(v74, v76, &v122);

      *(v52 + 14) = v77;
      *(v52 + 22) = 2080;
      v68 = v112;
      *(v52 + 24) = sub_23004E30C(v112, v119, &v122);
      _os_log_impl(&dword_230044000, v49, v109, "Failed cast {given: %s, expect: %s, message: %s}", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v53, -1, -1);
      MEMORY[0x231914180](v52, -1, -1);

      v67 = v46;
      v45 = v117;
    }

    else
    {

      v116 = *(v46 + 8);
      v116(v48, v42);
      sub_230061918(v34, &qword_27DB14A68);
      v67 = v46;
      v68 = v112;
    }

    *&v122 = 0;
    *(&v122 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v122 = 0xD000000000000014;
    *(&v122 + 1) = 0x8000000230340290;
    v78 = v111;
    sub_230055F74(v45, v111, &qword_27DB14A68);
    v79 = (*(v67 + 48))(v78, 1, v42);
    v43 = v118;
    if (v79 == 1)
    {
      v80 = 0xE300000000000000;
      v81 = 7104878;
      v69 = v116;
    }

    else
    {
      v82 = v114;
      (*(v67 + 32))(v114, v78, v42);
      v110(v113, v82, v42);
      v81 = sub_23030F948();
      v80 = v83;
      v69 = v116;
      v116(v82, v42);
    }

    v84 = objc_opt_self();
    MEMORY[0x231911790](v81, v80);

    MEMORY[0x231911790](0x746365707865202CLL, 0xEA0000000000203ALL);
    v85 = sub_2303113C8();
    MEMORY[0x231911790](v85);

    MEMORY[0x231911790](0x67617373656D202CLL, 0xEC00000022203A65);
    MEMORY[0x231911790](v68, v119);
    v86 = 8829;
    v87 = 0xE200000000000000;
  }

  else
  {
    if (qword_27DB13AD0 != -1)
    {
      swift_once();
    }

    v57 = sub_23030EF48();
    __swift_project_value_buffer(v57, qword_27DB14A50);
    sub_230055F74(v117, v31, &qword_27DB14A68);
    v58 = *(v38 + 16);
    v59 = v110;
    v58(v110, v43, v9);
    v60 = sub_23030EF38();
    v61 = sub_230310298();
    v62 = os_log_type_enabled(v60, v61);
    v119 = v58;
    if (v62)
    {
      LODWORD(v116) = v61;
      v63 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      *&v122 = v115;
      *v63 = 136315394;
      v64 = v107;
      sub_230055F74(v31, v107, &qword_27DB14A68);
      if ((*(v38 + 48))(v64, 1, v9) == 1)
      {
        v65 = 0xE300000000000000;
        v66 = 7104878;
      }

      else
      {
        v88 = v114;
        (*(v38 + 32))(v114, v64, v42);
        v58(v113, v88, v42);
        v66 = sub_23030F948();
        v65 = v89;
        (*(v38 + 8))(v88, v42);
      }

      v45 = v117;
      sub_230061918(v31, &qword_27DB14A68);
      v90 = sub_23004E30C(v66, v65, &v122);

      *(v63 + 4) = v90;
      *(v63 + 12) = 2080;
      v91 = v110;
      v92 = sub_2303113C8();
      v94 = v93;
      v95 = *(v38 + 8);
      v95(v91, v42);
      v96 = sub_23004E30C(v92, v94, &v122);

      *(v63 + 14) = v96;
      v69 = v95;
      _os_log_impl(&dword_230044000, v60, v116, "Failed cast {given: %s, expect: %s}", v63, 0x16u);
      v97 = v115;
      swift_arrayDestroy();
      MEMORY[0x231914180](v97, -1, -1);
      MEMORY[0x231914180](v63, -1, -1);

      v43 = v118;
    }

    else
    {

      v69 = *(v38 + 8);
      v69(v59, v9);
      sub_230061918(v31, &qword_27DB14A68);
      v45 = v117;
    }

    v98 = v109;
    *&v122 = 0;
    *(&v122 + 1) = 0xE000000000000000;
    sub_230310848();

    *&v122 = 0xD000000000000014;
    *(&v122 + 1) = 0x8000000230340290;
    sub_230055F74(v45, v98, &qword_27DB14A68);
    if ((*(v38 + 48))(v98, 1, v42) == 1)
    {
      v99 = 0xE300000000000000;
      v100 = 7104878;
    }

    else
    {
      v101 = v114;
      (*(v38 + 32))(v114, v98, v42);
      v119(v113, v101, v42);
      v100 = sub_23030F948();
      v99 = v102;
      v69(v101, v42);
    }

    v84 = objc_opt_self();
    MEMORY[0x231911790](v100, v99);

    MEMORY[0x231911790](0x746365707865202CLL, 0xEA0000000000203ALL);
    v103 = sub_2303113C8();
    MEMORY[0x231911790](v103);

    v86 = 125;
    v87 = 0xE100000000000000;
  }

  MEMORY[0x231911790](v86, v87);
  v104 = sub_23030F8B8();

  v105 = [v84 internalErrorWithDebugDescription_];

  v69(v43, v42);
  sub_230061918(v45, &qword_27DB14A68);
  return v105;
}

void REMSwiftInvocator.performSwiftInvocation<A>(_:parameters:)(unint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v100 = a2;
  v96 = a1;
  v90 = a7;
  v105 = a6;
  v106 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v89 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v94 = &v82 - v13;
  MEMORY[0x28223BE20](v12);
  v87 = &v82 - v14;
  v15 = sub_230310A58();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v104 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E7E8();
  swift_allocObject();
  v18 = sub_23030E7D8();
  v19 = *(a5 + 8);
  v98 = v7;
  v97 = a3;
  v99 = a5;
  v92 = a5 + 8;
  v91 = v19;
  v20 = v19(a3, a5);
  v21 = MEMORY[0x277D84F90];
  v22 = sub_23004C2B4(MEMORY[0x277D84F90]);
  v103 = type metadata accessor for REMStoreObjectsContainer();
  v23 = swift_allocObject();
  v23[2] = v20;
  v24 = v23;
  v23[3] = v22;
  v25 = v23 + 3;
  v23[4] = sub_23004C2B4(v21);
  if (qword_280C9C458 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v15, qword_280C9C460);
  v27 = v15;
  v28 = v26;
  v31 = *(v16 + 16);
  v30 = v16 + 16;
  v29 = v31;
  v32 = v104;
  v93 = v27;
  (v31)(v104, v26);
  v111 = v103;
  v110 = v24;
  v102 = v24;

  v33 = sub_23030E7C8();
  sub_23004BC18(&v110, v32);
  v33(&v109, 0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v34 = v101;
  v35 = sub_23030E7B8();
  if (v34)
  {
    v37 = v106;
    if (qword_27DB13C28 != -1)
    {
      swift_once();
    }

    v38 = sub_23030EF48();
    __swift_project_value_buffer(v38, qword_27DB17288);
    v39 = v34;
    v40 = sub_23030EF38();
    v41 = sub_230310288();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v110 = v43;
      *v42 = 136315394;
      swift_getErrorValue();
      v44 = Error.rem_errorDescription.getter(v108[5]);
      v46 = sub_23004E30C(v44, v45, &v110);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v109 = v37;
      swift_getMetatypeMetadata();
      v47 = sub_23030F948();
      v49 = sub_23004E30C(v47, v48, &v110);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_230044000, v40, v41, "Failed to encode the parameters of REMSwiftInvocable {error: %s, invocation: %s}", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231914180](v43, -1, -1);
      MEMORY[0x231914180](v42, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v84 = v29;
    v85 = v28;
    v86 = v30;
    v101 = v18;
    v50 = v36;
    v51 = v35;
    swift_beginAccess();
    v52 = *v25;
    v53 = objc_allocWithZone(MEMORY[0x277D44860]);

    v108[0] = [v53 init];
    v54 = v106;
    v110 = v106;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v56 = sub_23030F948();
    v58 = v57;
    v100 = &v82;
    MEMORY[0x28223BE20](v56);
    *(&v82 - 10) = v97;
    *(&v82 - 9) = v54;
    v59 = v105;
    *(&v82 - 8) = v99;
    *(&v82 - 7) = v59;
    *(&v82 - 6) = v108;
    v60 = v96;
    *(&v82 - 5) = v98;
    *(&v82 - 4) = v60;
    *(&v82 - 3) = v51;
    *(&v82 - 2) = v50;
    *(&v82 - 1) = v52;
    v61 = sub_230310268();
    sub_2300535B4(v61, v56, v58, v61, sub_2302017CC, (&v82 - 12));
    v82 = MetatypeMetadata;
    v83 = v51;
    v96 = v50;

    sub_23030E7A8();
    swift_allocObject();
    sub_23030E798();
    v100 = v108[0];
    v62 = [v108[0] resultStorages];
    v63 = sub_23030F658();

    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B68);
    v110 = v63;
    sub_23004D5CC(&v110, &v109);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14B70);
    if (swift_dynamicCast())
    {
      v64 = v107;
      __swift_destroy_boxed_opaque_existential_1(&v110);
      v65 = v91(v97, v99);
      v66 = v103;
      v67 = swift_allocObject();
      v67[2] = v65;
      v67[3] = v64;
      v67[4] = sub_23004C2B4(MEMORY[0x277D84F90]);
      v68 = v104;
      v84(v104, v85, v93);
      v111 = v66;
      v110 = v67;

      v69 = sub_23030E788();
      sub_23004BC18(&v110, v68);
      v69(&v109, 0);
      v70 = [v100 resultData];
      v71 = sub_23030EA18();
      v73 = v72;

      v74 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v75 = v94;
      sub_23030E778();
      sub_23005FE3C(v71, v73);
      v76 = v89;
      v77 = v75;
      v106 = *(v89 + 32);
      v78 = v100;
      v79 = v87;
      (v106)(v87, v77, v74);
      v80 = v88;
      (*(v76 + 16))(v88, v79, v74);
      v105 = [v78 latestFetchResultToken];

      sub_23005FE3C(v83, v96);

      (*(v76 + 8))(v79, v74);
      v81 = v90;
      (v106)(v90, v80, v74);
      *(v81 + *(type metadata accessor for REMInvocationResult() + 28)) = v105;
    }

    else
    {
      sub_23004D5CC(&v110, &v109);
      sub_2301FEB58(&v109, 0, 0, &qword_27DB14B70, &unk_230317FB0, &qword_27DB172E8, &unk_230327A60);
      sub_230061918(&v109, &qword_27DB14810);
      swift_willThrow();
      sub_23005FE3C(v83, v96);

      __swift_destroy_boxed_opaque_existential_1(&v110);
    }
  }
}

uint64_t sub_230201374()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17288);
  v1 = __swift_project_value_buffer(v0, qword_27DB17288);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_23020143C(uint64_t a1)
{
  v2 = sub_23020182C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230201478(uint64_t a1)
{
  v2 = sub_23020182C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VoidParameters.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB172A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23020182C();
  sub_230311448();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2302015F0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB172A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23020182C();
  sub_230311448();
  return (*(v3 + 8))(v5, v2);
}

void *REMInvocationResult.latestFetchResultToken.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));
  v3 = v2;
  return v2;
}

id sub_230201794()
{
  v1 = [*v0 store];

  return v1;
}

void sub_2302017CC()
{
  v2 = v0[6];
  v3 = (*(v0[4] + 16))(v0[8], v0[9], v0[10], v0[11], v0[2]);
  if (!v1)
  {
    v4 = *v2;
    *v2 = v3;
  }
}

unint64_t sub_23020182C()
{
  result = qword_27DB172A8;
  if (!qword_27DB172A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB172A8);
  }

  return result;
}

uint64_t *sub_2302018A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = v10;
    v11 = v10;
  }

  return v3;
}

uint64_t sub_23020199C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = v8;
  v9 = v8;
  return a1;
}

uint64_t sub_230201A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = v8;
  v10 = v8;

  return a1;
}

uint64_t sub_230201AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  *((*(v5 + 32) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_230201B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  *v7 = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_230201BA4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_230201CE8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
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
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_230201EFC()
{
  result = qword_27DB172B0;
  if (!qword_27DB172B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB172B0);
  }

  return result;
}

unint64_t sub_230201F54()
{
  result = qword_27DB172B8;
  if (!qword_27DB172B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB172B8);
  }

  return result;
}

uint64_t sub_230201FC0()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB172F8);
  v1 = __swift_project_value_buffer(v0, qword_27DB172F8);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter()
{
  v1 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  MEMORY[0x28223BE20](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030F938();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23030E418();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E458();
  swift_allocObject();
  sub_23030E448();
  if (qword_27DB13C40 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27DB17328);
  (*(v6 + 16))(v8, v9, v5);
  sub_23030E428();
  sub_23020728C(&qword_27DB17340, type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage);
  v10 = sub_23030E438();
  v12 = v11;
  sub_23030F928();
  v13 = sub_23030F908();
  if (v14)
  {
    v15 = v13;
    sub_23005FE3C(v10, v12);

    return v15;
  }

  else
  {
    if (qword_27DB13C30 != -1)
    {
      swift_once();
    }

    v17 = sub_23030EF48();
    __swift_project_value_buffer(v17, qword_27DB172F8);
    sub_230206564(v0, v3);
    v18 = sub_23030EF38();
    v19 = sub_230310288();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      v22 = REMRemindersListDataView.AutoCategorizationMessage.description.getter();
      v24 = v23;
      sub_2302065C8(v3);
      v25 = sub_23004E30C(v22, v24, &v27);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_230044000, v18, v19, "AutoCategorizationMessage: Cannot encode to JSON data to UTF8 {message: %s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231914180](v21, -1, -1);
      MEMORY[0x231914180](v20, -1, -1);
      sub_23005FE3C(v10, v12);
    }

    else
    {
      sub_23005FE3C(v10, v12);

      sub_2302065C8(v3);
    }

    return 0;
  }
}

uint64_t type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage()
{
  result = qword_27DB17398;
  if (!qword_27DB17398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t REMRemindersListDataView.AutoCategorizationMessage.description.getter()
{
  v1 = v0;
  v2 = sub_23030EB58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230206564(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = *v15;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v19 = *(v18 + 64);
      (*(v7 + 32))(v12, &v15[*(v18 + 48)], v6);
      (*(v3 + 32))(v5, &v15[v19], v2);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD00000000000002BLL, 0x80000002303447D0);
      v45 = v17;
      v20 = sub_230310E58();
      MEMORY[0x231911790](v20);

      MEMORY[0x231911790](0x6F6974636573202CLL, 0xED0000203A44496ELL);
      v21 = sub_23030EB78();
      MEMORY[0x231911790](v21);

      MEMORY[0x231911790](0x646575657571202CLL, 0xEC000000203A7441);
      sub_23020728C(&qword_27DB17350, MEMORY[0x277CC9578]);
      v22 = sub_230310E58();
      MEMORY[0x231911790](v22);

      MEMORY[0x231911790](41, 0xE100000000000000);
      v23 = v46;
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v12, v6);
    }

    else
    {
      v37 = *v15;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
      (*(v3 + 32))(v5, &v15[*(v38 + 48)], v2);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD00000000000002DLL, 0x80000002303447A0);
      v45 = v37;
      v39 = sub_230310E58();
      MEMORY[0x231911790](v39);

      MEMORY[0x231911790](0x646575657571202CLL, 0xEC000000203A7441);
      sub_23020728C(&qword_27DB17350, MEMORY[0x277CC9578]);
      v40 = sub_230310E58();
      MEMORY[0x231911790](v40);

      MEMORY[0x231911790](41, 0xE100000000000000);
      v23 = v46;
      (*(v3 + 8))(v5, v2);
    }
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
    v25 = *(v24 + 48);
    v26 = *(v24 + 64);
    v27 = v6;
    v42 = v12;
    v43 = v6;
    v28 = v2;
    v29 = *(v7 + 32);
    v44 = v7;
    v30 = v27;
    v29(v12, v15);
    (v29)(v10, &v15[v25], v30);
    (*(v3 + 32))(v5, &v15[v26], v28);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000025, 0x8000000230344800);
    v31 = v42;
    v32 = sub_23030EB78();
    MEMORY[0x231911790](v32);

    MEMORY[0x231911790](0x6F6974636573202CLL, 0xED0000203A44496ELL);
    v33 = sub_23030EB78();
    MEMORY[0x231911790](v33);

    MEMORY[0x231911790](0x646575657571202CLL, 0xEC000000203A7441);
    sub_23020728C(&qword_27DB17350, MEMORY[0x277CC9578]);
    v34 = sub_230310E58();
    MEMORY[0x231911790](v34);

    MEMORY[0x231911790](41, 0xE100000000000000);
    v23 = v46;
    (*(v3 + 8))(v5, v28);
    v35 = v43;
    v36 = *(v44 + 8);
    v36(v10, v43);
    v36(v31, v35);
  }

  return v23;
}

uint64_t static REMRemindersListDataView.AutoCategorizationMessage.message(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v32 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23030F938();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23030E3C8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E408();
  swift_allocObject();
  sub_23030E3F8();
  if (qword_27DB13C38 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27DB17310);
  (*(v12 + 16))(v14, v15, v11);
  sub_23030E3D8();
  sub_23030F928();
  v16 = sub_23030F8F8();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  if (v18 >> 60 == 15)
  {
    v19 = v32;
    if (qword_27DB13C30 != -1)
    {
      swift_once();
    }

    v20 = sub_23030EF48();
    __swift_project_value_buffer(v20, qword_27DB172F8);

    v21 = sub_23030EF38();
    v22 = sub_230310288();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_23004E30C(a1, a2, &v33);
      _os_log_impl(&dword_230044000, v21, v22, "AutoCategorizationMessage: Cannot decode JSON string into utf8 data {encodedMessage: %s}", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x231914180](v24, -1, -1);
      MEMORY[0x231914180](v23, -1, -1);
    }

    v26 = 1;
    v27 = v31;
  }

  else
  {
    sub_23020728C(&qword_27DB17368, type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage);
    v19 = v32;
    sub_23030E3E8();
    sub_230122604(v16, v18);

    v25 = v31;
    sub_230206624(v6, v31);
    v27 = v25;
    v26 = 0;
  }

  return (*(v30 + 56))(v27, v26, 1, v19);
}

uint64_t static REMRemindersListDataView.AutoCategorizationMessage.coalesceRecent(encodedMessageStrings:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v322 = a2;
  v334 = sub_23030EBB8();
  v4 = *(v334 - 8);
  v5 = MEMORY[0x28223BE20](v334);
  v315 = &v305 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v317 = &v305 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v313 = &v305 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v316 = &v305 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v312 = &v305 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v314 = &v305 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v309 = &v305 - v18;
  MEMORY[0x28223BE20](v17);
  v311 = &v305 - v19;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17370);
  MEMORY[0x28223BE20](v326);
  v327 = &v305 - v20;
  v340 = sub_23030EB58();
  v21 = *(v340 - 8);
  v22 = MEMORY[0x28223BE20](v340);
  v310 = &v305 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v319 = &v305 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v320 = &v305 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v318 = &v305 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v308 = &v305 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v332 = &v305 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v333 = &v305 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v344 = &v305 - v37;
  MEMORY[0x28223BE20](v36);
  v343 = (&v305 - v38);
  v39 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v325 = &v305 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v342 = &v305 - v44;
  MEMORY[0x28223BE20](v43);
  v347 = &v305 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17378);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v49 = &v305 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = *(v40 + 56);
  v50 = v40 + 56;
  v337 = &v305 - v52;
  v323 = v51;
  v51();
  v53 = (a1 + 56);
  v54 = 1 << *(a1 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & *(a1 + 56);
  v324 = v50;
  v346 = (v50 - 8);
  v57 = (v54 + 63) >> 6;
  v331 = v21 + 32;
  v321 = v4;
  v336 = (v4 + 8);
  v339 = (v21 + 8);
  v345 = a1;

  v58 = 0;
  *&v59 = 136315138;
  v329 = v59;
  v341 = v39;
  v338 = v57;
  v330 = v53;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v56)
        {
          while (1)
          {
            v60 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              break;
            }

            if (v60 >= v57)
            {

              return sub_230206760(v337, v322);
            }

            v56 = *(v53 + v60);
            ++v58;
            if (v56)
            {
              v58 = v60;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_47:
          v306 = v53;
          v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
          v161 = *(v160 + 48);
          v162 = *(v160 + 64);
          v163 = v307;
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v165 = v336;
          v166 = v321;
          if (EnumCaseMultiPayload)
          {
            if (EnumCaseMultiPayload != 1)
            {
              v305 = v2;

              sub_2302065C8(v347);
              sub_230206688(v337);
              v258 = *v163;
              v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
              v347 = *(v259 + 48);
              v260 = v327;
              v261 = v320;
              v262 = v340;
              v263 = v306;
              result = (v306)(v320, v162 + v327, v340);
              if (!__OFADD__(v258, 1))
              {
                v264 = *(v259 + 48);
                v265 = v322;
                *v322 = v258 + 1;
                v263(v265 + v264, v261, v262);
                v266 = v341;
                swift_storeEnumTagMultiPayload();
                (v323)(v265, 0, 1, v266);
                v305(&v163[v347], v262);
                v267 = *v165;
                v268 = v334;
                (*v165)(&v260[v161], v334);
                return v267(v260, v268);
              }

              goto LABEL_82;
            }

            v346 = *v163;
            v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
            v168 = *(v167 + 48);
            v344 = *(v167 + 64);
            v169 = *(v166 + 32);
            v170 = v327;
            v171 = &v327[v161];
            v172 = v163;
            v173 = v314;
            v174 = v334;
            v169(v314, v171, v334);
            v306(v318, v162 + v170, v340);
            v175 = v172 + v168;
            v176 = v312;
            v321 = v166 + 32;
            result = (v169)(v312, v175, v174);
            v177 = v346 + 1;
            if (__OFADD__(v346, 1))
            {
              goto LABEL_78;
            }

            v178 = sub_23030EB98();

            v179 = v176;
            v180 = *v336;
            (*v336)(v179, v174);
            sub_2302065C8(v347);
            sub_230206688(v337);
            if (v178)
            {
              v181 = *(v167 + 48);
              v182 = *(v167 + 64);
              v183 = v322;
              *v322 = v177;
              v169(v183 + v181, v173, v174);
              v184 = v183 + v182;
              v185 = v340;
              v306(v184, v318, v340);
              v186 = v341;
              swift_storeEnumTagMultiPayload();
              (v323)(v183, 0, 1, v186);
              v187 = (v307 + v344);
              v188 = v185;
            }

            else
            {
              v180(v173, v174);
              v296 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
              v297 = v322;
              *v322 = v177;
              v298 = v340;
              v306(v297 + v296, v318, v340);
              v299 = v341;
              swift_storeEnumTagMultiPayload();
              (v323)(v297, 0, 1, v299);
              v187 = (v307 + v344);
              v188 = v298;
            }

            v2(v187, v188);
            return v180(v327, v174);
          }

          else
          {
            v305 = v2;
            v226 = v321 + 32;
            v227 = *(v321 + 32);
            v228 = v327;
            v229 = v163;
            v230 = v311;
            v231 = v334;
            v227(v311, &v327[v161], v334);
            v232 = v162 + v228;
            v233 = v308;
            v346 = v162;
            v234 = v306;
            v306(v308, v232, v340);
            v235 = v229 + v161;
            v236 = v231;
            v237 = v309;
            v227(v309, v235, v231);
            LOBYTE(v231) = sub_23030EB98();

            v238 = v237;
            v239 = *(v226 - 24);
            v239(v238, v236);
            sub_2302065C8(v347);
            sub_230206688(v337);
            if (v231)
            {
              v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
              v241 = *(v240 + 48);
              v242 = *(v240 + 64);
              v243 = v322;
              *v322 = 2;
              v227(v243 + v241, v230, v236);
              v244 = v340;
              v234(v243 + v242, v233, v340);
              v245 = v341;
              swift_storeEnumTagMultiPayload();
              (v323)(v243, 0, 1, v245);
              v246 = v307;
              v305(&v346[v307], v244);
              v239(v246, v236);
              v247 = v327;
            }

            else
            {
              v239(v230, v236);
              v287 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
              v288 = v322;
              *v322 = 2;
              v289 = v340;
              v234(v288 + v287, v233, v340);
              v290 = v341;
              swift_storeEnumTagMultiPayload();
              (v323)(v288, 0, 1, v290);
              v291 = v307;
              v305(&v346[v307], v289);
              v239(v291, v236);
              v247 = v228;
            }

            return (v239)(v247, v236);
          }
        }

LABEL_10:
        v61 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        v62 = (*(v345 + 48) + ((v58 << 10) | (16 * v61)));
        v63 = *v62;
        v2 = v62[1];

        static REMRemindersListDataView.AutoCategorizationMessage.message(from:)(v63, v2, v49);
        v64 = *v346;
        if ((*v346)(v49, 1, v39) != 1)
        {
          break;
        }

        sub_230206688(v49);
        if (qword_27DB13C30 != -1)
        {
          swift_once();
        }

        v65 = sub_23030EF48();
        __swift_project_value_buffer(v65, qword_27DB172F8);

        v66 = sub_23030EF38();
        v67 = sub_230310288();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v348[0] = v69;
          *v68 = v329;
          v70 = sub_23004E30C(v63, v2, v348);

          *(v68 + 4) = v70;
          _os_log_impl(&dword_230044000, v66, v67, "AutoCategorizationMessage: Cannot get message from {encodedMessageString: %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v69);
          v71 = v69;
          v39 = v341;
          MEMORY[0x231914180](v71, -1, -1);
          v72 = v68;
          v57 = v338;
          MEMORY[0x231914180](v72, -1, -1);
        }

        else
        {
        }
      }

      v335 = v64;

      v73 = v347;
      sub_230206624(v49, v347);
      sub_23030EB48();
      sub_23030EA98();
      sub_230206564(v73, v342);
      v74 = swift_getEnumCaseMultiPayload();
      if (v74)
      {
        v76 = v331;
        v75 = v332;
        v77 = v331 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        if (v74 == 1)
        {
          v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
          v79 = *(v78 + 48);
          v53 = *v76;
          v80 = v342;
          v81 = v340;
          (*v76)(v75, v342 + *(v78 + 64), v340);
          (*v336)((v80 + v79), v334);
        }

        else
        {
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
          v53 = *v76;
          v81 = v340;
          (*v76)(v75, v342 + *(v93 + 48), v340);
        }
      }

      else
      {
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
        v83 = *(v82 + 48);
        v84 = *(v82 + 64);
        v328 = v49;
        v85 = v332;
        v86 = *v331;
        v87 = v331 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v88 = v342;
        v81 = v340;
        (*v331)(v332, v342 + v84, v340);
        v89 = *v336;
        v90 = (v88 + v83);
        v91 = v334;
        (*v336)(v90, v334);
        v92 = v88;
        v53 = v86;
        v49 = v328;
        v89(v92, v91);
        v75 = v85;
        v77 = v87;
      }

      v94 = v333;
      v328 = v77;
      v53(v333, v75, v81);
      sub_23020728C(&qword_280C9C418, MEMORY[0x277CC9578]);
      v95 = v344;
      v96 = sub_23030F7D8();
      v2 = *v339;
      (*v339)(v94, v81);
      v2(v95, v81);
      v2(v343, v81);
      if ((v96 & 1) == 0)
      {
        break;
      }

      v97 = v325;
      if (qword_27DB13C30 != -1)
      {
        swift_once();
      }

      v98 = sub_23030EF48();
      __swift_project_value_buffer(v98, qword_27DB172F8);
      v99 = v347;
      sub_230206564(v347, v97);
      v2 = sub_23030EF38();
      v100 = sub_230310288();
      v101 = os_log_type_enabled(v2, v100);
      v53 = v330;
      if (v101)
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v349 = v103;
        *v102 = v329;
        v104 = REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
        if (v105)
        {
          v348[0] = v104;
          v348[1] = v105;
          v106 = sub_23030F948();
          v107 = v97;
          v108 = v106;
          v110 = v109;
          sub_2302065C8(v107);
        }

        else
        {
          sub_2302065C8(v97);
          v110 = 0xE300000000000000;
          v108 = 7104878;
        }

        v126 = sub_23004E30C(v108, v110, &v349);

        *(v102 + 4) = v126;
        _os_log_impl(&dword_230044000, v2, v100, "AutoCategorizationMessage: Skipping coalescing message as it was too old {message: '%s'}", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x231914180](v103, -1, -1);
        MEMORY[0x231914180](v102, -1, -1);

        v118 = v347;
      }

      else
      {

        sub_2302065C8(v97);
        v118 = v99;
      }

      sub_2302065C8(v118);
      v39 = v341;
      v57 = v338;
    }

    v111 = v327;
    v112 = &v327[*(v326 + 48)];
    v113 = v337;
    sub_2302066F0(v337, v327);
    sub_230206564(v347, v112);
    v114 = v341;
    if (v335(v111, 1, v341) != 1)
    {
      break;
    }

    sub_230206688(v113);
    v115 = swift_getEnumCaseMultiPayload();
    v39 = v114;
    if (v115)
    {
      v53 = v330;
      if (v115 == 1)
      {
        v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
        v117 = *(v116 + 48);
        v2((v112 + *(v116 + 64)), v340);
        (*v336)((v112 + v117), v334);
      }

      else
      {
        v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
        v2((v112 + *(v124 + 48)), v340);
      }
    }

    else
    {
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
      v120 = *(v119 + 48);
      v2((v112 + *(v119 + 64)), v340);
      v121 = *v336;
      v122 = (v112 + v120);
      v123 = v334;
      (*v336)(v122, v334);
      v121(v112, v123);
      v53 = v330;
    }

    v125 = v337;
    v57 = v338;
    sub_230206624(v347, v337);
    (v323)(v125, 0, 1, v39);
  }

  v307 = v112;
  v128 = swift_getEnumCaseMultiPayload();
  if (!v128)
  {
    goto LABEL_47;
  }

  v129 = v336;
  v130 = v307;
  v131 = v2;
  if (v128 != 1)
  {

    sub_2302065C8(v347);
    sub_230206688(v337);
    v189 = *v327;
    v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
    v191 = *(v190 + 48);
    v192 = swift_getEnumCaseMultiPayload();
    v305 = v2;
    if (!v192)
    {
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
      v270 = v53;
      v271 = *(v269 + 48);
      v272 = *(v269 + 64);
      v273 = &v327[v191];
      v274 = v320;
      v275 = v340;
      result = v270(v320, v273, v340);
      if (!__OFADD__(v189, 1))
      {
        v276 = *(v190 + 48);
        v277 = v322;
        *v322 = v189 + 1;
        v270(v277 + v276, v274, v275);
        v278 = v341;
        swift_storeEnumTagMultiPayload();
        (v323)(v277, 0, 1, v278);
        v305(&v130[v272], v275);
        v279 = *v129;
        v280 = v334;
        (*v129)(&v130[v271], v334);
        return v279(v130, v280);
      }

      goto LABEL_83;
    }

    if (v192 == 1)
    {
      v193 = *v130;
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v195 = *(v194 + 48);
      v196 = *(v194 + 64);
      v197 = &v327[v191];
      v198 = v320;
      v199 = v340;
      result = (v53)(v320, v197, v340);
      if (!__OFADD__(v189, v193))
      {
        v200 = *(v190 + 48);
        v201 = v322;
        *v322 = &v189[v193];
        v53(v201 + v200, v198, v199);
        v202 = v341;
        swift_storeEnumTagMultiPayload();
        (v323)(v201, 0, 1, v202);
        v305(&v130[v196], v199);
        return (*v336)(&v130[v195], v334);
      }

      goto LABEL_80;
    }

    v281 = *v130;
    v282 = v320;
    v283 = v340;
    result = (v53)(v320, &v327[v191], v340);
    if (!__OFADD__(v189, v281))
    {
      v284 = *(v190 + 48);
      v285 = v322;
      *v322 = &v189[v281];
      v53(v285 + v284, v282, v283);
      v286 = v341;
      swift_storeEnumTagMultiPayload();
      (v323)(v285, 0, 1, v286);
      return (v305)(&v130[v191], v283);
    }

LABEL_84:
    __break(1u);
    return result;
  }

  v132 = v327;
  v346 = *v327;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
  v134 = *(v133 + 48);
  v135 = *(v133 + 64);
  v136 = swift_getEnumCaseMultiPayload();
  v137 = v337;
  v138 = v347;
  v306 = v53;
  if (v136)
  {
    if (v136 == 1)
    {
      v139 = v307;
      v344 = *v307;
      v141 = v321 + 32;
      v140 = *(v321 + 32);
      v142 = v317;
      v143 = v135;
      v144 = v334;
      v140(v317, &v132[v134], v334);
      v343 = v143;
      v145 = &v143[v132];
      v146 = v310;
      v306(v310, v145, v340);
      v147 = v315;
      v321 = v141;
      result = (v140)(v315, v139 + v134, v144);
      v148 = &v346[v344];
      if (!__OFADD__(v346, v344))
      {
        v149 = sub_23030EB98();

        v150 = *v336;
        (*v336)(v147, v144);
        sub_2302065C8(v347);
        sub_230206688(v337);
        v151 = v142;
        if (v149)
        {
          v152 = *(v133 + 48);
          v153 = *(v133 + 64);
          v154 = v322;
          *v322 = v148;
          v140(v154 + v152, v151, v144);
          v155 = v154 + v153;
          v156 = v340;
          v306(v155, v146, v340);
          v157 = v341;
          swift_storeEnumTagMultiPayload();
          (v323)(v154, 0, 1, v157);
          v158 = v343 + v307;
          v159 = v156;
        }

        else
        {
          v150(v142, v144);
          v292 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
          v293 = v322;
          *v322 = v148;
          v294 = v340;
          v306(v293 + v292, v146, v340);
          v295 = v341;
          swift_storeEnumTagMultiPayload();
          (v323)(v293, 0, 1, v295);
          v158 = v343 + v307;
          v159 = v294;
        }

        return (v2)(v158, v159);
      }

      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    else
    {

      sub_2302065C8(v138);
      sub_230206688(v137);
      v248 = v307;
      v249 = *v307;
      v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
      v347 = *(v250 + 48);
      v251 = &v135[v132];
      v252 = v320;
      v253 = v340;
      v254 = v306;
      result = (v306)(v320, v251, v340);
      if (!__OFADD__(v346, v249))
      {
        v255 = *(v250 + 48);
        v256 = v322;
        *v322 = &v346[v249];
        v254(v256 + v255, v252, v253);
        v257 = v341;
        swift_storeEnumTagMultiPayload();
        (v323)(v256, 0, 1, v257);
        v2((v248 + v347), v253);
        return (*v336)(&v132[v134], v334);
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
  v204 = v53;
  v205 = *(v203 + 48);
  v344 = *(v203 + 64);
  v207 = v321 + 32;
  v206 = *(v321 + 32);
  v208 = &v132[v134];
  v209 = v316;
  v210 = v135;
  v211 = v334;
  v206(v316, v208, v334);
  v204(v319, &v210[v132], v340);
  v212 = (v307 + v205);
  v213 = v211;
  v214 = v313;
  v321 = v207;
  v343 = v206;
  result = (v206)(v313, v212, v211);
  v215 = v346 + 1;
  if (__OFADD__(v346, 1))
  {
    goto LABEL_79;
  }

  v216 = sub_23030EB98();

  v217 = *v336;
  (*v336)(v214, v213);
  sub_2302065C8(v347);
  sub_230206688(v337);
  if (v216)
  {
    v218 = *(v133 + 48);
    v219 = *(v133 + 64);
    v220 = v322;
    *v322 = v215;
    v343(v220 + v218, v209, v213);
    v221 = v220 + v219;
    v222 = v340;
    v306(v221, v319, v340);
    v223 = v341;
    swift_storeEnumTagMultiPayload();
    (v323)(v220, 0, 1, v223);
    v224 = v307;
    v131(v307 + v344, v222);
    v225 = v224;
  }

  else
  {
    v217(v209, v213);
    v300 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
    v301 = v322;
    *v322 = v215;
    v302 = v340;
    v306(v301 + v300, v319, v340);
    v303 = v341;
    swift_storeEnumTagMultiPayload();
    (v323)(v301, 0, 1, v303);
    v304 = v307;
    v131(v307 + v344, v302);
    v225 = v304;
  }

  return v217(v225, v213);
}

uint64_t sub_230205108(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

unint64_t sub_230205198()
{
  v1 = 0x7265646E696D6572;
  v2 = *v0;
  v3 = 0x496E6F6974636573;
  v4 = 0x7441646575657571;
  if (v2 == 3)
  {
    v4 = 0x7265646E696D6572;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23020523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230208248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_230205264(uint64_t a1)
{
  v2 = sub_230207238();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2302052A0(uint64_t a1)
{
  v2 = sub_230207238();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMRemindersListDataView.AutoCategorizationMessage.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v67 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v66 = &v64 - v11;
  v12 = sub_23030EBB8();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v65 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v64 - v16;
  MEMORY[0x28223BE20](v15);
  v68 = &v64 - v18;
  v19 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  MEMORY[0x28223BE20](v19);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17380);
  v75 = *(v22 - 8);
  v76 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230207238();
  v72 = v24;
  sub_230311448();
  sub_230206564(v2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v68 = *v21;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v27 = *(v26 + 64);
      v28 = v69;
      v29 = v70;
      v30 = v65;
      (*(v69 + 32))(v65, &v21[*(v26 + 48)], v70);
      v31 = v73;
      v32 = v74;
      v33 = &v21[v27];
      v34 = v67;
      (*(v74 + 32))(v67, v33, v73);
      v84 = 0;
      v35 = v71;
      v36 = v72;
      sub_230310DA8();
      if (v35)
      {
        (*(v32 + 8))(v34, v31);
        (*(v28 + 8))(v30, v29);
        return (*(v75 + 8))(v36, v76);
      }

      else
      {
        v83 = 3;
        v57 = v76;
        sub_230310DD8();
        sub_23030EB78();
        v82 = 2;
        sub_230310DA8();
        v58 = v70;

        v59 = v67;
        sub_23030EAF8();
        v81 = 4;
        sub_230310DC8();
        (*(v32 + 8))(v59, v31);
        (*(v69 + 8))(v65, v58);
        return (*(v75 + 8))(v36, v57);
      }
    }

    else
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
      v53 = v73;
      v52 = v74;
      (*(v74 + 32))(v8, &v21[*(v51 + 48)], v73);
      v87 = 0;
      v54 = v76;
      v55 = v71;
      v56 = v72;
      sub_230310DA8();
      if (!v55)
      {
        v86 = 3;
        sub_230310DD8();
        sub_23030EAF8();
        v85 = 4;
        sub_230310DC8();
      }

      (*(v52 + 8))(v8, v53);
      return (*(v75 + 8))(v56, v54);
    }
  }

  else
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
    v39 = *(v38 + 48);
    v40 = *(v38 + 64);
    v41 = v69;
    v42 = *(v69 + 32);
    v43 = v70;
    v42(v68, v21, v70);
    v42(v17, &v21[v39], v43);
    v44 = v74;
    v45 = &v21[v40];
    v46 = v66;
    v47 = v73;
    (*(v74 + 32))(v66, v45, v73);
    v80 = 0;
    v48 = v71;
    v49 = v72;
    sub_230310DA8();
    if (v48)
    {
      (*(v44 + 8))(v46, v47);
      v50 = *(v41 + 8);
      v50(v17, v43);
      v50(v68, v43);
      return (*(v75 + 8))(v49, v76);
    }

    else
    {
      v71 = v17;
      sub_23030EB78();
      v79 = 1;
      sub_230310DA8();

      sub_23030EB78();
      v78 = 2;
      sub_230310DA8();

      v60 = v66;
      sub_23030EAF8();
      v77 = 4;
      v61 = v76;
      sub_230310DC8();
      (*(v44 + 8))(v60, v47);
      v62 = *(v41 + 8);
      v63 = v70;
      v62(v71, v70);
      v62(v68, v63);
      return (*(v75 + 8))(v49, v61);
    }
  }
}

uint64_t REMRemindersListDataView.AutoCategorizationMessage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_230310908();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_23030EB58();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_23030EBB8();
  v77 = *(v81 - 8);
  v6 = MEMORY[0x28223BE20](v81);
  v80 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v65 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17390);
  v78 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  MEMORY[0x28223BE20](v15);
  v17 = (&v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = sub_230207238();
  v20 = v83;
  sub_230311428();
  if (!v20)
  {
    v66 = v19;
    v67 = v17;
    v68 = v15;
    v69 = v11;
    v21 = v79;
    v22 = v80;
    v23 = v81;
    v24 = v78;
    v92 = 0;
    v25 = sub_230310C98();
    v83 = 0;
    v27 = v25 == 0xD000000000000017 && 0x8000000230344870 == v26;
    if (v27 || (v28 = v25, v29 = v26, (sub_230311048() & 1) != 0))
    {

      v86 = 1;
      sub_23020728C(&unk_280C9C5F0, MEMORY[0x277CC95F0]);
      v30 = v23;
      v31 = v83;
      sub_230310CE8();
      if (v31)
      {
        goto LABEL_9;
      }

      v85 = 2;
      v32 = v21;
      sub_230310CE8();
      v84 = 4;
      sub_230310CB8();
      v83 = 0;
      v37 = v24;
      v38 = v77;
      v41 = v73;
      sub_23030EAE8();
      (*(v37 + 8))(v14, v12);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
      v43 = *(v42 + 48);
      v44 = v67;
      v45 = v67 + *(v42 + 64);
      v46 = *(v38 + 32);
      v46(v67, v69, v30);
      v46((v44 + v43), v32, v30);
    }

    else
    {
      if ((v28 != 0xD000000000000019 || 0x8000000230344850 != v29) && (sub_230311048() & 1) == 0)
      {
        if (v28 == 0xD00000000000001BLL && 0x8000000230344830 == v29)
        {

          v40 = v75;
          v39 = v76;
        }

        else
        {
          v47 = sub_230311048();

          v40 = v75;
          v39 = v76;
          if ((v47 & 1) == 0)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB156F8);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_230315CE0;
            v54 = v66;
            *(v53 + 56) = &_s25AutoCategorizationMessageO10CodingKeysON;
            *(v53 + 64) = v54;
            *(v53 + 32) = 0;
            v55 = v70;
            sub_2303108F8();
            v56 = sub_230310918();
            v57 = swift_allocError();
            v59 = v58;
            v60 = v71;
            v61 = v72;
            (*(v71 + 16))(v58, v55, v72);
            (*(*(v56 - 8) + 104))(v59, *MEMORY[0x277D84168], v56);
            v83 = v57;
            swift_willThrow();
            (*(v60 + 8))(v55, v61);
            goto LABEL_11;
          }
        }

        v91 = 3;
        v31 = v83;
        v48 = sub_230310CC8();
        if (v31)
        {
LABEL_9:
          v83 = v31;
LABEL_11:
          (*(v24 + 8))(v14, v12);
          return __swift_destroy_boxed_opaque_existential_1(v82);
        }

        v49 = v48;
        v90 = 4;
        sub_230310CB8();
        v83 = 0;
        v50 = v24;
        v41 = v73;
        sub_23030EAE8();
        (*(v50 + 8))(v14, v12);
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
        v44 = v67;
        v45 = v67 + *(v64 + 48);
        *v67 = v49;
LABEL_22:
        (*(v74 + 32))(v45, v41, v39);
        swift_storeEnumTagMultiPayload();
        sub_230206624(v44, v40);
        return __swift_destroy_boxed_opaque_existential_1(v82);
      }

      v89 = 2;
      sub_23020728C(&unk_280C9C5F0, MEMORY[0x277CC95F0]);
      v34 = v22;
      v35 = v23;
      v31 = v83;
      sub_230310CE8();
      if (v31)
      {
        goto LABEL_9;
      }

      v88 = 3;
      v36 = v24;
      v51 = sub_230310CC8();
      v87 = 4;
      sub_230310CB8();
      v83 = 0;
      v52 = v77;
      v41 = v73;
      sub_23030EAE8();
      (*(v36 + 8))(v14, v12);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v63 = *(v62 + 48);
      v44 = v67;
      v45 = v67 + *(v62 + 64);
      *v67 = v51;
      (*(v52 + 32))(v44 + v63, v34, v35);
    }

    v40 = v75;
    v39 = v76;
    goto LABEL_22;
  }

  v83 = v20;
  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t sub_230206564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2302065C8(uint64_t a1)
{
  v2 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_230206624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_230206688(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2302066F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_230206760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17378);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL _s19ReminderKitInternal24REMRemindersListDataViewO25AutoCategorizationMessageO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v134 = sub_23030EB58();
  v137 = *(v134 - 8);
  v4 = MEMORY[0x28223BE20](v134);
  v131 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v130 = &v128 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v132 = &v128 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v133 = &v128 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v128 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v128 - v15;
  v17 = sub_23030EBB8();
  v18 = *(v17 - 8);
  v135 = v17;
  v136 = v18;
  v19 = MEMORY[0x28223BE20](v17);
  v128 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v129 = &v128 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v128 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v128 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v128 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v128 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB173C0);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v37 = &v128 - v36;
  v38 = &v128 + *(v35 + 56) - v36;
  sub_230206564(a1, &v128 - v36);
  sub_230206564(a2, v38);
  type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v41 = *(v40 + 48);
      v42 = *(v40 + 64);
      v43 = swift_getEnumCaseMultiPayload();
      if (v43)
      {
        if (v43 == 1)
        {
          v44 = *v37;
          v130 = *v38;
          v131 = v44;
          v45 = *(v136 + 32);
          v46 = &v37[v41];
          v47 = v129;
          v48 = v41;
          v49 = v135;
          v45(v129, v46, v135);
          v50 = *(v137 + 32);
          v51 = &v37[v42];
          v52 = v134;
          v50(v133, v51, v134);
          v53 = (v38 + v48);
          v54 = v128;
          v45(v128, v53, v49);
          v55 = v52;
          v56 = v132;
          v50(v132, (v38 + v42), v52);
          if (v131 == v130 && (sub_23030EB98() & 1) != 0)
          {
            sub_23030EB38();
            v58 = fabs(v57) < 0.001;
          }

          else
          {
            v58 = 0;
          }

          v119 = *(v137 + 8);
          v119(v56, v55);
          v120 = *(v136 + 8);
          v121 = v54;
          v122 = v135;
          v120(v121, v135);
          v119(v133, v55);
          v120(v47, v122);
          return v58;
        }

        v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
        v94 = *(v137 + 8);
        v95 = (v38 + *(v93 + 48));
        v96 = v134;
        v94(v95, v134);
        v94(&v37[v42], v96);
        (*(v136 + 8))(&v37[v41], v135);
      }

      else
      {
        v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
        v78 = *(v77 + 48);
        v79 = *(v137 + 8);
        v80 = v134;
        v79(v38 + *(v77 + 64), v134);
        v81 = *(v136 + 8);
        v82 = (v38 + v78);
        v83 = v135;
        v81(v82, v135);
        v81(v38, v83);
        v79(&v37[v42], v80);
        v81(&v37[v41], v83);
      }
    }

    else
    {
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
      v72 = swift_getEnumCaseMultiPayload();
      if (v72)
      {
        v73 = v134;
        if (v72 != 1)
        {
          v111 = *v37;
          v112 = *v38;
          v113 = *(v137 + 32);
          v114 = v130;
          v113(v130, &v37[v71], v134);
          v115 = (v38 + v71);
          v116 = v131;
          v113(v131, v115, v73);
          if (v111 == v112)
          {
            sub_23030EB38();
            v118 = fabs(v117) < 0.001;
          }

          else
          {
            v118 = 0;
          }

          v127 = *(v137 + 8);
          v127(v116, v73);
          v127(v114, v73);
          return v118;
        }

        v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
        v75 = *(v74 + 48);
        v76 = *(v137 + 8);
        v76(v38 + *(v74 + 64), v73);
        (*(v136 + 8))(v38 + v75, v135);
        v76(&v37[v71], v73);
      }

      else
      {
        v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
        v104 = *(v103 + 48);
        v105 = *(v137 + 8);
        v106 = v134;
        v105(v38 + *(v103 + 64), v134);
        v107 = *(v136 + 8);
        v108 = (v38 + v104);
        v109 = v135;
        v107(v108, v135);
        v107(v38, v109);
        v105(&v37[v71], v106);
      }
    }

    return 0;
  }

  v132 = v14;
  v133 = v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
  v60 = *(v59 + 48);
  v61 = *(v59 + 64);
  v62 = swift_getEnumCaseMultiPayload();
  if (v62)
  {
    v63 = v61;
    if (v62 == 1)
    {
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v65 = *(v64 + 48);
      v66 = *(v137 + 8);
      v67 = v134;
      v66(v38 + *(v64 + 64), v134);
      v68 = *(v136 + 8);
      v69 = (v38 + v65);
      v70 = v135;
      v68(v69, v135);
      v66(&v63[v37], v67);
      v68(&v60[v37], v70);
      v68(v37, v70);
    }

    else
    {
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348);
      v98 = *(v137 + 8);
      v99 = (v38 + *(v97 + 48));
      v100 = v134;
      v98(v99, v134);
      v98(&v63[v37], v100);
      v101 = v135;
      v102 = *(v136 + 8);
      v102(&v60[v37], v135);
      v102(v37, v101);
    }

    return 0;
  }

  v84 = v135;
  v131 = v60;
  v85 = *(v136 + 32);
  v130 = v85;
  (v85)(v33, v37, v135);
  (v85)(v31, v38, v84);
  (v85)(v28, &v131[v37], v84);
  v129 = v61;
  v86 = *(v137 + 32);
  v87 = &v61[v37];
  v88 = v134;
  v86(v133, v87, v134);
  (v130)(v25, &v131[v38], v84);
  v89 = v88;
  v90 = v132;
  v86(v132, &v129[v38], v88);
  if (sub_23030EB98() & 1) != 0 && (sub_23030EB98())
  {
    sub_23030EB38();
    v92 = fabs(v91) < 0.001;
  }

  else
  {
    v92 = 0;
  }

  v123 = *(v137 + 8);
  v123(v90, v89);
  v124 = *(v136 + 8);
  v125 = v25;
  v126 = v135;
  v124(v125, v135);
  v123(v133, v89);
  v124(v28, v126);
  v124(v31, v126);
  v124(v33, v126);
  return v92;
}

unint64_t sub_230207238()
{
  result = qword_27DB17388;
  if (!qword_27DB17388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17388);
  }

  return result;
}

uint64_t sub_23020728C(unint64_t *a1, void (*a2)(uint64_t))
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

char *_s25AutoCategorizationMessageOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
      v14 = sub_23030EB58();
      (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a1 = *a2;
        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
        v8 = *(v7 + 48);
        v9 = sub_23030EBB8();
        (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
        v10 = *(v7 + 64);
      }

      else
      {
        v15 = sub_23030EBB8();
        v16 = *(*(v15 - 8) + 16);
        v16(a1, a2, v15);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
        v16(&a1[*(v17 + 48)], &a2[*(v17 + 48)], v15);
        v10 = *(v17 + 64);
      }

      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _s25AutoCategorizationMessageOwxx(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
  }

  else if (result == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
    v8 = *(v7 + 48);
    v9 = sub_23030EBB8();
    (*(*(v9 - 8) + 8))(a1 + v8, v9);
    v6 = (v7 + 64);
  }

  else
  {
    if (result)
    {
      return result;
    }

    v3 = sub_23030EBB8();
    v4 = *(*(v3 - 8) + 8);
    v4(a1, v3);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
    v4(a1 + *(v5 + 48), v3);
    v6 = (v5 + 64);
  }

  v10 = *v6;
  v11 = sub_23030EB58();
  v12 = *(*(v11 - 8) + 8);

  return v12(a1 + v10, v11);
}

char *_s25AutoCategorizationMessageOwcp(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v6 = *(v5 + 48);
      v7 = sub_23030EBB8();
      (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
      v8 = *(v5 + 64);
    }

    else
    {
      v12 = sub_23030EBB8();
      v13 = *(*(v12 - 8) + 16);
      v13(a1, a2, v12);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
      v13(&a1[*(v14 + 48)], &a2[*(v14 + 48)], v12);
      v8 = *(v14 + 64);
    }

    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *_s25AutoCategorizationMessageOwca(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_2302065C8(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a1 = *a2;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
        v6 = *(v5 + 48);
        v7 = sub_23030EBB8();
        (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
        v8 = *(v5 + 64);
      }

      else
      {
        v12 = sub_23030EBB8();
        v13 = *(*(v12 - 8) + 16);
        v13(a1, a2, v12);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
        v13(&a1[*(v14 + 48)], &a2[*(v14 + 48)], v12);
        v8 = *(v14 + 64);
      }

      v9 = sub_23030EB58();
      (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *_s25AutoCategorizationMessageOwtk(char *a1, char *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *a2;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
      v6 = *(v5 + 48);
      v7 = sub_23030EBB8();
      (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
      v8 = *(v5 + 64);
    }

    else
    {
      v12 = sub_23030EBB8();
      v13 = *(*(v12 - 8) + 32);
      v13(a1, a2, v12);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
      v13(&a1[*(v14 + 48)], &a2[*(v14 + 48)], v12);
      v8 = *(v14 + 64);
    }

    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

char *_s25AutoCategorizationMessageOwta(char *a1, char *a2)
{
  if (a1 != a2)
  {
    sub_2302065C8(a1);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17348) + 48);
      v11 = sub_23030EB58();
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    }

    else
    {
      if (EnumCaseMultiPayload == 1)
      {
        *a1 = *a2;
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17358);
        v6 = *(v5 + 48);
        v7 = sub_23030EBB8();
        (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
        v8 = *(v5 + 64);
      }

      else
      {
        v12 = sub_23030EBB8();
        v13 = *(*(v12 - 8) + 32);
        v13(a1, a2, v12);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17360);
        v13(&a1[*(v14 + 48)], &a2[*(v14 + 48)], v12);
        v8 = *(v14 + 64);
      }

      v9 = sub_23030EB58();
      (*(*(v9 - 8) + 32))(&a1[v8], &a2[v8], v9);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_23020800C()
{
  result = sub_23030EBB8();
  if (v1 <= 0x3F)
  {
    result = sub_23030EB58();
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v6 = &v5;
      swift_getTupleTypeLayout3();
      v7 = &v4;
      swift_getTupleTypeLayout2();
      v8 = &v3;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

unint64_t sub_230208144()
{
  result = qword_27DB173A8;
  if (!qword_27DB173A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB173A8);
  }

  return result;
}

unint64_t sub_23020819C()
{
  result = qword_27DB173B0;
  if (!qword_27DB173B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB173B0);
  }

  return result;
}

unint64_t sub_2302081F4()
{
  result = qword_27DB173B8;
  if (!qword_27DB173B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB173B8);
  }

  return result;
}

uint64_t sub_230208248(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000002303448C0 == a2 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEA00000000004449 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265646E696D6572 && a2 == 0xEE00746E756F4373 || (sub_230311048() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7441646575657571 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_230311048();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

char *REMSmartListCustomContext.filter.getter()
{
  v1 = [v0 smartlist];
  v2 = [v1 filterData];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23030EA18();
  v5 = v4;

  v6 = [v0 smartlist];
  v7 = [v6 minimumSupportedVersion];

  v9 = v7 != *MEMORY[0x277D44CC8] && v7 == *MEMORY[0x277D44CB8];
  v11 = v9;
  return sub_23017872C(v3, v5, &v11);
}

char *sub_230208518()
{
  v0 = sub_23030E858();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_230310258();
  v4 = MEMORY[0x277D84F90];
  sub_2302092F0();
  while (1)
  {
    sub_2303104F8();
    if (!v20)
    {
      break;
    }

    sub_230061914(&v19, &v16);
    v5 = swift_dynamicCast();
    v6 = v18;
    if (v5)
    {
      v7 = v18 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      if (v5)
      {
        v8 = v17;
      }

      else
      {
        v8 = 0;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_23007E928(0, *(v4 + 2) + 1, 1, v4);
      }

      v11 = *(v4 + 2);
      v10 = *(v4 + 3);
      if (v11 >= v10 >> 1)
      {
        v4 = sub_23007E928((v10 > 1), v11 + 1, 1, v4);
      }

      *(v4 + 2) = v11 + 1;
      v12 = &v4[16 * v11];
      *(v12 + 4) = v8;
      *(v12 + 5) = v6;
      v1 = v15;
    }
  }

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_2302086E8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB173C8);
  v1 = __swift_project_value_buffer(v0, qword_27DB173C8);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_230208860(SEL *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  if ([v1 *a1])
  {
    LOBYTE(v2) = v6;
    v3 = v5;
  }

  else
  {
    v2 = v5;
    sub_23030E808();

    swift_willThrow();
  }

  return v2 & 1;
}

char *REMAccount.mergeableOrderingNodeIdentifiers()()
{
  v1 = [v0 listIDsOrdering];
  v2 = sub_230208518();

  return v2;
}

uint64_t REMAccount.mergeableOrderingNodeObjectIDs(entityName:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = MEMORY[0x277D84F90];
  v6 = [v2 listIDsMergeableOrdering];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v11[4] = sub_230208E40;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_230208E4C;
  v11[3] = &block_descriptor_11;
  v8 = _Block_copy(v11);

  [v6 enumerateObjectsUsingBlock_];
  _Block_release(v8);

  swift_beginAccess();
  v9 = *(v5 + 16);

  return v9;
}

void sub_230208AC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_23030EBB8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_23030EB68();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_230061918(v8, &qword_27DB14800);
    if (qword_27DB13C48 != -1)
    {
      swift_once();
    }

    v13 = sub_23030EF48();
    __swift_project_value_buffer(v13, qword_27DB173C8);
    v14 = a1;
    v15 = sub_23030EF38();
    v16 = sub_230310298();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      *(v17 + 4) = v14;
      *v18 = a1;
      v19 = v14;
      _os_log_impl(&dword_230044000, v15, v16, "Invalid UUID found in listIDsMergeableOrdering when converting to REMObjectID {uuidString: %{public}@}", v17, 0xCu);
      sub_230061918(v18, &qword_27DB15000);
      MEMORY[0x231914180](v18, -1, -1);
      MEMORY[0x231914180](v17, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v20 = objc_allocWithZone(MEMORY[0x277D44700]);
    v21 = sub_23030EB88();
    v22 = sub_23030F8B8();
    [v20 initWithUUID:v21 entityName:v22];

    v23 = swift_beginAccess();
    MEMORY[0x231911A30](v23);
    if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23030FD18();
    }

    sub_23030FD68();
    swift_endAccess();
    (*(v10 + 8))(v12, v9);
  }
}

void sub_230208E4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t REMAccountType.loggableDescription.getter(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44568]) initWithType_];
  v2 = [v1 internalDescription];

  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  return v3;
}

uint64_t REMAccountTypeHost.REMAccountTypeSwitchError.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

unint64_t sub_230208FDC()
{
  result = qword_27DB173E0;
  if (!qword_27DB173E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB173E0);
  }

  return result;
}

void static REMAccountTypeHost.enumerateAccountTypeHostsAndAccountCapabilities(_:)(void (*a1)(id, id))
{
  _sSo14REMAccountTypeV19ReminderKitInternalE8allCasesSayABGvgZ_0();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(v4 + 16))
    {
      v7 = *(v4 + 8 * v6 + 32);
      v8 = [objc_allocWithZone(MEMORY[0x277D44568]) initWithType_];
      v9 = [objc_allocWithZone(MEMORY[0x277D44550]) initWithAccountType_];
      a1(v8, v9);
      if (v1)
      {

        return;
      }

      if (v5 == ++v6)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void _sSo14REMAccountTypeV19ReminderKitInternalE8allCasesSayABGvgZ_0()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  while (v0 <= 6)
  {
    if (v0 <= 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = v0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_23007F54C(0, *(v1 + 2) + 1, 1, v1);
    }

    v4 = *(v1 + 2);
    v3 = *(v1 + 3);
    if (v4 >= v3 >> 1)
    {
      v1 = sub_23007F54C((v3 > 1), v4 + 1, 1, v1);
    }

    v0 = v2 + 1;
    *(v1 + 2) = v4 + 1;
    *&v1[8 * v4 + 32] = v2;
    if (v2 == 6)
    {
      return;
    }
  }

  __break(1u);
}

unint64_t sub_230209224()
{
  result = qword_27DB173E8;
  if (!qword_27DB173E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB173E8);
  }

  return result;
}

unint64_t sub_23020927C()
{
  result = qword_27DB173F0;
  if (!qword_27DB173F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB173F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB173F0);
  }

  return result;
}

unint64_t sub_2302092F0()
{
  result = qword_27DB158F8;
  if (!qword_27DB158F8)
  {
    sub_23030E858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB158F8);
  }

  return result;
}

unint64_t measureTimeElapsed(_:timeElapsedInMilliseconds:level:block:)(uint64_t a1, unint64_t a2, void *a3, int a4, void (*a5)(void), uint64_t a6)
{
  result = sub_2300535B4(a1, a1, a2, a4, a5, a6);
  if (!v6)
  {
    *a3 = v9;
  }

  return result;
}

uint64_t static DispatchTime.secondsElapsed(since:)()
{
  v0 = sub_23030F4F8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030F4E8();
  v4 = sub_23030F4D8();
  v5 = sub_23030F4D8();
  result = (*(v1 + 8))(v3, v0);
  if (v4 < v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_230209480()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17400);
  v1 = __swift_project_value_buffer(v0, qword_27DB17400);
  if (qword_280C9B438 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_2302095C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v27 = a6;
  v28 = a3;
  v31 = a5;
  v29 = a4;
  v13 = sub_23030F458();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23030F4C8();
  v17 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v22 = v27;
  v21 = v28;
  v20[2] = a9;
  v20[3] = v22;
  v20[4] = a7;
  v20[5] = a8;
  v20[6] = a1;
  v20[7] = a2;
  v23 = v29;
  v20[8] = v21;
  v20[9] = v23;
  aBlock[4] = sub_230210B44;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_199;
  v24 = _Block_copy(aBlock);

  v25 = a8;

  sub_23030F488();
  v32 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v19, v16, v24);
  _Block_release(v24);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v30);
}

uint64_t sub_2302098A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v13);
  a4(v12);
  return (*(v10 + 8))(v12, a8);
}

id REMStore.fetchOrCreateNonCustomSmartList(withType:)(char *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [objc_allocWithZone(MEMORY[0x277D44838]) initWithStore_];
  v4 = **(&unk_2788BCBB0 + v2);
  v9[0] = 0;
  v5 = [v3 fetchNonCustomSmartListWithSmartListType:v4 createIfNeeded:1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v5;
}

id REMStore.fetchNonCustomSmartList(withType:)(char *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = [objc_allocWithZone(MEMORY[0x277D44838]) initWithStore_];
  v4 = **(&unk_2788BCBB0 + v2);
  v9[0] = 0;
  v5 = [v3 fetchNonCustomSmartListWithSmartListType:v4 createIfNeeded:0 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_23030E808();

    swift_willThrow();
  }

  return v5;
}

void REMStore.fetchContentAttributes(of:completionHandlerQueue:completion:)(void *a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = [v5 daemonController];
  if (v10)
  {
    v11 = v10;
    v12 = [a1 objectID];
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = ObjectType;
    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    swift_retain_n();
    v15 = v12;
    v16 = sub_23030F8B8();
    v27 = sub_230209FF0;
    v28 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2300E5348;
    v26 = &block_descriptor_12;
    v17 = _Block_copy(&aBlock);

    v27 = sub_2300E7CC4;
    v28 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2300E53A8;
    v26 = &block_descriptor_6_0;
    v18 = _Block_copy(&aBlock);

    [v11 asyncStorePerformerWithReason:v16 loadHandler:v17 errorHandler:v18];
    _Block_release(v18);
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = sub_23030F8B8();
    v22 = [v19 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v21];

    a3(v22, 1);
  }
}

void sub_230209EEC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v13[4] = sub_230210B38;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_230210C5C;
  v13[3] = &block_descriptor_193;
  v11 = _Block_copy(v13);
  v12 = a2;

  [a1 fetchContentAttributesOfTemplateWithObjectID:v12 completion:v11];
  _Block_release(v11);
}

void sub_230209FFC(void *a1, id a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = 1;
    v9 = a2;
  }

  else
  {
    v9 = a1;
    if (a1)
    {
      v10 = a1;
      v8 = 0;
    }

    else
    {
      if (qword_27DB13C58 != -1)
      {
        swift_once();
      }

      v13 = sub_23030EF48();
      __swift_project_value_buffer(v13, qword_27DB17400);
      v14 = a3;
      v15 = sub_23030EF38();
      v16 = sub_230310298();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v34 = v33;
        *v17 = 136315394;
        v35 = a6;
        swift_getMetatypeMetadata();
        v19 = sub_23030F948();
        v21 = sub_23004E30C(v19, v20, &v34);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        *v18 = v14;
        v22 = v14;
        _os_log_impl(&dword_230044000, v15, v16, "%s: 'templateContentAttributes' and 'error' in completion of '[REMXPCStorePerformer fetchContentAttributesOfTemplateWithObjectID:completion:]' were both nil {remTemplate.objectID: %@}", v17, 0x16u);
        sub_230061918(v18, &qword_27DB15000);
        MEMORY[0x231914180](v18, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x231914180](v33, -1, -1);
        MEMORY[0x231914180](v17, -1, -1);
      }

      v23 = objc_opt_self();
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000B1, 0x8000000230344F10);
      v24 = [v14 description];
      v25 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v27 = v26;

      MEMORY[0x231911790](v25, v27);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v28 = sub_23030F8B8();

      v29 = [v23 internalErrorWithDebugDescription_];

      v10 = v29;
      v8 = 1;
      v9 = v29;
    }

    v30 = v10;
  }

  v31 = a2;
  v32 = a2;
  a4(v9, v8);
  sub_230077E1C(v9);
  sub_230077E1C(v9);
}

void REMStore.createOrUpdatePublicLink(for:with:completionHandlerQueue:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = sub_23030F458();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030F4C8();
  v33 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v6 daemonController];
  if (v18)
  {
    v19 = v18;
    v20 = [a1 objectID];
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v22 = ObjectType;
    v21[6] = a5;
    v21[7] = v22;
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v24 = a3;
    swift_retain_n();
    v25 = v24;
    v26 = v20;
    v27 = a2;
    v28 = sub_23030F8B8();
    v41 = sub_23020A8E4;
    v42 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2300E5348;
    v40 = &block_descriptor_21_0;
    v29 = _Block_copy(&aBlock);

    v41 = sub_23020AE50;
    v42 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2300E53A8;
    v40 = &block_descriptor_24;
    v30 = _Block_copy(&aBlock);

    [v19 asyncStorePerformerWithReason:v28 loadHandler:v29 errorHandler:v30];
    _Block_release(v30);
    _Block_release(v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = a4;
    *(v31 + 24) = a5;
    v41 = sub_23020A7A8;
    v42 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2300F5280;
    v40 = &block_descriptor_12;
    v32 = _Block_copy(&aBlock);

    sub_23030F488();
    v36 = MEMORY[0x277D84F90];
    sub_2300ED808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
    sub_2300ED860();
    sub_230310648();
    MEMORY[0x2319120F0](0, v17, v14, v32);
    _Block_release(v32);
    (*(v34 + 8))(v14, v12);
    (*(v33 + 8))(v17, v15);
  }
}

void sub_23020A7C4(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v18[4] = sub_230210A7C;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_230210C5C;
  v18[3] = &block_descriptor_181;
  v15 = _Block_copy(v18);
  v16 = a2;
  v17 = a4;

  [a1 createOrUpdatePublicLinkForTemplateWithObjectID:v16 configuration:a3 completion:v15];
  _Block_release(v15);
}

uint64_t sub_23020A8FC(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a4;
  v13 = sub_23030F458();
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23030F4C8();
  v16 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = 1;
    a1 = a2;
  }

  else
  {
    if (a1)
    {
      v20 = a1;
      v19 = 0;
    }

    else
    {
      v51 = a5;
      if (qword_27DB13C58 != -1)
      {
        swift_once();
      }

      v21 = sub_23030EF48();
      __swift_project_value_buffer(v21, qword_27DB17400);
      v22 = a3;
      v23 = sub_23030EF38();
      v24 = sub_230310298();
      v52 = v22;

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v49 = v24;
        v26 = v25;
        v48 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v56 = v50;
        aBlock = a7;
        *v26 = 136315394;
        swift_getMetatypeMetadata();
        v27 = sub_23030F948();
        v29 = v23;
        v30 = sub_23004E30C(v27, v28, &v56);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2112;
        v31 = v52;
        *(v26 + 14) = v52;
        v32 = v48;
        *v48 = v31;
        v33 = v31;
        _os_log_impl(&dword_230044000, v29, v49, "%s: 'templatePublicLink' and 'error' in completion of '[REMXPCStorePerformer createOrUpdatePublicLinkForTemplateWithObjectID:configuration:completion:]' were both nil {remTemplate.objectID: %@}", v26, 0x16u);
        sub_230061918(v32, &qword_27DB15000);
        MEMORY[0x231914180](v32, -1, -1);
        v34 = v50;
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x231914180](v34, -1, -1);
        MEMORY[0x231914180](v26, -1, -1);
      }

      else
      {

        v31 = v52;
      }

      a5 = v51;
      v52 = objc_opt_self();
      aBlock = 0;
      v58 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000BBLL, 0x8000000230344E10);
      v35 = [v31 description];
      v36 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v38 = v37;

      MEMORY[0x231911790](v36, v38);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v39 = sub_23030F8B8();

      v40 = [v52 internalErrorWithDebugDescription_];

      v20 = v40;
      v19 = 1;
      a1 = v40;
    }

    v41 = v20;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = a5;
  *(v42 + 24) = a6;
  *(v42 + 32) = a1;
  *(v42 + 40) = v19;
  v61 = sub_230210B00;
  v62 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2300F5280;
  v60 = &block_descriptor_187;
  v43 = _Block_copy(&aBlock);
  v44 = a2;
  v45 = a2;

  sub_23030F488();
  v56 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v18, v15, v43);
  _Block_release(v43);
  sub_230077E1C(a1);
  (*(v55 + 8))(v15, v13);
  (*(v16 + 8))(v18, v53);
}

void REMStore.createPublicContentPreview(of:with:completionHandlerQueue:completion:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = sub_23030F458();
  v34 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23030F4C8();
  v33 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v6 daemonController];
  if (v18)
  {
    v19 = v18;
    v20 = [a1 objectID];
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v22 = ObjectType;
    v21[6] = a5;
    v21[7] = v22;
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v24 = a3;
    swift_retain_n();
    v25 = v24;
    v26 = v20;
    v27 = a2;
    v28 = sub_23030F8B8();
    v41 = sub_23020B570;
    v42 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2300E5348;
    v40 = &block_descriptor_39;
    v29 = _Block_copy(&aBlock);

    v41 = sub_23020BD6C;
    v42 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2300E53A8;
    v40 = &block_descriptor_42;
    v30 = _Block_copy(&aBlock);

    [v19 asyncStorePerformerWithReason:v28 loadHandler:v29 errorHandler:v30];
    _Block_release(v30);
    _Block_release(v29);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = swift_allocObject();
    *(v31 + 16) = a4;
    *(v31 + 24) = a5;
    v41 = sub_230210BE0;
    v42 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_2300F5280;
    v40 = &block_descriptor_30;
    v32 = _Block_copy(&aBlock);

    sub_23030F488();
    v36 = MEMORY[0x277D84F90];
    sub_2300ED808();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
    sub_2300ED860();
    sub_230310648();
    MEMORY[0x2319120F0](0, v17, v14, v32);
    _Block_release(v32);
    (*(v34 + 8))(v14, v12);
    (*(v33 + 8))(v17, v15);
  }
}

void sub_23020B328(void (*a1)(id, uint64_t))
{
  v2 = objc_opt_self();
  sub_23004CBA4(0, &qword_27DB15278);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_23030F8B8();
  v5 = [v2 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v4];

  a1(v5, 1);
}

void sub_23020B400(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = a6;
  v14[6] = a7;
  v18[4] = sub_2302109A8;
  v18[5] = v14;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_230210C5C;
  v18[3] = &block_descriptor_163;
  v15 = _Block_copy(v18);
  v16 = a2;
  v17 = a4;

  [a1 createPublicContentPreviewOfTemplateWithObjectID:v16 configuration:a3 completion:v15];
  _Block_release(v15);
}

uint64_t objectdestroy_14Tm()
{

  return swift_deallocObject();
}

uint64_t sub_23020B5A0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v54 = a4;
  v13 = sub_23030F458();
  v55 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_23030F4C8();
  v16 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v19 = 1;
    a1 = a2;
  }

  else
  {
    if (a1)
    {
      v20 = a1;
      v19 = 0;
    }

    else
    {
      v51 = a5;
      if (qword_27DB13C58 != -1)
      {
        swift_once();
      }

      v21 = sub_23030EF48();
      __swift_project_value_buffer(v21, qword_27DB17400);
      v22 = a3;
      v23 = sub_23030EF38();
      v24 = sub_230310298();
      v52 = v22;

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v49 = v24;
        v26 = v25;
        v48 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v56 = v50;
        aBlock = a7;
        *v26 = 136315394;
        swift_getMetatypeMetadata();
        v27 = sub_23030F948();
        v29 = v23;
        v30 = sub_23004E30C(v27, v28, &v56);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2112;
        v31 = v52;
        *(v26 + 14) = v52;
        v32 = v48;
        *v48 = v31;
        v33 = v31;
        _os_log_impl(&dword_230044000, v29, v49, "%s: 'publicTemplateObjectID' and 'error' in completion of '[REMXPCStorePerformer createPublicContentPreviewOfTemplateWithObjectID:configuration:completion:]' were both nil {remTemplate.objectID: %@}", v26, 0x16u);
        sub_230061918(v32, &qword_27DB15000);
        MEMORY[0x231914180](v32, -1, -1);
        v34 = v50;
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x231914180](v34, -1, -1);
        MEMORY[0x231914180](v26, -1, -1);
      }

      else
      {

        v31 = v52;
      }

      a5 = v51;
      v52 = objc_opt_self();
      aBlock = 0;
      v58 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000C0, 0x8000000230344D10);
      v35 = [v31 description];
      v36 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v38 = v37;

      MEMORY[0x231911790](v36, v38);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v39 = sub_23030F8B8();

      v40 = [v52 internalErrorWithDebugDescription_];

      v20 = v40;
      v19 = 1;
      a1 = v40;
    }

    v41 = v20;
  }

  v42 = swift_allocObject();
  *(v42 + 16) = a5;
  *(v42 + 24) = a6;
  *(v42 + 32) = a1;
  *(v42 + 40) = v19;
  v61 = sub_230210BD8;
  v62 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_2300F5280;
  v60 = &block_descriptor_169;
  v43 = _Block_copy(&aBlock);
  v44 = a2;
  v45 = a2;

  sub_23030F488();
  v56 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v18, v15, v43);
  _Block_release(v43);
  sub_230077E1C(a1);
  (*(v55 + 8))(v15, v13);
  (*(v16 + 8))(v18, v53);
}

uint64_t sub_23020BAF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  v24 = a2;
  v11 = sub_23030F458();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_23030F4C8();
  v15 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a1;
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  v20 = a1;
  sub_23030F488();
  v25 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v23);
}

void REMStore.revokePublicLink(for:completionHandlerQueue:completion:)(void *a1, uint64_t a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = [v4 daemonController];
  if (v9)
  {
    v10 = v9;
    v11 = [a1 objectID];
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a1;
    v12[4] = a3;
    v12[5] = a4;
    v12[6] = ObjectType;
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    swift_retain_n();
    v14 = v11;
    v15 = a1;
    v16 = sub_23030F8B8();
    v27 = sub_23020C1C0;
    v28 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2300E5348;
    v26 = &block_descriptor_51;
    v17 = _Block_copy(&aBlock);

    v27 = sub_2300E6EFC;
    v28 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_2300E53A8;
    v26 = &block_descriptor_54;
    v18 = _Block_copy(&aBlock);

    [v10 asyncStorePerformerWithReason:v16 loadHandler:v17 errorHandler:v18];
    _Block_release(v18);
    _Block_release(v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = sub_23030F8B8();
    v22 = [v19 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v21];

    a3(v22, 1);
  }
}

void sub_23020C0BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v15[4] = sub_23021099C;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_230210C5C;
  v15[3] = &block_descriptor_151_0;
  v13 = _Block_copy(v15);
  v14 = a3;

  [a1 revokePublicLinkForTemplateWithObjectID:a2 completion:v13];
  _Block_release(v13);
}

void sub_23020C1D0(void *a1, id a2, void *a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = 1;
    v9 = a2;
  }

  else
  {
    v9 = a1;
    if (a1)
    {
      v10 = a1;
      v8 = 0;
    }

    else
    {
      if (qword_27DB13C58 != -1)
      {
        swift_once();
      }

      v13 = sub_23030EF48();
      __swift_project_value_buffer(v13, qword_27DB17400);
      v14 = a3;
      v15 = sub_23030EF38();
      v16 = sub_230310298();

      v17 = &off_2788BD000;
      if (os_log_type_enabled(v15, v16))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = v35;
        *v18 = 136315394;
        v37 = a6;
        swift_getMetatypeMetadata();
        v20 = sub_23030F948();
        v22 = sub_23004E30C(v20, v21, &v36);
        v17 = &off_2788BD000;

        *(v18 + 4) = v22;
        *(v18 + 12) = 2112;
        v23 = [v14 objectID];
        *(v18 + 14) = v23;
        *v19 = v23;
        _os_log_impl(&dword_230044000, v15, v16, "%s: 'templateObjectID' and 'error' in completion of '[REMXPCStorePerformer revokePublicLinkForTemplateWithObjectID:completion:]' were both nil {remTemplate.objectID: %@}", v18, 0x16u);
        sub_230061918(v19, &qword_27DB15000);
        MEMORY[0x231914180](v19, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x231914180](v35, -1, -1);
        MEMORY[0x231914180](v18, -1, -1);
      }

      v24 = objc_opt_self();
      v37 = 0;
      v38 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000B1, 0x8000000230344C50);
      v25 = [v14 v17[155]];
      v26 = [v25 description];
      v27 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v29 = v28;

      MEMORY[0x231911790](v27, v29);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v30 = sub_23030F8B8();

      v31 = [v24 internalErrorWithDebugDescription_];

      v10 = v31;
      v8 = 1;
      v9 = v31;
    }

    v32 = v10;
  }

  v33 = a2;
  v34 = a2;
  a4(v9, v8);
  sub_230077E1C(v9);
  sub_230077E1C(v9);
}

void REMStore.downloadPublicTemplate(withPublicLinkURLUUID:completion:)(uint64_t a1, void (*a2)(id, uint64_t), void (*a3)(id, uint64_t))
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_23030EBB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 daemonController];
  if (v13)
  {
    v14 = *(v10 + 16);
    v28 = v13;
    v14(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = swift_allocObject();
    (*(v10 + 32))(v17 + v15, v12, v9);
    v18 = (v17 + v16);
    *v18 = a2;
    v18[1] = a3;
    *(v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    v19 = swift_allocObject();
    *(v19 + 16) = a2;
    *(v19 + 24) = a3;
    swift_retain_n();
    v20 = sub_23030F8B8();
    v33 = sub_23020CAD4;
    v34 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_2300E5348;
    v32 = &block_descriptor_63;
    v21 = _Block_copy(&aBlock);

    v33 = sub_2300E7CC4;
    v34 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_2300E53A8;
    v32 = &block_descriptor_66;
    v22 = _Block_copy(&aBlock);

    [v28 asyncStorePerformerWithReason:v20 loadHandler:v21 errorHandler:v22];
    _Block_release(v22);
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = sub_23030F8B8();
    v28 = [v23 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v25];

    a2(v28, 1);
    v26 = v28;
  }
}

void sub_23020C8DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a1;
  v8 = sub_23030EBB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23030EB88();
  (*(v9 + 16))(v11, a2, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = (v10 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v13, v11, v8);
  v16 = (v15 + v14);
  *v16 = a3;
  v16[1] = a4;
  *(v15 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  aBlock[4] = sub_2302108E0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_230210C5C;
  aBlock[3] = &block_descriptor_145_1;
  v17 = _Block_copy(aBlock);

  [v19 downloadPublicTemplateWithPublicLinkURLUUID:v12 completion:v17];
  _Block_release(v17);
}

void sub_23020CAD4(void *a1)
{
  v3 = *(sub_23030EBB8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *(v1 + v6);
  v9 = *v7;
  v10 = v7[1];

  sub_23020C8DC(a1, v1 + v4, v9, v10, v8);
}

void sub_23020CB80(void *a1, void *a2, uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v11 = sub_23030EBB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = 1;
    a1 = a2;
  }

  else
  {
    if (a1)
    {
      v17 = a1;
      v16 = 0;
    }

    else
    {
      v39 = v13;
      if (qword_27DB13C58 != -1)
      {
        swift_once();
      }

      v18 = sub_23030EF48();
      __swift_project_value_buffer(v18, qword_27DB17400);
      (*(v12 + 16))(v15, a3, v39);
      v19 = sub_23030EF38();
      v20 = sub_230310298();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v40 = v38;
        v41 = a6;
        *v21 = 136315394;
        swift_getMetatypeMetadata();
        v22 = sub_23030F948();
        HIDWORD(v37) = v20;
        v24 = sub_23004E30C(v22, v23, &v40);

        *(v21 + 4) = v24;
        *(v21 + 12) = 2080;
        v25 = sub_23030EB78();
        v27 = v26;
        (*(v12 + 8))(v15, v39);
        v28 = sub_23004E30C(v25, v27, &v40);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_230044000, v19, BYTE4(v37), "%s: 'publicTemplateObjectID' and 'error' in completion of '[REMXPCStorePerformer downloadPublicTemplateWithPublicLinkURLUUID:completion:]' were both nil {publicLinkURLUUID: %s}", v21, 0x16u);
        v29 = v38;
        swift_arrayDestroy();
        MEMORY[0x231914180](v29, -1, -1);
        MEMORY[0x231914180](v21, -1, -1);
      }

      else
      {

        (*(v12 + 8))(v15, v39);
      }

      v30 = objc_opt_self();
      v41 = 0;
      v42 = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD0000000000000AALL, 0x8000000230344BA0);
      v31 = sub_23030EB78();
      MEMORY[0x231911790](v31);

      MEMORY[0x231911790](125, 0xE100000000000000);
      v32 = sub_23030F8B8();

      v33 = [v30 internalErrorWithDebugDescription_];

      v17 = v33;
      v16 = 1;
      a1 = v33;
    }

    v34 = v17;
  }

  v35 = a2;
  v36 = a2;
  a4(a1, v16);
  sub_230077E1C(a1);
  sub_230077E1C(a1);
}

uint64_t REMStore.downloadPublicTemplate(withPublicLinkURLUUID:)(uint64_t a1)
{
  v3 = sub_23030EBB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  (*(v4 + 32))(v7 + v6, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17418);
  swift_allocObject();
  v8 = v1;
  return sub_23030F178();
}

{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23020D1F4, 0, 0);
}

uint64_t sub_23020D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2302107CC;
  *(v8 + 24) = v7;

  REMStore.downloadPublicTemplate(withPublicLinkURLUUID:completion:)(a4, sub_23021080C, v8);
}

uint64_t sub_23020D150(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_23030EBB8() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_23020D090(a1, a2, v6, v7);
}

uint64_t sub_23020D1F4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_23004CBA4(0, &qword_280C9C478);
  *v2 = v0;
  v2[1] = sub_23020D304;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000002ELL, 0x80000002303449F0, sub_23020D5D4, v1, v3);
}

uint64_t sub_23020D304()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_23020D420;
  }

  else
  {

    v2 = sub_2300E6C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23020D420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23020D484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17430);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  REMStore.downloadPublicTemplate(withPublicLinkURLUUID:completion:)(a3, sub_230210728, v10);
}

void REMStore.fetchSuggestedReminders(from:completion:)(void *a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = [v3 daemonController];
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = ObjectType;
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    swift_retain_n();
    v12 = a1;
    v13 = sub_23030F8B8();
    v24 = sub_23020D9AC;
    v25 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2300E5348;
    v23 = &block_descriptor_80_0;
    v14 = _Block_copy(&aBlock);

    v24 = sub_2300E7CC4;
    v25 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_2300E53A8;
    v23 = &block_descriptor_83;
    v15 = _Block_copy(&aBlock);

    [v9 asyncStorePerformerWithReason:v13 loadHandler:v14 errorHandler:v15];
    _Block_release(v15);
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = sub_23030F8B8();
    v19 = [v16 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v18];

    a2(v19, 1);
  }
}

void sub_23020D8B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v12[4] = sub_23021071C;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_230210C5C;
  v12[3] = &block_descriptor_130_0;
  v11 = _Block_copy(v12);

  [a1 fetchSuggestedRemindersFromExtractionInput:a2 completion:v11];
  _Block_release(v11);
}

void sub_23020D9B8(void *a1, id a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = 1;
    v8 = a2;
  }

  else
  {
    v8 = a1;
    if (a1)
    {
      v9 = a1;
      v7 = 0;
    }

    else
    {
      if (qword_27DB13C58 != -1)
      {
        swift_once();
      }

      v11 = sub_23030EF48();
      __swift_project_value_buffer(v11, qword_27DB17400);
      v12 = sub_23030EF38();
      v13 = sub_230310298();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v25[0] = v15;
        v25[1] = a5;
        *v14 = 136315138;
        swift_getMetatypeMetadata();
        v16 = sub_23030F948();
        v18 = sub_23004E30C(v16, v17, v25);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_230044000, v12, v13, "%s#fetchSuggestedReminders : 'extractionOutput' and 'error' were both nil", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v15);
        MEMORY[0x231914180](v15, -1, -1);
        MEMORY[0x231914180](v14, -1, -1);
      }

      v19 = objc_opt_self();
      v20 = sub_23030F8B8();
      v21 = [v19 internalErrorWithDebugDescription_];

      v9 = v21;
      v7 = 1;
      v8 = v21;
    }

    v22 = v9;
  }

  v23 = a2;
  v24 = a2;
  a3(v8, v7);
  sub_230077E1C(v8);
  sub_230077E1C(v8);
}

void sub_23020DBE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t REMStore.fetchSuggestedReminders(from:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23020DC94, 0, 0);
}

uint64_t sub_23020DC94()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_23004CBA4(0, &qword_27DB17420);
  *v2 = v0;
  v2[1] = sub_23020DDA4;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001ELL, 0x8000000230344A40, sub_23020E010, v1, v3);
}

uint64_t sub_23020DDA4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_230210BD4;
  }

  else
  {

    v2 = sub_230210C60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23020DEC0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17428);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  REMStore.fetchSuggestedReminders(from:completion:)(a3, sub_230210708, v10);
}

uint64_t sub_23020E018(void *a1, char a2, uint64_t a3, uint64_t *a4)
{
  if (a2)
  {
    v5 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    return sub_23030FE58();
  }

  else
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    return sub_23030FE68();
  }
}

uint64_t REMStore.permanentlyHideReminders(with:accountID:completion:)(id *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v43 = a4;
  v41 = a2;
  v42 = a3;
  isUniquelyReferenced_nonNull_native = sub_23030EB58();
  v53 = *(isUniquelyReferenced_nonNull_native - 8);
  v6 = MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v41 - v9;
  v51 = sub_23030EBB8();
  v10 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23008D944(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_25:
    v13 = sub_2303106D8();
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_26:
    sub_23020E514(v12, v41, v42, v43);
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_26;
  }

LABEL_3:
  v14 = 0;
  v48 = (v10 + 1);
  v49 = a1 & 0xC000000000000001;
  v54 = (v53 + 32);
  v44 = a1 & 0xFFFFFFFFFFFFFF8;
  v45 = v53 + 40;
  v46 = v13;
  v47 = a1;
  while (1)
  {
    if (v49)
    {
      v15 = MEMORY[0x231912650](v14, a1);
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v14 >= *(v44 + 16))
      {
        goto LABEL_24;
      }

      v15 = a1[v14 + 4];
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }
    }

    v55 = v16;
    v56 = v14;
    v17 = v15;
    v18 = [v15 objectID];
    v19 = [v18 uuid];

    v20 = v50;
    sub_23030EBA8();

    v21 = sub_23030EB78();
    v23 = v22;
    (*v48)(v20, v51);
    v57 = v17;
    v24 = [v17 lastModifiedDate];
    v25 = v52;
    sub_23030EB18();

    a1 = *v54;
    v26 = v8;
    v27 = v8;
    v8 = isUniquelyReferenced_nonNull_native;
    (*v54)(v27, v25, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v12;
    v10 = v12;
    v29 = sub_23005EE00(v21, v23);
    v30 = v12[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v12[3] < v32)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = &v58;
      sub_23008C054();
    }

LABEL_18:
    isUniquelyReferenced_nonNull_native = v8;
    v8 = v26;
    if (v33)
    {

      v12 = v58;
      (*(v53 + 40))(v58[7] + *(v53 + 72) * v29, v26, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v12 = v58;
      v58[(v29 >> 6) + 8] |= 1 << v29;
      v36 = (v12[6] + 16 * v29);
      *v36 = v21;
      v36[1] = v23;
      (a1)(v12[7] + *(v53 + 72) * v29, v26, isUniquelyReferenced_nonNull_native);

      v37 = v12[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_23;
      }

      v12[2] = v39;
    }

    v14 = v56 + 1;
    a1 = v47;
    if (v55 == v46)
    {
      goto LABEL_26;
    }
  }

  sub_23008886C(v32, isUniquelyReferenced_nonNull_native);
  v10 = v58;
  v34 = sub_23005EE00(v21, v23);
  if ((v33 & 1) == (v35 & 1))
  {
    v29 = v34;
    goto LABEL_18;
  }

  result = sub_2303112A8();
  __break(1u);
  return result;
}

void sub_23020E514(uint64_t a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v9 = [v4 daemonController];
  if (v9)
  {
    v10 = v9;
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = a3;
    v11[5] = a4;
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
    swift_retain_n();

    v13 = a2;
    v14 = sub_23030F8B8();
    v25 = sub_2302106F4;
    v26 = v11;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2300E5348;
    v24 = &block_descriptor_112;
    v15 = _Block_copy(&aBlock);

    v25 = sub_2300E7CC4;
    v26 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_2300E53A8;
    v24 = &block_descriptor_115;
    v16 = _Block_copy(&aBlock);

    [v10 asyncStorePerformerWithReason:v14 loadHandler:v15 errorHandler:v16];
    _Block_release(v16);
    _Block_release(v15);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = sub_23030F8B8();
    v20 = [v17 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v19];

    a3(v20, 1);
  }
}

uint64_t REMStore.permanentlyHideReminderChangeItems(with:accountID:completion:)(void (*a1)(void), void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v50 = a4;
  v49 = a3;
  v48 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_23030EB58();
  v60 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v59 = &v47 - v12;
  v64 = sub_23030EBB8();
  v13 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23008D944(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
LABEL_35:
    v16 = sub_2303106D8();
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_36:
    sub_23020E514(v15, v48, v49, v50);
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_36;
  }

LABEL_3:
  v57 = v8;
  v58 = v11;
  v17 = 0;
  v61 = (v13 + 8);
  v62 = a1 & 0xC000000000000001;
  v65 = (v60 + 32);
  v51 = v60 + 40;
  v52 = v7;
  v53 = (v60 + 56);
  v54 = a1 & 0xFFFFFFFFFFFFFF8;
  v55 = v16;
  v56 = a1;
  while (1)
  {
    if (v62)
    {
      v19 = MEMORY[0x231912650](v17, a1);
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v17 >= *(v54 + 16))
      {
        goto LABEL_33;
      }

      v19 = *(a1 + v17 + 4);
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
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
    }

    v20 = a1;
    v21 = v19;
    v22 = [v19 objectID];
    v23 = [v22 uuid];

    v24 = v63;
    sub_23030EBA8();

    v25 = sub_23030EB78();
    v11 = v26;
    (*v61)(v24, v64);
    v67 = v21;
    v27 = [v21 lastModifiedDate];
    if (!v27)
    {
      v13 = sub_23005EE00(v25, v11);
      v39 = v38;

      a1 = v20;
      if (v39)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v68 = v15;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23008C054();
          v15 = v68;
        }

        v7 = v52;
        (*(v60 + 32))(v52, v15[7] + *(v60 + 72) * v13, v8);
        sub_2302104CC(v13, v15);

        v41 = 0;
      }

      else
      {

        v41 = 1;
        v7 = v52;
      }

      (*v53)(v7, v41, 1, v8);
      sub_230061918(v7, &unk_27DB15AA0);
      goto LABEL_6;
    }

    v66 = v18;
    v28 = v27;
    sub_23030EB18();

    a1 = *v65;
    v29 = v58;
    (*v65)();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v15;
    v30 = v25;
    v7 = v15;
    v13 = sub_23005EE00(v30, v11);
    v32 = v15[2];
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_32;
    }

    v35 = v31;
    if (v15[3] < v34)
    {
      break;
    }

    if (v8)
    {
      if ((v31 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v7 = &v68;
      sub_23008C054();
      if ((v35 & 1) == 0)
      {
LABEL_25:
        v15 = v68;
        v68[(v13 >> 6) + 8] |= 1 << v13;
        v42 = (v15[6] + 16 * v13);
        *v42 = v30;
        v42[1] = v11;
        v8 = v57;
        (a1)(v15[7] + *(v60 + 72) * v13, v29, v57);

        v43 = v15[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_34;
        }

        v15[2] = v45;
        goto LABEL_5;
      }
    }

LABEL_4:

    v15 = v68;
    v8 = v57;
    (*(v60 + 40))(v68[7] + *(v60 + 72) * v13, v29, v57);

LABEL_5:
    v16 = v55;
    a1 = v56;
    v18 = v66;
LABEL_6:
    ++v17;
    if (v18 == v16)
    {
      goto LABEL_36;
    }
  }

  sub_23008886C(v34, v8);
  v7 = v68;
  v36 = sub_23005EE00(v30, v11);
  if ((v35 & 1) == (v37 & 1))
  {
    v13 = v36;
    if ((v35 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_4;
  }

  result = sub_2303112A8();
  __break(1u);
  return result;
}

void REMStore.batchDeleteExpiredReminders(daysFromNow:completion:)(void *a1, void (*a2)(id), uint64_t a3)
{
  v7 = [v3 daemonController];
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    v9[2] = a1;
    v9[3] = a2;
    v9[4] = a3;
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;
    v11 = a1;
    swift_retain_n();
    v12 = sub_23030F8B8();
    v23 = sub_2302106B8;
    v24 = v9;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E5348;
    v22 = &block_descriptor_94;
    v13 = _Block_copy(&aBlock);

    v23 = sub_2302106C4;
    v24 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v20 = 1107296256;
    v21 = sub_2300E53A8;
    v22 = &block_descriptor_97;
    v14 = _Block_copy(&aBlock);

    [v8 asyncStorePerformerWithReason:v12 loadHandler:v13 errorHandler:v14];
    _Block_release(v14);
    _Block_release(v13);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = objc_opt_self();
    sub_23004CBA4(0, &qword_27DB15278);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = sub_23030F8B8();
    v18 = [v15 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v17];

    a2(v18);
  }
}

void sub_23020F098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = sub_2302106EC;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2302190BC;
  v10[3] = &block_descriptor_103;
  v9 = _Block_copy(v10);

  [a1 batchDeleteExpiredRemindersWith:a2 completion:v9];
  _Block_release(v9);
}

void sub_23020F18C(void *a1, void (*a2)(void))
{
  if (a1)
  {
    v4 = a1;
    (a2)(a1);
  }

  else
  {
    a2();
  }
}

void sub_23020F1FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23030EB58();
  v9 = sub_23030F638();
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v12[4] = sub_230210700;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2302190BC;
  v12[3] = &block_descriptor_121;
  v11 = _Block_copy(v12);

  [a1 permanentlyHideRemindersWith:v9 accountID:a3 completion:v11];
  _Block_release(v11);
}

void sub_23020F324(void *a1, void (*a2)(void *, uint64_t))
{
  if (a1)
  {
    v4 = a1;
    a2(a1, 1);
  }

  else
  {
    a2(0, 0);
  }
}

id REMStore.deletePhantomHashtags(with:)(uint64_t a1)
{
  v3 = v1;
  v15[2] = *MEMORY[0x277D85DE8];
  type metadata accessor for REMHashtagLabelDataView.HashtagIDsWithHashtagLabelNamesInvocation();
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = a1;
  v7 = v3;
  sub_2300C86D0(v5, v6, v15);

  if (!v2)
  {
    v8 = v15[0];

    v9 = sub_23009D7A0(v8);

    if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      sub_23004CBA4(0, &qword_280C9C478);

      sub_230310AF8();
    }

    else
    {

      sub_230311078();
      sub_23004CBA4(0, &qword_280C9C478);
    }

    sub_23004CBA4(0, &qword_280C9C478);
    v10 = sub_23030FCC8();

    v15[0] = 0;
    v11 = [v3 repairPhantomObjectsWithObjectIDs:v10 error:v15];

    v12 = v15[0];
    if (v11)
    {
      v7 = sub_23030FCD8();
      v13 = v12;
    }

    else
    {
      v7 = v15[0];
      sub_23030E808();

      swift_willThrow();
    }
  }

  return v7;
}

uint64_t sub_23020F58C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    do
    {
      sub_23008E1C0(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_230310748();
      result = sub_23008E21C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23020F730(int64_t a1, uint64_t a2)
{
  v4 = sub_230310A58();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_230310668();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_23030F768();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23020F9E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    do
    {
      sub_230311358();

      sub_23030F9C8();
      v10 = sub_2303113A8();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23020FBA0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_230310438();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_23020FD2C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_230311358();
      MEMORY[0x2319130E0](v9);
      result = sub_2303113A8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_23030EEA8() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_23020FEFC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_230310438();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_230210088(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    do
    {
      sub_230311358();

      sub_23030F9C8();
      v9 = sub_2303113A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_230210238(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    v28 = v8;
    do
    {
      v29 = 24 * v6;
      v11 = *(a2 + 48) + 24 * v6;
      v13 = *v11;
      v12 = *(v11 + 8);
      v14 = *(v11 + 16);
      sub_230311358();
      if (v14)
      {
        MEMORY[0x2319130E0](1);
        v15 = v13;

        sub_230310458();
        sub_23008E0EC();
      }

      else
      {
        MEMORY[0x2319130E0](0);
        sub_23008E0EC();

        v8 = v28;
      }

      sub_23030F778();
      v16 = sub_2303113A8();
      result = sub_23008E140(v13, v12, v14);
      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v17)
      {
LABEL_13:
        v18 = *(a2 + 48);
        v19 = v18 + 24 * v3;
        v20 = (v18 + v29);
        if (24 * v3 < v29 || v19 >= v20 + 24 || v3 != v6)
        {
          v21 = *v20;
          *(v19 + 16) = *(v20 + 2);
          *v19 = v21;
        }

        v22 = *(a2 + 56);
        v23 = v22 + 40 * v3;
        v24 = (v22 + 40 * v6);
        if (40 * v3 < (40 * v6) || v23 >= v24 + 40 || v3 != v6)
        {
          v9 = *v24;
          v10 = v24[1];
          *(v23 + 32) = *(v24 + 4);
          *v23 = v9;
          *(v23 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2302104CC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_230310668() + 1) & ~v5;
    while (1)
    {
      sub_230311358();

      sub_23030F9C8();
      v9 = sub_2303113A8();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_23030EB58() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2302107CC(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t objectdestroy_56Tm_0()
{
  v1 = sub_23030EBB8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_2302108E0(void *a1, void *a2)
{
  v5 = *(sub_23030EBB8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v2 + v7;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v2 + v8);

  sub_23020CB80(a1, a2, v2 + v6, v10, v11, v12);
}

uint64_t objectdestroy_153Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_44Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_165Tm(void (*a1)(void, void))
{

  a1(*(v1 + 32), *(v1 + 40));

  return swift_deallocObject();
}

uint64_t sub_230210CB8(uint64_t a1)
{
  v2 = sub_230210EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230210CF4(uint64_t a1)
{
  v2 = sub_230210EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMUrgentAlarmMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17438);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230210EB0();
  v8 = v7;
  sub_230311448();
  v10[1] = v8;
  type metadata accessor for REMObjectID_Codable();
  sub_2300EBFDC(qword_280C9BFD8);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_230210EB0()
{
  result = qword_27DB17440;
  if (!qword_27DB17440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17440);
  }

  return result;
}

uint64_t REMUrgentAlarmMetadata.hashValue.getter()
{
  sub_230311358();
  sub_230310458();
  return sub_2303113A8();
}

uint64_t REMUrgentAlarmMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17448);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230210EB0();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMObjectID_Codable();
    sub_2300EBFDC(&qword_280C9C5D0);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23021112C()
{
  sub_230311358();
  sub_230310458();
  return sub_2303113A8();
}

uint64_t sub_230211194()
{
  sub_230311358();
  sub_230310458();
  return sub_2303113A8();
}

unint64_t sub_2302111D8()
{
  result = qword_280C97E80;
  if (!qword_280C97E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E80);
  }

  return result;
}

unint64_t sub_230211230()
{
  result = qword_280C97E98[0];
  if (!qword_280C97E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C97E98);
  }

  return result;
}

unint64_t sub_230211288()
{
  result = qword_280C97E90;
  if (!qword_280C97E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E90);
  }

  return result;
}

unint64_t sub_2302112E0()
{
  result = qword_280C97E88;
  if (!qword_280C97E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97E88);
  }

  return result;
}

unint64_t sub_23021139C()
{
  result = qword_27DB17450;
  if (!qword_27DB17450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17450);
  }

  return result;
}

unint64_t sub_2302113F4()
{
  result = qword_27DB17458;
  if (!qword_27DB17458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17458);
  }

  return result;
}

unint64_t sub_23021144C()
{
  result = qword_27DB17460;
  if (!qword_27DB17460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17460);
  }

  return result;
}

uint64_t sub_2302114A0()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17468);
  v1 = __swift_project_value_buffer(v0, qword_27DB17468);
  if (qword_27DB13BA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F5D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMSmartListChangeItem.userDefinedVisibility.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v5 = [v0 smartListType];
  v6 = [v1 pinnedDate];
  if (v6)
  {
    v7 = v6;
    sub_23030EB18();

    v8 = sub_23030EB58();
    (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  }

  else
  {
    v9 = sub_23030EB58();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  }

  v10 = _sSo12REMSmartListC19ReminderKitInternalE028userDefinedVisibilityOfSmartB04with10pinnedDateSo0ab4UsergH0VSo0aB4Typea_10Foundation0M0VSgtFZ_0(v5, v4);

  sub_230061918(v4, &unk_27DB15AA0);
  return v10;
}

uint64_t sub_2302116C8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *a1;
  v8 = [*a1 smartListType];
  v9 = [v7 pinnedDate];
  if (v9)
  {
    v10 = v9;
    sub_23030EB18();

    v11 = sub_23030EB58();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v12 = sub_23030EB58();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  v13 = _sSo12REMSmartListC19ReminderKitInternalE028userDefinedVisibilityOfSmartB04with10pinnedDateSo0ab4UsergH0VSo0aB4Typea_10Foundation0M0VSgtFZ_0(v8, v6);

  result = sub_230061918(v6, &unk_27DB15AA0);
  *a2 = v13;
  return result;
}

void REMSmartListChangeItem.userDefinedVisibility.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23030EB58();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - v9;
  v11 = [v2 smartListType];
  v12 = [v2 pinnedDate];
  if (v12)
  {
    v13 = v12;
    sub_23030EB18();

    (*(v5 + 56))(v10, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v10, 1, 1, v4);
  }

  v14 = _sSo12REMSmartListC19ReminderKitInternalE028userDefinedVisibilityOfSmartB04with10pinnedDateSo0ab4UsergH0VSo0aB4Typea_10Foundation0M0VSgtFZ_0(v11, v10);

  sub_230061918(v10, &unk_27DB15AA0);
  if (v14 != a1)
  {
    v15 = [v2 smartListType];
    v16 = REMSmartListType.supportsUserDefinedVisibility.getter(v15);

    if (v16)
    {
      switch(a1)
      {
        case 2:
          if (qword_27DB13C80 != -1)
          {
            swift_once();
          }

          __swift_project_value_buffer(v4, qword_27DB175B0);
          v32 = sub_23030EAA8();
          break;
        case 1:
          sub_23030EB28();
          v32 = sub_23030EAA8();
          (*(v5 + 8))(v7, v4);
          break;
        case 0:
          [v2 setPinnedDate_];
          return;
        default:
          if (qword_27DB13C60 != -1)
          {
            swift_once();
          }

          v33 = sub_23030EF48();
          __swift_project_value_buffer(v33, qword_27DB17468);
          v19 = sub_23030EF38();
          v34 = sub_230310298();
          if (!os_log_type_enabled(v19, v34))
          {
            goto LABEL_32;
          }

          v35 = swift_slowAlloc();
          *v35 = 134217984;
          *(v35 + 4) = a1;
          _os_log_impl(&dword_230044000, v19, v34, "REMSmartListChangeItem.userDefinedVisibility.set: Unhandled userDefinedVisibility {userDefinedVisibility: %ld}", v35, 0xCu);
          v36 = v35;
          goto LABEL_31;
      }

      [v2 setPinnedDate_];

      return;
    }

    if (qword_27DB13C60 != -1)
    {
      swift_once();
    }

    v17 = sub_23030EF48();
    __swift_project_value_buffer(v17, qword_27DB17468);
    v18 = v2;
    v19 = sub_23030EF38();
    v20 = sub_230310298();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_32;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v40 = v23;
    *v21 = 138543874;
    v24 = [v18 objectID];
    *(v21 + 4) = v24;
    *v22 = v24;
    *(v21 + 12) = 2082;
    v25 = [v18 smartListType];
    v26 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v28 = v27;

    v29 = sub_23004E30C(v26, v28, &v40);

    *(v21 + 14) = v29;
    *(v21 + 22) = 2082;
    if (a1)
    {
      if (a1 == 2)
      {
        v30 = 0xE700000000000000;
        v37 = 0x65646469682ELL;
      }

      else
      {
        if (a1 == 1)
        {
          v30 = 0xE800000000000000;
          v31 = 0x656C62697369762ELL;
LABEL_30:
          v38 = sub_23004E30C(v31, v30, &v40);

          *(v21 + 24) = v38;
          _os_log_impl(&dword_230044000, v19, v20, "REMSmartListChangeItem.userDefinedVisibility.set: Smart list does not support user-defined visibility {objectID: %{public}@, smartListType: %{public}s, userDefinedVisibility: %{public}s}", v21, 0x20u);
          sub_230061918(v22, &qword_27DB15000);
          MEMORY[0x231914180](v22, -1, -1);
          swift_arrayDestroy();
          MEMORY[0x231914180](v23, -1, -1);
          v36 = v21;
LABEL_31:
          MEMORY[0x231914180](v36, -1, -1);
LABEL_32:

          return;
        }

        v30 = 0xE700000000000000;
        v37 = 0x776F6E6B6E75;
      }

      v31 = v37 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
      goto LABEL_30;
    }

    v30 = 0xEA00000000006465;
    v31 = 0x6E696665646E752ELL;
    goto LABEL_30;
  }
}

void (*REMSmartListChangeItem.userDefinedVisibility.modify(uint64_t *a1))(uint64_t *a1)
{
  v2 = v1;
  a1[1] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v4);
  }

  v6 = v5;
  a1[2] = v5;
  v7 = [v2 smartListType];
  v8 = [v2 pinnedDate];
  if (v8)
  {
    v9 = v8;
    sub_23030EB18();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = sub_23030EB58();
  (*(*(v11 - 8) + 56))(v6, v10, 1, v11);
  v12 = _sSo12REMSmartListC19ReminderKitInternalE028userDefinedVisibilityOfSmartB04with10pinnedDateSo0ab4UsergH0VSo0aB4Typea_10Foundation0M0VSgtFZ_0(v7, v6);

  sub_230061918(v6, &unk_27DB15AA0);
  *a1 = v12;
  return sub_230211F28;
}

void sub_230211F28(uint64_t *a1)
{
  v1 = a1[2];
  REMSmartListChangeItem.userDefinedVisibility.setter(*a1);

  free(v1);
}

uint64_t sub_230211F64()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17480);
  v1 = __swift_project_value_buffer(v0, qword_27DB17480);
  if (qword_27DB13BA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27DB4F5F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id REMReminderPredicateDescriptor_Codable.__allocating_init(_:)(void *a1)
{
  v5.receiver = objc_allocWithZone(v1);
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, sel_initWithReminderPredicateDescriptor_, a1);

  return v3;
}

id REMReminderPredicateDescriptor_Codable.init(_:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithReminderPredicateDescriptor_, a1);

  return v3;
}

id REMReminderPredicateDescriptor_Codable.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMReminderPredicateDescriptor_Codable.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMReminderPredicateDescriptor_Codable.__allocating_init(type:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithType_];
}

id REMReminderPredicateDescriptor_Codable.init(type:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_initWithType_, a1);
}

char *REMReminderPredicateDescriptor_Codable.__allocating_init(from:)(void *a1)
{
  v2 = sub_23030EB58();
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v98 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v92 = &v86 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v97 = &v86 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v96 = &v86 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v91 = &v86 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v86 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v86 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v86 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17498);
  v95 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v86 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230213304();
  v24 = v100;
  sub_230311428();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v88 = v20;
    v89 = v18;
    v25 = v98;
    v26 = v99;
    v87 = v15;
    v27 = v96;
    v28 = v97;
    v90 = 0;
    v100 = a1;
    v29 = sub_230310D08();
    v30 = v23;
    if (*(v29 + 16))
    {
      v31 = *(v29 + 32);

      v32 = objc_allocWithZone(v26);
      switch(v31)
      {
        case 1:
          v63 = v23;
          v64 = [v32 initWithType_];
          type metadata accessor for REMObjectID_Codable();
          v103 = 1;
          sub_2302157DC(&qword_280C9C5D0, 255, type metadata accessor for REMObjectID_Codable);
          v23 = v64;
          v35 = v63;
          v65 = v90;
          sub_230310CE8();
          if (v65)
          {
            goto LABEL_34;
          }

          v37 = v101[0];
          [v23 setParentReminderID_];
          goto LABEL_24;
        case 2:
          v52 = v23;
          v55 = [v32 initWithType_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB150A8);
          v103 = 2;
          sub_2300E0990();
          v23 = v55;
          v35 = v52;
          v56 = v90;
          sub_230310CE8();
          if (v56)
          {
            goto LABEL_34;
          }

          v57 = v95;
          if (v101[0] >> 62)
          {
            sub_23004CBA4(0, &qword_280C9C478);

            sub_230310AF8();
          }

          else
          {

            sub_230311078();
            sub_23004CBA4(0, &qword_280C9C478);
          }

          sub_23004CBA4(0, &qword_280C9C478);
          v58 = sub_23030FCC8();

          [v23 setObjectIDs_];
          goto LABEL_40;
        case 3:
          v59 = [v32 initWithType_];
          LOBYTE(v101[0]) = 3;
          sub_2302157DC(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
          v23 = v59;
          v27 = v88;
          v52 = v30;
          goto LABEL_30;
        case 4:
          v43 = v23;
          v44 = [v32 initWithType_];
          LOBYTE(v101[0]) = 4;
          sub_2302157DC(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
          v23 = v44;
          v46 = v89;
          v45 = v90;
          v47 = v94;
          v30 = v43;
          sub_230310CE8();
          if (v45)
          {
            goto LABEL_28;
          }

          v48 = sub_23030EAA8();
          (*(v93 + 8))(v46, v47);
          [v23 setEndingDueDate_];

          goto LABEL_46;
        case 5:
          v23 = [v32 initWithType_];
          v103 = 5;
          v66 = v90;
          sub_230310C18();
          if (v66)
          {
            goto LABEL_26;
          }

          v96 = v30;
          v97 = v23;
          v99 = v21;
          __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          sub_2302157DC(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
          v77 = v87;
          v78 = v94;
          sub_230310E98();
          v83 = sub_23030EAA8();
          v98 = *(v93 + 8);
          (v98)(v77, v78);
          v81 = v97;
          [v97 setStartingDueDate_];

          __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          v84 = v91;
          sub_230310E98();
          v85 = sub_23030EAA8();
          (v98)(v84, v78);
          [v81 setEndingDueDate_];

          goto LABEL_50;
        case 6:
          v67 = [v32 initWithType_];
          LOBYTE(v101[0]) = 6;
          v23 = v67;
          v68 = v90;
          v69 = sub_230310CA8();
          if (v68)
          {
LABEL_28:
            (*(v95 + 8))(v30, v21);
            goto LABEL_35;
          }

          [v23 setCompleted_];

LABEL_46:
          (*(v95 + 8))(v30, v21);
          goto LABEL_47;
        case 7:
          v23 = [v32 initWithType_];
          v103 = 7;
          v60 = v90;
          sub_230310C18();
          if (v60)
          {
            goto LABEL_26;
          }

          __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          sub_230310E88();
          v61 = v95;
          v62 = sub_23030F8B8();

          [v23 setText_];

          __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          sub_230213430();
          sub_230310E98();
          [v23 setTextMatching_];
          (*(v61 + 8))(v30, v21);
          __swift_destroy_boxed_opaque_existential_1(v101);
          goto LABEL_47;
        case 8:
          v52 = v23;
          v53 = 8;
          v54 = 8;
          goto LABEL_33;
        case 9:
          v52 = v23;
          v53 = 9;
          v54 = 9;
LABEL_33:
          v73 = [v32 initWithType_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB174A8);
          v103 = v53;
          sub_230213358();
          v23 = v73;
          v35 = v52;
          v74 = v90;
          sub_230310CE8();
          if (v74)
          {
            goto LABEL_34;
          }

          v57 = v95;
          if (v101[0] >> 62)
          {
            sub_23004CBA4(0, &qword_27DB174C0);

            sub_230310AF8();
          }

          else
          {

            sub_230311078();
            sub_23004CBA4(0, &qword_27DB174C0);
          }

          sub_23004CBA4(0, &qword_27DB174C0);
          v58 = sub_23030FCC8();

          [v23 setDescriptors_];
LABEL_40:

          goto LABEL_42;
        case 10:
          v52 = v23;
          v70 = [v32 initWithType_];
          LOBYTE(v101[0]) = 10;
          sub_2302157DC(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
          v23 = v70;
LABEL_30:
          v71 = v94;
          v72 = v90;
          sub_230310CE8();
          if (v72)
          {
            (*(v95 + 8))(v52, v21);
            goto LABEL_35;
          }

          v75 = sub_23030EAA8();
          (*(v93 + 8))(v27, v71);
          [v23 setStartingDueDate_];

          v57 = v95;
LABEL_42:
          (*(v57 + 8))(v52, v21);
          goto LABEL_47;
        case 11:
          v39 = v23;
          v40 = [v32 initWithType_];
          LOBYTE(v101[0]) = 11;
          sub_2302157DC(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
          v23 = v40;
          v41 = v94;
          v42 = v90;
          sub_230310CE8();
          if (v42)
          {
            (*(v95 + 8))(v39, v21);
            goto LABEL_35;
          }

          v76 = sub_23030EAA8();
          (*(v93 + 8))(v28, v41);
          [v23 setEndingDueDate_];

          (*(v95 + 8))(v39, v21);
          goto LABEL_47;
        case 12:
          v23 = [v32 initWithType_];
          v103 = 12;
          v49 = v90;
          sub_230310C18();
          if (v49)
          {
LABEL_26:
            (*(v95 + 8))(v30, v21);
            goto LABEL_36;
          }

          v97 = v23;
          v99 = v21;
          __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          sub_2302157DC(&qword_280C9B738, 255, MEMORY[0x277CC9578]);
          v50 = v92;
          v51 = v94;
          sub_230310E98();
          v96 = v30;
          v80 = sub_23030EAA8();
          v93 = *(v93 + 8);
          (v93)(v50, v51);
          v81 = v97;
          [v97 setStartingDueDate_];

          __swift_mutable_project_boxed_opaque_existential_1(v101, v102);
          sub_230310E98();
          v82 = sub_23030EAA8();
          (v93)(v25, v51);
          [v81 setEndingDueDate_];

LABEL_50:
          (*(v95 + 8))(v96, v99);
          __swift_destroy_boxed_opaque_existential_1(v101);
          v38 = v100;
          v23 = v81;
          goto LABEL_48;
        default:
          v33 = [v32 initWithType_];
          type metadata accessor for REMObjectID_Codable();
          v103 = 0;
          sub_2302157DC(&qword_280C9C5D0, 255, type metadata accessor for REMObjectID_Codable);
          v34 = v23;
          v23 = v33;
          v35 = v34;
          v36 = v90;
          sub_230310CE8();
          if (!v36)
          {
            v37 = v101[0];
            [v23 setListID_];
LABEL_24:

            (*(v95 + 8))(v35, v21);
LABEL_47:
            v38 = v100;
            goto LABEL_48;
          }

LABEL_34:
          (*(v95 + 8))(v35, v21);
LABEL_35:

LABEL_36:
          __swift_destroy_boxed_opaque_existential_1(v100);

          break;
      }
    }

    else
    {

      v23 = [objc_allocWithZone(v26) initWithType_];
      (*(v95 + 8))(v30, v21);
      v38 = v100;
LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(v38);
    }
  }

  return v23;
}

unint64_t sub_230213304()
{
  result = qword_27DB174A0;
  if (!qword_27DB174A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB174A0);
  }

  return result;
}

unint64_t sub_230213358()
{
  result = qword_27DB174B0;
  if (!qword_27DB174B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB174A8);
    sub_2302157DC(&qword_27DB174B8, v1, type metadata accessor for REMReminderPredicateDescriptor_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB174B0);
  }

  return result;
}

unint64_t sub_230213430()
{
  result = qword_27DB174C8;
  if (!qword_27DB174C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB174C8);
  }

  return result;
}

uint64_t REMReminderPredicateDescriptor_Codable.encode(to:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v161 = sub_23030EB58();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  v5 = MEMORY[0x28223BE20](v162);
  v153 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v156 = &v151 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v155 = &v151 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v151 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v152 = &v151 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v154 = &v151 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v151 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v151 - v21;
  v165 = sub_23030EBB8();
  v158 = *(v165 - 1);
  MEMORY[0x28223BE20](v165);
  v24 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB174D0);
  v163 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v26 = &v151 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230213304();
  v166 = v26;
  v27 = v2;
  sub_230311448();
  switch([v2 type])
  {
    case 0uLL:
      v28 = [v2 listID];
      if (v28)
      {
        v29 = v28;
        v30 = type metadata accessor for REMObjectID_Codable();
        v31 = objc_allocWithZone(v30);
        v32 = [v29 uuid];
        sub_23030EBA8();

        v33 = sub_23030EB88();
        (*(v158 + 8))(v24, v165);
        v34 = [v29 entityName];
        if (!v34)
        {
          _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v34 = sub_23030F8B8();
        }

        v167.receiver = v31;
        v167.super_class = v30;
        v35 = objc_msgSendSuper2(&v167, sel_initWithUUID_entityName_, v33, v34);
      }

      else
      {
        v35 = 0;
      }

      v174[0] = v35;
      LOBYTE(v170) = 0;
      goto LABEL_80;
    case 1uLL:
      v89 = [v2 parentReminderID];
      if (v89)
      {
        v90 = v89;
        v91 = type metadata accessor for REMObjectID_Codable();
        v92 = objc_allocWithZone(v91);
        v93 = [v90 uuid];
        sub_23030EBA8();

        v94 = sub_23030EB88();
        (*(v158 + 8))(v24, v165);
        v95 = [v90 entityName];
        if (!v95)
        {
          _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v95 = sub_23030F8B8();
        }

        v168.receiver = v92;
        v168.super_class = v91;
        v35 = objc_msgSendSuper2(&v168, sel_initWithUUID_entityName_, v94, v95);
      }

      else
      {
        v35 = 0;
      }

      v174[0] = v35;
      LOBYTE(v170) = 1;
LABEL_80:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17510);
      sub_230215824();
      v43 = v176;
      v44 = v166;
      sub_230310DF8();

      return (*(v163 + 8))(v44, v43);
    case 2uLL:
      v66 = [v2 objectIDs];
      if (v66)
      {
        v67 = v66;
        sub_23004CBA4(0, &qword_280C9C478);
        v68 = sub_23030FCD8();

        if (v68 >> 62)
        {
          v69 = sub_2303106D8();
          if (v69)
          {
LABEL_25:
            v174[0] = MEMORY[0x277D84F90];
            sub_2303109B8();
            if ((v69 & 0x8000000000000000) == 0)
            {
              v70 = 0;
              v161 = v68 & 0xC000000000000001;
              v160 = v158 + 8;
              v162 = v69;
              do
              {
                if (v161)
                {
                  v71 = MEMORY[0x231912650](v70, v68);
                }

                else
                {
                  v71 = *(v68 + 8 * v70 + 32);
                }

                v72 = v71;
                v73 = type metadata accessor for REMObjectID_Codable();
                v74 = objc_allocWithZone(v73);
                v75 = [v72 uuid];
                sub_23030EBA8();

                v76 = sub_23030EB88();
                (*v160)(v24, v165);
                v77 = [v72 entityName];
                if (!v77)
                {
                  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v77 = sub_23030F8B8();
                }

                ++v70;
                v169.receiver = v74;
                v169.super_class = v73;
                objc_msgSendSuper2(&v169, sel_initWithUUID_entityName_, v76, v77);

                sub_230310988();
                sub_2303109C8();
                sub_2303109D8();
                sub_230310998();
              }

              while (v162 != v70);

              v119 = v174[0];
              goto LABEL_106;
            }

            goto LABEL_111;
          }
        }

        else
        {
          v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v69)
          {
            goto LABEL_25;
          }
        }

        v119 = MEMORY[0x277D84F90];
      }

      else
      {
        v119 = 0;
      }

LABEL_106:
      v174[0] = v119;
      LOBYTE(v170) = 2;
      v138 = &qword_27DB17500;
      v139 = &unk_230328088;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17500);
      v140 = &unk_27DB17508;
      v141 = sub_2300E0D78;
      goto LABEL_107;
    case 3uLL:
      v78 = [v2 startingDueDate];
      if (v78)
      {
        v79 = v159;
        v80 = v78;
        sub_23030EB18();

        v81 = v160;
        v82 = v161;
        (*(v160 + 32))(v22, v79, v161);
        v83 = 0;
        v43 = v176;
        v44 = v166;
      }

      else
      {
        v83 = 1;
        v43 = v176;
        v44 = v166;
        v82 = v161;
        v81 = v160;
      }

      (*(v81 + 56))(v22, v83, 1, v82);
      LOBYTE(v174[0]) = 3;
      sub_2300E0C1C();
      sub_230310DF8();
      v121 = v22;
      goto LABEL_87;
    case 4uLL:
      v45 = [v2 endingDueDate];
      if (v45)
      {
        v46 = v159;
        v47 = v45;
        sub_23030EB18();

        v48 = v160;
        v49 = v161;
        (*(v160 + 32))(v20, v46, v161);
        v50 = 0;
        v43 = v176;
        v44 = v166;
      }

      else
      {
        v50 = 1;
        v43 = v176;
        v44 = v166;
        v49 = v161;
        v48 = v160;
      }

      (*(v48 + 56))(v20, v50, 1, v49);
      LOBYTE(v174[0]) = 4;
      sub_2300E0C1C();
      sub_230310DF8();
      v121 = v20;
      goto LABEL_87;
    case 5uLL:
      LOBYTE(v170) = 5;
      sub_230310D38();
      v151 = v2;
      v96 = [v2 startingDueDate];
      if (v96)
      {
        v97 = v159;
        v98 = v96;
        sub_23030EB18();

        v99 = v160;
        v100 = v154;
        v101 = v161;
        (*(v160 + 32))(v154, v97, v161);
        v102 = 0;
      }

      else
      {
        v102 = 1;
        v101 = v161;
        v99 = v160;
        v100 = v154;
      }

      v130 = *(v99 + 56);
      v130(v100, v102, 1, v101);
      __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
      sub_2300E0C1C();
      v131 = v164;
      sub_230310EA8();
      if (!v131)
      {
        sub_230215574(v100);
        v132 = [v151 endingDueDate];
        if (v132)
        {
          v133 = v159;
          v134 = v132;
          sub_23030EB18();

          v100 = v152;
          (*(v160 + 32))(v152, v133, v101);
          v135 = 0;
        }

        else
        {
          v135 = 1;
          v100 = v152;
        }

        v130(v100, v135, 1, v101);
        __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
        sub_230310EA8();
      }

      v142 = v100;
      goto LABEL_101;
    case 6uLL:
      [v2 completed];
      LOBYTE(v174[0]) = 6;
      v43 = v176;
      v44 = v166;
      sub_230310DB8();
      return (*(v163 + 8))(v44, v43);
    case 7uLL:
      LOBYTE(v170) = 7;
      sub_230310D38();
      v84 = [v2 text];
      if (v84)
      {
        v85 = v84;
        v86 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v88 = v87;
      }

      else
      {
        v86 = 0;
        v88 = 0;
      }

      v170 = v86;
      v171 = v88;
      __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB148A8);
      sub_23021570C();
      v128 = v164;
      sub_230310EA8();
      if (v128)
      {
      }

      else
      {

        v129 = [v27 textMatching];
        if (v129 >= 4)
        {
          goto LABEL_117;
        }

        LOBYTE(v170) = v129;
        __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
        sub_230215788();
        sub_230310EA8();
      }

LABEL_102:
      (*(v163 + 8))(v166, v176);
      return __swift_destroy_boxed_opaque_existential_1(v174);
    case 8uLL:
      v110 = [v2 descriptors];
      if (v110)
      {
        v111 = v110;
        sub_23004CBA4(0, &qword_27DB174C0);
        v112 = sub_23030FCD8();

        if (v112 >> 62)
        {
          v113 = sub_2303106D8();
        }

        else
        {
          v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v114 = ObjectType;
        if (v113)
        {
          v174[0] = MEMORY[0x277D84F90];
          sub_2303109B8();
          if (v113 < 0)
          {
            goto LABEL_112;
          }

          v115 = 0;
          do
          {
            if ((v112 & 0xC000000000000001) != 0)
            {
              v116 = MEMORY[0x231912650](v115, v112);
            }

            else
            {
              v116 = *(v112 + 8 * v115 + 32);
            }

            v117 = v116;
            ++v115;
            v172.receiver = objc_allocWithZone(v114);
            v172.super_class = v114;
            objc_msgSendSuper2(&v172, sel_initWithReminderPredicateDescriptor_, v117);

            sub_230310988();
            sub_2303109C8();
            sub_2303109D8();
            sub_230310998();
          }

          while (v113 != v115);

          v120 = v174[0];
        }

        else
        {

          v120 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v120 = 0;
      }

      v174[0] = v120;
      v137 = 8;
      goto LABEL_94;
    case 9uLL:
      v58 = [v2 descriptors];
      if (v58)
      {
        v59 = v58;
        sub_23004CBA4(0, &qword_27DB174C0);
        v60 = sub_23030FCD8();

        if (v60 >> 62)
        {
          v61 = sub_2303106D8();
        }

        else
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v62 = ObjectType;
        if (v61)
        {
          v174[0] = MEMORY[0x277D84F90];
          sub_2303109B8();
          if (v61 < 0)
          {
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            if (qword_27DB13C68 != -1)
            {
              swift_once();
            }

            v145 = sub_23030EF48();
            __swift_project_value_buffer(v145, qword_27DB17480);
            v146 = MEMORY[0x277D84F90];
            sub_23008C5BC(MEMORY[0x277D84F90]);
            sub_23008C5BC(v146);
            v147 = "unknown reminder predicate descriptor type";
            for (i = 42; ; i = 21)
            {
              sub_230166680(v147, i, 2);
              __break(1u);
LABEL_117:
              if (qword_27DB13C68 != -1)
              {
                swift_once();
              }

              v149 = sub_23030EF48();
              __swift_project_value_buffer(v149, qword_27DB17480);
              v150 = MEMORY[0x277D84F90];
              sub_23008C5BC(MEMORY[0x277D84F90]);
              sub_23008C5BC(v150);
              v147 = "unknown text matching";
            }
          }

          v63 = 0;
          do
          {
            if ((v60 & 0xC000000000000001) != 0)
            {
              v64 = MEMORY[0x231912650](v63, v60);
            }

            else
            {
              v64 = *(v60 + 8 * v63 + 32);
            }

            v65 = v64;
            ++v63;
            v173.receiver = objc_allocWithZone(v62);
            v173.super_class = v62;
            objc_msgSendSuper2(&v173, sel_initWithReminderPredicateDescriptor_, v65);

            sub_230310988();
            sub_2303109C8();
            sub_2303109D8();
            sub_230310998();
          }

          while (v61 != v63);

          v118 = v174[0];
        }

        else
        {

          v118 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v118 = 0;
      }

      v174[0] = v118;
      v137 = 9;
LABEL_94:
      LOBYTE(v170) = v137;
      v138 = &qword_27DB174D8;
      v139 = &unk_230328078;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB174D8);
      v140 = &unk_27DB174E0;
      v141 = sub_230215658;
LABEL_107:
      sub_2302155DC(v140, v138, v139, v141);
      v143 = v176;
      v144 = v166;
      sub_230310DF8();
      (*(v163 + 8))(v144, v143);

    case 0xAuLL:
      v103 = [v2 startingDueDate];
      if (v103)
      {
        v104 = v159;
        v105 = v103;
        sub_23030EB18();

        v106 = v160;
        v107 = v104;
        v108 = v161;
        (*(v160 + 32))(v13, v107, v161);
        v109 = 0;
        v43 = v176;
      }

      else
      {
        v109 = 1;
        v43 = v176;
        v108 = v161;
        v106 = v160;
      }

      (*(v106 + 56))(v13, v109, 1, v108);
      LOBYTE(v174[0]) = 10;
      sub_2300E0C1C();
      v44 = v166;
      sub_230310DF8();
      v121 = v13;
      goto LABEL_87;
    case 0xBuLL:
      v36 = [v2 endingDueDate];
      if (v36)
      {
        v37 = v159;
        v38 = v36;
        sub_23030EB18();

        v39 = v160;
        v40 = v155;
        v41 = v161;
        (*(v160 + 32))(v155, v37, v161);
        v42 = 0;
        v43 = v176;
        v44 = v166;
      }

      else
      {
        v42 = 1;
        v43 = v176;
        v44 = v166;
        v41 = v161;
        v39 = v160;
        v40 = v155;
      }

      (*(v39 + 56))(v40, v42, 1, v41);
      LOBYTE(v174[0]) = 11;
      sub_2300E0C1C();
      sub_230310DF8();
      v121 = v40;
LABEL_87:
      sub_230215574(v121);
      return (*(v163 + 8))(v44, v43);
    case 0xCuLL:
      LOBYTE(v170) = 12;
      sub_230310D38();
      v51 = [v2 startingDueDate];
      v151 = v2;
      if (v51)
      {
        v52 = v159;
        v53 = v51;
        sub_23030EB18();

        v54 = v160;
        v55 = v156;
        v56 = v161;
        (*(v160 + 32))(v156, v52, v161);
        v57 = 0;
      }

      else
      {
        v57 = 1;
        v56 = v161;
        v54 = v160;
        v55 = v156;
      }

      v122 = *(v54 + 56);
      v122(v55, v57, 1, v56);
      __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
      sub_2300E0C1C();
      v123 = v164;
      sub_230310EA8();
      if (!v123)
      {
        v165 = v122;
        sub_230215574(v55);
        v124 = [v151 endingDueDate];
        if (v124)
        {
          v125 = v159;
          v126 = v124;
          sub_23030EB18();

          v55 = v153;
          v127 = v161;
          (*(v54 + 32))(v153, v125, v161);
          (v165)(v55, 0, 1, v127);
        }

        else
        {
          v55 = v153;
          (v165)(v153, 1, 1, v161);
        }

        __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
        sub_230310EA8();
      }

      v142 = v55;
LABEL_101:
      sub_230215574(v142);
      goto LABEL_102;
    default:
      goto LABEL_113;
  }
}

id REMReminderPredicateDescriptor.codable.getter()
{
  v1 = type metadata accessor for REMReminderPredicateDescriptor_Codable();
  v3.receiver = objc_allocWithZone(v1);
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_initWithReminderPredicateDescriptor_, v0);
}

ReminderKitInternal::REMReminderPredicateDescriptor_Codable::CodingKeys_optional __swiftcall REMReminderPredicateDescriptor_Codable.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

ReminderKitInternal::REMReminderPredicateDescriptor_Codable::CodingKeys_optional __swiftcall REMReminderPredicateDescriptor_Codable.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = REMReminderPredicateDescriptor_Codable.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_230214BD0()
{
  result = 0x44497473696CLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x44497463656A626FLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x4265746144657564;
      break;
    case 6:
      result = 0x6574656C706D6F63;
      break;
    case 7:
      result = 0x656C746974;
      break;
    case 8:
      result = 6581857;
      break;
    case 9:
      result = 29295;
      break;
    case 0xA:
      result = 0xD000000000000015;
      break;
    case 0xB:
      result = 0xD000000000000014;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_230214D48()
{
  v0 = REMReminderPredicateDescriptor_Codable.CodingKeys.stringValue.getter();
  v2 = v1;
  if (v0 == REMReminderPredicateDescriptor_Codable.CodingKeys.stringValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

uint64_t sub_230214DE4()
{
  v0 = sub_230311358();
  REMReminderPredicateDescriptor_Codable.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230214E4C(uint64_t a1)
{
  REMReminderPredicateDescriptor_Codable.CodingKeys.stringValue.getter(a1);
  sub_23030F9C8();
}

uint64_t sub_230214EB0()
{
  v0 = sub_230311358();
  REMReminderPredicateDescriptor_Codable.CodingKeys.stringValue.getter(v0);
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_230214F20@<X0>(uint64_t *a1@<X8>)
{
  result = REMReminderPredicateDescriptor_Codable.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

ReminderKitInternal::REMReminderPredicateDescriptor_Codable::CodingKeys_optional sub_230214F4C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = REMReminderPredicateDescriptor_Codable.CodingKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_230214F90(uint64_t a1)
{
  v2 = sub_230213304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_230214FCC(uint64_t a1)
{
  v2 = sub_230213304();

  return MEMORY[0x2821FE720](a1, v2);
}

ReminderKitInternal::REMReminderPredicateDescriptor_Codable::TextMatching_optional __swiftcall REMReminderPredicateDescriptor_Codable.TextMatching.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMReminderPredicateDescriptor_Codable.TextMatching.rawValue.getter()
{
  v1 = 0x7463617865;
  v2 = 0x6957736E69676562;
  if (*v0 != 2)
  {
    v2 = 0x6874695773646E65;
  }

  if (*v0)
  {
    v1 = 0x736E6961746E6F63;
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

uint64_t sub_2302150E8()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2302151A8()
{
  sub_23030F9C8();
}

uint64_t sub_230215254()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_23021531C(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7463617865;
  v4 = 0xEA00000000006874;
  v5 = 0x6957736E69676562;
  if (*v1 != 2)
  {
    v5 = 0x6874695773646E65;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x736E6961746E6F63;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

id REMReminderPredicateDescriptor_Codable.__allocating_init(reminderPredicateDescriptor:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithReminderPredicateDescriptor_];

  return v3;
}

id REMReminderPredicateDescriptor_Codable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_230215524@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = REMReminderPredicateDescriptor_Codable.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_230215574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2302155DC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_230215658()
{
  result = qword_27DB174E8;
  if (!qword_27DB174E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB174A8);
    sub_2302157DC(&qword_27DB174F0, v1, type metadata accessor for REMReminderPredicateDescriptor_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB174E8);
  }

  return result;
}

unint64_t sub_23021570C()
{
  result = qword_280C9B998;
  if (!qword_280C9B998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB148A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B998);
  }

  return result;
}

unint64_t sub_230215788()
{
  result = qword_27DB174F8;
  if (!qword_27DB174F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB174F8);
  }

  return result;
}

uint64_t sub_2302157DC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_230215824()
{
  result = qword_27DB17518;
  if (!qword_27DB17518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17510);
    sub_2302157DC(qword_280C9BFD8, 255, type metadata accessor for REMObjectID_Codable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17518);
  }

  return result;
}

unint64_t sub_2302158E0()
{
  result = qword_27DB17520;
  if (!qword_27DB17520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17520);
  }

  return result;
}

unint64_t sub_230215938()
{
  result = qword_27DB17528;
  if (!qword_27DB17528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17528);
  }

  return result;
}

unint64_t sub_230215990()
{
  result = qword_27DB17530;
  if (!qword_27DB17530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17530);
  }

  return result;
}

unint64_t sub_2302159E8()
{
  result = qword_27DB17538;
  if (!qword_27DB17538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17538);
  }

  return result;
}

unint64_t sub_230215AB0()
{
  result = qword_27DB17540;
  if (!qword_27DB17540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17540);
  }

  return result;
}

unint64_t sub_230215B0C()
{
  result = qword_27DB17548;
  if (!qword_27DB17548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17548);
  }

  return result;
}

unint64_t sub_230215B64()
{
  result = qword_27DB17550;
  if (!qword_27DB17550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17550);
  }

  return result;
}

unint64_t sub_230215BBC()
{
  result = qword_27DB17558;
  if (!qword_27DB17558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17558);
  }

  return result;
}

unint64_t sub_230215C14()
{
  result = qword_27DB17560;
  if (!qword_27DB17560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17560);
  }

  return result;
}

uint64_t sub_230215CD4()
{
  v0 = sub_23030E818();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23030ED38();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_23030F8A8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_23030E828();
  __swift_allocate_value_buffer(v6, qword_27DB4F610);
  __swift_project_value_buffer(v6, qword_27DB4F610);
  sub_23030F848();
  sub_23030EC88();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_23030E848();
}

uint64_t sub_230215EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DB13C70 != -1)
  {
    swift_once();
  }

  v2 = sub_23030E828();
  v3 = __swift_project_value_buffer(v2, qword_27DB4F610);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_230215F68()
{
  sub_23030E378();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_230215FCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_230216574();
  *a1 = result;
  return result;
}

uint64_t sub_230215FF4(uint64_t a1)
{
  v2 = sub_230215B64();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_230216040()
{
  result = qword_27DB17568;
  if (!qword_27DB17568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB17570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB17568);
  }

  return result;
}

uint64_t sub_2302160A4(uint64_t a1, unint64_t a2)
{
  v31 = a2;
  v32 = a1;
  v2 = sub_23030E3A8();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17578);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17580);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17588);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_23030E818();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23030ED38();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_23030F8A8();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_23030E828();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17590);
  sub_23030F848();
  sub_23030EC88();
  (*(v13 + 104))(v15, *MEMORY[0x277CC9110], v12);
  sub_23030E848();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = sub_23030F828();
  v33 = 0;
  v34 = 0;
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_23030E368();
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  (*(v29 + 104))(v28, *MEMORY[0x277CBA308], v30);
  v22 = sub_23030E398();
  v23 = v32;
  if (!v31)
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v31)
  {
    v24 = v31;
  }

  v33 = v23;
  v34 = v24;

  sub_23030E388();

  return v22;
}

uint64_t sub_230216574()
{
  v0 = sub_23030E3A8();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17578);
  MEMORY[0x28223BE20](v2 - 8);
  v22 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17580);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17588);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_23030E818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23030ED38();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_23030F8A8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_23030E828();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB17590);
  sub_23030F848();
  sub_23030EC88();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9110], v10);
  sub_23030E848();
  (*(v17 + 56))(v9, 1, 1, v16);
  v18 = sub_23030F828();
  v26 = 0;
  v27 = 0;
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  v19 = sub_23030E368();
  (*(*(v19 - 8) + 56))(v22, 1, 1, v19);
  (*(v24 + 104))(v23, *MEMORY[0x277CBA308], v25);
  return sub_23030E398();
}

uint64_t sub_230216A0C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB17598);
  v1 = __swift_project_value_buffer(v0, qword_27DB17598);
  if (qword_280C9C490 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB17C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t Publishers.CombiningDebounce.dueTime.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t Publishers.CombiningDebounce.options.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  swift_getAssociatedTypeWitness();
  v5 = sub_2303104C8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t Publishers.CombiningDebounce.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_230216CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
  sub_23030F298();
  v6 = *(*(TupleTypeMetadata2 - 8) + 56);

  return v6(a2, 0, 1, TupleTypeMetadata2);
}

void sub_230216E70(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a5;
  v68 = a4;
  v78 = a3;
  v80 = a1;
  v86 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = v65 - v9;
  v10 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v70 = v65 - v12;
  v85 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v72 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v83 = v65 - v16;
  v84 = *(v10 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v81 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = v65 - v19;
  v77 = v10;
  v79 = AssociatedTypeWitness;
  v20 = swift_getTupleTypeMetadata2();
  v21 = sub_2303104C8();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = v65 - v27;
  v29 = *(v20 - 8);
  v30 = MEMORY[0x28223BE20](v26);
  v69 = v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v88 = v65 - v32;
  v33 = *(v22 + 16);
  v33(v28, a2, v21);
  v34 = *(v29 + 48);
  if (v34(v28, 1, v20) == 1)
  {
    (*(v22 + 8))(v28, v21);
    if (qword_27DB13C78 != -1)
    {
      swift_once();
    }

    v63 = sub_23030EF48();
    __swift_project_value_buffer(v63, qword_27DB17598);
    v64 = MEMORY[0x277D84F90];
    sub_23008C5BC(MEMORY[0x277D84F90]);
    sub_23008C5BC(v64);
    sub_230166680("Subsequent input is unexpectedly nil", 36, 2);
    __break(1u);
  }

  else
  {
    v87 = v29;
    v36 = *(v29 + 32);
    v35 = v29 + 32;
    v37 = v28;
    v38 = v36;
    v36(v88, v37, v20);
    v33(v25, v80, v21);
    if (v34(v25, 1, v20) == 1)
    {
      (*(v22 + 8))(v25, v21);
      v39 = v86;
      v38(v86, v88, v20);
      v40 = v87;
    }

    else
    {
      v65[1] = v35;
      v66 = v38;
      v80 = *(v20 + 48);
      v41 = v70;
      v42 = TupleTypeMetadata2;
      v43 = *(TupleTypeMetadata2 + 48);
      v44 = *(v84 + 32);
      v45 = v77;
      v44(v70, v25, v77);
      v46 = v20;
      v47 = *(v85 + 32);
      v48 = &v25[v80];
      v49 = v79;
      v47(&v41[v43], v48, v79);
      v50 = *(v42 + 48);
      v44(v82, v41, v45);
      v47(v83, &v41[v50], v49);
      v51 = v87;
      v52 = v69;
      (*(v87 + 16))(v69, v88, v46);
      v80 = v46;
      v53 = *(v46 + 48);
      v44(v81, v52, v45);
      v54 = v72;
      TupleTypeMetadata2 = v47;
      v47(v72, &v52[v53], v49);
      v55 = v73;
      sub_230310518();
      v56 = v76;
      swift_getAssociatedConformanceWitness();
      LOBYTE(v53) = sub_23030F7F8();
      (*(v75 + 8))(v55, v56);
      if (v53)
      {
        v20 = v80;
        v57 = v81;
        v78 = *(v80 + 48);
        v39 = v86;
        v58 = v82;
        v68(v82, v81);
        v59 = *(v84 + 8);
        v59(v57, v45);
        (*(v85 + 8))(v83, v49);
        v59(v58, v45);
        v60 = v87;
        (*(v87 + 8))(v88, v20);
        (TupleTypeMetadata2)(v39 + v78, v54, v49);
        v40 = v60;
      }

      else
      {
        v61 = *(v85 + 8);
        v61(v54, v49);
        v62 = *(v84 + 8);
        v62(v81, v45);
        v61(v83, v49);
        v62(v82, v45);
        v39 = v86;
        v20 = v80;
        v66(v86, v88, v80);
        v40 = v51;
      }
    }

    (*(v40 + 56))(v39, 0, 1, v20);
  }
}

void sub_230217728(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_230216E70(a1, a2, v3 + v7, *v8, *(v8 + 8), a3);
}

uint64_t sub_23021786C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = sub_2303104C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v10, 1, TupleTypeMetadata2) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return (*(*(AssociatedTypeWitness - 8) + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v12 = *(TupleTypeMetadata2 + 48);
    v13 = *(AssociatedTypeWitness - 8);
    (*(v13 + 32))(a2, v10, AssociatedTypeWitness);
    (*(v13 + 56))(a2, 0, 1, AssociatedTypeWitness);
    return (*(*(v5 - 8) + 8))(&v10[v12], v5);
  }
}

uint64_t *sub_230217B2C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v44 = *(a3 + 16);
  v45 = *(v44 - 8);
  v4 = *(v45 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  v42 = AssociatedTypeWitness;
  v6 = *(v41 + 80);
  v7 = v6;
  v8 = *(v41 + 64);
  v40 = v4 + v6;
  v9 = (v4 + v7) & ~v7;
  v10 = *(v3 - 8);
  v11 = *(v10 + 80);
  v12 = v11;
  v39 = v8 + v11;
  v13 = (v8 + v12 + v9) & ~v12;
  v14 = *(v10 + 64);
  v43 = swift_getAssociatedTypeWitness();
  v15 = *(v43 - 8);
  v16 = *(v15 + 80);
  v17 = v14 + v16;
  if (*(v15 + 84))
  {
    v18 = *(v15 + 64);
  }

  else
  {
    v18 = *(v15 + 64) + 1;
  }

  v19 = v6 | *(v45 + 80) & 0xF8 | v11 | v16;
  if (v19 > 7 || ((v11 | *(v15 + 80) | *(v45 + 80) | v6) & 0x100000) != 0 || ((v18 + 7 + ((v14 + v16 + v13) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v22 = *a2;
    *a1 = *a2;
    v26 = (v22 + (((v19 | 7) + 16) & ~(v19 | 7)));
  }

  else
  {
    __n = v18;
    v38 = v18 + 7;
    v23 = ~v6;
    v24 = ~v12;
    v25 = ~v16;
    v26 = a1;
    (*(v45 + 16))(a1, a2, v44);
    v27 = (a1 + v40) & ~v7;
    v28 = (a2 + v40) & v23;
    (*(v41 + 16))(v27, v28, v42);
    v29 = (v27 + v39) & v24;
    v30 = (v28 + v39) & v24;
    (*(v10 + 16))(v29, v30, v3);
    v31 = ((v29 + v17) & v25);
    v32 = ((v30 + v17) & v25);
    if ((*(v15 + 48))(v32, 1, v43))
    {
      memcpy(v31, v32, __n);
    }

    else
    {
      (*(v15 + 16))(v31, v32, v43);
      (*(v15 + 56))(v31, 0, 1, v43);
    }

    v33 = ((v32 + v38) & 0xFFFFFFFFFFFFFFF8);
    v34 = v33[1];
    v35 = ((v31 + v38) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v33;
    v35[1] = v34;
  }

  return v26;
}

uint64_t sub_230217F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + a1) & ~v12;
  v14 = (v7 + v12 + a2) & ~v12;
  (*(v10 + 24))(v13, v14, AssociatedTypeWitness);
  v15 = *(v11 + 40);
  v16 = *(v8 - 8);
  v17 = v16 + 24;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 24))(v20, v21, v8);
  v22 = *(v17 + 40);
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = ((v22 + v25 + v20) & ~v25);
  v27 = ((v22 + v25 + v21) & ~v25);
  v28 = *(v24 + 48);
  LODWORD(v20) = v28(v26, 1, v23);
  v29 = v28(v27, 1, v23);
  if (v20)
  {
    if (!v29)
    {
      (*(v24 + 16))(v26, v27, v23);
      (*(v24 + 56))(v26, 0, 1, v23);
      goto LABEL_12;
    }

    v30 = *(v24 + 84);
    v31 = *(v24 + 64);
  }

  else
  {
    if (!v29)
    {
      (*(v24 + 24))(v26, v27, v23);
      goto LABEL_12;
    }

    (*(v24 + 8))(v26, v23);
    v30 = *(v24 + 84);
    v31 = *(v24 + 64);
  }

  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 + 1;
  }

  memcpy(v26, v27, v32);
LABEL_12:
  if (*(v24 + 84))
  {
    v33 = *(v24 + 64);
  }

  else
  {
    v33 = *(v24 + 64) + 1;
  }

  v34 = ((v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  v36 = v35[1];
  *v34 = *v35;
  v34[1] = v36;

  return a1;
}

uint64_t sub_23021821C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + a1) & ~v12;
  v14 = (v7 + v12 + a2) & ~v12;
  (*(v10 + 32))(v13, v14, AssociatedTypeWitness);
  v15 = *(v8 - 8);
  v16 = v15 + 32;
  v17 = *(v15 + 80);
  v18 = *(v11 + 32) + v17;
  v19 = (v18 + v13) & ~v17;
  v20 = (v18 + v14) & ~v17;
  (*(v15 + 32))(v19, v20, v8);
  v21 = *(v16 + 32);
  v22 = swift_getAssociatedTypeWitness();
  v23 = *(v22 - 8);
  v24 = *(v23 + 80);
  v25 = ((v21 + v24 + v19) & ~v24);
  v26 = ((v21 + v24 + v20) & ~v24);
  if ((*(v23 + 48))(v26, 1, v22))
  {
    v27 = *(v23 + 84);
    v28 = *(v23 + 64);
    if (v27)
    {
      v29 = *(v23 + 64);
    }

    else
    {
      v29 = v28 + 1;
    }

    memcpy(v25, v26, v29);
  }

  else
  {
    (*(v23 + 32))(v25, v26, v22);
    v31 = *(v23 + 56);
    v30 = v23 + 56;
    v31(v25, 0, 1, v22);
    v27 = *(v30 + 28);
    v28 = *(v30 + 8);
  }

  if (v27)
  {
    v32 = v28;
  }

  else
  {
    v32 = v28 + 1;
  }

  *((v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v26 + v32 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_2302184B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + a1) & ~v12;
  v14 = (v7 + v12 + a2) & ~v12;
  (*(v10 + 40))(v13, v14, AssociatedTypeWitness);
  v15 = *(v11 + 24);
  v16 = *(v8 - 8);
  v17 = v16 + 40;
  v18 = *(v16 + 80);
  v19 = v15 + v18;
  v20 = (v19 + v13) & ~v18;
  v21 = (v19 + v14) & ~v18;
  (*(v16 + 40))(v20, v21, v8);
  v22 = *(v17 + 24);
  v23 = swift_getAssociatedTypeWitness();
  v24 = *(v23 - 8);
  v25 = *(v24 + 80);
  v26 = ((v22 + v25 + v20) & ~v25);
  v27 = ((v22 + v25 + v21) & ~v25);
  v28 = *(v24 + 48);
  LODWORD(v20) = v28(v26, 1, v23);
  v29 = v28(v27, 1, v23);
  if (v20)
  {
    if (!v29)
    {
      (*(v24 + 32))(v26, v27, v23);
      (*(v24 + 56))(v26, 0, 1, v23);
      goto LABEL_12;
    }

    v30 = *(v24 + 84);
    v31 = *(v24 + 64);
  }

  else
  {
    if (!v29)
    {
      (*(v24 + 40))(v26, v27, v23);
      goto LABEL_12;
    }

    (*(v24 + 8))(v26, v23);
    v30 = *(v24 + 84);
    v31 = *(v24 + 64);
  }

  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 + 1;
  }

  memcpy(v26, v27, v32);
LABEL_12:
  if (*(v24 + 84))
  {
    v33 = *(v24 + 64);
  }

  else
  {
    v33 = *(v24 + 64) + 1;
  }

  *((v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v27 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_2302187C0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  v42 = *(a3 + 16);
  v4 = *(v42 - 8);
  v5 = *(v4 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v41 = v7;
  if (v7 <= v5)
  {
    v7 = v5;
  }

  v8 = *(v3 - 8);
  v39 = *(v8 + 84);
  if (v39 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(v8 + 84);
  }

  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v10 + 80);
  v20 = *(v10 + 64);
  if (!v12)
  {
    ++v20;
  }

  if (!a2)
  {
    return 0;
  }

  v21 = *(v4 + 64) + v15;
  v22 = v20 + 7;
  v23 = a1;
  if (v14 < a2)
  {
    v24 = ((v22 + ((v18 + v19 + ((v16 + v17 + (v21 & ~v15)) & ~v17)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v25 = v24 & 0xFFFFFFF8;
    if ((v24 & 0xFFFFFFF8) != 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = a2 - v14 + 1;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v29 = *(a1 + v24);
        if (v29)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v28)
    {
      v29 = *(a1 + v24);
      if (v29)
      {
LABEL_32:
        v30 = v29 - 1;
        if (v25)
        {
          v30 = 0;
          v31 = *a1;
        }

        else
        {
          v31 = 0;
        }

        return v14 + (v31 | v30) + 1;
      }
    }
  }

  if (v5 == v14)
  {
    v32 = v42;
    v33 = *(v4 + 48);
    v34 = v5;
LABEL_44:

    return v33(v23, v34, v32);
  }

  v23 = ((a1 + v21) & ~v15);
  if (v41 == v14)
  {
    v33 = *(v6 + 48);
    v34 = v41;
    v32 = AssociatedTypeWitness;
    goto LABEL_44;
  }

  v23 = ((v23 + v16 + v17) & ~v17);
  if (v39 == v14)
  {
    v33 = *(v8 + 48);
    v34 = v39;
    v32 = v3;
    goto LABEL_44;
  }

  v36 = (v23 + v18 + v19) & ~v19;
  if (v13 == v14)
  {
    if (v12 >= 2)
    {
      v38 = (*(v11 + 48))(v36);
      if (v38 >= 2)
      {
        return v38 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v37 = *((v22 + v36) & 0xFFFFFFFFFFFFFFF8);
  if (v37 >= 0xFFFFFFFF)
  {
    LODWORD(v37) = -1;
  }

  return (v37 + 1);
}

void sub_230218BE8(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  v5 = *(*(a4 + 16) - 8);
  v40 = v5;
  v6 = *(v5 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v41 = v7;
  v8 = *(v7 + 84);
  v39 = v8;
  if (v8 <= v6)
  {
    v8 = v6;
  }

  v9 = *(v4 - 8);
  v38 = *(v9 + 84);
  if (v38 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = *(v9 + 84);
  }

  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v5 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  v16 = *(v7 + 80);
  v17 = *(v7 + 64);
  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  if (v15 <= v10)
  {
    v22 = v10;
  }

  else
  {
    v22 = v15;
  }

  if (v22 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  v23 = v14 + v16;
  v24 = (v19 + v20 + ((v17 + v18 + ((v14 + v16) & ~v16)) & ~v18)) & ~v20;
  if (!v13)
  {
    ++v21;
  }

  v25 = v21 + 7;
  v26 = ((v25 + v24) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v25 + v24) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v27 = a3 - v22 + 1;
  }

  else
  {
    v27 = 2;
  }

  if (v27 >= 0x10000)
  {
    v28 = 4;
  }

  else
  {
    v28 = 2;
  }

  if (v27 < 0x100)
  {
    v28 = 1;
  }

  if (v27 >= 2)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v22 < a3)
  {
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (a2 > v22)
  {
    if (v26)
    {
      v31 = 1;
    }

    else
    {
      v31 = a2 - v22;
    }

    if (v26)
    {
      v32 = ~v22 + a2;
      bzero(a1, v26);
      *a1 = v32;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        *(a1 + v26) = v31;
      }

      else
      {
        *(a1 + v26) = v31;
      }
    }

    else if (v30)
    {
      *(a1 + v26) = v31;
    }

    return;
  }

  if (v30 <= 1)
  {
    v33 = a1;
    if (v30)
    {
      *(a1 + v26) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  v33 = a1;
  if (v30 == 2)
  {
    *(a1 + v26) = 0;
    goto LABEL_46;
  }

  *(a1 + v26) = 0;
  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v6 == v22)
  {
    v34 = *(v40 + 56);

LABEL_61:
    v34(v33);
    return;
  }

  v33 = ((v33 + v23) & ~v16);
  if (v39 == v22)
  {
    v34 = *(v41 + 56);

    goto LABEL_61;
  }

  v33 = ((v33 + v17 + v18) & ~v18);
  if (v38 == v22)
  {
    v34 = *(v9 + 56);

    goto LABEL_61;
  }

  v35 = (v33 + v19 + v20) & ~v20;
  if (v15 == v22)
  {
    v36 = *(v12 + 56);

    v36(v35, a2 + 1);
  }

  else
  {
    v37 = ((v25 + v35) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v37 = a2 & 0x7FFFFFFF;
      v37[1] = 0;
    }

    else
    {
      *v37 = a2 - 1;
    }
  }
}