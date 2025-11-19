uint64_t sub_2756D039C()
{
  v1 = *v0;
  sub_275798A40();
  MEMORY[0x277C80B70](v1);
  return sub_275798A70();
}

uint64_t sub_2756D0410()
{
  v1 = *v0;
  sub_275798A40();
  MEMORY[0x277C80B70](v1);
  return sub_275798A70();
}

unint64_t sub_2756D0454()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000018;
  if (v1 == 3)
  {
    v3 = 0xD000000000000015;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_2756D04F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2756D4504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2756D0528(uint64_t a1)
{
  v2 = sub_2756D0C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756D0564(uint64_t a1)
{
  v2 = sub_2756D0C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2756D05A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - v6;
  v7 = sub_275795D60();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F8);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v47 = type metadata accessor for AccountImage();
  MEMORY[0x28223BE20](v47);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = MEMORY[0x277D84F90];
  sub_275796500();
  sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);
  v45 = sub_275796AA0();
  *(v14 + 1) = v45;
  *(v14 + 2) = v15;
  *(v14 + 3) = sub_2756CFD08;
  *(v14 + 4) = 0;
  v14[40] = 0;
  v51 = 0;
  sub_2757975A0();
  v16 = v50;
  v14[48] = v49;
  v44 = v16;
  *(v14 + 7) = v16;
  v51 = 0;
  sub_2757975A0();
  v17 = v50;
  v14[64] = v49;
  v43 = v17;
  *(v14 + 9) = v17;
  v18 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2756D0C80();
  v19 = v46;
  sub_275798A80();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0(v48);
  }

  else
  {
    v20 = v41;
    v46 = v7;
    LOBYTE(v49) = 0;
    v21 = sub_2757988D0();
    v23 = v47;
    v36 = v10;
    v37 = v12;
    if (!v22)
    {
      sub_275795D50();
      v24 = sub_275795D40();
      v26 = v25;
      (*(v20 + 8))(v9, v46);
      v22 = v26;
      v21 = v24;
    }

    *(v14 + 10) = v21;
    *(v14 + 11) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
    LOBYTE(v49) = 1;
    sub_2756CFA44(&qword_2809FD908, &qword_2809FD900);
    v27 = v40;
    v29 = v36;
    v28 = v37;
    sub_2757988E0();
    sub_2756D0CD4(v27, &v14[v23[10]]);
    LOBYTE(v49) = 2;
    v30 = v39;
    sub_2757988E0();
    v31 = v42;
    sub_2756D0CD4(v30, &v14[v23[11]]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD910);
    v51 = 3;
    sub_2756D0D44();
    sub_2757988E0();
    v32 = v49;
    v33 = MEMORY[0x277D84F90];
    if (!v49)
    {
      v32 = MEMORY[0x277D84F90];
    }

    *&v14[v23[12]] = v32;
    v51 = 4;
    sub_2757988E0();
    if (v49)
    {
      v33 = v49;
    }

    (*(v31 + 8))(v28, v29);
    *&v14[v23[13]] = v33;
    sub_2756D0DF8(v14, v38);
    __swift_destroy_boxed_opaque_existential_0(v48);
    return sub_2756D0E5C(v14);
  }
}

unint64_t sub_2756D0C80()
{
  result = qword_280A019C0[0];
  if (!qword_280A019C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A019C0);
  }

  return result;
}

uint64_t sub_2756D0CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2756D0D44()
{
  result = qword_2809FD918;
  if (!qword_2809FD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD910);
    sub_2756D4A40(&qword_2809FD920, MEMORY[0x277D232D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD918);
  }

  return result;
}

uint64_t sub_2756D0DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756D0E5C(uint64_t a1)
{
  v2 = type metadata accessor for AccountImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756D0EB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_275797820();
  v5 = v4;
  sub_2756D10A8(v1, &v14);
  v25 = v18;
  v26 = v19;
  v27[0] = v20[0];
  *(v27 + 10) = *(v20 + 10);
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v28[0] = v14;
  v28[1] = v15;
  v28[2] = v16;
  v28[3] = v17;
  v28[4] = v18;
  v28[5] = v19;
  v29[0] = v20[0];
  *(v29 + 10) = *(v20 + 10);
  sub_2756C9074(&v21, v13, &qword_2809FD928);
  sub_2756C92B4(v28, &qword_2809FD928);
  v34 = v25;
  v35 = v26;
  v36[0] = v27[0];
  *(v36 + 10) = *(v27 + 10);
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;
  if (*(v1 + 8))
  {

    v6 = sub_2756D2D58();

    if ((v6 & 1) == 0 || (v8 = *(v1 + 72), LOBYTE(v14) = *(v1 + 64), *(&v14 + 1) = v8, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8), result = sub_2757975B0(), v9 = 1.0, (v13[0] & 1) == 0))
    {
      v9 = 0.0;
    }

    *a1 = v3;
    *(a1 + 8) = v5;
    v10 = v35;
    *(a1 + 80) = v34;
    *(a1 + 96) = v10;
    *(a1 + 112) = v36[0];
    *(a1 + 122) = *(v36 + 10);
    v11 = v31;
    *(a1 + 16) = v30;
    *(a1 + 32) = v11;
    v12 = v33;
    *(a1 + 48) = v32;
    *(a1 + 64) = v12;
    *(a1 + 144) = v9;
  }

  else
  {
    sub_275796500();
    sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756D10A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v4 - 8);
  v81[1] = v81 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA08);
  v82 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v84 = v81 - v7;
  v8 = sub_275797560();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccountImage();
  v90 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v91 = v11;
  *&v92 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v86 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v81 - v15;
  *&v93 = v10;
  sub_2756C9074(a1 + *(v10 + 44), v81 - v15, &qword_2809FD8F0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v18 = *(v17 - 8);
  v85 = *(v18 + 48);
  v19 = v85(v16, 1, v17);
  v96 = a2;
  v83 = v6;
  if (v19 == 1)
  {
    sub_2756C92B4(v16, &qword_2809FD8F0);
    v100 = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v94 = 0;
    v95 = 0;
    v102 = 0;
    v103 = 0;
    v104 = 0;
  }

  else
  {
    if (!*(a1 + 8))
    {
      goto LABEL_27;
    }

    sub_275796390();

    (*(v18 + 8))(v16, v17);
    v47 = v105[0];
    v48 = *(a1 + *(v93 + 52));
    v49 = *(a1 + 56);
    LOBYTE(v116) = *(a1 + 48);
    *(&v116 + 1) = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
    sub_2757975D0();
    v94 = *(&v108 + 1);
    v95 = v108;
    v104 = v109;
    sub_275796500();
    sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);
    v50 = sub_275796AA0();
    v102 = v51;
    v103 = v50;
    v116 = v47;
    sub_2757975A0();
    v100 = *(&v108 + 1);
    v101 = v108;
    v99 = v109;
    *&v116 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD910);
    sub_2757975A0();
    v97 = *(&v108 + 1);
    v98 = v108;
  }

  type metadata accessor for ProfilePictureModel();
  sub_2756D4A40(&qword_2809FD8E0, type metadata accessor for ProfilePictureModel);
  v20 = sub_275796740();
  v21 = (*(*v20 + 120))(v20);

  if (!v21)
  {
    v23 = sub_275797480();
    v24 = v92;
    sub_2756D0DF8(a1, v92);
    v25 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v26 = swift_allocObject();
    sub_2756D4CD8(v24, v26 + v25);
    *&v105[0] = v23;
    *(&v105[0] + 1) = sub_2756D5000;
    v105[1] = v26;
    *&v105[2] = 0;
    BYTE8(v105[2]) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9C8);
    sub_2756D4828();
    sub_275796D80();
    v105[0] = v108;
    v105[1] = v109;
    *&v105[2] = v110;
    WORD4(v105[2]) = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA18);
    sub_2756D4A88();
    sub_2756D4B14();
    sub_275796D80();

    goto LABEL_20;
  }

  if (v21 != 1)
  {
    v86 = v21;
    v27 = v21;
    sub_275797530();
    v29 = v87;
    v28 = v88;
    v30 = v89;
    (*(v88 + 104))(v87, *MEMORY[0x277CE0FE0], v89);
    v31 = sub_275797570();

    (*(v28 + 8))(v29, v30);
    v32 = sub_275797820();
    v34 = v33;
    v35 = sub_2757974A0();
    KeyPath = swift_getKeyPath();
    v37 = v92;
    sub_2756D0DF8(a1, v92);
    v38 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v39 = swift_allocObject();
    sub_2756D4CD8(v37, v39 + v38);
    *&v116 = v31;
    *(&v116 + 1) = v32;
    *&v117 = v34;
    *(&v117 + 1) = KeyPath;
    *&v118 = v35;
    *(&v118 + 1) = sub_2756D5420;
    v119 = v39;
    v120 = 0;
    v40 = sub_2756D2408(*(a1 + *(v93 + 48)));
    if (!*(a1 + 8))
    {
      goto LABEL_27;
    }

    v41 = v40;

    *(&v105[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA78);
    *&v105[2] = sub_2756D5060();
    v42 = swift_allocObject();
    *&v105[0] = v42;
    v43 = v119;
    *(v42 + 48) = v118;
    *(v42 + 64) = v43;
    *(v42 + 80) = v120;
    v44 = v117;
    *(v42 + 16) = v116;
    *(v42 + 32) = v44;
    sub_2756CC2E0(v105, v123);
    v45 = *(v41 + 16);
    *&v93 = v41;
    if (v45)
    {
      v46 = v41 + 32;
      sub_2756C9074(&v116, &v108, &qword_2809FDA78);
      do
      {
        sub_2756CC2E0(v46, &v108);
        __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
        sub_2757964A0();
        swift_allocObject();
        sub_275796490();
        sub_275796410();
        __swift_destroy_boxed_opaque_existential_0(v123);

        sub_27562F5A8(&v121, v122);
        __swift_destroy_boxed_opaque_existential_0(&v108);
        sub_27562F5A8(v122, v123);
        v46 += 40;
        --v45;
      }

      while (v45);
    }

    else
    {
      sub_2756C9074(&v116, &v108, &qword_2809FDA78);
    }

    sub_27562F5A8(v123, &v108);
    __swift_destroy_boxed_opaque_existential_0(v105);

    sub_2756C92B4(&v116, &qword_2809FDA78);
    v52 = *(&v109 + 1);
    __swift_project_boxed_opaque_existential_1(&v108, *(&v109 + 1));
    v53 = sub_2756D2600(v52);
    __swift_destroy_boxed_opaque_existential_0(&v108);
    *&v105[0] = v53;
    *(v105 + 8) = 0u;
    *(&v105[1] + 8) = 0u;
    BYTE8(v105[2]) = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9C8);
    sub_2756D4828();
    sub_275796D80();
    v105[0] = v108;
    v105[1] = v109;
    *&v105[2] = v110;
    WORD4(v105[2]) = v111;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA18);
    sub_2756D4A88();
    sub_2756D4B14();
    sub_275796D80();
    sub_2756D4FF0(v86);
LABEL_20:

    goto LABEL_21;
  }

  v22 = v86;
  sub_2756C9074(a1 + *(v93 + 40), v86, &qword_2809FD8F0);
  if (v85(v22, 1, v17) == 1)
  {
    sub_2756C92B4(v22, &qword_2809FD8F0);
    *&v105[0] = 0;
    BYTE8(v105[0]) = 1;
LABEL_17:
    sub_275796D80();
    *&v105[0] = v108;
    *(&v105[0] + 1) = BYTE8(v108);
    memset(&v105[1], 0, 24);
    WORD4(v105[2]) = 256;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA18);
    sub_2756D4A88();
    sub_2756D4B14();
    sub_275796D80();
LABEL_21:
    v54 = v108;
    v55 = v109;
    v56 = v110;
    v57 = v111;
    v58 = BYTE1(v111);
    v92 = v108;
    v93 = v109;
    *&v105[0] = v101;
    *(&v105[0] + 1) = v100;
    *&v105[1] = v99;
    *(&v105[1] + 1) = v98;
    v60 = v94;
    v59 = v95;
    *&v105[2] = v97;
    *(&v105[2] + 1) = v95;
    *&v106 = v94;
    *(&v106 + 1) = v104;
    *&v107 = v103;
    *(&v107 + 1) = v102;
    LOBYTE(v123[0]) = BYTE1(v111);
    v61 = v106;
    v62 = v96;
    *(v96 + 32) = v105[2];
    *(v62 + 48) = v61;
    v63 = v105[1];
    *v62 = v105[0];
    *(v62 + 16) = v63;
    *(v62 + 64) = v107;
    *(v62 + 80) = v54;
    *(v62 + 96) = v55;
    *(v62 + 112) = v56;
    *(v62 + 120) = v57;
    *(v62 + 121) = v58;
    sub_2756C9074(v105, &v108, &qword_2809FDA30);
    v64 = v92;
    v65 = v93;
    sub_2756D4C24(v92, *(&v92 + 1), v93, *(&v93 + 1), v56, v57, v58, sub_2756D4B98, sub_2756D4C18);
    sub_2756D4C24(v64, *(&v64 + 1), v65, *(&v65 + 1), v56, v57, v58, sub_2756D4C44, sub_2756D4CC4);
    *&v108 = v101;
    *(&v108 + 1) = v100;
    *&v109 = v99;
    *(&v109 + 1) = v98;
    v110 = v97;
    v111 = v59;
    v112 = v60;
    v113 = v104;
    v114 = v103;
    v115 = v102;
    return sub_2756C92B4(&v108, &qword_2809FDA30);
  }

  if (*(a1 + 8))
  {

    sub_275796390();

    (*(v18 + 8))(v22, v17);
    sub_275795CA0();

    v67 = [objc_opt_self() mainScreen];
    [v67 scale];

    v68 = v92;
    sub_2756D0DF8(a1, v92);
    v69 = (*(v90 + 80) + 16) & ~*(v90 + 80);
    v70 = swift_allocObject();
    sub_2756D4CD8(v68, v70 + v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA38);
    sub_2756D4DBC();
    v71 = v84;
    sub_275796680();
    v72 = sub_2756D2408(*(a1 + *(v93 + 48)));

    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA08);
    *(&v109 + 1) = v73;
    v110 = sub_2756CFA44(&qword_2809FDAA8, &qword_2809FDA08);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
    (*(*(v73 - 8) + 16))(boxed_opaque_existential_1, v71, v73);
    sub_2756CC2E0(&v108, v105);
    *&v93 = v72;
    v75 = *(v72 + 16);
    if (v75)
    {
      v76 = v93 + 32;
      do
      {
        sub_2756CC2E0(v76, &v116);
        __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
        sub_2757964A0();
        swift_allocObject();
        sub_275796490();
        sub_275796410();
        __swift_destroy_boxed_opaque_existential_0(v105);

        sub_27562F5A8(v122, v123);
        __swift_destroy_boxed_opaque_existential_0(&v116);
        sub_27562F5A8(v123, v105);
        v76 += 40;
        --v75;
      }

      while (v75);
    }

    sub_27562F5A8(v105, &v116);
    __swift_destroy_boxed_opaque_existential_0(&v108);

    (*(v82 + 8))(v84, v83);
    v77 = __swift_project_boxed_opaque_existential_1(&v116, *(&v117 + 1));
    MEMORY[0x28223BE20](v77);
    (*(v79 + 16))(v81 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0));
    v80 = sub_275797720();
    __swift_destroy_boxed_opaque_existential_0(&v116);
    *&v105[0] = v80;
    BYTE8(v105[0]) = 0;
    goto LABEL_17;
  }

LABEL_27:
  sub_275796500();
  sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);
  result = sub_275796A90();
  __break(1u);
  return result;
}

uint64_t sub_2756D2260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  type metadata accessor for ProfilePictureModel();
  sub_2756D4A40(&qword_2809FD8E0, type metadata accessor for ProfilePictureModel);
  v5 = sub_275796740();
  v6 = type metadata accessor for AccountImage();
  sub_2756C9074(a1 + *(v6 + 40), v4, &qword_2809FD8F0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v8 = (*(*(v7 - 8) + 48))(v4, 1, v7) != 1;
  sub_2756C92B4(v4, &qword_2809FD8F0);
  (*(*v5 + 168))(v8);
}

