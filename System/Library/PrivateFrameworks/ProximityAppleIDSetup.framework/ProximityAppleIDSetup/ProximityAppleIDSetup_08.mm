uint64_t V1CommandError.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_2610BD514();
  V1CommandError.hash(into:)(v5);
  return sub_2610BD574();
}

uint64_t V1CommandError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DE0, &qword_2610C9A40);
  v74 = *(v88 - 8);
  v3 = *(v74 + 64);
  MEMORY[0x28223BE20](v88);
  v87 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DE8, &qword_2610C9A48);
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  MEMORY[0x28223BE20](v5);
  v84 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DF0, &qword_2610C9A50);
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v70 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65DF8, &qword_2610C9A58);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11);
  v83 = &v70 - v13;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65E00, &qword_2610C9A60);
  v77 = *(v80 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v80);
  v16 = &v70 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65E08, &qword_2610C9A68);
  v73 = *(v17 - 8);
  v18 = *(v73 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65E10, &qword_2610C9A70);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v70 - v24;
  v26 = a1[3];
  v27 = a1[4];
  v90 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2610603E4();
  v28 = v89;
  sub_2610BD5D4();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v90);
  }

  v29 = v20;
  v71 = v17;
  v30 = v86;
  v31 = v87;
  v72 = 0;
  v32 = v88;
  v89 = v22;
  v33 = sub_2610BD214();
  v34 = (2 * *(v33 + 16)) | 1;
  v91 = v33;
  v92 = v33 + 32;
  v93 = 0;
  v94 = v34;
  v35 = sub_260FCD0F8();
  v36 = v21;
  v37 = v25;
  if (v35 == 6 || v93 != v94 >> 1)
  {
    v41 = sub_2610BCFF4();
    swift_allocError();
    v43 = v42;
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE643B8, &qword_2610C4650) + 48);
    *v43 = &type metadata for V1CommandError;
    sub_2610BD174();
    sub_2610BCFE4();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
    swift_willThrow();
    (*(v89 + 8))(v25, v21);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v90);
  }

  if (v35 > 2u)
  {
    if (v35 == 3)
    {
      v95 = 3;
      sub_2610604E0();
      v55 = v72;
      sub_2610BD164();
      if (v55)
      {
        goto LABEL_8;
      }

      (*(v75 + 8))(v30, v76);
      (*(v89 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v53 = 2;
      v52 = 1;
    }

    else if (v35 == 4)
    {
      v95 = 4;
      sub_26106048C();
      v46 = v84;
      v47 = v72;
      sub_2610BD164();
      if (v47)
      {
        goto LABEL_8;
      }

      (*(v78 + 8))(v46, v79);
      (*(v89 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 2;
      v53 = 2;
    }

    else
    {
      v95 = 5;
      sub_261060438();
      v58 = v72;
      sub_2610BD164();
      if (v58)
      {
        goto LABEL_8;
      }

      (*(v74 + 8))(v31, v32);
      (*(v89 + 8))(v25, v21);
      swift_unknownObjectRelease();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v53 = 2;
      v52 = 3;
    }

LABEL_26:
    v38 = v85;
    goto LABEL_27;
  }

  v38 = v85;
  if (v35)
  {
    if (v35 == 1)
    {
      v95 = 1;
      sub_261060588();
      v39 = v16;
      v40 = v72;
      sub_2610BD164();
      if (v40)
      {
LABEL_8:
        (*(v89 + 8))(v25, v36);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0Tm(v90);
      }

      v59 = v25;
      v95 = 0;
      v60 = v80;
      v52 = sub_2610BD1B4();
      v48 = v63;
      v95 = 1;
      v64 = sub_2610BD1D4();
      v65 = v77;
      v87 = v64;
      v88 = v36;
      v95 = 2;
      v66 = sub_2610BD1B4();
      v67 = v60;
      v68 = (v89 + 8);
      v50 = v66;
      v51 = v69;
      (*(v65 + 8))(v39, v67);
      (*v68)(v59, v88);
      swift_unknownObjectRelease();
      v53 = 0;
      v49 = v87;
      goto LABEL_26;
    }

    v95 = 2;
    sub_261060534();
    v56 = v83;
    v57 = v72;
    sub_2610BD164();
    if (v57)
    {
      (*(v89 + 8))(v37, v36);
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v90);
    }

    v52 = swift_allocObject();
    v95 = 0;
    sub_260FF2A88();
    v61 = v82;
    sub_2610BD1E4();
    v62 = v89;
    v95 = 1;
    sub_2610BD1E4();
    (*(v81 + 8))(v56, v61);
    (*(v62 + 8))(v37, v36);
    swift_unknownObjectRelease();
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v53 = 1;
  }

  else
  {
    v95 = 0;
    sub_2610605DC();
    v54 = v72;
    sub_2610BD164();
    if (v54)
    {
      goto LABEL_8;
    }

    (*(v73 + 8))(v29, v71);
    (*(v89 + 8))(v25, v36);
    swift_unknownObjectRelease();
    v52 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v53 = 2;
  }

LABEL_27:
  *v38 = v52;
  *(v38 + 8) = v48;
  *(v38 + 16) = v49;
  *(v38 + 24) = v50;
  *(v38 + 32) = v51;
  *(v38 + 40) = v53;
  return __swift_destroy_boxed_opaque_existential_0Tm(v90);
}

unint64_t sub_26105E554()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v4 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v5;
  v10 = *v0;
  v11 = v0[1];
  v6 = V1CommandError.description.getter();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v8;
}

unint64_t sub_26105E630()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  v5 = *(v0 + 40);
  return V1CommandError.description.getter();
}

uint64_t sub_26105E6AC()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_2610BD514();
  V1CommandError.hash(into:)(v5);
  return sub_2610BD574();
}

uint64_t sub_26105E70C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_2610BD514();
  V1CommandError.hash(into:)(v5);
  return sub_2610BD574();
}

uint64_t sub_26105E764(uint64_t a1)
{
  v2 = sub_261060BD8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26105E7A0(uint64_t a1)
{
  v2 = sub_261060BD8();

  return MEMORY[0x28211F4A8](a1, v2);
}

void Error.into()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_2610BD334();
  if (v6)
  {
    v7 = v6;
    (*(*(a1 - 8) + 8))(v3, a1);
  }

  else
  {
    v7 = swift_allocError();
    (*(*(a1 - 8) + 32))(v8, v3, a1);
  }

  v9 = sub_2610BC4E4();

  v10 = [v9 domain];
  v11 = sub_2610BCA04();
  v13 = v12;

  v14 = [v9 code];
  v15 = [v9 description];
  v16 = sub_2610BCA04();
  v18 = v17;

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = 0;
}

uint64_t _s21ProximityAppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v108 = a1[10];
  v109 = v3;
  v4 = a1[11];
  v110 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v104 = a1[6];
  v105 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v106 = a1[8];
  v107 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v100 = a1[2];
  v101 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v102 = a1[4];
  v103 = v12;
  v13 = a1[1];
  v98 = *a1;
  v99 = v13;
  v14 = a2[9];
  v15 = a2[11];
  v121 = a2[10];
  v122 = v15;
  v16 = a2[11];
  v123 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v117 = a2[6];
  v118 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v120 = a2[9];
  v119 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v113 = a2[2];
  v114 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v116 = a2[5];
  v115 = v24;
  v27 = *a2;
  v28 = *a2;
  v112 = a2[1];
  v111 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v124[10] = a1[10];
  v124[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v124[6] = a1[6];
  v124[7] = v32;
  v33 = a1[8];
  v124[9] = v29;
  v124[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v124[2] = a1[2];
  v124[3] = v35;
  v36 = a1[4];
  v124[5] = v31;
  v124[4] = v36;
  v37 = *a1;
  v124[1] = v34;
  v124[0] = v37;
  v124[22] = v14;
  v124[23] = v121;
  v38 = a2[12];
  v124[24] = v16;
  v124[25] = v38;
  v124[18] = v17;
  v124[19] = v117;
  v124[20] = v20;
  v124[21] = v21;
  v124[14] = v22;
  v124[15] = v113;
  v124[16] = v25;
  v124[17] = v26;
  v124[12] = a1[12];
  v124[13] = v28;
  v125[10] = v108;
  v125[11] = v4;
  v125[12] = a1[12];
  v125[6] = v104;
  v125[7] = v7;
  v125[9] = v2;
  v125[8] = v106;
  v125[2] = v100;
  v125[3] = v11;
  v125[5] = v5;
  v125[4] = v102;
  v125[1] = v9;
  v125[0] = v98;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v125);
  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
    {
      v40 = sub_260F9C514(v125);
      v95 = v121;
      v96 = v122;
      v97 = v123;
      v91 = v117;
      v92 = v118;
      v93 = v119;
      v94 = v120;
      v87 = v113;
      v88 = v114;
      v89 = v115;
      v90 = v116;
      v85 = v111;
      v86 = v112;
      if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v85) == 1)
      {
        v41 = sub_260F9C514(&v85);
        v67 = *(v40 + 128);
        v68 = *(v40 + 144);
        v69 = *(v40 + 160);
        *&v70 = *(v40 + 176);
        v63 = *(v40 + 64);
        v64 = *(v40 + 80);
        v65 = *(v40 + 96);
        v66 = *(v40 + 112);
        v59 = *v40;
        v60 = *(v40 + 16);
        v61 = *(v40 + 32);
        v62 = *(v40 + 48);
        v57[8] = *(v41 + 128);
        v57[9] = *(v41 + 144);
        v57[10] = *(v41 + 160);
        v58 = *(v41 + 176);
        v57[4] = *(v41 + 64);
        v57[5] = *(v41 + 80);
        v57[6] = *(v41 + 96);
        v57[7] = *(v41 + 112);
        v57[0] = *v41;
        v57[1] = *(v41 + 16);
        v57[2] = *(v41 + 32);
        v57[3] = *(v41 + 48);
        sub_261062CC0(&v111, &v72);
        sub_261062CC0(&v98, &v72);
        sub_261062CC0(&v111, &v72);
        sub_261062CC0(&v98, &v72);
        v42 = _s21ProximityAppleIDSetup13SignInCommandV7RequestV2eeoiySbAE_AEtFZ_0(&v59, v57);
LABEL_11:
        v51 = v42;
        sub_260FA9980(v124, &qword_27FE66060, &unk_2610CBE40);
        sub_261062CF8(&v111);
        sub_261062CF8(&v98);
        return v51 & 1;
      }

      v82 = v108;
      v83 = v109;
      v84 = v110;
      v78 = v104;
      v79 = v105;
      v80 = v106;
      v81 = v107;
      v74 = v100;
      v75 = v101;
      v76 = v102;
      v77 = v103;
      v72 = v98;
      v73 = v99;
      v54 = sub_260F9C514(&v72);
      sub_260FF2568(v54, &v59);
    }

    else
    {
      v52 = sub_260F9C514(v125);
      v95 = v121;
      v96 = v122;
      v97 = v123;
      v91 = v117;
      v92 = v118;
      v93 = v119;
      v94 = v120;
      v87 = v113;
      v88 = v114;
      v89 = v115;
      v90 = v116;
      v85 = v111;
      v86 = v112;
      if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v85) == 2)
      {
        v53 = sub_260F9C514(&v85);
        v81 = v52[9];
        v82 = v52[10];
        v83 = v52[11];
        v84 = v52[12];
        v77 = v52[5];
        v78 = v52[6];
        v79 = v52[7];
        v80 = v52[8];
        v73 = v52[1];
        v74 = v52[2];
        v75 = v52[3];
        v76 = v52[4];
        v72 = *v52;
        v68 = v53[9];
        v69 = v53[10];
        v70 = v53[11];
        v71 = v53[12];
        v64 = v53[5];
        v65 = v53[6];
        v66 = v53[7];
        v67 = v53[8];
        v60 = v53[1];
        v61 = v53[2];
        v62 = v53[3];
        v63 = v53[4];
        v59 = *v53;
        sub_261062CC0(&v111, v57);
        sub_261062CC0(&v98, v57);
        sub_261062CC0(&v111, v57);
        sub_261062CC0(&v98, v57);
        v42 = _s21ProximityAppleIDSetup19AuthenticateCommandV7RequestV2eeoiySbAE_AEtFZ_0(&v72, &v59);
        goto LABEL_11;
      }

      v82 = v108;
      v83 = v109;
      v84 = v110;
      v78 = v104;
      v79 = v105;
      v80 = v106;
      v81 = v107;
      v74 = v100;
      v75 = v101;
      v76 = v102;
      v77 = v103;
      v72 = v98;
      v73 = v99;
      v55 = sub_260F9C514(&v72);
      sub_261062C64(v55, &v59);
    }

LABEL_14:
    sub_261062CC0(&v111, &v85);
    sub_260FA9980(v124, &qword_27FE66060, &unk_2610CBE40);
    v51 = 0;
    return v51 & 1;
  }

  v43 = sub_260F9C514(v125);
  v44 = *v43;
  v45 = v43[1];
  v46 = v43[2];
  v87 = v113;
  v88 = v114;
  v85 = v111;
  v86 = v112;
  v91 = v117;
  v92 = v118;
  v89 = v115;
  v90 = v116;
  v96 = v122;
  v97 = v123;
  v93 = v119;
  v94 = v120;
  v95 = v121;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v85))
  {
    goto LABEL_14;
  }

  v47 = sub_260F9C514(&v85);
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  sub_260FA9980(v124, &qword_27FE66060, &unk_2610CBE40);
  if (v46 == v50)
  {
    v51 = (v45 == v49) & ~(v44 ^ v48);
  }

  else
  {
    v51 = 0;
  }

  return v51 & 1;
}

unint64_t sub_26105EFD4()
{
  result = qword_27FE65C18;
  if (!qword_27FE65C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C18);
  }

  return result;
}

unint64_t sub_26105F028()
{
  result = qword_27FE65C20;
  if (!qword_27FE65C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C20);
  }

  return result;
}

unint64_t sub_26105F07C()
{
  result = qword_27FE65C28;
  if (!qword_27FE65C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C28);
  }

  return result;
}

unint64_t sub_26105F0D0()
{
  result = qword_27FE65C30;
  if (!qword_27FE65C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C30);
  }

  return result;
}

unint64_t sub_26105F124()
{
  result = qword_27FE65C38;
  if (!qword_27FE65C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C38);
  }

  return result;
}

