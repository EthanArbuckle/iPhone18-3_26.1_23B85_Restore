uint64_t sub_27576E07C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2757733C8(v4, v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_27577342C(v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a3[3] = sub_275796990();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);

  sub_275797390();
}

uint64_t sub_27576E238(uint64_t a1, uint64_t a2)
{
  v4 = sub_275796280();
  v104 = *(v4 - 8);
  v105 = v4;
  MEMORY[0x28223BE20](v4);
  v103 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_2757963E0();
  v102 = *(v106 - 8);
  v6 = MEMORY[0x28223BE20](v106);
  v100 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v99 = &v91 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v91 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v91 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v91 - v15;
  v17 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v18 = *(v17 + 20);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v20 = a2;
  v21 = 0;
  sub_275796390();
  v97 = v20;
  v98 = a1;
  v94 = v17;
  v95 = v18;
  v96 = v19;
  v35 = sub_2757490EC();
  v36 = v102;
  v37 = *(v102 + 8);
  v38 = v16;
  v39 = v102 + 8;
  v40 = v106;
  v93 = v35;
  v37(v38, v106);
  v41 = *(v93 + 16);
  v42 = v105;
  if (v41)
  {
    v44 = v36 + 16;
    v43 = *(v36 + 16);
    v45 = v93 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v108 = *(v44 + 56);
    v109 = v43;
    v46 = MEMORY[0x277D84F90];
    v107 = v44;
    v43(v14, v45, v40);
    while (1)
    {
      sub_27577204C(v14, v122);
      v37(v14, v40);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v47 = v46;
      }

      else
      {
        v47 = sub_2756E66C8(0, *(v46 + 2) + 1, 1, v46);
      }

      v49 = *(v47 + 2);
      v48 = *(v47 + 3);
      if (v49 >= v48 >> 1)
      {
        v47 = sub_2756E66C8((v48 > 1), v49 + 1, 1, v47);
      }

      *(v47 + 2) = v49 + 1;
      v46 = v47;
      v50 = &v47[88 * v49];
      v51 = v122[1];
      *(v50 + 2) = v122[0];
      *(v50 + 3) = v51;
      v52 = v122[2];
      v53 = v122[3];
      v54 = v122[4];
      *(v50 + 14) = v123;
      *(v50 + 5) = v53;
      *(v50 + 6) = v54;
      *(v50 + 4) = v52;
      v21 = 0;
      v40 = v106;
      v45 += v108;
      if (!--v41)
      {
        break;
      }

      v109(v14, v45, v106);
    }

    v42 = v105;
    v55 = v46;
  }

  else
  {

    v55 = MEMORY[0x277D84F90];
  }

  v56 = *(v55 + 16);
  v108 = v55;
  if (v56)
  {
    v92 = v37;
    v93 = v39;
    v121 = MEMORY[0x277D84F90];

    sub_275770768(0, v56, 0);
    v57 = v108;
    v58 = *(v108 + 16);
    if (v58)
    {
      v59 = 0;
      v60 = v121;
      v107 = v56 - 1;
      v61 = 32;
      while (v59 < *(v57 + 16))
      {
        v109 = v21;
        v62 = *(v57 + v61 + 16);
        v119[0] = *(v57 + v61);
        v119[1] = v62;
        v63 = *(v57 + v61 + 32);
        v64 = *(v57 + v61 + 48);
        v65 = *(v57 + v61 + 64);
        *&v120[32] = *(v57 + v61 + 80);
        *v120 = v64;
        *&v120[16] = v65;
        v119[2] = v63;
        v66 = *(v57 + v61);
        v67 = *(v57 + v61 + 16);
        v118 = *(v57 + v61 + 32);
        v117 = v67;
        v116 = v66;
        v111 = *&v120[1];
        v112[0] = *&v120[17];
        *(v112 + 15) = *&v120[32];
        v113 = v66;
        v114 = v67;
        v115 = v118;
        sub_275773DF0(v119, &v110);
        v121 = v60;
        v69 = *(v60 + 16);
        v68 = *(v60 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_275770768((v68 > 1), v69 + 1, 1);
          v60 = v121;
        }

        *(v60 + 16) = v69 + 1;
        v70 = v60 + 88 * v69;
        v72 = v114;
        v71 = v115;
        *(v70 + 32) = v113;
        *(v70 + 48) = v72;
        *(v70 + 64) = v71;
        *(v70 + 80) = v58 != 1;
        v73 = v111;
        v74 = v112[0];
        *(v70 + 112) = *(v112 + 15);
        *(v70 + 97) = v74;
        *(v70 + 81) = v73;
        if (v107 == v59)
        {

          v42 = v105;
          v40 = v106;
          v21 = v109;
          v37 = v92;
          v39 = v93;
          goto LABEL_28;
        }

        v61 += 88;
        ++v59;
        --v58;
        v57 = v108;
        v21 = v109;
        if (!v58)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
LABEL_41:
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_28:
  sub_275773E28();
  v75 = v101;
  sub_275798130();

  sub_2757964E0();
  if (!v21)
  {
    v37(v75, v40);
    v76 = v99;
    sub_275796390();
    v77 = sub_2757490EC();
    v37(v76, v40);
    v78 = *(v77 + 16);
    if (v78)
    {
      v92 = v37;
      v93 = v39;
      v79 = v102 + 16;
      v109 = *(v102 + 16);
      v80 = *(v102 + 80);
      v107 = v77;
      v81 = v77 + ((v80 + 32) & ~v80);
      v82 = *(v102 + 72);
      v83 = MEMORY[0x277D84F90];
      v84 = v100;
      do
      {
        v85 = v79;
        v109(v84, v81, v40);
        v86 = sub_275748F2C();
        v92(v84, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_2756E65D4(0, *(v83 + 2) + 1, 1, v83);
        }

        v88 = *(v83 + 2);
        v87 = *(v83 + 3);
        if (v88 >= v87 >> 1)
        {
          v83 = sub_2756E65D4((v87 > 1), v88 + 1, 1, v83);
        }

        *(v83 + 2) = v88 + 1;
        v83[v88 + 32] = v86 & 1;
        v40 = v106;
        v84 = v100;
        v81 += v82;
        --v78;
        v79 = v85;
      }

      while (v78);
    }

    else
    {

      v83 = MEMORY[0x277D84F90];
    }

    v89 = v97;
    v90 = v108;
    sub_27576CE54(v97, v108, v83);
    sub_27576D834(v89, v90, v83);
LABEL_43:
  }

  v37(v75, v40);

  v22 = v103;
  v23 = v104;
  v24 = sub_275700E70();
  (*(v23 + 16))(v22, v24, v42);
  v25 = v21;
  v26 = sub_275796270();
  v27 = sub_2757982F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = v22;
    v30 = swift_slowAlloc();
    *v28 = 138412290;
    v31 = v21;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v32;
    *v30 = v32;
    _os_log_impl(&dword_275623000, v26, v27, "ToggleRecommendedBackupAction: Error while updating store on appear, %@", v28, 0xCu);
    sub_2756C92B4(v30, &qword_2809FEDA0);
    v33 = v30;
    v22 = v29;
    MEMORY[0x277C81E50](v33, -1, -1);
    MEMORY[0x277C81E50](v28, -1, -1);
  }

  else
  {
  }

  return (*(v23 + 8))(v22, v42);
}

unint64_t sub_27576EBCC(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v7 = 0xD00000000000001CLL;
      if (a1 == 10)
      {
        v7 = 0xD000000000000010;
      }

      if (a1 == 9)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v6 = 0xD000000000000027;
      if (a1 != 7)
      {
        v6 = 0xD000000000000028;
      }

      if (a1 == 6)
      {
        return 0xD000000000000029;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v1 = 0x656369766564;
    v2 = 0xD00000000000001DLL;
    v3 = 0xD000000000000024;
    if (a1 == 4)
    {
      v3 = 0xD000000000000027;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000022;
    if (a1 == 1)
    {
      v4 = 0x73656369766564;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_27576ED60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_27576EBCC(*a1);
  v5 = v4;
  if (v3 == sub_27576EBCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_275798980();
  }

  return v8 & 1;
}

uint64_t sub_27576EDE8()
{
  v1 = *v0;
  sub_275798A40();
  sub_27576EBCC(v1);
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27576EE4C()
{
  sub_27576EBCC(*v0);
  sub_275797FF0();
}

uint64_t sub_27576EEA0()
{
  v1 = *v0;
  sub_275798A40();
  sub_27576EBCC(v1);
  sub_275797FF0();

  return sub_275798A70();
}

uint64_t sub_27576EF00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275773AB0();
  *a1 = result;
  return result;
}

unint64_t sub_27576EF30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_27576EBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_27576EF78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275773AB0();
  *a1 = result;
  return result;
}

uint64_t sub_27576EFAC(uint64_t a1)
{
  v2 = sub_2757734A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27576EFE8(uint64_t a1)
{
  v2 = sub_2757734A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27576F024@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_275796530();
  v73 = *(v3 - 8);
  v74 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v67 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v68 = v59 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v70 = v59 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v71 = v59 - v11;
  MEMORY[0x28223BE20](v10);
  v72 = v59 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v75 = *(v79 - 8);
  v13 = MEMORY[0x28223BE20](v79);
  v64 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v65 = v59 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = v59 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v69 = v59 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v59 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v59 - v25;
  MEMORY[0x28223BE20](v24);
  v76 = v59 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFBB8);
  v77 = *(v28 - 8);
  v78 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = v59 - v29;
  v31 = type metadata accessor for ToggleRecommendedBackupAction(0);
  MEMORY[0x28223BE20](v31);
  v33 = v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2757734A8();
  v80 = v30;
  v34 = v81;
  sub_275798A80();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = v26;
  v60 = v23;
  v61 = a1;
  v62 = v31;
  v81 = v33;
  v93 = 0;
  v36 = sub_2756CFA44(&qword_2809FF2F0, &qword_2809FF2E8);
  v37 = v76;
  v38 = v79;
  sub_275798910();
  v39 = (v75 + 32);
  v40 = *(v75 + 32);
  v40(v81, v37, v38);
  v92 = 1;
  sub_275798910();
  v41 = v40;
  v40(&v81[v62[5]], v35, v38);
  v91 = 2;
  v42 = v60;
  v59[1] = 0;
  sub_275798910();
  v76 = v36;
  v43 = v81;
  v41(&v81[v62[8]], v42, v38);
  v90 = 4;
  sub_2757735A0(&qword_2809FD770, MEMORY[0x277D23340]);
  v44 = v72;
  v45 = v43;
  v46 = v74;
  sub_275798910();
  v47 = v41;
  v60 = v39;
  v48 = *(v73 + 32);
  v48(&v45[v62[10]], v44, v46);
  v89 = 5;
  v49 = v71;
  sub_275798910();
  v50 = v46;
  v48(&v45[v62[11]], v49, v46);
  v88 = 6;
  v51 = v70;
  sub_275798910();
  v48(&v45[v62[12]], v51, v50);
  v87 = 7;
  v52 = v69;
  sub_275798910();
  v72 = v48;
  v47(&v45[v62[7]], v52, v79);
  v86 = 8;
  v53 = v68;
  sub_275798910();
  v54 = v53;
  v55 = v72;
  (v72)(&v81[v62[13]], v54, v50);
  v85 = 9;
  v56 = v67;
  sub_275798910();
  v55(&v81[v62[14]], v56, v74);
  v84 = 3;
  sub_275798910();
  v47(&v81[v62[9]], v66, v79);
  v83 = 10;
  sub_275798910();
  v47(&v81[v62[6]], v65, v79);
  v82 = 11;
  sub_275798910();
  (*(v77 + 8))(v80, v78);
  v57 = v81;
  v47(&v81[v62[15]], v64, v79);
  sub_2757733C8(v57, v63);
  __swift_destroy_boxed_opaque_existential_0(v61);
  return sub_2757734FC(v57);
}

uint64_t sub_27576FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2756DBB90;

  return MEMORY[0x2821820C8](a1, a2, a3);
}

uint64_t sub_27576FF04(uint64_t a1)
{
  sub_275771CB8(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_27576FF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v11 = v10[4];
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_2757733C8(v5, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_27577342C(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  a4[3] = sub_275796990();
  v15[0] = v11;
  v15[1] = MEMORY[0x277CE0790];
  a4[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a4);

  sub_275797390();
}

uint64_t sub_2757701E8()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_275770218()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_275770248@<X0>(uint64_t *a1@<X8>)
{
  v35 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2E8);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v32 = *(*(v2 - 8) + 72);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2757A9100;
  v4 = (v34 + v3);
  v5 = *(v2 + 48);
  *v4 = 7890025;
  v4[1] = 0xE300000000000000;
  v6 = swift_allocObject();
  *(v6 + 16) = *v1;
  *(v4 + v5) = v6;
  v7 = *MEMORY[0x277D23248];
  v8 = sub_2757963E0();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v34 + v3 + v5, v7, v8);
  v37 = v9;
  v10 = (v34 + v3 + v32);
  v11 = v2;
  v12 = *(v2 + 48);
  *v10 = 1701667182;
  v10[1] = 0xE400000000000000;
  v13 = swift_allocObject();
  v43 = *(v1 + 8);
  *(v13 + 16) = v43;
  *(v10 + v12) = v13;
  v14 = *MEMORY[0x277D232A0];
  v33 = *MEMORY[0x277D232A0];
  (v9)(v10 + v12, v14, v8);
  v15 = (v34 + v3 + 2 * v32);
  v16 = *(v11 + 48);
  *v15 = 0x6E6F6974706163;
  v15[1] = 0xE700000000000000;
  v17 = swift_allocObject();
  v42 = *(v1 + 24);
  *(v17 + 16) = v42;
  *(v15 + v16) = v17;
  (v9)(v15 + v16, v14, v8);
  v18 = (v34 + v3 + 3 * v32);
  v19 = *(v11 + 48);
  *v18 = 0x6567616D69;
  v18[1] = 0xE500000000000000;
  v20 = swift_allocObject();
  v41 = *(v1 + 40);
  *(v20 + 16) = v41;
  *(v18 + v19) = v20;
  (v9)(v18 + v19);
  v21 = (v34 + v3 + 4 * v32);
  v22 = *(v11 + 48);
  *v21 = 0x6469766944736168;
  v21[1] = 0xEA00000000007265;
  v23 = swift_allocObject();
  *(v23 + 16) = *(v1 + 48);
  *(v21 + v22) = v23;
  (v9)(v21 + v22, *MEMORY[0x277D23258], v8);
  v24 = (v34 + v3 + 5 * v32);
  v25 = *(v11 + 48);
  *v24 = 0x52556574656C6564;
  v24[1] = 0xE90000000000004CLL;
  v26 = swift_allocObject();
  v40 = *(v1 + 56);
  *(v26 + 16) = v40;
  *(v24 + v25) = v26;
  (v9)(v24 + v25, v33, v8);
  v27 = (v34 + v3 + 6 * v32);
  v28 = *(v11 + 48);
  *v27 = 0xD000000000000010;
  v27[1] = 0x80000002757BA700;
  v29 = swift_allocObject();
  v39 = *(v1 + 72);
  *(v29 + 16) = v39;
  *(v27 + v28) = v29;
  (v37)(v27 + v28, v33, v8);
  sub_27575D7C8(&v43, v38);
  sub_27575D7C8(&v42, v38);
  sub_2756C9074(&v41, v38, &qword_2809FDF78);
  sub_27575D7C8(&v40, v38);
  sub_27575D7C8(&v39, v38);
  v30 = sub_2756FADF0(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v35 + 16) = v30;
  *a1 = v35;
  return v37();
}

__n128 sub_275770708@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned __int8 a7@<W6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u8[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  return result;
}

size_t sub_275770748(size_t a1, int64_t a2, char a3)
{
  result = sub_275770788(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275770768(char *a1, int64_t a2, char a3)
{
  result = sub_275770960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_275770788(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFBF0);
  v10 = *(sub_2757963E0() - 8);
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
  v15 = *(sub_2757963E0() - 8);
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

char *sub_275770960(char *result, int64_t a2, char a3, char *a4)
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

uint64_t sub_275770A88(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_2757963E0();
  v5 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE358);
  v42 = a2;
  result = sub_275798860();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_275798A40();
      sub_275797FF0();
      result = sub_275798A70();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_275770E08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2756F72B4(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_275771038();
      goto LABEL_7;
    }

    sub_275770A88(v15, a4 & 1);
    v26 = sub_2756F72B4(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_2757989D0();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_2757963E0();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_275770F88(v12, a2, a3, a1, v18);
}

uint64_t sub_275770F88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_2757963E0();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_275771038()
{
  v1 = v0;
  v35 = sub_2757963E0();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE358);
  v3 = *v0;
  v4 = sub_275798850();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unsigned __int8 *sub_2757712B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_275798080();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_275771844();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_275798760();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_275771844()
{
  v0 = sub_275798090();
  v4 = sub_2757718C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_2757718C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_275798560();
    if (!v9 || (v10 = v9, v11 = sub_2756C5980(v9, 0), v12 = sub_275771A1C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_275797FE0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_275797FE0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_275798760();
LABEL_4:

  return sub_275797FE0();
}

unint64_t sub_275771A1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_275771C3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_275798050();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_275798760();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_275771C3C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_275798030();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_275771C3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_275798060();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x277C80160](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_275771CB8(uint64_t a1)
{
  v2 = sub_2757978A0();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2757978C0();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToggleRecommendedBackupAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_2756CB330();
  v11 = sub_275798340();
  sub_2757733C8(v16, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  sub_27577342C(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_275773E7C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2757735A0(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v7, v4, v14);
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_27577204C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v142 = a2;
  v3 = sub_275796280();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v156 = (v139 - v9);
  v10 = MEMORY[0x28223BE20](v8);
  v154 = v139 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v153 = v139 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v151 = v139 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v149 = v139 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v147 = v139 - v19;
  MEMORY[0x28223BE20](v18);
  v144 = v139 - v20;
  v21 = sub_2757963E0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v143 = v139 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v145 = v139 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v148 = v139 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v150 = v139 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v152 = v139 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v139 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v139 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = (v139 - v39);
  v41 = *(v22 + 2);
  v157 = a1;
  v158 = v22 + 16;
  v159 = v41;
  v41(v139 - v39, a1, v21);
  v155 = *(v22 + 11);
  v42 = v155(v40, v21);
  if (v42 == *MEMORY[0x277D23270])
  {
    v140 = v42;
    v157 = v3;
    v146 = v4;
    v43 = *(v22 + 12);
    v141 = v22 + 96;
    v44 = v43;
    v43(v40, v21);
    v45 = *v40;
    v46 = *(v45 + 16);
    if (*(v46 + 16))
    {

      v47 = sub_2756F72B4(7890025, 0xE300000000000000);
      if (v48)
      {
        v139[1] = v45;
        v49 = *(v22 + 9);
        v159(v38, *(v46 + 56) + v49 * v47, v21);
        if (v155(v38, v21) == *MEMORY[0x277D23248])
        {
          v44(v38, v21);
          v50 = *(*v38 + 16);

          if (*(v46 + 16) && (v51 = sub_2756F72B4(1701667182, 0xE400000000000000), (v52 & 1) != 0))
          {
            v159(v35, *(v46 + 56) + v51 * v49, v21);
            v53 = v155(v35, v21);
            if (v53 == *MEMORY[0x277D232A0])
            {
              v156 = v22;
              v54 = v53;
              v44(v35, v21);
              v55 = *(*v35 + 16);
              v56 = *(*v35 + 24);
              v139[0] = v55;

              if (*(v46 + 16) && (v154 = v56, v57 = sub_2756F72B4(0x6E6F6974706163, 0xE700000000000000), (v58 & 1) != 0))
              {
                v59 = v152;
                v159(v152, *(v46 + 56) + v57 * v49, v21);
                if (v155(v59, v21) == v54)
                {
                  v44(v59, v21);
                  v60 = *(*v59 + 16);
                  v61 = *(*v59 + 24);
                  v152 = v60;

                  if (*(v46 + 16) && (v153 = v61, v62 = sub_2756F72B4(0x6567616D69, 0xE500000000000000), (v63 & 1) != 0))
                  {
                    v64 = v150;
                    v159(v150, *(v46 + 56) + v62 * v49, v21);
                    v65 = v155(v64, v21);
                    if (v65 == v140)
                    {
                      v44(v64, v21);
                      v66 = *(*v64 + 16);

                      if (*(v46 + 16) && (v67 = sub_2756F72B4(0x6469766944736168, 0xEA00000000007265), (v68 & 1) != 0))
                      {
                        v69 = v148;
                        v159(v148, *(v46 + 56) + v67 * v49, v21);
                        if (v155(v69, v21) == *MEMORY[0x277D23258])
                        {
                          v151 = v21;
                          v44(v69, v21);
                          LODWORD(v150) = *(*v69 + 16);

                          if (*(v46 + 16) && (v70 = sub_2756F72B4(0x52556574656C6564, 0xE90000000000004CLL), (v71 & 1) != 0))
                          {
                            v72 = v145;
                            v73 = v151;
                            v159(v145, *(v46 + 56) + v70 * v49, v151);
                            if (v155(v72, v73) == v54)
                            {
                              v74 = v145;
                              v44(v145, v151);
                              v75 = *(*v74 + 24);
                              v149 = *(*v74 + 16);

                              if (*(v46 + 16) && (v76 = sub_2756F72B4(0xD000000000000010, 0x80000002757BA700), (v77 & 1) != 0))
                              {
                                v78 = *(v46 + 56) + v76 * v49;
                                v79 = v143;
                                v80 = v151;
                                v159(v143, v78, v151);

                                if (v155(v79, v80) == v54)
                                {
                                  v81 = v143;
                                  v44(v143, v151);
                                  v83 = *(*v81 + 16);
                                  v82 = *(*v81 + 24);

                                  v85 = v142;
                                  v86 = v139[0];
                                  *v142 = v50;
                                  v85[1] = v86;
                                  v88 = v152;
                                  v87 = v153;
                                  v85[2] = v154;
                                  v85[3] = v88;
                                  v85[4] = v87;
                                  v85[5] = v66;
                                  *(v85 + 48) = v150;
                                  *(v85 + 49) = *v160;
                                  *(v85 + 13) = *&v160[3];
                                  v85[7] = v149;
                                  v85[8] = v75;
                                  v85[9] = v83;
                                  v85[10] = v82;
                                  return result;
                                }

                                v156[1](v143, v151);
                              }

                              else
                              {
                              }

                              v135 = sub_275700E70();
                              (*(v146 + 16))(v144, v135, v157);
                              v136 = sub_2757982F0();
                              v137 = sub_275796270();
                              if (os_log_type_enabled(v137, v136))
                              {
                                v138 = swift_slowAlloc();
                                *v138 = 0;
                                _os_log_impl(&dword_275623000, v137, v136, "Recommended Backup: failed to parse key 'storageRecovered'", v138, 2u);
                                MEMORY[0x277C81E50](v138, -1, -1);
                              }

                              (*(v146 + 8))(v144, v157);
                              goto LABEL_59;
                            }

                            v156[1](v145, v151);
                          }

                          else
                          {
                          }

                          v130 = sub_275700E70();
                          (*(v146 + 16))(v147, v130, v157);
                          v131 = sub_2757982F0();
                          v132 = sub_275796270();
                          if (os_log_type_enabled(v132, v131))
                          {
                            v133 = swift_slowAlloc();
                            *v133 = 0;
                            _os_log_impl(&dword_275623000, v132, v131, "Recommended Backup: failed to parse key 'deleteURL'", v133, 2u);
                            MEMORY[0x277C81E50](v133, -1, -1);
                          }

                          (*(v146 + 8))(v147, v157);
LABEL_59:
                          type metadata accessor for RecommendedBackupError(0);
                          sub_2757735A0(&qword_2809FFBE8, type metadata accessor for RecommendedBackupError);
                          swift_allocError();
                          *v134 = MEMORY[0x277D837D0];
                          swift_storeEnumTagMultiPayload();
                          swift_willThrow();
                        }

                        v156[1](v69, v21);
                      }

                      else
                      {
                      }

                      v123 = v146;
                      v124 = v157;
                      v125 = v149;
                      v126 = sub_275700E70();
                      (*(v123 + 16))(v125, v126, v124);
                      v127 = sub_2757982F0();
                      v128 = sub_275796270();
                      if (os_log_type_enabled(v128, v127))
                      {
                        v129 = swift_slowAlloc();
                        *v129 = 0;
                        _os_log_impl(&dword_275623000, v128, v127, "Recommended Backup: failed to parse key 'hasDivider'", v129, 2u);
                        MEMORY[0x277C81E50](v129, -1, -1);
                      }

                      (*(v123 + 8))(v125, v124);
                      type metadata accessor for RecommendedBackupError(0);
                      sub_2757735A0(&qword_2809FFBE8, type metadata accessor for RecommendedBackupError);
                      swift_allocError();
                      v113 = MEMORY[0x277D839B0];
                      goto LABEL_38;
                    }

                    v156[1](v64, v21);
                  }

                  else
                  {
                  }

                  v115 = sub_275700E70();
                  v116 = v146;
                  v117 = v151;
                  v118 = v157;
                  (*(v146 + 16))(v151, v115, v157);
                  v119 = sub_2757982F0();
                  v120 = sub_275796270();
                  if (os_log_type_enabled(v120, v119))
                  {
                    v121 = swift_slowAlloc();
                    *v121 = 0;
                    _os_log_impl(&dword_275623000, v120, v119, "Recommended Backup: failed to parse key 'image'", v121, 2u);
                    MEMORY[0x277C81E50](v121, -1, -1);
                  }

                  (*(v116 + 8))(v117, v118);
                  type metadata accessor for RecommendedBackupError(0);
                  sub_2757735A0(&qword_2809FFBE8, type metadata accessor for RecommendedBackupError);
                  swift_allocError();
                  *v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF78);
                  goto LABEL_39;
                }

                v156[1](v59, v21);
              }

              else
              {
              }

              v114 = sub_275700E70();
              v105 = v146;
              v106 = v153;
              v107 = v157;
              (*(v146 + 16))(v153, v114, v157);
              v108 = sub_2757982F0();
              v109 = sub_275796270();
              if (os_log_type_enabled(v109, v108))
              {
                v110 = swift_slowAlloc();
                *v110 = 0;
                v111 = "Recommended Backup: failed to parse key 'caption'";
                goto LABEL_36;
              }

              goto LABEL_37;
            }

            (*(v22 + 1))(v35, v21);
          }

          else
          {
          }

          v104 = sub_275700E70();
          v105 = v146;
          v106 = v154;
          v107 = v157;
          (*(v146 + 16))(v154, v104, v157);
          v108 = sub_2757982F0();
          v109 = sub_275796270();
          if (os_log_type_enabled(v109, v108))
          {
            v110 = swift_slowAlloc();
            *v110 = 0;
            v111 = "Recommended Backup: failed to parse key 'name'";
LABEL_36:
            _os_log_impl(&dword_275623000, v109, v108, v111, v110, 2u);
            MEMORY[0x277C81E50](v110, -1, -1);
          }

LABEL_37:

          (*(v105 + 8))(v106, v107);
          type metadata accessor for RecommendedBackupError(0);
          sub_2757735A0(&qword_2809FFBE8, type metadata accessor for RecommendedBackupError);
          swift_allocError();
          v113 = MEMORY[0x277D837D0];
LABEL_38:
          *v112 = v113;
LABEL_39:
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        (*(v22 + 1))(v38, v21);
      }

      else
      {
      }
    }

    v96 = sub_275700E70();
    v97 = v146;
    v99 = v156;
    v98 = v157;
    (*(v146 + 16))(v156, v96, v157);
    v100 = sub_2757982F0();
    v101 = sub_275796270();
    if (os_log_type_enabled(v101, v100))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_275623000, v101, v100, "Recommended Backup: failed to parse key 'idx'", v102, 2u);
      MEMORY[0x277C81E50](v102, -1, -1);
    }

    (*(v97 + 8))(v99, v98);
    type metadata accessor for RecommendedBackupError(0);
    sub_2757735A0(&qword_2809FFBE8, type metadata accessor for RecommendedBackupError);
    swift_allocError();
    *v103 = MEMORY[0x277D83B88];
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  v156 = v22;
  v89 = sub_275700E70();
  (*(v4 + 16))(v7, v89, v3);
  v90 = sub_2757982F0();
  v91 = sub_275796270();
  if (os_log_type_enabled(v91, v90))
  {
    v92 = swift_slowAlloc();
    *v92 = 0;
    _os_log_impl(&dword_275623000, v91, v90, "Recommended Backup: DecodabelStateType is not a dictionary", v92, 2u);
    MEMORY[0x277C81E50](v92, -1, -1);
  }

  (*(v4 + 8))(v7, v3);
  type metadata accessor for RecommendedBackupError(0);
  sub_2757735A0(&qword_2809FFBE8, type metadata accessor for RecommendedBackupError);
  swift_allocError();
  v94 = v93;
  v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE2F8) + 48);
  v159(v94, v157, v21);
  *&v94[v95] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDF78);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (v156[1])(v40, v21);
}

uint64_t sub_2757733C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27577342C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2757734A8()
{
  result = qword_280A0C000[0];
  if (!qword_280A0C000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0C000);
  }

  return result;
}

uint64_t sub_2757734FC(uint64_t a1)
{
  v2 = type metadata accessor for ToggleRecommendedBackupAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2757735A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_275773678()
{
  sub_275773718();
  if (v0 <= 0x3F)
  {
    sub_275796530();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_275773718()
{
  if (!qword_2809FFBD0)
  {
    sub_2757963E0();
    sub_2757735A0(&qword_2809FD8C0, MEMORY[0x277D232B0]);
    v0 = sub_2757963A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFBD0);
    }
  }
}

uint64_t sub_2757737AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2757737F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToggleRecommendedBackupAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToggleRecommendedBackupAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2757739AC()
{
  result = qword_280A0C430[0];
  if (!qword_280A0C430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0C430);
  }

  return result;
}

unint64_t sub_275773A04()
{
  result = qword_280A0C540;
  if (!qword_280A0C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0C540);
  }

  return result;
}

unint64_t sub_275773A5C()
{
  result = qword_280A0C548[0];
  if (!qword_280A0C548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0C548);
  }

  return result;
}

uint64_t sub_275773AB0()
{
  v0 = sub_2757988A0();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for ToggleRecommendedBackupAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF2E8);
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);
  v6(v4 + v1[8], v5);
  v6(v4 + v1[9], v5);
  v6(v4 + v1[10], v5);
  v6(v4 + v1[11], v5);
  v7 = v1[12];
  v8 = sub_275796530();
  v9 = *(*(v8 - 8) + 8);
  v9(v4 + v7, v8);
  v9(v4 + v1[13], v8);
  v9(v4 + v1[14], v8);
  v9(v4 + v1[15], v8);
  v9(v4 + v1[16], v8);
  v6(v4 + v1[17], v5);

  return MEMORY[0x2821FE8E8](v11, v12 + 8, v2 | 7);
}

uint64_t sub_275773D50(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ToggleRecommendedBackupAction(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_275773E28()
{
  result = qword_2809FFBD8;
  if (!qword_2809FFBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFBD8);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275773EE0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_275796530();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for PageMetricsModifier()
{
  result = qword_280A0C950;
  if (!qword_280A0C950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27577404C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_275798980() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_275798980();

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

uint64_t sub_27577414C(char a1)
{
  sub_275798A40();
  MEMORY[0x277C80B70](a1 & 1);
  return sub_275798A70();
}

uint64_t sub_275774194(char a1)
{
  if (a1)
  {
    return 0x6570795465676170;
  }

  else
  {
    return 0x644965676170;
  }
}

uint64_t sub_2757741E0()
{
  if (*v0)
  {
    return 0x6570795465676170;
  }

  else
  {
    return 0x644965676170;
  }
}

uint64_t sub_275774218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x644965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_275798980() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570795465676170 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_275798980();

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

uint64_t sub_2757742F0(uint64_t a1)
{
  v2 = sub_275774734();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27577432C(uint64_t a1)
{
  v2 = sub_275774734();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275774368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v23 = sub_275796530();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFBF8);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v18 - v7;
  v9 = type metadata accessor for PageMetricsModifier();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 24)];
  sub_275797CE0();
  v14 = sub_275797CD0();
  v15 = MEMORY[0x277D221C0];
  *v13 = v14;
  v13[1] = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275774734();
  v16 = v25;
  sub_275798A80();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v25 = v5;
    v27 = 0;
    sub_2757755F0(&qword_2809FD770, MEMORY[0x277D23340]);
    sub_275798910();
    (*(v20 + 32))(v12, v22, v23);
    v26 = 1;
    sub_2757988E0();
    (*(v21 + 8))(v8, v24);
    sub_275774788(v25, &v12[*(v9 + 20)]);
    sub_2757747F8(v12, v19);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_27577485C(v12);
  }
}

unint64_t sub_275774734()
{
  result = qword_2809FFC00;
  if (!qword_2809FFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC00);
  }

  return result;
}

uint64_t sub_275774788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2757747F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageMetricsModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27577485C(uint64_t a1)
{
  v2 = type metadata accessor for PageMetricsModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2757748B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v81 = a3;
  v90 = a2;
  v80 = sub_275796280();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v85 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v71 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC10);
  MEMORY[0x28223BE20](v11 - 8);
  v78 = &v71 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC18);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v71 - v14;
  v15 = sub_275797B30();
  v82 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = &v71 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB28);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v71 - v21;
  v89 = sub_275797A80();
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_27575934C(v24);
  v25 = sub_2757979F0();
  v86 = a1;
  v76 = v10;
  v84 = v15;
  if (v25)
  {
  }

  else
  {
    sub_2756D5834(MEMORY[0x277D84F90]);
    sub_275797A00();
  }

  v26 = v88;
  v27 = sub_275796520();
  if (v4)
  {
    return (*(v87 + 8))(v24, v89);
  }

  v30 = v27;
  v31 = v28;
  v75 = a4;
  v73 = type metadata accessor for PageMetricsModifier();
  sub_2756C9074(&v26[*(v73 + 20)], v22, &qword_2809FFB28);
  v32 = sub_275796530();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v22, 1, v32) == 1)
  {
    v90 = 0;
    sub_2756C92B4(v22, &qword_2809FFB28);
    v72 = 0;
    v74 = 0;
  }

  else
  {
    v72 = sub_275796520();
    v74 = v34;
    v90 = 0;
    (*(v33 + 8))(v22, v32);
  }

  v35 = sub_2757979E0();
  v37 = v75;
  v38 = v84;
  if (*v36)
  {
    *(&v96 + 1) = MEMORY[0x277D837D0];
    *&v95 = v30;
    *(&v95 + 1) = v31;
    sub_275759BA0(&v95, 0x644965676170, 0xE600000000000000);
  }

  else
  {
  }

  v35(&v98, 0);
  v39 = sub_2757979E0();
  if (*v40)
  {
    if (v74)
    {
      v41 = MEMORY[0x277D837D0];
      v42 = v72;
    }

    else
    {
      v42 = 0;
      v41 = 0;
      *&v96 = 0;
    }

    *&v95 = v42;
    *(&v95 + 1) = v74;
    *(&v96 + 1) = v41;
    sub_275759BA0(&v95, 0x6570795465676170, 0xE800000000000000);
    v39(&v98, 0);
  }

  else
  {

    v39(&v98, 0);
  }

  *&v95 = v81;
  sub_2757964A0();
  sub_2757755F0(&qword_2809FFC20, MEMORY[0x277D232E8]);

  sub_2757980A0();
  sub_275798880();
  if (*(&v95 + 1))
  {
    while (1)
    {
      v92 = v95;
      v93 = v96;
      v94 = v97;
      sub_275627B04(&v93, v91);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_2756C92B4(&v92, &qword_2809FF0D0);
      sub_275798880();
      if (!*(&v95 + 1))
      {
        goto LABEL_21;
      }
    }

    v52 = v82;
    v53 = *(v82 + 8);
    v53(v18, v38);

    v98 = v92;
    v99[0] = v93;
    v99[1] = v94;

    sub_2756D5AA8(v99, &v100);
    v43 = v83;
    v54 = swift_dynamicCast();
    (*(v52 + 56))(v43, v54 ^ 1u, 1, v38);
    v55 = (*(v52 + 48))(v43, 1, v38);
    v45 = v85;
    if (v55 != 1)
    {
      (*(v52 + 32))(v77, v43, v38);
      v56 = v86[3];
      v57 = v86[4];
      v86 = __swift_project_boxed_opaque_existential_1(v86, v56);
      v58 = v87;
      v59 = v78;
      v60 = v89;
      (*(v87 + 16))(v78, v24, v89);
      (*(v58 + 56))(v59, 0, 1, v60);
      v61 = &v88[*(v73 + 24)];
      v63 = *v61;
      v62 = *(v61 + 1);
      v85 = v63;
      v83 = v62;
      v64 = sub_275796050();
      v65 = *(*(v64 - 8) + 56);
      v88 = v53;
      v66 = v76;
      v65(v76, 1, 1, v64);
      *&v98 = v56;
      *(&v98 + 1) = v57;
      OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
      v68 = v75;
      v75[3] = OpaqueTypeMetadata2;
      *&v98 = v56;
      *(&v98 + 1) = v57;
      v68[4] = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_1(v68);
      v69 = v78;
      v70 = v77;
      sub_2757970E0();
      sub_2756C92B4(v66, &qword_2809FFC08);
      sub_2756C92B4(v69, &qword_2809FFC10);
      (v88)(v70, v38);
      return (*(v58 + 8))(v24, v89);
    }

    v37 = v75;
    v44 = v86;
  }

  else
  {
LABEL_21:

    v43 = v83;
    (*(v82 + 56))(v83, 1, 1, v38);
    v44 = v86;
    v45 = v85;
  }

  sub_2756C92B4(v43, &qword_2809FFC18);
  v46 = sub_275700E70();
  v47 = v79;
  v48 = v80;
  (*(v79 + 16))(v45, v46, v80);
  v49 = sub_275796270();
  v50 = sub_2757982F0();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_275623000, v49, v50, "No metrics pipeline found", v51, 2u);
    MEMORY[0x277C81E50](v51, -1, -1);
  }

  (*(v47 + 8))(v45, v48);
  (*(v87 + 8))(v24, v89);
  return sub_2756CC2E0(v44, v37);
}