uint64_t sub_2756D2408(uint64_t a1)
{
  v2 = sub_275796400();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2756D4344(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2756D4344((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = sub_2756D4A40(&qword_2809FD9E0, MEMORY[0x277D232D0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_27562F5A8(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2756D2600(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_275797720();
}

__n128 sub_2756D26C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v27 = a2;
  v28 = a3;
  v4 = type metadata accessor for AccountImage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = sub_275797560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_275796970();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == *MEMORY[0x277CDD9C8])
  {
    (*(v12 + 96))(v14, v11);
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v16 = sub_275797570();
    (*(v8 + 8))(v10, v7);
    sub_2756D0DF8(v27, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v17 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v18 = swift_allocObject();
    sub_2756D4CD8(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
    v29 = 1;
    v34 = 0;
    v38 = v16;
    LOWORD(v39) = 1;
    *(&v39 + 1) = sub_2756D5420;
    *v40 = v18;
    *&v40[16] = 0;
    v40[24] = 0;
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9C8);
    sub_2756D4ED4();
    sub_2756D4828();
    sub_275796D80();
    v38 = v31;
    v39 = v32;
    *v40 = *v33;
    *&v40[9] = *&v33[9];
    LOBYTE(v30) = 0;
    v40[25] = 0;
    sub_2756C9074(&v31, &v35, &qword_2809FDAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA50);
    sub_2756D4E48();
    sub_275796D80();

    sub_2756C92B4(&v31, &qword_2809FDA50);
  }

  else
  {
    v19 = v5;
    v20 = v27;
    if (v15 != *MEMORY[0x277CDD9C0])
    {
      LOBYTE(v31) = 1;
      v40[25] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA50);
      sub_2756D4E48();
      sub_275796D80();
      (*(v12 + 8))(v14, v11);
      v38 = v35;
      v39 = v36;
      *v40 = v37[0];
      goto LABEL_7;
    }

    (*(v12 + 8))(v14, v11);
    v21 = sub_275797480();
    sub_2756D0DF8(v20, &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v23 = swift_allocObject();
    sub_2756D4CD8(&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
    v29 = 1;
    *&v38 = v21;
    *(&v38 + 1) = sub_2756D51A4;
    v39 = v23;
    *v40 = 0;
    *&v40[8] = v30;
    v40[24] = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9C8);
    sub_2756D4ED4();
    sub_2756D4828();
    sub_275796D80();
    v38 = v31;
    v39 = v32;
    *v40 = *v33;
    *&v40[9] = *&v33[9];
    v34 = 0;
    v40[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDA50);
    sub_2756D4E48();
    sub_275796D80();
  }

  v38 = v35;
  v39 = v36;
  *v40 = v37[0];
LABEL_7:
  *&v40[10] = *(v37 + 10);
  v24 = v39;
  v25 = v28;
  *v28 = v38;
  v25[1] = v24;
  v25[2] = *v40;
  result = *&v40[10];
  *(v25 + 42) = *&v40[10];
  return result;
}

uint64_t sub_2756D2D58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  v4 = type metadata accessor for AccountImage();
  sub_2756C9074(v0 + *(v4 + 44), v3, &qword_2809FD8F0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_2756C92B4(v3, &qword_2809FD8F0);
    return 1;
  }

  else
  {
    sub_275796390();
    (*(v6 + 8))(v3, v5);

    v8 = *(v0 + 56);
    v9[16] = *(v0 + 48);
    v10 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
    sub_2757975B0();
    return v9[7];
  }
}

uint64_t sub_2756D2F34()
{
  sub_2756D4A40(&qword_2809FD930, type metadata accessor for AccountImage);
  sub_2756D4A40(&qword_2809FD938, type metadata accessor for AccountImage);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2756D2FEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD988);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v29 = *v1;
  v30 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEC20);
  sub_2757975B0();
  sub_275795CA0();

  v8 = [objc_opt_self() mainScreen];
  [v8 scale];

  v9 = swift_allocObject();
  v10 = v2[3];
  v9[3] = v2[2];
  v9[4] = v10;
  v9[5] = v2[4];
  v11 = v2[1];
  v9[1] = *v2;
  v9[2] = v11;
  sub_2756D46B8(v2, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD990);
  sub_2756D46F0();
  sub_275796680();
  v29 = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9D0);
  sub_2757975B0();
  v12 = sub_2756D2408(*&v37[0]);

  if (*(v2 + 8))
  {
    v27 = a1;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD988);
    v31 = v13;
    v32 = sub_2756CFA44(&qword_2809FD9D8, &qword_2809FD988);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
    v15 = *(*(v13 - 8) + 16);
    v24 = v7;
    v15(boxed_opaque_existential_1, v7, v13);
    sub_2756CC2E0(&v29, v37);
    v28 = v12;
    v16 = *(v12 + 16);
    if (v16)
    {
      v17 = v28 + 32;
      do
      {
        sub_2756CC2E0(v17, v35);
        __swift_project_boxed_opaque_existential_1(v35, v36);
        sub_2757964A0();
        swift_allocObject();
        sub_275796490();
        sub_275796410();
        __swift_destroy_boxed_opaque_existential_0(v37);

        sub_27562F5A8(v33, v34);
        __swift_destroy_boxed_opaque_existential_0(v35);
        sub_27562F5A8(v34, v37);
        v17 += 40;
        --v16;
      }

      while (v16);
    }

    sub_27562F5A8(v37, v35);
    __swift_destroy_boxed_opaque_existential_0(&v29);

    (*(v25 + 8))(v24, v26);
    v18 = __swift_project_boxed_opaque_existential_1(v35, v36);
    MEMORY[0x28223BE20](v18);
    (*(v20 + 16))(&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = sub_275797720();
    result = __swift_destroy_boxed_opaque_existential_0(v35);
    *v27 = v21;
  }

  else
  {
    sub_275796500();
    sub_2756D4A40(&qword_2809FD6B8, MEMORY[0x277D23330]);
    result = sub_275796A90();
    __break(1u);
  }

  return result;
}

uint64_t sub_2756D3544@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_275797560();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275796970();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v13, a1, v10);
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277CDD9C8])
  {
    (*(v11 + 96))(v13, v10);
    *&v32 = *v13;
    (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
    v15 = sub_275797570();
    (*(v7 + 8))(v9, v6);
    v16 = swift_allocObject();
    v17 = a2[3];
    v16[3] = a2[2];
    v16[4] = v17;
    v16[5] = a2[4];
    v18 = a2[1];
    v16[1] = *a2;
    v16[2] = v18;
    *&v38 = v15;
    *(&v38 + 1) = sub_2756D541C;
    *v39 = v16;
    *&v39[16] = 0;
    v39[24] = 0;
    swift_retain_n();
    swift_retain_n();
    sub_2756D46B8(a2, &v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9C8);
    sub_2756D4F80(&qword_2809FD9B0, &qword_2809FD9B8);
    sub_2756D4828();
    sub_275796D80();
    v19 = v33;
    v20 = v34;
    v38 = v33;
    *v39 = v34;
    *&v39[16] = v35;
    *&v39[24] = v36;
    sub_2756D4978(v33, *(&v33 + 1), v34, *(&v34 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9A8);
    sub_2756D477C();
    sub_275796D80();

    sub_2756D49D4(v19, *(&v19 + 1), v20, *(&v20 + 1));
  }

  else
  {
    if (v14 != *MEMORY[0x277CDD9C0])
    {
      v38 = 0u;
      memset(v39, 0, 25);
      v39[25] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9A8);
      sub_2756D477C();
      sub_275796D80();
      v31 = v34;
      v32 = v33;
      v28 = v35;
      v29 = v36;
      v30 = v37;
      result = (*(v11 + 8))(v13, v10);
      v27 = v31;
      v26 = v32;
      goto LABEL_7;
    }

    (*(v11 + 8))(v13, v10);
    v22 = sub_275797480();
    v23 = swift_allocObject();
    v24 = a2[3];
    v23[3] = a2[2];
    v23[4] = v24;
    v23[5] = a2[4];
    v25 = a2[1];
    v23[1] = *a2;
    v23[2] = v25;
    *&v38 = v22;
    *(&v38 + 1) = sub_2756D48AC;
    *v39 = v23;
    *&v39[16] = 0;
    v39[24] = 1;
    sub_2756D46B8(a2, &v33);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9C8);
    sub_2756D4F80(&qword_2809FD9B0, &qword_2809FD9B8);
    sub_2756D4828();
    sub_275796D80();
    v38 = v33;
    *v39 = v34;
    *&v39[16] = v35;
    *&v39[24] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9A8);
    sub_2756D477C();
    sub_275796D80();
  }

  v26 = v33;
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
LABEL_7:
  *a3 = v26;
  *(a3 + 16) = v27;
  *(a3 + 32) = v28;
  *(a3 + 40) = v29;
  *(a3 + 41) = v30;
  return result;
}

uint64_t sub_2756D3B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756D4A40(&qword_2809FD930, type metadata accessor for AccountImage);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2756D3C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756D4A40(&qword_2809FD938, type metadata accessor for AccountImage);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2756D3D04(uint64_t a1)
{
  v2 = sub_2756D4A40(&qword_2809FD938, type metadata accessor for AccountImage);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2756D3D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_2756D4A40(&qword_2809FDA00, type metadata accessor for AccountImage);

  return MEMORY[0x282182160](a1, a2, v4);
}

void sub_2756D3E64()
{
  sub_2756CF50C();
  if (v0 <= 0x3F)
  {
    sub_2756C97C8();
    if (v1 <= 0x3F)
    {
      sub_2756D3F48();
      if (v2 <= 0x3F)
      {
        sub_2756D3FDC();
        if (v3 <= 0x3F)
        {
          sub_2756D402C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2756D3F48()
{
  if (!qword_2809FD950)
  {
    type metadata accessor for ProfilePictureModel();
    sub_2756D4A40(&qword_2809FD8E0, type metadata accessor for ProfilePictureModel);
    v0 = sub_275796760();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD950);
    }
  }
}

void sub_2756D3FDC()
{
  if (!qword_2809FD958)
  {
    v0 = sub_2757975E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD958);
    }
  }
}

void sub_2756D402C()
{
  if (!qword_2809FD960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD900);
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FD960);
    }
  }
}

unint64_t sub_2756D4090()
{
  result = qword_2809FD968;
  if (!qword_2809FD968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD970);
    sub_2756CFA44(&qword_2809FD978, &qword_2809FD980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD968);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2756D4164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2756D41AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2756D4224()
{
  result = qword_280A01D60[0];
  if (!qword_280A01D60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A01D60);
  }

  return result;
}

unint64_t sub_2756D4298()
{
  result = qword_280A01EF0;
  if (!qword_280A01EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A01EF0);
  }

  return result;
}

unint64_t sub_2756D42F0()
{
  result = qword_280A01EF8[0];
  if (!qword_280A01EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A01EF8);
  }

  return result;
}

void *sub_2756D4344(void *a1, int64_t a2, char a3)
{
  result = sub_2756D4364(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2756D4364(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2756D44AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275796B30();
  *a1 = result;
  return result;
}

uint64_t sub_2756D4504(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_275798980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002757B81D0 == a2 || (sub_275798980() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002757B81F0 == a2 || (sub_275798980() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002757B8210 == a2 || (sub_275798980() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002757B8230 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_275798980();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_2756D46F0()
{
  result = qword_2809FD998;
  if (!qword_2809FD998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD990);
    sub_2756D477C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD998);
  }

  return result;
}

unint64_t sub_2756D477C()
{
  result = qword_2809FD9A0;
  if (!qword_2809FD9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD9A8);
    sub_2756D4F80(&qword_2809FD9B0, &qword_2809FD9B8);
    sub_2756D4828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD9A0);
  }

  return result;
}

unint64_t sub_2756D4828()
{
  result = qword_2809FD9C0;
  if (!qword_2809FD9C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FD9C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FD9C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2756D4978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_27562F5C0(a2);

  return sub_27562F5C0(a4);
}

uint64_t sub_2756D49D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  sub_2756D4A30(a2);

  return sub_2756D4A30(a4);
}

uint64_t sub_2756D4A30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2756D4A40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756D4A88()
{
  result = qword_2809FDA20;
  if (!qword_2809FDA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA10);
    sub_2756D4828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA20);
  }

  return result;
}

unint64_t sub_2756D4B14()
{
  result = qword_2809FDA28;
  if (!qword_2809FDA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA28);
  }

  return result;
}

uint64_t sub_2756D4B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
    sub_27562F5C0(a2);

    return sub_27562F5C0(a4);
  }

  return result;
}

uint64_t sub_2756D4C18(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2756D4C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void), uint64_t (*a9)(uint64_t, uint64_t))
{
  if (a7)
  {
    return a9(a1, a2 & 1);
  }

  else
  {
    return a8(a1, a2, a3, a4, a5, a6 & 1);
  }
}

uint64_t sub_2756D4C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{

  if ((a6 & 1) == 0)
  {
    sub_2756D4A30(a2);

    return sub_2756D4A30(a4);
  }

  return result;
}

uint64_t sub_2756D4CC4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2756D4CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2756D4D3C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for AccountImage() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  *&result = sub_2756D26C8(a1, v6, a2).n128_u64[0];
  return result;
}

unint64_t sub_2756D4DBC()
{
  result = qword_2809FDA40;
  if (!qword_2809FDA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA38);
    sub_2756D4E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA40);
  }

  return result;
}

unint64_t sub_2756D4E48()
{
  result = qword_2809FDA48;
  if (!qword_2809FDA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA50);
    sub_2756D4ED4();
    sub_2756D4828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA48);
  }

  return result;
}

unint64_t sub_2756D4ED4()
{
  result = qword_2809FDA58;
  if (!qword_2809FDA58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA60);
    sub_2756D4F80(&qword_2809FDA68, &qword_2809FDA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA58);
  }

  return result;
}

uint64_t sub_2756D4F80(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2756D4FF0(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t sub_2756D5000()
{
  v1 = *(type metadata accessor for AccountImage() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2756D2260(v2);
}

unint64_t sub_2756D5060()
{
  result = qword_2809FDA80;
  if (!qword_2809FDA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA78);
    sub_2756D50EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA80);
  }

  return result;
}

unint64_t sub_2756D50EC()
{
  result = qword_2809FDA88;
  if (!qword_2809FDA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDA90);
    sub_2756CFA44(&qword_2809FDA98, &qword_2809FDAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDA88);
  }

  return result;
}

uint64_t objectdestroy_21Tm()
{
  v1 = type metadata accessor for AccountImage();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*(v1 - 8) + 64);
  v4 = v0 + v3;

  sub_2756D4CD0();

  v5 = *(v1 + 40);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD900);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v4 + v5, v6);
  }

  v9 = *(v1 + 44);
  if (!v8(v4 + v9, 1, v6))
  {
    (*(v7 + 8))(v4 + v9, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v11, v2 | 7);
}

uint64_t sub_2756D5378()
{
  type metadata accessor for AccountImage();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  return sub_2757975C0();
}

uint64_t sub_2756D54BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756D552C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797BC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_275797BE0();
  MEMORY[0x28223BE20](v3 - 8);

  sub_275797BD0();
  v4 = MEMORY[0x277D84F90];
  sub_2756D5834(MEMORY[0x277D84F90]);
  sub_275797BB0();
  sub_2756D5834(v4);
  sub_2756D5834(v4);
  sub_275797BF0();
  v5 = sub_275797C00();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

uint64_t sub_2756D569C()
{
  v1 = *(v0 + 40);

  return v1;
}

double sub_2756D56CC@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

__n128 sub_2756D56DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

unint64_t sub_2756D56F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_275798980())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2756D57B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_275798A40();
  sub_275797FF0();
  v5 = sub_275798A70();

  return a3(a1, a2, v5);
}

unint64_t sub_2756D5834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    v3 = sub_275798870();
    v4 = a1 + 32;

    while (1)
    {
      sub_2756C9074(v4, &v13, &qword_2809FDAD0);
      v5 = v13;
      v6 = v14;
      result = sub_2756D57B0(v13, v14, sub_2756D56F8);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2756D5AA8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_2756D597C()
{
  result = qword_2809FDAC0;
  if (!qword_2809FDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDAC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine11ActionModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2756D5A04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2756D5A4C(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

_OWORD *sub_2756D5AA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2756D5ABC()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];

  return sub_2757973E0();
}

double sub_2756D5B00()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v16 = MEMORY[0x277D84F90];
    sub_2756D7D64(0, v2, 0);
    v3 = v16;
    v4 = *(v16 + 16);
    v5 = (v1 + 48);
    do
    {
      v6 = *v5;
      v17 = v3;
      v7 = *(v3 + 24);
      v8 = v4 + 1;
      if (v4 >= v7 >> 1)
      {
        sub_2756D7D64((v7 > 1), v4 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v8;
      *(v3 + 8 * v4 + 32) = v6;
      v5 += 6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {
      v10 = 0.0;
      goto LABEL_15;
    }
  }

  if (v8 <= 3)
  {
    v9 = 0;
    v10 = 0.0;
LABEL_13:
    v13 = v8 - v9;
    v14 = 8 * v9 + 32;
    do
    {
      v10 = v10 + *(v3 + v14);
      v14 += 8;
      --v13;
    }

    while (v13);
    goto LABEL_15;
  }

  v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = (v3 + 48);
  v10 = 0.0;
  v12 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  do
  {
    v10 = v10 + *(v11 - 2) + *(v11 - 1) + *v11 + v11[1];
    v11 += 4;
    v12 -= 4;
  }

  while (v12);
  if (v8 != v9)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v10;
}

uint64_t type metadata accessor for MeterView()
{
  result = qword_280A02230;
  if (!qword_280A02230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756D5CE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_275796C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD8);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_2756D8C2C(v2, &v17 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_275796710();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_275798300();
    v14 = sub_275796F80();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_27562792C(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&dword_275623000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x277C81E50](v16, -1, -1);
      MEMORY[0x277C81E50](v15, -1, -1);
    }

    sub_275796C20();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2756D5F84(uint64_t a1)
{
  v2 = sub_275796710();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_275796AE0();
}

uint64_t sub_2756D604C@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for MeterView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_2756D8B00(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeterView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2756D6A8C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a1 = sub_2756D6AF0;
  a1[1] = v7;
  return result;
}

uint64_t sub_2756D6154@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65[0] = a1;
  v73 = a3;
  v71 = sub_275796A30();
  MEMORY[0x28223BE20](v71);
  v72 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275796810();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = type metadata accessor for MeterView();
  v66 = *(v9 - 8);
  v10 = *(v66 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v65 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB68);
  MEMORY[0x28223BE20](v67);
  *&v74 = v65 - v15;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB70);
  MEMORY[0x28223BE20](v69);
  v70 = v65 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB78);
  MEMORY[0x28223BE20](v68);
  v75 = v65 - v17;
  *v14 = sub_275796C80();
  *(v14 + 1) = 0x3FF0000000000000;
  v14[16] = 0;
  v65[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB80) + 44);
  *&v76 = *a2;
  sub_2756D8B00(a2, v11, type metadata accessor for MeterView);
  (*(v7 + 16))(v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v18 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v19 = (v10 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_2756D6A8C(v11, v20 + v18);
  (*(v7 + 32))(v20 + v19, v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB88);
  sub_2756CFA44(&qword_2809FDB90, &qword_2809FDB88);
  sub_2756D8A58();
  sub_2756D8AAC();
  sub_2757977B0();
  sub_275796800();
  sub_275797820();
  sub_275796A70();
  v21 = v74;
  sub_2756D8BC4(v14, v74, &qword_2809FDB60);
  v22 = (v21 + *(v67 + 36));
  v23 = v81;
  v22[4] = v80;
  v22[5] = v23;
  v22[6] = v82;
  v24 = v77;
  *v22 = v76;
  v22[1] = v24;
  v25 = v79;
  v22[2] = v78;
  v22[3] = v25;
  v26 = objc_opt_self();
  v27 = [v26 tertiarySystemBackgroundColor];
  v28 = sub_2757973E0();
  LOBYTE(v8) = sub_275796FA0();
  v29 = v70;
  sub_2756D8BC4(v21, v70, &qword_2809FDB68);
  v30 = v29 + *(v69 + 36);
  *v30 = v28;
  *(v30 + 8) = v8;
  v31 = v75;
  v32 = (v75 + *(v68 + 36));
  v33 = sub_275796A40();
  v34 = *(v33 + 20);
  v35 = *MEMORY[0x277CE0118];
  v36 = sub_275796D00();
  v37 = *(*(v36 - 8) + 104);
  v37(&v32[v34], v35, v36);
  __asm { FMOV            V0.2D, #3.0 }

  v74 = _Q0;
  *v32 = _Q0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBA8);
  *&v32[*(v69 + 36)] = 256;
  sub_2756D8BC4(v29, v31, &qword_2809FDB70);
  v43 = v72;
  v37(&v72[*(v33 + 20)], v35, v36);
  *v43 = v74;
  *(v43 + *(v71 + 20)) = 0xBFF0000000000000;
  v44 = [v26 quaternaryLabelColor];
  sub_2757973E0();
  v45 = sub_2757974E0();

  sub_275796770();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBB0);
  v47 = v73;
  v48 = v73 + *(v46 + 36);
  sub_2756D8B00(v43, v48, MEMORY[0x277CDFBC8]);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBB8) + 36);
  v50 = v84;
  *v49 = v83;
  *(v49 + 16) = v50;
  *(v49 + 32) = v85;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBC0);
  *(v48 + *(v51 + 52)) = v45;
  *(v48 + *(v51 + 56)) = 256;
  v52 = sub_275797820();
  v54 = v53;
  sub_2756D8B68(v43);
  v55 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBC8) + 36));
  *v55 = v52;
  v55[1] = v54;
  v56 = sub_275797460();
  v57 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBD0) + 36);
  *v57 = v56;
  __asm { FMOV            V0.2D, #1.0 }

  *(v57 + 8) = _Q0;
  *(v57 + 24) = 0x3FF0000000000000;
  v59 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBD8) + 36));
  v37(&v59[*(v33 + 20)], v35, v36);
  *v59 = v74;
  *&v59[*(v69 + 36)] = 256;
  v60 = sub_275797820();
  v62 = v61;
  v63 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBE0) + 36));
  *v63 = v60;
  v63[1] = v62;
  return sub_2756D8BC4(v75, v47, &qword_2809FDB78);
}