unint64_t sub_26105F178()
{
  result = qword_27FE65C60;
  if (!qword_27FE65C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C60);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[7];
  v144 = a1[8];
  v145 = v2;
  v4 = a1[9];
  v146 = a1[10];
  v5 = a1[5];
  v6 = a1[3];
  v140 = a1[4];
  v141 = v5;
  v7 = a1[5];
  v8 = a1[7];
  v142 = a1[6];
  v143 = v8;
  v9 = a1[1];
  v136 = *a1;
  v137 = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v138 = a1[2];
  v139 = v10;
  v13 = a2[9];
  v14 = a2[7];
  v156 = a2[8];
  v157 = v13;
  v15 = a2[9];
  v158 = a2[10];
  v16 = a2[5];
  v17 = a2[3];
  v152 = a2[4];
  v153 = v16;
  v18 = a2[5];
  v19 = a2[7];
  v154 = a2[6];
  v155 = v19;
  v20 = a2[1];
  v148 = *a2;
  v149 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v150 = a2[2];
  v151 = v21;
  v24 = a1[9];
  v160[8] = a1[8];
  v160[9] = v24;
  v160[10] = a1[10];
  v25 = a1[5];
  v160[4] = a1[4];
  v160[5] = v25;
  v26 = a1[7];
  v160[6] = a1[6];
  v160[7] = v26;
  v27 = a1[1];
  v160[0] = *a1;
  v160[1] = v27;
  v28 = a1[3];
  v160[2] = a1[2];
  v160[3] = v28;
  v29 = a2[10];
  v171 = v15;
  v172 = v29;
  v167 = v18;
  v168 = v154;
  v169 = v14;
  v170 = v156;
  v166 = v152;
  v162 = v23;
  v163 = v22;
  v164 = v150;
  v165 = v17;
  v174[8] = v144;
  v174[9] = v4;
  v174[10] = a1[10];
  v174[4] = v140;
  v174[5] = v7;
  v174[6] = v142;
  v174[7] = v3;
  v174[0] = v11;
  v174[1] = v12;
  v147 = *(a1 + 22);
  v159 = *(a2 + 22);
  v30 = *(a2 + 22);
  v161 = *(a1 + 22);
  v173 = v30;
  v175 = *(a1 + 22);
  v174[2] = v138;
  v174[3] = v6;
  enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 = get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(v174);
  if (!enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0)
  {
    v46 = sub_260F9C514(v174);
    v47 = *v46;
    v48 = v46[1];
    v49 = v46[2];
    v50 = v46[3];
    v132 = v156;
    v133 = v157;
    v134 = v158;
    v135 = v159;
    v128 = v152;
    v129 = v153;
    v130 = v154;
    v131 = v155;
    v124 = v148;
    v125 = v149;
    v126 = v150;
    v127 = v151;
    if (!get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v124))
    {
      v51 = sub_260F9C514(&v124);
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];
      sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
      if (v47 == v52 && ((v48 ^ v53) & 1) == 0)
      {
        if (v50)
        {
          if (v55)
          {
LABEL_25:
            v66 = 1;
            return v66 & 1;
          }
        }

        else
        {
          if (v49 == v54)
          {
            v70 = v55;
          }

          else
          {
            v70 = 1;
          }

          if ((v70 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0 == 1)
  {
    v32 = sub_260F9C514(v174);
    v132 = v156;
    v133 = v157;
    v134 = v158;
    v135 = v159;
    v128 = v152;
    v129 = v153;
    v130 = v154;
    v131 = v155;
    v124 = v148;
    v125 = v149;
    v126 = v150;
    v127 = v151;
    if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v124) == 1)
    {
      v33 = sub_260F9C514(&v124);
      v34 = *(v32 + 144);
      v91 = *(v32 + 128);
      v92[0] = v34;
      *(v92 + 9) = *(v32 + 153);
      v35 = *(v32 + 80);
      v87 = *(v32 + 64);
      v88 = v35;
      v36 = *(v32 + 112);
      v89 = *(v32 + 96);
      v90 = v36;
      v37 = *(v32 + 16);
      v83 = *v32;
      v84 = v37;
      v38 = *(v32 + 48);
      v85 = *(v32 + 32);
      v86 = v38;
      v39 = *(v33 + 144);
      v81 = *(v33 + 128);
      v82[0] = v39;
      *(v82 + 9) = *(v33 + 153);
      v40 = *(v33 + 80);
      v77 = *(v33 + 64);
      v78 = v40;
      v41 = *(v33 + 112);
      v79 = *(v33 + 96);
      v80 = v41;
      v42 = *(v33 + 16);
      v73 = *v33;
      v74 = v42;
      v43 = *(v33 + 48);
      v75 = *(v33 + 32);
      v76 = v43;
      sub_261062BF0(&v148, &v112);
      sub_261062BF0(&v136, &v112);
      sub_261062BF0(&v148, &v112);
      sub_261062BF0(&v136, &v112);
      sub_260FD2DF8(v32, &v112);
      sub_260FD2DF8(v33, &v112);
      v44 = _s21ProximityAppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(&v83, &v73);
      v101 = v81;
      v102[0] = v82[0];
      *(v102 + 9) = *(v82 + 9);
      v97 = v77;
      v98 = v78;
      v99 = v79;
      v100 = v80;
      v93 = v73;
      v94 = v74;
      v95 = v75;
      v96 = v76;
      sub_260FD2E30(&v93);
      v110 = v91;
      v111[0] = v92[0];
      *(v111 + 9) = *(v92 + 9);
      v106 = v87;
      v107 = v88;
      v108 = v89;
      v109 = v90;
      v103[0] = v83;
      v103[1] = v84;
      v104 = v85;
      v105 = v86;
      sub_260FD2E30(v103);
      if (v44)
      {
        v45 = sub_261058754(*(v32 + 176), *(v33 + 176));
        sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
        sub_261062C34(&v148);
        sub_261062C34(&v136);
        if (v45)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
        sub_261062C34(&v148);
        sub_261062C34(&v136);
      }

      goto LABEL_18;
    }

    v120 = v144;
    v121 = v145;
    v122 = v146;
    v123 = v147;
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v119 = v143;
    v112 = v136;
    v113 = v137;
    v114 = v138;
    v115 = v139;
    v67 = sub_260F9C514(&v112);
    sub_260FF2ADC(v67, v103);
LABEL_17:
    sub_261062BF0(&v148, &v124);
    sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
LABEL_18:
    v66 = 0;
    return v66 & 1;
  }

  v56 = sub_260F9C514(v174);
  v71 = *(v56 + 16);
  v72 = *v56;
  v57 = *(v56 + 32);
  v58 = *(v56 + 40);
  v59 = *(v56 + 41);
  v126 = v150;
  v127 = v151;
  v124 = v148;
  v125 = v149;
  v131 = v155;
  v130 = v154;
  v128 = v152;
  v129 = v153;
  v135 = v159;
  v134 = v158;
  v133 = v157;
  v132 = v156;
  if (get_enum_tag_for_layout_string_21ProximityAppleIDSetup9V1CommandO8ResponseO_0(&v124) != 2)
  {
    v120 = v144;
    v121 = v145;
    v122 = v146;
    v123 = v147;
    v116 = v140;
    v117 = v141;
    v118 = v142;
    v119 = v143;
    v112 = v136;
    v113 = v137;
    v114 = v138;
    v115 = v139;
    v68 = sub_260F9C514(&v112);
    sub_261062BE4(*v68, *(v68 + 8), *(v68 + 16), *(v68 + 24), *(v68 + 32), *(v68 + 40), *(v68 + 41));
    goto LABEL_17;
  }

  v60 = sub_260F9C514(&v124);
  v61 = *(v60 + 32);
  v62 = *(v60 + 40);
  v63 = *(v60 + 41);
  v64 = *v60;
  v65 = *(v60 + 16);
  *&v104 = v57;
  v93 = v64;
  v94 = v65;
  *&v95 = v61;
  BYTE8(v95) = v62;
  BYTE9(v95) = v63;
  sub_261062BF0(&v148, &v112);
  sub_261062BF0(&v136, &v112);
  sub_261062BF0(&v148, &v112);
  sub_261062BF0(&v136, &v112);
  sub_260FE514C();
  sub_261060DC0();
  sub_261060D68();
  v66 = sub_2610BD5B4();
  sub_260FA9980(v160, &qword_27FE66058, &qword_2610CBE38);
  sub_261062C28(v93, *(&v93 + 1), v94, *(&v94 + 1), v95, SBYTE8(v95), SBYTE9(v95));
  sub_261062C28(v72, *(&v72 + 1), v71, *(&v71 + 1), v104, v58, v59);
  return v66 & 1;
}

unint64_t sub_26105F918()
{
  result = qword_27FE65C88;
  if (!qword_27FE65C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C88);
  }

  return result;
}

unint64_t sub_26105F96C()
{
  result = qword_27FE65C90;
  if (!qword_27FE65C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C90);
  }

  return result;
}

unint64_t sub_26105F9C0()
{
  result = qword_27FE65C98;
  if (!qword_27FE65C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65C98);
  }

  return result;
}

unint64_t sub_26105FA14()
{
  result = qword_27FE65CA0;
  if (!qword_27FE65CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CA0);
  }

  return result;
}

unint64_t sub_26105FA68()
{
  result = qword_27FE65CA8;
  if (!qword_27FE65CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CA8);
  }

  return result;
}

unint64_t sub_26105FABC()
{
  result = qword_27FE65CB8;
  if (!qword_27FE65CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CB8);
  }

  return result;
}

unint64_t sub_26105FB10()
{
  result = qword_27FE65CE0;
  if (!qword_27FE65CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65CE0);
  }

  return result;
}

uint64_t _s21ProximityAppleIDSetup9V1CommandO2eeoiySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[9];
  v3 = a1[11];
  v115 = a1[10];
  v116 = v3;
  v4 = a1[11];
  v117 = a1[12];
  v5 = a1[5];
  v6 = a1[7];
  v111 = a1[6];
  v112 = v6;
  v7 = a1[7];
  v8 = a1[9];
  v113 = a1[8];
  v114 = v8;
  v9 = a1[1];
  v10 = a1[3];
  v107 = a1[2];
  v108 = v10;
  v11 = a1[3];
  v12 = a1[5];
  v109 = a1[4];
  v110 = v12;
  v13 = a1[1];
  v106[0] = *a1;
  v106[1] = v13;
  v14 = a2[9];
  v15 = a2[11];
  v128 = a2[10];
  v129 = v15;
  v16 = a2[11];
  v130 = a2[12];
  v17 = a2[5];
  v18 = a2[7];
  v124 = a2[6];
  v125 = v18;
  v20 = a2[7];
  v19 = a2[8];
  v21 = v19;
  v127 = a2[9];
  v126 = v19;
  v22 = a2[1];
  v23 = a2[3];
  v120 = a2[2];
  v121 = v23;
  v25 = a2[3];
  v24 = a2[4];
  v26 = v24;
  v123 = a2[5];
  v122 = v24;
  v27 = *a2;
  v28 = *a2;
  v119 = a2[1];
  v118 = v27;
  v29 = a1[9];
  v30 = a1[11];
  v131[10] = a1[10];
  v131[11] = v30;
  v31 = a1[5];
  v32 = a1[7];
  v131[6] = a1[6];
  v131[7] = v32;
  v33 = a1[8];
  v131[9] = v29;
  v131[8] = v33;
  v34 = a1[1];
  v35 = a1[3];
  v131[2] = a1[2];
  v131[3] = v35;
  v36 = a1[4];
  v131[5] = v31;
  v131[4] = v36;
  v37 = *a1;
  v131[1] = v34;
  v131[0] = v37;
  v131[22] = v14;
  v131[23] = v128;
  v38 = a2[12];
  v131[24] = v16;
  v131[25] = v38;
  v131[18] = v17;
  v131[19] = v124;
  v131[20] = v20;
  v131[21] = v21;
  v131[14] = v22;
  v131[15] = v120;
  v131[16] = v25;
  v131[17] = v26;
  v131[12] = a1[12];
  v131[13] = v28;
  v132[10] = v115;
  v132[11] = v4;
  v132[12] = a1[12];
  v132[6] = v111;
  v132[7] = v7;
  v132[9] = v2;
  v132[8] = v113;
  v132[2] = v107;
  v132[3] = v11;
  v132[5] = v5;
  v132[4] = v109;
  v132[1] = v9;
  v132[0] = v106[0];
  v39 = sub_260FEE778(v132);
  if (!v39)
  {
    v48 = sub_260F9C524(v132);
    v103 = v128;
    v104 = v129;
    v105 = v130;
    v99 = v124;
    v100 = v125;
    v101 = v126;
    v102 = v127;
    v95 = v120;
    v96 = v121;
    v97 = v122;
    v98 = v123;
    v93 = v118;
    v94 = v119;
    if (!sub_260FEE778(&v93))
    {
      v49 = sub_260F9C524(&v93);
      v92[9] = v48[9];
      v92[10] = v48[10];
      v92[11] = v48[11];
      v92[12] = v48[12];
      v92[5] = v48[5];
      v92[6] = v48[6];
      v92[7] = v48[7];
      v92[8] = v48[8];
      v92[1] = v48[1];
      v92[2] = v48[2];
      v92[3] = v48[3];
      v92[4] = v48[4];
      v92[0] = *v48;
      v50 = v49[11];
      v89 = v49[10];
      v90 = v50;
      v91 = v49[12];
      v51 = v49[7];
      v85 = v49[6];
      v86 = v51;
      v52 = v49[9];
      v87 = v49[8];
      v88 = v52;
      v53 = v49[3];
      v81 = v49[2];
      v82 = v53;
      v54 = v49[5];
      v83 = v49[4];
      v84 = v54;
      v55 = v49[1];
      v79 = *v49;
      v80 = v55;
      sub_261062BAC(&v118, &v67);
      sub_261062BAC(v106, &v67);
      sub_261062BAC(v106, &v67);
      sub_261062BAC(&v118, &v67);
      v47 = _s21ProximityAppleIDSetup9V1CommandO7RequestO2eeoiySbAE_AEtFZ_0(v92, &v79);
      goto LABEL_9;
    }

LABEL_10:
    sub_261062BAC(v106, &v93);
    sub_261062BAC(&v118, &v93);
    sub_260FA9980(v131, &qword_27FE66050, &qword_2610CBE30);
    v63 = 0;
    return v63 & 1;
  }

  if (v39 != 1)
  {
    v56 = sub_260F9C524(v132);
    v65 = *(v56 + 16);
    v66 = *v56;
    v57 = *(v56 + 32);
    v58 = *(v56 + 40);
    v95 = v120;
    v96 = v121;
    v93 = v118;
    v94 = v119;
    v99 = v124;
    v100 = v125;
    v97 = v122;
    v98 = v123;
    v104 = v129;
    v105 = v130;
    v101 = v126;
    v102 = v127;
    v103 = v128;
    if (sub_260FEE778(&v93) == 2)
    {
      v59 = sub_260F9C524(&v93);
      v60 = *(v59 + 32);
      v61 = *(v59 + 40);
      v79 = v66;
      v80 = v65;
      *&v81 = v57;
      BYTE8(v81) = v58;
      v62 = *(v59 + 16);
      v67 = *v59;
      v68 = v62;
      *&v69 = v60;
      BYTE8(v69) = v61;
      sub_261062BAC(&v118, v92);
      sub_261062BAC(v106, v92);
      sub_261062BAC(v106, v92);
      sub_261062BAC(&v118, v92);
      v47 = static V1CommandError.== infix(_:_:)(&v79, &v67);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v40 = sub_260F9C524(v132);
  v103 = v128;
  v104 = v129;
  v105 = v130;
  v99 = v124;
  v100 = v125;
  v101 = v126;
  v102 = v127;
  v95 = v120;
  v96 = v121;
  v97 = v122;
  v98 = v123;
  v93 = v118;
  v94 = v119;
  if (sub_260FEE778(&v93) != 1)
  {
    goto LABEL_10;
  }

  v41 = sub_260F9C524(&v93);
  v42 = *(v40 + 144);
  v87 = *(v40 + 128);
  v88 = v42;
  v89 = *(v40 + 160);
  *&v90 = *(v40 + 176);
  v43 = *(v40 + 80);
  v83 = *(v40 + 64);
  v84 = v43;
  v44 = *(v40 + 112);
  v85 = *(v40 + 96);
  v86 = v44;
  v45 = *(v40 + 16);
  v79 = *v40;
  v80 = v45;
  v46 = *(v40 + 48);
  v81 = *(v40 + 32);
  v82 = v46;
  v75 = *(v41 + 128);
  v76 = *(v41 + 144);
  v77 = *(v41 + 160);
  v78 = *(v41 + 176);
  v71 = *(v41 + 64);
  v72 = *(v41 + 80);
  v73 = *(v41 + 96);
  v74 = *(v41 + 112);
  v67 = *v41;
  v68 = *(v41 + 16);
  v69 = *(v41 + 32);
  v70 = *(v41 + 48);
  sub_261062BAC(&v118, v92);
  sub_261062BAC(v106, v92);
  sub_261062BAC(v106, v92);
  sub_261062BAC(&v118, v92);
  v47 = _s21ProximityAppleIDSetup9V1CommandO8ResponseO2eeoiySbAE_AEtFZ_0(&v79, &v67);
LABEL_9:
  v63 = v47;
  sub_260FA9980(v131, &qword_27FE66050, &qword_2610CBE30);
  sub_260FEDBAC(&v118);
  sub_260FEDBAC(v106);
  return v63 & 1;
}

unint64_t sub_261060124()
{
  result = qword_27FE65D10;
  if (!qword_27FE65D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D10);
  }

  return result;
}