unint64_t sub_2757754A4()
{
  result = qword_2809FFC28;
  if (!qword_2809FFC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC28);
  }

  return result;
}

unint64_t sub_2757754FC()
{
  result = qword_2809FFC30;
  if (!qword_2809FFC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC30);
  }

  return result;
}

unint64_t sub_275775554()
{
  result = qword_2809FFC38;
  if (!qword_2809FFC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC38);
  }

  return result;
}

uint64_t sub_2757755F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_275775660()
{
  sub_275796530();
  if (v0 <= 0x3F)
  {
    sub_27576A20C();
    if (v1 <= 0x3F)
    {
      sub_2757756FC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_2757756FC()
{
  result = qword_2809FFC48;
  if (!qword_2809FFC48)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809FFC48);
  }

  return result;
}

uint64_t sub_27577576C()
{
  sub_275775908(&qword_2809FE4A8, MEMORY[0x277D7F250]);

  return sub_2757968F0();
}

uint64_t sub_275775804()
{
  sub_275795F60();
  sub_275775908(&qword_2809FE4A8, MEMORY[0x277D7F250]);

  return sub_275796900();
}

uint64_t sub_27577588C()
{
  sub_275795ED0();
  sub_275775908(&qword_2809FE9B8, MEMORY[0x277D7F228]);

  return sub_2757968F0();
}

uint64_t sub_275775908(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275775958(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_2757759A4()
{
  sub_275795ED0();
  sub_275775908(&qword_2809FE9B8, MEMORY[0x277D7F228]);

  return sub_275796900();
}

uint64_t sub_275775A2C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC50);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for ManageStorageView()
{
  result = qword_280A0CA40;
  if (!qword_280A0CA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275775B50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = (v1 + *(type metadata accessor for ManageStorageView() + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = type metadata accessor for ManageStorageModel(0);
  v7 = sub_275775908(&qword_2809FFC58, type metadata accessor for ManageStorageModel);

  return a1(v3, v4, v5, v6, v7);
}

uint64_t ManageStorageView.init(storageSummaryModel:storageAppsModel:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_275796280();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_275796210();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ManageStorageView();
  v9 = *(v8 + 24);
  *(a1 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC50);
  swift_storeEnumTagMultiPayload();
  v10 = a1 + *(v8 + 28);
  *v10 = sub_275775B0C;
  *(v10 + 1) = 0;
  v10[16] = 0;
  sub_275795F60();
  sub_275775908(&qword_2809FE4A8, MEMORY[0x277D7F250]);

  *a1 = sub_2757968F0();
  a1[1] = v11;
  sub_275795ED0();
  sub_275775908(&qword_2809FE9B8, MEMORY[0x277D7F228]);

  a1[2] = sub_2757968F0();
  a1[3] = v12;
  v13 = sub_2756D8EF8();
  v14 = *(**v13 + 136);

  v16 = v14(v15);

  if (v16)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = *v13;

    sub_275795EB0();
    v18 = objc_allocWithZone(sub_275795F10());
    v19 = sub_275795EF0();
    v20 = sub_275775908(&qword_2809FDC28, MEMORY[0x277D7F240]);
    (*(*v17 + 144))(v19, v20);
  }

  v21 = *(**v13 + 160);

  v23 = v21(v22);

  if (v23)
  {
  }

  else
  {
    v25 = *v13;
    type metadata accessor for ManageStorageAnalytics();

    v26 = sub_275700E70();
    (*(v29 + 16))(v4, v26, v2);
    sub_2757961F0();
    v27 = sub_27575128C(v7);
    (*(*v25 + 168))(v27);
  }
}

uint64_t sub_27577603C()
{
  v0 = sub_275795E70();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 apps];
  }

  else
  {
    result = sub_275795F30();
    if (!result)
    {
      return result;
    }

    v4 = result;
    v1 = [result manageStoragePage];

    v2 = [v1 specifiers];
  }

  return 1;
}

uint64_t sub_2757760D8()
{
  if (sub_275795F50())
  {
    return 1;
  }

  else
  {
    return sub_275795EC0() & 1;
  }
}

uint64_t sub_275776118()
{
  if (sub_275795F50())
  {
    return sub_275795EC0() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_275776158()
{
  if (sub_27577603C() & 1) != 0 || (sub_275795F50())
  {
    return 1;
  }

  else
  {
    return sub_275795EC0() & 1;
  }
}

uint64_t ManageStorageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE9F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v94 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF670);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v94 - v10;
  v121 = type metadata accessor for ManageStorageView();
  v107 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v108 = v12;
  v109 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2757967F0();
  v105 = *(v13 - 8);
  v106 = v13;
  MEMORY[0x28223BE20](v13);
  v104 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC60);
  v102 = *(v15 - 8);
  v103 = v15;
  MEMORY[0x28223BE20](v15);
  v120 = &v94 - v16;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC68);
  MEMORY[0x28223BE20](v113);
  v110 = &v94 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC70);
  MEMORY[0x28223BE20](v119);
  v19 = &v94 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC78);
  MEMORY[0x28223BE20](v111);
  v112 = &v94 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC80);
  MEMORY[0x28223BE20](v118);
  v114 = &v94 - v21;
  v22 = sub_275795F50();
  v115 = v6;
  v116 = a1;
  if (v22 & 1) != 0 && (sub_275795EC0())
  {
    v121 = sub_275796C80();
    v127 = 1;
    sub_275796CE0();
    v23 = v19;
    sub_2756C557C(0, &qword_2809FDDB8);
    sub_275756884();
    v24 = sub_2757970B0();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    KeyPath = swift_getKeyPath();
    v32 = sub_275796FA0();
    LOBYTE(v129[0]) = 1;
    *&v122[0] = v24;
    *(&v122[0] + 1) = v26;
    LOBYTE(v122[1]) = v28 & 1;
    *(&v122[1] + 1) = v30;
    *&v123 = KeyPath;
    BYTE8(v123) = 1;
    LOBYTE(v124[0]) = v32;
    *(v124 + 8) = 0u;
    *(&v124[1] + 8) = 0u;
    BYTE8(v124[2]) = 1;
    *&v140[23] = v122[1];
    *&v140[7] = v122[0];
    *&v140[80] = *(&v124[1] + 9);
    *&v140[71] = v124[1];
    *&v140[55] = v124[0];
    *&v140[39] = v123;
    v128[0] = 1;
    *v125 = v24;
    *&v125[8] = v26;
    v125[16] = v28 & 1;
    *&v125[24] = v30;
    *&v125[32] = KeyPath;
    v125[40] = 1;
    v125[48] = v32;
    memset(&v125[56], 0, 32);
    v125[88] = 1;
    sub_2756C9074(v122, &v130, &qword_2809FFB20);
    sub_2756C92B4(v125, &qword_2809FFB20);
    *(&v129[2] + 9) = *&v140[32];
    *(&v129[3] + 9) = *&v140[48];
    *(&v129[4] + 9) = *&v140[64];
    *(&v129[5] + 9) = *&v140[80];
    *(v129 + 9) = *v140;
    *(&v129[1] + 9) = *&v140[16];
    *(&v131[2] + 1) = *&v140[16];
    *(v131 + 1) = *v140;
    *&v129[0] = 0;
    BYTE8(v129[0]) = 1;
    *&v129[7] = 0;
    BYTE8(v129[7]) = 1;
    v130 = 0;
    LOBYTE(v131[0]) = 1;
    *(&v131[10] + 1) = *&v140[80];
    *(&v131[8] + 1) = *&v140[64];
    *(&v131[6] + 1) = *&v140[48];
    *(&v131[4] + 1) = *&v140[32];
    v131[13] = 0;
    v132 = 1;
    sub_2756C9074(v129, v125, &qword_2809FFAE8);
    sub_2756C92B4(&v130, &qword_2809FFAE8);
    *(&v126[4] + 7) = v129[4];
    *(&v126[5] + 7) = v129[5];
    *(&v126[6] + 7) = v129[6];
    v126[7] = *(&v129[6] + 9);
    *(v126 + 7) = v129[0];
    *(&v126[1] + 7) = v129[1];
    *(&v126[2] + 7) = v129[2];
    *(&v126[3] + 7) = v129[3];
    LOBYTE(v24) = v127;
    sub_275797820();
    sub_275796A70();
    *&v128[55] = v136;
    *&v128[71] = v137;
    *&v128[87] = v138;
    *&v128[103] = v139;
    *&v128[7] = v133;
    *&v128[23] = v134;
    *&v128[39] = v135;
    *v125 = v121;
    *&v125[8] = 0;
    v125[16] = v24;
    *&v125[81] = v126[4];
    *&v125[97] = v126[5];
    *&v125[113] = v126[6];
    *&v125[129] = v126[7];
    *&v125[17] = v126[0];
    *&v125[33] = v126[1];
    *&v125[49] = v126[2];
    *&v125[65] = v126[3];
    *&v125[193] = *&v128[48];
    *&v125[177] = *&v128[32];
    *&v125[161] = *&v128[16];
    *&v125[145] = *v128;
    *&v125[256] = *(&v139 + 1);
    *&v125[241] = *&v128[96];
    *&v125[225] = *&v128[80];
    *&v125[209] = *&v128[64];
    memcpy(v112, v125, 0x108uLL);
    swift_storeEnumTagMultiPayload();
    sub_2756C9074(v125, v122, &qword_2809FFB00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB00);
    sub_2757677FC();
    sub_275778AB4();
    v33 = v114;
    sub_275796D80();
    sub_2756C9074(v33, v23, &qword_2809FFC80);
    swift_storeEnumTagMultiPayload();
    sub_275778A28();
    sub_275756720();
    sub_275796D80();
    sub_2756C92B4(v125, &qword_2809FFB00);
    v34 = v33;
    v35 = &qword_2809FFC80;
  }

  else
  {
    if (sub_27577603C() & 1) != 0 || (sub_275795F50() & 1) != 0 || (sub_275795EC0())
    {
      v101 = v19;
      v36 = sub_275795E70();
      v37 = v1;
      if (v36)
      {
        v38 = v36;
        v39 = [v36 genericErrorMessage];

        sub_275797F50();
      }

      sub_275795ED0();
      sub_275775908(&qword_2809FE9B8, MEMORY[0x277D7F228]);
      v117 = v37;
      sub_275796900();
      swift_getKeyPath();
      sub_275796910();

      v100 = &v94;
      v130 = *&v122[0];
      *v131 = *(v122 + 8);
      MEMORY[0x28223BE20](v40);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFCF0);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFCF8);
      v97 = sub_2756CFA44(&qword_2809FFD00, &qword_2809FFCF0);
      v96 = sub_2756CFA44(&qword_2809FFD08, &qword_2809FFCF0);
      v95 = sub_2756CFA44(&qword_2809FFD10, &qword_2809FFCF0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD18);
      v42 = sub_2756C557C(255, &qword_2809FE560);
      v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD20);
      v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD28);
      v45 = sub_2757969F0();
      v46 = sub_2756CFA44(&qword_2809FFD30, &qword_2809FFD28);
      v47 = sub_275775908(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
      *v125 = v44;
      *&v125[8] = v45;
      *&v125[16] = v46;
      *&v125[24] = v47;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v49 = sub_275778E30();
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD38);
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD40);
      v52 = sub_275778E98();
      *v125 = &type metadata for ManageStorageDrilldownView;
      *&v125[8] = v52;
      v53 = swift_getOpaqueTypeConformance2();
      *v125 = v51;
      *&v125[8] = v53;
      v54 = swift_getOpaqueTypeConformance2();
      *v125 = v50;
      *&v125[8] = v54;
      v55 = swift_getOpaqueTypeConformance2();
      *v125 = v41;
      *&v125[8] = v42;
      *&v125[16] = v43;
      *&v125[24] = OpaqueTypeConformance2;
      *&v125[32] = v49;
      *&v125[40] = v55;
      swift_getOpaqueTypeConformance2();
      sub_2757969A0();

      v56 = v117 + *(v121 + 28);
      v57 = *v56;
      v58 = *(v56 + 8);
      LODWORD(v49) = *(v56 + 16);
      v59 = type metadata accessor for ManageStorageModel(0);
      sub_275775908(&qword_2809FFC58, type metadata accessor for ManageStorageModel);
      v98 = v58;
      v99 = v57;
      LODWORD(v97) = v49;
      v100 = v59;
      v60 = sub_275796740();
      v61 = (*((*MEMORY[0x277D85000] & *v60) + 0xC8))();
      v63 = v62;
      v96 = v62;

      *&v122[0] = v61;
      *(&v122[0] + 1) = v63;
      v64 = sub_275796750();
      swift_getKeyPath();
      sub_275796910();

      v95 = &v94;
      v66 = MEMORY[0x28223BE20](v65);
      MEMORY[0x28223BE20](v66);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFCB8);
      sub_2756CFA44(&qword_2809FFCC0, &qword_2809FFC60);
      sub_2756DC79C();
      sub_275778D74();
      v67 = v103;
      v68 = v110;
      v69 = v120;
      sub_275797350();

      (*(v102 + 8))(v69, v67);
      v70 = sub_275796740();
      v71 = swift_getKeyPath();
      v72 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFCB0) + 36));
      *v72 = v71;
      v72[1] = v70;
      v73 = v117;
      v74 = v104;
      sub_2757798AC(v104);
      v75 = swift_getKeyPath();
      v76 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFCA0) + 36));
      v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFCE8) + 28);
      v78 = v105;
      v79 = v74;
      v80 = v106;
      (*(v105 + 32))(v76 + v77, v79, v106);
      (*(v78 + 56))(v76 + v77, 0, 1, v80);
      *v76 = v75;
      v81 = v109;
      sub_27577A0B4(v73, v109, type metadata accessor for ManageStorageView);
      v82 = (*(v107 + 80) + 16) & ~*(v107 + 80);
      v83 = swift_allocObject();
      sub_27577A11C(v81, v83 + v82, type metadata accessor for ManageStorageView);
      v84 = v112;
      v85 = (v68 + *(v113 + 36));
      *v85 = 0;
      v85[1] = 0;
      v85[2] = sub_275779B48;
      v85[3] = v83;
      v86 = &qword_2809FFC68;
      sub_2756C9074(v68, v84, &qword_2809FFC68);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFB00);
      sub_2757677FC();
      sub_275778AB4();
      v87 = v114;
      sub_275796D80();
      sub_2756C9074(v87, v101, &qword_2809FFC80);
      swift_storeEnumTagMultiPayload();
      sub_275778A28();
      sub_275756720();
      sub_275796D80();
      sub_2756C92B4(v87, &qword_2809FFC80);
      v34 = v68;
    }

    else
    {
      *v5 = sub_275796C80();
      *(v5 + 1) = 0;
      v5[16] = 1;
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA60);
      sub_275778604(&v5[*(v89 + 44)]);
      sub_275797820();
      sub_275796A70();
      sub_2756D8BC4(v5, v9, &qword_2809FE9F8);
      v90 = &v9[*(v6 + 36)];
      v91 = *&v125[80];
      *(v90 + 4) = *&v125[64];
      *(v90 + 5) = v91;
      *(v90 + 6) = *&v125[96];
      v92 = *&v125[16];
      *v90 = *v125;
      *(v90 + 1) = v92;
      v93 = *&v125[48];
      *(v90 + 2) = *&v125[32];
      *(v90 + 3) = v93;
      v86 = &qword_2809FF670;
      sub_2756D8BC4(v9, v11, &qword_2809FF670);
      sub_2756C9074(v11, v19, &qword_2809FF670);
      swift_storeEnumTagMultiPayload();
      sub_275778A28();
      sub_275756720();
      sub_275796D80();
      v34 = v11;
    }

    v35 = v86;
  }

  return sub_2756C92B4(v34, v35);
}