uint64_t sub_2756D6A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MeterView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756D6AF4@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v55 = a3;
  v5 = sub_275796710();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v53 - v10;
  v12 = a1[1];
  v57 = *a1;
  v58 = v12;
  v59 = a1[2];
  type metadata accessor for MeterView();
  sub_2756D5CE4(v11);
  (*(v6 + 104))(v9, *MEMORY[0x277CDF3D0], v5);
  LOBYTE(a1) = sub_275796700();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  v14 = 40;
  if (a1)
  {
    v14 = 32;
  }

  v54 = *(&v57 + v14);

  result = sub_275796800();
  v17 = v16;
  v18 = 0;
  v53[1] = a2;
  v19 = *a2;
  v20 = *(*a2 + 16);
  v21 = *a2 + 24;
  v22 = MEMORY[0x277D84F90];
LABEL_4:
  v23 = v21 + 48 * v18;
  while (v20 != v18)
  {
    if (v18 >= *(v19 + 16))
    {
      __break(1u);
      return result;
    }

    v24 = (v23 + 48);
    ++v18;
    v25 = *(v23 + 32);
    v23 += 48;
    if ((v25 & 1) == 0)
    {
      v26 = *(v24 - 5);
      v27 = *(v24 - 4);
      v28 = *(v24 - 3);
      v29 = *(v24 - 1);
      v30 = *v24;

      result = swift_isUniquelyReferenced_nonNull_native();
      *&v56[0] = v22;
      v53[0] = v21;
      if ((result & 1) == 0)
      {
        result = sub_2756D7D84(0, *(v22 + 16) + 1, 1);
        v22 = *&v56[0];
      }

      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        result = sub_2756D7D84((v31 > 1), v32 + 1, 1);
        v22 = *&v56[0];
      }

      *(v22 + 16) = v32 + 1;
      v33 = v22 + 48 * v32;
      *(v33 + 32) = v26;
      *(v33 + 40) = v27;
      *(v33 + 48) = v28;
      *(v33 + 56) = 0;
      *(v33 + 64) = v29;
      *(v33 + 72) = v30;
      v21 = v53[0];
      goto LABEL_4;
    }
  }

  v34 = *(v22 + 16);

  v35 = v17 - (v34 * 15.0 - (*(v19 + 16) - 1));
  v36 = *&v58;
  v37 = round(*&v58 / sub_2756D5B00() * v35);
  if (BYTE8(v58))
  {
    v38 = sub_2756ED3E0();
    v40 = v39;
    v41 = sub_275700C10();
    v43 = v42;
    v44 = sub_2756D5B00();
    v45 = v55;
    v46 = v54;
    if (v36 / v44 <= 0.2)
    {
      v47 = 0;
      v49 = 0;
    }

    else
    {
      v47 = sub_275700C10();
      v49 = v48;
    }
  }

  else
  {
    v37 = v37 + 15.0;
    v40 = *(&v57 + 1);
    v38 = v57;

    v41 = sub_275700C10();
    v43 = v50;
    v47 = 0;
    v49 = 0;
    v45 = v55;
    v46 = v54;
  }

  sub_2756CC6AC();
  result = sub_27576051C(v46, v38, v40, v41, v43, v47, v49, v56, v37);
  v51 = v56[3];
  v45[2] = v56[2];
  v45[3] = v51;
  v45[4] = v56[4];
  v52 = v56[1];
  *v45 = v56[0];
  v45[1] = v52;
  return result;
}

uint64_t sub_2756D6F2C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD8);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2756D6F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for MeterView();
  return sub_2756D8BC4(a2, a3 + *(v5 + 20), &qword_2809FDAE0);
}

uint64_t sub_2756D6FDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2756D8B00(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MeterView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_2756D6A8C(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_2756D8CA8;
  a2[1] = v7;
  return result;
}

double sub_2756D70DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FA0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v14, 100000000.0);
  v3 = v14[1];
  v0[2] = v14[0];
  v0[3] = v3;
  v0[4] = v14[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v15, 100000000.0);
  v6 = v15[1];
  v0[5] = v15[0];
  v0[6] = v6;
  v0[7] = v15[2];
  v7 = objc_opt_self();
  v8 = [v7 tertiarySystemBackgroundColor];
  v9 = sub_2757973E0();
  v10 = [v7 tertiarySystemBackgroundColor];
  v11 = sub_2757973E0();
  sub_275700CD8(0x424720382E34, 0xE600000000000000, 1, v9, v11, v16, 4800000000.0);
  v12 = v16[1];
  v0[8] = v16[0];
  v0[9] = v12;
  result = *&v17;
  v0[10] = v17;
  qword_280A0D798 = v0;
  return result;
}

uint64_t *sub_2756D7270()
{
  if (qword_280A02090 != -1)
  {
    swift_once();
  }

  return &qword_280A0D798;
}

uint64_t (*sub_2756D7308())()
{
  if (qword_280A02090 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_2756D7390()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FB0;
  v1 = sub_275797490();
  v2 = sub_275797490();
  sub_275700CD8(0xD000000000000011, 0x80000002757B8280, 0, v1, v2, v23, 4900000000.0);
  v3 = v23[1];
  v0[2] = v23[0];
  v0[3] = v3;
  v0[4] = v23[2];
  v4 = sub_2757974C0();
  v5 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xE900000000000073, 0, v4, v5, v24, 100000000.0);
  v6 = v24[1];
  v0[5] = v24[0];
  v0[6] = v6;
  v0[7] = v24[2];
  v7 = sub_275797400();
  v8 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003273, 0, v7, v8, v25, 100000000.0);
  v9 = v25[1];
  v0[8] = v25[0];
  v0[9] = v9;
  v0[10] = v25[2];
  v10 = sub_275797460();
  v11 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003373, 0, v10, v11, v26, 100000000.0);
  v12 = v26[1];
  v0[11] = v26[0];
  v0[12] = v12;
  v0[13] = v26[2];
  v13 = sub_275797430();
  v14 = sub_2757974C0();
  sub_275700CD8(0x746E656D75636F44, 0xEA00000000003473, 0, v13, v14, v27, 100000000.0);
  v15 = v27[1];
  v0[14] = v27[0];
  v0[15] = v15;
  v0[16] = v27[2];
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemBackgroundColor];
  v18 = sub_2757973E0();
  v19 = [v16 tertiarySystemBackgroundColor];
  v20 = sub_2757973E0();
  sub_275700CD8(1112219696, 0xE400000000000000, 1, v18, v20, v28, 0.0);
  v21 = v28[1];
  v0[17] = v28[0];
  v0[18] = v21;
  result = *&v29;
  v0[19] = v29;
  qword_280A0D7A0 = v0;
  return result;
}

uint64_t *sub_2756D75E8()
{
  if (qword_280A02098 != -1)
  {
    swift_once();
  }

  return &qword_280A0D7A0;
}

uint64_t sub_2756D765C(void *a1)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_2756D76DC(uint64_t a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*sub_2756D7744())()
{
  if (qword_280A02098[0] != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

_OWORD *sub_2756D77CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v0 = swift_allocObject();
  v0[1] = xmmword_2757A4FC0;
  v1 = sub_275797400();
  v2 = sub_275797400();
  sub_275700CD8(1953719636, 0xE400000000000000, 0, v1, v2, v8, 1000000.0);
  v3 = v8[1];
  v0[2] = v8[0];
  v0[3] = v3;
  v0[4] = v8[2];
  v4 = sub_275797410();
  v5 = sub_275797410();
  sub_275700CD8(0x322074736554, 0xE600000000000000, 0, v4, v5, v9, 2000000.0);
  v6 = v9[1];
  v0[5] = v9[0];
  v0[6] = v6;
  v0[7] = v9[2];
  return v0;
}

_OWORD *sub_2756D78FC(uint64_t a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v6 = swift_allocObject();
  v6[1] = xmmword_2757A4FA0;
  v7 = sub_275797400();
  v8 = sub_275797400();
  sub_275700CD8(1953719636, 0xE400000000000000, 0, v7, v8, v17, 1000000.0);
  v9 = v17[1];
  v6[2] = v17[0];
  v6[3] = v9;
  v6[4] = v17[2];
  v10 = sub_275797410();
  v11 = sub_275797410();
  sub_275700CD8(0x322074736554, 0xE600000000000000, 0, v10, v11, v18, 2000000.0);
  v12 = v18[1];
  v6[5] = v18[0];
  v6[6] = v12;
  v6[7] = v18[2];
  v13 = sub_275797480();
  v14 = sub_275797410();
  sub_275700CD8(a1, a2, 1, v13, v14, v19, a3);
  v15 = v19[1];
  v6[8] = v19[0];
  v6[9] = v15;
  v6[10] = v19[2];
  return v6;
}

uint64_t sub_2756D7A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAF0);
  v1 = sub_2756D83A4();

  return MEMORY[0x282133AC0](0, 5, sub_2756D83A0, 0, v0, v1);
}

uint64_t sub_2756D7ABC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MeterView();
  MEMORY[0x28223BE20](v4);
  v6 = (v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2756D7FC8();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(result + 16) > a1)
  {
    v8 = *(result + 8 * a1 + 32);

    *(v6 + *(v4 + 20)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD8);
    swift_storeEnumTagMultiPayload();
    *v6 = v8;
    sub_275797820();
    sub_275796A70();
    sub_2756D6A8C(v6, a2);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAF0);
    v9 = (a2 + *(result + 36));
    v10 = v13[5];
    v9[4] = v13[4];
    v9[5] = v10;
    v9[6] = v13[6];
    v11 = v13[1];
    *v9 = v13[0];
    v9[1] = v11;
    v12 = v13[3];
    v9[2] = v13[2];
    v9[3] = v12;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2756D7C50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAF0);
  v1 = sub_2756D83A4();

  return MEMORY[0x282133AC0](0, 5, sub_2756D8CA4, 0, v0, v1);
}

uint64_t sub_2756D7CCC(uint64_t a1)
{
  v2 = sub_2756D8784();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2756D7D18(uint64_t a1)
{
  v2 = sub_2756D8784();

  return MEMORY[0x28212D8E0](a1, v2);
}

char *sub_2756D7D64(char *a1, int64_t a2, char a3)
{
  result = sub_2756D7DA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2756D7D84(char *a1, int64_t a2, char a3)
{
  result = sub_2756D7EA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2756D7DA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2756D7EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2756D7FC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDB58);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2757A4FD0;
  if (qword_280A02090 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 32) = qword_280A0D798;
  v1 = qword_280A02098[0];

  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 40) = qword_280A0D7A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAE8);
  v2 = swift_allocObject();
  v2[1] = xmmword_2757A4FC0;

  v3 = sub_275797400();
  v4 = sub_275797400();
  sub_275700CD8(1953719636, 0xE400000000000000, 0, v3, v4, v30, 1000000.0);
  v5 = v30[1];
  v2[2] = v30[0];
  v2[3] = v5;
  v2[4] = v30[2];
  v6 = sub_275797410();
  v7 = sub_275797410();
  sub_275700CD8(0x322074736554, 0xE600000000000000, 0, v6, v7, v31, 2000000.0);
  v8 = v31[1];
  v2[5] = v31[0];
  v2[6] = v8;
  v2[7] = v31[2];
  *(v0 + 48) = v2;
  v9 = swift_allocObject();
  v9[1] = xmmword_2757A4FA0;
  v10 = sub_275797400();
  v11 = sub_275797400();
  sub_275700CD8(1953719636, 0xE400000000000000, 0, v10, v11, v32, 1000000.0);
  v12 = v32[1];
  v9[2] = v32[0];
  v9[3] = v12;
  v9[4] = v32[2];
  v13 = sub_275797410();
  v14 = sub_275797410();
  sub_275700CD8(0x322074736554, 0xE600000000000000, 0, v13, v14, v33, 2000000.0);
  v15 = v33[1];
  v9[5] = v33[0];
  v9[6] = v15;
  v9[7] = v33[2];
  v16 = sub_275797480();
  v17 = sub_275797410();
  sub_275700CD8(0x424B20343931, 0xE600000000000000, 1, v16, v17, v34, 200000.0);
  v18 = v34[1];
  v9[8] = v34[0];
  v9[9] = v18;
  v9[10] = v34[2];
  *(v0 + 56) = v9;
  v19 = swift_allocObject();
  v19[1] = xmmword_2757A4FA0;
  v20 = sub_275797400();
  v21 = sub_275797400();
  sub_275700CD8(1953719636, 0xE400000000000000, 0, v20, v21, v35, 1000000.0);
  v22 = v35[1];
  v19[2] = v35[0];
  v19[3] = v22;
  v19[4] = v35[2];
  v23 = sub_275797410();
  v24 = sub_275797410();
  sub_275700CD8(0x322074736554, 0xE600000000000000, 0, v23, v24, v36, 2000000.0);
  v25 = v36[1];
  v19[5] = v36[0];
  v19[6] = v25;
  v19[7] = v36[2];
  v26 = sub_275797480();
  v27 = sub_275797410();
  sub_275700CD8(0x424D20372E303931, 0xE800000000000000, 1, v26, v27, v37, 200000000.0);
  v28 = v37[1];
  v19[8] = v37[0];
  v19[9] = v28;
  v19[10] = v37[2];
  *(v0 + 64) = v19;
  return v0;
}

unint64_t sub_2756D83A4()
{
  result = qword_2809FDAF8;
  if (!qword_2809FDAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDAF0);
    sub_2756D8430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDAF8);
  }

  return result;
}

unint64_t sub_2756D8430()
{
  result = qword_2809FDB00;
  if (!qword_2809FDB00)
  {
    type metadata accessor for MeterView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDB00);
  }

  return result;
}

unint64_t sub_2756D84A8()
{
  result = qword_2809FDB08;
  if (!qword_2809FDB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDB08);
  }

  return result;
}

void sub_2756D8540()
{
  sub_2756D85C4();
  if (v0 <= 0x3F)
  {
    sub_2756D8614();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2756D85C4()
{
  if (!qword_2809FDB10)
  {
    v0 = sub_275798140();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FDB10);
    }
  }
}

void sub_2756D8614()
{
  if (!qword_2809FDB18)
  {
    sub_275796710();
    v0 = sub_275796730();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FDB18);
    }
  }
}

unint64_t sub_2756D867C()
{
  result = qword_2809FDB30;
  if (!qword_2809FDB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDB38);
    sub_2756D8700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDB30);
  }

  return result;
}

unint64_t sub_2756D8700()
{
  result = qword_2809FDB40;
  if (!qword_2809FDB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDB48);
    sub_2756D83A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDB40);
  }

  return result;
}

unint64_t sub_2756D8784()
{
  result = qword_2809FDB50;
  if (!qword_2809FDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDB50);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for MeterView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_275796710();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2756D88F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MeterView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_2756D6154(a1, v6, a2);
}

uint64_t sub_2756D8974@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for MeterView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  sub_275796810();

  return sub_2756D6AF4(a1, (v2 + v6), a2);
}

unint64_t sub_2756D8A58()
{
  result = qword_2809FDB98;
  if (!qword_2809FDB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDB98);
  }

  return result;
}

unint64_t sub_2756D8AAC()
{
  result = qword_2809FDBA0;
  if (!qword_2809FDBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDBA0);
  }

  return result;
}

uint64_t sub_2756D8B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2756D8B68(uint64_t a1)
{
  v2 = sub_275796A30();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756D8BC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2756D8C2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756D8CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275797BC0();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_275797BE0();
  MEMORY[0x28223BE20](v3 - 8);
  sub_275797BD0();
  v4 = MEMORY[0x277D84F90];
  sub_2756D5834(MEMORY[0x277D84F90]);
  sub_275797BB0();
  sub_2756D5834(v4);
  sub_2756D5834(v4);
  sub_275797BF0();
  v5 = sub_275797C00();
  return (*(*(v5 - 8) + 56))(a1, 0, 1, v5);
}

unint64_t sub_2756D8E20()
{
  result = qword_2809FDBF0;
  if (!qword_2809FDBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDBF0);
  }

  return result;
}

uint64_t sub_2756D8E84()
{
  type metadata accessor for ManageStorageLiftUIManager();
  v0 = swift_allocObject();
  result = sub_2756D9758();
  qword_280A0D7A8 = v0;
  return result;
}

uint64_t sub_2756D8EC0()
{
  v0 = swift_allocObject();
  sub_2756D9758();
  return v0;
}

uint64_t *sub_2756D8EF8()
{
  if (qword_280A02340 != -1)
  {
    swift_once();
  }

  return &qword_280A0D7A8;
}