unint64_t sub_261060178()
{
  result = qword_27FE65D18;
  if (!qword_27FE65D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D18);
  }

  return result;
}

unint64_t sub_2610601CC()
{
  result = qword_27FE65D20;
  if (!qword_27FE65D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D20);
  }

  return result;
}

unint64_t sub_261060220()
{
  result = qword_27FE65D28;
  if (!qword_27FE65D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D28);
  }

  return result;
}

unint64_t sub_261060274()
{
  result = qword_27FE65D30;
  if (!qword_27FE65D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D30);
  }

  return result;
}

unint64_t sub_2610602C8()
{
  result = qword_27FE65D38;
  if (!qword_27FE65D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D38);
  }

  return result;
}

uint64_t sub_26106031C(uint64_t result)
{
  v1 = *(result + 168) & 0xC000000000000003 | 0x2000000000000000;
  *(result + 80) &= 3uLL;
  *(result + 168) = v1;
  return result;
}

unint64_t sub_26106033C()
{
  result = qword_27FE65D60;
  if (!qword_27FE65D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D60);
  }

  return result;
}

unint64_t sub_261060390()
{
  result = qword_27FE65D68;
  if (!qword_27FE65D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65D68);
  }

  return result;
}

unint64_t sub_2610603E4()
{
  result = qword_27FE65DA8;
  if (!qword_27FE65DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DA8);
  }

  return result;
}

unint64_t sub_261060438()
{
  result = qword_27FE65DB0;
  if (!qword_27FE65DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DB0);
  }

  return result;
}

unint64_t sub_26106048C()
{
  result = qword_27FE65DB8;
  if (!qword_27FE65DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DB8);
  }

  return result;
}

unint64_t sub_2610604E0()
{
  result = qword_27FE65DC0;
  if (!qword_27FE65DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DC0);
  }

  return result;
}

unint64_t sub_261060534()
{
  result = qword_27FE65DC8;
  if (!qword_27FE65DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DC8);
  }

  return result;
}

unint64_t sub_261060588()
{
  result = qword_27FE65DD0;
  if (!qword_27FE65DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DD0);
  }

  return result;
}

unint64_t sub_2610605DC()
{
  result = qword_27FE65DD8;
  if (!qword_27FE65DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65DD8);
  }

  return result;
}

unint64_t sub_261060630()
{
  result = qword_27FE65E18;
  if (!qword_27FE65E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E18);
  }

  return result;
}

unint64_t sub_261060684(uint64_t a1)
{
  result = sub_2610606AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2610606AC()
{
  result = qword_27FE65E20;
  if (!qword_27FE65E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E20);
  }

  return result;
}

unint64_t sub_261060740()
{
  result = qword_27FE65E28;
  if (!qword_27FE65E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E28);
  }

  return result;
}

unint64_t sub_261060798()
{
  result = qword_27FE65E30;
  if (!qword_27FE65E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E30);
  }

  return result;
}

unint64_t sub_2610607EC(uint64_t a1)
{
  result = sub_261060814();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261060814()
{
  result = qword_27FE65E38;
  if (!qword_27FE65E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E38);
  }

  return result;
}

unint64_t sub_2610608A8()
{
  result = qword_27FE65E40;
  if (!qword_27FE65E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E40);
  }

  return result;
}

unint64_t sub_261060900()
{
  result = qword_27FE65E48;
  if (!qword_27FE65E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E48);
  }

  return result;
}

unint64_t sub_261060958()
{
  result = qword_27FE65E50;
  if (!qword_27FE65E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E50);
  }

  return result;
}

unint64_t sub_2610609B0()
{
  result = qword_27FE65E58;
  if (!qword_27FE65E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E58);
  }

  return result;
}

unint64_t sub_261060A44()
{
  result = qword_27FE65E60;
  if (!qword_27FE65E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E60);
  }

  return result;
}

unint64_t sub_261060A98()
{
  result = qword_27FE65E68;
  if (!qword_27FE65E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E68);
  }

  return result;
}

unint64_t sub_261060AEC()
{
  result = qword_27FE65E70;
  if (!qword_27FE65E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E70);
  }

  return result;
}

unint64_t sub_261060B44()
{
  result = qword_27FE65E78;
  if (!qword_27FE65E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E78);
  }

  return result;
}

unint64_t sub_261060BD8()
{
  result = qword_27FE65E80;
  if (!qword_27FE65E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E80);
  }

  return result;
}

unint64_t sub_261060C2C()
{
  result = qword_27FE65E88;
  if (!qword_27FE65E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E88);
  }

  return result;
}

unint64_t sub_261060C80()
{
  result = qword_27FE65E90;
  if (!qword_27FE65E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E90);
  }

  return result;
}

uint64_t sub_261060D14(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_261060D68()
{
  result = qword_27FE65E98;
  if (!qword_27FE65E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65E98);
  }

  return result;
}

unint64_t sub_261060DC0()
{
  result = qword_27FE65EA0;
  if (!qword_27FE65EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup11IdMSAccountV10DeviceInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21ProximityAppleIDSetup14V1CommandErrorO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_261060E9C(uint64_t result, char a2)
{
  v2 = *(result + 168) & 0xC000000000000003 | ((a2 & 3) << 60);
  *(result + 80) &= 3uLL;
  *(result + 168) = v2;
  return result;
}

uint64_t sub_261060ED0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_261060F20(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 200) = 0;
    result = 0.0;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 208) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 4 * -a2;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      *(a1 + 184) = 0u;
      *(a1 + 200) = 0;
      return result;
    }

    *(a1 + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261060FD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_261061028(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 184) = 1;
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
      result = 0.0;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 80) = 4 * -a2;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0u;
      *(a1 + 152) = 0u;
      *(a1 + 168) = 0u;
      return result;
    }

    *(a1 + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_2610610E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26106112C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26106117C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for V1CommandError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for V1CommandError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_261061424()
{
  result = qword_27FE65EA8;
  if (!qword_27FE65EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EA8);
  }

  return result;
}

unint64_t sub_26106147C()
{
  result = qword_27FE65EB0;
  if (!qword_27FE65EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EB0);
  }

  return result;
}

unint64_t sub_2610614D4()
{
  result = qword_27FE65EB8;
  if (!qword_27FE65EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EB8);
  }

  return result;
}

unint64_t sub_26106152C()
{
  result = qword_27FE65EC0;
  if (!qword_27FE65EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EC0);
  }

  return result;
}

unint64_t sub_261061584()
{
  result = qword_27FE65EC8;
  if (!qword_27FE65EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EC8);
  }

  return result;
}

unint64_t sub_2610615DC()
{
  result = qword_27FE65ED0;
  if (!qword_27FE65ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65ED0);
  }

  return result;
}

unint64_t sub_261061634()
{
  result = qword_27FE65ED8;
  if (!qword_27FE65ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65ED8);
  }

  return result;
}

unint64_t sub_26106168C()
{
  result = qword_27FE65EE0;
  if (!qword_27FE65EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EE0);
  }

  return result;
}

unint64_t sub_2610616E4()
{
  result = qword_27FE65EE8;
  if (!qword_27FE65EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EE8);
  }

  return result;
}

unint64_t sub_26106173C()
{
  result = qword_27FE65EF0;
  if (!qword_27FE65EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EF0);
  }

  return result;
}

unint64_t sub_261061794()
{
  result = qword_27FE65EF8;
  if (!qword_27FE65EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65EF8);
  }

  return result;
}

unint64_t sub_2610617EC()
{
  result = qword_27FE65F00;
  if (!qword_27FE65F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F00);
  }

  return result;
}

unint64_t sub_261061844()
{
  result = qword_27FE65F08;
  if (!qword_27FE65F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F08);
  }

  return result;
}

unint64_t sub_26106189C()
{
  result = qword_27FE65F10;
  if (!qword_27FE65F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F10);
  }

  return result;
}

unint64_t sub_2610618F4()
{
  result = qword_27FE65F18;
  if (!qword_27FE65F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F18);
  }

  return result;
}

unint64_t sub_26106194C()
{
  result = qword_27FE65F20;
  if (!qword_27FE65F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F20);
  }

  return result;
}

unint64_t sub_2610619A4()
{
  result = qword_27FE65F28;
  if (!qword_27FE65F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F28);
  }

  return result;
}

unint64_t sub_2610619FC()
{
  result = qword_27FE65F30;
  if (!qword_27FE65F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F30);
  }

  return result;
}

unint64_t sub_261061A54()
{
  result = qword_27FE65F38;
  if (!qword_27FE65F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F38);
  }

  return result;
}

unint64_t sub_261061AAC()
{
  result = qword_27FE65F40;
  if (!qword_27FE65F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F40);
  }

  return result;
}

unint64_t sub_261061B04()
{
  result = qword_27FE65F48;
  if (!qword_27FE65F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F48);
  }

  return result;
}

unint64_t sub_261061B5C()
{
  result = qword_27FE65F50;
  if (!qword_27FE65F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F50);
  }

  return result;
}

unint64_t sub_261061BB4()
{
  result = qword_27FE65F58;
  if (!qword_27FE65F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F58);
  }

  return result;
}

unint64_t sub_261061C0C()
{
  result = qword_27FE65F60;
  if (!qword_27FE65F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F60);
  }

  return result;
}

unint64_t sub_261061C64()
{
  result = qword_27FE65F68;
  if (!qword_27FE65F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F68);
  }

  return result;
}

unint64_t sub_261061CBC()
{
  result = qword_27FE65F70;
  if (!qword_27FE65F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F70);
  }

  return result;
}

unint64_t sub_261061D14()
{
  result = qword_27FE65F78;
  if (!qword_27FE65F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F78);
  }

  return result;
}

unint64_t sub_261061D6C()
{
  result = qword_27FE65F80;
  if (!qword_27FE65F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F80);
  }

  return result;
}

unint64_t sub_261061DC4()
{
  result = qword_27FE65F88;
  if (!qword_27FE65F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F88);
  }

  return result;
}

unint64_t sub_261061E1C()
{
  result = qword_27FE65F90;
  if (!qword_27FE65F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F90);
  }

  return result;
}

unint64_t sub_261061E74()
{
  result = qword_27FE65F98;
  if (!qword_27FE65F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65F98);
  }

  return result;
}

unint64_t sub_261061ECC()
{
  result = qword_27FE65FA0;
  if (!qword_27FE65FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FA0);
  }

  return result;
}

unint64_t sub_261061F24()
{
  result = qword_27FE65FA8;
  if (!qword_27FE65FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FA8);
  }

  return result;
}

unint64_t sub_261061F7C()
{
  result = qword_27FE65FB0;
  if (!qword_27FE65FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FB0);
  }

  return result;
}

unint64_t sub_261061FD4()
{
  result = qword_27FE65FB8;
  if (!qword_27FE65FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FB8);
  }

  return result;
}

unint64_t sub_26106202C()
{
  result = qword_27FE65FC0;
  if (!qword_27FE65FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FC0);
  }

  return result;
}

unint64_t sub_261062084()
{
  result = qword_27FE65FC8;
  if (!qword_27FE65FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FC8);
  }

  return result;
}

unint64_t sub_2610620DC()
{
  result = qword_27FE65FD0;
  if (!qword_27FE65FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FD0);
  }

  return result;
}

unint64_t sub_261062134()
{
  result = qword_27FE65FD8;
  if (!qword_27FE65FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FD8);
  }

  return result;
}

unint64_t sub_26106218C()
{
  result = qword_27FE65FE0;
  if (!qword_27FE65FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FE0);
  }

  return result;
}

unint64_t sub_2610621E4()
{
  result = qword_27FE65FE8;
  if (!qword_27FE65FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FE8);
  }

  return result;
}

unint64_t sub_26106223C()
{
  result = qword_27FE65FF0;
  if (!qword_27FE65FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FF0);
  }

  return result;
}

unint64_t sub_261062294()
{
  result = qword_27FE65FF8;
  if (!qword_27FE65FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE65FF8);
  }

  return result;
}

unint64_t sub_2610622EC()
{
  result = qword_27FE66000;
  if (!qword_27FE66000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66000);
  }

  return result;
}

unint64_t sub_261062344()
{
  result = qword_27FE66008;
  if (!qword_27FE66008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66008);
  }

  return result;
}

unint64_t sub_26106239C()
{
  result = qword_27FE66010;
  if (!qword_27FE66010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66010);
  }

  return result;
}

unint64_t sub_2610623F4()
{
  result = qword_27FE66018;
  if (!qword_27FE66018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66018);
  }

  return result;
}

unint64_t sub_26106244C()
{
  result = qword_27FE66020;
  if (!qword_27FE66020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66020);
  }

  return result;
}

unint64_t sub_2610624A4()
{
  result = qword_27FE66028;
  if (!qword_27FE66028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66028);
  }

  return result;
}

unint64_t sub_2610624FC()
{
  result = qword_27FE66030;
  if (!qword_27FE66030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66030);
  }

  return result;
}

unint64_t sub_261062554()
{
  result = qword_27FE66038;
  if (!qword_27FE66038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66038);
  }

  return result;
}

unint64_t sub_2610625AC()
{
  result = qword_27FE66040;
  if (!qword_27FE66040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66040);
  }

  return result;
}

unint64_t sub_261062604()
{
  result = qword_27FE66048;
  if (!qword_27FE66048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66048);
  }

  return result;
}

uint64_t sub_261062658(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E676973 && a2 == 0xE600000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEC00000065746163)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_261062778(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_261062890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64657473656ELL && a2 == 0xE600000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002610D5480 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002610D54A0 == a2 || (sub_2610BD384() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002610D54C0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_2610BD384();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_261062A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v4 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    return 2;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_261062BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3594(a1, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

uint64_t sub_261062C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
    return sub_260FF3654(a1, a2, a3, a4, a5, a6);
  }

  else
  {
  }
}

uint64_t PASFlowStepFamilyPickerError.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2610BD154();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_261062DD0()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261062E54()
{
  sub_2610BD514();
  sub_2610BCA54();
  return sub_2610BD574();
}

uint64_t sub_261062EB0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2610BD154();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_261062F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v1 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v2;
  v6 = sub_2610BD634();
  v7 = v3;
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x6E65736572506F6ELL, 0xEE0073656C626174);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v4 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v4;
}

uint64_t sub_261063030()
{
  v1 = sub_2610BD634();
  MEMORY[0x2666F7380](46, 0xE100000000000000);
  MEMORY[0x2666F7380](0x6E65736572506F6ELL, 0xEE0073656C626174);
  return v1;
}