uint64_t sub_275777484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275795E80();
  *a1 = result;
  return result;
}

uint64_t sub_2757774DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v32 = a1;
  v41 = a4;
  v5 = type metadata accessor for ManageStorageView();
  v36 = *(v5 - 8);
  v35 = *(v36 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2757969F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD28);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD18);
  v16 = *(v15 - 8);
  v39 = v15;
  v40 = v16;
  MEMORY[0x28223BE20](v15);
  v33 = &v32 - v17;
  v42 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDA0);
  sub_2756CFA44(&qword_2809FFDA8, &qword_2809FFDA0);
  sub_275797040();
  sub_275797850();
  v18 = sub_2756CFA44(&qword_2809FFD30, &qword_2809FFD28);
  v19 = sub_275775908(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
  sub_2757973C0();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  sub_2756C557C(0, &qword_2809FE560);
  v20 = v34;
  sub_27577A0B4(v32, v34, type metadata accessor for ManageStorageView);
  v21 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v22 = swift_allocObject();
  v23 = v38;
  *(v22 + 16) = v37;
  *(v22 + 24) = v23;
  sub_27577A11C(v20, v22 + v21, type metadata accessor for ManageStorageView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD20);
  v43 = v11;
  v44 = v7;
  v45 = v18;
  v46 = v19;
  swift_getOpaqueTypeConformance2();
  sub_275778E30();
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD38);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD40);
  v26 = sub_275778E98();
  v43 = &type metadata for ManageStorageDrilldownView;
  v44 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v25;
  v44 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v43 = v24;
  v44 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v39;
  v30 = v33;
  sub_2757972E0();

  return (*(v40 + 8))(v30, v29);
}

void sub_275777A44(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDC0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v46 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDC8);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v45 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v50 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - v11;
  v13 = *(a1 + 8);
  v14 = sub_275795F50();
  v44 = v13;
  if (v14)
  {
    v15 = 0;
    v51 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {

    v15 = sub_27571547C();
    v51 = v19;
    v20 = sub_275795F30();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 manageStoragePage];

      v23 = [v22 tips];
      sub_2756C557C(0, &qword_2809FE4C8);
      v24 = sub_2757980E0();

      v16 = sub_2757015E4(v24);
      v17 = v25;
      v18 = v26;
    }

    else
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    sub_27577A284(v16);
    sub_27577A2C4(v16);
    sub_27577A2C4(v16);

    sub_27577A284(v16);
  }

  if (sub_275795EC0())
  {
    (*(v48 + 56))(v12, 1, 1, v49);
  }

  else
  {

    v28 = sub_275714758(v27);
    v42 = v4;
    v52 = v28;
    v53 = v29;
    v30 = sub_27577A304();
    v43 = v15;
    v31 = v12;
    v32 = a2;
    v33 = v30;
    v34 = v46;
    View.storageAppsModel(_:)();

    v52 = &type metadata for ManageStorageAppsView;
    v53 = v33;
    a2 = v32;
    v12 = v31;
    v15 = v43;
    swift_getOpaqueTypeConformance2();
    v35 = v45;
    v36 = v42;
    View.storageSummaryModel(_:)();
    (*(v47 + 8))(v34, v36);
    v38 = v48;
    v37 = v49;
    (*(v48 + 32))(v12, v35, v49);
    (*(v38 + 56))(v12, 0, 1, v37);
  }

  v39 = v50;
  sub_2756C9074(v12, v50, &qword_2809FFDD0);
  v40 = v51;
  *a2 = v15;
  a2[1] = v40;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v18;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDE0);
  sub_2756C9074(v39, a2 + *(v41 + 48), &qword_2809FFDD0);
  sub_27577A358(v15, v40, v16);
  sub_27577A3B4(v15, v40, v16);
  sub_2756C92B4(v12, &qword_2809FFDD0);
  sub_2756C92B4(v39, &qword_2809FFDD0);
  sub_27577A3B4(v15, v40, v16);
}

uint64_t sub_275777F60@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[0] = a4;
  v21[1] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD38);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v21 - v14;
  v16 = *a1;

  sub_27574FEEC(v16, a2, a3, v26);
  v32 = *(&v27 + 1);
  v33 = v28;
  v30 = *&v26[24];
  v31 = v27;
  v29 = *&v26[8];
  v17 = *v26;
  v22 = *v26;
  v23 = *&v26[16];
  v24 = v27;
  v25 = v28;
  v18 = sub_275778E98();
  sub_275797310();

  sub_2756C92B4(&v29, &qword_2809FDE88);
  sub_2756C92B4(&v30, &qword_2809FFDB0);
  sub_2756C92B4(&v32, &qword_2809FFDB8);
  *&v22 = &type metadata for ManageStorageDrilldownView;
  *(&v22 + 1) = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.storageAppsModel(_:)();
  (*(v9 + 8))(v11, v8);
  *&v22 = v8;
  *(&v22 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  View.storageSummaryModel(_:)();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_275778258(uint64_t a1)
{
  v2 = type metadata accessor for ManageStorageAlertButton(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FED40);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = *(a1 + 24);
  v12[0] = *(a1 + 16);
  v12[1] = v7;
  sub_2756C9074(a1 + *(v3 + 32), v12 - v8, &qword_2809FED40);
  sub_27577A0B4(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ManageStorageAlertButton);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_27577A11C(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ManageStorageAlertButton);
  sub_2756DC79C();

  return sub_275797640();
}

uint64_t View.manageStorageModel(_:)(void *a1)
{
  swift_getKeyPath();
  v2 = a1;
  sub_2757971B0();
}

uint64_t View.sheetDismiss(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  swift_getKeyPath();
  v5 = sub_2757967F0();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a1, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_2757971B0();

  return sub_2756C92B4(v4, &qword_2809FEB80);
}

uint64_t sub_275778604@<X0>(void *a1@<X8>)
{
  v27 = a1;
  v1 = sub_275796EB0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDCA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA68);
  MEMORY[0x28223BE20](v26);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA70);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  sub_2757967B0();
  sub_275796EA0();
  sub_2756CFA44(&qword_2809FDCD8, &qword_2809FDCA0);
  sub_275775908(&qword_2809FEA78, MEMORY[0x277CDE330]);
  sub_275797180();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  v17 = &v10[*(v26 + 36)];
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE280) + 28);
  v19 = *MEMORY[0x277CDF438];
  v20 = sub_275796720();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  sub_27571428C();
  sub_275797300();
  sub_2756C92B4(v10, &qword_2809FEA68);
  sub_2756C9074(v16, v14, &qword_2809FEA70);
  v21 = v27;
  *v27 = 0;
  *(v21 + 8) = 1;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEA88);
  sub_2756C9074(v14, v22 + *(v23 + 48), &qword_2809FEA70);
  v24 = v22 + *(v23 + 64);
  *v24 = 0;
  *(v24 + 8) = 1;
  sub_2756C92B4(v16, &qword_2809FEA70);
  return sub_2756C92B4(v14, &qword_2809FEA70);
}

unint64_t sub_275778A28()
{
  result = qword_2809FFC88;
  if (!qword_2809FFC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFC80);
    sub_2757677FC();
    sub_275778AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC88);
  }

  return result;
}

unint64_t sub_275778AB4()
{
  result = qword_2809FFC90;
  if (!qword_2809FFC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFC68);
    sub_275778B40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC90);
  }

  return result;
}

unint64_t sub_275778B40()
{
  result = qword_2809FFC98;
  if (!qword_2809FFC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFCA0);
    sub_275778BF8();
    sub_2756CFA44(&qword_2809FFCE0, &qword_2809FFCE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFC98);
  }

  return result;
}

unint64_t sub_275778BF8()
{
  result = qword_2809FFCA8;
  if (!qword_2809FFCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFCB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFC60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFCB8);
    sub_2756CFA44(&qword_2809FFCC0, &qword_2809FFC60);
    sub_2756DC79C();
    sub_275778D74();
    swift_getOpaqueTypeConformance2();
    sub_2756CFA44(&qword_2809FFCD0, &qword_2809FFCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFCA8);
  }

  return result;
}

unint64_t sub_275778D74()
{
  result = qword_2809FFCC8;
  if (!qword_2809FFCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFCB8);
    sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFCC8);
  }

  return result;
}

unint64_t sub_275778E30()
{
  result = qword_2809FEAB0;
  if (!qword_2809FEAB0)
  {
    sub_2756C557C(255, &qword_2809FE560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FEAB0);
  }

  return result;
}

unint64_t sub_275778E98()
{
  result = qword_2809FFD48;
  if (!qword_2809FFD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFD48);
  }

  return result;
}

uint64_t sub_275778EEC()
{
  type metadata accessor for ManageStorageView();
  type metadata accessor for ManageStorageModel(0);
  sub_275775908(&qword_2809FFC58, type metadata accessor for ManageStorageModel);
  v0 = sub_275796740();
  (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FECC0);
  sub_2756CFA44(&qword_2809FFD90, &qword_2809FFD88);
  sub_2756CFA44(&qword_2809FECE0, &qword_2809FECC0);
  sub_275775908(&qword_2809FFD98, type metadata accessor for ManageStorageAlertButton);
  return sub_2757977B0();
}

uint64_t sub_2757790F0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ManageStorageView();
  type metadata accessor for ManageStorageModel(0);
  sub_275775908(&qword_2809FFC58, type metadata accessor for ManageStorageModel);
  v2 = sub_275796740();
  (*((*MEMORY[0x277D85000] & *v2) + 0xF8))();

  sub_2756DC79C();
  result = sub_2757970D0();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_275779210()
{
  sub_275779BA8();

  return sub_275796C40();
}

uint64_t sub_275779258(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2756C9074(a1, &v5 - v3, &qword_2809FEB80);
  sub_275779BA8();
  sub_275796C50();
  return sub_2756C92B4(a1, &qword_2809FEB80);
}

uint64_t sub_275779320()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  __swift_allocate_value_buffer(v0, qword_280A0C968);
  v1 = __swift_project_value_buffer(v0, qword_280A0C968);
  v2 = sub_2757967F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_2757793C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_280A0C960 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  v3 = __swift_project_value_buffer(v2, qword_280A0C968);
  return sub_2756C9074(v3, a1, &qword_2809FEB80);
}

uint64_t sub_275779450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2757277B4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*sub_2757794B4(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_275779BA8();
  sub_275796C40();
  return sub_2757795CC;
}

void sub_2757795CC(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_2756C9074((*a1)[3], (*a1)[2], &qword_2809FEB80);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_2756C9074(v3[2], v3[1], &qword_2809FEB80);
    sub_275796C50();
    sub_2756C92B4(v6, &qword_2809FEB80);
  }

  else
  {
    sub_275796C50();
  }

  sub_2756C92B4(v4, &qword_2809FEB80);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t sub_2757796DC()
{
  sub_275779BFC();
  sub_275796C40();
  return v1;
}

uint64_t sub_275779754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_27574AAC4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*sub_2757797B8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_275779BFC();
  sub_275796C40();
  return sub_275779818;
}

void sub_275779818(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_275796C50();
    v5 = *a1;
  }

  else
  {
    sub_275796C50();
  }
}

uint64_t sub_2757798AC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_275796C30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC50);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  sub_2756C9074(v2, &v17 - v9, &qword_2809FFC50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2757967F0();
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
      *(v15 + 4) = sub_27562792C(0x417373696D736944, 0xED00006E6F697463, &v18);
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

void sub_275779B38(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_275779BA8()
{
  result = qword_280A0C9A8;
  if (!qword_280A0C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0C9A8);
  }

  return result;
}

unint64_t sub_275779BFC()
{
  result = qword_280A0C9B0[0];
  if (!qword_280A0C9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0C9B0);
  }

  return result;
}