uint64_t sub_2756D8F48()
{
  if (qword_280A02340 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2756D8FFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_2756D90D8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t ManageStorageLiftUIManager.__allocating_init(account:)(void *a1)
{
  v2 = swift_allocObject();
  ManageStorageLiftUIManager.init(account:)(a1);
  return v2;
}

uint64_t ManageStorageLiftUIManager.init(account:)(void *a1)
{
  v2 = v1;
  v23 = sub_275796280();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_275796210();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275796480();
  *(v1 + 24) = 0u;
  *(v1 + 56) = 0;
  v11 = (v1 + 56);
  *(v1 + 40) = 0u;
  v12 = (v1 + 40);
  v13 = [objc_allocWithZone(v10) init];
  type metadata accessor for SettingsIconSizeModifier();
  sub_2756DA1AC(&qword_2809FDBF8, 255, type metadata accessor for SettingsIconSizeModifier);
  sub_275796470();
  type metadata accessor for ScaledAsyncImageView();
  sub_2756DA1AC(&qword_2809FD798, 255, type metadata accessor for ScaledAsyncImageView);
  sub_275796450();
  type metadata accessor for DrilldownIconView();
  sub_2756DA1AC(&qword_2809FD880, 255, type metadata accessor for DrilldownIconView);
  sub_275796450();
  type metadata accessor for ShowInFinderAction();
  sub_2756DA1AC(&qword_2809FDC00, 255, type metadata accessor for ShowInFinderAction);
  sub_275796460();
  type metadata accessor for ReloadStorageAppsAction();
  sub_2756DA1AC(&qword_2809FDC08, 255, type metadata accessor for ReloadStorageAppsAction);
  sub_275796460();
  type metadata accessor for OpenDeepLinkAction();
  sub_2756DA1AC(&qword_2809FDC10, 255, type metadata accessor for OpenDeepLinkAction);
  sub_275796460();
  type metadata accessor for ClearStorageAppsModelAction();
  sub_2756DA1AC(&qword_2809FDC18, 255, type metadata accessor for ClearStorageAppsModelAction);
  sub_275796460();
  type metadata accessor for OpenApplicationAction();
  sub_2756DA1AC(&qword_2809FDC20, 255, type metadata accessor for OpenApplicationAction);
  sub_275796460();
  *(v2 + 16) = v13;
  v14 = objc_allocWithZone(sub_275795F10());
  v15 = v13;
  v16 = a1;
  v17 = sub_275795EF0();
  v18 = sub_2756DA1AC(&qword_2809FDC28, 255, MEMORY[0x277D7F240]);
  swift_beginAccess();
  *v12 = v17;
  *(v2 + 48) = v18;
  swift_unknownObjectRelease();
  type metadata accessor for ManageStorageAnalytics();
  v19 = sub_275700E70();
  (*(v4 + 16))(v6, v19, v23);
  sub_2757961F0();
  v20 = sub_27575128C(v9);

  swift_beginAccess();
  *v11 = v20;

  return v2;
}

uint64_t sub_2756D9758()
{
  v1 = v0;
  v2 = sub_275796480();
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  v3 = [objc_allocWithZone(v2) init];
  type metadata accessor for SettingsIconSizeModifier();
  sub_2756DA1AC(&qword_2809FDBF8, 255, type metadata accessor for SettingsIconSizeModifier);
  sub_275796470();
  type metadata accessor for ScaledAsyncImageView();
  sub_2756DA1AC(&qword_2809FD798, 255, type metadata accessor for ScaledAsyncImageView);
  sub_275796450();
  type metadata accessor for DrilldownIconView();
  sub_2756DA1AC(&qword_2809FD880, 255, type metadata accessor for DrilldownIconView);
  sub_275796450();
  type metadata accessor for ShowInFinderAction();
  sub_2756DA1AC(&qword_2809FDC00, 255, type metadata accessor for ShowInFinderAction);
  sub_275796460();
  type metadata accessor for ReloadStorageAppsAction();
  sub_2756DA1AC(&qword_2809FDC08, 255, type metadata accessor for ReloadStorageAppsAction);
  sub_275796460();
  type metadata accessor for OpenDeepLinkAction();
  sub_2756DA1AC(&qword_2809FDC10, 255, type metadata accessor for OpenDeepLinkAction);
  sub_275796460();
  type metadata accessor for ClearStorageAppsModelAction();
  sub_2756DA1AC(&qword_2809FDC18, 255, type metadata accessor for ClearStorageAppsModelAction);
  sub_275796460();
  type metadata accessor for OpenApplicationAction();
  sub_2756DA1AC(&qword_2809FDC20, 255, type metadata accessor for OpenApplicationAction);
  sub_275796460();
  *(v1 + 16) = v3;
  return v1;
}

uint64_t sub_2756D9B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v43 = a1;
  v54 = a4;
  v8 = sub_275795D60();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_275795CB0();
  v11 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_275796570();
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC30);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v16 = &v39 - v15;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC38);
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v18 = &v39 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC40);
  MEMORY[0x28223BE20](v50);
  v47 = &v39 - v19;
  v4[3] = a2;
  v4[4] = a3;

  v21 = (*(*v4 + 136))(v20);
  if (v21)
  {
    v23 = *(v11 + 16);
    v39 = v21;
    v40 = v22;
    v23(v42, v43, v41);
    sub_275795D50();
    sub_275795D40();
    (*(v44 + 8))(v10, v45);
    sub_275796500();
    swift_allocObject();
    sub_2757964F0();
    sub_2757964A0();
    swift_allocObject();
    sub_275796490();
    sub_275796550();
    v25 = sub_2756DA1AC(&qword_2809FDC50, v24, type metadata accessor for ManageStorageLiftUIManager);
    v26 = sub_2756DA1AC(&qword_2809FDC58, 255, MEMORY[0x277D23388]);
    v27 = v46;
    MEMORY[0x277C7F260](v5, v25, v46, v26);
    (*(v48 + 8))(v14, v27);
    v28 = v5[2];
    v55 = v27;
    v56 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = v28;
    v31 = v52;
    MEMORY[0x277C7F240](v30, v52, OpaqueTypeConformance2);
    (*(v49 + 8))(v16, v31);
    v55 = v31;
    v56 = OpaqueTypeConformance2;
    v32 = swift_getOpaqueTypeConformance2();
    v33 = v53;
    MEMORY[0x277C7F230](v39, v40, v53, v32);
    (*(v51 + 8))(v18, v33);
    v55 = v33;
    v56 = v32;
    swift_getOpaqueTypeConformance2();
    v34 = sub_275797720();
    result = swift_unknownObjectRelease();
  }

  else
  {
    if (a3)
    {
      v36 = a2;
    }

    else
    {
      v36 = 0;
    }

    if (a3)
    {
      v37 = a3;
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    v55 = nullsub_1(v36, v37);
    v56 = v38;
    sub_2756DA134();
    result = sub_275797720();
    v34 = result;
  }

  *v54 = v34;
  return result;
}

unint64_t sub_2756DA134()
{
  result = qword_2809FDC48;
  if (!qword_2809FDC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDC48);
  }

  return result;
}

uint64_t sub_2756DA1AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2756DA1F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v41 = sub_275795D60();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275796570();
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC30);
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC38);
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC40);
  v16 = MEMORY[0x28223BE20](v47);
  v44 = &v34 - v17;
  v18 = (*(*v3 + 136))(v16);
  if (v18)
  {
    v38 = v19;
    v39 = v18;
    v35 = v12;
    v36 = v15;
    sub_2756DA75C(v42, v43);
    sub_275795D50();
    sub_275795D40();
    v37 = v13;
    v40 = a3;
    (*(v5 + 8))(v7, v41);
    sub_275796500();
    swift_allocObject();
    sub_2757964F0();
    sub_2757964A0();
    swift_allocObject();
    sub_275796490();
    sub_275796560();
    v21 = sub_2756DA1AC(&qword_2809FDC50, v20, type metadata accessor for ManageStorageLiftUIManager);
    v22 = sub_2756DA1AC(&qword_2809FDC58, 255, MEMORY[0x277D23388]);
    v23 = v35;
    MEMORY[0x277C7F260](v3, v21, v8, v22);
    (*(v45 + 8))(v10, v8);
    v24 = v3[2];
    v50 = v8;
    v51 = v22;
    a3 = v40;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v26 = v36;
    v27 = v24;
    v28 = v49;
    MEMORY[0x277C7F240](v27, v49, OpaqueTypeConformance2);
    (*(v46 + 8))(v23, v28);
    v50 = v28;
    v51 = OpaqueTypeConformance2;
    v29 = swift_getOpaqueTypeConformance2();
    v30 = v37;
    MEMORY[0x277C7F230](v39, v38, v37, v29);
    (*(v48 + 8))(v26, v30);
    v50 = v30;
    v51 = v29;
    swift_getOpaqueTypeConformance2();
    v31 = sub_275797720();
    result = swift_unknownObjectRelease();
  }

  else
  {
    v50 = nullsub_1(0, 0);
    v51 = v33;
    sub_2756DA134();
    result = sub_275797720();
    v31 = result;
  }

  *a3 = v31;
  return result;
}

uint64_t sub_2756DA75C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2756DA7B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  nullsub_1(v1, v2);
  sub_2756DA134();
  return sub_275797720();
}

uint64_t sub_2756DA808(uint64_t a1, uint64_t a2)
{
  nullsub_1(a1, a2);
  sub_2756DA840();

  return sub_275797720();
}

unint64_t sub_2756DA840()
{
  result = qword_2809FDC60;
  if (!qword_2809FDC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDC60);
  }

  return result;
}

uint64_t sub_2756DA894()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275700E70();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_275796270();
  v8 = sub_275798310();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275623000, v7, v8, "ManageStorageLiftUIManager successfully loaded LiftUI RemoteContentView", v9, 2u);
    MEMORY[0x277C81E50](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  result = (*(*v1 + 160))(v10);
  if (result)
  {
    (*(*result + 136))(1);
  }

  return result;
}

uint64_t sub_2756DAA50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_275796280();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275700E70();
  (*(v7 + 16))(v9, v10, v6);
  v11 = a3;
  v12 = sub_275796270();
  v13 = sub_275798310();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a3;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_275623000, v12, v13, "ManageStorageLiftUIManager encountered an error while loading LiftUI RemoteContentView: %@", v14, 0xCu);
    sub_2756C5AE8(v15);
    MEMORY[0x277C81E50](v15, -1, -1);
    MEMORY[0x277C81E50](v14, -1, -1);
  }

  v18 = (*(v7 + 8))(v9, v6);
  result = (*(*v4 + 160))(v18);
  if (result)
  {
    (*(*result + 136))(0);
  }

  return result;
}

uint64_t ManageStorageLiftUIManager.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t ManageStorageLiftUIManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2756DAD88@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManageStorageLiftUIManager();
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

uint64_t sub_2756DAE80@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI18ShowInFinderAction_folderPath;
  v4 = sub_275796530();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2756DAEF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_2756DBE1C)(a1);
}

uint64_t sub_2756DAFB0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    v3 = 0xD000000000000011;
    if (v2 == 2)
    {
      v4 = 0x80000002757B83B0;
    }

    else
    {
      v4 = 0x80000002757B83D0;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C41726F727265;
    }

    else
    {
      v3 = 0x61507265646C6F66;
    }

    if (v2)
    {
      v4 = 0xEF656C7469547472;
    }

    else
    {
      v4 = 0xEA00000000006874;
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v6 = 0x80000002757B83B0;
    }

    else
    {
      v6 = 0x80000002757B83D0;
    }

    if (v3 != 0xD000000000000011)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0x656C41726F727265;
    }

    else
    {
      v5 = 0x61507265646C6F66;
    }

    if (a2)
    {
      v6 = 0xEF656C7469547472;
    }

    else
    {
      v6 = 0xEA00000000006874;
    }

    if (v3 != v5)
    {
      goto LABEL_26;
    }
  }

  if (v4 != v6)
  {
LABEL_26:
    v7 = sub_275798980();
    goto LABEL_27;
  }

  v7 = 1;
LABEL_27:

  return v7 & 1;
}

uint64_t sub_2756DB114()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756DB1F0()
{
  sub_275797FF0();
}

uint64_t sub_2756DB2B8()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756DB390@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756DC708();
  *a1 = result;
  return result;
}

void sub_2756DB3C0(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006874;
  v3 = 0x61507265646C6F66;
  v4 = 0x80000002757B83B0;
  if (*v1 != 2)
  {
    v4 = 0x80000002757B83D0;
  }

  if (*v1)
  {
    v3 = 0x656C41726F727265;
    v2 = 0xEF656C7469547472;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

unint64_t sub_2756DB458()
{
  v1 = 0x61507265646C6F66;
  if (*v0)
  {
    v1 = 0x656C41726F727265;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_2756DB4EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756DC708();
  *a1 = result;
  return result;
}

uint64_t sub_2756DB520(uint64_t a1)
{
  v2 = sub_2756DC2E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756DB55C(uint64_t a1)
{
  v2 = sub_2756DC2E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2756DB598(void *a1)
{
  v2 = swift_allocObject();
  sub_2756DB5E8(a1);
  return v2;
}

uint64_t *sub_2756DB5E8(void *a1)
{
  v16 = *v1;
  v4 = sub_275796530();
  v13 = *(v4 - 8);
  v14 = v4;
  MEMORY[0x28223BE20](v4);
  v15 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDC68);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756DC2E8();
  sub_275798A80();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v13;
    v17 = 0;
    sub_2756DC754(&qword_2809FD770, MEMORY[0x277D23340]);
    v11 = v14;
    sub_275798910();
    (*(v7 + 8))(v9, v6);
    (*(v10 + 32))(v1 + OBJC_IVAR____TtC13iCloudQuotaUI18ShowInFinderAction_folderPath, v15, v11);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t sub_2756DB88C()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI18ShowInFinderAction_folderPath;
  v2 = sub_275796530();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2756DB8EC()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI18ShowInFinderAction_folderPath;
  v2 = sub_275796530();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2756DB988(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2756DC7F0;

  return MEMORY[0x2821820D8](a1, a2);
}

uint64_t sub_2756DBA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2756DC7F0;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_2756DBAE0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_2756DBE1C)(a1);
}

uint64_t sub_2756DBB90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_2756DBDC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2756DB5E8(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2756DBE1C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_275796280();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_275795CB0();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2756DBF38, 0, 0);
}

id sub_2756DBF38()
{
  v36 = v0;
  v1 = sub_275796520();
  v3 = v2;
  v4 = v1;
  v5 = sub_275797F10();
  v6 = [v5 lastPathComponent];

  v7 = sub_275797F50();
  v9 = v8;

  v0[2] = v7;
  v0[3] = v9;
  v0[4] = 126;
  v0[5] = 0xE100000000000000;
  v0[6] = 46;
  v0[7] = 0xE100000000000000;
  v34 = sub_2756DC79C();
  v33 = MEMORY[0x277D837D0];
  sub_275798580();

  v10 = [objc_opt_self() defaultManager];
  v11 = sub_275797F10();
  v12 = [v10 URLForUbiquityContainerIdentifier_];

  if (v12)
  {
    sub_275795C90();

    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    v16 = v0[14];
    v15 = v0[15];
    v17 = v0[13];

    v18 = sub_275795C70();
    [v14 openURL:v18 configuration:0 completionHandler:0];

    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];

    v22 = sub_275700E70();
    (*(v20 + 16))(v19, v22, v21);

    v23 = sub_275796270();
    v24 = sub_275798310();

    v25 = os_log_type_enabled(v23, v24);
    v27 = v0[11];
    v26 = v0[12];
    v28 = v0[10];
    if (v25)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315138;
      v31 = sub_27562792C(v4, v3, &v35);

      *(v29 + 4) = v31;
      _os_log_impl(&dword_275623000, v23, v24, "ShowInFinderAction: Unable to generate URL for folder at path %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x277C81E50](v30, -1, -1);
      MEMORY[0x277C81E50](v29, -1, -1);
    }

    else
    {
    }

    (*(v27 + 8))(v26, v28);
  }

  v32 = v0[1];

  return v32();
}

unint64_t sub_2756DC2E8()
{
  result = qword_280A02450[0];
  if (!qword_280A02450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A02450);
  }

  return result;
}

uint64_t type metadata accessor for ShowInFinderAction()
{
  result = qword_280A025E0;
  if (!qword_280A025E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2756DC420()
{
  result = sub_275796530();
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

uint64_t getEnumTagSinglePayload for ShowInFinderAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowInFinderAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2756DC604()
{
  result = qword_280A02770[0];
  if (!qword_280A02770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A02770);
  }

  return result;
}

unint64_t sub_2756DC65C()
{
  result = qword_280A02880;
  if (!qword_280A02880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A02880);
  }

  return result;
}

unint64_t sub_2756DC6B4()
{
  result = qword_280A02888[0];
  if (!qword_280A02888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A02888);
  }

  return result;
}

uint64_t sub_2756DC708()
{
  v0 = sub_2757988A0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2756DC754(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756DC79C()
{
  result = qword_2809FEC90;
  if (!qword_2809FEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEC90);
  }

  return result;
}

uint64_t sub_2756DC81C()
{
  sub_275798A40();
  MEMORY[0x277C80B70](0);
  return sub_275798A70();
}

uint64_t sub_2756DC860()
{
  sub_275798A40();
  MEMORY[0x277C80B70](0);
  return sub_275798A70();
}

uint64_t sub_2756DC8B0()
{
  _s13OptionalErrorOMa();
  swift_getWitnessTable();

  return swift_allocError();
}

uint64_t sub_2756DC930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v8, a2);
  v9 = *(a2 + 16);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a3, v6, v9);
  }

  _s13OptionalErrorOMa();
  swift_getWitnessTable();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_2756DCB20@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (result)
  {
    result = sub_2757975A0();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    a3 = 0.0;
    v6 = 1;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = a3;
  return result;
}

uint64_t sub_2756DCB90@<X0>(void *a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = *(v1 + 8);
    result = sub_2757975A0();
    v5 = v7;
    v6 = v8;
  }

  else
  {
    v5 = 0;
    v3 = 0;
    v6 = 1;
  }

  *a1 = v5;
  a1[1] = v6;
  a1[2] = v3;
  return result;
}

uint64_t sub_2756DCC00@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v20[-v14];
  sub_2757967B0();
  v20[16] = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  if (v20[15])
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  (*(v9 + 32))(v15, v11, v8);
  *&v15[*(v13 + 44)] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a4;
  v18 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCB0) + 36));
  sub_275796860();

  sub_2757981C0();
  *v18 = &unk_2757A58D8;
  v18[1] = v17;
  return sub_2756DDDB8(v15, a3);
}

uint64_t sub_2756DCE10(char a1, uint64_t a2, double a3)
{
  *(v3 + 24) = a3;
  *(v3 + 16) = a2;
  *(v3 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = sub_2757981B0();
  *(v3 + 48) = sub_2757981A0();
  v5 = sub_275798160();

  return MEMORY[0x2822009F8](sub_2756DCEEC, v5, v4);
}

uint64_t sub_2756DCEEC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = *(v0 + 56);

  v5 = sub_2757981E0();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);

  v6 = sub_2757981A0();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v2;
  sub_2756DD678(0, 0, v1, &unk_2757A58F8, v7);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_2756DD01C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 64) = a1;
  *(v6 + 56) = a6;
  *(v6 + 34) = a5;
  v7 = sub_275798800();
  *(v6 + 72) = v7;
  *(v6 + 80) = *(v7 - 8);
  *(v6 + 88) = swift_task_alloc();
  v8 = sub_2757987F0();
  *(v6 + 96) = v8;
  *(v6 + 104) = *(v8 - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();
  sub_2757981B0();
  *(v6 + 128) = sub_2757981A0();
  v10 = sub_275798160();
  *(v6 + 136) = v10;
  *(v6 + 144) = v9;

  return MEMORY[0x2822009F8](sub_2756DD180, v10, v9);
}

uint64_t sub_2756DD180()
{
  *(v0 + 40) = *(v0 + 34);
  *(v0 + 48) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD8E8);
  sub_2757975B0();
  if (*(v0 + 33) == 1)
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    sub_2757987D0();
    sub_275798A90();
    sub_2757987E0();
    v6 = *(v5 + 8);
    *(v0 + 152) = v6;
    *(v0 + 160) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v4);
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_2757989E0();
    v7 = swift_task_alloc();
    *(v0 + 168) = v7;
    v8 = sub_2756DE214(&qword_2809FDCB8, MEMORY[0x277D85928]);
    *v7 = v0;
    v7[1] = sub_2756DD378;
    v9 = *(v0 + 120);
    v10 = *(v0 + 88);
    v11 = *(v0 + 72);

    return MEMORY[0x282200488](v9, v0 + 16, v10, v11, v8);
  }
}