uint64_t sub_26106309C(uint64_t a1)
{
  v2 = sub_261069468();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2610630D8(uint64_t a1)
{
  v2 = sub_261069468();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASFlowStepFamilyPicker.selectedMember.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261063188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v5;
  return result;
}

uint64_t sub_261063208(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepFamilyPicker.selectedMember.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

void (*PASFlowStepFamilyPicker.selectedMember.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_2610BC834();
  return sub_260FD74E0;
}

uint64_t sub_2610633B4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PASFlowStepFamilyPicker.$selectedMember.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC824();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*PASFlowStepFamilyPicker.$selectedMember.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C0, &qword_2610C24E0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  sub_2610BC814();
  swift_endAccess();
  return sub_260FD7A84;
}

uint64_t PASFlowStepFamilyPicker.canAddMembers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261063854@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v5;
  return result;
}

uint64_t sub_2610638D4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_261063964(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64790, &qword_2610C7710);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t PASFlowStepFamilyPicker.familyMembers.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  return v1;
}

uint64_t sub_261063B5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  *a2 = v5;
  return result;
}

uint64_t sub_261063BDC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t sub_261063C74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE66118, &unk_2610CC210);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  sub_2610BC824();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_261063DF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider);
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 16);
  }

  else
  {
    v4 = qword_27FE637E0;

    if (v4 != -1)
    {
      swift_once();
    }

    v3 = sub_260F9D764();
    v5 = *(v1 + 16);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v3;
}

uint64_t sub_261063ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &unk_27FE63B90, &unk_2610BED50);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &unk_27FE63B90, &unk_2610BED50);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9FF64(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &unk_27FE63B90, &unk_2610BED50);
  swift_endAccess();
}

uint64_t sub_26106400C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock;
  swift_beginAccess();
  sub_260FA9918(v1 + v3, &v7, &qword_27FE64740, &qword_2610C2530);
  if (v8)
  {
    return sub_260F98E14(&v7, a1);
  }

  sub_260FA9980(&v7, &qword_27FE64740, &qword_2610C2530);
  sub_261063ED0(&v7);
  v5 = v8;
  v6 = v9;
  __swift_project_boxed_opaque_existential_1(&v7, v8);
  (*(v6 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(&v7);
  sub_260FA99E0(a1, &v7);
  swift_beginAccess();
  sub_260FC3844(&v7, v1 + v3, &qword_27FE64740, &qword_2610C2530);
  return swift_endAccess();
}

uint64_t PASFlowStepFamilyPicker.__allocating_init(delegate:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_261068D50(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_261064174@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider);
  swift_beginAccess();
  sub_260FA9918(v3 + 16, &v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (v7)
  {
    return sub_260F98E14(&v6, a1);
  }

  sub_260FA9980(&v6, &qword_27FE63AD0, qword_2610C7BC0);
  if (qword_27FE637E0 != -1)
  {
    swift_once();
  }

  sub_260F9EB74(&v6);
  sub_260FA99E0(&v6, a1);
  sub_260F98E14(&v6, v5);
  swift_beginAccess();
  sub_260FC3844(v5, v3 + 16, &qword_27FE63AD0, qword_2610C7BC0);
  swift_endAccess();
}

uint64_t sub_2610642B0()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics);
  }

  else
  {
    v3 = v0;
    sub_261064174(v8);
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v2 = (*(v5 + 8))(&type metadata for PickerAnalyticsEvent, &off_28738B258, v4, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    v6 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t PASFlowStepFamilyPicker.__allocating_init(delegate:dataSource:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = sub_2610692CC(a1, a2, v9, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v10;
}

uint64_t PASFlowStepFamilyPicker.init(delegate:dataSource:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a3[3];
  v8 = a3[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a3, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = sub_261068E98(a1, a2, v12, v3, v7, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a3);
  return v14;
}

uint64_t PASFlowStepFamilyPicker.prepareForPresentation()()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646C8, &qword_2610C24F0);
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646D0, &qword_2610C24F8);
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = sub_2610BCC74();
  v1[13] = sub_2610BCC64();
  v8 = swift_task_alloc();
  v1[14] = v8;
  *v8 = v1;
  v8[1] = sub_261064684;

  return sub_26104582C();
}

uint64_t sub_261064684()
{
  v2 = v0;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v10 = *v1;
  *(*v1 + 120) = v2;

  v7 = sub_2610BCBF4();
  if (v2)
  {
    v8 = sub_260FD895C;
  }

  else
  {
    v8 = sub_2610647E0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2610647E0()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  sub_261063DF8();
  v10 = v9;
  ObjectType = swift_getObjectType();
  (*(v10 + 48))(ObjectType, v10);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646D8, &qword_2610C2500);
  sub_260FDD378(&qword_27FE646E0, &qword_27FE646C8, &qword_2610C24F0);
  sub_2610BC874();
  (*(v7 + 8))(v4, v6);
  sub_260FDD378(&qword_27FE646E8, &qword_27FE646D0, &qword_2610C24F8);

  sub_2610BC8A4();

  (*(v3 + 8))(v2, v5);
  swift_beginAccess();
  sub_2610BC7D4();
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_261064A0C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v8[0] = 0xD000000000000015;
  v8[1] = 0x80000002610D1820;
  v5 = (*(v4 + 24))(v8, v3, v4);

  if (v5)
  {
    v7 = *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes);
    *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes) = &unk_2873836C8;
  }

  return result;
}

uint64_t PASFlowStepFamilyPicker.fetchFamilyMembers(using:)(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_2610BCC34();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  sub_2610BCC74();
  v2[14] = sub_2610BCC64();
  v7 = sub_2610BCBF4();
  v2[15] = v7;
  v2[16] = v6;

  return MEMORY[0x2822009F8](sub_261064BC8, v7, v6);
}

uint64_t sub_261064BC8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[17] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepFamilyPicker fetchFamilyMembers", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_261064D1C;
  v6 = v0[9];
  v7 = v0[10];

  return sub_261065434(v6);
}

uint64_t sub_261064D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_2610651C0;
  }

  else
  {
    v7 = sub_261064E58;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261064E58()
{
  v1 = v0[10];
  sub_2610660F4();
  v0[20] = sub_2610642B0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v2 = v0[8];
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v4 = v0[8];
    }

    v5 = v0[8];
    v3 = sub_2610BD0E4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[21] = v3;

  return MEMORY[0x2822009F8](sub_261064F54, 0, 0);
}

uint64_t sub_261064F54()
{
  v1 = *(v0 + 168);
  *(v0 + 40) = &type metadata for PickerAnalyticsEvent;
  *(v0 + 48) = &off_28738B258;
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_261065018;
  v3 = *(v0 + 160);

  return sub_261047C34(v0 + 16, 0, 0);
}

void sub_261065018()
{
  v2 = *v1;
  v3 = (*v1)[22];
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[20];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 2);
    v6 = v2[15];
    v7 = v2[16];

    MEMORY[0x2822009F8](sub_261065158, v6, v7);
  }
}

uint64_t sub_261065158()
{
  v1 = v0[14];

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2610651C0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 88);

  *(v0 + 56) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 152);
  v8 = *(v0 + 136);
  if (v6)
  {

    v9 = sub_2610BC794();
    v10 = sub_2610BCD84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_260F97000, v9, v10, "PASFlowStepFamilyPicker fetchFamilyMembers task was cancelled", v11, 2u);
      MEMORY[0x2666F8720](v11, -1, -1);
    }

    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = *(v0 + 88);

    (*(v13 + 8))(v12, v14);
    v15 = *(v0 + 56);
  }

  else
  {

    v16 = v7;
    v17 = sub_2610BC794();
    v18 = sub_2610BCD64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 152);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_260F97000, v17, v18, "PASFlowStepFamilyPicker fetchFamilyMembers failed with error %{public}@", v20, 0xCu);
      sub_260FA9980(v21, &qword_27FE63FF0, &unk_2610BFDA0);
      MEMORY[0x2666F8720](v21, -1, -1);
      MEMORY[0x2666F8720](v20, -1, -1);
    }

    v24 = *(v0 + 152);
    v25 = *(v0 + 80);

    v26 = *(v25 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
    *(v25 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = v24;

    v27 = v24;
    sub_2610439BC();
    v15 = v24;
  }

  v28 = *(v0 + 104);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_261065434(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_2610BCC74();
  v2[20] = sub_2610BCC64();
  v4 = sub_2610BCBF4();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_2610654CC, v4, v3);
}

uint64_t sub_2610654CC()
{
  v1 = v0[19];
  sub_26106400C((v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_2610655FC;

  return v8(v2, v3);
}

uint64_t sub_2610655FC(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 240) = a1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_261065724, v5, v4);
}

uint64_t sub_261065724()
{
  v1 = *(v0 + 240);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  if (v1 == 1)
  {
    v2 = *(v0 + 152);
    sub_26106400C(v0 + 56);
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    v5 = *(v4 + 16);
    v15 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 192) = v7;
    *v7 = v0;
    v7[1] = sub_26106595C;

    return v15(v3, v4);
  }

  else
  {
    v9 = *(v0 + 160);

    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v10 = sub_2610BC7B4();
    __swift_project_value_buffer(v10, qword_27FE65900);
    v11 = sub_2610BC794();
    v12 = sub_2610BCD64();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_260F97000, v11, v12, "PASFlowStepFamilyPicker setFamilyMembers called again!", v13, 2u);
      MEMORY[0x2666F8720](v13, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_26106595C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 176);
  v6 = *(v2 + 168);
  if (v0)
  {
    v7 = sub_261066024;
  }

  else
  {
    v7 = sub_261065A98;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261065A98()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepFamilyPicker setFamilyMembers called", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_261065BF0;
  v6 = v0[18];
  v7 = v0[19];

  return sub_2610664C0(v6);
}

uint64_t sub_261065BF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = v4[21];
    v8 = v4[22];
    v9 = sub_261066090;
  }

  else
  {
    v4[28] = a1;
    v7 = v4[21];
    v8 = v4[22];
    v9 = sub_261065D18;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_261065D18()
{
  v1 = v0[28];
  v2 = v0[19];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[17] = v1;

  sub_2610BC854();
  sub_26106400C((v0 + 12));
  v3 = v0[15];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
  v5 = *(v4 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[29] = v7;
  *v7 = v0;
  v7[1] = sub_261065E98;

  return v9(v3, v4);
}

uint64_t sub_261065E98()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v6 = *v0;

  v3 = *(v1 + 176);
  v4 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_261065FB8, v4, v3);
}

uint64_t sub_261065FB8()
{
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261066024()
{
  v1 = v0[20];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

uint64_t sub_261066090()
{
  v1 = v0[20];

  v2 = v0[27];
  v3 = v0[1];

  return v3();
}

void sub_2610660F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v0 = v15;
  if (v15 >> 62)
  {
LABEL_20:
    v1 = sub_2610BD0E4();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
LABEL_3:
      v2 = 0;
      v14 = v1;
      do
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v3 = MEMORY[0x2666F78E0](v2, v0);
          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
LABEL_17:
            __break(1u);
LABEL_18:

            swift_getKeyPath();
            swift_getKeyPath();
            *&v15 = v3;

            sub_2610BC854();
            return;
          }
        }

        else
        {
          if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v3 = *(v0 + 8 * v2 + 32);

          v4 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            goto LABEL_17;
          }
        }

        v5 = *(v3 + 16);
        if (v5 >> 62)
        {
          if (v5 >> 62 != 1)
          {
            v17 = 0;
            v15 = 0u;
            v16 = 0u;

            sub_260FA9980(&v15, &unk_27FE656B0, &unk_2610BFCE0);
            goto LABEL_5;
          }

          v6 = type metadata accessor for PASAccountWithImage();
          *(&v16 + 1) = v6;
          v7 = sub_261069814(&unk_27FE65010, type metadata accessor for PASAccountWithImage);
          v17 = v7;
          v5 &= 0x3FFFFFFFFFFFFFFFuLL;
        }

        else
        {
          v6 = type metadata accessor for PASFamilyMember();
          *(&v16 + 1) = v6;
          v7 = sub_261069814(&unk_27FE64210, type metadata accessor for PASFamilyMember);
          v17 = v7;
        }

        *&v15 = v5;
        __swift_project_boxed_opaque_existential_1(&v15, v6);
        v8 = *(v7 + 72);

        v9 = v8(v6, v7);
        __swift_destroy_boxed_opaque_existential_0Tm(&v15);
        if (v9)
        {
          goto LABEL_18;
        }

        v1 = v14;
LABEL_5:
        ++v2;
      }

      while (v4 != v1);
    }
  }

  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v10 = sub_2610BC7B4();
  __swift_project_value_buffer(v10, qword_27FE65900);
  v11 = sub_2610BC794();
  v12 = sub_2610BCD64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_260F97000, v11, v12, "Failed to select current user because the current family member was not in the list", v13, 2u);
    MEMORY[0x2666F8720](v13, -1, -1);
  }
}

void PASFlowStepFamilyPicker.setError(error:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
  *(v1 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = a1;

  v4 = a1;

  sub_2610439BC();
}

uint64_t sub_2610664C0(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2610664E0, 0, 0);
}

uint64_t sub_2610664E0()
{
  v1 = (v0[4] + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_261066618;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t sub_261066618(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_2610669F0;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_261066740;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261066740()
{
  v1 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE664E0, &unk_2610CC230);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2610C23D0;
  type metadata accessor for PASPickerPresentable();
  v3 = swift_allocObject();
  *(v3 + 16) = v1 | 0x4000000000000000;
  *(v2 + 32) = v3;
  v0[8] = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261066828;
  v5 = v0[4];

  return sub_261066BF4();
}

uint64_t sub_261066828(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 64);

    v8 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 80) = a1;

  return MEMORY[0x2822009F8](sub_26106697C, 0, 0);
}

uint64_t sub_26106697C()
{
  v3 = v0[8];
  sub_26106859C(v0[10]);
  v1 = v0[1];

  return v1(v3);
}

uint64_t sub_2610669F0()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v0 + 16) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepFamilyPicker fetchMemberPresentables failed to fetch local account: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  *(v0 + 64) = MEMORY[0x277D84F90];
  v13 = swift_task_alloc();
  *(v0 + 72) = v13;
  *v13 = v0;
  v13[1] = sub_261066828;
  v14 = *(v0 + 32);

  return sub_261066BF4();
}

uint64_t sub_261066C14()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_261066D44;

  return v8(v2, v3);
}

uint64_t sub_261066D44(char a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 32);
  v7 = *v3;
  *(v5 + 40) = a2;
  *(v5 + 48) = v2;

  if (v2)
  {
    v8 = sub_26106719C;
  }

  else
  {
    *(v5 + 74) = a1 & 1;
    v8 = sub_261066E70;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_261066E70()
{
  sub_2610BCC74();
  *(v0 + 56) = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261066F04, v2, v1);
}

uint64_t sub_261066F04()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 74);
  v3 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 73) = v2;

  sub_2610BC854();

  return MEMORY[0x2822009F8](sub_261066FC8, 0, 0);
}

uint64_t sub_261066FC8()
{
  v1 = *(v0 + 40);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v14 = *(v0 + 40);
    }

    v2 = sub_2610BD0E4();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    v15 = *(v0 + 40);

    v13 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  v17 = MEMORY[0x277D84F90];
  result = sub_2610BD044();
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      v5 = *(v0 + 40);
      v6 = v4 + 1;
      v7 = MEMORY[0x2666F78E0]();
      type metadata accessor for PASPickerPresentable();
      *(swift_allocObject() + 16) = v7;
      sub_2610BD024();
      v8 = *(v17 + 16);
      sub_2610BD054();
      sub_2610BD064();
      sub_2610BD034();
      v4 = v6;
    }

    while (v2 != v6);
  }

  else
  {
    v9 = (*(v0 + 40) + 32);
    type metadata accessor for PASPickerPresentable();
    do
    {
      v10 = *v9++;
      *(swift_allocObject() + 16) = v10;

      sub_2610BD024();
      v11 = *(v17 + 16);
      sub_2610BD054();
      sub_2610BD064();
      sub_2610BD034();
      --v2;
    }

    while (v2);
  }

  v12 = *(v0 + 40);

  v13 = v17;