void sub_275779C94()
{
  sub_275779D48();
  if (v0 <= 0x3F)
  {
    sub_275779DDC();
    if (v1 <= 0x3F)
    {
      sub_275779E70();
      if (v2 <= 0x3F)
      {
        sub_275779EC8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_275779D48()
{
  if (!qword_2809FFD58)
  {
    sub_275795F60();
    sub_275775908(&qword_2809FE4A8, MEMORY[0x277D7F250]);
    v0 = sub_275796920();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFD58);
    }
  }
}

void sub_275779DDC()
{
  if (!qword_2809FFD60)
  {
    sub_275795ED0();
    sub_275775908(&qword_2809FE9B8, MEMORY[0x277D7F228]);
    v0 = sub_275796920();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFD60);
    }
  }
}

void sub_275779E70()
{
  if (!qword_2809FFD68)
  {
    sub_2757967F0();
    v0 = sub_275796730();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFD68);
    }
  }
}

void sub_275779EC8()
{
  if (!qword_2809FFD70)
  {
    type metadata accessor for ManageStorageModel(255);
    sub_275775908(&qword_2809FFC58, type metadata accessor for ManageStorageModel);
    v0 = sub_275796760();
    if (!v1)
    {
      atomic_store(v0, &qword_2809FFD70);
    }
  }
}

unint64_t sub_275779F5C()
{
  result = qword_2809FFD78;
  if (!qword_2809FFD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFD80);
    sub_275778A28();
    sub_275756720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFD78);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA13DismissActionVSgGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_275796990();
  sub_2756CFA44(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_27577A0B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27577A11C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_27577A184()
{
  v1 = type metadata accessor for ManageStorageAlertButton(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_27577A200@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ManageStorageView() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_275777F60(a1, v6, v7, v8, a2);
}

uint64_t sub_27577A284(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27577A2C4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_27577A304()
{
  result = qword_2809FFDD8;
  if (!qword_2809FFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFDD8);
  }

  return result;
}

void sub_27577A358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_27577A284(a3);
  }
}

void sub_27577A3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_27577A2C4(a3);
  }
}

uint64_t sub_27577A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[43] = a7;
  v8[44] = a8;
  v8[41] = a4;
  v8[42] = a6;
  v8[39] = a2;
  v8[40] = a3;
  v8[38] = a1;
  v9 = sub_275796280();
  v8[45] = v9;
  v8[46] = *(v9 - 8);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v10 = sub_275797AB0();
  v8[50] = v10;
  v8[51] = *(v10 - 8);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC18);
  v8[54] = swift_task_alloc();
  v11 = sub_275797B30();
  v8[55] = v11;
  v8[56] = *(v11 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v12 = sub_275797B80();
  v8[59] = v12;
  v8[60] = *(v12 - 8);
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  sub_275797BC0();
  v8[63] = swift_task_alloc();
  v13 = sub_275797AA0();
  v8[64] = v13;
  v8[65] = *(v13 - 8);
  v8[66] = swift_task_alloc();
  v8[67] = swift_task_alloc();
  v14 = sub_2757979B0();
  v8[68] = v14;
  v8[69] = *(v14 - 8);
  v8[70] = swift_task_alloc();
  v15 = sub_2757979D0();
  v8[71] = v15;
  v8[72] = *(v15 - 8);
  v8[73] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27577A7C4, 0, 0);
}

uint64_t sub_27577A7C4()
{
  v1 = sub_27575DC08(*(v0 + 344));
  v3 = v2;
  *(v0 + 592) = v1;
  *(v0 + 600) = v2;
  v4 = swift_task_alloc();
  *(v0 + 608) = v4;
  *v4 = v0;
  v4[1] = sub_27577A878;

  return sub_27575DC4C(v1, v3);
}

uint64_t sub_27577A878(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {
    v4 = sub_27577BC70;
  }

  else
  {
    v4 = sub_27577A990;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_27577A990(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 616);
  v6 = *(v3 + 64);
  v5 = v3 + 64;
  v4 = v6;
  v69 = *(v1 + 616);
  v7 = -1;
  v8 = -1 << *(v69 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & v4;
  v10 = (63 - v8) >> 6;
  v11 = MEMORY[0x277D84F98];
  if ((v7 & v4) == 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v2;
LABEL_14:
    v17 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v69 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_275627B04(*(v69 + 56) + 32 * v18, v1 + 152);
    *(v1 + 64) = v21;
    *(v1 + 72) = v20;
    sub_2756D5AA8((v1 + 152), (v1 + 80));

    v16 = v14;
LABEL_15:
    v22 = *(v1 + 80);
    *(v1 + 16) = *(v1 + 64);
    *(v1 + 32) = v22;
    *(v1 + 48) = *(v1 + 96);
    v23 = *(v1 + 24);
    if (!v23)
    {
      break;
    }

    v24 = *(v1 + 16);
    sub_2756D5AA8((v1 + 32), (v1 + 248));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a1 = sub_2756F72B4(v24, v23);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_39;
    }

    v31 = v26;
    if (v11[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v36 = a1;
      sub_27570A78C();
      a1 = v36;
      if ((v31 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v12 = a1;

      v13 = (v11[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_0(v13);
      a1 = sub_2756D5AA8((v1 + 248), v13);
      v2 = v16;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_27570A2B0(v30, isUniquelyReferenced_nonNull_native);
      a1 = sub_2756F72B4(v24, v23);
      if ((v31 & 1) != (v32 & 1))
      {

        return sub_2757989D0();
      }

LABEL_21:
      if (v31)
      {
        goto LABEL_5;
      }

LABEL_22:
      v11[(a1 >> 6) + 8] |= 1 << a1;
      v33 = (v11[6] + 16 * a1);
      *v33 = v24;
      v33[1] = v23;
      a1 = sub_2756D5AA8((v1 + 248), (v11[7] + 32 * a1));
      v34 = v11[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_40;
      }

      v11[2] = v35;
      v2 = v16;
      if (!v9)
      {
LABEL_7:
        if (v10 <= v2 + 1)
        {
          v15 = v2 + 1;
        }

        else
        {
          v15 = v10;
        }

        v16 = v15 - 1;
        while (1)
        {
          v14 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v14 >= v10)
          {
            v9 = 0;
            *(v1 + 80) = 0u;
            *(v1 + 96) = 0u;
            *(v1 + 64) = 0u;
            goto LABEL_15;
          }

          v9 = *(v5 + 8 * v14);
          ++v2;
          if (v9)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return MEMORY[0x282180668](a1);
      }
    }
  }

  v37 = *(v1 + 576);
  v38 = *(v1 + 560);
  v39 = *(v1 + 552);
  v62 = *(v1 + 584);
  v63 = *(v1 + 544);
  v64 = *(v1 + 568);
  v67 = *(v1 + 352);
  v41 = *(v1 + 320);
  v40 = *(v1 + 328);
  v43 = *(v1 + 304);
  v42 = *(v1 + 312);

  *(v1 + 208) = MEMORY[0x277D837D0];
  *(v1 + 184) = v41;
  *(v1 + 192) = v40;
  sub_2756D5AA8((v1 + 184), (v1 + 216));

  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_27570A568((v1 + 216), 0x79546E6F69746361, 0xEA00000000006570, v44);
  v45 = MEMORY[0x277D84F90];
  sub_27577C58C(MEMORY[0x277D84F90], &qword_2809FFE18, &unk_2757ADD10, &qword_2809FFE20);
  sub_27577C58C(v45, &qword_2809FFDF8, &unk_2757ADD00, &qword_2809FFE00);
  sub_2757979A0();
  MEMORY[0x277C7FAB0](v43, v42, 0x6E6F74747562, 0xE600000000000000, v11, v38);

  (*(v39 + 8))(v38, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDE8);
  v46 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2757A8B60;
  (*(v37 + 16))(v47 + v46, v62, v64);
  sub_275797BB0();
  sub_275797A90();
  *(swift_task_alloc() + 16) = v67;
  sub_275797B50();

  v48 = sub_275751CBC();
  swift_beginAccess();
  v49 = *v48;
  *(v1 + 632) = v49;
  if (v49)
  {

    v50 = swift_task_alloc();
    *(v1 + 640) = v50;
    *v50 = v1;
    v50[1] = sub_27577B0B0;
    a1 = *(v1 + 432);

    return MEMORY[0x282180668](a1);
  }

  v52 = *(v1 + 600);
  v53 = *(v1 + 576);
  v65 = *(v1 + 536);
  v66 = *(v1 + 568);
  v54 = *(v1 + 520);
  v55 = *(v1 + 512);
  v56 = *(v1 + 496);
  v58 = *(v1 + 472);
  v57 = *(v1 + 480);
  v59 = *(v1 + 448);
  v68 = *(v1 + 440);
  v70 = *(v1 + 584);
  v60 = *(v1 + 432);

  (*(v57 + 8))(v56, v58);
  (*(v54 + 8))(v65, v55);
  (*(v53 + 8))(v70, v66);
  (*(v59 + 56))(v60, 1, 1, v68);
  sub_27577C774(v60);

  v61 = *(v1 + 8);

  return v61();
}

uint64_t sub_27577B0B0()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_27577BDAC;
  }

  else
  {
    v2 = sub_27577B1E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27577B1E0()
{
  v15 = v0[65];
  v16 = v0[66];
  v17 = v0[64];
  v18 = v0[67];
  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[59];
  v4 = v0[60];
  v5 = v0[58];
  v14 = v0[57];
  v7 = v0[55];
  v6 = v0[56];
  v8 = v0[54];
  (*(v6 + 56))(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  sub_275797AE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFDF0);
  sub_275797930();
  *(swift_allocObject() + 16) = xmmword_2757A4FC0;
  (*(v4 + 16))(v2, v1, v3);
  sub_275797920();
  (*(v6 + 16))(v14, v5, v7);
  sub_275797920();
  v0[82] = sub_275797AD0();
  (*(v15 + 16))(v16, v18, v17);
  v9 = sub_275797950();
  v10 = MEMORY[0x277D21B60];
  v0[17] = v9;
  v0[18] = v10;
  __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  sub_275797940();
  swift_dynamicCastClassUnconditional();

  v0[83] = sub_275797B40();

  __swift_destroy_boxed_opaque_existential_0((v0 + 14));
  v11 = swift_task_alloc();
  v0[84] = v11;
  *v11 = v0;
  v11[1] = sub_27577B4E4;
  v12 = v0[53];

  return MEMORY[0x282180668](v12);
}

uint64_t sub_27577B4E4()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_27577BF54;
  }

  else
  {
    v2 = sub_27577B5F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27577B5F8()
{
  v1 = v0[52];
  v2 = v0[50];
  v3 = v0[51];
  (*(v3 + 16))(v1, v0[53], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277D21CA8])
  {
    v5 = v0[49];
    v6 = v0[45];
    v7 = v0[46];
    v8 = sub_275700E70();
    (*(v7 + 16))(v5, v8, v6);
    v9 = sub_275796270();
    v10 = sub_2757982E0();
    v11 = os_log_type_enabled(v9, v10);
    v48 = v0[75];
    v44 = v0[74];
    v12 = v0[72];
    v66 = v0[71];
    v68 = v0[73];
    v64 = v0[67];
    v13 = v0[65];
    v60 = v0[62];
    v62 = v0[64];
    v14 = v0[60];
    v56 = v0[58];
    v58 = v0[59];
    v15 = v0[56];
    v54 = v0[55];
    v16 = v0[51];
    v50 = v0[50];
    v51 = v0[53];
    v46 = v0[49];
    v17 = v0[46];
    v43 = v0[45];
    if (v11)
    {
      v42 = v0[72];
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ActionDispatcher.sendActionEvent: performed";
LABEL_7:
      _os_log_impl(&dword_275623000, v9, v10, v19, v18, 2u);
      MEMORY[0x277C81E50](v18, -1, -1);

      (*(v17 + 8))(v46, v43);
      (*(v16 + 8))(v51, v50);
      (*(v15 + 8))(v56, v54);
      (*(v14 + 8))(v60, v58);
      (*(v13 + 8))(v64, v62);
      (*(v42 + 8))(v68, v66);
      goto LABEL_12;
    }

LABEL_8:

    (*(v17 + 8))(v46, v43);
    (*(v16 + 8))(v51, v50);
    (*(v15 + 8))(v56, v54);
    (*(v14 + 8))(v60, v58);
    (*(v13 + 8))(v64, v62);
    (*(v12 + 8))(v68, v66);
    goto LABEL_12;
  }

  v20 = v4;
  v21 = v0[46];
  v22 = *MEMORY[0x277D21CA0];
  v23 = sub_275700E70();
  v24 = *(v21 + 16);
  v25 = v0[45];
  if (v20 == v22)
  {
    v24(v0[48], v23, v25);
    v9 = sub_275796270();
    v10 = sub_2757982E0();
    v26 = os_log_type_enabled(v9, v10);
    v48 = v0[75];
    v44 = v0[74];
    v12 = v0[72];
    v66 = v0[71];
    v68 = v0[73];
    v64 = v0[67];
    v13 = v0[65];
    v60 = v0[62];
    v62 = v0[64];
    v14 = v0[60];
    v56 = v0[58];
    v58 = v0[59];
    v15 = v0[56];
    v54 = v0[55];
    v16 = v0[51];
    v50 = v0[50];
    v51 = v0[53];
    v46 = v0[48];
    v17 = v0[46];
    v43 = v0[45];
    if (v26)
    {
      v42 = v0[72];
      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = "ActionDispatcher.sendActionEvent: unsupported";
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  v24(v0[47], v23, v25);
  v27 = sub_275796270();
  v28 = sub_2757982E0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_275623000, v27, v28, "ActionDispatcher.sendActionEvent: unknown", v29, 2u);
    MEMORY[0x277C81E50](v29, -1, -1);
  }

  v45 = v0[74];
  v47 = v0[75];
  v65 = v0[72];
  v67 = v0[71];
  v69 = v0[73];
  v30 = v0[65];
  v59 = v0[64];
  v61 = v0[67];
  v31 = v0[60];
  v55 = v0[59];
  v57 = v0[62];
  v32 = v27;
  v33 = v0[56];
  v52 = v0[55];
  v53 = v0[58];
  v49 = v0[53];
  v63 = v0[52];
  v35 = v0[50];
  v34 = v0[51];
  v36 = v0[46];
  v37 = v0[47];
  v38 = v0[45];

  (*(v36 + 8))(v37, v38);
  v39 = *(v34 + 8);
  v39(v49, v35);
  (*(v33 + 8))(v53, v52);
  (*(v31 + 8))(v57, v55);
  (*(v30 + 8))(v61, v59);
  (*(v65 + 8))(v69, v67);
  v39(v63, v35);
LABEL_12:

  v40 = v0[1];

  return v40();
}

uint64_t sub_27577BC70()
{
  v1 = *(v0 + 600);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_27577BDAC()
{
  v1 = *(v0 + 600);
  v12 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 536);
  v5 = *(v0 + 520);
  v6 = *(v0 + 512);
  v7 = *(v0 + 496);
  v9 = *(v0 + 472);
  v8 = *(v0 + 480);

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_27577BF54()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[72];
  v15 = v0[71];
  v16 = v0[73];
  v4 = v0[65];
  v13 = v0[64];
  v14 = v0[67];
  v5 = v0[60];
  v11 = v0[59];
  v12 = v0[62];
  v6 = v0[58];
  v8 = v0[55];
  v7 = v0[56];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);

  v9 = v0[1];

  return v9();
}

uint64_t sub_27577C12C()
{
  v0 = sub_275797D60();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  v4 = sub_275797B80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_275797D50();
  swift_getWitnessTable();
  sub_275797B70();
  (*(v1 + 8))(v3, v0);
  sub_275798960();
  swift_allocObject();
  sub_275798100();
  (*(v5 + 16))(v8, v7, v4);
  sub_275798140();
  sub_275797B60();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_27577C35C(uint64_t a1)
{
  sub_275797BA0();
  sub_27577C7DC(&qword_2809FFE08);
  v2 = sub_275797ED0();

  return sub_27577C3E0(a1, v2);
}

unint64_t sub_27577C3E0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_275797BA0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_27577C7DC(&qword_2809FFE10);
      v15 = sub_275797F00();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_27577C58C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4);
    v12 = sub_275798870();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_2756C9074(v14, v10, a2);
      result = sub_27577C35C(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = sub_275797BA0();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

uint64_t sub_27577C774(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFC18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27577C7DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_275797BA0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27577C8C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEA28);
  sub_275713F48();
  v19[0] = v3;
  v19[1] = v5;
  v19[2] = v4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v19);

  sub_2757972A0();

  v6 = OpaqueTypeMetadata2;
  v7 = OpaqueTypeConformance2;
  __swift_project_boxed_opaque_existential_1(v19, OpaqueTypeMetadata2);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FEBB0);
  sub_275717B58();
  v16[0] = v6;
  v16[1] = v8;
  v16[2] = v7;
  v17 = swift_getOpaqueTypeMetadata2();
  v18 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v16);

  sub_2757972A0();

  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  swift_getKeyPath();
  v11 = sub_2757967F0();
  sub_27577E4B0(&qword_2809FF068, MEMORY[0x277CDD848]);
  v13[0] = v9;
  v13[1] = v11;
  v13[2] = v10;
  v14 = swift_getOpaqueTypeMetadata2();
  v15 = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v13);

  sub_2757972A0();

  __swift_project_boxed_opaque_existential_1(v13, v14);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FF460);
  sub_27574AAC4();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);

  sub_2757972A0();

  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_27577CCC0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_2757978A0();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2757978C0();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2757967F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  sub_2756CB330();
  v12 = sub_275798340();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_27577E4F8;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2756C4584;
  aBlock[3] = &block_descriptor_27_0;
  v15 = _Block_copy(aBlock);

  sub_2757978B0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27577E4B0(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_27577D078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEB80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_2757967F0();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_dismissAction;
  swift_beginAccess();
  sub_275703F04(v6, a1 + v9, &qword_2809FEB80);
  return swift_endAccess();
}

uint64_t sub_27577D1BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DC7F0;

  return (sub_27577DDEC)(a1);
}

void sub_27577D268(uint64_t a1)
{
  v2 = sub_2757967F0();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_shouldDismiss;
  swift_beginAccess();
  if ((*(v9 + 48))(a1 + v12, 1, v8))
  {
    v13 = 0;
  }

  else
  {
    (*(v9 + 16))(v11, a1 + v12, v8);
    sub_275796390();
    (*(v9 + 8))(v11, v8);
    v13 = v27;
  }

  v14 = sub_275700E70();
  (*(v5 + 16))(v7, v14, v4);
  v15 = sub_275796270();
  v16 = sub_275798310();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_275623000, v15, v16, "Clear Apps Action, dismiss: %{BOOL}d", v17, 8u);
    MEMORY[0x277C81E50](v17, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  if (v13)
  {
    v18 = OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_dismissAction;
    swift_beginAccess();
    if (!(*(v26 + 48))(a1 + v18, 1, v2))
    {
      v19 = v26;
      v20 = a1 + v18;
      v21 = v25;
      (*(v26 + 16))(v25, v20, v2);
      sub_2757967E0();
      (*(v19 + 8))(v21, v2);
    }
  }

  swift_beginAccess();
  v22 = *(a1 + 32);
  if (v22)
  {
    v23 = *((*MEMORY[0x277D85000] & *v22) + 0x118);
    v24 = v22;
    v23(1);
  }
}

uint64_t sub_27577D6A0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27577D6F4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2757988A0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27577D74C(uint64_t a1)
{
  v2 = sub_27577E164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27577D788(uint64_t a1)
{
  v2 = sub_27577E164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27577D7C4(void *a1)
{
  v2 = swift_allocObject();
  sub_27577D814(a1);
  return v2;
}

void *sub_27577D814(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD850);
  MEMORY[0x28223BE20](v5 - 8);
  v20 = &v17 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFE28);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v10 = OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_dismissAction;
  v11 = sub_2757967F0();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_shouldDismiss;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD868);
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27577E164();
  sub_275798A80();
  if (v2)
  {
  }

  else
  {
    sub_2756CFA44(&qword_2809FD870, &qword_2809FD868);
    v14 = v20;
    v15 = v19;
    sub_2757988E0();
    (*(v18 + 8))(v9, v15);
    swift_beginAccess();
    sub_275703F04(v14, v3 + v12, &qword_2809FD850);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t sub_27577DB14()
{

  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_dismissAction, &qword_2809FEB80);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_shouldDismiss, &qword_2809FD850);
  return v0;
}

uint64_t sub_27577DB84()
{

  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_dismissAction, &qword_2809FEB80);
  sub_2756C92B4(v0 + OBJC_IVAR____TtC13iCloudQuotaUI27ClearStorageAppsModelAction_shouldDismiss, &qword_2809FD850);

  return swift_deallocClassInstance();
}

uint64_t sub_27577DC30(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2756DBB90;

  return (sub_27577DDEC)(a1);
}

void *sub_27577DD94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_27577D814(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_27577DDEC(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_2757978A0();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = sub_2757978C0();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27577DF08, 0, 0);
}

uint64_t sub_27577DF08()
{
  v1 = v0[16];
  v2 = v0[13];
  v12 = v0[15];
  v13 = v0[14];
  v3 = v0[11];
  v11 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  sub_2756CB330();
  v10 = sub_275798340();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v0[6] = sub_27577E490;
  v0[7] = v6;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2756F1D58;
  v0[5] = &block_descriptor_13;
  v7 = _Block_copy(v0 + 2);

  sub_2757978B0();
  v0[8] = MEMORY[0x277D84F90];
  sub_27577E4B0(&qword_2809FD6A8, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FEE70);
  sub_2756CFA44(&qword_2809FD6B0, &unk_2809FEE70);
  sub_2757985B0();
  MEMORY[0x277C80470](0, v1, v2, v7);
  _Block_release(v7);

  (*(v11 + 8))(v2, v3);
  (*(v12 + 8))(v1, v13);

  v8 = v0[1];

  return v8();
}