uint64_t sub_2756DD378()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = v2[19];
  if (v0)
  {
    v4 = v2[15];
    v5 = v2[12];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3(v4, v5);
    v6 = v2[17];
    v7 = v2[18];
    v8 = sub_2756DD5EC;
  }

  else
  {
    v9 = v2[15];
    v10 = v2[12];
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3(v9, v10);
    v6 = v2[17];
    v7 = v2[18];
    v8 = sub_2756DD4F4;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2756DD4F4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  v3 = *(v0 + 34);

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  sub_275797830();
  sub_275796870();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2756DD5EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2756DD678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_2756DDED4(a3, v22 - v9);
  v11 = sub_2757981E0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_2756DDF44(v10);
  }

  else
  {
    sub_2757981D0();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_275798160();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_275797FD0() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_2756DDF44(a3);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2756DDF44(a3);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

unint64_t sub_2756DD928()
{
  result = qword_2809FDC80;
  if (!qword_2809FDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDC80);
  }

  return result;
}

uint64_t sub_2756DD998(uint64_t a1)
{
  v2 = sub_2756DE014();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_2756DD9E4(uint64_t a1)
{
  v2 = sub_2756DE014();

  return MEMORY[0x28212D8E0](a1, v2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DelayedSpinner(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for DelayedSpinner(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2756DDAF0()
{
  result = qword_2809FDC88;
  if (!qword_2809FDC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDC90);
    sub_2756DDB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDC88);
  }

  return result;
}

unint64_t sub_2756DDB74()
{
  result = qword_280A02C90[0];
  if (!qword_280A02C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A02C90);
  }

  return result;
}

unint64_t sub_2756DDBC8()
{
  result = qword_2809FDC98;
  if (!qword_2809FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDC98);
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

uint64_t sub_2756DDC30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2756DDC8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2756DDD0C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2756DBB90;

  return sub_2756DCE10(v2, v3, v4);
}

uint64_t sub_2756DDDB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756DDE28()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2756DBB90;

  return sub_2756DD01C(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_2756DDED4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756DDF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2756DE014()
{
  result = qword_2809FDCC0;
  if (!qword_2809FDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDCC0);
  }

  return result;
}

unint64_t sub_2756DE068()
{
  result = qword_2809FDCC8;
  if (!qword_2809FDCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDCB0);
    sub_2756DE124();
    sub_2756DE214(&qword_2809FDCE0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDCC8);
  }

  return result;
}

unint64_t sub_2756DE124()
{
  result = qword_2809FDCD0;
  if (!qword_2809FDCD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDCA8);
    sub_2756DE1B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDCD0);
  }

  return result;
}

unint64_t sub_2756DE1B0()
{
  result = qword_2809FDCD8;
  if (!qword_2809FDCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDCA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDCD8);
  }

  return result;
}

uint64_t sub_2756DE214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2756DE25C()
{
  type metadata accessor for PrivateRelayViewModel();
  sub_2756E1084(&qword_2809FDCE8, type metadata accessor for PrivateRelayViewModel);

  return sub_2757968F0();
}

uint64_t sub_2756DE30C(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2756DE344(uint64_t a1, uint64_t a2)
{
  v10 = (*(*a2 + 560))();
  v11 = v3;
  v12 = v4 & 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F8);
  MEMORY[0x277C7F850](&v9, v5);
  v6 = v9;

  if ((v6 & 1) == 0)
  {
    return sub_275797430();
  }

  if ((*(*a2 + 552))(v7))
  {
    return sub_2757974D0();
  }

  return sub_275797490();
}

uint64_t sub_2756DE438()
{
  type metadata accessor for PrivateRelayViewModel();
  sub_2756E1084(&qword_2809FDCE8, type metadata accessor for PrivateRelayViewModel);
  return sub_2757968F0();
}

uint64_t sub_2756DE4C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a3;
  v53 = a4;
  v40 = a2;
  v49 = a5;
  v9 = sub_2757969F0();
  v10 = *(v9 - 8);
  v45 = v9;
  v46 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCF8);
  v44 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v41 = &v40 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD00);
  v47 = *(v18 - 8);
  v48 = v18;
  MEMORY[0x28223BE20](v18);
  v51 = &v40 - v19;
  v58 = a1;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD08);
  sub_2756CFA44(&qword_2809FDD10, &qword_2809FDD08);
  sub_275797040();
  sub_275797850();
  v20 = sub_2756CFA44(&qword_2809FDD18, &qword_2809FDCF0);
  v21 = sub_2756E1084(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
  v22 = v45;
  sub_2757973C0();
  (*(v46 + 8))(v12, v22);
  (*(v14 + 8))(v16, v13);
  v46 = a1;
  v23 = v40;
  v54 = a1;
  v55 = v40;
  v56 = v52;
  v57 = v53;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD28);
  *&v73 = v13;
  *(&v73 + 1) = v22;
  *&v74 = v20;
  *(&v74 + 1) = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD30);
  v27 = sub_2756CFA44(&qword_2809FDD38, &qword_2809FDD30);
  *&v73 = v26;
  *(&v73 + 1) = v27;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v50;
  v45 = v24;
  v42 = v28;
  v43 = OpaqueTypeConformance2;
  v30 = v41;
  sub_275797380();
  v31 = (*(v44 + 8))(v30, v29);
  v32 = *(*v23 + 240);
  v32(&v71, v31);
  v33 = v72;
  if (v72)
  {
    v34 = v71;

    sub_2756E0620(v34, v33);
  }

  else
  {
    v34 = 0;
    v33 = 0xE000000000000000;
  }

  v69 = v34;
  v70 = v33;
  type metadata accessor for PrivateRelayViewModel();
  sub_2756E1084(&qword_2809FDCE8, type metadata accessor for PrivateRelayViewModel);
  sub_275796900();
  swift_getKeyPath();
  sub_275796910();

  v36 = (v32)(&v73, v35);
  v66 = v73;
  v67 = v74;
  v68 = v75;
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD40);
  v62 = v50;
  v63 = v45;
  v64 = v43;
  v65 = v42;
  swift_getOpaqueTypeConformance2();
  sub_2756DC79C();
  sub_2756E0944();
  v37 = v48;
  v38 = v51;
  sub_275797330();

  sub_2756C92B4(&v73, &qword_2809FDD50);

  return (*(v47 + 8))(v38, v37);
}

uint64_t sub_2756DEC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v46 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDC0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDC8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDD0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - v22;
  v40 = a1;
  v41 = a3;
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  v42 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDD8);
  sub_2756CFA44(&qword_2809FDDE0, &qword_2809FDDD8);
  v24 = sub_2757977F0();
  v25 = (*(*a2 + 152))(v24);
  if (v25)
  {
    v39 = &v39;
    MEMORY[0x28223BE20](v25);
    v26 = v41;
    *(&v39 - 4) = v40;
    *(&v39 - 3) = a2;
    v27 = v42;
    *(&v39 - 2) = v26;
    *(&v39 - 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDF0);
    sub_2756CFA44(&qword_2809FDDF8, &qword_2809FDDF0);
    v28 = v43;
    sub_2757977F0();
    v30 = v44;
    v29 = v45;
    (*(v44 + 32))(v16, v28, v45);
    v31 = 0;
    v32 = v29;
    v33 = v30;
  }

  else
  {
    v31 = 1;
    v33 = v44;
    v32 = v45;
  }

  (*(v33 + 56))(v16, v31, 1, v32);
  v34 = *(v18 + 16);
  v34(v21, v23, v17);
  sub_275629DC0(v16, v14);
  v35 = v46;
  v34(v46, v21, v17);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDE8);
  sub_275629DC0(v14, &v35[*(v36 + 48)]);
  sub_275629E30(v16);
  v37 = *(v18 + 8);
  v37(v23, v17);
  sub_275629E30(v14);
  return (v37)(v21, v17);
}

uint64_t sub_2756DF064@<X0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE38);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v57 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v57 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE40);
  v63 = *(v9 - 8);
  v64 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE48);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = &v57 - v15;
  v16 = *(*a1 + 22);
  v62 = a1[3];
  v17 = v16();
  v60 = v18;
  v61 = v17;
  v19 = (*(*a1 + 23))();
  v58 = v20;
  v59 = v19;
  v21 = *(*a1 + 70);
  *&v81 = v21();
  *(&v81 + 1) = v22;
  LOBYTE(v82) = v23 & 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD9F8);
  MEMORY[0x277C7F850](v72, v24);
  v25 = LOBYTE(v72[0]);

  if (v25 == 1)
  {
    if ((*(*a1 + 69))(v26))
    {
      v27 = sub_2757974D0();
    }

    else
    {
      v27 = sub_275797490();
    }
  }

  else
  {
    v27 = sub_275797430();
  }

  v28 = v27;
  v29 = [objc_opt_self() isCloudPrivateRelayAllowed];
  v30 = v21();
  v33 = sub_27575D370(v62, v61, v60, v59, v58, v28, v29, v30, &v88, v32, v31 & 1);
  (*(*a1 + 42))(&v92, v33);
  v34 = 1;
  if (v94)
  {
    v107 = v92;
    v108 = v93;
    v109 = v94;
    v110 = v95;
    v111 = v96;
    *v11 = sub_275796C80();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE68) + 44);
    *v8 = sub_275796D30();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE70);
    sub_2756DF794(&v107, &v8[*(v36 + 44)]);
    v37 = v57;
    sub_2756C9074(v8, v57, &qword_2809FDE38);
    sub_2756C9074(v37, &v11[v35], &qword_2809FDE38);
    sub_2756C92B4(v8, &qword_2809FDE38);
    sub_2756C92B4(v37, &qword_2809FDE38);
    sub_2756C92B4(&v92, &qword_2809FDE60);
    v38 = v66;
    sub_2756E16AC(v11, v66);
    v34 = 0;
  }

  else
  {
    v38 = v66;
  }

  v39 = (*(v63 + 56))(v38, v34, 1, v64);
  (*(*a1 + 43))(&v97, v39);
  if (v99)
  {
    v102 = v97;
    v103 = v98;
    v104 = v99;
    v105 = v100;
    v106 = v101;
    v40 = sub_275796C80();
    sub_2756DFEBC(&v81);
    sub_2756C92B4(&v97, &qword_2809FDE60);
    v41 = v81;
    v42 = v82;
    v43 = *(&v82 + 1);
    v44 = v83;
    v45 = BYTE8(v83);
    LOBYTE(v81) = 1;
    LOBYTE(v72[0]) = v82;
    LOBYTE(v79[0]) = BYTE8(v83);
    sub_2756E0DD0(v41, *(&v81 + 1), v82);
    v85[0] = v40;
    LOBYTE(v85[1]) = 1;
    *(&v85[1] + 8) = v41;
    BYTE8(v85[2]) = v42;
  }

  else
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    memset(v85, 0, sizeof(v85));
  }

  *&v86 = v43;
  *(&v86 + 1) = v44;
  v87 = v45;
  v46 = v65;
  v47 = v66;
  sub_2756C9074(v66, v65, &qword_2809FDE48);
  v69 = v85[2];
  v70 = v86;
  v67 = v85[0];
  v68 = v85[1];
  v49 = v90;
  v48 = v91[0];
  v72[2] = v90;
  v73[0] = v91[0];
  *(v73 + 9) = *(v91 + 9);
  v50 = v88;
  v51 = v89;
  v72[0] = v88;
  v72[1] = v89;
  *(a2 + 57) = *(v91 + 9);
  a2[2] = v49;
  a2[3] = v48;
  v71 = v87;
  *a2 = v50;
  a2[1] = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE50);
  sub_2756C9074(v46, a2 + *(v52 + 48), &qword_2809FDE48);
  v53 = a2 + *(v52 + 64);
  v78 = v71;
  v76 = v69;
  v77 = v70;
  v74 = v67;
  v75 = v68;
  sub_2756E15FC(v72, &v81);
  sub_2756C9074(&v74, &v81, &qword_2809FDE58);
  sub_2756C92B4(v85, &qword_2809FDE58);
  v54 = v77;
  *(v53 + 2) = v76;
  *(v53 + 3) = v54;
  v53[64] = v78;
  v55 = v75;
  *v53 = v74;
  *(v53 + 1) = v55;
  sub_2756C92B4(v47, &qword_2809FDE48);
  v79[2] = v69;
  v79[3] = v70;
  v80 = v71;
  v79[0] = v67;
  v79[1] = v68;
  sub_2756C92B4(v79, &qword_2809FDE58);
  sub_2756C92B4(v46, &qword_2809FDE48);
  v83 = v90;
  v84[0] = v91[0];
  *(v84 + 9) = *(v91 + 9);
  v81 = v88;
  v82 = v89;
  return sub_2756E1658(&v81);
}

uint64_t sub_2756DF794@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v62 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE78);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = *(a1 + 8);
  v63 = &v50 - v8;
  if (v7)
  {
    v64 = *a1;
    v65 = v7;
    sub_2756DC79C();

    v9 = sub_2757970D0();
    v11 = v10;
    v59 = v13;
    v60 = v9;
    v57 = v12 & 1;
    sub_2756E0DD0(v9, v13, v12 & 1);
    v58 = v11;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
  }

  v14 = *(a1 + 24);
  v64 = *(a1 + 16);
  v65 = v14;
  sub_2756DC79C();

  v15 = sub_2757970D0();
  v17 = v16;
  v19 = v18;
  sub_275796FF0();
  v20 = sub_2757970A0();
  v22 = v21;
  v24 = v23;

  sub_2756E15EC(v15, v17, v19 & 1);

  sub_275797500();
  v53 = sub_275797070();
  v52 = v25;
  v27 = v26;
  v54 = v28;

  sub_2756E15EC(v20, v22, v24 & 1);

  v66 = *(a1 + 32);
  v29 = *(&v66 + 1);
  if (*(&v66 + 1))
  {
    v30 = v66;
    v31 = swift_allocObject();
    v32 = *(a1 + 16);
    *(v31 + 16) = *a1;
    *(v31 + 32) = v32;
    v33 = *(a1 + 48);
    *(v31 + 48) = *(a1 + 32);
    *(v31 + 64) = v33;
    *(v31 + 80) = v30;
    *(v31 + 88) = v29;
    MEMORY[0x28223BE20](v31);
    *(&v50 - 2) = v30;
    *(&v50 - 1) = v29;
    sub_2756E181C(a1, &v64);
    sub_2756C9074(&v66, &v64, &qword_2809FDE88);
    v34 = v51;
    sub_275797610();
    v35 = v55;
    v36 = v63;
    v37 = v56;
    (*(v55 + 32))(v63, v34, v56);
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v36 = v63;
    v37 = v56;
    v35 = v55;
  }

  (*(v35 + 56))(v36, v38, 1, v37);
  v39 = v61;
  sub_2756C9074(v36, v61, &qword_2809FDE78);
  v40 = v62;
  v42 = v59;
  v41 = v60;
  *v62 = v60;
  v40[1] = v42;
  v44 = v57;
  v43 = v58;
  v40[2] = v57;
  v40[3] = v43;
  v45 = v53;
  v46 = v52;
  v40[4] = v53;
  v40[5] = v46;
  v47 = v27 & 1;
  *(v40 + 48) = v47;
  v40[7] = v54;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE80);
  sub_2756C9074(v39, v40 + *(v48 + 64), &qword_2809FDE78);
  sub_2756E171C(v41, v42, v44, v43);
  sub_2756E0DD0(v45, v46, v47);

  sub_2756E1760(v41, v42, v44, v43);
  sub_2756C92B4(v63, &qword_2809FDE78);
  sub_2756C92B4(v39, &qword_2809FDE78);
  sub_2756E15EC(v45, v46, v47);

  return sub_2756E1760(v41, v42, v44, v43);
}

uint64_t sub_2756DFCA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_275796280();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 48);
  if (v10)
  {

    v10(v11);

    return sub_2756D4A30(v10);
  }

  else
  {
    v13 = sub_275700E70();
    (*(v7 + 16))(v9, v13, v6);

    v14 = sub_275796270();
    v15 = sub_2757982F0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_27562792C(a2, a3, &v19);
      _os_log_impl(&dword_275623000, v14, v15, "User clicked banner button %s but there is no associated action. Nothing will happen.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x277C81E50](v17, -1, -1);
      MEMORY[0x277C81E50](v16, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2756DFEBC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275796CD0();
  MEMORY[0x28223BE20](v2 - 8);
  sub_275796CC0();
  sub_275796CB0();
  sub_275796CA0();
  sub_275796CB0();

  sub_275796CA0();

  sub_275796CB0();
  sub_275796CF0();
  v3 = sub_2757970B0();
  v5 = v4;
  v7 = v6;
  sub_275796FF0();
  v8 = sub_2757970A0();
  v10 = v9;
  v12 = v11;

  sub_2756E15EC(v3, v5, v7 & 1);

  sub_275797500();
  v13 = sub_275797070();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_2756E15EC(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_2756E0DD0(v13, v15, v17 & 1);

  sub_2756E15EC(v13, v15, v17 & 1);
}

uint64_t sub_2756E0100@<X0>(char *a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE28);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v25 = &v25 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  sub_275796CE0();
  sub_2756E12D0();
  sub_275756884();
  *v11 = sub_2757970B0();
  *(v11 + 1) = v12;
  v11[16] = v13 & 1;
  *(v11 + 3) = v14;
  *(v11 + 16) = 256;
  sub_275796CE0();
  sub_275756884();
  *v9 = sub_2757970B0();
  *(v9 + 1) = v15;
  v9[16] = v16 & 1;
  *(v9 + 3) = v17;
  *(v9 + 16) = 257;
  v18 = *(v2 + 16);
  v19 = v25;
  v18(v25, v11, v1);
  v20 = v26;
  v18(v26, v9, v1);
  v21 = v27;
  v18(v27, v19, v1);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE30);
  v18(&v21[*(v22 + 48)], v20, v1);
  v23 = *(v2 + 8);
  v23(v9, v1);
  v23(v11, v1);
  v23(v20, v1);
  return (v23)(v19, v1);
}

uint64_t sub_2756E0418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_275796E10();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD30);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15[-v11];
  sub_275796DF0();
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  sub_275796780();
  v13 = sub_2756CFA44(&qword_2809FDD38, &qword_2809FDD30);
  MEMORY[0x277C7EF40](v12, v9, v13);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2756E0620(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2756E0670@<X0>(uint64_t a1@<X8>)
{
  sub_275796CE0();
  sub_2756E12D0();
  sub_275756884();
  result = sub_2757970B0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2756E0718@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2756E07B0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  sub_2756CFA44(&qword_2809FDDA8, &qword_2809FDDA0);
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  sub_2756E1120();
  return sub_2757977B0();
}

uint64_t sub_2756E08D8@<X0>(uint64_t a1@<X8>)
{
  sub_2756DC79C();

  result = sub_2757970D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

unint64_t sub_2756E0944()
{
  result = qword_2809FDD48;
  if (!qword_2809FDD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD40);
    sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDD48);
  }

  return result;
}

uint64_t sub_2756E09F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - v3;
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 32);
  if (v5)
  {
    sub_2757966A0();
  }

  else
  {
    sub_2757966C0();
  }

  v6 = sub_2757966E0();
  v7 = (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  MEMORY[0x28223BE20](v7);
  *&v9[-1] = v9;

  return sub_275797600();
}