LABEL_15:
  v16 = *(v0 + 8);

  return v16(v13);
}

uint64_t sub_26106719C()
{
  v17 = v0;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v10 = sub_2610BCA34();
    v12 = sub_260FA5970(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_260F97000, v4, v5, "PASFlowStepFamilyPicker fetchMemberPresentables failed to fetch family members: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2666F8720](v8, -1, -1);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  sub_2610BCC74();
  v0[8] = sub_2610BCC64();
  v14 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_261067390, v14, v13);
}

uint64_t sub_261067390()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 72) = 1;

  sub_2610BC854();

  return MEMORY[0x2822009F8](sub_26106744C, 0, 0);
}

uint64_t sub_26106744C()
{
  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t PASFlowStepFamilyPicker.setSelectedMember(_:)()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2610BC854();
}

uint64_t PASFlowStepFamilyPicker.nextStep()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error);
    swift_willThrow();
    v3 = v1;
  }

  else
  {
    v4 = v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup21PASSourceFlowStepBase_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = *(v4 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2610BC844();

    sub_261067728(v16[0], v0, v16);

    v7 = type metadata accessor for PASFlowStepSendSelectedAccount();
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    v10 = swift_allocObject();
    v11 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__messageSessionProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
    v12 = swift_allocObject();
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0;
    *(v10 + v11) = v12;
    v13 = OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount__deviceProvider;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v10 + v13) = v14;
    *(v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_isSignInForSelfSupported) = 0;
    sub_260FDD49C(v16, v10 + OBJC_IVAR____TtC21ProximityAppleIDSetup30PASFlowStepSendSelectedAccount_familyMemberSelection);
    v0 = sub_26104DC44(Strong, v6);
    swift_unknownObjectRelease();
    sub_260FDD4F8(v16);
    sub_261069814(&qword_27FE64700, type metadata accessor for PASFlowStepSendSelectedAccount);
  }

  return v0;
}

id sub_261067728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v11 = result;
      v32 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v33 = &off_28738B470;
      *&v31 = v11;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v12 = result;
        v29 = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
        v30 = &protocol witness table for AKAppleIDAuthenticationController;
        *&v28 = v12;
        v13 = type metadata accessor for FACreateChildProxiedAuthController();
        v14 = swift_allocObject();
        sub_260F98E14(&v31, v14 + 16);
        result = sub_260F98E14(&v28, v14 + 56);
        *(a3 + 24) = v13;
        *(a3 + 32) = &off_28738AEB8;
        *a3 = v14;
LABEL_20:
        *(a3 + 48) = 0;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v4 = *(a1 + 16);
  if (!(v4 >> 62))
  {
    *a3 = v4;
    v15 = *(a2 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes);
    v16 = objc_opt_self();
    swift_retain_n();

    result = [v16 defaultStore];
    if (result)
    {
      v17 = result;
      v32 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v33 = &off_28738B470;
      *&v31 = v17;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v18 = sub_26106872C(v4, &v31, result, v15);
        *(a3 + 32) = type metadata accessor for FAFamilyMemberProxiedAuthController();
        *(a3 + 40) = &off_28738B510;

        *(a3 + 8) = v18;
        *(a3 + 48) = 1;
        return result;
      }

      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v4 >> 62 != 1)
  {
    v19 = qword_27FE63808;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_2610BC7B4();
    __swift_project_value_buffer(v20, qword_27FE65900);
    v21 = sub_2610BC794();
    v22 = sub_2610BCD74();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_260F97000, v21, v22, "Add child presentable isn't provided for Family Picker. This should never happen.", v23, 2u);
      MEMORY[0x2666F8720](v23, -1, -1);
    }

    result = [objc_opt_self() defaultStore];
    if (result)
    {
      v24 = result;
      v32 = sub_260FA9AB4(0, &qword_27FE63CC8, 0x277CB8F48);
      v33 = &off_28738B470;
      *&v31 = v24;
      result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
      if (result)
      {
        v25 = result;
        v29 = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
        v30 = &protocol witness table for AKAppleIDAuthenticationController;
        *&v28 = v25;
        v26 = type metadata accessor for FACreateChildProxiedAuthController();
        v27 = swift_allocObject();
        sub_260F98E14(&v31, v27 + 16);
        sub_260F98E14(&v28, v27 + 56);
        *(a3 + 24) = v26;
        *(a3 + 32) = &off_28738AEB8;

        *a3 = v27;
        goto LABEL_20;
      }

LABEL_26:
      __break(1u);
      return result;
    }

    goto LABEL_24;
  }

  *a3 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = type metadata accessor for PASPersonalSourceAuthController();
  v6 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE657C0, &qword_2610BEE90);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0;
  v6[2] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v8 = swift_allocObject();
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0;
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0;
  v6[4] = v9;
  *(a3 + 32) = v5;
  *(a3 + 40) = &off_28738AC20;
  *(a3 + 8) = v6;
  *(a3 + 48) = 2;
}

Swift::Void __swiftcall PASFlowStepFamilyPicker.continueWithSelectedAccount()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v16 - v2;
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v4 = sub_2610BC7B4();
  __swift_project_value_buffer(v4, qword_27FE65900);
  v5 = sub_2610BC794();
  v6 = sub_2610BCD84();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_260F97000, v5, v6, "PASFlowStepFamilyPicker continueWithSelectedAccount", v7, 2u);
    MEMORY[0x2666F8720](v7, -1, -1);
  }

  v8 = sub_2610642B0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  if (v17 >> 62)
  {
    v9 = sub_2610BD0E4();
  }

  else
  {
    v9 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v10 = v17;
  v11 = sub_2610BCC94();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  LOBYTE(v17) = 1;
  v12 = qword_27FE63820;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_27FE65948;
  v14 = sub_261069814(&qword_27FE646F8, type metadata accessor for PASAnalyticsActor.PASAnalyticsActorType);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  *(v15 + 32) = v8;
  *(v15 + 40) = v9;
  *(v15 + 48) = v10;
  *(v15 + 56) = v17;

  sub_261042434(0, 0, v3, &unk_2610C2520, v15);

  sub_2610439BC();
}

uint64_t PASFlowStepFamilyPicker.createNewAccount()()
{
  v1[9] = v0;
  sub_2610BCC74();
  v1[10] = sub_2610BCC64();
  v3 = sub_2610BCBF4();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_261067FE8, v3, v2);
}

uint64_t sub_261067FE8()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASFlowStepFamilyPicker createNewAccount", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[9];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[7] = 0;

  sub_2610BC854();
  v0[13] = sub_2610642B0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2610BC844();

  v6 = v0[8];
  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v8 = v0[8];
    }

    v9 = v0[8];
    v7 = sub_2610BD0E4();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v0[14] = v7;

  return MEMORY[0x2822009F8](sub_260FDB42C, 0, 0);
}

uint64_t sub_2610681D8()
{
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource));
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider);

  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes);

  v9 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider);

  v10 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__featureFlagsProvider);

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock, &qword_27FE64740, &qword_2610C2530);
  v11 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider);

  v12 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics);
}

uint64_t PASFlowStepFamilyPicker.deinit()
{
  v0 = PASSourceFlowStepBase.deinit();
  v1 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource));
  v7 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider);

  v8 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes);

  v9 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider);

  v10 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__featureFlagsProvider);

  sub_260FA9980(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock, &qword_27FE64740, &qword_2610C2530);
  v11 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider);

  v12 = *(v0 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics);

  return v0;
}

uint64_t PASFlowStepFamilyPicker.__deallocating_deinit()
{
  v0 = PASFlowStepFamilyPicker.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26106859C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2610BD0E4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2610BD0E4();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_26106868C(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_26108430C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_26106868C(uint64_t a1)
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
    sub_2610BD0E4();
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
  result = sub_2610BCFD4();
  *v1 = result;
  return result;
}

uint64_t sub_26106872C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v16[3] = sub_260FA9AB4(0, &unk_27FE63D10, 0x277CF0178);
  v16[4] = &protocol witness table for AKAppleIDAuthenticationController;
  v16[0] = a3;
  v15[3] = &type metadata for PASUserPasswordDataSource;
  v15[4] = &protocol witness table for PASUserPasswordDataSource;
  v14[3] = type metadata accessor for PASFamilyMember();
  v14[4] = sub_261069814(&unk_27FE64210, type metadata accessor for PASFamilyMember);
  v14[0] = a1;
  type metadata accessor for FAFamilyMemberProxiedAuthController();
  v8 = swift_allocObject();
  sub_260FA99E0(v14, v8 + 16);
  sub_260FA99E0(a2, v8 + 56);
  sub_260FA99E0(v16, v8 + 96);
  sub_260FA99E0(v15, v8 + 136);
  *(v8 + 176) = a4;
  if (!*(a4 + 16))
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v9 = sub_2610BC7B4();
    __swift_project_value_buffer(v9, qword_27FE65900);
    v10 = sub_2610BC794();
    v11 = sub_2610BCD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_260F97000, v10, v11, "FAFamilyMemberProxiedAuthController was init'ed with no auth modes!", v12, 2u);
      MEMORY[0x2666F8720](v12, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  return v8;
}

uint64_t sub_261068920(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  v6 = *(v38 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v38);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  v42[3] = &type metadata for PASFamilyMemberPickerDataSource;
  v42[4] = &protocol witness table for PASFamilyMemberPickerDataSource;
  v20 = swift_allocObject();
  v41 = 0;
  v42[0] = v20;
  v21 = a3[3];
  v20[3] = a3[2];
  v20[4] = v21;
  v20[5] = a3[4];
  v22 = a3[1];
  v20[1] = *a3;
  v20[2] = v22;
  v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64788, &qword_2610C25B8);
  sub_2610BC804();
  (*(v16 + 32))(a4 + v23, v19, v15);
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  LOBYTE(v41) = 0;
  sub_2610BC804();
  (*(v11 + 32))(a4 + v24, v14, v10);
  v25 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v41 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66110, &qword_2610CC1C0);
  sub_2610BC804();
  (*(v6 + 32))(a4 + v25, v9, v38);
  v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(a4 + v26) = v27;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes) = &unk_2873831F8;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = 0;
  v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A8, &unk_2610C2630);
  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  *(a4 + v28) = v29;
  v30 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a4 + v30) = v31;
  v32 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0;
  *(a4 + v33) = v34;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics) = 0;
  sub_260FA99E0(v42, a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v35 = sub_26104DC44(v39, v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v42);
  return v35;
}

uint64_t sub_261068D50(uint64_t a1, uint64_t a2)
{
  v14[5] = type metadata accessor for PASFamilyMemberImageProvider();
  v14[6] = &protocol witness table for PASFamilyMemberImageProvider;
  v14[2] = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64220, &unk_2610C0560);
  v4 = swift_allocObject();
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v14[7] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A0, &unk_2610C2620);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  v14[8] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 48) = 0;
  v14[9] = v6;
  v14[0] = sub_2610807B0;
  v14[1] = 0;
  v7 = type metadata accessor for PASFlowStepFamilyPicker();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  sub_260FDD844(v14, v13);
  v11 = sub_261068920(a1, a2, v13, v10);
  sub_260FDD8A0(v14);
  return v11;
}

uint64_t sub_261068E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v39 = a3;
  v41 = a1;
  v42 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66080, &qword_2610CBF30);
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63D00, &unk_2610BEEB0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE646B8, &qword_2610C24D8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v44[3] = a5;
  v44[4] = v38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, v39, a5);
  v23 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__selectedMember;
  v43 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE64788, &qword_2610C25B8);
  sub_2610BC804();
  (*(v18 + 32))(a4 + v23, v21, v17);
  v24 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__canAddMembers;
  LOBYTE(v43) = 0;
  sub_2610BC804();
  (*(v13 + 32))(a4 + v24, v16, v12);
  v25 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__familyMembers;
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66110, &qword_2610CC1C0);
  sub_2610BC804();
  (*(v8 + 32))(a4 + v25, v11, v40);
  v26 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__deviceProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65BC0, &qword_2610BFD90);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(a4 + v26) = v27;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_supportedAuthModes) = &unk_2873836A0;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_error) = 0;
  v28 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__lockProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE647A8, &unk_2610C2630);
  v29 = swift_allocObject();
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0;
  *(a4 + v28) = v29;
  v30 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__featureFlagsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63860, &unk_2610C2CE0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0;
  *(a4 + v30) = v31;
  v32 = a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___fetchLock;
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0;
  v33 = OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker__analyticsProvider;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE65450, &unk_2610C7CC0);
  v34 = swift_allocObject();
  *(v34 + 16) = 0u;
  *(v34 + 32) = 0u;
  *(v34 + 48) = 0;
  *(a4 + v33) = v34;
  *(a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker____lazy_storage___analytics) = 0;
  sub_260FA99E0(v44, a4 + OBJC_IVAR____TtC21ProximityAppleIDSetup23PASFlowStepFamilyPicker_dataSource);
  v35 = sub_26104DC44(v41, v42);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  return v35;
}

uint64_t sub_2610692CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  (*(v11 + 16))(v14, a3, a5);
  return sub_261068E98(a1, a2, v14, v18, a5, a6);
}

unint64_t sub_2610693DC()
{
  result = qword_27FE660C8;
  if (!qword_27FE660C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660C8);
  }

  return result;
}

unint64_t sub_261069430(void *a1)
{
  a1[1] = sub_261069468();
  a1[2] = sub_2610694BC();
  result = sub_261069510();
  a1[3] = result;
  return result;
}

unint64_t sub_261069468()
{
  result = qword_27FE660D0;
  if (!qword_27FE660D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660D0);
  }

  return result;
}

unint64_t sub_2610694BC()
{
  result = qword_27FE660D8;
  if (!qword_27FE660D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660D8);
  }

  return result;
}

unint64_t sub_261069510()
{
  result = qword_27FE660E0;
  if (!qword_27FE660E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660E0);
  }

  return result;
}

unint64_t sub_261069564()
{
  result = qword_27FE660E8;
  if (!qword_27FE660E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE660E8);
  }

  return result;
}