unint64_t sub_27577E164()
{
  result = qword_280A0CB90[0];
  if (!qword_280A0CB90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0CB90);
  }

  return result;
}

uint64_t type metadata accessor for ClearStorageAppsModelAction()
{
  result = qword_280A0CD20;
  if (!qword_280A0CD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27577E29C()
{
  sub_27574BE84();
  if (v0 <= 0x3F)
  {
    sub_27572938C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_27577E38C()
{
  result = qword_280A0CEB0[0];
  if (!qword_280A0CEB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0CEB0);
  }

  return result;
}

unint64_t sub_27577E3E4()
{
  result = qword_280A0CFC0;
  if (!qword_280A0CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0CFC0);
  }

  return result;
}

unint64_t sub_27577E43C()
{
  result = qword_280A0CFC8[0];
  if (!qword_280A0CFC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280A0CFC8);
  }

  return result;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27577E4B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27577E4F8()
{
  v1 = *(sub_2757967F0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_27577D078(v2, v3);
}

id sub_27577E564(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v4 = objc_opt_self();
  [v3 pointSize];
  v5 = [v4 systemFontOfSize_weight_];
  v6 = [v2 scaledFontForFont_];

  return v6;
}

uint64_t sub_27577E6B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_actionButtons;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_27577E770()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_closeButton;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27577E7C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_closeButton;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_27577E87C()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_offer;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27577E8D0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_offer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_27577E988()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_bannerSpecification;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27577E9DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_bannerSpecification;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_27577EB94()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_27577EBF4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  return result;
}

uint64_t sub_27577EC50(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

void (*sub_27577ECB4(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_27577ED4C;
}

void sub_27577ED4C(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *ICQBubbleBannerView.init(offer:bannerSpecification:)(void *a1, void *a2)
{
  v241 = sub_275796280();
  *&v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v239 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_275798480();
  v232 = *(v233 - 8);
  MEMORY[0x28223BE20](v233);
  v231 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_2757984C0();
  v245 = *(v246 - 8);
  v7 = MEMORY[0x28223BE20](v246);
  v9 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v230 - v10;
  *&v2[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_actionButtons] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_offer] = a1;
  *&v2[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_bannerSpecification] = a2;
  v12 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v13 = a1;
  v14 = a2;
  v15 = [v12 init];
  *&v2[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_titleLabel] = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v2[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_subTitleLabel] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  *&v2[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_closeButton] = v17;
  v18 = type metadata accessor for ICQBubbleBannerView();
  v264.receiver = v2;
  v264.super_class = v18;
  v19 = objc_msgSendSuper2(&v264, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v235 = v13;
  v20 = [v13 deviceInfo];
  v234 = v20;
  if (v20)
  {
    v21 = v20;
    v22 = [v20 key];
    v249 = sub_275797F50();
    v24 = v23;

    v25 = [v21 wordsToReplace];
    v26 = sub_275797EB0();

    v27 = sub_275780D70(v26);

    if (v27)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v249 = 0;
    v24 = 0xE000000000000000;
  }

  v27 = sub_27574152C(MEMORY[0x277D84F90]);

LABEL_6:
  v244 = v11;
  v247 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_titleLabel;
  v28 = *&v19[OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_titleLabel];
  v242 = v24;
  v29 = sub_275797F10();
  v30 = [v14 titleWithKey_];

  v251 = v14;
  v252 = v19;
  v238 = v9;
  if (v30)
  {
    v250 = v28;
    v31 = sub_275797F50();
    v33 = v32;

    v34 = v27 + 64;
    v35 = 1 << *(v27 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v27 + 64);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    if (v37)
    {
      while (1)
      {
        v40 = v39;
LABEL_15:
        v41 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v42 = (v40 << 10) | (16 * v41);
        v43 = (*(v27 + 48) + v42);
        v44 = *v43;
        v45 = v43[1];
        v46 = (*(v27 + 56) + v42);
        v47 = *v46;
        v48 = v46[1];
        aBlock = v31;
        v256 = v33;
        v262 = v44;
        v263 = v45;
        v253 = v47;
        v254 = v48;
        sub_2756DC79C();

        v31 = sub_275798580();
        v50 = v49;

        v33 = v50;
        if (!v37)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      if (v40 >= v38)
      {
        break;
      }

      v37 = *(v34 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
        goto LABEL_15;
      }
    }

    aBlock = v31;
    v256 = v33;
    sub_2756DC79C();
    sub_275798570();

    v51 = sub_275797F10();

    v19 = v252;
    v28 = v250;
  }

  else
  {
    v51 = 0;
  }

  [v28 setText_];

  v52 = v247;
  v53 = *&v19[v247];
  v54 = *MEMORY[0x277D76940];
  v55 = objc_allocWithZone(MEMORY[0x277D75520]);
  v56 = v53;
  v57 = [v55 initForTextStyle_];
  v58 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v59 = objc_opt_self();
  [v58 pointSize];
  v236 = v59;
  v60 = [v59 systemFontOfSize_weight_];
  v61 = [v57 scaledFontForFont_];

  [v56 setFont_];
  v62 = *&v19[v52];
  v63 = objc_opt_self();
  v64 = v62;
  v237 = v63;
  v65 = [v63 secondaryLabelColor];
  [v64 setTextColor_];

  [*&v19[v52] setNumberOfLines_];
  [*&v19[v52] setAdjustsFontForContentSizeCategory_];
  [*&v19[v52] setTranslatesAutoresizingMaskIntoConstraints_];
  v66 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v66 addSubview_];
  v67 = objc_opt_self();
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FEE50);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2757A92D0;
  v69 = [*&v19[v52] topAnchor];
  v70 = [v66 topAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v68 + 32) = v71;
  v72 = [*(v252 + v52) bottomAnchor];
  v73 = [v66 bottomAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v68 + 40) = v74;
  v75 = [*(v252 + v52) leadingAnchor];
  v76 = [v66 leadingAnchor];
  v77 = [v75 constraintEqualToAnchor_];

  *(v68 + 48) = v77;
  v78 = [*(v252 + v52) trailingAnchor];
  v243 = v66;
  v79 = [v66 trailingAnchor];
  v80 = [v78 constraintEqualToAnchor:v79 constant:-16.0];

  *(v68 + 56) = v80;
  v34 = v252;
  sub_2756C557C(0, &qword_2809FF058);
  v81 = sub_2757980D0();

  [v67 activateConstraints_];

  v250 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_subTitleLabel;
  v82 = *(v34 + OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_subTitleLabel);
  v37 = sub_275797F10();

  v83 = v251;
  v84 = [v251 messageWithKey_];

  if (v84)
  {
    v249 = v82;
    v85 = sub_275797F50();
    v87 = v86;

    v88 = 1 << *(v27 + 32);
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v90 = v89 & *(v27 + 64);
    v33 = (v88 + 63) >> 6;

    v91 = 0;
    if (v90)
    {
      while (1)
      {
        v92 = v91;
LABEL_28:
        v93 = __clz(__rbit64(v90));
        v90 &= v90 - 1;
        v94 = (v92 << 10) | (16 * v93);
        v95 = (*(v27 + 48) + v94);
        v96 = *v95;
        v37 = v95[1];
        v97 = (*(v27 + 56) + v94);
        v98 = *v97;
        v99 = v97[1];
        aBlock = v85;
        v256 = v87;
        v262 = v96;
        v263 = v37;
        v253 = v98;
        v254 = v99;
        sub_2756DC79C();

        v85 = sub_275798580();
        v101 = v100;

        v87 = v101;
        v34 = v252;
        if (!v90)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v92 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        goto LABEL_70;
      }

      if (v92 >= v33)
      {
        break;
      }

      v90 = *(v27 + 64 + 8 * v92);
      ++v91;
      if (v90)
      {
        v91 = v92;
        goto LABEL_28;
      }
    }

    v102 = sub_275797F10();
    v83 = v251;
    v82 = v249;
  }

  else
  {
    v102 = 0;
  }

  [v82 setText_];

  v103 = v250;
  [*(v34 + v250) setNumberOfLines_];
  v104 = *MEMORY[0x277D769D0];
  v105 = *(v34 + v103);
  v106 = [v236 preferredFontForTextStyle_];
  [v105 setFont_];

  v107 = *(v34 + v103);
  v108 = v237;
  v109 = [v237 labelColor];
  [v107 setTextColor_];

  [*(v34 + v103) setAdjustsFontForContentSizeCategory_];
  v110 = v244;
  sub_2757984A0();
  v111 = [objc_opt_self() isSolariumFeatureFlagEnabled];
  v112 = v238;
  if (v111)
  {
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_2757AAEA0;
    v114 = [v108 secondaryLabelColor];
    v115 = [v114 colorWithAlphaComponent_];

    *(v113 + 32) = v115;
    *(v113 + 40) = [v108 tertiarySystemFillColor];
    sub_2756C557C(0, &qword_2809FFEA0);
    v116 = sub_2757980D0();

    v117 = [objc_opt_self() configurationWithPaletteColors_];

    v118 = v117;
    v119 = sub_275797F10();
    v120 = [objc_opt_self() systemImageNamed:v119 withConfiguration:v118];

    sub_275798490();
    (*(v232 + 104))(v231, *MEMORY[0x277D75018], v233);
    sub_275798400();
  }

  else
  {
    v121 = [objc_opt_self() configurationWithPointSize_];
    v122 = sub_275797F10();
    v123 = [objc_opt_self() systemImageNamed:v122 withConfiguration:v121];

    sub_275798490();
    v124 = [v108 tertiaryLabelColor];
    sub_275798460();
  }

  v125 = v241;
  v126 = v240;
  v127 = v239;
  sub_275798440();
  sub_2756C557C(0, &qword_2809FFE78);
  (*(v245 + 16))(v112, v110, v246);
  v128 = sub_2757984D0();
  v129 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_closeButton;
  swift_beginAccess();
  v130 = *&v129[v34];
  v237 = v129;
  *&v129[v34] = v128;

  v131 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v131 setContentMode_];
  v132 = [v83 iconSpecification];
  if (!v132)
  {
    goto LABEL_39;
  }

  v133 = v132;
  v134 = [v132 imageURL];
  if (!v134)
  {

LABEL_39:
    v140 = sub_275700E70();
    (*(v126 + 16))(v127, v140, v125);
    v141 = sub_275796270();
    v142 = sub_2757982F0();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 0;
      _os_log_impl(&dword_275623000, v141, v142, "No iconSpecification found on offer, falling back to default", v143, 2u);
      MEMORY[0x277C81E50](v143, -1, -1);
    }

    (*(v126 + 8))(v127, v125);
    goto LABEL_42;
  }

  v135 = v134;
  v136 = objc_opt_self();
  v137 = swift_allocObject();
  *(v137 + 16) = v131;
  v259 = sub_275782BD0;
  v260 = v137;
  aBlock = MEMORY[0x277D85DD0];
  v256 = 1107296256;
  v257 = sub_275781030;
  v258 = &block_descriptor_14;
  v138 = _Block_copy(&aBlock);
  v139 = v131;

  [v136 fetchIconFromImageURL:v135 completion:v138];
  _Block_release(v138);

LABEL_42:
  v144 = [v131 widthAnchor];
  v145 = [v144 constraintEqualToConstant_];

  v33 = &selRef_quotaBag;
  [v145 setActive_];

  v146 = [v131 heightAnchor];
  v147 = [v146 constraintEqualToConstant_];

  [v147 setActive_];
  v148 = [v83 links];
  v149 = sub_2756C557C(0, &qword_2809FFE80);
  v37 = sub_2757980E0();

  aBlock = MEMORY[0x277D84F90];
  v242 = v131;
  v241 = v149;
  if (v37 >> 62)
  {
    goto LABEL_75;
  }

  for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_275798640())
  {
    v151 = MEMORY[0x277D84F90];
    if (i)
    {
      v33 = 0;
      v34 = v37 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v37 & 0xC000000000000001) != 0)
        {
          v152 = MEMORY[0x277C80840](v33, v37);
        }

        else
        {
          if (v33 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v152 = *(v37 + 8 * v33 + 32);
        }

        v153 = v152;
        v154 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if ([v152 action] == 125)
        {
        }

        else
        {
          sub_275798780();
          sub_2757987B0();
          sub_2757987C0();
          sub_275798790();
        }

        ++v33;
        if (v154 == i)
        {
          v155 = aBlock;
          v34 = v252;
          v151 = MEMORY[0x277D84F90];
          goto LABEL_57;
        }
      }

LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v155 = MEMORY[0x277D84F90];
LABEL_57:

    if ((v155 & 0x8000000000000000) == 0 && (v155 & 0x4000000000000000) == 0)
    {
      v37 = *(v155 + 16);
      if (!v37)
      {
        break;
      }

      goto LABEL_60;
    }

    v37 = sub_275798640();
    if (!v37)
    {
      break;
    }

LABEL_60:
    aBlock = v151;
    sub_2757987A0();
    if ((v37 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_110;
    }

    v33 = 0;
    while (1)
    {
      v158 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if ((v155 & 0xC000000000000001) != 0)
      {
        v156 = MEMORY[0x277C80840](v33, v155);
      }

      else
      {
        if (v33 >= *(v155 + 16))
        {
          goto LABEL_74;
        }

        v156 = *(v155 + 8 * v33 + 32);
      }

      v157 = v156;
      v261 = v156;
      sub_27578109C(&v261, v34, &v253);

      sub_275798780();
      sub_2757987B0();
      sub_2757987C0();
      sub_275798790();
      ++v33;
      if (v158 == v37)
      {

        v159 = aBlock;
        goto LABEL_78;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  v159 = MEMORY[0x277D84F90];
LABEL_78:
  v160 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_actionButtons;
  swift_beginAccess();
  *(v34 + v160) = v159;

  v161 = swift_allocObject();
  *(v161 + 16) = xmmword_2757AAEA0;
  v155 = v243;
  *(v161 + 32) = v243;
  v33 = *(v34 + v250);
  *(v161 + 40) = v33;
  v249 = v161;
  v253 = v161;
  v162 = *(v34 + v160);
  v239 = v160;
  v240 = xmmword_2757AAEA0;
  if (v162)
  {
    if (!(v162 >> 62))
    {
      swift_bridgeObjectRetain_n();
      v163 = v155;
      v164 = v33;
      sub_275798990();
      sub_2756C557C(0, &qword_2809FFE88);
      v165 = v162;
LABEL_81:

      sub_275781A7C(v165);
      v249 = v253;
      goto LABEL_83;
    }

LABEL_110:
    sub_2756C557C(0, &qword_2809FFE88);
    v228 = v155;
    v229 = v33;

    v165 = sub_275798830();
    goto LABEL_81;
  }

  v166 = v155;
  v167 = v33;
LABEL_83:
  v168 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_2756C557C(0, &qword_2809FFE88);
  v169 = sub_2757980D0();
  v170 = [v168 initWithArrangedSubviews_];

  [v170 setAxis_];
  v171 = v170;
  [v171 setTranslatesAutoresizingMaskIntoConstraints_];
  [v171 setSpacing_];
  [v171 setDistribution_];
  v172 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v172 setAxis_];
  [v172 setTranslatesAutoresizingMaskIntoConstraints_];
  v238 = v172;
  [v172 setAlignment_];
  v173 = swift_allocObject();
  *(v173 + 16) = v240;
  *(v173 + 32) = v242;
  *(v173 + 40) = v171;
  v248 = v171;
  v174 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v175 = sub_2757980D0();

  v176 = [v174 initWithArrangedSubviews_];

  [v176 setAxis_];
  [v176 setSpacing_];
  [v176 setAlignment_];
  v177 = v176;
  [v177 setTranslatesAutoresizingMaskIntoConstraints_];
  v178 = v252;
  v179 = v252;
  [v179 addSubview_];
  v180 = [v177 topAnchor];
  v181 = [v179 topAnchor];
  v182 = [v180 constraintEqualToAnchor:v181 constant:16.0];

  [v182 setActive_];
  v183 = [v177 leadingAnchor];
  v184 = [v179 leadingAnchor];
  v185 = [v183 constraintEqualToAnchor:v184 constant:18.0];

  [v185 setActive_];
  v186 = [v177 trailingAnchor];
  v187 = [v179 trailingAnchor];
  v188 = [v186 constraintEqualToAnchor:v187 constant:-16.0];

  [v188 setActive_];
  v189 = [v177 bottomAnchor];
  *&v240 = v177;

  v190 = [v179 bottomAnchor];
  v191 = [v189 constraintEqualToAnchor:v190 constant:-16.0];

  [v191 setActive_];
  v192 = [v251 links];
  v193 = sub_2757980E0();

  if (v193 >> 62)
  {
    goto LABEL_97;
  }

  for (j = *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_275798640())
  {
    v195 = 0;
    while (1)
    {
      if ((v193 & 0xC000000000000001) != 0)
      {
        v196 = MEMORY[0x277C80840](v195, v193);
      }

      else
      {
        if (v195 >= *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_96;
        }

        v196 = *(v193 + 8 * v195 + 32);
      }

      v178 = v196;
      v197 = v195 + 1;
      if (__OFADD__(v195, 1))
      {
        break;
      }

      if ([v196 action] == 125)
      {

        sub_2756C557C(0, &qword_2809FFE90);
        v198 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v199 = swift_allocObject();
        *(v199 + 16) = v198;
        *(v199 + 24) = v178;
        v200 = v178;
        v201 = sub_2757983F0();
        v202 = v252;
        v203 = v237;
        [*&v237[v252] addAction:v201 forControlEvents:64];
        [*&v203[v202] setTranslatesAutoresizingMaskIntoConstraints_];
        [v179 addSubview_];
        v204 = [*&v203[v202] topAnchor];
        v205 = [v179 topAnchor];

        v206 = [v204 constraintEqualToAnchor_];
        [v206 setActive_];

        v207 = [*&v203[v202] trailingAnchor];
        v208 = [v179 trailingAnchor];

        v209 = [v207 constraintEqualToAnchor_];
        v178 = v202;
        [v209 setActive_];

        goto LABEL_99;
      }

      ++v195;
      v178 = v252;
      if (v197 == j)
      {
        goto LABEL_98;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    ;
  }

LABEL_98:

  v201 = v179;
  v209 = v179;
LABEL_99:

  v210 = v179;
  [v210 setIsAccessibilityElement_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF458);
  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_2757A4FC0;
  v212 = *(v178 + v247);
  v213 = sub_2756C557C(0, &qword_2809FFE98);
  *(v211 + 56) = v213;
  *(v211 + 32) = v212;
  v214 = *(v178 + v250);
  *(v211 + 88) = v213;
  *(v211 + 64) = v214;
  v215 = v212;
  v216 = v214;
  v217 = sub_2757980D0();

  [v210 setAccessibilityElements_];

  v218 = *&v239[v178];
  v219 = v244;
  v220 = v251;
  v221 = v242;
  if (v218)
  {

    v222 = [v210 accessibilityElements];
    if (v222)
    {
      v223 = v222;
      v224 = sub_2757980E0();

      v261 = v224;
      v225 = sub_275781880(v218);

      sub_275781B6C(v225);
      if (v261)
      {
        v226 = sub_2757980D0();
      }

      else
      {
        v226 = 0;
      }

      [v210 setAccessibilityElements_];
    }

    else
    {

      [v210 setAccessibilityElements_];
    }

    (*(v245 + 8))(v219, v246);
  }

  else
  {
    (*(v245 + 8))(v244, v246);
  }

  return v210;
}

unint64_t sub_275780D70(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF158);
    v2 = sub_275798870();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v14 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v14);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v14 = v9;
LABEL_13:
    v15 = __clz(__rbit64(v6)) | (v14 << 6);
    sub_27576794C(*(v1 + 48) + 40 * v15, v28);
    sub_275627B04(*(v1 + 56) + 32 * v15, v29 + 8);
    v26[0] = v29[0];
    v26[1] = v29[1];
    v27 = v30;
    v25[0] = v28[0];
    v25[1] = v28[1];
    sub_27576794C(v25, v24);
    if (!swift_dynamicCast())
    {
      sub_275782D28(v25);

      goto LABEL_22;
    }

    sub_275627B04(v26 + 8, v24);
    sub_275782D28(v25);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_2756F72B4(v22, v23);
    if (v16)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      *v12 = v22;
      v12[1] = v23;

      v13 = (v2[7] + v11);
      v1 = v10;
      *v13 = v22;
      v13[1] = v23;

      v9 = v14;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v2[6] + 16 * result);
      *v17 = v22;
      v17[1] = v23;
      v18 = (v2[7] + 16 * result);
      *v18 = v22;
      v18[1] = v23;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_26;
      }

      v2[2] = v21;
      v9 = v14;
    }
  }

LABEL_22:

  return 0;
}