uint64_t sub_2756E0B6C@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD58);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - v3;
  v11[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD60);
  v5 = *(v11[0] - 8);
  MEMORY[0x28223BE20](v11[0]);
  v7 = v11 - v6;
  sub_275796CE0();
  v12 = 0;
  sub_275797770();
  sub_2757976F0();
  v8 = sub_2756CFA44(&qword_2809FDD68, &qword_2809FDD58);
  sub_2757971E0();
  (*(v2 + 8))(v4, v1);
  v13 = v1;
  v14 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = v11[0];
  sub_275797210();
  return (*(v5 + 8))(v7, v9);
}

uint64_t sub_2756E0DD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2756E0E24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2756E0E6C(uint64_t result, int a2, int a3)
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

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2756E0ECC()
{
  result = qword_2809FDD70;
  if (!qword_2809FDD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD78);
    sub_2756E0F58();
    sub_2756E10CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDD70);
  }

  return result;
}

unint64_t sub_2756E0F58()
{
  result = qword_2809FDD80;
  if (!qword_2809FDD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDD58);
    sub_2756CFA44(&qword_2809FDD68, &qword_2809FDD58);
    swift_getOpaqueTypeConformance2();
    sub_2756E1084(&qword_2809FDD90, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDD80);
  }

  return result;
}

uint64_t sub_2756E1084(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2756E10CC()
{
  result = qword_2809FDD98;
  if (!qword_2809FDD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDD98);
  }

  return result;
}

unint64_t sub_2756E1120()
{
  result = qword_2809FDDB0;
  if (!qword_2809FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDDB0);
  }

  return result;
}

uint64_t sub_2756E1174@<X0>(uint64_t a1@<X8>)
{
  sub_2756DC79C();

  result = sub_2757970D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2756E11E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = *(v0 + 24);
  *(v3 + 40) = v2;

  return sub_275797610();
}

unint64_t sub_2756E12D0()
{
  result = qword_2809FDDB8;
  if (!qword_2809FDDB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FDDB8);
  }

  return result;
}

uint64_t sub_2756E1324()
{
  v1 = *(v0 + 24);
  (*(*v1 + 568))();
  (*(*v1 + 160))();
  sub_2756DC79C();
  v2 = sub_2757970D0();
  v4 = v3;
  v6 = v5;
  (*(*v1 + 168))();
  v7 = sub_2757970D0();
  v9 = v8;
  v10 = v6 & 1;
  v14 = v6 & 1;
  v12 = v11 & 1;
  sub_2756E0DD0(v2, v4, v10);

  sub_2756E0DD0(v7, v9, v12);

  sub_2756E15EC(v7, v9, v12);

  sub_2756E15EC(v2, v4, v14);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE08);
  sub_2756CFA44(&qword_2809FDE10, &qword_2809FDE00);
  sub_2756E1598();
  sub_2756CFA44(&qword_2809FDE20, &qword_2809FDE08);
  return sub_2757976D0();
}

unint64_t sub_2756E1598()
{
  result = qword_2809FDE18;
  if (!qword_2809FDE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDE18);
  }

  return result;
}

uint64_t sub_2756E15EC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2756E16AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756E171C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2756E0DD0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2756E1760(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2756E15EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2756E17B0@<X0>(uint64_t a1@<X8>)
{
  sub_2756DC79C();

  result = sub_2757970D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2756E18A8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2756E191C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2756E19B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t (*sub_2756E1A24(uint64_t *a1))()
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
  *(v3 + 48) = sub_275796610();
  return sub_2756C5BC4;
}

uint64_t sub_2756E1AE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2756E1C1C(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE98);
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

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__isLoading;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C3A30;
}

uint64_t sub_2756E1DE4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2756E1E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_2756E1F04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t (*sub_2756E1F88(uint64_t *a1))()
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
  *(v3 + 48) = sub_275796610();
  return sub_2756C3688;
}

uint64_t sub_2756E2048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEA8);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2756E2180(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB0);
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

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__storageUsed;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEA8);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C5BC8;
}

uint64_t sub_2756E22F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_2756E23D8(a1, &v9 - v6);
  sub_2756E23D8(v7, v5);
  sub_2757965E0();
  sub_2756E2448(a1);
  return sub_2756E2448(v7);
}

uint64_t sub_2756E23D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2756E2448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2756E24B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();
}

uint64_t sub_2756E256C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_2756E23D8(a1, &v8 - v5);
  return (*(**a2 + 224))(v6);
}

uint64_t sub_2756E2620(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2756E23D8(a1, v4);

  sub_275796630();
  return sub_2756E2448(a1);
}

uint64_t (*sub_2756E26F0(uint64_t *a1))()
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
  *(v3 + 48) = sub_275796610();
  return sub_2756C5BC4;
}

uint64_t sub_2756E2794@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_275795CB0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_2756E281C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB8);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_2756E2954(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEC0);
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

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__liftUIURL;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB8);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C5BC8;
}

uint64_t sub_2756E2AC4()
{
  v1 = (*(*v0 + 168))();
  if (v2)
  {
    return 0;
  }

  v4 = [objc_opt_self() stringFromByteCount:v1 countStyle:3];
  v5 = sub_275797F50();

  return v5;
}

uint64_t sub_2756E2B64(void *a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_2756E3568(a1, a2, a3);

  return v6;
}

uint64_t sub_2756E2BC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2756E3568(a1, a2, a3);

  return v4;
}

void sub_2756E2BF4()
{
  (*(*v0 + 128))(1);
  v1 = *(v0 + OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel_dataController);
  v2 = sub_275797F10();
  v4[4] = sub_2756E3904;
  v5 = v0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_2756C45C8;
  v4[3] = &block_descriptor_1;
  v3 = _Block_copy(v4);

  [v1 fetchStorageByApp:v2 completion:v3];
  _Block_release(v3);
}

uint64_t sub_2756E2D10(void *a1, uint64_t a2)
{
  v4 = sub_2757978A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2757978C0();
  v8 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2756CB330();
  v11 = sub_275798340();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2756E3B14;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_15;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2756CB400();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756C56B4();
  sub_2757985B0();
  MEMORY[0x277C80470](0, v10, v7, v13);
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_2756E2FA0(uint64_t a1, void *a2)
{
  v4 = sub_275795CB0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  (*(*a1 + 128))(0);
  if (a2)
  {
    v14 = a2;
    v15 = [v14 storageUsed];
    v16 = [v15 longLongValue];

    (*(*a1 + 176))(v16, 0);
    v17 = [v14 liftUIURL];
    if (v17)
    {
      v18 = v17;
      sub_275795C90();

      v19 = *(v5 + 32);
      v19(v11, v7, v4);
      v20 = *(v5 + 56);
      v20(v11, 0, 1, v4);
      v19(v13, v11, v4);
      v20(v13, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v11, 1, 1, v4);
      sub_275795CA0();
      if ((*(v5 + 48))(v11, 1, v4) != 1)
      {
        sub_2756E2448(v11);
      }
    }

    (*(*a1 + 224))(v13);
  }
}

uint64_t sub_2756E329C()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__storageUsed;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEA8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__liftUIURL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_2756E33C4()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__isLoading;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__storageUsed;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEA8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__liftUIURL;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_2756E3528@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ManageStorageAppModel();
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

uint64_t sub_2756E3568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v36 = a3;
  v34 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEB8);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  v6 = MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEA8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__isLoading;
  v39 = 0;
  sub_2757965E0();
  (*(v16 + 32))(v3 + v19, v18, v15);
  v20 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__storageUsed;
  v37 = 0;
  v38 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEA0);
  sub_2757965E0();
  (*(v12 + 32))(v3 + v20, v14, v11);
  v21 = OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel__liftUIURL;
  v22 = sub_275795CB0();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_2756E23D8(v10, v8);
  v23 = v31;
  sub_2757965E0();
  sub_2756E2448(v10);
  (*(v32 + 32))(v3 + v21, v23, v33);
  v24 = objc_allocWithZone(MEMORY[0x277D7F338]);
  v25 = [v24 initWithAccount_];
  *(v3 + OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel_dataController) = v25;
  v26 = (v3 + OBJC_IVAR____TtC13iCloudQuotaUI21ManageStorageAppModel_bundleId);
  v27 = v36;
  *v26 = v35;
  v26[1] = v27;
  return v3;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ManageStorageAppModel()
{
  result = qword_280A02F10;
  if (!qword_280A02F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2756E3978()
{
  sub_2756E3AC4();
  if (v0 <= 0x3F)
  {
    sub_2756C5528(319, &qword_2809FDED0, &qword_2809FDEA0);
    if (v1 <= 0x3F)
    {
      sub_2756C5528(319, &qword_2809FDED8, &qword_2809FD700);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2756E3AC4()
{
  if (!qword_2809FDEC8)
  {
    v0 = sub_275796640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FDEC8);
    }
  }
}

uint64_t sub_2756E3B2C(uint64_t a1)
{
  v1 = [objc_opt_self() stringFromByteCount:a1 countStyle:3];
  v2 = sub_275797F50();

  return v2;
}

uint64_t sub_2756E3B98(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() stringFromByteCount:a2 countStyle:3];
  v3 = sub_275797F50();

  return v3;
}

uint64_t sub_2756E3C04(uint64_t a1, uint64_t a2)
{
  sub_2756ED3E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2757A4FC0;
  v5 = objc_opt_self();
  v6 = [v5 stringFromByteCount:a1 countStyle:3];
  v7 = sub_275797F50();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2756E3D78();
  *(v4 + 64) = v11;
  *(v4 + 32) = v7;
  *(v4 + 40) = v9;
  v12 = [v5 stringFromByteCount:a2 countStyle:3];
  v13 = sub_275797F50();
  v15 = v14;

  *(v4 + 96) = v10;
  *(v4 + 104) = v11;
  *(v4 + 72) = v13;
  *(v4 + 80) = v15;
  v16 = sub_275797F70();

  return v16;
}

unint64_t sub_2756E3D78()
{
  result = qword_2809FDEE0;
  if (!qword_2809FDEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDEE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuotaUsage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for QuotaUsage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2756E3E3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2756E3EF4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDEF0);
  sub_2756E40D0();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();
}

uint64_t sub_2756E4028@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27572CF9C();
  *a1 = result;
  return result;
}

void sub_2756E4084(void **a1)
{
  v2 = *a1;
  v4 = *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_icqPresenter);
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_icqPresenter) = *a1;
  v3 = v2;
}

unint64_t sub_2756E40D0()
{
  result = qword_2809FDEF8;
  if (!qword_2809FDEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDEF0);
    sub_2756E77E4(&qword_2809FDF00, sub_2756E4184);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDEF8);
  }

  return result;
}

unint64_t sub_2756E4184()
{
  result = qword_2809FDF08;
  if (!qword_2809FDF08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FDF08);
  }

  return result;
}

uint64_t sub_2756E41D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_2756E67F0)(a1);
}

uint64_t sub_2756E427C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 88) = v15;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 336) = a4;
  v9 = sub_275796280();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  v10 = sub_2757963E0();
  *(v8 + 128) = v10;
  *(v8 + 136) = *(v10 - 8);
  *(v8 + 144) = swift_task_alloc();
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF58);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  *(v8 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF60);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  *(v8 + 200) = swift_task_alloc();
  v11 = sub_275795CB0();
  *(v8 + 208) = v11;
  *(v8 + 216) = *(v11 - 8);
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2756E4530, 0, 0);
}

uint64_t sub_2756E4530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v97 = v3;
  if (*(v3 + 336) == 1)
  {
    v4 = *(v3 + 56);
    if ((v4 & 0x8000000000000000) == 0)
    {
      if (*(*(v3 + 48) + 16) <= v4)
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v5 = *(v3 + 208);
      v6 = *(v3 + 216);
      v7 = *(v3 + 200);

      sub_275795CA0();

      if ((*(v6 + 48))(v7, 1, v5) == 1)
      {
        v8 = *(v3 + 200);
        v9 = &qword_2809FD700;
LABEL_6:
        sub_2756C92B4(v8, v9);
        goto LABEL_7;
      }

      v12 = *(v3 + 64);
      (*(*(v3 + 216) + 32))(*(v3 + 240), *(v3 + 200), *(v3 + 208));
      if (v12)
      {
        swift_getObjectType();
        sub_2757962D0();
        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v14 = *(v3 + 192);
      v15 = sub_275795AB0();
      v16 = *(v15 - 8);
      (*(v16 + 56))(v14, v13, 1, v15);
      *(v3 + 248) = v15;
      *(v3 + 256) = v16;
      v95 = v15;
      v94 = *(v16 + 48);
      if (!v94(v14, 1, v15))
      {
        sub_275795A90();
      }

      v17 = *(v3 + 176);
      sub_2756C9074(*(v3 + 80) + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_headers, v17, &qword_2809FDEE8);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        v81 = v12;
        sub_2756C92B4(*(v3 + 176), &qword_2809FDEE8);
LABEL_37:
        v51 = *(v3 + 232);
        v52 = *(v3 + 240);
        v53 = *(v3 + 208);
        v54 = *(v3 + 216);
        v55 = *(v3 + 120);
        v56 = *(v3 + 96);
        v57 = *(v3 + 104);
        v58 = sub_275700E70();
        *(v3 + 264) = v58;
        v59 = *(v57 + 16);
        *(v3 + 272) = v59;
        *(v3 + 280) = (v57 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v59(v55, v58, v56);
        v60 = *(v54 + 16);
        *(v3 + 288) = v60;
        *(v3 + 296) = (v54 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v60(v51, v52, v53);
        v61 = sub_275796270();
        v62 = sub_275798310();
        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v3 + 232);
        v65 = *(v3 + 208);
        v66 = *(v3 + 216);
        v67 = *(v3 + 120);
        v68 = *(v3 + 96);
        v69 = *(v3 + 104);
        if (v63)
        {
          v70 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v96 = v93;
          *v70 = 136315138;
          sub_2756E77E4(&qword_2809FDF68, MEMORY[0x277CC9260]);
          v90 = v68;
          v92 = v67;
          v71 = sub_275798950();
          v73 = v72;
          v88 = v62;
          v74 = *(v66 + 8);
          v74(v64, v65);
          v75 = sub_27562792C(v71, v73, &v96);

          *(v70 + 4) = v75;
          _os_log_impl(&dword_275623000, v61, v88, "Deleting backup with url: %s", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v93);
          MEMORY[0x277C81E50](v93, -1, -1);
          MEMORY[0x277C81E50](v70, -1, -1);

          v76 = *(v69 + 8);
          v76(v92, v90);
        }

        else
        {

          v74 = *(v66 + 8);
          v74(v64, v65);
          v76 = *(v69 + 8);
          v76(v67, v68);
        }

        *(v3 + 304) = v76;
        *(v3 + 312) = v74;
        if (!v81)
        {
          v74(*(v3 + 240), *(v3 + 208));
          v8 = *(v3 + 192);
          v9 = &qword_2809FDF60;
          goto LABEL_6;
        }

        v77 = *(v3 + 184);
        sub_2756C9074(*(v3 + 192), v77, &qword_2809FDF60);
        a1 = (v94)(v77, 1, v95);
        if (a1 != 1)
        {
          v78 = *(v3 + 72);
          ObjectType = swift_getObjectType();
          v80 = swift_task_alloc();
          *(v3 + 320) = v80;
          *v80 = v3;
          v80[1] = sub_2756E5110;
          a1 = *(v3 + 184);
          a2 = ObjectType;
          a3 = v78;

          return MEMORY[0x282182070](a1, a2, a3);
        }

LABEL_49:
        __break(1u);
        return MEMORY[0x282182070](a1, a2, a3);
      }

      sub_2756E7880(&qword_2809FDF70, &qword_2809FDF78);
      sub_275796390();
      v81 = v12;
      v87 = *(v3 + 160);
      v20 = *(v3 + 136);
      a1 = (*(v19 + 8))(*(v3 + 176), v18);
      v21 = 0;
      v22 = *(v3 + 32);
      v23 = *(v22 + 64);
      v83 = v22 + 64;
      v24 = -1;
      v89 = *(v3 + 32);
      v25 = -1 << *(v89 + 32);
      if (-v25 < 64)
      {
        v24 = ~(-1 << -v25);
      }

      v26 = v24 & v23;
      v82 = (63 - v25) >> 6;
      v86 = v20;
      v27 = (v20 + 32);
      v91 = (v20 + 8);
      v28 = &qword_2809FDF80;
      v85 = (v20 + 32);
      if ((v24 & v23) == 0)
      {
        goto LABEL_23;
      }

      do
      {
        while (1)
        {
          v29 = v21;
LABEL_30:
          v33 = *(v3 + 152);
          v32 = *(v3 + 160);
          v34 = *(v3 + 128);
          v35 = __clz(__rbit64(v26));
          v26 &= v26 - 1;
          v36 = v35 | (v29 << 6);
          v37 = (*(v89 + 48) + 16 * v36);
          v38 = *v37;
          v39 = v37[1];
          (*(v86 + 16))(v33, *(v89 + 56) + *(v86 + 72) * v36, v34);
          v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF80);
          v41 = *(v40 + 48);
          *v32 = v38;
          *(v87 + 8) = v39;
          v28 = &qword_2809FDF80;
          v27 = v85;
          (*(v86 + 32))(&v32[v41], v33, v34);
          (*(*(v40 - 8) + 56))(v32, 0, 1, v40);

LABEL_31:
          v42 = *(v3 + 168);
          sub_2756D8BC4(*(v3 + 160), v42, &qword_2809FDF58);
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
          if ((*(*(v43 - 8) + 48))(v42, 1, v43) == 1)
          {

            goto LABEL_37;
          }

          v44 = *(v3 + 192);
          (*v27)(*(v3 + 144), *(v3 + 168) + *(v43 + 48), *(v3 + 128));
          if (!v94(v44, 1, v95))
          {
            break;
          }

          (*v91)(*(v3 + 144), *(v3 + 128));

          v21 = v29;
          if (!v26)
          {
            goto LABEL_23;
          }
        }

        v45 = v27;
        v46 = v28;
        v47 = v29;
        sub_2757487CC();
        v84 = *(v3 + 144);
        v48 = *(v3 + 128);
        sub_275795AA0();

        a1 = (*v91)(v84, v48);
        v21 = v47;
        v28 = v46;
        v27 = v45;
      }

      while (v26);
LABEL_23:
      if (v82 <= v21 + 1)
      {
        v30 = v21 + 1;
      }

      else
      {
        v30 = v82;
      }

      v31 = v30 - 1;
      while (1)
      {
        v29 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v29 >= v82)
        {
          v49 = *(v3 + 160);
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
          (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
          v26 = 0;
          v29 = v31;
          goto LABEL_31;
        }

        v26 = *(v83 + 8 * v29);
        ++v21;
        if (v26)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_7:

  v10 = *(v3 + 8);

  return v10();
}

uint64_t sub_2756E5110(uint64_t a1, unint64_t a2)
{
  v6 = *v3;
  *(*v3 + 328) = v2;

  if (v2)
  {
    v7 = sub_2756E53A0;
  }

  else
  {
    v8 = v6[31];
    v9 = v6[32];
    v10 = v6[23];
    sub_2756E782C(a1, a2);
    (*(v9 + 8))(v10, v8);
    v7 = sub_2756E5268;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2756E5268()
{
  (*(v0 + 312))(*(v0 + 240), *(v0 + 208));
  sub_2756C92B4(*(v0 + 192), &qword_2809FDF60);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2756E53A0()
{
  v35 = v0;
  v1 = *(v0 + 328);
  v31 = *(v0 + 288);
  v29 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 208);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  (*(*(v0 + 256) + 8))(*(v0 + 184), *(v0 + 248));
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00130);
  sub_275798810();
  v8 = *(v0 + 24);
  v28 = *(v0 + 16);
  v29(v6, v2, v7);
  v31(v4, v3, v5);

  v9 = sub_275796270();
  v10 = sub_275798310();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 312);
  v13 = *(v0 + 240);
  v14 = *(v0 + 224);
  v15 = *(v0 + 208);
  v32 = *(v0 + 112);
  v33 = *(v0 + 304);
  v30 = *(v0 + 96);
  if (v11)
  {
    v27 = *(v0 + 328);
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v16 = 136315394;
    sub_2756E77E4(&qword_2809FDF68, MEMORY[0x277CC9260]);
    v24 = v10;
    v17 = sub_275798950();
    v26 = v13;
    v19 = v18;
    v12(v14, v15);
    v20 = sub_27562792C(v17, v19, &v34);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_27562792C(v28, v8, &v34);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_275623000, v9, v24, "Delete backup network request failed with url: %s | Error: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v25, -1, -1);
    MEMORY[0x277C81E50](v16, -1, -1);

    v33(v32, v30);
    v12(v26, v15);
  }

  else
  {

    v12(v14, v15);
    v33(v32, v30);
    v12(v13, v15);
  }

  sub_2756C92B4(*(v0 + 192), &qword_2809FDF60);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_2756E57B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000002757B85E0;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x80000002757B85E0;
  }

  else
  {
    v3 = 0x73726564616568;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x73656369766564;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x73726564616568;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x73656369766564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_275798980();
  }

  return v11 & 1;
}

uint64_t sub_2756E58AC()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756E5954()
{
  sub_275797FF0();
}

uint64_t sub_2756E59E8()
{
  sub_275798A40();
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_2756E5A8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756E76C8();
  *a1 = result;
  return result;
}

void sub_2756E5ABC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000002757B85E0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x73726564616568;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73656369766564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2756E5B20()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x73726564616568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656369766564;
  }
}