uint64_t sub_2610695B8(uint64_t a1)
{
  result = sub_261069814(&qword_27FE660F0, type metadata accessor for PASFlowStepFamilyPicker);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for PASFlowStepFamilyPicker()
{
  result = qword_27FE660F8;
  if (!qword_27FE660F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261069674()
{
  sub_260FC5678(319, &qword_27FE64780, &qword_27FE64788, &qword_2610C25B8);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_260FDD7E4();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_260FC5678(319, &qword_27FE66108, &qword_27FE66110, &qword_2610CC1C0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_261069814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2610698BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_26106990C(a1, a2);
  return v4;
}

uint64_t *sub_26106990C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_defaultActor_initialize();
  v6 = *(v5 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  sub_2610BCC24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v9 = sub_2610BCB74();
  v10 = sub_261040F14(v9, v8, TupleTypeMetadata2, MEMORY[0x277D837E0]);

  v2[15] = a2;
  v2[16] = v10;
  v2[14] = a1;
  return v2;
}

uint64_t sub_261069A1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v49 = a4;
  v50 = a3;
  v7 = *(*v4 + 80);
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v42 = v7;
  v45 = v12;
  v13 = sub_2610BCC24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = sub_2610BCE64();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v47 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v43 = *(v13 - 8);
  v23 = *(v43 + 64);
  MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  swift_beginAccess();
  v46 = v4;
  v26 = v4[16];
  v51 = a1;
  v52[0] = a1;
  v52[1] = a2;

  sub_2610BC964();
  v27 = a2;

  v28 = *(TupleTypeMetadata2 - 8);
  if ((*(v28 + 48))(v22, 1, TupleTypeMetadata2) == 1)
  {
    return (*(v16 + 8))(v22, v15);
  }

  v44 = *&v22[*(TupleTypeMetadata2 + 48)];
  v30 = v43;
  (*(v43 + 32))(v25, v22, v13);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v31 = sub_2610BC7B4();
  __swift_project_value_buffer(v31, qword_27FE65900);

  v32 = sub_2610BC794();
  v33 = sub_2610BCD84();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v52[0] = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_260FA5970(v51, v27, v52);
    _os_log_impl(&dword_260F97000, v32, v33, "Received incoming response from peer for identifier: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x2666F8720](v35, -1, -1);
    MEMORY[0x2666F8720](v34, -1, -1);
  }

  v36 = v48;
  v37 = sub_2610BCCB4();
  v50(v37);
  v38 = v41;
  v39 = v42;
  (*(v41 + 16))(v40, v36, v42);
  sub_2610BCC14();
  (*(v38 + 8))(v36, v39);
  (*(v28 + 56))(v47, 1, 1, TupleTypeMetadata2);
  v52[3] = v51;
  v52[4] = v27;
  swift_beginAccess();
  sub_2610BC934();

  sub_2610BC974();
  swift_endAccess();

  return (*(v30 + 8))(v25, v13);
}

uint64_t sub_261069FE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = sub_2610BCC24();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_2610BCE64();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v35 - v17;
  v19 = sub_2610BCC94();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  type metadata accessor for IDSResponseHandler();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = WitnessTable;
  v21[4] = v4;
  v21[5] = a1;
  v21[6] = a2;
  swift_retain_n();

  v22 = sub_261042D5C(0, 0, v18, &unk_2610CC338, v21);
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v23 = sub_2610BC7B4();
  __swift_project_value_buffer(v23, qword_27FE65900);

  v24 = sub_2610BC794();
  v25 = sub_2610BCD84();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v37 = a3;
    v27 = v26;
    v28 = swift_slowAlloc();
    v36 = v9;
    v29 = a1;
    v30 = v28;
    v38[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_260FA5970(v29, a2, v38);
    _os_log_impl(&dword_260F97000, v24, v25, "Sent outgoing request to peer for identifier: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    v31 = v30;
    a1 = v29;
    v9 = v36;
    MEMORY[0x2666F8720](v31, -1, -1);
    v32 = v27;
    a3 = v37;
    MEMORY[0x2666F8720](v32, -1, -1);
  }

  v33 = *(TupleTypeMetadata2 + 48);
  (*(*(v9 - 8) + 16))(v14, a3, v9);
  *&v14[v33] = v22;
  (*(*(TupleTypeMetadata2 - 8) + 56))(v14, 0, 1, TupleTypeMetadata2);
  v38[3] = a1;
  v38[4] = a2;
  swift_beginAccess();
  sub_2610BC934();

  sub_2610BC974();
  swift_endAccess();
}

uint64_t sub_26106A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v8 = *(*a4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = sub_2610BCC24();
  v6[16] = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE661A0, &unk_2610CC320);
  v6[17] = swift_getTupleTypeMetadata2();
  v10 = sub_2610BCE64();
  v6[18] = v10;
  v11 = *(v10 - 8);
  v6[19] = v11;
  v12 = *(v11 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v13 = *(v9 - 8);
  v6[22] = v13;
  v14 = *(v13 + 64) + 15;
  v6[23] = swift_task_alloc();
  v15 = sub_2610BD084();
  v6[24] = v15;
  v16 = *(v15 - 8);
  v6[25] = v16;
  v17 = *(v16 + 64) + 15;
  v6[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26106A610, a4, 0);
}

uint64_t sub_26106A610()
{
  v1 = v0[26];
  v2 = v0[13];
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  sub_2610BD474();
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_26106A6E0;
  v6 = v0[26];

  return sub_261096BAC(v4, v3, 0, 0, 1);
}

uint64_t sub_26106A6E0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  v6 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 224) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 104);
  if (v0)
  {
    v9 = sub_26106AB0C;
  }

  else
  {
    v9 = sub_26106A868;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_26106A868()
{
  v1 = v0[21];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  swift_beginAccess();
  v6 = *(v5 + 128);
  v0[8] = v4;
  v0[9] = v3;

  sub_2610BC964();

  v7 = *(v2 - 8);
  if ((*(v7 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[19] + 8))(v0[21], v0[18]);
  }

  else
  {
    v9 = v0[22];
    v8 = v0[23];
    v11 = v0[20];
    v10 = v0[21];
    v12 = v0[16];
    v13 = v0[17];
    v23 = v0[14];
    v24 = v0[15];
    v14 = *(v10 + *(v13 + 48));

    (*(v9 + 32))(v8, v10, v12);
    sub_26106ACF4();
    v15 = swift_allocError();
    *v16 = 4;
    v0[12] = v15;
    sub_2610BCC04();
    (*(v7 + 56))(v11, 1, 1, v13);
    v0[10] = v23;
    v0[11] = v24;
    swift_beginAccess();
    sub_2610BC934();

    sub_2610BC974();
    swift_endAccess();
    (*(v9 + 8))(v8, v12);
  }

  v17 = v0[26];
  v18 = v0[23];
  v20 = v0[20];
  v19 = v0[21];

  v21 = v0[1];

  return v21();
}

uint64_t sub_26106AB0C()
{
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];

  v5 = v0[1];
  v6 = v0[28];

  return v5();
}

uint64_t sub_26106AB98()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_26106ABC0()
{
  v1 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26106AC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260FB6DB4;

  return sub_26106A40C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_26106ACF4()
{
  result = qword_27FE66E70;
  if (!qword_27FE66E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE66E70);
  }

  return result;
}

uint64_t Message.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2610BC614();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Message.metrics.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *(v2 + v4);

  *(v2 + v4) = v3;
  return result;
}

uint64_t (*Message.metrics.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t (*Message.command.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t static Message.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_2610BC5F4() & 1) == 0)
  {
    return 0;
  }

  v7 = type metadata accessor for Message();
  if (*(a1 + *(v7 + 36)) != *(a2 + *(v7 + 36)))
  {
    return 0;
  }

  v8 = v7;
  v9 = *(v7 + 40);
  v10 = *(a1 + v9);
  v15 = *(a2 + v9);
  v16 = v10;

  v11 = static Message.Metrics.== infix(_:_:)(&v16, &v15);

  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = *(v8 + 44);
  v13 = *(*(a4 + 24) + 8);
  return sub_2610BC9A4() & 1;
}

uint64_t sub_26106AFBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_2610BD384() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000 || (sub_2610BD384() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2610BD384();

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

uint64_t sub_26106B118(unsigned __int8 a1)
{
  v1 = 25705;
  v2 = 0x7363697274656DLL;
  if (a1 != 2)
  {
    v2 = 0x646E616D6D6F63;
  }

  if (a1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_26106B184(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_2610095B4(*a1, *a2);
}

uint64_t sub_26106B198(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_2610095EC(*v1);
}

uint64_t sub_26106B1A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_2610095C4(a1, *v2);
}

uint64_t sub_26106B1B0(uint64_t a1, uint64_t a2)
{
  sub_2610BD514();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_2610095C4(v7, *v2);
  return sub_2610BD574();
}

uint64_t sub_26106B1F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_26106B118(*v1);
}

uint64_t sub_26106B204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_26106AFBC(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_26106B234@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_26106C488();
  *a2 = result;
  return result;
}

uint64_t sub_26106B260(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26106B2B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Message.encode(to:)(void *a1, uint64_t a2)
{
  v21 = a2;
  v3 = v2;
  v5 = *(a2 + 16);
  v19 = *(a2 + 24);
  v20 = v5;
  type metadata accessor for Message.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_2610BD2D4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2610BD5F4();
  v27 = 0;
  sub_2610BC614();
  sub_26106BCE8(&qword_27FE661A8);
  v12 = v22;
  sub_2610BD2A4();
  if (!v12)
  {
    v13 = v19;
    v14 = *(v3 + v21[9]);
    v26 = 1;
    sub_2610BD2B4();
    v23 = *(v3 + v21[10]);
    v25 = 2;
    type metadata accessor for Message.Metrics();

    swift_getWitnessTable();
    sub_2610BD2A4();

    v15 = v21[11];
    v24 = 3;
    v16 = *(v13 + 16);
    sub_2610BD2A4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t Message.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_2610BC614();
  sub_26106BCE8(&qword_27FE661B0);
  sub_2610BC994();
  v5 = *(v2 + *(a2 + 36));
  sub_2610BD534();
  v12 = *(v2 + *(a2 + 40));
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for Message.Metrics();

  Message.Metrics.hash(into:)(a1, v8);

  v9 = *(v7 + 24);
  v10 = v2 + *(a2 + 44);
  return sub_2610BC994();
}

uint64_t Message.hashValue.getter(uint64_t a1)
{
  sub_2610BD514();
  Message.hash(into:)(v3, a1);
  return sub_2610BD574();
}

uint64_t Message.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v32 = *(a2 - 1);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](a1);
  v34 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2610BC614();
  v36 = *(v38 - 8);
  v9 = *(v36 + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Message.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_2610BD224();
  v35 = *(v41 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v30 - v12;
  v37 = a3;
  v14 = type metadata accessor for Message();
  v31 = *(v14 - 1);
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v40 = v13;
  v19 = v42;
  sub_2610BD5D4();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v20 = v35;
  v21 = v36;
  v42 = v17;
  v22 = v37;
  v47 = 0;
  sub_26106BCE8(qword_27FE661B8);
  v23 = v38;
  sub_2610BD1E4();
  v24 = v23;
  v25 = v42;
  (*(v21 + 32))(v42, v39, v24);
  v46 = 1;
  v25[v14[9]] = sub_2610BD1F4();
  v39 = a2;
  type metadata accessor for Message.Metrics();
  v45 = 2;
  swift_getWitnessTable();
  sub_2610BD1E4();
  *&v25[v14[10]] = v43;
  v44 = 3;
  v26 = *(v22 + 8);
  v27 = v39;
  sub_2610BD1E4();
  (*(v20 + 8))(v40, v41);
  (*(v32 + 32))(&v25[v14[11]], v34, v27);
  v28 = v31;
  (*(v31 + 16))(v33, v25, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return (*(v28 + 8))(v25, v14);
}

uint64_t sub_26106BCA4(uint64_t a1, uint64_t a2)
{
  sub_2610BD514();
  Message.hash(into:)(v4, a2);
  return sub_2610BD574();
}

uint64_t sub_26106BCE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2610BC614();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26106BD60(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_26106BE04(uint64_t a1)
{
  result = sub_2610BC614();
  if (v3 <= 0x3F)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
    result = type metadata accessor for Message.Metrics();
    if (v6 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26106BEB4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_2610BC614() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  if (v7 <= v9)
  {
    v12 = *(v8 + 84);
  }

  else
  {
    v12 = *(v6 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = ((v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1);
      }

      else
      {
        v23 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v8 + 48);

          return v25((v23 + v11 + 16) & ~v11, v9);
        }

        else
        {
          v24 = *(v23 + 8);
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = ((v11 + (v10 & 0xFFFFFFF8) + 16) & ~v11) + *(v8 + 64);
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_26106C12C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_2610BC614() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v9 <= v11)
  {
    v14 = *(v10 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = ((v13 + (v12 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v13) + *(v10 + 64);
  if (a3 <= v15)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v15 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
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

  if (v15 < a2)
  {
    v18 = ~v15 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v19 = (v18 >> (8 * v16)) + 1;
    if (v16)
    {
      v22 = v18 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v22;
          if (v17 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v18;
          if (v17 > 1)
          {
LABEL_14:
            if (v17 == 2)
            {
              *&a1[v16] = v19;
            }

            else
            {
              *&a1[v16] = v19;
            }

            return;
          }
        }

LABEL_51:
        if (v17)
        {
          a1[v16] = v19;
        }

        return;
      }

      *a1 = v22;
      a1[2] = BYTE2(v22);
    }

    if (v17 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v17)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 == v15)
  {
    v23 = *(v8 + 56);

    v23(a1, a2);
  }

  else
  {
    v24 = &a1[v12] & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v26 = *(v10 + 56);

      v26((v24 + v13 + 16) & ~v13, a2, v11);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v25 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v25 = (a2 - 1);
      }

      *(v24 + 8) = v25;
    }
  }
}

id PASAnisetteRemoteRequestHandler.__allocating_init(messageSessionProvider:anisetteController:)(uint64_t *a1, uint64_t *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = a2[3];
  v9 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v8);
  v11 = sub_261076AD4(v7, v10, v2, v5, v8, v6, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v11;
}

uint64_t sub_26106C524(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_2610BD594();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_2610BCC04();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_2610BCC14();
  }
}

uint64_t sub_26106C760(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_260FBF860;

  return v8();
}

uint64_t sub_26106C848(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    sub_2610BCF84();
    v5 = 0xD000000000000038;
    v6 = 0x80000002610D57F0;
  }

  else
  {
    sub_2610BCF84();
    v6 = 0x80000002610D5830;
    v5 = 0xD000000000000035;
  }

  MEMORY[0x2666F7380](v5, v6);
  MEMORY[0x2666F7380](a1, a2);
  return 0;
}

unint64_t sub_26106C90C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648B0, &unk_2610BFF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  v5 = *MEMORY[0x277CCA450];
  *(inited + 32) = sub_2610BCA04();
  *(inited + 40) = v6;
  v7 = sub_26106C848(v1, v2, v3);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_260FA8A9C(inited);
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE63C30, &unk_2610BEE00);
  return v9;
}

uint64_t sub_26106C9EC(uint64_t a1)
{
  v2 = sub_26107B20C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26106CA28(uint64_t a1)
{
  v2 = sub_26107B20C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_26106CA64(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0xE90000000000006ELL;
  v8 = 0x6F697369766F7270;
  v9 = 0xE500000000000000;
  v10 = 0x6863746566;
  v11 = 0xE600000000000000;
  v12 = 0x79636167656CLL;
  if (a1 != 4)
  {
    v12 = 0x7461747365747461;
    v11 = 0xEF617461446E6F69;
  }

  if (a1 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = 0xE400000000000000;
  v14 = 1668184435;
  if (a1 != 1)
  {
    v14 = 0x6573617265;
    v13 = 0xE500000000000000;
  }

  if (a1)
  {
    v8 = v14;
    v7 = v13;
  }

  if (a1 <= 2u)
  {
    v15 = v8;
  }

  else
  {
    v15 = v10;
  }

  if (a1 <= 2u)
  {
    v16 = v7;
  }

  else
  {
    v16 = v9;
  }

  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a3;
  v23[6] = a4;
  v24 = *(a7 + 32);

  v24(v15, v16, a2, sub_26107AEB4, v23, a5, a7);
}

uint64_t sub_26106CBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE65800, &qword_2610BF910);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v24 - v18;
  v20 = sub_2610BCC94();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = a7;
  v21[5] = a8;
  v21[6] = a9;
  v21[7] = a5;
  v21[8] = a6;
  v21[9] = a1;
  v22 = v25;
  v21[10] = a2;
  v21[11] = v22;
  v21[12] = a4;

  sub_261042434(0, 0, v19, &unk_2610CCA08, v21);
}

uint64_t sub_26106CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v16;
  v8[10] = v17;
  v8[7] = v14;
  v8[8] = v15;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v9 = sub_2610BD594();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26106CE68, 0, 0);
}

uint64_t sub_26106CE68()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = *(v0 + 64);
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  *(v4 + 56) = v3;
  *(v4 + 64) = v2;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_26106CF54;
  v7 = *(v0 + 104);
  v8 = *(v0 + 72);

  return Result<>.init(catching:)(v7, &unk_2610CCA18);
}

uint64_t sub_26106CF54()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26106D06C, 0, 0);
}