void sub_275781030(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id sub_27578109C@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v35 = a2;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEB8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_275798410();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2757984C0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = *a1;
  sub_2757984A0();
  sub_275798440();
  (*(v8 + 104))(v10, *MEMORY[0x277D74FC0], v7);
  sub_275798420();
  sub_2757962B0();
  v19 = sub_2757962A0();
  (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
  sub_275798470();
  result = [v18 text];
  if (result)
  {
    v21 = result;
    sub_2756C557C(0, &qword_2809FFE90);
    sub_275797F50();

    v22 = swift_allocObject();
    v23 = v35;
    *(v22 + 16) = v35;
    *(v22 + 24) = v18;
    v24 = v23;
    v25 = v18;
    v26 = sub_2757983F0();
    sub_2756C557C(0, &qword_2809FFE78);
    (*(v12 + 16))(v15, v17, v11);
    v27 = v26;
    v28 = sub_2757984D0();
    [v28 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
    v29 = [v28 titleLabel];
    if (v29)
    {
      v30 = v29;
      [v29 setNumberOfLines_];
    }

    v31 = [v28 titleLabel];
    [v31 setAdjustsFontForContentSizeCategory_];

    v32 = [v28 titleLabel];
    if (v32)
    {
      v33 = v32;
      [v32 setLineBreakMode_];
    }

    v34 = [objc_opt_self() systemBlueColor];
    [v28 setTitleColor:v34 forState:0];

    [v28 setContentHorizontalAlignment_];
    result = (*(v12 + 8))(v17, v11);
    *v36 = v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275781534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_275795C10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  [objc_opt_self() preferredFontForTextStyle_];
  sub_275782DFC();
  return sub_275795C20();
}

void sub_2757815E8(void *a1, void *a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((*MEMORY[0x277D85000] & *a1) + 0xE8))(v6);
  if (v9)
  {
    v10 = [v9 performActionWith_];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 2;
  }

  v11 = sub_275700E70();
  (*(v5 + 16))(v8, v11, v4);
  v12 = a2;
  v13 = sub_275796270();
  v14 = sub_2757982E0();
  if (!os_log_type_enabled(v13, v14))
  {

LABEL_12:
    (*(v5 + 8))(v8, v4);
    return;
  }

  v15 = swift_slowAlloc();
  v16 = swift_slowAlloc();
  v24 = v16;
  *v15 = 67109378;
  v17 = v10 != 2 && (v10 & 1) != 0;
  *(v15 + 4) = v17;
  *(v15 + 8) = 2080;
  v18 = [v12 text];

  if (v18)
  {
    v19 = sub_275797F50();
    v21 = v20;

    v22 = sub_27562792C(v19, v21, &v24);

    *(v15 + 10) = v22;
    _os_log_impl(&dword_275623000, v13, v14, "Bubble banner action performed: %{BOOL}d, for link: %s", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x277C81E50](v16, -1, -1);
    MEMORY[0x277C81E50](v15, -1, -1);

    goto LABEL_12;
  }

  __break(1u);
}

char *sub_275781880(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_275798640();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_275749AA0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x277C80840](i, a1);
        sub_2756C557C(0, &qword_2809FFE78);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_275749AA0((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2756D5AA8(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2756C557C(0, &qword_2809FFE78);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_275749AA0((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2756D5AA8(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_275781A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_275798640();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_275798640();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_275782864(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_275782904(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_275781B6C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_275782754(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_275781CA8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_actionButtons) = 0;
  v2 = OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_delegate;
  swift_unknownObjectWeakInit();

  sub_275782BFC(v1 + v2);
  type metadata accessor for ICQBubbleBannerView();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_275781D90()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();
  v3 = [v2 deviceInfo];

  v63 = v3;
  if (!v3 || (v4 = [v3 key], sub_275797F50(), v4, v5 = objc_msgSend(v3, sel_wordsToReplace), v6 = sub_275797EB0(), v5, v7 = sub_275780D70(v6), v8 = , !v7))
  {
    v7 = sub_27574152C(MEMORY[0x277D84F90]);
  }

  v9 = *(v64 + OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_titleLabel);
  v10 = *((*v1 & *v64) + 0xD0);
  v11 = (v10)(v8);
  v12 = sub_275797F10();
  v13 = [v11 titleWithKey_];

  if (v13)
  {
    v14 = sub_275797F50();

    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;

    v19 = 0;
    if (v17)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (v20 >= v18)
      {
        break;
      }

      v17 = *(v7 + 64 + 8 * v20);
      ++v19;
      if (v17)
      {
        v19 = v20;
        do
        {
LABEL_13:
          v17 &= v17 - 1;
          v65 = v14;
          v21 = sub_2756DC79C();

          v60 = v21;
          v61 = v21;
          v59 = v21;
          v58 = MEMORY[0x277D837D0];
          v14 = sub_275798580();
        }

        while (v17);
        continue;
      }
    }

    sub_275797FC0();

    v22 = sub_275797F10();
  }

  else
  {
    v22 = 0;
  }

  v23 = &selRef_quotaBag;
  [v9 setText_];

  v24 = *(v64 + OBJC_IVAR____TtC13iCloudQuotaUI19ICQBubbleBannerView_subTitleLabel);
  v25 = v10();
  v26 = sub_275797F10();

  v27 = [v25 messageWithKey_];

  if (v27)
  {
    v62 = v24;
    v28 = sub_275797F50();

    v29 = 1 << *(v7 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v7 + 64);
    v32 = (v29 + 63) >> 6;

    v19 = 0;
    if (v31)
    {
      goto LABEL_26;
    }

    while (1)
    {
      v33 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_44;
      }

      if (v33 >= v32)
      {
        break;
      }

      v31 = *(v7 + 64 + 8 * v33);
      ++v19;
      if (v31)
      {
        v19 = v33;
        do
        {
LABEL_26:
          v31 &= v31 - 1;
          v65 = v28;
          v34 = sub_2756DC79C();

          v60 = v34;
          v61 = v34;
          v59 = v34;
          v58 = MEMORY[0x277D837D0];
          v28 = sub_275798580();
        }

        while (v31);
        continue;
      }
    }

    v35 = sub_275797F10();
    v23 = &selRef_quotaBag;
    v24 = v62;
  }

  else
  {
    v35 = 0;
  }

  [v24 v23[500]];

  v40 = (v10)(v36, v37, v38, v39);
  v41 = [v40 links];

  sub_2756C557C(0, &qword_2809FFE80);
  v19 = sub_2757980E0();

  v65 = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_275798640())
  {
    v43 = 0;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x277C80840](v43, v19);
      }

      else
      {
        if (v43 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v44 = *(v19 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if ([v44 action] == 125)
      {
      }

      else
      {
        sub_275798780();
        sub_2757987B0();
        sub_2757987C0();
        sub_275798790();
      }

      ++v43;
      if (v46 == i)
      {
        v47 = v65;
        goto LABEL_49;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_49:

  if (v47 < 0 || (v47 & 0x4000000000000000) != 0)
  {
LABEL_64:
    v48 = sub_275798640();
    if (v48 < 0)
    {
      __break(1u);
    }

    v49 = v48;
    if (v48)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v49 = *(v47 + 16);
    if (v49)
    {
LABEL_52:
      v50 = *((*MEMORY[0x277D85000] & *v64) + 0x88);
      v51 = 4;
      do
      {
        v48 = v50(v48);
        if (v48)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v55 = MEMORY[0x277C80840](v51 - 4, v48);
          }

          else
          {
            if ((v51 - 4) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_64;
            }

            v55 = *(v48 + 8 * v51);
          }

          v56 = v55;

          if ((v47 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x277C80840](v51 - 4, v47);
          }

          else
          {
            v52 = *(v47 + 8 * v51);
          }

          v53 = v52;
          v54 = [v52 text];

          [v56 setTitle:v54 forState:0];
        }

        ++v51;
        --v49;
      }

      while (v49);
    }
  }
}

id ICQBubbleBannerView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ICQBubbleBannerView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ICQBubbleBannerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_275782754(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF458);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_275782864(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_275798640();
LABEL_9:
  result = sub_275798730();
  *v1 = result;
  return result;
}

uint64_t sub_275782904(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_275798640();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_275798640();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_275782D90();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEA8);
            v9 = sub_275782A94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2756C557C(0, &qword_2809FFE88);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_275782A94(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C80840](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_275782B14;
  }

  __break(1u);
  return result;
}

void sub_275782B1C()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0xE8))();

    if (v4)
    {
      [v4 performActionWith_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_275782D28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A001B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275782D90()
{
  result = qword_2809FFEB0;
  if (!qword_2809FFEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809FFEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFEB0);
  }

  return result;
}

unint64_t sub_275782DFC()
{
  result = qword_2809FFEC0;
  if (!qword_2809FFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFEC0);
  }

  return result;
}

void sub_275782E50()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMaximumFractionDigits_];
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB18]) init];
  [v1 setUnitOptions_];
  v2 = v0;
  [v1 setNumberFormatter_];

  qword_280A0D8D8 = v1;
}

uint64_t *sub_275782EEC()
{
  if (qword_280A0D050 != -1)
  {
    swift_once();
  }

  return &qword_280A0D8D8;
}

void *sub_275782F74()
{
  if (qword_280A0D058 != -1)
  {
    swift_once();
  }

  return &qword_280A0D8E0;
}

id sub_275782FFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v7 setDateStyle_];
  result = [v7 setTimeStyle_];
  *a4 = v7;
  return result;
}

void *sub_275783070()
{
  if (qword_280A0D060 != -1)
  {
    swift_once();
  }

  return &qword_280A0D8E8;
}

id sub_2757830E4(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_275783144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF858);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = [objc_opt_self() bytes];
  sub_2756C557C(0, &qword_2809FF868);
  sub_275795B00();
  if (qword_280A0D050 != -1)
  {
    swift_once();
  }

  [qword_280A0D8D8 setUnitStyle_];
  v7 = sub_2757983B0();
  (*(v3 + 8))(v5, v2);
  return v7;
}

id sub_27578352C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_275783560()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FormatterUtils();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2757835D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FormatterUtils();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27578360C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FF858);
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v19 - v3);
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = (&v19 - v3); v5; i = v4)
  {
    v6 = 0;
    v7 = 0.0;
    v4 = &selRef_cellularName;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x277C80840](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(a1 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v12 = [v9 documentSize];
      if (v12)
      {
        v13 = v12;
        [v12 doubleValue];
        v8 = v14;
      }

      else
      {
        v8 = 0.0;
      }

      v7 = v7 + v8;
      ++v6;
      if (v11 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v5 = sub_275798640();
  }

LABEL_16:
  v15 = [objc_opt_self() bytes];
  sub_2756C557C(0, &qword_2809FF868);
  v16 = i;
  sub_275795B00();
  if (qword_280A0D050 != -1)
  {
    swift_once();
  }

  [qword_280A0D8D8 setUnitStyle_];
  v17 = sub_2757983B0();
  (*(v21 + 8))(v16, v22);
  return v17;
}

uint64_t sub_2757838B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_2757838C8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_2757838F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_275783930()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  if (v5 == 2 || (v5 & 1) == 0)
  {
    v1 = &selRef_IPAddressLocationDisabledMessage;
  }

  else
  {
    v1 = &selRef_IPAddressLocationEnabledMessage;
  }

  v2 = [*(v0 + 16) *v1];
  v3 = sub_275797F50();

  return v3;
}

uint64_t sub_275783A0C(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  v3 = sub_275797F50();

  return v3;
}

uint64_t sub_275783A78(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v6[0]) = a1;

  v3 = sub_275796630();
  result = (*(*v1 + 192))(v3);
  if ((result & 1) == 0)
  {
    result = (*(*v1 + 240))(v5);
    if (v5[1])
    {
      sub_2756C92B4(v5, &qword_2809FDD50);
      memset(v6, 0, sizeof(v6));
      v7 = 0;
      return (*(*v1 + 248))(v6);
    }
  }

  return result;
}

void (*sub_275783B8C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 160) = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  *(v4 + 168) = *(v4 + 169);
  return sub_275783C50;
}

void sub_275783C50(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 168);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = *(v3 + 160);
  *(v3 + 169) = v4;

  v6 = sub_275796630();
  v7 = (*(*v5 + 192))(v6);
  if (a2)
  {
    if (v7)
    {
      goto LABEL_9;
    }

    v8 = v3 + 80;
    (*(**(v3 + 160) + 240))();
    v9 = v3;
    if (!*(v3 + 88))
    {
      goto LABEL_9;
    }

LABEL_8:
    v10 = *(v3 + 160);
    sub_2756C92B4(v8, &qword_2809FDD50);
    *v9 = 0u;
    *(v9 + 16) = 0u;
    *(v9 + 32) = 0;
    (*(*v10 + 248))(v9);
    goto LABEL_9;
  }

  if ((v7 & 1) == 0)
  {
    v8 = v3 + 120;
    (*(**(v3 + 160) + 240))();
    if (*(v3 + 128))
    {
      v9 = v3 + 40;
      goto LABEL_8;
    }
  }

LABEL_9:

  free(v3);
}

uint64_t sub_275783E0C(uint64_t a1)
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

uint64_t (*sub_275783F44(uint64_t *a1))()
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

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__showAlert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C3A30;
}

double sub_275784110@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_275784194@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 240))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_2757841FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  v3 = *(**a2 + 248);
  sub_275789E58(v6, v5);
  return v3(v6);
}

uint64_t sub_275784270(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v8 = *(a1 + 32);

  v4 = sub_275796630();
  (*(*v1 + 240))(v7, v4);
  v5 = *(&v7[0] + 1);
  if (*(&v7[0] + 1))
  {
    sub_2756C92B4(v7, &qword_2809FDD50);
  }

  return (*(*v1 + 200))(v5 != 0);
}

void (*sub_275784360(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 160) = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  *(v5 + 80) = *(v5 + 120);
  v5 += 80;
  v6 = *(v5 + 72);
  *(v5 + 16) = *(v5 + 56);
  *(v5 + 32) = v6;
  return sub_275784438;
}

void sub_275784438(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v8 = *(*a1 + 112);
  swift_getKeyPath();
  swift_getKeyPath();
  v3[15] = v4;
  v9 = v3[20];
  v3[16] = v5;
  v3[17] = v6;
  v3[18] = v7;
  v3[19] = v8;

  if (a2)
  {
    sub_2757884F0(v4, v5);
    v10 = sub_275796630();
    (*(*v9 + 240))(v10);
    v11 = v3[1];
    if (v11)
    {
      sub_2756C92B4(v3, &qword_2809FDD50);
    }

    (*(*v3[20] + 200))(v11 != 0);
    sub_2756E0620(v3[10], v3[11]);
  }

  else
  {
    v12 = sub_275796630();
    (*(*v9 + 240))(v12);
    v13 = v3[6];
    if (v13)
    {
      sub_2756C92B4((v3 + 5), &qword_2809FDD50);
    }

    (*(*v3[20] + 200))(v13 != 0);
  }

  free(v3);
}

uint64_t sub_275784650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFED0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEC8);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_275784788(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFED0);
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

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__alert;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEC8);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C5BC8;
}

uint64_t sub_27578492C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2757849A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 288))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_275784A48()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

void (*sub_275784ABC(uint64_t *a1))(void *a1)
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
  return sub_2756C368C;
}

uint64_t sub_275784B7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFED8);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_275784CB4(uint64_t *a1))()
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEE0);
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

  v10 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__locationSharingOption;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFED8);
  sub_2757965F0();
  swift_endAccess();
  return sub_2756C5BC8;
}

uint64_t sub_275784E24@<X0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  if (v18)
  {
    v2 = [v18 title];
    v3 = sub_275797F50();
    v5 = v4;

    v6 = [v18 message];
    v7 = sub_275797F50();
    v9 = v8;

    v10 = [v18 buttonTitle];
    if (v10)
    {
      v11 = v10;
      v12 = sub_275797F50();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v17 = swift_allocObject();
    swift_weakInit();
    result = swift_allocObject();
    *(result + 16) = v17;
    *(result + 24) = v18;
    v15 = sub_275788540;
  }

  else
  {
    v3 = 0;
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    result = 0;
  }

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v9;
  a1[4] = v12;
  a1[5] = v14;
  a1[6] = v15;
  a1[7] = result;
  return result;
}

double sub_275784FCC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_27578502C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  if (v2)
  {
    v0 = [v2 networkName];

    if (v0)
    {
      sub_275797F50();
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t sub_275785130()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2757851F4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_275785268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 400))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2757852BC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t sub_275785340()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t sub_2757853D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEF8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEF0);
  sub_275796600();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_275785510()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_2757855CC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  return v1;
}

uint64_t sub_27578566C()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  swift_retain_n();
  sub_275797760();
  return v4;
}

uint64_t sub_27578572C()
{
  v1 = swift_allocObject();
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = v0;
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0;
  v2[4] = v0;
  swift_retain_n();
  sub_275797760();
  return v4;
}

void sub_2757857EC(void *a1, char a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v7 = sub_275796280();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (a1)
  {
    v14 = a1;
    v15 = sub_275700E70();
    (*(v8 + 16))(v13, v15, v7);
    v16 = a1;
    v17 = sub_275796270();
    v18 = sub_2757982F0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v4;
      v4 = v19;
      v20 = swift_slowAlloc();
      *v4 = 67109378;
      *(v4 + 4) = a2 & 1;
      *(v4 + 8) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 10) = v22;
      *v20 = v22;
      _os_log_impl(&dword_275623000, v17, v18, "Error setting location sharing to %{BOOL}d: %@", v4, 0x12u);
      sub_2756C92B4(v20, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v20, -1, -1);
      v23 = v4;
      LOBYTE(v4) = v29;
      MEMORY[0x277C81E50](v23, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    v30 = v4;

    sub_275796630();
  }

  else
  {
    v24 = sub_275700E70();
    (*(v8 + 16))(v11, v24, v7);
    v25 = sub_275796270();
    v26 = sub_2757982D0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      *(v27 + 4) = a2 & 1;
      _os_log_impl(&dword_275623000, v25, v26, "Updated location sharing to %{BOOL}d.", v27, 8u);
      MEMORY[0x277C81E50](v27, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
  }
}

void sub_275785B14(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_275785B80()
{
  v1 = [*(v0 + 16) privateRelayStatusText];
  v2 = sub_275797F50();

  return v2;
}

char *sub_275785BD8(void *a1, int a2, void *a3)
{
  swift_allocObject();
  v6 = sub_275788BE4(a1, a2, a3);

  return v6;
}

char *sub_275785C3C(void *a1, int a2, void *a3)
{
  v5 = sub_275788BE4(a1, a2, a3);

  return v5;
}

uint64_t sub_275785C7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_275785CD0(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a1;
  v9 = a3;
  v10 = a5;
  sub_275789C1C(a2, a3);
}

id *PrivateRelayViewModel.deinit()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275700E70();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_275796270();
  v8 = sub_2757982D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275623000, v7, v8, "Deinit PrivateRelayViewModel, removing observer.", v9, 2u);
    MEMORY[0x277C81E50](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = CFNotificationCenterGetDarwinNotifyCenter();
  v11 = sub_275797F10();
  CFNotificationCenterRemoveObserver(v10, v1, v11, 0);

  v12 = sub_275797F10();
  CFNotificationCenterRemoveObserver(v10, v1, v12, 0);

  v13 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__showAlert;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  v15 = *(*(v14 - 8) + 8);
  v15(v1 + v13, v14);
  v16 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__alert;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEC8);
  (*(*(v17 - 8) + 8))(v1 + v16, v17);
  v18 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__locationSharingOption;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFED8);
  (*(*(v19 - 8) + 8))(v1 + v18, v19);
  v20 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__bannerModel;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF00);
  (*(*(v21 - 8) + 8))(v1 + v20, v21);
  v22 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__wifiName;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEF0);
  (*(*(v23 - 8) + 8))(v1 + v22, v23);
  v15(v1 + OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__isEnabled, v14);
  v24 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__locationSharingEnabled;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF08);
  (*(*(v25 - 8) + 8))(v1 + v24, v25);
  return v1;
}

uint64_t PrivateRelayViewModel.__deallocating_deinit()
{
  PrivateRelayViewModel.deinit();

  return swift_deallocClassInstance();
}

void sub_275786188()
{
  v1 = *(v0 + 16);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_27578624C;
  v3[3] = &block_descriptor_15;
  v2 = _Block_copy(v3);

  [v1 fetchBannerModels_];
  _Block_release(v2);
}

uint64_t sub_27578624C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {
    sub_275789B60();
    v2 = sub_2757980E0();
  }

  v3(v2);
}

void sub_2757862C4(uint64_t a1)
{
  v3 = sub_275796280();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 31)
  {
    if (a1 > 511)
    {
      if (a1 == 512)
      {
        v8 = "apple.com/kb/HT212614#geo";
        v9 = 0xD00000000000005ELL;
      }

      else
      {
        if (a1 != 2048)
        {
          goto LABEL_27;
        }

        v8 = "_locationSharingEnabled";
        v9 = 0xD00000000000002BLL;
      }
    }

    else
    {
      if (a1 == 32)
      {
        v14 = *(v1 + 16);
        v15 = swift_allocObject();
        swift_weakInit();
        v26 = sub_275789B18;
        v27 = v15;
        aBlock = MEMORY[0x277D85DD0];
        v23 = 1107296256;
        v24 = sub_275785B14;
        v25 = &block_descriptor_114;
        v12 = _Block_copy(&aBlock);

        [v14 enableDNS_];
        goto LABEL_21;
      }

      if (a1 != 64)
      {
LABEL_27:
        v16 = v5;
        v17 = sub_275700E70();
        v18 = v16;
        (*(v4 + 16))(v7, v17, v16);
        v19 = sub_275796270();
        v20 = sub_2757982F0();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 134217984;
          *(v21 + 4) = a1;
          _os_log_impl(&dword_275623000, v19, v20, "Pressed primary banner button but handler for status %lu is unknown. The UI will appear to do nothing.", v21, 0xCu);
          MEMORY[0x277C81E50](v21, -1, -1);
        }

        (*(v4 + 8))(v7, v18);
        return;
      }

      v8 = "e.com/support/systemstatus/";
      v9 = 0xD000000000000029;
    }

    v13 = v8 | 0x8000000000000000;
    goto LABEL_24;
  }

  if (a1 > 7)
  {
    if (a1 == 8)
    {
LABEL_16:
      v13 = 0x80000002757BAC30;
      v9 = 0xD00000000000002DLL;
LABEL_24:

      sub_275788874(v9, v13);
      return;
    }

    if (a1 == 16)
    {
      v10 = *(v1 + 16);
      v11 = swift_allocObject();
      swift_weakInit();
      v26 = sub_275789B3C;
      v27 = v11;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_275785B14;
      v25 = &block_descriptor_118;
      v12 = _Block_copy(&aBlock);

      [v10 enableSafari_];
LABEL_21:
      _Block_release(v12);
      return;
    }

    goto LABEL_27;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  sub_275786938();
}