uint64_t sub_2756E5B80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2756E76C8();
  *a1 = result;
  return result;
}

uint64_t sub_2756E5BB4(uint64_t a1)
{
  v2 = sub_2756E71AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2756E5BF0(uint64_t a1)
{
  v2 = sub_2756E71AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2756E5C2C(void *a1)
{
  v2 = swift_allocObject();
  sub_2756E5C7C(a1);
  return v2;
}

void *sub_2756E5C7C(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v31 = v2;
  v32 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDEE8);
  MEMORY[0x28223BE20](v6 - 8);
  v25 = v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v26 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v27 = v24 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF10);
  v28 = *(v13 - 8);
  v29 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_icqPresenter) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2756E71AC();
  v30 = v15;
  v16 = v31;
  sub_275798A80();
  if (v16)
  {

    swift_deallocPartialClassInstance();
    v23 = a1;
  }

  else
  {
    v31 = a1;
    v35 = 0;
    sub_2756E7200(&qword_2809FD878, &qword_2809FD858);
    v17 = v27;
    sub_275798910();
    v18 = *(v26 + 32);
    v24[1] = OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_devices;
    v27 = v18;
    (v18)(v1 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_devices, v17, v8);
    v34 = 1;
    sub_275798910();
    (v27)(v1 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_isDeviceSelected, v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF18);
    v33 = 2;
    sub_2756E7200(&qword_2809FDF20, &qword_2809FDF18);
    v19 = v25;
    v21 = v29;
    v20 = v30;
    sub_2757988E0();
    (*(v28 + 8))(v20, v21);
    sub_2756D8BC4(v19, v3 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_headers, &qword_2809FDEE8);
    v23 = v31;
  }

  __swift_destroy_boxed_opaque_existential_0(v23);
  return v3;
}

uint64_t sub_2756E6134()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_isDeviceSelected, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_headers, &qword_2809FDEE8);

  return v0;
}

uint64_t sub_2756E6200()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_devices;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_isDeviceSelected, v2);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_headers, &qword_2809FDEE8);

  return swift_deallocClassInstance();
}

uint64_t sub_2756E6308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_2756E67F0)(a1);
}

uint64_t sub_2756E63B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDEF0);
  sub_2756E40D0();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();
}

void *sub_2756E657C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2756E5C7C(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

char *sub_2756E65D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2756E66C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2756E67F0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_275796280();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FF730);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_2757963E0();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2756E695C, 0, 0);
}

uint64_t sub_2756E695C()
{
  v1 = *(*(v0 + 160) + OBJC_IVAR____TtC13iCloudQuotaUI27DeleteSelectedBackupsAction_icqPresenter);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 account];
    v4 = objc_allocWithZone(sub_275795F10());
    v5 = sub_275795EF0();
    v6 = sub_2756E77E4(&qword_2809FDC28, MEMORY[0x277D7F240]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD858);
    sub_2756E7880(&qword_2809FD8D0, &qword_2809FD8B0);
    sub_275796390();
    v71 = v6;
    v72 = v5;
    v62 = v2;
    v7 = *(v0 + 136);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v0 + 216);
      v12 = *(v9 + 16);
      v11 = v9 + 16;
      v10 = v12;
      v13 = v7 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
      v14 = *(v11 + 56);
      v15 = MEMORY[0x277D84F90];
      do
      {
        v16 = *(v0 + 232);
        v10(v16, v13, *(v0 + 208));
        v17 = sub_27576CDF8(v16, v0 + 16);
        (*(v11 - 8))(*(v0 + 232), *(v0 + 208), v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_2756E66C8(0, *(v15 + 2) + 1, 1, v15);
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_2756E66C8((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        v20 = &v15[88 * v19];
        v21 = *(v0 + 32);
        *(v20 + 2) = *(v0 + 16);
        *(v20 + 3) = v21;
        v22 = *(v0 + 48);
        v23 = *(v0 + 64);
        v24 = *(v0 + 80);
        *(v20 + 14) = *(v0 + 96);
        *(v20 + 5) = v23;
        *(v20 + 6) = v24;
        *(v20 + 4) = v22;
        v13 += v14;
        --v8;
      }

      while (v8);
    }

    else
    {

      v15 = MEMORY[0x277D84F90];
    }

    sub_275796390();
    v38 = *(v0 + 144);
    v39 = *(v38 + 16);
    if (v39)
    {
      v40 = *(v0 + 216);
      v42 = *(v40 + 16);
      v41 = v40 + 16;
      v75 = v42;
      v43 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
      v73 = *(v41 + 56);
      v44 = MEMORY[0x277D84F90];
      v42(*(v0 + 224), v43, *(v0 + 208));
      while (1)
      {
        v45 = sub_275748F2C();
        (*(v41 - 8))(*(v0 + 224), *(v0 + 208));
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v46 = v44;
        }

        else
        {
          v46 = sub_2756E65D4(0, *(v44 + 2) + 1, 1, v44);
        }

        v48 = *(v46 + 2);
        v47 = *(v46 + 3);
        if (v48 >= v47 >> 1)
        {
          v46 = sub_2756E65D4((v47 > 1), v48 + 1, 1, v46);
        }

        *(v46 + 2) = v48 + 1;
        v44 = v46;
        v46[v48 + 32] = v45 & 1;
        v43 += v73;
        if (!--v39)
        {
          break;
        }

        v75(*(v0 + 224), v43, *(v0 + 208));
      }
    }

    else
    {

      v44 = MEMORY[0x277D84F90];
    }

    v68 = *(v44 + 2);
    if (v68)
    {
      v69 = v15;
      v70 = v44;
      v49 = sub_2757981E0();
      v50 = 0;
      v51 = *(v49 - 8);
      v67 = *(v51 + 56);
      v65 = v49;
      v66 = (v51 + 48);
      v63 = (v51 + 8);
      do
      {
        v52 = *(v0 + 192);
        v53 = *(v0 + 200);
        v54 = *(v0 + 152);
        v74 = *(v0 + 160);
        v55 = v70[v50 + 32];
        v67(v53, 1, 1, v49);
        v56 = swift_allocObject();
        *(v56 + 16) = 0;
        *(v56 + 24) = 0;
        *(v56 + 32) = v55;
        *(v56 + 40) = v69;
        *(v56 + 48) = v50;
        v76 = v50;
        *(v56 + 56) = v72;
        *(v56 + 64) = v71;
        *(v56 + 72) = v74;
        *(v56 + 80) = v54;
        sub_2756C9074(v53, v52, &unk_2809FF730);
        LODWORD(v52) = (*v66)(v52, 1, v49);

        v64 = v72;

        v57 = *(v0 + 192);
        if (v52 == 1)
        {
          sub_2756C92B4(*(v0 + 192), &unk_2809FF730);
        }

        else
        {
          sub_2757981D0();
          (*v63)(v57, v49);
        }

        v58 = *(v56 + 16);
        swift_unknownObjectRetain();

        if (v58)
        {
          swift_getObjectType();
          v59 = sub_275798160();
          v61 = v60;
          swift_unknownObjectRelease();
        }

        else
        {
          v59 = 0;
          v61 = 0;
        }

        sub_2756C92B4(*(v0 + 200), &unk_2809FF730);
        if (v61 | v59)
        {
          *(v0 + 104) = 0;
          *(v0 + 112) = 0;
          *(v0 + 120) = v59;
          *(v0 + 128) = v61;
        }

        ++v50;
        swift_task_create();

        v49 = v65;
      }

      while (v68 != v76 + 1);
    }

    else
    {
    }
  }

  else
  {
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 168);
    v28 = sub_275700E70();
    (*(v26 + 16))(v25, v28, v27);
    v29 = sub_275796270();
    v30 = sub_2757982F0();
    v31 = os_log_type_enabled(v29, v30);
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v34 = *(v0 + 168);
    if (v31)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_275623000, v29, v30, "DeleteSelectedBackupsAction: unable to create data source without icqPresenter", v35, 2u);
      MEMORY[0x277C81E50](v35, -1, -1);
    }

    (*(v33 + 8))(v32, v34);
  }

  v36 = *(v0 + 8);

  return v36();
}

unint64_t sub_2756E71AC()
{
  result = qword_280A02F30[0];
  if (!qword_280A02F30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A02F30);
  }

  return result;
}

uint64_t sub_2756E7200(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for DeleteSelectedBackupsAction()
{
  result = qword_280A030C0;
  if (!qword_280A030C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2756E7338()
{
  sub_2756CF564();
  if (v0 <= 0x3F)
  {
    sub_2756E740C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2756E740C()
{
  if (!qword_2809FDF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDF18);
    v0 = sub_275798550();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FDF38);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeleteSelectedBackupsAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeleteSelectedBackupsAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2756E75C4()
{
  result = qword_280A03250[0];
  if (!qword_280A03250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A03250);
  }

  return result;
}

unint64_t sub_2756E761C()
{
  result = qword_280A03360;
  if (!qword_280A03360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A03360);
  }

  return result;
}

unint64_t sub_2756E7674()
{
  result = qword_280A03368[0];
  if (!qword_280A03368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A03368);
  }

  return result;
}

uint64_t sub_2756E76C8()
{
  v0 = sub_2757988A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2756E7714()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_2756DBB90;

  return sub_2756E427C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_2756E77E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2756E782C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2756E7880(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2756E78E4()
{
  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FDF88, type metadata accessor for ICQFPItem);

  return sub_2757968F0();
}

uint64_t sub_2756E7968(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2756E79B4()
{
  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FDF88, type metadata accessor for ICQFPItem);

  return sub_275796900();
}

uint64_t sub_2756E7A44()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2756E7A94()
{
  v5 = *(v0 + 24);
  v6 = *(v0 + 40);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF90);
  MEMORY[0x277C7F850](&v4, v1);
  v2 = sub_2756E7B0C(*(v0 + 8), v4);

  return v2 & 1;
}

uint64_t sub_2756E7B0C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_275798680();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (type metadata accessor for ICQFPItem(), sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem), v5 = sub_275797ED0(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      sub_2756ED254(&unk_2809FEE40, type metadata accessor for ICQFPItem);
      do
      {
        v9 = sub_275797F00();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_2756E7C9C()
{
  v1 = *(v0 + 48);
  sub_27562F5C0(v1);
  return v1;
}

uint64_t sub_2756E7CD0(uint64_t a1, uint64_t a2)
{
  result = sub_2756D4A30(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2756E7D28()
{
  v1 = *(v0 + 64);
  sub_27562F5C0(v1);
  return v1;
}

uint64_t sub_2756E7D5C(uint64_t a1, uint64_t a2)
{
  result = sub_2756D4A30(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_2756E7DB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v29 = sub_275796ED0();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF98);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFA0);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFA8);
  v12 = *(v11 - 8);
  v30 = v11;
  v31 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  *v7 = sub_275796C80();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFB0);
  sub_2756E823C(v2, &v7[*(v15 + 44)]);
  sub_275796EC0();
  v16 = sub_2756CFA44(&qword_2809FDFB8, &qword_2809FDF98);
  sub_2757972B0();
  (*(v27 + 8))(v4, v29);
  sub_2756C92B4(v7, &qword_2809FDF98);
  v34 = v2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFC0);
  v35 = v5;
  v36 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_2756EA45C();
  sub_275797200();
  (*(v28 + 8))(v10, v8);
  v33 = v2;
  v35 = v8;
  v36 = v17;
  v37 = OpaqueTypeConformance2;
  v38 = v19;
  swift_getOpaqueTypeConformance2();
  sub_2756EA684();
  v20 = v32;
  v21 = v30;
  sub_2757971A0();
  (*(v31 + 8))(v14, v21);
  v22 = swift_allocObject();
  v23 = v2[3];
  v22[3] = v2[2];
  v22[4] = v23;
  v22[5] = v2[4];
  v24 = v2[1];
  v22[1] = *v2;
  v22[2] = v24;
  v25 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE000) + 36));
  sub_275796860();
  sub_2756EA88C(v2, &v35);
  result = sub_2757981C0();
  *v25 = &unk_2757A60D0;
  v25[1] = v22;
  return result;
}

uint64_t sub_2756E823C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = sub_275797560();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE058);
  v8 = v7 - 8;
  v9 = MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE060);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v75 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  sub_2756E892C(a1, &v61 - v17);
  sub_275797820();
  sub_2757967D0();
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE068) + 36)];
  v20 = v87;
  *v19 = v86;
  *(v19 + 1) = v20;
  *(v19 + 2) = v88;
  v21 = sub_275796FE0();
  sub_2757966F0();
  v22 = *(v14 + 44);
  v74 = v18;
  v23 = &v18[v22];
  *v23 = v21;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  *v12 = sub_275796D30();
  *(v12 + 1) = 0x4000000000000000;
  v12[16] = 0;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE070);
  sub_2756E8F28(a1, &v12[*(v28 + 44)]);
  KeyPath = swift_getKeyPath();
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v72 = 0;
  v73 = 0;
  v70 = 0;
  v71 = 0;
  v68 = 0;
  v69 = 0;
  v67 = 0;
  v76 = 0;
  v33 = *(v8 + 44);
  v64 = v12;
  v34 = &v12[v33];
  *v34 = KeyPath;
  v34[8] = 0;
  if (*(a1 + 16))
  {
    v92 = *(a1 + 24);
    v93 = *(a1 + 40);
    v83 = *(a1 + 24);
    v84 = *(a1 + 40);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF90);
    MEMORY[0x277C7F850](&v80);
    v36 = *(a1 + 8);
    sub_2756E7B0C(v36, v80);

    sub_275797550();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v31 = sub_275797570();

    (*(v4 + 8))(v6, v3);
    v83 = v92;
    v84 = v93;
    MEMORY[0x277C7F850](&v80, v35);
    LOBYTE(v35) = sub_2756E7B0C(v36, v80);

    v37 = objc_opt_self();
    v38 = &selRef_systemBlueColor;
    if ((v35 & 1) == 0)
    {
      v38 = &selRef_tertiaryLabelColor;
    }

    v39 = [v37 *v38];
    v32 = sub_2757973E0();
    sub_275797820();
    sub_2757967D0();
    *&v78[38] = v91;
    *&v78[22] = v90;
    *&v78[6] = v89;
    *(v81 + 10) = *v78;
    *(&v81[3] + 1) = *(&v91 + 1);
    *(&v81[2] + 10) = *&v78[32];
    *(&v81[1] + 10) = *&v78[16];
    v79 = 1;
    v77[80] = 0;
    *&v80 = v31;
    *(&v80 + 1) = v32;
    *&v81[0] = 0;
    WORD4(v81[0]) = 1;
    v72 = *v78 >> 48;
    v73 = *(&v81[0] + 1);
    v70 = *&v78[16] >> 48;
    v71 = *(&v81[1] + 1);
    v68 = *&v78[32] >> 48;
    v69 = *(&v81[2] + 1);
    v67 = *(&v81[3] + 1);
    v76 = 0;
    *&v83 = v31;
    *(&v83 + 1) = v32;
    v84 = 0;
    LOWORD(v85[0]) = 1;
    v85[6] = *(&v91 + 1);
    *(&v85[4] + 2) = *&v78[32];
    *(&v85[2] + 2) = *&v78[16];
    *(v85 + 2) = *v78;
    sub_2756C9074(&v80, v77, &qword_2809FE088);
    sub_2756C92B4(&v83, &qword_2809FE088);
    v30 = 0x4024000000000000;
  }

  v40 = v31;
  v62 = v31;
  v63 = v30;
  v41 = v75;
  v42 = v30;
  sub_2756C9074(v74, v75, &qword_2809FE060);
  v43 = v64;
  v44 = v66;
  sub_2756C9074(v64, v66, &qword_2809FE058);
  v45 = v41;
  v46 = v32;
  v61 = v32;
  v47 = v65;
  sub_2756C9074(v45, v65, &qword_2809FE060);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE078);
  sub_2756C9074(v44, v47 + *(v48 + 48), &qword_2809FE058);
  v49 = (v47 + *(v48 + 64));
  *&v80 = v42;
  *(&v80 + 1) = v76;
  *&v81[0] = v40;
  *(&v81[0] + 1) = v46;
  v51 = v72;
  v50 = v73;
  *&v81[1] = 0;
  *(&v81[1] + 1) = v73;
  v53 = v70;
  v52 = v71;
  *&v81[2] = v72;
  *(&v81[2] + 1) = v71;
  v54 = v68;
  v55 = v69;
  *&v81[3] = v70;
  *(&v81[3] + 1) = v69;
  v56 = v67;
  *&v82 = v68;
  *(&v82 + 1) = v67;
  v57 = v81[2];
  v49[2] = v81[1];
  v49[3] = v57;
  v58 = v81[0];
  *v49 = v80;
  v49[1] = v58;
  v59 = v82;
  v49[4] = v81[3];
  v49[5] = v59;
  sub_2756C9074(&v80, &v83, &qword_2809FE080);
  sub_2756C92B4(v43, &qword_2809FE058);
  sub_2756C92B4(v74, &qword_2809FE060);
  *&v83 = v63;
  *(&v83 + 1) = v76;
  v84 = v62;
  v85[0] = v61;
  v85[1] = 0;
  v85[2] = v50;
  v85[3] = v51;
  v85[4] = v52;
  v85[5] = v53;
  v85[6] = v55;
  v85[7] = v54;
  v85[8] = v56;
  sub_2756C92B4(&v83, &qword_2809FE080);
  sub_2756C92B4(v44, &qword_2809FE058);
  return sub_2756C92B4(v75, &qword_2809FE060);
}