uint64_t sub_26106D06C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = sub_26100A520(v1, v0[9]);
  v5(v6, 0, v7);

  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_26106D128(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 96) = a2;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26106D158, 0, 0);
}

uint64_t sub_26106D158()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 96);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 56);
  *(v4 + 16) = *(v0 + 40);
  *(v4 + 32) = v5;
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
  *(v4 + 64) = v1;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_26106D268;
  v8 = *(v0 + 48);
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, 0, 0, 0xD000000000000021, 0x80000002610D5760, sub_26107793C, v4, v8);
}

uint64_t sub_26106D268()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (!v0)
  {
    v4 = v3[9];

    v5 = v3[1];

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_26106D3A4, 0, 0);
}

uint64_t sub_26106D3A4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_26106D408(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v39 = a2;
  v40 = a6;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v37 = a7;
  v13 = sub_2610BCC24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = 0xE90000000000006ELL;
  v19 = 0x6F697369766F7270;
  v20 = 0xE500000000000000;
  v21 = 0x6863746566;
  v22 = 0xE600000000000000;
  v23 = 0x79636167656CLL;
  if (a3 != 4)
  {
    v23 = 0x7461747365747461;
    v22 = 0xEF617461446E6F69;
  }

  if (a3 != 3)
  {
    v21 = v23;
    v20 = v22;
  }

  v24 = 0xE400000000000000;
  v25 = 1668184435;
  if (a3 != 1)
  {
    v25 = 0x6573617265;
    v24 = 0xE500000000000000;
  }

  if (a3)
  {
    v19 = v25;
    v18 = v24;
  }

  if (a3 <= 2u)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  v36 = v26;
  if (a3 <= 2u)
  {
    v27 = v18;
  }

  else
  {
    v27 = v20;
  }

  v41 = sub_260FA8BCC(MEMORY[0x277D84F90]);

  sub_261077950(v28, &v41, sub_26106D6D8, 0, a5);

  v29 = v41;
  (*(v14 + 16))(v17, a1, v13);
  v30 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v31 = swift_allocObject();
  v32 = v40;
  v33 = v37;
  *(v31 + 2) = v40;
  *(v31 + 3) = v33;
  *(v31 + 4) = a8;
  (*(v14 + 32))(&v31[v30], v17, v13);
  (*(a8 + 40))(v36, v27, v38, v29, sub_261077C78, v31, v32, a8);
}

uint64_t sub_26106D6D8(_BYTE *a1)
{
  *a1;
  *a1;
  *a1;
  return sub_2610BCF24();
}

uint64_t sub_26106D794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE648D0, &qword_2610BF450);
  v8 = sub_2610BD594();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_26100AA90(a3, a6, (&v15 - v11));
  v13 = sub_2610BCC24();
  sub_26106C524(v12, v13);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_26106D8C0@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = 0xE700000000000000;
  v5 = 0x617461446D6973;
  v6 = 0xEB000000006E6F69;
  v7 = 0x7369766F72506F64;
  if (a2 != 2)
  {
    v7 = 0x65757165526C7275;
    v6 = 0xEE00617461447473;
  }

  if (a2)
  {
    v5 = 1684632420;
    v4 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 > 1u)
  {
    v4 = v6;
  }

  *&v24 = v8;
  *(&v24 + 1) = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v11 = sub_260FA60B4(v25), (v12 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v11, v26);
    sub_260FA9764(v25);
    sub_260FA3F5C(v26, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v26);
      *a3 = v24;
    }

    else
    {
      sub_26107AEA0(0, 0xB000000000000000);
      sub_260FA3F5C(v26, v25);
      v17 = sub_2610BCA34();
      v19 = v18;
      v20 = a2;
      v21 = *&aSimdata_1[8 * a2];
      v22 = *&aDoprovisurlreq[8 * v20 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v23 = v17;
      *(v23 + 8) = v19;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      *(v23 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }
  }

  else
  {
    sub_260FA9764(v25);
    v14 = *&aSimdata_1[8 * a2];
    v15 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26106DB20(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v4 = 100;
    }

    else
    {
      v4 = 117;
    }
  }

  else
  {
    v4 = 115;
    if (a2)
    {
      v4 = 100;
    }
  }

  v19 = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v5 = sub_260FA60B4(v20), (v6 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v5, v21);
    sub_260FA9764(v20);
    sub_260FA3F5C(v21, v20);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
      v7 = v19;
    }

    else
    {
      sub_260FA3F5C(v21, v20);
      v12 = sub_2610BCA34();
      v14 = v13;
      v15 = a2;
      v16 = *&aSimdata_1[8 * a2];
      v17 = *&aDoprovisurlreq[8 * v15 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v18 = v12;
      *(v18 + 8) = v14;
      *(v18 + 16) = v16;
      *(v18 + 24) = v17;
      *(v18 + 32) = 1;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v21);
    }
  }

  else
  {
    sub_260FA9764(v20);
    v8 = *&aSimdata_1[8 * a2];
    v9 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v9;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    swift_willThrow();
  }

  return v7 & 1;
}

uint64_t sub_26106DD54(uint64_t a1, unsigned __int8 a2)
{
  v2 = 0x617461446D6973;
  v3 = 0x7369766F72506F64;
  if (a2 != 2)
  {
    v3 = 0x65757165526C7275;
  }

  if (a2)
  {
    v2 = 1684632420;
  }

  if (a2 <= 1u)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  v20 = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v7 = sub_260FA60B4(v21), (v8 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v7, v22);
    sub_260FA9764(v21);
    sub_260FA3F5C(v22, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE66360, &qword_2610C2E00);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v22);
      return v20;
    }

    else
    {
      sub_260FA3F5C(v22, v21);
      v13 = sub_2610BCA34();
      v15 = v14;
      v16 = a2;
      v17 = *&aSimdata_1[8 * a2];
      v18 = *&aDoprovisurlreq[8 * v16 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v19 = v13;
      *(v19 + 8) = v15;
      *(v19 + 16) = v17;
      *(v19 + 24) = v18;
      *(v19 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }
  }

  else
  {
    sub_260FA9764(v21);
    v10 = *&aSimdata_1[8 * a2];
    v11 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v12 = v10;
    *(v12 + 8) = v11;
    *(v12 + 16) = 0;
    *(v12 + 24) = 0;
    *(v12 + 32) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_26106DF94@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v4 = 0xE700000000000000;
  v5 = 0x617461446D6973;
  v6 = 0xEB000000006E6F69;
  v7 = 0x7369766F72506F64;
  if (a2 != 2)
  {
    v7 = 0x65757165526C7275;
    v6 = 0xEE00617461447473;
  }

  if (a2)
  {
    v5 = 1684632420;
    v4 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  if (a2 > 1u)
  {
    v4 = v6;
  }

  *&v24 = v8;
  *(&v24 + 1) = v4;
  sub_2610BCF24();
  if (*(a1 + 16) && (v11 = sub_260FA60B4(v25), (v12 & 1) != 0))
  {
    sub_260FA3F5C(*(a1 + 56) + 32 * v11, v26);
    sub_260FA9764(v25);
    sub_260FA3F5C(v26, v25);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_0Tm(v26);
      *a3 = v24;
    }

    else
    {
      sub_260FAC458(0, 0xF000000000000000);
      sub_260FA3F5C(v26, v25);
      v17 = sub_2610BCA34();
      v19 = v18;
      v20 = a2;
      v21 = *&aSimdata_1[8 * a2];
      v22 = *&aDoprovisurlreq[8 * v20 + 16];
      sub_260FBE4B4();
      swift_allocError();
      *v23 = v17;
      *(v23 + 8) = v19;
      *(v23 + 16) = v21;
      *(v23 + 24) = v22;
      *(v23 + 32) = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }
  }

  else
  {
    sub_260FA9764(v25);
    v14 = *&aSimdata_1[8 * a2];
    v15 = *&aDoprovisurlreq[8 * a2 + 16];
    sub_260FBE4B4();
    swift_allocError();
    *v16 = v14;
    *(v16 + 8) = v15;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    *(v16 + 32) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_26106E1F0()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26106E2C0()
{
  *v0;
  *v0;
  *v0;
  sub_2610BCA54();
}

uint64_t sub_26106E37C()
{
  v1 = *v0;
  sub_2610BD514();
  sub_2610BCA54();

  return sub_2610BD574();
}

uint64_t sub_26106E448@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_261078370();
  *a2 = result;
  return result;
}

void sub_26106E478(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x617461446D6973;
  v4 = 0xEB000000006E6F69;
  v5 = 0x7369766F72506F64;
  if (*v1 != 2)
  {
    v5 = 0x65757165526C7275;
    v4 = 0xEE00617461447473;
  }

  if (*v1)
  {
    v3 = 1684632420;
    v2 = 0xE400000000000000;
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

uint64_t sub_26106E524()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26106E640;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662C0, &qword_2610CC628);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26107B348;
  v0[13] = &block_descriptor_6;
  v0[14] = v2;
  [v1 anisetteDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106E640()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_26107B344;
  }

  else
  {
    v3 = sub_26107B364;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26106E774()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_26107B358;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_183;
  v0[14] = v2;
  [v1 provisionWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106E890(uint64_t a1, unint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB727C;

  return sub_2610783BC(a1, a2);
}

uint64_t sub_26106E970()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_26106EA8C;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE668C0, &qword_2610C4530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2610A0A60;
  v0[13] = &block_descriptor_173;
  v0[14] = v2;
  [v1 eraseWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106EA8C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v0 + 152);
    v3 = *(v1 + 8);
    v5 = *v0;
  }

  return v3(v4);
}

uint64_t sub_26106EBCC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26106ECE8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662C0, &qword_2610CC628);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26107B348;
  v0[13] = &block_descriptor_169;
  v0[14] = v2;
  [v1 anisetteDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26106ECE8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_26106EE14;
  }

  else
  {
    v3 = sub_26106EDF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26106EE14()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_26106EE80(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_260FB6F34;

  return sub_26107863C(a1, a2);
}

uint64_t sub_26106EF3C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260FFCB98;

  return (sub_261078774)(a1);
}

uint64_t sub_26106EFEC(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

id PASAnisetteRemoteRequestHandler.init(messageSessionProvider:anisetteController:)(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a2[3];
  v14 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v16 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_2610768E4(v11, v18, v3, v7, v13, v6, v14);
  __swift_destroy_boxed_opaque_existential_0Tm(a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v20;
}

id PASAnisetteRemoteRequestHandler.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v3 = sub_2610BC7B4();
  __swift_project_value_buffer(v3, qword_27FE65900);
  v4 = sub_2610BC794();
  v5 = sub_2610BCD54();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler deinit", v6, 2u);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t sub_26106F400()
{
  v0[34] = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_registered;
  v0[35] = sub_2610BCC74();
  v0[36] = sub_2610BCC64();
  v2 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_26106F4A4, v2, v1);
}

uint64_t sub_26106F4A4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);

  *(v0 + 424) = *(v2 + v3);

  return MEMORY[0x2822009F8](sub_26106F518, 0, 0);
}

uint64_t sub_26106F518()
{
  if (*(v0 + 424) == 1)
  {
    if (qword_27FE63808 != -1)
    {
      swift_once();
    }

    v1 = sub_2610BC7B4();
    __swift_project_value_buffer(v1, qword_27FE65900);
    v2 = sub_2610BC794();
    v3 = sub_2610BCD54();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler registerForRequests again", v4, 2u);
      MEMORY[0x2666F8720](v4, -1, -1);
    }
  }

  v5 = *(v0 + 264);
  v6 = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider;
  *(v0 + 296) = OBJC_IVAR____TtC21ProximityAppleIDSetup31PASAnisetteRemoteRequestHandler_messageSessionProvider;
  v7 = *(v5 + v6 + 24);
  v8 = *(v5 + v6 + 32);
  __swift_project_boxed_opaque_existential_1((v5 + v6), v7);
  v9 = *(v8 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 304) = v11;
  *v11 = v0;
  v11[1] = sub_26106F714;

  return v13(v0 + 16, v7, v8);
}

uint64_t sub_26106F714()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_26107094C;
  }

  else
  {
    v3 = sub_26106F828;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26106F828()
{
  v1 = (v0[33] + v0[37]);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  v0[40] = v5;
  sub_26106CA64(0, 0, &unk_2610CC648, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[41] = v10;
  *v10 = v0;
  v10[1] = sub_26106FA04;

  return (v12)(v0 + 7, v6, v7);
}

uint64_t sub_26106FA04()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_261070B18;
  }

  else
  {
    v3 = sub_26106FB18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26106FB18()
{
  v1 = v0[40];
  v2 = (v0[33] + v0[37]);
  v3 = v0[10];
  v4 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(1u, 0, &unk_2610CC660, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[43] = v10;
  *v10 = v0;
  v10[1] = sub_26106FCE0;

  return (v12)(v0 + 12, v6, v7);
}

uint64_t sub_26106FCE0()
{
  v2 = *(*v1 + 344);
  v5 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = sub_261070CE4;
  }

  else
  {
    v3 = sub_26106FDF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26106FDF4()
{
  v1 = v0[40];
  v2 = (v0[33] + v0[37]);
  v3 = v0[15];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(2u, 0, &unk_2610CC670, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[45] = v10;
  *v10 = v0;
  v10[1] = sub_26106FFBC;

  return (v12)(v0 + 17, v6, v7);
}

uint64_t sub_26106FFBC()
{
  v2 = *(*v1 + 360);
  v5 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_261070EB0;
  }

  else
  {
    v3 = sub_2610700D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610700D0()
{
  v1 = (v0[33] + v0[37]);
  v2 = v0[20];
  v3 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v2);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE63FA0, &qword_2610BF500);
  v0[47] = v5;
  sub_26106CA64(3u, 0, &unk_2610CC680, v4, v2, v5, v3);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 17);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_2610702AC;

  return (v12)(v0 + 22, v6, v7);
}

uint64_t sub_2610702AC()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_26107107C;
  }

  else
  {
    v3 = sub_2610703C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2610703C0()
{
  v1 = v0[47];
  v2 = (v0[33] + v0[37]);
  v3 = v0[25];
  v4 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 22, v3);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(4u, 0, &unk_2610CC698, v5, v3, v1, v4);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 22);
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[50] = v10;
  *v10 = v0;
  v10[1] = sub_261070588;

  return (v12)(v0 + 27, v6, v7);
}

uint64_t sub_261070588()
{
  v2 = *(*v1 + 400);
  v5 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_261071248;
  }

  else
  {
    v3 = sub_26107069C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26107069C()
{
  v1 = v0[47];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  __swift_project_boxed_opaque_existential_1(v0 + 27, v4);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26106CA64(5u, 0, &unk_2610CC6A8, v6, v4, v1, v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 27);
  v0[52] = sub_2610BCC64();
  v8 = sub_2610BCBF4();

  return MEMORY[0x2822009F8](sub_2610707C4, v8, v7);
}

uint64_t sub_2610707C4()
{
  v1 = v0[52];
  v2 = v0[33];
  v3 = v0[34];

  *(v2 + v3) = 1;

  return MEMORY[0x2822009F8](sub_261070838, 0, 0);
}

uint64_t sub_261070838()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteRemoteRequestHandler did registerForRequests", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_26107094C()
{
  v15 = v0;
  v1 = v0[39];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261070B18()
{
  v15 = v0;
  v1 = v0[42];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261070CE4()
{
  v15 = v0;
  v1 = v0[44];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261070EB0()
{
  v15 = v0;
  v1 = v0[46];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_26107107C()
{
  v15 = v0;
  v1 = v0[49];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261071248()
{
  v15 = v0;
  v1 = v0[51];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v2 = sub_2610BC7B4();
  __swift_project_value_buffer(v2, qword_27FE65900);
  v3 = v1;
  v4 = sub_2610BC794();
  v5 = sub_2610BCD64();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[32] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE648D0, &qword_2610BF450);
    v9 = sub_2610BCA34();
    v11 = sub_260FA5970(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260F97000, v4, v5, "PASAnisetteRemoteRequestHandler failed to register target anisette requests %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2666F8720](v7, -1, -1);
    MEMORY[0x2666F8720](v6, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_261071414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_261071434, 0, 0);
}

uint64_t sub_261071434()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_26107153C;

    return sub_261078B10();
  }

  else
  {
    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_26107153C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_26107B350;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v7 = sub_260FBF858;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261071670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261071694, 0, 0);
}

uint64_t sub_261071694()
{
  v1 = *(v0 + 56);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_2610717A4;
    v4 = *(v0 + 48);

    return sub_261078D14(v4);
  }

  else
  {
    **(v0 + 40) = 2;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_2610717A4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_26107B354;
  }

  else
  {

    *(v4 + 88) = a1 & 1;
    v7 = sub_2610718D8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2610718FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26107191C, 0, 0);
}

uint64_t sub_26107191C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_261071A24;

    return sub_2610791A8();
  }

  else
  {
    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_261071A24(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_261071B58;
  }

  else
  {

    *(v4 + 80) = a1 & 1;
    v7 = sub_260FB4B20;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261071B58()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_261071BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261071BE0, 0, 0);
}

uint64_t sub_261071BE0()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_261071CF4;
    v4 = v0[6];

    return sub_2610794B4(v4);
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_261071CF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_261071E58;
  }

  else
  {

    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v9 = sub_261071E30;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_261071E58()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_261071EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261071EE0, 0, 0);
}

uint64_t sub_261071EE0()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_261071FF4;
    v4 = v0[6];

    return sub_261079C90(v4);
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_261071FF4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_26107B354;
  }

  else
  {

    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v9 = sub_26107B35C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_261072130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  return MEMORY[0x2822009F8](sub_261072154, 0, 0);
}