uint64_t sub_2757866B0(void *a1, uint64_t a2, const char *a3)
{
  v5 = sub_275796280();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {
      v20[1] = result;
      v10 = a1;
      v11 = sub_275700E70();
      (*(v6 + 16))(v8, v11, v5);
      v12 = a1;
      v13 = sub_275796270();
      v14 = sub_2757982F0();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v20[0] = swift_slowAlloc();
        v21 = v20[0];
        *v15 = 136315138;
        swift_getErrorValue();
        v16 = sub_2757989F0();
        v18 = sub_27562792C(v16, v17, &v21);

        *(v15 + 4) = v18;
        _os_log_impl(&dword_275623000, v13, v14, a3, v15, 0xCu);
        v19 = v20[0];
        __swift_destroy_boxed_opaque_existential_0(v20[0]);
        MEMORY[0x277C81E50](v19, -1, -1);
        MEMORY[0x277C81E50](v15, -1, -1);
      }

      else
      {
      }

      return (*(v6 + 8))(v8, v5);
    }

    else
    {
      (*(*result + 592))();
    }
  }

  return result;
}

void sub_275786938()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 400))(v4);
  if (v7)
  {
  }

  else
  {
    v8 = sub_275700E70();
    (*(v3 + 16))(v6, v8, v2);
    v9 = sub_275796270();
    v10 = sub_2757982F0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275623000, v9, v10, "Do not have wifi name for unsupported wifi alert, will show placeholder.", v11, 2u);
      MEMORY[0x277C81E50](v11, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  v12 = v1[2];
  v13 = sub_275797F10();

  v14 = [v12 unsupportedTurnOffAlertTitleFor_];

  v15 = sub_275797F50();
  v29 = v16;
  v30 = v15;

  v17 = [v12 unsupportedTurnOffWifiAlertMessage];
  v18 = sub_275797F50();
  v20 = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF40);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2757A8B60;
  v22 = [v12 unsupportedTurnOffAlertOk];
  v23 = sub_275797F50();
  v25 = v24;

  *(v21 + 32) = v23;
  *(v21 + 40) = v25;
  *(v21 + 48) = 0;
  *(v21 + 56) = nullsub_1;
  *(v21 + 64) = 0;
  v32[0] = v30;
  v32[1] = v29;
  v32[2] = v18;
  v32[3] = v20;
  v32[4] = v21;
  (*(*v1 + 248))(v32);
  v26 = sub_275797F10();

  aBlock[4] = sub_275789B10;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275785B14;
  aBlock[3] = &block_descriptor_110;
  v27 = _Block_copy(aBlock);

  [v12 enableWifi:0 onNetworkName:v26 completion:v27];
  _Block_release(v27);
}

uint64_t sub_275786CF8(void *a1, uint64_t a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    v10 = sub_275700E70();
    (*(v5 + 16))(v8, v10, v4);
    v11 = a1;
    v12 = sub_275796270();
    v13 = sub_2757982F0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_275623000, v12, v13, "Error disabling on unsupported wifi: %@", v14, 0xCu);
      sub_2756C92B4(v15, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v15, -1, -1);
      MEMORY[0x277C81E50](v14, -1, -1);
    }

    else
    {
    }

    v6 = (*(v5 + 8))(v8, v4);
  }

  return (*(*a2 + 592))(v6);
}

void sub_275786F1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  if (v4[0] && (v1 = [v4[0] status], v4[0], v1 == 1))
  {
    sub_275787514();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_275796620();

    if (v4[0])
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_275796620();

      if (LOBYTE(v4[0]) == 1)
      {
        sub_27578731C();
      }
    }

    else
    {
      v2 = v0[2];
      v4[4] = sub_275789B08;
      v4[5] = v0;
      v4[0] = MEMORY[0x277D85DD0];
      v4[1] = 1107296256;
      v4[2] = sub_275785B14;
      v4[3] = &block_descriptor_107;
      v3 = _Block_copy(v4);

      [v2 setEnabled:1 completion:v3];
      _Block_release(v3);
    }
  }
}

uint64_t sub_2757870FC(void *a1, uint64_t a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (*(*a2 + 592))(v6);
  }

  v9 = a1;
  v10 = sub_275700E70();
  (*(v5 + 16))(v8, v10, v4);
  v11 = a1;
  v12 = sub_275796270();
  v13 = sub_2757982F0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = a1;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_275623000, v12, v13, "Error enabling PR in showEnableAlert: %@", v14, 0xCu);
    sub_2756C92B4(v15, &qword_2809FEDA0);
    MEMORY[0x277C81E50](v15, -1, -1);
    MEMORY[0x277C81E50](v14, -1, -1);
  }

  else
  {
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27578731C()
{
  v1 = v0[2];
  v2 = [v1 switchOffAlertPrefPaneTitle];
  v3 = sub_275797F50();
  v5 = v4;

  v6 = [v1 switchOffAlertMessage];
  v7 = sub_275797F50();
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2757A4FA0;
  v11 = [v1 unsupportedSwitchOffCancel];
  v12 = sub_275797F50();
  v14 = v13;

  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  *(v10 + 48) = 0;
  *(v10 + 56) = sub_2757899F0;
  *(v10 + 64) = v0;

  v15 = [v1 switchOffAlertPause];
  v16 = sub_275797F50();
  v18 = v17;

  *(v10 + 72) = v16;
  *(v10 + 80) = v18;
  *(v10 + 88) = 0;
  *(v10 + 96) = sub_275789A1C;
  *(v10 + 104) = v0;

  v19 = [v1 switchOffAlertTurnOff];
  v20 = sub_275797F50();
  v22 = v21;

  *(v10 + 112) = v20;
  *(v10 + 120) = v22;
  *(v10 + 128) = 1;
  *(v10 + 136) = sub_275789AF8;
  *(v10 + 144) = v0;
  v25[0] = v3;
  v25[1] = v5;
  v25[2] = v7;
  v25[3] = v9;
  v25[4] = v10;
  v23 = *(*v0 + 248);

  return v23(v25);
}

uint64_t sub_275787514()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*(*v0 + 400))(v4);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E55;
    v11 = sub_275700E70();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_275796270();
    v13 = sub_2757982F0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275623000, v12, v13, "Wifi name unknown. Using placeholder.", v14, 2u);
      MEMORY[0x277C81E50](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v10 = 0xE700000000000000;
  }

  v15 = v1[2];
  v16 = [v15 unsupportedSwitchOffAlertTitle];
  v17 = sub_275797F50();
  v40 = v18;
  v41 = v17;

  v19 = [v15 unsupportedWifiSwitchOffAlertMessage];
  sub_275797F50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809FED30);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2757A8B60;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_2756E3D78();
  *(v20 + 32) = v9;
  *(v20 + 40) = v10;
  v21 = sub_275797F70();
  v23 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF40);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2757A4FA0;
  v25 = [v15 unsupportedSwitchOffNetworkOnly];
  v26 = sub_275797F50();
  v28 = v27;

  v29 = swift_allocObject();
  v29[2] = v1;
  v29[3] = v9;
  v29[4] = v10;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  *(v24 + 48) = 0;
  *(v24 + 56) = sub_2757898D0;
  *(v24 + 64) = v29;

  v30 = [v15 unsupportedSwitchOffCompletely];
  v31 = sub_275797F50();
  v33 = v32;

  *(v24 + 72) = v31;
  *(v24 + 80) = v33;
  *(v24 + 88) = 0;
  *(v24 + 96) = sub_275789F94;
  *(v24 + 104) = v1;

  v34 = [v15 unsupportedSwitchOffCancel];
  v35 = sub_275797F50();
  v37 = v36;

  *(v24 + 112) = v35;
  *(v24 + 120) = v37;
  *(v24 + 128) = 0;
  *(v24 + 136) = nullsub_1;
  *(v24 + 144) = 0;
  v42[0] = v41;
  v42[1] = v40;
  v42[2] = v21;
  v42[3] = v23;
  v42[4] = v24;
  return (*(*v1 + 248))(v42);
}

uint64_t sub_275787914(void *a1, char a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = sub_275700E70();
    (*(v5 + 16))(v7, v9, v4);
    v10 = a1;
    v11 = sub_275796270();
    v12 = sub_2757982F0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 67109378;
      *(v13 + 4) = a2 & 1;
      *(v13 + 8) = 2112;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 10) = v16;
      *v14 = v16;
      _os_log_impl(&dword_275623000, v11, v12, "Error setting wifi enabled to %{BOOL}d: %@", v13, 0x12u);
      sub_2756C92B4(v14, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v14, -1, -1);
      MEMORY[0x277C81E50](v13, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 592))(result);
  }

  return result;
}

void sub_275787B78(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v7[0]) = a1;

  sub_275796630();
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  v7[4] = sub_27578986C;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_275785B14;
  v7[3] = &block_descriptor_90;
  v6 = _Block_copy(v7);

  [v3 setEnabled:a1 & 1 completion:v6];
  _Block_release(v6);
}

void sub_275787CC4(void *a1, char a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v8 = a1;
    v9 = sub_275700E70();
    (*(v5 + 16))(v7, v9, v4);
    v10 = a1;
    v11 = sub_275796270();
    v12 = sub_2757982F0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 67109378;
      *(v13 + 4) = a2 & 1;
      *(v13 + 8) = 2112;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 10) = v16;
      *v14 = v16;
      _os_log_impl(&dword_275623000, v11, v12, "Error setting PR to enabled %{BOOL}d: %@", v13, 0x12u);
      sub_2756C92B4(v14, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v14, -1, -1);
      MEMORY[0x277C81E50](v13, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v18[7] = (a2 & 1) == 0;
      sub_275796630();
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(*Strong + 592))(Strong);
    }
  }
}

uint64_t sub_275787F7C(void *a1)
{
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    v7 = sub_275700E70();
    (*(v3 + 16))(v5, v7, v2);
    v8 = a1;
    v9 = sub_275796270();
    v10 = sub_2757982F0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_275623000, v9, v10, "Error pausing private relay: %@", v11, 0xCu);
      sub_2756C92B4(v12, &qword_2809FEDA0);
      MEMORY[0x277C81E50](v12, -1, -1);
      MEMORY[0x277C81E50](v11, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 592))(result);
  }

  return result;
}

uint64_t sub_2757881CC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PrivateRelayViewModel();
  result = sub_2757965C0();
  *a1 = result;
  return result;
}

uint64_t sub_27578820C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  *a1 = v3;
  return result;
}

uint64_t sub_27578828C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t sub_275788300@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  *a1 = v3;
  return result;
}

uint64_t sub_275788380(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  sub_275796630();
  return sub_27578502C();
}

uint64_t sub_2757883FC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  *a1 = v3;
  return result;
}

uint64_t sub_27578847C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t sub_2757884F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_275788540()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2757862C4([v1 status]);
  }

  return result;
}

uint64_t sub_2757885B0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  *a1 = v3;
  return result;
}

uint64_t sub_275788654@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  v3 = v4 == 2 || (v4 & 1) == 0;
  *a1 = v3;
  return result;
}

void sub_2757886EC(char *a1)
{
  v2 = *(v1 + 32);
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_275796620();

  v4 = v9[0];
  v5 = (v3 & 1) == 0;
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v9[0]) = v5;

  sub_275796630();
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  *(v7 + 32) = v4;
  v9[4] = sub_275789E48;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_275785B14;
  v9[3] = &block_descriptor_127;
  v8 = _Block_copy(v9);

  [v6 enableLocationSharing:v5 completion:v8];
  _Block_release(v8);
}

id sub_275788874(uint64_t a1, unint64_t a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_275795CB0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275795CA0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_2756C92B4(v10, &qword_2809FD700);
    v15 = sub_275700E70();
    (*(v5 + 16))(v7, v15, v4);

    v16 = sub_275796270();
    v17 = sub_2757982F0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136446210;
      *(v18 + 4) = sub_27562792C(a1, a2, &v24);
      _os_log_impl(&dword_275623000, v16, v17, "Could not create URL from urlString %{public}s. A button will likely do nothing.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x277C81E50](v19, -1, -1);
      MEMORY[0x277C81E50](v18, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v21 = result;
      v22 = sub_275795C70();
      [v21 openURL:v22 configuration:0 completionHandler:0];

      return (*(v12 + 8))(v14, v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

char *sub_275788BE4(void *a1, int a2, void *a3)
{
  v46 = a1;
  v47 = a3;
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF08);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v43 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEF0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF00);
  v49 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEC8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE90);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v39 - v17;
  v19 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__showAlert;
  LOBYTE(aBlock) = 0;
  sub_2757965E0();
  (*(v16 + 32))(&v3[v19], v18, v15);
  v20 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__alert;
  v52 = 0;
  aBlock = 0u;
  v51 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD50);
  sub_2757965E0();
  (*(v12 + 32))(&v3[v20], v14, v11);
  v21 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__bannerModel;
  *&aBlock = 0;
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFEE8);
  sub_2757965E0();
  v22 = v40;
  (*(v49 + 32))(&v3[v21], v10, v40);
  v23 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__wifiName;
  aBlock = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDE88);
  sub_2757965E0();
  (*(v41 + 32))(&v3[v23], v8, v42);
  v24 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__locationSharingEnabled;
  LOBYTE(aBlock) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FE368);
  v25 = v43;
  sub_2757965E0();
  v27 = v44;
  v26 = v45;
  (*(v44 + 32))(&v3[v24], v25, v45);
  v28 = v46;
  v29 = v47;
  *(v3 + 2) = v46;
  *(v3 + 3) = v29;
  swift_beginAccess();
  LOBYTE(v54) = v48;
  v30 = v28;
  v31 = v29;
  sub_2757965E0();
  swift_endAccess();
  v32 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__bannerModel;
  swift_beginAccess();
  (*(v49 + 8))(&v3[v32], v22);
  v54 = 0;
  sub_2757965E0();
  swift_endAccess();
  v33 = OBJC_IVAR____TtC13iCloudQuotaUI21PrivateRelayViewModel__locationSharingEnabled;
  swift_beginAccess();
  (*(v27 + 8))(&v3[v33], v26);
  LOBYTE(v54) = 0;
  sub_2757965E0();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v54) = 1;
  sub_2757965E0();
  swift_endAccess();
  v52 = sub_275789BAC;
  v53 = v3;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_275785C7C;
  *(&v51 + 1) = &block_descriptor_121;
  v34 = _Block_copy(&aBlock);

  [v30 isLocationSharingEnabled_];
  _Block_release(v34);
  v35 = CFNotificationCenterGetDarwinNotifyCenter();
  v36 = sub_275797F10();
  CFNotificationCenterAddObserver(v35, v3, sub_275785CD0, v36, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v37 = sub_275797F10();
  CFNotificationCenterAddObserver(v35, v3, sub_275789F98, v37, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  return v3;
}

uint64_t sub_2757892BC(unint64_t a1)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    v2 = 0;
    goto LABEL_10;
  }

  result = sub_275798640();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C80840](0, v2);
    goto LABEL_7;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_7:
    v2 = v4;
LABEL_10:
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;

    sub_275796630();
    sub_27578502C();

    [*(v1 + 16) isEnabled];
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_275796630();
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27578940C()
{
  result = qword_2809FFF10;
  if (!qword_2809FFF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFF10);
  }

  return result;
}

uint64_t type metadata accessor for PrivateRelayViewModel()
{
  result = qword_280A0D320;
  if (!qword_280A0D320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2757894B4()
{
  sub_275789F18(319, &qword_2809FDEC8, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_2756C5528(319, &qword_2809FFF18, &qword_2809FDD50);
    if (v1 <= 0x3F)
    {
      sub_275789F18(319, &qword_2809FFF20, &type metadata for PrivateRelayViewModel.LocationSharingOption, MEMORY[0x277CBCED0]);
      if (v2 <= 0x3F)
      {
        sub_2756C5528(319, &qword_2809FFF28, &qword_2809FFEE8);
        if (v3 <= 0x3F)
        {
          sub_2756C5528(319, &qword_2809FFF30, &qword_2809FDE88);
          if (v4 <= 0x3F)
          {
            sub_2756C5528(319, &qword_2809FFF38, &qword_2809FE368);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27578977C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2757897C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroy_31Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

void sub_2757898D0()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = sub_275797F10();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = v3;
  v6[4] = sub_2757899E4;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_275785B14;
  v6[3] = &block_descriptor_100;
  v5 = _Block_copy(v6);

  [v1 enableWifi:0 onNetworkName:v2 completion:v5];
  _Block_release(v5);
}

void sub_275789A1C()
{
  v1 = *(v0 + 16);
  v2 = swift_allocObject();
  swift_weakInit();
  v4[4] = sub_275789B00;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_275785B14;
  v4[3] = &block_descriptor_104;
  v3 = _Block_copy(v4);

  [v1 pausePrivateRelayUntilTomorrow_];
  _Block_release(v3);
}

unint64_t sub_275789B60()
{
  result = qword_2809FFF48;
  if (!qword_2809FFF48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809FFF48);
  }

  return result;
}

uint64_t sub_275789BAC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_275796630();
}

uint64_t sub_275789C1C(uint64_t a1, void *a2)
{
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v9 = sub_275700E70();
    (*(v5 + 16))(v8, v9, v4);
    v10 = a2;
    v11 = sub_275796270();
    v12 = sub_2757982D0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = a2;
      v20 = v14;
      *v13 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FFF50);
      v15 = sub_275798540();
      v17 = sub_27562792C(v15, v16, &v20);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_275623000, v11, v12, "Handling NSP notification: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x277C81E50](v14, -1, -1);
      MEMORY[0x277C81E50](v13, -1, -1);
    }

    v18 = (*(v5 + 8))(v8, v4);
    (*(*a1 + 592))(v18);
  }

  return result;
}

uint64_t sub_275789E58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDD50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_275789F18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_275789FC8()
{

  MEMORY[0x277C80130](95, 0xE100000000000000);
  MEMORY[0x277C80130](*(v0 + 56), *(v0 + 64));
  return sub_2757986B0();
}

uint64_t sub_27578A048@<X0>(uint64_t a1@<X8>)
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

__n128 sub_27578A1B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a1;
  v7 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v7;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 40) = a2;
  *(a6 + 48) = a3;
  *(a6 + 56) = a4;
  *(a6 + 64) = a5;
  return result;
}

unint64_t sub_27578A1D8()
{
  result = qword_2809FFF68;
  if (!qword_2809FFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809FFF68);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_27578A250(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_27578A298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_27578A2F8()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_file;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27578A34C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_file;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_27578A404()
{
  v1 = (v0 + OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_didUpdateItem);
  swift_beginAccess();
  v2 = *v1;
  sub_27562F5C0(*v1);
  return v2;
}

uint64_t sub_27578A460(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_didUpdateItem);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_2756D4A30(v6);
}

id sub_27578A520(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_didUpdateItem];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v3[OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_file] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_27578A580(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_didUpdateItem];
  *v2 = 0;
  *(v2 + 1) = 0;
  *&v1[OBJC_IVAR____TtC13iCloudQuotaUI17QuickLookProvider_file] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for QuickLookProvider();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_27578A5FC()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
  v2 = [objc_allocWithZone(MEMORY[0x277CDAA48]) initWithFPItem_];

  return v2;
}

id sub_27578A7EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QuickLookProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_27578A870()
{
  v1 = v0;
  v28 = sub_2757961A0();
  v2 = *(v28 - 8);
  v3 = MEMORY[0x28223BE20](v28);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v7 = (v6)(v3);
  v8 = [v7 providerDomainID];

  v9 = v6();
  v10 = [v9 itemIdentifier];

  v11 = v6();
  v12 = [v11 parentItemIdentifier];

  v13 = v6();
  v14 = [v13 filename];

  if (!v14)
  {
    sub_275797F50();
    v14 = sub_275797F10();
  }

  v16 = (v6)(v15);
  v17 = [v16 contentType];

  sub_275796190();
  v18 = objc_allocWithZone(MEMORY[0x277CC63E8]);
  v19 = sub_275796180();
  v20 = [v18 initWithProviderDomainID:v8 itemIdentifier:v10 parentItemIdentifier:v12 filename:v14 contentType:v19];

  (*(v2 + 8))(v5, v28);
  v21 = MEMORY[0x277D85000];
  v22 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v23 = v20;
  v24 = v22();
  v25 = (*((*v21 & *v1) + 0x78))(v24);
  if (v25)
  {
    v26 = v25;
    v25(v23);

    sub_2756D4A30(v26);
  }

  else
  {
  }
}

uint64_t sub_27578AB80@<X0>(uint64_t a1@<X8>)
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

__n128 sub_27578ACE8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  result = *a2;
  v5 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 56) = v5;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

unint64_t sub_27578AD14()
{
  result = qword_280A000B0;
  if (!qword_280A000B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A000B0);
  }

  return result;
}

uint64_t sub_27578AD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27578ADB0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t static ICQUIRemoteExtensionEntry.sharedInstance.getter()
{
  swift_beginAccess();
  v0 = qword_280A0D530;
  v1 = qword_280A0D530;
  return v0;
}

void static ICQUIRemoteExtensionEntry.sharedInstance.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_280A0D530;
  qword_280A0D530 = a1;
}