uint64_t sub_2756E892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275796A40();
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_275797560();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE0E0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE0E8);
  MEMORY[0x28223BE20](v53);
  v55 = &v49 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE0F0);
  v15 = MEMORY[0x28223BE20](v54);
  v17 = &v49 - v16;
  v18 = (*(**(a1 + 8) + 176))(v15);
  if (v18)
  {
    v52 = v18;
    sub_275797530();
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v7);
    v19 = sub_275797570();

    (*(v8 + 8))(v10, v7);
    v20 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE118) + 36)];
    v21 = *(v4 + 20);
    v22 = *MEMORY[0x277CE0118];
    v23 = sub_275796D00();
    v24 = *(v23 - 8);
    v51 = a2;
    v25 = *(v24 + 104);
    v50 = v11;
    v25(&v20[v21], v22, v23);
    __asm { FMOV            V0.2D, #3.0 }

    v49 = _Q0;
    *v20 = _Q0;
    *&v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDBA8) + 36)] = 256;
    *v13 = v19;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    v25(&v6[*(v4 + 20)], v22, v23);
    *v6 = v49;
    v31 = [objc_opt_self() lightGrayColor];
    v32 = [v31 colorWithAlphaComponent_];

    v33 = sub_2757973E0();
    sub_275796770();
    v34 = &v13[*(v50 + 36)];
    sub_2756ED29C(v6, v34);
    v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE140) + 36);
    v36 = v57;
    *v35 = v56;
    *(v35 + 16) = v36;
    *(v35 + 32) = v58;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE148);
    *(v34 + *(v37 + 52)) = v33;
    *(v34 + *(v37 + 56)) = 256;
    v38 = sub_275797820();
    v40 = v39;
    sub_2756ED300(v6);
    v41 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE150) + 36));
    *v41 = v38;
    v41[1] = v40;
    v42 = sub_275797820();
    v44 = v43;
    v45 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE130) + 36));
    *v45 = v42;
    v45[1] = v44;
    v46 = &qword_2809FE0E0;
    sub_2756C9074(v13, v55, &qword_2809FE0E0);
    swift_storeEnumTagMultiPayload();
    sub_2756ECFA4();
    sub_2756ED198();
    sub_275796D80();

    v47 = v13;
  }

  else
  {
    *&v56 = sub_275797550();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE0F8);
    sub_2756ECF18();
    sub_275797210();

    v46 = &qword_2809FE0F0;
    sub_2756C9074(v17, v55, &qword_2809FE0F0);
    swift_storeEnumTagMultiPayload();
    sub_2756ECFA4();
    sub_2756ED198();
    sub_275796D80();
    v47 = v17;
  }

  return sub_2756C92B4(v47, v46);
}

uint64_t sub_2756E8F28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v51 = a2;
  v3 = sub_275796CD0();
  MEMORY[0x28223BE20](v3 - 8);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE090);
  v49 = *(v52 - 8);
  v4 = MEMORY[0x28223BE20](v52);
  v50 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v7 = &v47[-v6];
  v8 = swift_allocObject();
  v9 = *(a1 + 48);
  v8[3] = *(a1 + 32);
  v8[4] = v9;
  v8[5] = *(a1 + 64);
  v10 = *(a1 + 16);
  v8[1] = *a1;
  v8[2] = v10;
  v53 = a1;
  sub_2756EA88C(a1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE098);
  sub_2756ECDA8();
  v11 = v7;
  sub_275797610();
  sub_275796CC0();
  sub_275796CB0();
  sub_2756E96B8();
  sub_275796CA0();

  sub_275796CB0();
  type metadata accessor for FormatterUtils();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE50);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2757A6070;
  v13 = *(a1 + 8);
  *(v12 + 32) = (*(*v13 + 104))();
  sub_275783498(v12);

  sub_275796CA0();

  v14 = sub_275796CB0();
  v15 = (*(*v13 + 128))(v14);
  if (v15)
  {
    v16 = v15;
    v17 = [v15 displayName];

    v18 = sub_275797F50();
    v20 = v19;

    v54[0] = 2108704;
    v54[1] = 0xE300000000000000;
    MEMORY[0x277C80130](v18, v20);
  }

  sub_275796CA0();

  sub_275796CB0();
  sub_275796CF0();
  v21 = sub_2757970B0();
  v23 = v22;
  v25 = v24;
  v26 = [objc_opt_self() secondaryLabelColor];
  v54[0] = sub_2757973E0();
  v27 = sub_275797080();
  v29 = v28;
  v31 = v30;
  sub_2756E15EC(v21, v23, v25 & 1);

  sub_275797020();
  v32 = sub_2757970A0();
  v34 = v33;
  v48 = v35;
  v37 = v36;

  sub_2756E15EC(v27, v29, v31 & 1);

  v38 = v49;
  v39 = v50;
  v40 = *(v49 + 16);
  v41 = v52;
  v40(v50, v11, v52);
  v42 = v51;
  v40(v51, v39, v41);
  v43 = &v42[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE0D8) + 48)];
  *v43 = v32;
  *(v43 + 1) = v34;
  v44 = v48;
  LOBYTE(v29) = v48 & 1;
  v43[16] = v48 & 1;
  *(v43 + 3) = v37;
  sub_2756E0DD0(v32, v34, v44 & 1);
  v45 = *(v38 + 8);

  v45(v11, v41);
  sub_2756E15EC(v32, v34, v29);

  return (v45)(v39, v41);
}

uint64_t sub_2756E948C()
{
  v1 = v0;
  v3 = *(v0 + 3);
  v2 = *(v0 + 4);
  v4 = *(v0 + 5);
  v20 = v4;
  v21 = v3;
  v16 = v3;
  v17 = v2;
  v18 = v4;
  sub_2756EA8C4(&v21, &v11);

  sub_2756C9074(&v20, &v11, &qword_2809FE008);
  sub_2756EA8C4(&v21, &v11);

  sub_2756C9074(&v20, &v11, &qword_2809FE008);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF90);
  MEMORY[0x277C7F850](&v11);
  v6 = v11;
  v19 = *v1;
  v7 = *(&v19 + 1);

  v9 = sub_2756E7B0C(v8, v6);

  if (v9)
  {
    sub_2756C92B4(&v19, &qword_2809FE010);
    sub_2756EA920(&v21);

    sub_2756C92B4(&v20, &qword_2809FE008);
    v16 = v3;
    v17 = v2;
    v18 = v4;
    MEMORY[0x277C7F850](&v15, v5);
    sub_2756EB150();

    v11 = v3;
    v12 = v2;
    v13 = v4;
    v14 = v15;
  }

  else
  {
    sub_2756EA920(&v21);

    sub_2756C92B4(&v20, &qword_2809FE008);
    v16 = v3;
    v17 = v2;
    v18 = v4;
    MEMORY[0x277C7F850](&v14, v5);
    sub_2756EB350(&v15, v7);

    v11 = v3;
    v12 = v2;
    v13 = v4;
  }

  sub_275797740();
  sub_2756EA920(&v21);

  return sub_2756C92B4(&v20, &qword_2809FE008);
}

uint64_t sub_2756E96B8()
{
  v1 = sub_275795D90();
  v85 = *(v1 - 8);
  v86 = v1;
  MEMORY[0x28223BE20](v1);
  v84 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE018);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE020);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v75 - v6;
  v7 = sub_275795B50();
  v88 = *(v7 - 8);
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE028);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v82 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v75 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v75 - v17;
  v19 = sub_275795D30();
  v90 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v79 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v75 - v26;
  v28 = *(**(v0 + 8) + 104);
  v29 = v28(v25);
  v30 = [v29 lastUsedDate];

  v80 = v24;
  if (v30)
  {
    sub_275795D00();

    v31 = v90;
    v32 = *(v90 + 32);
    v32(v18, v24, v19);
    (*(v31 + 56))(v18, 0, 1, v19);
    v32(v27, v18, v19);
    v33 = v87;
    v34 = v27;
    v35 = v89;
    v36 = v31;
  }

  else
  {
    v77 = v27;
    v37 = *(v90 + 56);
    v38 = v37(v18, 1, 1, v19);
    v39 = v28(v38);
    v40 = [v39 contentModificationDate];

    v76 = v18;
    if (v40)
    {
      v41 = v80;
      sub_275795D00();

      v42 = v90;
      v43 = *(v90 + 32);
      v43(v16, v41, v19);
      v37(v16, 0, 1, v19);
      v34 = v77;
      v43(v77, v16, v19);
      v35 = v89;
      v33 = v87;
      v36 = v42;
      v44 = v76;
      v45 = (*(v42 + 48))(v76, 1, v19);
    }

    else
    {
      v36 = v90;
      v46 = v16;
      v47 = v37(v16, 1, 1, v19);
      v48 = v28(v47);
      v49 = [v48 creationDate];

      v50 = v80;
      if (v49)
      {
        sub_275795D00();

        v51 = *(v36 + 32);
        v52 = v78;
        v51(v78, v50, v19);
        v37(v52, 0, 1, v19);
        v34 = v77;
        v51(v77, v52, v19);
        v53 = *(v36 + 48);
      }

      else
      {
        v54 = v78;
        v37(v78, 1, 1, v19);
        v34 = v77;
        sub_275795D20();
        v53 = *(v36 + 48);
        if (v53(v54, 1, v19) != 1)
        {
          sub_2756C92B4(v54, &qword_2809FE028);
        }
      }

      v35 = v89;
      v33 = v87;
      v44 = v76;
      if (v53(v46, 1, v19) != 1)
      {
        sub_2756C92B4(v46, &qword_2809FE028);
      }

      v45 = v53(v44, 1, v19);
    }

    if (v45 != 1)
    {
      sub_2756C92B4(v44, &qword_2809FE028);
    }
  }

  v56 = v85;
  v55 = v86;
  (*(v85 + 56))(v81, 1, 1, v86);
  v57 = sub_275795DA0();
  (*(*(v57 - 8) + 56))(v83, 1, 1, v57);
  sub_275795B40();
  sub_275795B30();
  v58 = v84;
  sub_275795D80();
  v59 = v82;
  sub_275795D70();
  (*(v56 + 8))(v58, v55);
  if ((*(v36 + 48))(v59, 1, v19) == 1)
  {
    sub_2756C92B4(v59, &qword_2809FE028);
LABEL_19:
    v70 = *sub_275782F74();
    v71 = sub_275795CD0();
    v72 = v34;
    v73 = [v70 stringFromDate_];

    v69 = sub_275797F50();
    (*(v88 + 8))(v33, v35);
    (*(v36 + 8))(v72, v19);
    return v69;
  }

  v60 = v79;
  (*(v36 + 32))(v79, v59, v19);
  v61 = v80;
  sub_275795D20();
  v62 = sub_275795CE0();
  v63 = *(v36 + 8);
  v63(v61, v19);
  if ((v62 & 1) == 0)
  {
    v63(v60, v19);
    goto LABEL_19;
  }

  v64 = *sub_275783070();
  v65 = v60;
  v66 = sub_275795CD0();
  v67 = v34;
  v68 = [v64 stringFromDate_];

  v69 = sub_275797F50();
  v63(v65, v19);
  (*(v88 + 8))(v33, v35);
  v63(v67, v19);
  return v69;
}

uint64_t sub_2756EA0B8()
{
  type metadata accessor for FormatterUtils();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE50);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2757A6070;
  *(v1 + 32) = (*(**(v0 + 8) + 104))();
  v2 = sub_275783498(v1);

  return v2;
}

uint64_t sub_2756EA168()
{
  result = (*(**(v0 + 8) + 128))();
  if (result)
  {
    v2 = result;
    v3 = [result displayName];

    v4 = sub_275797F50();
    v6 = v5;

    MEMORY[0x277C80130](v4, v6);

    return 2108704;
  }

  return result;
}

uint64_t sub_2756EA228@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFD8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  if (a1[1])
  {
    v8 = *(v5 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v17 = v5;
    v10 = swift_allocObject();
    v11 = a1[3];
    v10[3] = a1[2];
    v10[4] = v11;
    v10[5] = a1[4];
    v12 = a1[1];
    v10[1] = *a1;
    v10[2] = v12;
    sub_2756EA88C(a1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE038);
    sub_2756CFA44(&qword_2809FE040, &qword_2809FE038);
    sub_275797610();
    v13 = sub_275797400();
    KeyPath = swift_getKeyPath();
    v15 = &v7[*(v4 + 36)];
    *v15 = KeyPath;
    v15[1] = v13;
    sub_2756ECAAC(v7, a2);
    return (*(v17 + 56))(a2, 0, 1, v4);
  }
}

unint64_t sub_2756EA45C()
{
  result = qword_2809FDFC8;
  if (!qword_2809FDFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDFC0);
    sub_2756EA4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDFC8);
  }

  return result;
}

unint64_t sub_2756EA4E0()
{
  result = qword_2809FDFD0;
  if (!qword_2809FDFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDFD8);
    sub_2756CFA44(&qword_2809FDFE0, &qword_2809FDFE8);
    sub_2756CFA44(&qword_2809FDFF0, &qword_2809FDFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FDFD0);
  }

  return result;
}

uint64_t sub_2756EA5C4()
{
  sub_2756ED35C();
  sub_2756DC79C();
  return sub_275797590();
}

uint64_t sub_2756EA638@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[6];
  v4 = v2[7];
  v5 = v2[8];
  v6 = v2[9];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_27562F5C0(v3);

  return sub_27562F5C0(v5);
}

unint64_t sub_2756EA684()
{
  result = qword_280A033F0[0];
  if (!qword_280A033F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A033F0);
  }

  return result;
}

uint64_t sub_2756EA6D8(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_2757981B0();
  *(v1 + 24) = sub_2757981A0();
  v3 = sub_275798160();

  return MEMORY[0x2822009F8](sub_2756EA770, v3, v2);
}

uint64_t sub_2756EA770()
{
  v1 = *(v0 + 16);

  (*(**(v1 + 8) + 232))(v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2756EA7F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2756DBB90;

  return sub_2756EA6D8(v0 + 16);
}

uint64_t sub_2756EA974@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FDF88, type metadata accessor for ICQFPItem);
  result = sub_2757968F0();
  *a8 = result;
  *(a8 + 8) = v17;
  *(a8 + 16) = a1;
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  *(a8 + 56) = a6;
  *(a8 + 64) = a7;
  *(a8 + 72) = a9;
  return result;
}

uint64_t sub_2756EAA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v43 - v10;
  v47 = sub_275797790();
  v54 = *(v47 - 8);
  v11 = MEMORY[0x28223BE20](v47);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDFE8);
  v53 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v51 = &v43 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v50 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v44 = a2;
  v24 = a3;
  v23[4] = a3;
  v23[5] = a4;
  sub_27562F5C0(a1);
  sub_27562F5C0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE038);
  sub_2756CFA44(&qword_2809FE040, &qword_2809FE038);
  v25 = v22;
  v43 = v22;
  sub_275797610();
  v26 = v49;
  sub_275797780();
  v27 = v45;
  sub_2757966A0();
  v28 = sub_2757966E0();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = swift_allocObject();
  v30 = v44;
  v29[2] = a1;
  v29[3] = v30;
  v29[4] = v24;
  v29[5] = a4;
  sub_27562F5C0(a1);
  sub_27562F5C0(v24);
  v31 = v50;
  sub_275797600();
  v32 = *(v53 + 16);
  v33 = v51;
  v32(v51, v25, v14);
  v34 = *(v54 + 16);
  v35 = v52;
  v36 = v47;
  v34(v52, v26, v47);
  v37 = v46;
  v32(v46, v31, v14);
  v38 = v48;
  v32(v48, v33, v14);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE048);
  v34(&v38[*(v39 + 48)], v35, v36);
  v32(&v38[*(v39 + 64)], v37, v14);
  v40 = *(v53 + 8);
  v40(v50, v14);
  v41 = *(v54 + 8);
  v41(v49, v36);
  v40(v43, v14);
  v40(v37, v14);
  v41(v52, v36);
  return (v40)(v51, v14);
}

uint64_t sub_2756EAFD4()
{
  sub_2756ED3E0();
  sub_2756DC79C();
  return sub_275797590();
}

uint64_t sub_2756EB060()
{
  sub_2756ED3E0();
  sub_2756DC79C();
  return sub_275797590();
}

uint64_t sub_2756EB0FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275796B70();
  *a1 = result;
  return result;
}

uint64_t sub_2756EB150()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {

    v2 = sub_275798680();

    if (v2)
    {
      v3 = sub_2756EC50C();

      return v3;
    }

    return 0;
  }

  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
  v5 = sub_275797ED0();
  v6 = -1 << *(v1 + 32);
  v7 = v5 & ~v6;
  if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  sub_2756ED254(&unk_2809FEE40, type metadata accessor for ICQFPItem);
  while ((sub_275797F00() & 1) == 0)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v1 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v0;
  v12 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2756EC144();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v7);
  sub_2756EC6E8(v7);
  result = v11;
  *v0 = v12;
  return result;
}

uint64_t sub_2756EB350(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_275798650();

    if (v8)
    {

      type metadata accessor for ICQFPItem();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
      return result;
    }

    result = sub_275798640();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_2756EB9AC(v7, result + 1);
    if (*(v16 + 24) <= *(v16 + 16))
    {
      sub_2756EBBE0();
    }

    sub_2756EBE74(v17, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for ICQFPItem();
  sub_2756ED254(&qword_2809FED70, type metadata accessor for ICQFPItem);
  v10 = sub_275797ED0();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;

    sub_2756EBF5C(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v19;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  sub_2756ED254(&unk_2809FEE40, type metadata accessor for ICQFPItem);
  while ((sub_275797F00() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_2756EB634()
{
  result = qword_2809FE030;
  if (!qword_2809FE030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FE000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDFA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FDF98);
    sub_2756CFA44(&qword_2809FDFB8, &qword_2809FDF98);
    swift_getOpaqueTypeConformance2();
    sub_2756EA45C();
    swift_getOpaqueTypeConformance2();
    sub_2756EA684();
    swift_getOpaqueTypeConformance2();
    sub_2756ED254(&qword_2809FDCE0, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FE030);
  }

  return result;
}

uint64_t sub_2756EB820(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2756EB87C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_2756EB8FC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}