uint64_t sub_261072154()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_261071FF4;
    v4 = v0[6];

    return sub_26107A36C(v4);
  }

  else
  {
    *v0[5] = xmmword_2610BF320;
    v6 = v0[1];

    return v6();
  }
}

id PASAnisetteRemoteRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2610722FC()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260FB6DB4;

  return PASAnisetteRemoteRequestHandler.registerForRequests()();
}

uint64_t sub_2610723AC()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester provisionAnisette", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_261072598;

  return v12(v0 + 16, v6, v7);
}

uint64_t sub_261072598()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_260FBF854;
  }

  else
  {
    v6 = sub_2610726C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2610726C4()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = sub_260FA928C(MEMORY[0x277D84F90]);
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE63F80, &qword_2610C4DC0);
  *v4 = v0;
  v4[1] = sub_2610727C0;

  return sub_26106D128((v0 + 13), 0, 0, v3, v2, v5, v1);
}

uint64_t sub_2610727C0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_260FBF88C;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 56);

    v5 = sub_2610728E8;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2610728E8()
{
  v1 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_261072ACC(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_26107B338;

  return sub_26107238C();
}

uint64_t sub_261072B74(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  return MEMORY[0x2822009F8](sub_261072B98, v2, 0);
}

uint64_t sub_261072B98()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester syncAnisette", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 144);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 152) = v10;
  *v10 = v0;
  v10[1] = sub_261072D84;

  return v12(v0 + 88, v6, v7);
}

uint64_t sub_261072D84()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 160) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_2610731A8;
  }

  else
  {
    v6 = sub_261072EB0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_261072EB0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 64) = MEMORY[0x277CC9318];
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  sub_260FAA188(v2, v1);
  v6 = sub_260FA928C(inited);
  v0[21] = v6;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE662F0, &unk_2610BECC0);
  v7 = swift_task_alloc();
  v0[22] = v7;
  *v7 = v0;
  v7[1] = sub_261073014;
  v8 = MEMORY[0x277D839B0];

  return sub_26106D128((v0 + 24), 1, 0, v6, v3, v8, v4);
}

uint64_t sub_261073014()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_2610731C4;
  }

  else
  {
    v6 = *(v2 + 168);
    v7 = *(v2 + 144);

    v5 = sub_26107313C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26107313C()
{
  v1 = *(v0 + 192);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 88));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2610731C4()
{
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  v2 = v0[23];
  v3 = v0[1];

  return v3(0);
}

uint64_t sub_2610733C0(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = a1;

  v6 = sub_2610BC534();
  v8 = v7;

  v3[4] = v6;
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_26107349C;

  return sub_261072B74(v6, v8);
}

uint64_t sub_26107349C(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = v5[3];
  sub_260FAC46C(v5[4], v5[5]);
  if (v3)
  {
    v11 = sub_2610BC4E4();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_26107367C()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester eraseAnisette", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 56);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_261073868;

  return v12(v0 + 16, v6, v7);
}

uint64_t sub_261073868()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_260FB6AE8;
  }

  else
  {
    v6 = sub_261073994;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_261073994()
{
  v2 = v0[5];
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v3 = sub_260FA928C(MEMORY[0x277D84F90]);
  v0[10] = v3;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_261073A78;
  v5 = MEMORY[0x277D839B0];

  return sub_26106D128((v0 + 13), 2, 0, v3, v2, v5, v1);
}

uint64_t sub_261073A78()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v9 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = *(v2 + 56);
    v5 = sub_260FB6B04;
  }

  else
  {
    v6 = *(v2 + 80);
    v7 = *(v2 + 56);

    v5 = sub_260FB6A7C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_261073D18(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_261073DC0;

  return sub_26107365C();
}

uint64_t sub_261073DC0(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_2610BC4E4();

    (*(v10 + 16))(v10, 0, v11);
  }

  else
  {
    (*(v10 + 16))(v10, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_261073F54(char a1)
{
  *(v2 + 152) = v1;
  *(v2 + 208) = a1;
  return MEMORY[0x2822009F8](sub_261073F78, v1, 0);
}

uint64_t sub_261073F78()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  v0[20] = __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester fetchAnisetteDataAndProvisionIfNecessary", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = v0[19];

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_261074168;

  return (v12)(v0 + 11, v6, v7);
}

uint64_t sub_261074168()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_26107474C;
  }

  else
  {
    v6 = sub_261074294;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_261074294()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1((v0 + 88), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 32) = 2;
  v5 = inited + 32;
  *(inited + 64) = MEMORY[0x277D839B0];
  *(inited + 40) = v1;
  v6 = sub_260FA928C(inited);
  *(v0 + 184) = v6;
  swift_setDeallocating();
  sub_260FA9980(v5, &unk_27FE662F0, &unk_2610BECC0);
  v7 = swift_task_alloc();
  *(v0 + 192) = v7;
  *v7 = v0;
  v7[1] = sub_2610743E4;
  v8 = MEMORY[0x277CC9318];

  return sub_26106D128(v0 + 128, 3, 0, v6, v2, v8, v3);
}

uint64_t sub_2610743E4()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 152);
    v5 = sub_261074764;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 152);

    v5 = sub_26107450C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_26107450C()
{
  v20 = v0;
  v1 = v0[25];
  v3 = v0[16];
  v2 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE66310, 0x277CF0160);
  v4 = sub_2610BCD94();
  if (v1)
  {
    sub_260FAC46C(v3, v2);
    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v4;
    v8 = v0[20];
    v9 = v4;
    v10 = sub_2610BC794();
    v11 = sub_2610BCD84();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 141558274;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2080;
      v0[18] = v7;
      v14 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE66318, &unk_2610CC8A8);
      v15 = sub_2610BCA34();
      v17 = sub_260FA5970(v15, v16, &v19);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_260F97000, v10, v11, "PASAnisetteDataRequester fetchAnisetteDataAndProvisionIfNecessary returning with data: %{mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x2666F8720](v13, -1, -1);
      MEMORY[0x2666F8720](v12, -1, -1);
    }

    sub_260FAC46C(v3, v2);

    v18 = v0[1];

    return v18(v7);
  }
}

uint64_t sub_261074764()
{
  v1 = v0[23];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  v2 = v0[25];
  v3 = v0[1];

  return v3();
}

uint64_t sub_261074958(char a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);

  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_261074A14;

  return sub_261073F54(a1);
}

uint64_t sub_261074A14(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_2610BC4E4();

    (v9)[2](v9, 0, v10);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_261074BB8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_261074BDC, v2, 0);
}

uint64_t sub_261074BDC()
{
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester legacyAnisetteData", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 160);

  v6 = v5[17];
  v7 = v5[18];
  __swift_project_boxed_opaque_existential_1(v5 + 14, v6);
  v8 = *(v7 + 16);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_261074DC8;

  return v12(v0 + 88, v6, v7);
}

uint64_t sub_261074DC8()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_26107B340;
  }

  else
  {
    v6 = sub_261074EF4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_261074EF4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 32) = 1;
  *(inited + 16) = xmmword_2610BF400;
  *(inited + 64) = MEMORY[0x277D837D0];
  *(inited + 40) = v2;
  *(inited + 48) = v1;

  v6 = sub_260FA928C(inited);
  v0[23] = v6;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE662F0, &unk_2610BECC0);
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_261075058;
  v8 = MEMORY[0x277CC9318];

  return sub_26106D128((v0 + 16), 4, 0, v6, v3, v8, v4);
}

uint64_t sub_261075058()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = sub_26107B33C;
  }

  else
  {
    v6 = *(v2 + 184);
    v7 = *(v2 + 160);

    v5 = sub_261075180;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_261075180()
{
  v1 = v0[25];
  v2 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &qword_27FE66310, 0x277CF0160);
  v4 = sub_2610BCD94();
  v5 = sub_260FAC46C(v2, v3);
  v6 = v0[1];
  if (!v1)
  {
    v5 = v4;
  }

  return v6(v5);
}

uint64_t sub_2610753EC(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v4 = sub_2610BCA04();
  v6 = v5;
  v3[4] = v5;

  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2610754C0;

  return sub_261074BB8(v4, v6);
}

uint64_t sub_2610754C0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_2610BC4E4();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_261075680(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261075710, v1, 0);
}

uint64_t sub_261075710()
{
  v24 = *MEMORY[0x277D85DE8];
  if (qword_27FE63808 != -1)
  {
    swift_once();
  }

  v1 = sub_2610BC7B4();
  __swift_project_value_buffer(v1, qword_27FE65900);
  v2 = sub_2610BC794();
  v3 = sub_2610BCD84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260F97000, v2, v3, "PASAnisetteDataRequester fetchPeerAttestationData", v4, 2u);
    MEMORY[0x2666F8720](v4, -1, -1);
  }

  v5 = *(v0 + 152);

  v6 = objc_opt_self();
  v7 = sub_2610BC344();
  *(v0 + 144) = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v0 + 144];

  v9 = *(v0 + 144);
  if (v8)
  {
    v10 = *(v0 + 160);
    v11 = sub_2610BC534();
    v13 = v12;

    *(v0 + 168) = v11;
    *(v0 + 176) = v13;
    v14 = v10[17];
    v15 = v10[18];
    __swift_project_boxed_opaque_existential_1(v10 + 14, v14);
    v23 = (*(v15 + 16) + **(v15 + 16));
    v16 = *(*(v15 + 16) + 4);
    v17 = swift_task_alloc();
    *(v0 + 184) = v17;
    *v17 = v0;
    v17[1] = sub_2610759FC;
    v18 = *MEMORY[0x277D85DE8];

    return v23(v0 + 88, v14, v15);
  }

  else
  {
    v20 = v9;
    sub_2610BC4F4();

    swift_willThrow();
    v21 = *(v0 + 8);
    v22 = *MEMORY[0x277D85DE8];

    return v21();
  }
}

uint64_t sub_2610759FC()
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_261075F9C;
  }

  else
  {
    v6 = sub_261075B54;
  }

  v7 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_261075B54()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[14];
  v4 = v0[15];
  __swift_project_boxed_opaque_existential_1(v0 + 11, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE662E8, &unk_2610CC888);
  inited = swift_initStackObject();
  *(inited + 32) = 3;
  *(inited + 16) = xmmword_2610BF400;
  v6 = MEMORY[0x277CC9318];
  *(inited + 64) = MEMORY[0x277CC9318];
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  sub_260FAA188(v2, v1);
  v7 = sub_260FA928C(inited);
  v0[25] = v7;
  swift_setDeallocating();
  sub_260FA9980(inited + 32, &unk_27FE662F0, &unk_2610BECC0);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_261075CEC;
  v9 = *MEMORY[0x277D85DE8];

  return sub_26106D128((v0 + 16), 5, 0, v7, v3, v6, v4);
}

uint64_t sub_261075CEC()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 208);
  v12 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v4 = *(v2 + 160);
    v5 = *MEMORY[0x277D85DE8];
    v6 = sub_26107602C;
  }

  else
  {
    v7 = *(v2 + 200);
    v8 = *(v2 + 160);

    v9 = *MEMORY[0x277D85DE8];
    v6 = sub_261075E60;
    v4 = v8;
  }

  return MEMORY[0x2822009F8](v6, v4, 0);
}

uint64_t sub_261075E60()
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = v0[27];
  v2 = v0[16];
  v3 = v0[17];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  sub_260FA9AB4(0, &qword_27FE64840, 0x277CCAAC8);
  sub_260FA9AB4(0, &unk_27FE66300, 0x277CF0190);
  v4 = sub_2610BCD94();
  v6 = v0[21];
  v5 = v0[22];
  sub_260FAC46C(v2, v3);
  v7 = sub_260FAC46C(v6, v5);
  v8 = v0[1];
  v9 = *MEMORY[0x277D85DE8];
  if (!v1)
  {
    v7 = v4;
  }

  return v8(v7);
}

uint64_t sub_261075F9C()
{
  v5 = *MEMORY[0x277D85DE8];
  sub_260FAC46C(v0[21], v0[22]);
  v1 = v0[24];
  v2 = v0[1];
  v3 = *MEMORY[0x277D85DE8];

  return v2();
}

uint64_t sub_26107602C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = v0[25];
  sub_260FAC46C(v0[21], v0[22]);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 11);
  v2 = v0[27];
  v3 = v0[1];
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

uint64_t sub_26107625C(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = sub_2610BC364();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v3[6] = _Block_copy(a2);
  sub_2610BC354();

  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_261076388;

  return sub_261075680(v8);
}

uint64_t sub_261076388(void *a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 56);
  v8 = *v2;

  v9 = v5[6];
  v10 = v5[2];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v11 = sub_2610BC4E4();

    (v9)[2](v9, 0, v11);
    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v12 = v6[5];

  v13 = *(v8 + 8);

  return v13();
}