uint64_t sub_27578AFFC()
{
  v1 = v0;
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v1 delegate])
  {
    v11[1] = &unk_2884E0910;
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  v7 = sub_275700E70();
  (*(v3 + 16))(v5, v7, v2);
  v8 = sub_275796270();
  v9 = sub_2757982F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_275623000, v8, v9, "Unable to retrieve transformer", v10, 2u);
    MEMORY[0x277C81E50](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

Swift::Bool __swiftcall ICQUIRemoteExtensionEntry.extensionShouldAccept(_:)(NSXPCConnection a1)
{
  v2 = v1;
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_275700E70();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1.super.isa;
  v10 = sub_275796270();
  v11 = sub_275798310();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_275623000, v10, v11, "Accepting connection %@", v12, 0xCu);
    sub_2756C92B4(v13, &qword_2809FEDA0);
    MEMORY[0x277C81E50](v13, -1, -1);
    MEMORY[0x277C81E50](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  [(objc_class *)v9 setExportedObject:v2];
  v15 = objc_opt_self();
  v16 = [v15 interfaceWithProtocol_];
  [(objc_class *)v9 setExportedInterface:v16];

  v17 = [v15 interfaceWithProtocol_];
  [(objc_class *)v9 setRemoteObjectInterface:v17];

  [(objc_class *)v9 resume];
  [v2 setCurrentConnection_];
  return 1;
}

void __swiftcall ICQUIRemoteExtensionEntry.extensionMakeContentViewController()(UIViewController_optional *__return_ptr retstr)
{
  v2 = [v1 transformer];
  if (v2)
  {
    [v2 makeContentViewController];
    swift_unknownObjectRelease();
  }
}

uint64_t ICQUIRemoteExtensionEntry.dismissViewController(error:)(void *a1)
{
  v2 = v1;
  v4 = sub_275796280();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = [v2 currentConnection];
  if (v14)
  {
    v15 = v14;
    aBlock[4] = sub_27578BAC8;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2756F0340;
    aBlock[3] = &block_descriptor_16;
    v16 = _Block_copy(aBlock);
    v17 = [v15 remoteObjectProxyWithErrorHandler_];
    _Block_release(v16);
    sub_2757985A0();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00128);
    if (swift_dynamicCast())
    {
      v18 = v40;
      v19 = sub_275700E70();
      (*(v5 + 16))(v13, v19, v4);
      v20 = a1;
      v21 = sub_275796270();
      v22 = sub_275798310();

      if (os_log_type_enabled(v21, v22))
      {
        v39 = v18;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        if (a1)
        {
          v25 = a1;
          v26 = _swift_stdlib_bridgeErrorToNSError();
          v27 = v26;
        }

        else
        {
          v26 = 0;
          v27 = 0;
        }

        *(v23 + 4) = v26;
        *v24 = v27;
        _os_log_impl(&dword_275623000, v21, v22, "Sending dismiss signal to host with error %@", v23, 0xCu);
        sub_2756C92B4(v24, &qword_2809FEDA0);
        MEMORY[0x277C81E50](v24, -1, -1);
        MEMORY[0x277C81E50](v23, -1, -1);
        v18 = v39;
      }

      (*(v5 + 8))(v13, v4);
      if (a1)
      {
        aBlock[0] = a1;
        v37 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00130);
        sub_27578CA60();
        if (swift_dynamicCast())
        {
          v38 = v40;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      [v18 dismissViewControllerWithError_];

      [v2 setCurrentConnection_];
      return swift_unknownObjectRelease();
    }

    else
    {
      v33 = sub_275700E70();
      (*(v5 + 16))(v11, v33, v4);
      v34 = sub_275796270();
      v35 = sub_2757982F0();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_275623000, v34, v35, "Invalid proxy object", v36, 2u);
        MEMORY[0x277C81E50](v36, -1, -1);
      }

      return (*(v5 + 8))(v11, v4);
    }
  }

  else
  {
    v28 = sub_275700E70();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_275796270();
    v30 = sub_2757982E0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_275623000, v29, v30, "View controller was dismissed.", v31, 2u);
      MEMORY[0x277C81E50](v31, -1, -1);
    }

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_27578BAC8(void *a1)
{
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_275700E70();
  (*(v3 + 16))(v5, v6, v2);
  v7 = a1;
  v8 = sub_275796270();
  v9 = sub_2757982F0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_2757989F0();
    v14 = sub_27562792C(v12, v13, &v17);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_275623000, v8, v9, "Unable to get proxy object %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x277C81E50](v11, -1, -1);
    MEMORY[0x277C81E50](v10, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t ICQUIRemoteExtensionEntry.startConnection(context:completion:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v41 = a3;
  v5 = sub_275796280();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - v9;
  v11 = sub_275700E70();
  v35 = *(v6 + 16);
  v36 = v11;
  v35(v10);

  v12 = sub_275796270();
  v13 = sub_275798310();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v40 = v6;
    v15 = v14;
    v16 = swift_slowAlloc();
    v42 = v16;
    *v15 = 136315906;
    *(v15 + 4) = sub_27562792C(0xD000000000000028, 0x80000002757BAD20, &v42);
    v38 = a2;
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_27562792C(0xD000000000000024, 0x80000002757BAD50, &v42);
    *(v15 + 22) = 2048;
    *(v15 + 24) = 100;
    *(v15 + 32) = 2080;
    v17 = sub_275797EC0();
    v19 = sub_27562792C(v17, v18, &v42);

    *(v15 + 34) = v19;
    a2 = v38;
    _os_log_impl(&dword_275623000, v12, v13, "%s: %s - line %ld: Connection to extension has been established!, setting offer context %s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x277C81E50](v16, -1, -1);
    v20 = v15;
    v6 = v40;
    MEMORY[0x277C81E50](v20, -1, -1);
  }

  v21 = *(v6 + 8);
  v21(v10, v5);
  if (sub_27578C160(a1))
  {
    v22 = sub_275797EA0();

    [v39 setOfferContext_];
  }

  else
  {
    v40 = v6;
    v24 = v37;
    (v35)(v37, v36, v5);

    v25 = sub_275796270();
    v26 = sub_2757982F0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v38 = a2;
      v29 = v28;
      v42 = v28;
      *v27 = 136315138;
      v30 = sub_275797EC0();
      v32 = sub_27562792C(v30, v31, &v42);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_275623000, v25, v26, "Invalid context %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      a2 = v38;
      MEMORY[0x277C81E50](v33, -1, -1);
      MEMORY[0x277C81E50](v27, -1, -1);
    }

    v23 = (v21)(v24, v5);
  }

  return a2(v23);
}

unint64_t sub_27578C160(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FDAC8);
    v2 = sub_275798870();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_27576794C(*(a1 + 48) + 40 * v12, v27);
        sub_275627B04(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_27576794C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_275627B04(v25 + 8, v20);
        sub_2756C92B4(v24, &unk_280A001B0);
        v21 = v18;
        sub_2756D5AA8(v20, v22);
        v13 = v21;
        sub_2756D5AA8(v22, v23);
        sub_2756D5AA8(v23, &v21);
        result = sub_2756F72B4(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          result = sub_2756D5AA8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_2756D5AA8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_2756C92B4(v24, &unk_280A001B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *sub_27578C530()
{
  v1 = OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_27578C5DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_27578C634@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x58))();
  *a2 = result;
  return result;
}

uint64_t sub_27578C690(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x277D85000] & **a2) + 0x60);
  v4 = *a1;
  return v3(v2);
}

id RemoteExtensionScene.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RemoteExtensionScene.init()()
{
  *&v0[OBJC_IVAR____TtC13iCloudQuotaUI20RemoteExtensionScene_viewController] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteExtensionScene();
  return objc_msgSendSuper2(&v2, sel_init);
}

id RemoteExtensionScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteExtensionScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _sSo25ICQUIRemoteExtensionEntryC13iCloudQuotaUIE34extensionPrepareForSceneConnection4withySo21_EXSceneConfigurationC_tF_0(void *a1)
{
  v2 = sub_275796280();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for RemoteExtensionScene();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = a1;
    [v7 setSceneClass_];
    type metadata accessor for RemoteExtensionViewController();
    [v7 setViewControllerClass_];
    v9 = v15;
  }

  else
  {
    v10 = sub_275700E70();
    (*(v3 + 16))(v5, v10, v2);
    v11 = sub_275796270();
    v12 = sub_2757982F0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275623000, v11, v12, "Unable to retrieve configuration!", v13, 2u);
      MEMORY[0x277C81E50](v13, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27578CA60()
{
  result = qword_280A00138;
  if (!qword_280A00138)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A00138);
  }

  return result;
}

uint64_t sub_27578CB84(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a2;
  v5 = sub_275796280();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - v10;
  v12 = sub_275700E70();
  v39 = *(v6 + 16);
  v39(v11, v12, v5);

  v13 = sub_275796270();
  v14 = sub_275798310();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v12;
    v18 = v17;
    v42 = v17;
    *v16 = 136315906;
    *(v16 + 4) = sub_27562792C(0xD000000000000028, 0x80000002757BAD20, &v42);
    v37 = v5;
    v40 = v6;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_27562792C(0xD000000000000024, 0x80000002757BAD50, &v42);
    *(v16 + 22) = 2048;
    *(v16 + 24) = 100;
    *(v16 + 32) = 2080;
    v19 = sub_275797EC0();
    v21 = sub_27562792C(v19, v20, &v42);

    *(v16 + 34) = v21;
    v6 = v40;
    v5 = v37;
    _os_log_impl(&dword_275623000, v13, v14, "%s: %s - line %ld: Connection to extension has been established!, setting offer context %s", v16, 0x2Au);
    swift_arrayDestroy();
    v22 = v18;
    v12 = v36;
    MEMORY[0x277C81E50](v22, -1, -1);
    v23 = v16;
    a3 = v38;
    MEMORY[0x277C81E50](v23, -1, -1);
  }

  v24 = *(v6 + 8);
  v24(v11, v5);
  if (sub_27578C160(a1))
  {
    v25 = sub_275797EA0();

    [v41 setOfferContext_];
  }

  else
  {
    v39(v9, v12, v5);

    v26 = sub_275796270();
    v27 = sub_2757982F0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40 = v6;
      v30 = v29;
      v42 = v29;
      *v28 = 136315138;
      v31 = sub_275797EC0();
      v33 = sub_27562792C(v31, v32, &v42);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_275623000, v26, v27, "Invalid context %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x277C81E50](v30, -1, -1);
      MEMORY[0x277C81E50](v28, -1, -1);
    }

    v24(v9, v5);
  }

  return (*(a3 + 16))(a3);
}

uint64_t sub_27578D010@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SpecifierRow() + 24);

  return sub_2756E23D8(v3, a1);
}

uint64_t type metadata accessor for SpecifierRow()
{
  result = qword_280A0D6E0;
  if (!qword_280A0D6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27578D0A0()
{
  v1 = *(v0 + *(type metadata accessor for SpecifierRow() + 28));

  return v1;
}

uint64_t sub_27578D0E0()
{
  v1 = *(v0 + *(type metadata accessor for SpecifierRow() + 32));

  return v1;
}

uint64_t sub_27578D120@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v29 = type metadata accessor for SpecifierView();
  MEMORY[0x28223BE20](v29);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00220);
  MEMORY[0x28223BE20](v27);
  v8 = &v25 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00228);
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v25 - v10;
  v12 = type metadata accessor for SpecifierRow();
  v13 = (v1 + *(v12 + 28));
  v14 = v13[1];
  if (v14)
  {
    v15 = *v13;
    v17 = *v1;
    v16 = v1[1];
    v18 = v1[3];
    v26 = v1[2];
    sub_2756E23D8(v1 + *(v12 + 24), v4);

    v19 = nullsub_1(v15, v14);
    sub_2757242A0(v17, v16, v26, v18, v4, v19, v20, v21, v6, v22);
    sub_27578EB10(v6, v8, type metadata accessor for SpecifierView);
    swift_storeEnumTagMultiPayload();
    sub_2756CFA44(&qword_280A00230, &qword_280A00228);
    sub_27578DD44(&qword_280A00238, type metadata accessor for SpecifierView);
    sub_275796D80();
    return sub_27578EB78(v6, type metadata accessor for SpecifierView);
  }

  else
  {
    MEMORY[0x28223BE20](v12);
    sub_27578DD44(&qword_280A00238, type metadata accessor for SpecifierView);

    sub_275797610();
    v24 = v28;
    (*(v9 + 16))(v8, v11, v28);
    swift_storeEnumTagMultiPayload();
    sub_2756CFA44(&qword_280A00230, &qword_280A00228);
    sub_275796D80();
    return (*(v9 + 8))(v11, v24);
  }
}

uint64_t sub_27578D588@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = type metadata accessor for SpecifierRow();
  sub_2756E23D8(a1 + *(v11 + 24), v6);

  return sub_2757242A0(v7, v8, v9, v10, v6, 0, 0, 0, a2, 0);
}

uint64_t sub_27578D67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  v15 = type metadata accessor for SpecifierRow();
  result = sub_275724320(a5, a9 + v15[6]);
  v17 = (a9 + v15[7]);
  *v17 = a6;
  v17[1] = a7;
  v18 = (a9 + v15[8]);
  *v18 = a8;
  v18[1] = a10;
  return result;
}

uint64_t sub_27578D708()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809FD700);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_275795CB0();
  __swift_allocate_value_buffer(v3, qword_280A0D548);
  v4 = __swift_project_value_buffer(v3, qword_280A0D548);
  sub_275795CA0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_27578D838@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_2757969F0();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00248);
  sub_2756CFA44(&qword_280A00250, &qword_280A00248);
  sub_275797040();
  sub_275797850();
  sub_2756CFA44(&qword_280A00258, &qword_280A00240);
  sub_27578DD44(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
  v8 = v10[0];
  sub_2757973C0();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_27578DAA8@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00288);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00290);
  sub_2756CFA44(&qword_280A00298, &qword_280A00290);
  sub_2757977F0();
  sub_2757977F0();
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v15(v6, v12, v2);
  v15(a1, v9, v2);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A002A0);
  v15(&a1[*(v16 + 48)], v6, v2);
  v17 = *(v3 + 8);
  v17(v12, v2);
  v17(v14, v2);
  v17(v6, v2);
  return (v17)(v9, v2);
}

uint64_t sub_27578DD44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27578DD8C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = type metadata accessor for SpecifierRow();
  v2 = MEMORY[0x28223BE20](v1);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v30 = &v27 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  v12 = *(v9 + 24);
  if (qword_280A0D540 != -1)
  {
    swift_once();
  }

  v13 = sub_275795CB0();
  v14 = __swift_project_value_buffer(v13, qword_280A0D548);
  v15 = *(v13 - 8);
  v28 = *(v15 + 16);
  v29 = v14;
  v28(&v11[v12], v14, v13);
  v16 = *(v15 + 56);
  v16(&v11[v12], 0, 1, v13);
  *v11 = 0xD000000000000014;
  *(v11 + 1) = 0x80000002757BAF20;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v17 = &v11[v1[7]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v11[v1[8]];
  *v18 = nullsub_1;
  *(v18 + 1) = 0;
  v19 = v1[6];
  v28(&v8[v19], v29, v13);
  v16(&v8[v19], 0, 1, v13);
  *v8 = 0xD000000000000011;
  *(v8 + 1) = 0x80000002757BAF40;
  *(v8 + 2) = 0xD000000000000012;
  *(v8 + 3) = 0x80000002757BAF60;
  v20 = &v8[v1[7]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v8[v1[8]];
  *v21 = nullsub_1;
  *(v21 + 1) = 0;
  v22 = v30;
  sub_27578EB10(v11, v30, type metadata accessor for SpecifierRow);
  v23 = v31;
  sub_27578EB10(v8, v31, type metadata accessor for SpecifierRow);
  v24 = v32;
  sub_27578EB10(v22, v32, type metadata accessor for SpecifierRow);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A002A8);
  sub_27578EB10(v23, v24 + *(v25 + 48), type metadata accessor for SpecifierRow);
  sub_27578EB78(v8, type metadata accessor for SpecifierRow);
  sub_27578EB78(v11, type metadata accessor for SpecifierRow);
  sub_27578EB78(v23, type metadata accessor for SpecifierRow);
  return sub_27578EB78(v22, type metadata accessor for SpecifierRow);
}

uint64_t sub_27578E0C8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for SpecifierRow();
  v2 = MEMORY[0x28223BE20](v1);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  v12 = *(v9 + 24);
  if (qword_280A0D540 != -1)
  {
    swift_once();
  }

  v13 = sub_275795CB0();
  v26 = __swift_project_value_buffer(v13, qword_280A0D548);
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v15(&v11[v12], v26, v13);
  v16 = *(v14 + 56);
  v16(&v11[v12], 0, 1, v13);
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x80000002757BAEB0;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *&v11[v1[7]] = xmmword_2757AE8B0;
  v17 = &v11[v1[8]];
  *v17 = nullsub_1;
  *(v17 + 1) = 0;
  v18 = v1[6];
  v15(&v8[v18], v26, v13);
  v16(&v8[v18], 0, 1, v13);
  *v8 = 0xD00000000000001ELL;
  *(v8 + 1) = 0x80000002757BAED0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v19 = &v8[v1[7]];
  *v19 = 0x1000000000000026;
  *(v19 + 1) = 0x80000002757BAEF0;
  v20 = &v8[v1[8]];
  *v20 = nullsub_1;
  *(v20 + 1) = 0;
  v21 = v27;
  sub_27578EB10(v11, v27, type metadata accessor for SpecifierRow);
  v22 = v28;
  sub_27578EB10(v8, v28, type metadata accessor for SpecifierRow);
  v23 = v29;
  sub_27578EB10(v21, v29, type metadata accessor for SpecifierRow);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A002A8);
  sub_27578EB10(v22, v23 + *(v24 + 48), type metadata accessor for SpecifierRow);
  sub_27578EB78(v8, type metadata accessor for SpecifierRow);
  sub_27578EB78(v11, type metadata accessor for SpecifierRow);
  sub_27578EB78(v22, type metadata accessor for SpecifierRow);
  return sub_27578EB78(v21, type metadata accessor for SpecifierRow);
}

unint64_t sub_27578E42C()
{
  result = qword_280A00260;
  if (!qword_280A00260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A00260);
  }

  return result;
}

uint64_t sub_27578E49C@<X0>(uint64_t a1@<X8>)
{
  v10[1] = a1;
  v10[0] = sub_2757969F0();
  v1 = *(v10[0] - 8);
  MEMORY[0x28223BE20](v10[0]);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A00248);
  sub_2756CFA44(&qword_280A00250, &qword_280A00248);
  sub_275797040();
  sub_275797850();
  sub_2756CFA44(&qword_280A00258, &qword_280A00240);
  sub_27578DD44(&qword_2809FDD20, MEMORY[0x277CDDAB8]);
  v8 = v10[0];
  sub_2757973C0();
  (*(v1 + 8))(v3, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_27578E70C(uint64_t a1)
{
  v2 = sub_27578EAB4();

  return MEMORY[0x28212D8F0](a1, v2);
}

uint64_t sub_27578E758(uint64_t a1)
{
  v2 = sub_27578EAB4();

  return MEMORY[0x28212D8E0](a1, v2);
}

void sub_27578E7CC()
{
  sub_275766A8C();
  if (v0 <= 0x3F)
  {
    sub_275724A50();
    if (v1 <= 0x3F)
    {
      sub_27578E880();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_27578E880()
{
  result = qword_280A00268;
  if (!qword_280A00268)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280A00268);
  }

  return result;
}

uint64_t sub_27578E8D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27578E920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_27578E974(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_27578E98C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_27578E9CC()
{
  result = qword_280A00270;
  if (!qword_280A00270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A00278);
    sub_2756CFA44(&qword_280A00230, &qword_280A00228);
    sub_27578DD44(&qword_280A00238, type metadata accessor for SpecifierView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A00270);
  }

  return result;
}

unint64_t sub_27578EAB4()
{
  result = qword_280A00280;
  if (!qword_280A00280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A00280);
  }

  return result;
}

uint64_t sub_27578EB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27578EB78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_27578EBDC()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280A0D6F8 = result;
  return result;
}

uint64_t sub_27578EC30()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D8F0);
  __swift_project_value_buffer(v0, qword_280A0D8F0);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578ED84()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D920);
  __swift_project_value_buffer(v0, qword_280A0D920);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578EE74()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D938);
  __swift_project_value_buffer(v0, qword_280A0D938);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578EF64()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D950);
  __swift_project_value_buffer(v0, qword_280A0D950);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F054()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D968);
  __swift_project_value_buffer(v0, qword_280A0D968);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F144()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D980);
  __swift_project_value_buffer(v0, qword_280A0D980);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F234()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D998);
  __swift_project_value_buffer(v0, qword_280A0D998);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F324()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D9B0);
  __swift_project_value_buffer(v0, qword_280A0D9B0);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F480()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0D9E0);
  __swift_project_value_buffer(v0, qword_280A0D9E0);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F598(uint64_t a1, uint64_t *a2)
{
  v3 = sub_275796160();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v4 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F684()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0DA10);
  __swift_project_value_buffer(v0, qword_280A0DA10);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F774()
{
  v0 = sub_275796160();
  __swift_allocate_value_buffer(v0, qword_280A0DA28);
  __swift_project_value_buffer(v0, qword_280A0DA28);
  if (qword_280A0D6F0 != -1)
  {
    swift_once();
  }

  v1 = qword_280A0D6F8;
  return sub_275796150();
}

uint64_t sub_27578F840(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_275796160();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_27578F8B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_275796160();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_280A0D780 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_280A0D774 > a2)
  {
    return 1;
  }

  if (dword_280A0D774 < a2)
  {
    return 0;
  }

  return dword_280A0D778 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_280A0D788 == -1)
  {
    if (qword_280A0D790)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_280A0D790)
    {
      return _availability_version_check();
    }
  }

  if (qword_280A0D780 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_280A0D774 > a3)
      {
        return 1;
      }

      if (dword_280A0D774 >= a3)
      {
        return dword_280A0D778 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_280A0D790;
  if (qword_280A0D790)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_280A0D790 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x277C813C0](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_280A0D774, &dword_280A0D778);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}