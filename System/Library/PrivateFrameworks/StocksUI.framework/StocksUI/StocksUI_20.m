unint64_t sub_2206A39CC()
{
  result = qword_27CF58A20;
  if (!qword_27CF58A20)
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, &qword_27CF58A20);
  }

  return result;
}

unint64_t sub_2206A3A40()
{
  result = qword_27CF58A30;
  if (!qword_27CF58A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A30);
  }

  return result;
}

unint64_t sub_2206A3A94()
{
  result = qword_27CF58A40;
  if (!qword_27CF58A40)
  {
    sub_22044D56C(255, &qword_28127E768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A40);
  }

  return result;
}

unint64_t sub_2206A3B20()
{
  result = qword_27CF58A50;
  if (!qword_27CF58A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A50);
  }

  return result;
}

unint64_t sub_2206A3B78()
{
  result = qword_27CF58A58;
  if (!qword_27CF58A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A58);
  }

  return result;
}

uint64_t sub_2206A3BCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2206A3C78(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2206A3D20(char *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v115 = a2;
  v7 = type metadata accessor for StockChartDescriptor();
  v8 = *(v7 - 8);
  v117 = (v7 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v7 - 8, v9);
  v99 = v10;
  v103 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22088516C();
  v106 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v11);
  v109 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_220890E5C();
  v113 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v13);
  v101 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v102 = &v97 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v97 - v20;
  MEMORY[0x28223BE20](v22, v23);
  v108 = &v97 - v24;
  v97 = v25;
  MEMORY[0x28223BE20](v26, v27);
  v116 = &v97 - v28;
  v111 = sub_2208865FC();
  v29 = *(v111 - 8);
  MEMORY[0x28223BE20](v111, v30);
  v32 = &v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_22046DA2C(v3 + 16, v121);
  v34 = v122;
  v33 = v123;
  v114 = __swift_project_boxed_opaque_existential_1(v121, v122);
  v35 = *(*(v33 + 8) + 8);
  v119 = v34;
  v120 = v33;
  __swift_allocate_boxed_opaque_existential_1(&v118);
  v105 = v115;
  v35();
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4 + 16);
  v104 = v4;
  sub_220457328(&v118, v4 + 16);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v121);
  v36 = *(v117 + 7);
  v100 = a1;
  v37 = *&a1[v36];
  v38 = *(v37 + 16);
  if (v38)
  {
    v41 = *(v29 + 16);
    v40 = v29 + 16;
    v39 = v41;
    v42 = v37 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v115 = *(v40 + 56);
    ++v106;
    v43 = (v40 - 8);
    v114 = v113 + 32;
    v117 = MEMORY[0x277D84F90];
    v44 = v112;
    v45 = v111;
    v107 = v41;
    v41(v32, v42, v111);
    while (1)
    {
      sub_2208865DC();
      if (v46)
      {
        (*v43)(v32, v45);
      }

      else
      {
        v47 = v21;
        v48 = v45;
        v49 = v109;
        sub_2208865BC();
        sub_2208850FC();
        (*v106)(v49, v110);
        sub_22089185C();
        v50 = v108;
        sub_220890E3C();
        (*v43)(v32, v48);
        v51 = *v114;
        (*v114)(v116, v50, v44);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v52 = v117;
        }

        else
        {
          v52 = sub_2204B36BC(0, v117[2] + 1, 1, v117);
        }

        v54 = v52[2];
        v53 = v52[3];
        v55 = v113;
        v21 = v47;
        if (v54 >= v53 >> 1)
        {
          v58 = sub_2204B36BC(v53 > 1, v54 + 1, 1, v52);
          v55 = v113;
          v52 = v58;
        }

        v39 = v107;
        v52[2] = v54 + 1;
        v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v117 = v52;
        v57 = v52 + v56 + *(v55 + 72) * v54;
        v44 = v112;
        v51(v57, v116, v112);
        v45 = v111;
      }

      v42 += v115;
      if (!--v38)
      {
        break;
      }

      v39(v32, v42, v45);
    }
  }

  else
  {
    v117 = MEMORY[0x277D84F90];
    v44 = v112;
  }

  v59 = v117[2];
  if (v59 >= 2)
  {
    v62 = *(v113 + 16);
    v63 = *(v113 + 80);
    v114 = ~v63;
    v115 = v63;
    v64 = v117 + ((v63 + 32) & ~v63);
    v65 = *(v113 + 72);
    v66 = (v113 + 8);
    v67 = 0.0;
    v68 = 1.79769313e308;
    v111 = v64;
    v116 = v59;
    do
    {
      v62(v21, v64, v44);
      sub_220890E2C();
      if (v68 >= v69)
      {
        v68 = v69;
      }

      sub_220890E2C();
      v71 = v70;
      v72 = *v66;
      (*v66)(v21, v44);
      if (v71 > v67)
      {
        v67 = v71;
      }

      v64 += v65;
      --v59;
    }

    while (v59);
    v73 = v100;
    v74 = COERCE_DOUBLE(sub_22088658C());
    if (v75)
    {
      v76 = v116;
    }

    else
    {
      v77 = v74;
      if (v68 < v74)
      {
        v77 = v68;
      }

      v68 = 0.0;
      v76 = v116;
      if (v77 > 0.0)
      {
        v68 = v77;
      }
    }

    *&result = COERCE_DOUBLE(sub_22088658C());
    if (v78)
    {
      v79 = v117;
    }

    else
    {
      v79 = v117;
      if (v67 < *&result)
      {
        v67 = *&result;
      }
    }

    if (v76 > v79[2])
    {
      __break(1u);
    }

    else
    {
      v80 = (v67 - v68) * 0.02;
      v81 = v67 + v80;
      v82 = v68 - v80;
      if (v82 > 0.0)
      {
        v83 = v82;
      }

      else
      {
        v83 = 0.0;
      }

      v84 = v111 + v65 * (v76 - 1);
      v85 = v102;
      v117 = v79;
      v62(v102, v84, v44);
      v86 = v104;
      __swift_project_boxed_opaque_existential_1((v104 + 56), *(v104 + 80));
      v87 = v105;
      v116 = sub_2205B7DC4(v73, v105, v83, v81, a3);
      __swift_project_boxed_opaque_existential_1((v86 + 56), *(v86 + 80));
      v111 = sub_2205B885C(v73, v87, a3);
      sub_2206A60E0(v73, v103);
      v62(v101, v85, v44);
      v88 = (*(v98 + 80) + 24) & ~*(v98 + 80);
      v89 = (v99 + v115 + v88) & v114;
      v90 = (v97 + v89 + 7) & 0xFFFFFFFFFFFFFFF8;
      v91 = (v90 + 15) & 0xFFFFFFFFFFFFFFF8;
      v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
      v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
      v94 = swift_allocObject();
      *(v94 + 16) = v104;
      sub_2206A6144(v103, v94 + v88);
      v95 = v112;
      (*(v113 + 32))(v94 + v89, v101, v112);
      *(v94 + v90) = v117;
      *(v94 + v91) = v111;
      *(v94 + v92) = v83;
      *(v94 + v93) = v81;
      *(v94 + ((v93 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
      sub_22069A564();
      swift_allocObject();

      *&v96 = COERCE_DOUBLE(sub_220890E7C());

      v72(v102, v95);
      return v96;
    }
  }

  else
  {

    sub_22048D2F4();
    v60 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();

    *&result = 0.0;
  }

  return result;
}

uint64_t sub_2206A4760@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v66 = a5;
  v75 = a4;
  v72 = a6;
  v13 = sub_22088543C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v68 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_22089122C();
  MEMORY[0x28223BE20](v65, v16);
  v64 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1C48();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v73 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_220890C7C();
  MEMORY[0x28223BE20](v63, v21);
  v74 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1D3C();
  v76 = v23;
  v71 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v24);
  v67 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v70 = &v62 - v28;
  v77 = sub_220890E5C();
  v29 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v30);
  v83 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v62 - v34;
  v69 = a1;
  v85 = sub_2206A633C(a1, a2);
  v36 = *(a3 + 16);
  if (v36)
  {
    v37 = 0;
    v39 = *(v29 + 16);
    v38 = v29 + 16;
    v79 = (*(v38 + 64) + 32) & ~*(v38 + 64);
    v40 = a3 + v79;
    v41 = *(v38 + 56);
    v78 = (v38 - 8);
    v81 = (v38 + 16);
    v82 = v39;
    v84 = MEMORY[0x277D84F90];
    v42 = v77;
    v39(v35, a3 + v79, v77);
    while (1)
    {
      v86[0] = sub_220890E4C();
      v86[1] = v43;
      MEMORY[0x28223BE20](v86[0], v43);
      v61 = v86;
      v44 = sub_2206A3BCC(sub_2206A6AB8, (&v62 - 4), v85);

      if (v44)
      {
        v80 = v37;
        v45 = v38;
        v46 = *v81;
        (*v81)(v83, v35, v42);
        v47 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22070C2E4(0, *(v47 + 16) + 1, 1);
          v42 = v77;
          v47 = v87;
        }

        v50 = *(v47 + 16);
        v49 = *(v47 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22070C2E4(v49 > 1, v50 + 1, 1);
          v42 = v77;
          v47 = v87;
        }

        *(v47 + 16) = v50 + 1;
        v84 = v47;
        v46((v47 + v79 + v50 * v41), v83, v42);
        v38 = v45;
        v37 = v80;
      }

      else
      {
        (*v78)(v35, v42);
      }

      v40 += v41;
      if (!--v36)
      {
        break;
      }

      v82(v35, v40, v42);
    }
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
  }

  MEMORY[0x223D80A20](v85, MEMORY[0x277D837D0], MEMORY[0x277D837F8], MEMORY[0x277D6CFA8]);

  result = sub_220890C6C();
  if (a7 > a8)
  {
    __break(1u);
  }

  else
  {
    v52 = sub_22089109C();
    swift_allocObject();

    v53 = sub_22089108C();
    v86[3] = v52;
    v86[4] = MEMORY[0x277D6C770];
    v86[0] = v53;
    sub_22089121C();
    v54 = v70;
    sub_220890DBC();
    v55 = v71;
    (*(v71 + 16))(v67, v54, v76);
    sub_2206A68B4();
    sub_2204B1AFC();
    *(swift_allocObject() + 16) = xmmword_220899360;
    v56 = MEMORY[0x277D6C6B0];
    sub_2204B1C00(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
    sub_2204B1C00(&qword_28127EDC8, v56);
    sub_2204B1C00(&qword_28127EDC0, v56);
    sub_22089119C();
    sub_22088659C();
    sub_220890CEC();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v58 = objc_opt_self();
    v59 = [v58 bundleForClass_];
    v61 = 0x80000002208CCE80;
    sub_220884CAC();

    sub_220890CFC();
    v60 = [v58 bundleForClass_];
    v61 = 0x80000002208CCEA0;
    sub_220884CAC();

    sub_220890D0C();
    return (*(v55 + 8))(v54, v76);
  }

  return result;
}

uint64_t sub_2206A500C(uint64_t a1, void *a2, double a3)
{
  v90 = a2;
  v88 = a1;
  v100 = type metadata accessor for StockChartDescriptor();
  v85 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v5);
  v86 = v6;
  v87 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22088516C();
  v91 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v7);
  v94 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_220890E5C();
  v98 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v9);
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v93 = &v82 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v101 = &v82 - v16;
  v83 = v17;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v82 - v20;
  v96 = sub_2208865FC();
  v99 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v22);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_22088661C();
  v25 = *(v102 - 1);
  MEMORY[0x28223BE20](v102, v26);
  v28 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  swift_beginAccess();
  sub_22046DA2C(v3 + 16, v106);
  v29 = v107;
  v30 = v108;
  __swift_project_boxed_opaque_existential_1(v106, v107);
  v31 = *(v30 + 8);
  v32 = *(v31 + 8);
  v104 = v29;
  v105 = v30;
  v33 = v88;
  __swift_allocate_boxed_opaque_existential_1(&v103);
  v32(v90, v29, v31);
  v34 = v89;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v34 + 16);
  sub_220457328(&v103, v34 + 16);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v106);
  v35 = sub_22088663C();
  v36 = v102;
  (*(v25 + 104))(v28, *MEMORY[0x277D697A8], v102);
  v37 = sub_2206FA0F0(v28, v35);

  (*(v25 + 8))(v28, v36);
  result = 0;
  if (v37)
  {
    v39 = *(v33 + *(v100 + 20));
    v40 = *(v39 + 16);
    if (v40)
    {
      v41 = v99 + 16;
      v42 = *(v99 + 2);
      v43 = v39 + ((v99[80] + 32) & ~v99[80]);
      v100 = *(v99 + 9);
      ++v91;
      v44 = (v99 + 8);
      v99 = (v98 + 32);
      v102 = MEMORY[0x277D84F90];
      v45 = v97;
      v46 = v96;
      v92 = v42;
      v42(v24, v43, v96);
      while (1)
      {
        sub_2208865EC();
        if (v47)
        {
          (*v44)(v24, v46);
        }

        else
        {
          v48 = v41;
          v49 = v46;
          v50 = v94;
          sub_2208865BC();
          sub_2208850FC();
          (*v91)(v50, v95);
          sub_22089185C();
          v51 = v93;
          sub_220890E3C();
          (*v44)(v24, v49);
          v52 = *v99;
          (*v99)(v101, v51, v45);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v53 = v102;
          }

          else
          {
            v53 = sub_2204B36BC(0, v102[2] + 1, 1, v102);
          }

          v55 = v53[2];
          v54 = v53[3];
          v41 = v48;
          if (v55 >= v54 >> 1)
          {
            v53 = sub_2204B36BC(v54 > 1, v55 + 1, 1, v53);
          }

          v42 = v92;
          v53[2] = v55 + 1;
          v56 = (*(v98 + 80) + 32) & ~*(v98 + 80);
          v102 = v53;
          v57 = v53 + v56 + *(v98 + 72) * v55;
          v45 = v97;
          v52(v57, v101, v97);
          v46 = v96;
        }

        v43 += v100;
        if (!--v40)
        {
          break;
        }

        v42(v24, v43, v46);
      }
    }

    else
    {
      v102 = MEMORY[0x277D84F90];
      v45 = v97;
    }

    v58 = v102[2];
    if (v58)
    {
      v59 = *(v98 + 16);
      v60 = *(v98 + 80);
      v100 = ~v60;
      v61 = v102 + ((v60 + 32) & ~v60);
      v62 = *(v98 + 72);
      v63 = (v98 + 8);
      v64 = 0.0;
      v65 = 1.79769313e308;
      v99 = v61;
      v101 = v58;
      do
      {
        v59(v21, v61, v45);
        sub_220890E2C();
        if (v65 >= v66)
        {
          v65 = v66;
        }

        sub_220890E2C();
        v68 = v67;
        result = (*v63)(v21, v45);
        if (v68 > v64)
        {
          v64 = v68;
        }

        v61 += v62;
        --v58;
      }

      while (v58);
      if (v101 > v102[2])
      {
        __break(1u);
      }

      else
      {
        v69 = &v99[v62 * (v101 - 1)];
        v70 = v87;
        sub_2206A60E0(v88, v87);
        v71 = v84;
        v72 = v97;
        v59(v84, v69, v97);
        v73 = (*(v85 + 80) + 24) & ~*(v85 + 80);
        v74 = (v86 + v60 + v73) & v100;
        v75 = (v83 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
        v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
        v77 = swift_allocObject();
        *(v77 + 16) = v89;
        sub_2206A6144(v70, v77 + v73);
        (*(v98 + 32))(v77 + v74, v71, v72);
        *(v77 + v75) = v102;
        v78 = v77 + v76;
        *v78 = xmmword_2208A9580;
        *(v78 + 16) = v65;
        *(v78 + 24) = v64;
        v79 = v77 + ((v76 + 39) & 0xFFFFFFFFFFFFFFF8);
        v80 = v90;
        *v79 = v90;
        *(v79 + 8) = a3;
        sub_22069A924();
        swift_allocObject();

        v81 = v80;
        return sub_220890E7C();
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2206A5964@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X8>, double a6@<D2>, double a7@<D3>)
{
  v62 = a4;
  v63 = a5;
  v12 = sub_220890CBC();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v61 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220890EEC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v60 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22089122C();
  MEMORY[0x28223BE20](v58, v18);
  v57 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1C48();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v64 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_220890C7C();
  MEMORY[0x28223BE20](v56, v23);
  v65 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1D3C();
  MEMORY[0x28223BE20](v25 - 8, v26);
  v59 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_220890E5C();
  v28 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v29);
  v72 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v55 - v33;
  v74 = sub_2206A633C(a1, a2);
  v35 = *(a3 + 16);
  if (v35)
  {
    v36 = 0;
    v38 = *(v28 + 16);
    v37 = v28 + 16;
    v68 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v39 = a3 + v68;
    v40 = *(v37 + 56);
    v67 = (v37 - 8);
    v70 = (v37 + 16);
    v71 = v38;
    v73 = MEMORY[0x277D84F90];
    v41 = v66;
    v38(v34, a3 + v68, v66);
    while (1)
    {
      v75[0] = sub_220890E4C();
      v75[1] = v42;
      MEMORY[0x28223BE20](v75[0], v42);
      *(&v55 - 2) = v75;
      v43 = sub_2206A3BCC(sub_2206A6898, (&v55 - 4), v74);

      if (v43)
      {
        v69 = v36;
        v44 = v37;
        v45 = *v70;
        (*v70)(v72, v34, v41);
        v46 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v46;
        v76 = v46;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22070C2E4(0, *(v46 + 16) + 1, 1);
          v41 = v66;
          v48 = v76;
        }

        v50 = *(v48 + 16);
        v49 = *(v48 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_22070C2E4(v49 > 1, v50 + 1, 1);
          v41 = v66;
          v48 = v76;
        }

        *(v48 + 16) = v50 + 1;
        v73 = v48;
        v45((v48 + v68 + v50 * v40), v72, v41);
        v37 = v44;
        v36 = v69;
      }

      else
      {
        (*v67)(v34, v41);
      }

      v39 += v40;
      if (!--v35)
      {
        break;
      }

      v71(v34, v39, v41);
    }
  }

  else
  {
    v73 = MEMORY[0x277D84F90];
  }

  MEMORY[0x223D80A20](v74, MEMORY[0x277D837D0], MEMORY[0x277D837F8], MEMORY[0x277D6CFA8]);
  result = sub_220890C6C();
  if (a6 > a7)
  {
    __break(1u);
  }

  else
  {
    v52 = sub_22089109C();
    swift_allocObject();
    v53 = sub_22089108C();
    v75[3] = v52;
    v75[4] = MEMORY[0x277D6C770];
    v75[0] = v53;
    sub_22089121C();
    sub_220890DBC();
    sub_2206A68B4();
    sub_2204B1AFC();
    *(swift_allocObject() + 16) = xmmword_220899360;
    v54 = MEMORY[0x277D6C6B0];
    sub_2204B1C00(&qword_28127EDB8, MEMORY[0x277D6C6B0]);
    sub_2204B1C00(&qword_28127EDC8, v54);
    sub_2204B1C00(&qword_28127EDC0, v54);
    sub_22089119C();
    sub_220890CAC();
    [v62 layoutDirection];
    sub_220890EDC();
    return sub_220890DEC();
  }

  return result;
}

uint64_t sub_2206A60E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockChartDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206A6144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockChartDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206A61A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StockChartDescriptor() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220890E5C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8);
  v11 = *(v1 + v9 + 16);
  v12 = *(v1 + v9 + 24);
  v13 = *(v1 + ((v9 + 39) & 0xFFFFFFFFFFFFFFF8));

  return sub_2206A5964(v1 + v4, v1 + v7, v10, v13, a1, v11, v12);
}

uint64_t sub_2206A62E4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2208928BC() & 1;
  }
}

uint64_t sub_2206A633C(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for StockChartDescriptor();
  v4 = *(a1 + *(v3 + 28));

  result = sub_220890ECC();
  v7 = v6 / 3.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_64;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v7 < 9.22337204e18)
  {
    v8 = v7;
    if (*(v4 + 16) > v7)
    {
      v53 = *(a1 + *(v3 + 32));
      v9 = *(v53 + 16);
      v47 = v9;
      v48 = v7;
      while (2)
      {
        v10 = *(v4 + 16);
        if (v9 <= 3)
        {
          if (v10 <= 4)
          {
            goto LABEL_54;
          }

LABEL_10:
          if (__OFSUB__(v10, v8))
          {
LABEL_59:
            __break(1u);
          }

          else
          {
            v11 = floorf(v10 / (v10 - v8));
            if ((LODWORD(v11) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
            {
              if (v11 > -9.2234e18)
              {
                if (v11 < 9.2234e18)
                {
                  v12 = v11 + 1;
                  if (!__OFADD__(v11, 1))
                  {

                    v13 = 0;
                    v14 = v4 + 40;
                    v52 = v10;
                    v49 = v10 - 1;
                    v15 = MEMORY[0x277D84F90];
                    v55 = v4;
                    v50 = v4 + 40;
                    do
                    {
                      v51 = v15;
                      v16 = (v14 + 16 * v13);
                      v17 = v13;
                      while (1)
                      {
                        v18 = *(v4 + 16);
                        if (v17 >= v18)
                        {
                          __break(1u);
LABEL_58:
                          __break(1u);
                          goto LABEL_59;
                        }

                        if (!v12)
                        {
                          goto LABEL_58;
                        }

                        v19 = *(v16 - 1);
                        v20 = *v16;
                        v21 = v18 - 1;
                        v22 = !v17 || v17 == v21;
                        v23 = v22;

                        v25 = v19 == sub_220890E4C() && v20 == v24;
                        v26 = v25 ? 1 : sub_2208928BC();

                        v56[0] = v19;
                        v56[1] = v20;
                        MEMORY[0x28223BE20](v27, v28);
                        v46[2] = v56;
                        v29 = sub_2206A3BCC(sub_2206A6AB8, v46, v53);
                        v30 = v17 % v12 ? 1 : v23;
                        if (v30 & 1) != 0 || (v26 & 1) != 0 || (v29)
                        {
                          break;
                        }

                        ++v17;

                        v16 += 2;
                        v4 = v55;
                        if (v52 == v17)
                        {
                          v15 = v51;
                          goto LABEL_44;
                        }
                      }

                      v15 = v51;
                      result = swift_isUniquelyReferenced_nonNull_native();
                      v57 = v15;
                      if ((result & 1) == 0)
                      {
                        result = sub_22070C2C4(0, v15[2] + 1, 1);
                        v15 = v57;
                      }

                      v32 = v15[2];
                      v31 = v15[3];
                      if (v32 >= v31 >> 1)
                      {
                        result = sub_22070C2C4((v31 > 1), v32 + 1, 1);
                        v15 = v57;
                      }

                      v13 = v17 + 1;
                      v15[2] = v32 + 1;
                      v33 = &v15[3 * v32];
                      v33[4] = v17;
                      v33[5] = v19;
                      v33[6] = v20;
                      v14 = v50;
                      v4 = v55;
                    }

                    while (v49 != v17);
LABEL_44:

                    v34 = v15[2];
                    if (v34)
                    {
                      v56[0] = MEMORY[0x277D84F90];
                      sub_22048EE54(0, v34, 0);
                      v35 = v56[0];
                      v36 = v15 + 6;
                      do
                      {
                        v37 = *(v36 - 1);
                        v38 = *v36;
                        v56[0] = v35;
                        v40 = *(v35 + 16);
                        v39 = *(v35 + 24);

                        if (v40 >= v39 >> 1)
                        {
                          sub_22048EE54((v39 > 1), v40 + 1, 1);
                          v35 = v56[0];
                        }

                        *(v35 + 16) = v40 + 1;
                        v41 = v35 + 16 * v40;
                        *(v41 + 32) = v37;
                        *(v41 + 40) = v38;
                        v36 += 3;
                        --v34;
                      }

                      while (v34);

                      v4 = v55;
                    }

                    else
                    {

                      v35 = MEMORY[0x277D84F90];
                    }

                    v56[0] = v35;
                    sub_2204ADED0();
                    sub_2204B1C00(&qword_28127E9A0, sub_2204ADED0);
                    v42 = sub_2208915CC();

                    v43 = *(v42 + 16);
                    v44 = *(v4 + 16);

                    if (v43 == v44)
                    {
                      return v42;
                    }

                    v4 = v42;
                    v9 = v47;
                    v8 = v48;
                    if (v43 > v48)
                    {
                      continue;
                    }

LABEL_55:
                    v56[0] = v42;
                    sub_2204ADED0();
                    sub_2204B1C00(&qword_28127E9A0, sub_2204ADED0);

                    v45 = sub_2208915CC();
                    swift_bridgeObjectRelease_n();
                    return v45;
                  }

                  goto LABEL_63;
                }

LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

LABEL_61:
              __break(1u);
              goto LABEL_62;
            }
          }

          __break(1u);
          goto LABEL_61;
        }

        break;
      }

      if (v9 < v10)
      {
        goto LABEL_10;
      }
    }

LABEL_54:
    v42 = v4;
    goto LABEL_55;
  }

LABEL_66:
  __break(1u);
  return result;
}

void sub_2206A68B4()
{
  if (!qword_28127DEF8)
  {
    sub_2204B1AFC();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DEF8);
    }
  }
}

uint64_t sub_2206A690C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StockChartDescriptor() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220890E5C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + v8);
  v13 = *(v1 + v9);
  v14 = *(v1 + v10);
  v15 = *(v1 + v11);
  v16 = *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2206A4760(v1 + v4, v1 + v7, v12, v13, v16, a1, v14, v15);
}

uint64_t sub_2206A6A50(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2208928BC() & 1;
  }
}

uint64_t sub_2206A6AEC()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 1;
  sub_2204643A4(0, &qword_281298CC8);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58A60 = result;
  return result;
}

uint64_t sub_2206A6CE0()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[0] = 0xD00000000000003ELL;
  v11[1] = 0x80000002208CCFD0;
  sub_2204643A4(0, &qword_281298CD0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58A68 = result;
  return result;
}

uint64_t static Settings.ForYou.ConfigOverrides.url.getter()
{
  if (qword_27CF55AF0 != -1)
  {
    swift_once();
  }
}

uint64_t Settings.ForYou.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.ForYou.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.ForYou.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8StocksUIE4TipsV8EarningsV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2206A7198()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v12 - v8;
  (*(v1 + 104))(&v12 - v8, *MEMORY[0x277D6D098], v0, v7);
  type metadata accessor for Settings.ForYou.ConfigOverrides();
  swift_allocObject();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_220886B6C();
  result = (*(v1 + 8))(v9, v0);
  qword_281298EE0 = v10;
  return result;
}

uint64_t sub_2206A7354()
{
  v0 = sub_220886BDC();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v23 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_220886BEC();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v20 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FB1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v19 - v13;
  sub_2206A7890();
  v19[0] = "ttings6ForYou15ConfigOverrides";
  v19[1] = v15;
  v16 = *MEMORY[0x277D325C0];
  v17 = *(v7 + 104);
  v17(v14, v16, v6);
  sub_2206A7944(0, &qword_28127E188, sub_2206A7910, MEMORY[0x277D84560]);
  sub_2206A7910(0);
  *(swift_allocObject() + 16) = xmmword_22089B140;
  v17(v10, v16, v6);
  sub_220886BFC();
  v17(v10, *MEMORY[0x277D325C8], v6);
  sub_220886BFC();
  v17(v10, *MEMORY[0x277D325B8], v6);
  sub_220886BFC();
  (*(v21 + 104))(v20, *MEMORY[0x277D6D0A8], v22);
  (*(v24 + 104))(v23, *MEMORY[0x277D6D090], v25);
  sub_2206A79A8(&qword_281296A80);
  result = sub_220886C1C();
  qword_281298EB0 = result;
  return result;
}

uint64_t type metadata accessor for Settings.ForYou.ConfigOverrides()
{
  result = qword_281298F10;
  if (!qword_281298F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206A7890()
{
  if (!qword_281298CE0)
  {
    sub_22088FB1C();
    sub_2206A79A8(&qword_281296A78);
    v0 = sub_220886C4C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298CE0);
    }
  }
}

void sub_2206A7944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2206A79A8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22088FB1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2206A79EC()
{
  v1 = sub_22088D61C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 104), *(v0 + 128));
  sub_22088FECC();
  sub_2206AA78C();
  v6 = *MEMORY[0x277D6E758];
  v7 = *(v2 + 104);
  v7(v5, v6, v1);
  sub_220891C2C();
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_2206AA6C4();
  v7(v5, v6, v1);
  sub_220891C2C();
  v8(v5, v1);
  sub_2206AA4DC();
  v7(v5, v6, v1);
  sub_220891C2C();
  return (v8)(v5, v1);
}

uint64_t sub_2206A7BE0(uint64_t a1, uint64_t a2, char *a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v225 = a4;
  v224 = a2;
  v216 = sub_22088CA0C();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216, v6);
  v217 = &v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_2208852DC();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212, v8);
  v234 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2208857EC();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v10);
  v204 = &v198 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_22088699C();
  v205 = *(v206 - 8);
  MEMORY[0x28223BE20](v206, v12);
  v232 = (&v198 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v15);
  v227 = &v198 - v16;
  v238 = sub_220885D4C();
  v233 = *(v238 - 1);
  MEMORY[0x28223BE20](v238, v17);
  v231 = &v198 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v230 = &v198 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v214 = &v198 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v202 = &v198 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v201 = &v198 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v200 = &v198 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v199 = &v198 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v239 = (&v198 - v39);
  MEMORY[0x28223BE20](v40, v41);
  v229 = &v198 - v42;
  v241 = sub_22088685C();
  v240 = *(v241 - 8);
  MEMORY[0x28223BE20](v241, v43);
  v213 = &v198 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v46);
  v237 = &v198 - v47;
  v228 = type metadata accessor for StockViewModel();
  v203 = *(v228 - 8);
  MEMORY[0x28223BE20](v228, v48);
  v210 = &v198 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = v49;
  MEMORY[0x28223BE20](v50, v51);
  v243 = &v198 - v52;
  v53 = type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  MEMORY[0x28223BE20](v53 - 8, v54);
  v236 = &v198 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v198, v56);
  v235 = &v198 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_2208854AC();
  v220 = *(v221 - 8);
  MEMORY[0x28223BE20](v221, v58);
  v219 = &v198 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_22088D61C();
  v222 = *(v223 - 8);
  MEMORY[0x28223BE20](v223, v60);
  v62 = &v198 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v63, v64);
  v66 = &v198 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v242 = v4;
  sub_22046DA2C(v4 + 64, &v244);
  v67 = *(&v245 + 1);
  v68 = v246;
  __swift_project_boxed_opaque_existential_1(&v244, *(&v245 + 1));
  v226 = a3;
  v69 = [a3 traitCollection];
  v70 = *(v68 + 8);
  v71 = *(v70 + 8);
  v252[3] = v67;
  v252[4] = v68;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v252);
  v71(v69, v67, v70);

  __swift_destroy_boxed_opaque_existential_1(&v244);
  sub_22055CD20();
  sub_22088C34C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22055D82C();
    v74 = *(v73 + 48);
    v75 = v235;
    sub_2206AA570(v66, v235, type metadata accessor for StockFeedMastheadModel);
    v76 = v236;
    sub_2206AA570(&v66[v74], v236, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    sub_2206AA4DC();
    sub_22088D42C();
    v77 = v219;
    sub_22088D44C();
    v78 = sub_220891C0C();
    (*(v220 + 8))(v77, v221);
    (*(v222 + 8))(v62, v223);
    v79 = *(v68 + 16);
    v80 = *(v79 + 80);
    v81 = v78;
    v82 = v80(v67, v79);
    [v81 setBackgroundColor_];

    v223 = v81;
    v83 = sub_22088C3AC();
    sub_22067AB0C(v75, v76, v83);

    v84 = v240 + 16;
    v85 = *(v240 + 2);
    v86 = v75;
    v85(v237, v75, v241);
    v87 = v198;
    v88 = v229;
    sub_2204B2954(v75 + *(v198 + 20), v229, sub_22045987C);
    v89 = type metadata accessor for StockSparklineViewModel(0);
    v90 = v230;
    (*(*(v89 - 8) + 56))(v230, 1, 1, v89);
    v91 = *(v87 + 28);
    v92 = v91 + *(type metadata accessor for QuoteViewModel() + 20);
    v93 = *(v233 + 16);
    v94 = v75 + v92;
    v95 = v231;
    v93(v231, v94, v238);
    LODWORD(v222) = *(v86 + *(v87 + 32));
    v96 = v243;
    v226 = v84;
    v225 = v85;
    v85(v243, v237, v241);
    v97 = v228;
    v224 = v96 + *(v228 + 20);
    sub_2204B2954(v88, v224, sub_22045987C);
    sub_2204B2954(v90, v96 + v97[6], sub_2204E99F0);
    v93((v96 + v97[8]), v95, v238);
    *(v96 + v97[9]) = v222;
    v98 = v239;
    sub_2204B2954(v88, v239, sub_22045987C);
    v99 = v227;
    sub_2208867CC();
    v100 = v199;
    sub_2204B2954(v98, v199, sub_22045987C);
    v101 = sub_22088676C();
    v102 = *(v101 - 8);
    v103 = *(v102 + 48);
    if (v103(v100, 1, v101) == 1)
    {
      sub_2204B3B60(v100, sub_22045987C);
      v222 = 0;
      LODWORD(v221) = 1;
    }

    else
    {
      v222 = sub_22088675C();
      LODWORD(v221) = v129;
      (*(v102 + 8))(v100, v101);
    }

    v130 = v200;
    sub_2204B2954(v239, v200, sub_22045987C);
    if (v103(v130, 1, v101) == 1)
    {
      sub_2204B3B60(v130, sub_22045987C);
      v220 = 0;
      LODWORD(v219) = 1;
    }

    else
    {
      v220 = sub_22088666C();
      LODWORD(v219) = v131;
      (*(v102 + 8))(v130, v101);
    }

    v132 = v232;
    v133 = v239;
    v134 = v201;
    sub_2204B2954(v239, v201, sub_22045987C);
    if (v103(v134, 1, v101) == 1)
    {
      sub_2204B3B60(v134, sub_22045987C);
      boxed_opaque_existential_1 = 0;
      LODWORD(v200) = 1;
    }

    else
    {
      boxed_opaque_existential_1 = sub_22088671C();
      LODWORD(v200) = v135;
      (*(v102 + 8))(v134, v101);
    }

    v136 = v133;
    v137 = v202;
    sub_2204B2954(v136, v202, sub_22045987C);
    if (v103(v137, 1, v101) == 1)
    {
      sub_2204B3B60(v137, sub_22045987C);
      v201 = 0;
      v138 = 0;
    }

    else
    {
      v201 = sub_22088668C();
      v138 = v139;
      (*(v102 + 8))(v137, v101);
    }

    v140 = v205;
    v141 = v243 + *(v228 + 28);
    v228 = *(v205 + 16);
    v142 = v206;
    (v228)(v132, v99, v206);
    v143 = v207;
    v144 = v204;
    v145 = v208;
    (*(v207 + 104))(v204, *MEMORY[0x277D69288], v208);
    v146 = v132;
    v147 = v234;
    sub_22088524C();
    *v141 = v222;
    *(v141 + 8) = v221 & 1;
    *(v141 + 16) = v220;
    *(v141 + 24) = v219 & 1;
    *(v141 + 32) = boxed_opaque_existential_1;
    *(v141 + 40) = v200 & 1;
    *(v141 + 48) = v201;
    *(v141 + 56) = v138;
    v148 = type metadata accessor for PriceViewModel();
    (v228)(v141 + v148[10], v146, v142);
    *(v141 + 64) = 9666786;
    *(v141 + 72) = 0xA300000000000000;
    (*(v143 + 16))(v141 + v148[9], v144, v145);
    v149 = v211;
    v150 = v212;
    (*(v211 + 16))(v141 + v148[11], v147, v212);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v151 = qword_2812B6B48;
    (*(v143 + 8))(v144, v145);
    v152 = *(v140 + 8);
    v152(v232, v142);
    v152(v227, v142);
    v232 = sub_22045987C;
    sub_2204B3B60(v239, sub_22045987C);
    (*(v233 + 8))(v231, v238);
    sub_2204B3B60(v230, sub_2204E99F0);
    sub_2204B3B60(v229, sub_22045987C);
    v153 = *(v240 + 1);
    v240 += 8;
    v239 = v153;
    (v153)(v237, v241);
    v154 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    swift_beginAccess();
    (*(v149 + 40))(v151 + v154, v234, v150);
    swift_endAccess();
    v155 = v223;
    v156 = sub_22088C3AC();
    v157 = *&v156[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_watchStockButton];

    v158 = *&v157[qword_28128D5D8];
    v159 = swift_allocObject();
    v160 = v242;
    swift_weakInit();
    v161 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v238 = type metadata accessor for StockViewModel;
    v162 = v210;
    sub_2204B2954(v243, v210, type metadata accessor for StockViewModel);
    v163 = (*(v203 + 80) + 32) & ~*(v203 + 80);
    v164 = swift_allocObject();
    *(v164 + 16) = v159;
    *(v164 + 24) = v161;
    sub_2206AA570(v162, v164 + v163, type metadata accessor for StockViewModel);
    v165 = v155;

    v166 = sub_22088C3AC();
    v167 = *&v166[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_shareButton];

    v168 = *&v167[qword_28128D5D8];
    v169 = swift_allocObject();
    v170 = v160;
    swift_weakInit();
    v171 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2204B2954(v243, v162, v238);
    v172 = swift_allocObject();
    *(v172 + 16) = v169;
    *(v172 + 24) = v171;
    sub_2206AA570(v162, v172 + v163, type metadata accessor for StockViewModel);

    v251 = MEMORY[0x277D84F90];
    (*(v215 + 104))(v217, *MEMORY[0x277D6E0D8], v216);
    v173 = *(v170 + 160);
    *(&v245 + 1) = sub_22088731C();
    *&v246 = sub_2204444DC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    *&v244 = v173;

    v238 = v165;
    v174 = sub_22088C3AC();
    v175 = *&v174[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_moreOptionsButton];

    v253 = 0u;
    v254 = 0u;
    v255 = 1;
    sub_22088C4DC();
    swift_allocObject();
    sub_22088C4BC();
    v176 = v213;
    v177 = v243;
    v178 = v241;
    v179 = v225;
    v225(v213, v243, v241);
    v180 = v214;
    sub_2204B2954(v224, v214, sub_22045987C);
    v181 = type metadata accessor for StockShareActivityItemSource();
    v182 = objc_allocWithZone(v181);
    v179(&v182[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v176, v178);
    sub_2204B2954(v180, &v182[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
    v250.receiver = v182;
    v250.super_class = v181;
    v183 = objc_msgSendSuper2(&v250, sel_init);
    sub_2204B3B60(v180, v232);
    (v239)(v176, v178);
    v184 = sub_22076D084(v183, 1);

    v185 = v177;
    if (v184)
    {
      v186 = sub_22088B0EC();

      v120 = v238;
      if (v186)
      {
        v187 = v186;
        MEMORY[0x223D89870]();
        if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22089177C();
        }

        sub_22089179C();
      }
    }

    else
    {
      v120 = v238;
    }

    _s5TeaUI15ContextMenuItemC06StocksB0E8copyLink5stockAC0F4Core5StockV_tFZ_0(v185);
    v188 = sub_22088B0EC();

    if (v188)
    {
      v189 = v188;
      MEMORY[0x223D89870]();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22089177C();
      }

      sub_22089179C();
    }

    sub_2207E451C(v185);
    v190 = sub_22088B0EC();

    v191 = v236;
    v192 = v235;
    if (v190)
    {
      v193 = v190;
      MEMORY[0x223D89870]();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22089177C();
      }

      sub_22089179C();
    }

    v194 = sub_22088C3AC();
    v195 = *&v194[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_moreOptionsButton];

    sub_22062DFB4();
    v196 = sub_220891F5C();
    [v195 setMenu_];

    sub_2204B3B60(v185, type metadata accessor for StockViewModel);
    sub_2204B3B60(v191, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
    v127 = type metadata accessor for StockFeedMastheadModel;
    v128 = v192;
    goto LABEL_34;
  }

  v241 = v67;
  v104 = v219;
  v243 = v68;
  v105 = v220;
  v106 = v221;
  if (EnumCaseMultiPayload == 1)
  {
    sub_22055DA04();
    v108 = &v66[*(v107 + 48)];
    v109 = *(v108 + 3);
    v248 = *(v108 + 4);
    v249 = *(v108 + 10);
    v110 = *(v108 + 1);
    v111 = *(v108 + 2);
    v247 = v109;
    v246 = v111;
    v244 = *v108;
    v245 = v110;
    v112 = *(&v244 + 1);
    if (*(&v244 + 1))
    {
      v113 = v249;
      v114 = *(&v248 + 1);
      v115 = *&v248;
      v116 = *(&v247 + 1);
      v240 = v245;
      v239 = v244;
      sub_2206AA6C4();
      sub_22088D42C();
      sub_22088D44C();
      v117 = sub_220891C0C();
      (*(v105 + 8))(v104, v106);
      (*(v222 + 8))(v62, v223);
      v118 = *(v243 + 16);
      v119 = *(v118 + 80);
      v120 = v117;
      v121 = v119(v241, v118);
      [v120 setBackgroundColor_];

      v122 = *(v242 + 32);
      v123 = sub_22088C3AC();
      v124 = OBJC_IVAR____TtC8StocksUI17BrandingTitleView_titleLabel;
      [*&v123[OBJC_IVAR____TtC8StocksUI17BrandingTitleView_titleLabel] setFrame_];
      v125 = *&v123[v124];
      swift_beginAccess();
      __swift_project_boxed_opaque_existential_1((v122 + 16), *(v122 + 40));
      v126 = sub_220752A48(v239, v112, v240);
      [v125 setAttributedText_];
      sub_22055D7D8(&v244);

      v127 = sub_2206AA690;
      v128 = v66;
LABEL_34:
      sub_2204B3B60(v128, v127);
      __swift_destroy_boxed_opaque_existential_1(v252);
      return v120;
    }
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_2206A9868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088CA0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v9 + 104))(v12, *MEMORY[0x277D6E118], v8);
    v15 = *(v14 + 160);
    v21[7] = sub_22088731C();
    v21[8] = sub_2204444DC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    v21[4] = v15;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v17 = sub_22088C3AC();

      v18 = *&v17[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_watchStockButton];
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 1;
    sub_22088C4DC();
    swift_allocObject();
    sub_22088C4BC();
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    v19 = sub_22088685C();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v7, a3, v19);
    (*(v20 + 56))(v7, 0, 1, v19);

    sub_22088B7AC();
    sub_2204B3B60(v7, sub_2206AA758);
  }

  return result;
}

void sub_2206A9C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088CA0C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    (*(v14 + 104))(v17, *MEMORY[0x277D6E118], v13);
    v20 = *(v19 + 160);
    v38 = sub_22088731C();
    v39 = sub_2204444DC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    v36 = v20;
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();

    v34 = v19;
    if (v21)
    {
      v22 = sub_22088C3AC();

      v23 = *&v22[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_shareButton];
    }

    v24 = v12;
    v40 = 0u;
    v41 = 0u;
    v42 = 1;
    sub_22088C4DC();
    swift_allocObject();
    sub_22088C4BC();
    v25 = *(v34 + 144);
    v33[4] = *(v34 + 152);
    v33[3] = v25;
    v33[2] = swift_getObjectType();
    if (qword_281297080 != -1)
    {
      swift_once();
    }

    v33[1] = qword_2812B6CA8;
    v26 = *(v9 + 16);
    v27 = v24;
    v26(v24, a3, v8);
    v28 = type metadata accessor for StockViewModel();
    sub_2204B2954(a3 + *(v28 + 20), v7, sub_22045987C);
    v29 = type metadata accessor for StockShareActivityItemSource();
    v30 = v8;
    v31 = objc_allocWithZone(v29);
    v26(&v31[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v24, v30);
    sub_2204B2954(v7, &v31[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
    v35.receiver = v31;
    v35.super_class = v29;
    v32 = objc_msgSendSuper2(&v35, sel_init);
    sub_2204B3B60(v7, sub_22045987C);
    (*(v9 + 8))(v27, v30);
    v36 = v32;
    v37 = 1;

    sub_22088B7AC();
  }
}

uint64_t sub_2206AA0BC()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 168);

  return swift_deallocClassInstance();
}

uint64_t sub_2206AA1A0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 64, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 64);
  sub_220457328(&v9, v2 + 64);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  return sub_22088D31C();
}

void *sub_2206AA3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v25 = a12;
  v26 = a13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a12 - 8) + 32))(boxed_opaque_existential_1, a10, a12);
  v20 = swift_allocObject();
  v20[3] = 0;
  swift_unknownObjectWeakInit();
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  sub_220457328(a5, (v20 + 8));
  sub_220457328(a6, (v20 + 13));
  v20[18] = a7;
  v20[19] = a8;
  v20[20] = a9;
  sub_220457328(&v24, (v20 + 21));
  return v20;
}

void sub_2206AA4DC()
{
  if (!qword_281297978)
  {
    type metadata accessor for StockFeedMastheadView();
    sub_2204444DC(&qword_28128D5B8, type metadata accessor for StockFeedMastheadView);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297978);
    }
  }
}

uint64_t sub_2206AA570(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206AA608(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for StockViewModel() - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return a1(v3, v4, v5);
}

void sub_2206AA6C4()
{
  if (!qword_281297988)
  {
    type metadata accessor for BrandingTitleView();
    sub_2204444DC(&qword_281291A70, type metadata accessor for BrandingTitleView);
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297988);
    }
  }
}

void sub_2206AA78C()
{
  if (!qword_281297960)
  {
    sub_22088B63C();
    v0 = sub_22088C3BC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297960);
    }
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2206AA834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2206AA87C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2206AA8E0(uint64_t a1)
{
  v3 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22088685C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 2, v7);
  sub_220488330(&qword_28128AD90, 255, type metadata accessor for StockListSelectionModel);
  sub_2208886AC();
  sub_2204A27D0(v6, type metadata accessor for StockListSelectionModel);
  v12 = v1;
  v13 = a1;
  sub_22045418C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_220888FBC();
  sub_22046D5B4();
  v9 = sub_220891D0C();

  sub_220888E6C();
}

uint64_t sub_2206AAB24(uint64_t a1)
{
  v2 = MEMORY[0x277D697F8];
  sub_22045418C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for StockListToolbarModel();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B29BC(a1, v6, &qword_2812990C0, v2);
  if (qword_281298D08 != -1)
  {
    swift_once();
  }

  sub_220488330(&qword_281289548, v11, type metadata accessor for StockFeedViewerInteractor);
  sub_220886B3C();
  sub_22084DA0C(v6, v15, v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2206AB5B0(v10, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_2204A27D0(v10, type metadata accessor for StockListToolbarModel);
}

uint64_t sub_2206AAD4C()
{
  v1 = v0;
  v26[1] = *v0;
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v7, v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StockFeedViewerRouteModel();
  MEMORY[0x28223BE20](v11, v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088867C();
  if ((*(v3 + 48))(v18, 2, v2))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = v0[10];
      v21 = v1[11];
      __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
      AttributionProviderType.source.getter(v20, v21);
      sub_2204B29BC(&v10[*(v7 + 20)], v14, &qword_2812994E0, MEMORY[0x277CC9260]);
      sub_2204A27D0(v10, type metadata accessor for AttributionSource);
      swift_storeEnumTagMultiPayload();
      sub_220856B30(v14);
      sub_2204A27D0(v14, type metadata accessor for StockFeedViewerRouteModel);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v22 = (*(v3 + 32))(v6, v18, v2);
    MEMORY[0x28223BE20](v22, v23);
    v26[-2] = v0;
    v26[-1] = v6;
    sub_22045418C(0, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_220888FBC();
    sub_22046D5B4();
    v24 = sub_220891D0C();
    sub_2205EA040();
    sub_220888E6C();

    v25 = sub_220891D0C();
    sub_220888EAC();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2206AB154@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for StockFeedViewerRouteModel();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    sub_2204B29BC(a1, v7, &qword_2812994E0, MEMORY[0x277CC9260]);
    swift_storeEnumTagMultiPayload();
    sub_220856B30(v7);
    sub_2204A27D0(v7, type metadata accessor for StockFeedViewerRouteModel);
    result = swift_unknownObjectRelease();
  }

  *a2 = v9 == 0;
  return result;
}

uint64_t sub_2206AB264(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for AttributionSource();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockFeedViewerRouteModel();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = a2[10];
    v13 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v12);
    AttributionProviderType.source.getter(v12, v13);
    sub_2204B29BC(&v6[*(v3 + 20)], v10, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_2204A27D0(v6, type metadata accessor for AttributionSource);
    swift_storeEnumTagMultiPayload();
    sub_220856B30(v10);
    sub_2204A27D0(v10, type metadata accessor for StockFeedViewerRouteModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2206AB3F0()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_2206AB464()
{
  sub_22045418C(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  sub_220888FBC();
  sub_22046D5B4();
  v0 = sub_220891D0C();

  sub_220888E6C();
}

void sub_2206AB5B0(uint64_t a1, char *a2)
{
  v3 = &a2[OBJC_IVAR____TtC8StocksUI29StockFeedViewerViewController_cardToolbarViewModel];
  swift_beginAccess();
  if (*v3)
  {
    v3[2] = sub_2204CF368();
    v3[3] = v4;
  }

  swift_endAccess();
  if (sub_22088F0DC())
  {
    v5 = *v3;
    if (*v3)
    {
      v7 = v3[2];
      v6 = v3[3];
      v8 = v3[1];

      v9 = v5;
      v10 = v8;
      if (sub_220891C8C())
      {
      }

      else
      {
        v11 = [a2 traitCollection];
        sub_220858320(0.0, 20.0, 0.0, 20.0, v9, v10, v7, v6, v11, 0, 1);

        v10 = v9;
        v9 = v11;
      }
    }
  }
}

uint64_t sub_2206AB6EC()
{
  v1 = *(v0 + 24);
  v2 = off_2834195E8;
  type metadata accessor for StockFeedViewerDataManager();
  return v2(v1);
}

uint64_t sub_2206AB758()
{
  v1 = *(v0 + 24);
  v2 = off_2834195E0[0];
  type metadata accessor for StockFeedViewerDataManager();
  return v2(v1);
}

uint64_t type metadata accessor for ForYouFeedRefreshBlueprintModifier()
{
  result = qword_2812829A0;
  if (!qword_2812829A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206AB868()
{
  result = sub_2204446D4(319, qword_281287430);
  if (v1 <= 0x3F)
  {
    result = sub_2204446D4(319, &unk_2812991E0);
    if (v2 <= 0x3F)
    {
      result = sub_220885D4C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_2206AB93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  refreshed = type metadata accessor for ForYouFeedRefreshBlueprintModifier();
  v7 = *(refreshed - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](refreshed - 8, v9);
  v17 = v3;
  sub_220517CD4();
  sub_220888FBC();
  sub_2206B03D0(v3, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ForYouFeedRefreshBlueprintModifier);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_2206B0438(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10, type metadata accessor for ForYouFeedRefreshBlueprintModifier);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;

  v13 = sub_220888D9C();
  sub_220888E4C();

  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;

  v15 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2206ABB50()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v19 - v12;
  sub_2206AFD90(v0, v19 - v12);
  sub_2206B03D0(v13, v9, sub_2206AA758);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_2206B026C(v9, sub_2206AA758);
    v19[1] = sub_2205CF1B0(MEMORY[0x277D84F90]);
    sub_220454558(0, &qword_281298620, sub_220517CD4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v14 = sub_220888ECC();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
    sub_220454558(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_220899360;
    (*(v2 + 16))(v16 + v15, v5, v1);
    sub_22088632C();

    v17 = sub_220888D9C();
    sub_220517CD4();
    v14 = sub_220888E4C();

    (*(v2 + 8))(v5, v1);
  }

  sub_2206B026C(v13, sub_2206AA758);
  return v14;
}

uint64_t sub_2206ABEA8(uint64_t *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v437 = a4;
  v438 = a3;
  v505 = a2;
  sub_22051D3C4(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v436 = v5;
  v435 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v434 = &v419 - v7;
  sub_22051D97C();
  v492 = v8;
  v473 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v432 = &v419 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v499 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v499, v11);
  v472 = (&v419 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22051DA14();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v490 = &v419 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = sub_2208852DC();
  v420 = *(v464 - 8);
  MEMORY[0x28223BE20](v464, v16);
  v463 = &v419 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = sub_2208857EC();
  v424 = *(v462 - 8);
  MEMORY[0x28223BE20](v462, v18);
  v461 = &v419 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v460 = sub_22088699C();
  v423 = *(v460 - 8);
  MEMORY[0x28223BE20](v460, v20);
  v481 = &v419 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v459 = &v419 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v480 = &v419 - v27;
  v486 = sub_220885D4C();
  v422 = *(v486 - 8);
  MEMORY[0x28223BE20](v486, v28);
  v457 = &v419 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v479 = &v419 - v32;
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v456 = &v419 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v455 = &v419 - v38;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v445 = &v419 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v444 = (&v419 - v44);
  MEMORY[0x28223BE20](v45, v46);
  v454 = &v419 - v47;
  MEMORY[0x28223BE20](v48, v49);
  v443 = (&v419 - v50);
  MEMORY[0x28223BE20](v51, v52);
  v495 = &v419 - v53;
  MEMORY[0x28223BE20](v54, v55);
  v449 = &v419 - v56;
  MEMORY[0x28223BE20](v57, v58);
  v442 = &v419 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v441 = (&v419 - v62);
  MEMORY[0x28223BE20](v63, v64);
  v453 = &v419 - v65;
  MEMORY[0x28223BE20](v66, v67);
  v440 = (&v419 - v68);
  MEMORY[0x28223BE20](v69, v70);
  v491 = &v419 - v71;
  MEMORY[0x28223BE20](v72, v73);
  v452 = &v419 - v74;
  v501 = sub_22088685C();
  v421 = *(v501 - 8);
  MEMORY[0x28223BE20](v501, v75);
  v485 = &v419 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77, v78);
  v478 = &v419 - v79;
  v504 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v504, v80);
  v477 = &v419 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82, v83);
  v471 = &v419 - v84;
  MEMORY[0x28223BE20](v85, v86);
  v484 = &v419 - v87;
  v470 = sub_22088F23C();
  v430 = *(v470 - 8);
  MEMORY[0x28223BE20](v470, v88);
  v487 = &v419 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CuratedForYouFeedGroup();
  MEMORY[0x28223BE20](v90 - 8, v91);
  v469 = (&v419 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
  v458 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v458, v93);
  v451 = &v419 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95, v96);
  v450 = &v419 - v97;
  MEMORY[0x28223BE20](v98, v99);
  v425 = (&v419 - v100);
  v503 = sub_22088FFFC();
  v497 = *(v503 - 8);
  MEMORY[0x28223BE20](v503, v101);
  v467 = &v419 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103, v104);
  v483 = (&v419 - v105);
  MEMORY[0x28223BE20](v106, v107);
  v427 = &v419 - v108;
  MEMORY[0x28223BE20](v109, v110);
  v448 = &v419 - v111;
  sub_2204FA2D0();
  v113 = v112;
  v446 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v114);
  v476 = (&v419 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v116, v117);
  v475 = (&v419 - v118);
  MEMORY[0x28223BE20](v119, v120);
  v428 = &v419 - v121;
  MEMORY[0x28223BE20](v122, v123);
  v439 = &v419 - v124;
  MEMORY[0x28223BE20](v125, v126);
  v447 = &v419 - v127;
  v502 = type metadata accessor for ForYouFeedGroup();
  v429 = *(v502 - 8);
  MEMORY[0x28223BE20](v502, v128);
  v466 = &v419 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v130, v131);
  v465 = &v419 - v132;
  MEMORY[0x28223BE20](v133, v134);
  v474 = &v419 - v135;
  MEMORY[0x28223BE20](v136, v137);
  v482 = (&v419 - v138);
  MEMORY[0x28223BE20](v139, v140);
  v426 = (&v419 - v141);
  MEMORY[0x28223BE20](v142, v143);
  v496 = &v419 - v144;
  MEMORY[0x28223BE20](v145, v146);
  v431 = (&v419 - v147);
  MEMORY[0x28223BE20](v148, v149);
  v151 = &v419 - v150;
  sub_2205252E0();
  MEMORY[0x28223BE20](v152 - 8, v153);
  v154 = sub_22088519C();
  v155 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v156);
  v158 = &v419 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v498 = v159;
  v433 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v160);
  v162 = &v419 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = *a1;
  sub_22088518C();
  sub_22088517C();
  (*(v155 + 8))(v158, v154);
  v163 = v162;
  v164 = sub_2206B00FC(&qword_281297E78, sub_2204FA2D0);
  v165 = sub_2206B00FC(&qword_281297E80, sub_2204FA2D0);
  v494 = v113;
  MEMORY[0x223D80A10](MEMORY[0x277D84F90], v113, v164, v165);
  v166 = sub_2206B00FC(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
  v489 = sub_2206B00FC(&unk_281293320, type metadata accessor for ForYouFeedModel);
  v167 = v505;
  v488 = v166;
  sub_22088E6EC();
  v168 = v167[7];
  v169 = v168 >> 61;
  v500 = v163;
  if ((v168 >> 61) > 1)
  {
    if (v169 != 2)
    {
      if (v169 == 3)
      {
        v170 = v420;
        v171 = v168 & 0x1FFFFFFFFFFFFFFFLL;
        v172 = *((v168 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v491 = *(v171 + 24);
        v173 = *(v172 + 16);
        v174 = v494;
        v175 = v498;
        if (v173)
        {
          v442 = *(type metadata accessor for ForYouFeedRefreshBlueprintModifier() + 32);
          v176 = v172 + ((*(v429 + 80) + 32) & ~*(v429 + 80));
          v484 = v429[9];
          v441 = (v430 + 4);
          v440 = (v430 + 2);
          v431 = (v430 + 1);
          v483 = (v497 + 8);
          v480 = (v421 + 2);
          v430 = (v422 + 2);
          v429 = (v423 + 2);
          LODWORD(v428) = *MEMORY[0x277D69288];
          v427 = (v424 + 13);
          v426 = (v424 + 2);
          v425 = (v170 + 2);
          ++v424;
          ++v423;
          ++v422;
          ++v421;
          v420 = v170 + 5;
          v482 = (v446 + 8);
          v419 = xmmword_220899360;
          v177 = v467;
          v178 = v466;
          v179 = v465;
          do
          {
            v496 = v176;
            v497 = v173;
            sub_2206B03D0(v176, v179, type metadata accessor for ForYouFeedGroup);
            v190 = __swift_project_boxed_opaque_existential_1(v167 + 2, v167[5]);
            type metadata accessor for ForYouFeedServiceConfig();
            sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
            sub_22088F6CC();
            v191 = *v190;
            sub_2206B03D0(v179, v178, type metadata accessor for ForYouFeedGroup);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                v193 = v469;
                sub_2206B0438(v178, v469, type metadata accessor for CuratedForYouFeedGroup);
                v187 = v476;
                sub_22080DFA4(v193, v177, v476);
                sub_2206B026C(v193, type metadata accessor for CuratedForYouFeedGroup);
                v188 = v174;
              }

              else
              {
                v180 = v487;
                v181 = v178;
                v182 = v470;
                (*v441)(v487, v181, v470);
                (*v440)(v471, v180, v182);
                swift_storeEnumTagMultiPayload();
                sub_220454558(0, &qword_28127E0F0, sub_22051D97C, MEMORY[0x277D84560]);
                v183 = swift_allocObject();
                *(v183 + 16) = v419;
                __swift_project_boxed_opaque_existential_1(v191 + 2, *(v191 + 5));
                sub_22088FB2C();
                swift_storeEnumTagMultiPayload();
                v184 = v498;
                sub_22088AD7C();
                v185 = sub_2206B00FC(&qword_281297F68, sub_22051D97C);
                v186 = sub_2206B00FC(&qword_281297F70, sub_22051D97C);
                MEMORY[0x223D80A10](v183, v492, v185, v186);
                v187 = v476;
                v177 = v467;
                v188 = v494;
                v167 = v505;
                v175 = v184;
                v179 = v465;
                sub_22088B29C();
                v189 = v182;
                v178 = v466;
                (*v431)(v487, v189);
              }
            }

            else
            {
              v479 = v191;
              v194 = v451;
              sub_2206B0438(v178, v451, type metadata accessor for StockForYouFeedGroup);
              v195 = *v480;
              v196 = v477;
              v197 = v501;
              (*v480)(v477, v194, v501);
              v475 = v195;
              (v195)(v485, v194, v197);
              v198 = sub_22088681C();
              v200 = v468;
              if (*(v468 + 16))
              {
                v201 = sub_2204AF97C(v198, v199);
                v203 = v202;

                v204 = v449;
                if (v203)
                {
                  v205 = *(v200 + 56);
                  v206 = sub_22088676C();
                  v207 = *(v206 - 8);
                  v208 = v207;
                  v209 = *(v207 + 72);
                  v210 = *(v207 + 16);
                  v474 = (v206 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
                  v210(v204, v205 + v209 * v201, v206);
                  v211 = *(v208 + 56);
                  v455 = v206;
                  v211(v204, 0, 1, v206);
                }

                else
                {
                  v215 = sub_22088676C();
                  v216 = *(*(v215 - 8) + 56);
                  v474 = (v215 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
                  v455 = v215;
                  v216(v204, 1, 1);
                }

                v214 = v204;
              }

              else
              {

                v212 = sub_22088676C();
                v213 = *(*(v212 - 8) + 56);
                v474 = (v212 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
                v214 = v449;
                v455 = v212;
                v213();
              }

              sub_22045849C();
              v478 = v217;
              v218 = &v196[*(v217 + 48)];
              v219 = type metadata accessor for StockSparklineViewModel(0);
              v220 = v456;
              (*(*(v219 - 8) + 56))(v456, 1, 1, v219);
              v221 = *v430;
              v222 = v457;
              v223 = v486;
              (*v430)(v457, v505 + v442, v486);
              v475(v218, v485, v501);
              v224 = type metadata accessor for StockViewModel();
              sub_2206B03D0(v214, &v218[v224[5]], sub_22045987C);
              sub_2206B03D0(v220, &v218[v224[6]], sub_2204E99F0);
              v221(&v218[v224[8]], v222, v223);
              v225 = v224;
              v218[v224[9]] = 0;
              v226 = v495;
              sub_2206B03D0(v214, v495, sub_22045987C);
              sub_2208867CC();
              v227 = v443;
              sub_2206B03D0(v226, v443, sub_22045987C);
              sub_22088676C();
              v228 = v455;
              v229 = *(v455 - 8);
              v230 = *(v229 + 48);
              if (v230(v227, 1, v455) == 1)
              {
                sub_2206B026C(v227, sub_22045987C);
                v475 = 0;
                LODWORD(v474) = 1;
              }

              else
              {
                v475 = sub_22088675C();
                LODWORD(v474) = v231;
                (*(v229 + 8))(v227, v228);
              }

              v232 = v445;
              v233 = v444;
              v234 = v454;
              sub_2206B03D0(v495, v454, sub_22045987C);
              if (v230(v234, 1, v228) == 1)
              {
                sub_2206B026C(v234, sub_22045987C);
                v453 = 0;
                LODWORD(v452) = 1;
              }

              else
              {
                v453 = sub_22088666C();
                LODWORD(v452) = v235;
                (*(v229 + 8))(v454, v228);
              }

              sub_2206B03D0(v495, v233, sub_22045987C);
              if (v230(v233, 1, v228) == 1)
              {
                sub_2206B026C(v233, sub_22045987C);
                v450 = 0;
                LODWORD(v448) = 1;
              }

              else
              {
                v450 = sub_22088671C();
                LODWORD(v448) = v236;
                (*(v229 + 8))(v233, v228);
              }

              sub_2206B03D0(v495, v232, sub_22045987C);
              if (v230(v232, 1, v228) == 1)
              {
                sub_2206B026C(v232, sub_22045987C);
                v237 = 0;
                v447 = 0;
              }

              else
              {
                v237 = sub_22088668C();
                v447 = v238;
                (*(v229 + 8))(v232, v228);
              }

              v239 = v459;
              v478 = &v477[*(v478 + 16)];
              v240 = &v218[v225[7]];
              v241 = *v429;
              v242 = v460;
              (*v429)(v459, v481, v460);
              v243 = v461;
              v244 = v462;
              (*v427)(v461, v428, v462);
              v245 = v463;
              sub_22088524C();
              *v240 = v475;
              v240[8] = v474 & 1;
              *(v240 + 2) = v453;
              v240[24] = v452 & 1;
              *(v240 + 4) = v450;
              v240[40] = v448 & 1;
              *(v240 + 6) = v237;
              v246 = v243;
              *(v240 + 7) = v447;
              v247 = type metadata accessor for PriceViewModel();
              v241(&v240[v247[10]], v239, v242);
              *(v240 + 8) = 9666786;
              *(v240 + 9) = 0xA300000000000000;
              (*v426)(&v240[v247[9]], v246, v244);
              v248 = &v240[v247[11]];
              v249 = v464;
              (*v425)(v248, v245, v464);
              if (qword_281294078 != -1)
              {
                swift_once();
              }

              v250 = qword_2812B6B48;
              (*v424)(v246, v244);
              v251 = *v423;
              (*v423)(v239, v242);
              v251(v481, v242);
              sub_2206B026C(v495, sub_22045987C);
              (*v422)(v457, v486);
              sub_2206B026C(v456, sub_2204E99F0);
              sub_2206B026C(v449, sub_22045987C);
              (*v421)(v485, v501);
              v252 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
              swift_beginAccess();
              (*v420)(v250 + v252, v245, v249);
              swift_endAccess();
              v253 = v451;
              sub_22051E1E0(v451 + *(v458 + 28), v478);
              v254 = swift_storeEnumTagMultiPayload();
              MEMORY[0x28223BE20](v254, v255);
              v177 = v467;
              *(&v419 - 4) = v467;
              *(&v419 - 3) = v253;
              *(&v419 - 2) = v479;
              v256 = v493;
              v258 = sub_22051E318(sub_22051EF0C, (&v419 - 3), v257);
              v493 = v256;
              v259 = sub_2206B00FC(&qword_281297F68, sub_22051D97C);
              v260 = sub_2206B00FC(&qword_281297F70, sub_22051D97C);
              MEMORY[0x223D80A20](v258, v492, v259, v260);
              v187 = v476;
              sub_22088B29C();
              sub_2206B026C(v253, type metadata accessor for StockForYouFeedGroup);
              v175 = v498;
              v167 = v505;
              v188 = v494;
              v178 = v466;
              v179 = v465;
            }

            (*v483)(v177, v503);
            sub_22088E72C();
            v174 = v188;
            (*v482)(v187, v188);
            sub_2206B026C(v179, type metadata accessor for ForYouFeedGroup);
            v176 = &v484[v496];
            v173 = v497 - 1;
          }

          while (v497 != 1);
        }

        sub_22088FA1C();

        sub_22088FA0C();
        type metadata accessor for ForYouFeedServiceConfig();
        sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
        v287 = sub_22088F9EC();

        v288 = 0;
        if (v287)
        {
          v288 = sub_22088F45C();
        }

        else
        {
          v507 = 0;
          v508 = 0;
        }

        v385 = v439;
        v384 = v492;
        v295 = v500;
        v506 = v287;
        v509 = v288;
        sub_22088E7BC();
      }

      else
      {
        sub_22088FA1C();

        sub_22088FA0C();
        type metadata accessor for ForYouFeedServiceConfig();
        sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
        v285 = sub_22088F9EC();

        v174 = v494;
        v175 = v498;
        v286 = 0;
        if (v285)
        {
          v286 = sub_22088F45C();
        }

        else
        {
          v507 = 0;
          v508 = 0;
        }

        v384 = v492;
        v385 = v439;
        v295 = v500;
        v506 = v285;
        v509 = v286;
        sub_22088E7BC();
      }

LABEL_80:

      goto LABEL_95;
    }

    sub_2206B02CC();
    v275 = swift_projectBox();
    v276 = v496;
    sub_2206B03D0(v275, v496, type metadata accessor for ForYouFeedGroup);
    __swift_project_boxed_opaque_existential_1(v167 + 2, v167[5]);
    v277 = *(type metadata accessor for ForYouFeedRefreshBlueprintModifier() + 32);
    type metadata accessor for ForYouFeedServiceConfig();
    sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);

    v278 = v427;
    sub_22088F6CC();
    v279 = v276;
    v280 = v426;
    sub_2206B03D0(v279, v426, type metadata accessor for ForYouFeedGroup);
    v281 = swift_getEnumCaseMultiPayload();
    if (v281)
    {
      if (v281 != 1)
      {
        v388 = v280;
        v389 = v430;
        v390 = v487;
        v391 = v470;
        (v430[4])(v487, v388, v470);
        v392 = v428;
        sub_22080E6A4(v390, v428);
        v389[1](v390, v391);
        v283 = v392;
        goto LABEL_86;
      }

      v282 = v469;
      sub_2206B0438(v280, v469, type metadata accessor for CuratedForYouFeedGroup);
      v283 = v428;
      sub_22080DFA4(v282, v278, v428);
      v284 = type metadata accessor for CuratedForYouFeedGroup;
    }

    else
    {
      v282 = v425;
      sub_2206B0438(v280, v425, type metadata accessor for StockForYouFeedGroup);
      v283 = v428;
      sub_22080CF0C(v282, v468, v167 + v277, v278, v428);
      v284 = type metadata accessor for StockForYouFeedGroup;
    }

    sub_2206B026C(v282, v284);
LABEL_86:
    v175 = v498;
    v295 = v500;
    (*(v497 + 8))(v278, v503);
    sub_22088E72C();
    v174 = v494;
    (*(v446 + 8))(v283, v494);
    sub_22088FA1C();
    sub_22088FA0C();
    v393 = sub_22088F9EC();

    v384 = v492;
    v394 = 0;
    if (v393)
    {
      v394 = sub_22088F45C();
    }

    else
    {
      v507 = 0;
      v508 = 0;
    }

    v385 = v439;
    v506 = v393;
    v509 = v394;
    sub_22088E7BC();

    sub_2206B026C(v496, type metadata accessor for ForYouFeedGroup);
    goto LABEL_95;
  }

  v261 = v431;
  v262 = v447;
  v496 = v151;
  v263 = v448;
  if (v169)
  {
    v289 = v168 & 0x1FFFFFFFFFFFFFFFLL;
    v290 = *((v168 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v495 = *(v289 + 24);
    v291 = *(v290 + 16);
    if (v291)
    {
      v445 = *(type metadata accessor for ForYouFeedRefreshBlueprintModifier() + 32);
      v292 = v290 + ((*(v429 + 80) + 32) & ~*(v429 + 80));
      v485 = v429[9];
      v444 = (v430 + 4);
      v443 = (v430 + 2);
      v431 = (v430 + 1);
      v481 = (v497 + 8);
      v476 = v421 + 2;
      v430 = (v422 + 2);
      v429 = (v423 + 2);
      LODWORD(v428) = *MEMORY[0x277D69288];
      v427 = (v424 + 13);
      v426 = (v424 + 2);
      v425 = (v420 + 2);
      ++v424;
      ++v423;
      ++v422;
      ++v421;
      v420 += 5;
      v477 = (v446 + 8);
      v419 = xmmword_220899360;
      v174 = v494;
      v175 = v498;
      v293 = v484;
      v294 = v482;
      v295 = v500;
      do
      {
        v496 = v292;
        v497 = v291;
        v305 = v295;
        sub_2206B03D0(v292, v294, type metadata accessor for ForYouFeedGroup);
        v306 = v294;
        v307 = __swift_project_boxed_opaque_existential_1(v505 + 2, v505[5]);
        type metadata accessor for ForYouFeedServiceConfig();
        sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
        sub_22088F6CC();
        v308 = *v307;
        v309 = v474;
        sub_2206B03D0(v306, v474, type metadata accessor for ForYouFeedGroup);
        v310 = swift_getEnumCaseMultiPayload();
        if (v310)
        {
          if (v310 == 1)
          {
            v311 = v469;
            sub_2206B0438(v309, v469, type metadata accessor for CuratedForYouFeedGroup);
            v312 = v475;
            v303 = v483;
            sub_22080DFA4(v311, v483, v475);
            v313 = v311;
            v301 = v312;
            sub_2206B026C(v313, type metadata accessor for CuratedForYouFeedGroup);
            v295 = v305;
          }

          else
          {
            v296 = v487;
            v297 = v470;
            (*v444)(v487, v309, v470);
            (*v443)(v471, v296, v297);
            swift_storeEnumTagMultiPayload();
            sub_220454558(0, &qword_28127E0F0, sub_22051D97C, MEMORY[0x277D84560]);
            v298 = swift_allocObject();
            *(v298 + 16) = v419;
            __swift_project_boxed_opaque_existential_1(v308 + 2, *(v308 + 5));
            sub_22088FB2C();
            swift_storeEnumTagMultiPayload();
            v174 = v494;
            v295 = v500;
            sub_22088AD7C();
            v299 = sub_2206B00FC(&qword_281297F68, sub_22051D97C);
            v300 = sub_2206B00FC(&qword_281297F70, sub_22051D97C);
            MEMORY[0x223D80A10](v298, v492, v299, v300);
            v301 = v475;
            v175 = v498;
            sub_22088B29C();
            v302 = v297;
            v293 = v484;
            (*v431)(v487, v302);
            v303 = v483;
          }
        }

        else
        {
          v467 = v308;
          v314 = v309;
          v315 = v450;
          sub_2206B0438(v314, v450, type metadata accessor for StockForYouFeedGroup);
          v316 = *v476;
          v317 = v501;
          (*v476)(v293, v315, v501);
          v316(v478, v315, v317);
          v318 = sub_22088681C();
          v320 = v468;
          if (*(v468 + 16))
          {
            v321 = sub_2204AF97C(v318, v319);
            v323 = v322;

            if (v323)
            {
              v324 = *(v320 + 56);
              v325 = sub_22088676C();
              v326 = *(v325 - 8);
              v327 = v326;
              v328 = *(v326 + 72);
              v329 = *(v326 + 16);
              v465 = ((v325 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
              v330 = v324 + v328 * v321;
              v331 = v452;
              v329(v452, v330, v325);
              v332 = *(v327 + 56);
              v333 = v331;
              v456 = v325;
              v332(v331, 0, 1, v325);
            }

            else
            {
              v336 = sub_22088676C();
              v337 = *(*(v336 - 8) + 56);
              v465 = ((v336 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
              v333 = v452;
              v456 = v336;
              v337();
            }

            v293 = v484;
          }

          else
          {

            v334 = sub_22088676C();
            v335 = *(*(v334 - 8) + 56);
            v465 = ((v334 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000);
            v333 = v452;
            v456 = v334;
            v335();
          }

          sub_22045849C();
          v466 = v338;
          v339 = &v293[*(v338 + 48)];
          v340 = type metadata accessor for StockSparklineViewModel(0);
          v341 = v455;
          (*(*(v340 - 8) + 56))(v455, 1, 1, v340);
          v342 = *v430;
          v343 = v486;
          (*v430)(v479, v505 + v445, v486);
          v316(v339, v478, v501);
          v344 = type metadata accessor for StockViewModel();
          sub_2206B03D0(v333, &v339[v344[5]], sub_22045987C);
          sub_2206B03D0(v341, &v339[v344[6]], sub_2204E99F0);
          v342(&v339[v344[8]], v479, v343);
          v345 = v344;
          v339[v344[9]] = 0;
          v346 = v491;
          sub_2206B03D0(v333, v491, sub_22045987C);
          sub_2208867CC();
          v347 = v440;
          sub_2206B03D0(v346, v440, sub_22045987C);
          sub_22088676C();
          v348 = v456;
          v349 = *(v456 - 8);
          v350 = *(v349 + 48);
          if (v350(v347, 1, v456) == 1)
          {
            sub_2206B026C(v347, sub_22045987C);
            v465 = 0;
            LODWORD(v457) = 1;
          }

          else
          {
            v465 = sub_22088675C();
            LODWORD(v457) = v351;
            (*(v349 + 8))(v347, v348);
          }

          v352 = v442;
          v353 = v441;
          v354 = v453;
          sub_2206B03D0(v491, v453, sub_22045987C);
          if (v350(v354, 1, v348) == 1)
          {
            sub_2206B026C(v354, sub_22045987C);
            v454 = 0;
            LODWORD(v451) = 1;
          }

          else
          {
            v454 = sub_22088666C();
            LODWORD(v451) = v355;
            (*(v349 + 8))(v453, v348);
          }

          v356 = v491;
          sub_2206B03D0(v491, v353, sub_22045987C);
          if (v350(v353, 1, v348) == 1)
          {
            sub_2206B026C(v353, sub_22045987C);
            v449 = 0;
            LODWORD(v448) = 1;
          }

          else
          {
            v357 = sub_22088671C();
            v356 = v491;
            v449 = v357;
            LODWORD(v448) = v358;
            (*(v349 + 8))(v353, v348);
          }

          sub_2206B03D0(v356, v352, sub_22045987C);
          if (v350(v352, 1, v348) == 1)
          {
            sub_2206B026C(v352, sub_22045987C);
            v447 = 0;
            v359 = 0;
          }

          else
          {
            v447 = sub_22088668C();
            v359 = v360;
            (*(v349 + 8))(v352, v348);
          }

          v361 = v459;
          v466 = &v484[*(v466 + 16)];
          v362 = &v339[v345[7]];
          v363 = *v429;
          v364 = v460;
          (*v429)(v459, v480, v460);
          v365 = v461;
          v366 = v462;
          (*v427)(v461, v428, v462);
          v367 = v463;
          sub_22088524C();
          *v362 = v465;
          v362[8] = v457 & 1;
          *(v362 + 2) = v454;
          v362[24] = v451 & 1;
          *(v362 + 4) = v449;
          v362[40] = v448 & 1;
          *(v362 + 6) = v447;
          *(v362 + 7) = v359;
          v368 = type metadata accessor for PriceViewModel();
          v363(&v362[v368[10]], v361, v364);
          *(v362 + 8) = 9666786;
          *(v362 + 9) = 0xA300000000000000;
          (*v426)(&v362[v368[9]], v365, v366);
          v369 = v464;
          (*v425)(&v362[v368[11]], v367, v464);
          if (qword_281294078 != -1)
          {
            swift_once();
          }

          v370 = qword_2812B6B48;
          (*v424)(v365, v366);
          v371 = *v423;
          (*v423)(v361, v364);
          v371(v480, v364);
          sub_2206B026C(v491, sub_22045987C);
          (*v422)(v479, v486);
          sub_2206B026C(v455, sub_2204E99F0);
          sub_2206B026C(v452, sub_22045987C);
          (*v421)(v478, v501);
          v372 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
          swift_beginAccess();
          (*v420)(v370 + v372, v367, v369);
          swift_endAccess();
          v373 = v450;
          sub_22051E1E0(v450 + *(v458 + 28), v466);
          v374 = v484;
          v375 = swift_storeEnumTagMultiPayload();
          MEMORY[0x28223BE20](v375, v376);
          v377 = v483;
          *(&v419 - 4) = v483;
          *(&v419 - 3) = v373;
          *(&v419 - 2) = v467;
          v378 = v493;
          v380 = sub_22051E318(sub_22051EE04, (&v419 - 3), v379);
          v493 = v378;
          v381 = sub_2206B00FC(&qword_281297F68, sub_22051D97C);
          v382 = sub_2206B00FC(&qword_281297F70, sub_22051D97C);
          v383 = v381;
          v303 = v377;
          MEMORY[0x223D80A20](v380, v492, v383, v382);
          v301 = v475;
          sub_22088B29C();
          sub_2206B026C(v373, type metadata accessor for StockForYouFeedGroup);
          v174 = v494;
          v295 = v500;
          v175 = v498;
          v293 = v374;
        }

        v304 = v497;
        (*v481)(v303, v503);
        sub_22088E72C();
        (*v477)(v301, v174);
        v294 = v482;
        sub_2206B026C(v482, type metadata accessor for ForYouFeedGroup);
        v292 = &v485[v496];
        v291 = v304 - 1;
      }

      while (v291);
    }

    else
    {
      v174 = v494;
      v175 = v498;
      v295 = v500;
    }

    v385 = v439;
    sub_22051F9FC(v495, v439);
    sub_22088E72C();
    (*(v446 + 8))(v385, v174);
    sub_22088FA1C();

    sub_22088FA0C();
    type metadata accessor for ForYouFeedServiceConfig();
    sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v386 = sub_22088F9EC();

    v387 = 0;
    if (v386)
    {
      v387 = sub_22088F45C();
    }

    else
    {
      v507 = 0;
      v508 = 0;
    }

    v384 = v492;
    v506 = v386;
    v509 = v387;
    sub_22088E7BC();
    goto LABEL_80;
  }

  sub_2206B02CC();
  v265 = v264;
  v266 = swift_projectBox();
  v267 = *(v266 + *(v265 + 48));
  v268 = v496;
  sub_2206B03D0(v266, v496, type metadata accessor for ForYouFeedGroup);
  __swift_project_boxed_opaque_existential_1(v167 + 2, v167[5]);
  v495 = *(type metadata accessor for ForYouFeedRefreshBlueprintModifier() + 32);
  v269 = type metadata accessor for ForYouFeedServiceConfig();
  sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);

  v501 = v269;
  sub_22088F6CC();
  v270 = v268;
  v271 = v261;
  sub_2206B03D0(v270, v261, type metadata accessor for ForYouFeedGroup);
  v272 = swift_getEnumCaseMultiPayload();
  if (v272)
  {
    if (v272 != 1)
    {
      v395 = v430;
      v396 = v271;
      v397 = v487;
      v398 = v470;
      (v430[4])(v487, v396, v470);
      sub_22080E6A4(v397, v262);
      v395[1](v397, v398);
      goto LABEL_91;
    }

    v273 = v469;
    sub_2206B0438(v261, v469, type metadata accessor for CuratedForYouFeedGroup);
    sub_22080DFA4(v273, v263, v262);
    v274 = type metadata accessor for CuratedForYouFeedGroup;
  }

  else
  {
    v273 = v425;
    sub_2206B0438(v261, v425, type metadata accessor for StockForYouFeedGroup);
    sub_22080CF0C(v273, v468, v167 + v495, v263, v262);
    v274 = type metadata accessor for StockForYouFeedGroup;
  }

  sub_2206B026C(v273, v274);
LABEL_91:
  v399 = v494;
  (*(v497 + 8))(v263, v503);
  sub_22088E72C();
  v400 = *(v446 + 8);
  v400(v262, v399);
  v401 = v439;
  sub_22051F9FC(v267, v439);
  sub_22088E72C();
  v400(v401, v399);
  sub_22088FA1C();
  sub_22088FA0C();
  v402 = sub_22088F9EC();

  v384 = v492;
  v174 = v399;
  v403 = 0;
  if (v402)
  {
    v403 = sub_22088F45C();
  }

  else
  {
    v507 = 0;
    v508 = 0;
  }

  v175 = v498;
  v506 = v402;
  v509 = v403;
  v295 = v500;
  sub_22088E7BC();

  sub_2206B026C(v496, type metadata accessor for ForYouFeedGroup);
  v385 = v439;
LABEL_95:
  sub_2206B00FC(&unk_281296EB0, sub_2204F1480);
  sub_22089193C();
  sub_22089199C();
  if (v506 == v510)
  {
    swift_storeEnumTagMultiPayload();
    v404 = sub_2206B00FC(&qword_281297F68, sub_22051D97C);
    v405 = sub_2206B00FC(&qword_281297F70, sub_22051D97C);
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v384, v404, v405);
    sub_22088B29C();
    if (qword_281299528 != -1)
    {
      swift_once();
    }

    v406 = *algn_2812B6D88;
    v407 = v472;
    *v472 = qword_2812B6D80;
    v407[1] = v406;
    swift_storeEnumTagMultiPayload();

    v408 = v432;
    sub_22088AD7C();
    sub_22088B30C();
    (*(v473 + 8))(v408, v384);
    v409 = v498;
    sub_22088E72C();
    v175 = v409;
    (*(v446 + 8))(v385, v174);
  }

  sub_220525DD8();
  v411 = *(v410 + 48);
  v412 = v433;
  v413 = v434;
  (*(v433 + 16))(v434, v295, v175);
  v414 = *MEMORY[0x277D6D868];
  v415 = sub_22088B64C();
  (*(*(v415 - 8) + 104))(&v413[v411], v414, v415);
  v416 = v435;
  v417 = v436;
  (*(v435 + 104))(v413, *MEMORY[0x277D6DF70], v436);
  v438(v413);
  (*(v416 + 8))(v413, v417);
  return (*(v412 + 8))(v295, v175);
}

uint64_t sub_2206AFC6C(void *a1, void (*a2)(char *))
{
  sub_22051D3C4(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v13 - v9;
  *(&v13 - v9) = a1;
  (*(v6 + 104))(&v13 - v9, *MEMORY[0x277D6DF68], v5, v8);
  v11 = a1;
  a2(v10);
  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_2206AFD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StockForYouFeedGroup();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ForYouFeedGroup();
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v24 - v14;
  v16 = *(a1 + 56) >> 61;
  if (v16 > 2 || v16 == 1)
  {
    v17 = sub_22088685C();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }

  else
  {
    sub_2206B02CC();
    v20 = swift_projectBox();
    sub_2206B03D0(v20, v15, type metadata accessor for ForYouFeedGroup);
    sub_2206B0438(v15, v11, type metadata accessor for ForYouFeedGroup);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2206B026C(v11, type metadata accessor for ForYouFeedGroup);
      v21 = sub_22088685C();
      return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
    }

    else
    {
      sub_2206B0438(v11, v7, type metadata accessor for StockForYouFeedGroup);
      v22 = sub_22088685C();
      v23 = *(v22 - 8);
      (*(v23 + 16))(a2, v7, v22);
      sub_2206B026C(v7, type metadata accessor for StockForYouFeedGroup);
      return (*(v23 + 56))(a2, 0, 1, v22);
    }
  }
}

uint64_t sub_2206B00FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206B01B8(uint64_t *a1)
{
  v3 = *(type metadata accessor for ForYouFeedRefreshBlueprintModifier() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2206ABEA8(a1, (v1 + v4), *v5, *(v5 + 8));
}

uint64_t sub_2206B026C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206B02CC()
{
  if (!qword_27CF58A70)
  {
    type metadata accessor for ForYouFeedGroup();
    sub_2206B033C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF58A70);
    }
  }
}

void sub_2206B033C()
{
  if (!qword_281296B58)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_2206B00FC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v0 = sub_22088F6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_281296B58);
    }
  }
}

uint64_t sub_2206B03D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206B0438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t StocksV2UserActivityDeserializer.__allocating_init(stockMetadataManager:intentDeserializer:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_220457328(a1, v4 + 16);
  sub_220457328(a2, v4 + 56);
  return v4;
}

uint64_t StocksV2UserActivityDeserializer.init(stockMetadataManager:intentDeserializer:)(__int128 *a1, __int128 *a2)
{
  sub_220457328(a1, v2 + 16);
  sub_220457328(a2, v2 + 56);
  return v2;
}

uint64_t sub_2206B05D8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v218 = a3;
  *&v220 = a1;
  v211 = a4;
  v208 = sub_220884E9C();
  v212 = *(v208 - 8);
  MEMORY[0x28223BE20](v208, v5);
  v201 = &v188 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v189 = &v188 - v9;
  sub_22047A0B8(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v206 = &v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v192 = &v188 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v196 = &v188 - v18;
  v197 = sub_2208874DC();
  v195 = *(v197 - 8);
  MEMORY[0x28223BE20](v197, v19);
  v194 = &v188 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2208876BC();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v198 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_220887C9C();
  v193 = *(v199 - 8);
  MEMORY[0x28223BE20](v199, v24);
  v191 = (&v188 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22047A0B8(0, qword_28128F390, type metadata accessor for ArticleUserInfoModel);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v204 = &v188 - v28;
  v205 = type metadata accessor for ArticleUserInfoModel();
  v203 = *(v205 - 8);
  MEMORY[0x28223BE20](v205, v29);
  v202 = &v188 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A0B8(0, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v217 = &v188 - v33;
  v200 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v216 = *(v200 - 8);
  MEMORY[0x28223BE20](v200, v34);
  v190 = &v188 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047A0B8(0, &qword_281299060, MEMORY[0x277D69810]);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v215 = &v188 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v214 = &v188 - v41;
  v42 = sub_22088685C();
  v207 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v49 = (&v188 - v48);
  v213 = type metadata accessor for StocksActivityUserInfo();
  MEMORY[0x28223BE20](v213, v50);
  v209 = &v188 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v53);
  v210 = &v188 - v54;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v188 - v57;
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v188 - v61;
  MEMORY[0x28223BE20](v63, v64);
  v66 = &v188 - v65;
  MEMORY[0x28223BE20](v67, v68);
  v70 = &v188 - v69;
  MEMORY[0x28223BE20](v71, v72);
  v74 = &v188 - v73;

  v75._countAndFlagsBits = v220;
  v75._object = a2;
  StocksActivityType.init(rawValue:)(v75);
  if (v221 <= 2u)
  {
    v82 = v74;
    v212 = v49;
    v83 = v62;
    v84 = v214;
    v85 = v215;
    v87 = v216;
    v86 = v217;
    *&v220 = v42;
    if (v221)
    {
      v88 = v218;
      if (v221 == 1)
      {
        v89 = v219;
        result = sub_2206B1C9C(v218);
        if (v89)
        {
          return result;
        }

        v90 = v70[1];
        sub_2206B1F74(v70, type metadata accessor for StocksActivityUserInfo);
        if (v90 == 2)
        {
          sub_2206B1C48();
          swift_allocError();
          *v91 = 0xD000000000000010;
          *(v91 + 8) = 0x80000002208CD260;
          *(v91 + 16) = 1;
          return swift_willThrow();
        }

        if ((v90 & 1) == 0)
        {
          sub_2206A1D94();
          v157 = *(v156 + 48);
          type metadata accessor for ForYouSectionDescriptor();
          v158 = v211;
          swift_storeEnumTagMultiPayload();
          v159 = *MEMORY[0x277D6E250];
          v160 = sub_22088CC6C();
          (*(*(v160 - 8) + 104))(v158 + v157, v159, v160);
          type metadata accessor for StocksActivity(0);
          return swift_storeEnumTagMultiPayload();
        }

        sub_2206B1C9C(v88);
        sub_2206B1F08(&v66[v213[6]], v84, &qword_281299060, MEMORY[0x277D69810]);
        sub_2206B1F74(v66, type metadata accessor for StocksActivityUserInfo);
        v132 = v207;
        v133 = v220;
        if ((*(v207 + 48))(v84, 1, v220) == 1)
        {
          sub_2206B1EAC(v84, &qword_281299060, MEMORY[0x277D69810]);
          sub_2206B1C48();
          swift_allocError();
          v98 = xmmword_2208A9AC0;
          goto LABEL_16;
        }

        v181 = *(v132 + 32);
        v182 = v212;
        v181(v212, v84, v133);
        sub_2206A1D94();
        v184 = *(v183 + 48);
        v185 = v211;
        v181(v211, v182, v133);
        type metadata accessor for ForYouSectionDescriptor();
        swift_storeEnumTagMultiPayload();
        v186 = *MEMORY[0x277D6E258];
        v187 = sub_22088CC6C();
        (*(*(v187 - 8) + 104))(v185 + v184, v186, v187);
        type metadata accessor for StocksActivity(0);
        return swift_storeEnumTagMultiPayload();
      }

      v106 = v83;
      v107 = v219;
      result = sub_2206B1C9C(v218);
      if (v107)
      {
        return result;
      }

      v219 = 0;
      v108 = v213;
      v109 = v106 + v213[11];
      if (*(v109 + 8))
      {
        v110 = 0;
      }

      else
      {
        v110 = *v109;
      }

      v111 = v85;
      sub_2206B1F08(v106 + v213[6], v85, &qword_281299060, MEMORY[0x277D69810]);
      v112 = v207;
      v113 = v85;
      v114 = v220;
      if ((*(v207 + 48))(v113, 1, v220) == 1)
      {
        sub_2206B1EAC(v111, &qword_281299060, MEMORY[0x277D69810]);
        sub_2206B1F08(v106 + v108[7], v86, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series);
        if ((*(v87 + 48))(v86, 1, v200) == 1)
        {
          sub_2206B1EAC(v86, qword_281295308, type metadata accessor for StocksActivity.StockFeed.Series);
          sub_2206B1C48();
          swift_allocError();
          *v115 = xmmword_2208A9AC0;
          *(v115 + 16) = 1;
          swift_willThrow();
          v105 = v106;
          return sub_2206B1F74(v105, type metadata accessor for StocksActivityUserInfo);
        }

        sub_2206B1F74(v106, type metadata accessor for StocksActivityUserInfo);
        v151 = v190;
        sub_2206B2038(v86, v190, type metadata accessor for StocksActivity.StockFeed.Series);
        sub_2206B20A0(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
        v153 = *(v152 + 48);
        v154 = v151;
        v155 = v211;
        sub_2206B2038(v154, v211, type metadata accessor for StocksActivity.StockFeed.Series);
        *(v155 + v153) = v110;
        type metadata accessor for StocksActivity.StockFeed(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for StocksActivity(0);
      }

      else
      {
        sub_2206B1F74(v106, type metadata accessor for StocksActivityUserInfo);
        v134 = *(v112 + 32);
        v135 = v45;
        v134(v45, v111, v114);
        sub_2206B20A0(0, &qword_281299050, MEMORY[0x277D69810]);
        v137 = *(v136 + 48);
        v138 = v211;
        v134(v211, v135, v114);
        *(v138 + v137) = v110;
        type metadata accessor for StocksActivity.StockFeed(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for StocksActivity(0);
      }

      return swift_storeEnumTagMultiPayload();
    }

    v99 = v82;
    v100 = v219;
    result = sub_2206B1C9C(v218);
    if (v100)
    {
      return result;
    }

    v102 = (v99 + v213[12]);
    v103 = v102[1];
    if (v103 != 1)
    {
      v125 = v102[2];
      v124 = v102[3];
      v126 = *v102;
      v127 = (v99 + v213[13]);
      v128 = v127[1];
      *&v101 = *v127;
      v220 = v101;
      sub_2206B2110(v126, v103);

      sub_2206B1F74(v99, type metadata accessor for StocksActivityUserInfo);
      *&v129 = v220;
      *(&v129 + 1) = v128;
      v130 = v211;
      *v211 = v126;
      v130[1] = v103;
      *&v131 = v125;
      *(&v131 + 1) = v124;
      *(v130 + 1) = v131;
      *(v130 + 2) = v129;
      type metadata accessor for StocksActivity(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_2206B1C48();
    swift_allocError();
    *v104 = 0xD000000000000013;
    *(v104 + 8) = 0x80000002208CD280;
    *(v104 + 16) = 1;
    swift_willThrow();
    v105 = v99;
    return sub_2206B1F74(v105, type metadata accessor for StocksActivityUserInfo);
  }

  if (v221 > 4u)
  {
    if (v221 != 5)
    {
      sub_2206B1C48();
      swift_allocError();
      *v123 = v220;
      *(v123 + 8) = a2;
      *(v123 + 16) = 0;
      swift_willThrow();
    }

    v92 = v209;
    v93 = v219;
    result = sub_2206B1C9C(v218);
    if (v93)
    {
      return result;
    }

    v94 = v206;
    sub_2206B1F08(v92 + v213[10], v206, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_2206B1F74(v92, type metadata accessor for StocksActivityUserInfo);
    v95 = v212;
    v96 = v208;
    if (v212[6](v94, 1, v208) == 1)
    {
      sub_2206B1EAC(v94, &qword_2812994E0, MEMORY[0x277CC9260]);
      sub_2206B1C48();
      swift_allocError();
      v98 = xmmword_2208A9A90;
LABEL_16:
      *v97 = v98;
      *(v97 + 16) = 1;
      return swift_willThrow();
    }

    v139 = v95[4];
    v140 = v201;
    v139(v201, v94, v96);
    sub_2206B20A0(0, &qword_2812994D0, MEMORY[0x277CC9260]);
    v142 = *(v141 + 48);
    v143 = v211;
    v139(v211, v140, v96);
    *(v143 + v142) = 0;
    type metadata accessor for StocksActivity(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v221 == 3)
  {
    v76 = v219;
    result = sub_2206B1C9C(v218);
    if (v76)
    {
      return result;
    }

    v78 = &v58[v213[8]];
    v80 = *v78;
    v79 = *(v78 + 1);

    sub_2206B1F74(v58, type metadata accessor for StocksActivityUserInfo);
    if (!v79)
    {
      sub_2206B1C48();
      swift_allocError();
      *v150 = xmmword_2208A9AB0;
      *(v150 + 16) = 1;
      return swift_willThrow();
    }

    v81 = v211;
    *v211 = v80;
    v81[1] = v79;
    type metadata accessor for StocksActivity(0);
    return swift_storeEnumTagMultiPayload();
  }

  v116 = v210;
  v117 = v219;
  result = sub_2206B1C9C(v218);
  v118 = v212;
  if (!v117)
  {
    v219 = 0;
    v119 = v213;
    v120 = v204;
    sub_2206B1F08(v116 + v213[9], v204, qword_28128F390, type metadata accessor for ArticleUserInfoModel);
    v121 = v205;
    if ((*(v203 + 48))(v120, 1, v205) == 1)
    {
      sub_2206B1EAC(v120, qword_28128F390, type metadata accessor for ArticleUserInfoModel);
      sub_2206B1C48();
      swift_allocError();
      *v122 = xmmword_2208A9AA0;
      *(v122 + 16) = 1;
      swift_willThrow();
      v105 = v116;
      return sub_2206B1F74(v105, type metadata accessor for StocksActivityUserInfo);
    }

    v144 = v202;
    sub_2206B2038(v120, v202, type metadata accessor for ArticleUserInfoModel);
    v145 = v116 + v119[11];
    v146 = *v145;
    if (*(v145 + 8))
    {
      v146 = 0;
    }

    if (*(v144 + v121[6]))
    {
      v147 = v192;
      sub_2206B1F08(v144 + v121[5], v192, &qword_2812994E0, MEMORY[0x277CC9260]);
      v148 = v208;
      if (v118[6](v147, 1, v208) == 1)
      {
        sub_2206B1EAC(v147, &qword_2812994E0, MEMORY[0x277CC9260]);
        sub_2206B1C48();
        swift_allocError();
        *v149 = 0xD000000000000010;
        *(v149 + 8) = 0x80000002208CD240;
        *(v149 + 16) = 1;
        swift_willThrow();
        sub_2206B1F74(v116, type metadata accessor for StocksActivityUserInfo);
        return sub_2206B1F74(v144, type metadata accessor for ArticleUserInfoModel);
      }

      sub_2206B1F74(v116, type metadata accessor for StocksActivityUserInfo);
      sub_2206B1F74(v144, type metadata accessor for ArticleUserInfoModel);
      v176 = v118[4];
      v177 = v189;
      v176(v189, v147, v148);
      sub_2206B20A0(0, &qword_2812994D0, MEMORY[0x277CC9260]);
      v179 = *(v178 + 48);
      v180 = v211;
      v176(v211, v177, v148);
      *(v180 + v179) = 0;
      type metadata accessor for StocksActivity(0);
    }

    else
    {
      *&v220 = v146;
      if (*(v144 + v121[8] + 8) && (v161 = objc_allocWithZone(MEMORY[0x277D550E0]), v162 = sub_22089132C(), v163 = [v161 initWithJSONRepresentation_], v162, v163))
      {
        v164 = v191;
        *v191 = v163;
        v165 = MEMORY[0x277D2FF10];
      }

      else
      {
        v165 = MEMORY[0x277D2FF08];
        v164 = v191;
      }

      v166 = v193;
      (*(v193 + 104))(v164, *v165, v199);
      v167 = v118[7];
      v168 = v196;
      v169 = v208;
      (v167)(v196, 1, 1, v208);

      v170 = v194;
      sub_2208874CC();
      (v167)(v168, 1, 1, v169);
      v171 = v198;
      sub_22088764C();
      sub_2206B1EAC(v168, &qword_2812994E0, MEMORY[0x277CC9260]);
      (*(v195 + 8))(v170, v197);
      (*(v166 + 8))(v164, v199);
      sub_2206B1F74(v210, type metadata accessor for StocksActivityUserInfo);
      sub_2206B1F74(v202, type metadata accessor for ArticleUserInfoModel);
      sub_2204481D8();
      v173 = *(v172 + 48);
      v174 = v211;
      v175 = v211 + *(v172 + 64);
      sub_2206B2038(v171, v211, MEMORY[0x277D2FB40]);
      *(v174 + v173) = v220;
      type metadata accessor for StocksActivity.Article(0);
      *v175 = 0u;
      *(v175 + 1) = 0u;
      *(v175 + 4) = 0;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for StocksActivity(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

unint64_t sub_2206B1C48()
{
  result = qword_28128F328;
  if (!qword_28128F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F328);
  }

  return result;
}

uint64_t sub_2206B1C9C(uint64_t a1)
{
  *&v8[0] = 1635017060;
  *(&v8[0] + 1) = 0xE400000000000000;
  sub_2208924DC();
  if (*(a1 + 16) && (v2 = sub_2205CE060(v9), (v3 & 1) != 0))
  {
    sub_2204A7FA8(*(a1 + 56) + 32 * v2, v8);
    sub_2205CFD84(v9);
    sub_2204A62A4(v8, v10);
    sub_2204A7FA8(v10, v9);
    if (swift_dynamicCast())
    {
      v4 = v8[0];
      sub_22088498C();
      swift_allocObject();
      sub_22088497C();
      type metadata accessor for StocksActivityUserInfo();
      sub_220448BE0(&qword_281299720, type metadata accessor for StocksActivityUserInfo);
      sub_22088496C();
      __swift_destroy_boxed_opaque_existential_1(v10);

      return sub_220457EE8(v4, *(&v4 + 1));
    }

    else
    {
      sub_2206B1C48();
      swift_allocError();
      *v7 = xmmword_2208A9AD0;
      *(v7 + 16) = 2;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v10);
    }
  }

  else
  {
    sub_2205CFD84(v9);
    sub_2206B1C48();
    swift_allocError();
    *v6 = xmmword_2208A9AD0;
    *(v6 + 16) = 1;
    return swift_willThrow();
  }
}

uint64_t sub_2206B1EAC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_22047A0B8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206B1F08(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_22047A0B8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2206B1F74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2206B1FD4()
{
  result = qword_281285B30;
  if (!qword_281285B30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281285B30);
  }

  return result;
}

uint64_t sub_2206B2038(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2206B20A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2206B2110(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t StocksV2UserActivityDeserializer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  return v0;
}

uint64_t StocksV2UserActivityDeserializer.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t StocksV2UserActivityDeserializer.deserialize(userActivity:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 userInfo];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22089126C();

    v7 = [a1 activityType];
    v8 = sub_22089136C();
    v10 = v9;

    v11 = [a1 interaction];
    v12 = 0;
    sub_2206B05D8(v8, v10, v6, a2);
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for StocksActivity(0);
  v14 = *(*(v13 - 8) + 56);

  return v14(a2, v12, 1, v13);
}

uint64_t sub_2206B2350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2206B2398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2206B2490(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_2206B24E4(uint64_t a1, uint64_t a2, char a3)
{
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  result = sub_22089083C();
  if (result)
  {
    v6 = v3[8];
    v7 = sub_22089132C();
    v8 = [v6 containsArticleID_];

    if (v8)
    {
      v9 = sub_22089132C();
      [v6 removeArticleID_];
    }

    v10 = sub_22089132C();
    [v6 insertArticleID:v10 atIndex:-(a3 & 1)];

    return [v6 save];
  }

  return result;
}

BOOL sub_2206B260C()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_22056D130(&v11);
    goto LABEL_9;
  }

  sub_22044D56C(0, &qword_28127E470);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_22056D130(&v11);
    goto LABEL_17;
  }

  sub_22044D56C(0, &qword_28127E470);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -83;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 83;
  return ((v6 ^ v3) & 1) == 0;
}

uint64_t sub_2206B27E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22044D56C(0, &qword_28127E420);
  v5 = sub_2208922FC();
  sub_220891AFC();
  sub_220470DE4(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220899360;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22048D860();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;

  sub_22088A7EC();
}

uint64_t sub_2206B28F4()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2206B2968()
{
  v1 = *v0;
  sub_22088E4CC();
  sub_22088E32C();
  v2 = sub_22088E23C();

  if ((v2 & 1) == 0)
  {
    sub_22088E31C();
    v3 = sub_22088E23C();

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  if (!sub_2206B260C())
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  return sub_22089083C() & 1;
}

uint64_t sub_2206B2A28(uint64_t a1, uint64_t a2)
{
  v46 = sub_220884E9C();
  v41 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v42 = &v40 - v9;
  v10 = sub_220884AAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884A7C();
  v15 = objc_opt_self();
  sub_2206B314C(0, &qword_28127DE40, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_220899920;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 32) = 0x6979616C50776F6ELL;
  *(v16 + 40) = 0xEA0000000000676ELL;
  *(v16 + 88) = v17;
  *(v16 + 56) = v17;
  *(v16 + 64) = a1;
  v43 = a1;
  v44 = a2;
  v18 = v11;
  *(v16 + 72) = a2;

  v19 = sub_2208916DC();

  sub_220470DE4(0, &qword_27CF58A78, MEMORY[0x277CC8918], MEMORY[0x277D84560]);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  v40 = xmmword_220899360;
  *(v21 + 16) = xmmword_220899360;
  v22 = *(v11 + 16);
  v23 = v21 + v20;
  v24 = v10;
  v45 = v14;
  v22(v23, v14, v10);
  v25 = sub_2208916DC();

  v26 = [v15 fc:v19 NewsURLWithPathComponents:v25 queryItems:0 internal:?];

  if (v26)
  {
    v27 = v6;
    sub_220884E4C();

    v28 = v41;
    v29 = v42;
    (*(v41 + 32))(v42, v27, v46);
    v30 = [objc_opt_self() sharedApplication];
    v31 = sub_220884E3C();
    sub_2205CE854(MEMORY[0x277D84F90]);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_2206B31A4();
    v32 = sub_22089125C();

    v33 = swift_allocObject();
    v34 = v44;
    *(v33 + 16) = v43;
    *(v33 + 24) = v34;
    aBlock[4] = sub_2206B31FC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2206B2490;
    aBlock[3] = &block_descriptor_27;
    v35 = _Block_copy(aBlock);

    [v30 openURL:v31 options:v32 completionHandler:v35];
    _Block_release(v35);

    (*(v28 + 8))(v29, v46);
  }

  else
  {
    sub_22044D56C(0, &qword_28127E420);
    v36 = sub_2208922FC();
    sub_220891ADC();
    sub_220470DE4(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v37 = swift_allocObject();
    *(v37 + 16) = v40;
    *(v37 + 56) = MEMORY[0x277D837D0];
    *(v37 + 64) = sub_22048D860();
    v38 = v44;
    *(v37 + 32) = v43;
    *(v37 + 40) = v38;

    sub_22088A7EC();
  }

  return (*(v18 + 8))(v45, v24);
}

uint64_t sub_2206B2FC0()
{
  sub_220470DE4(0, &qword_281296820, sub_22044826C, MEMORY[0x277D33910]);
  sub_2208905DC();
  v0 = [v12 articleID];
  swift_unknownObjectRelease();
  v1 = sub_22089136C();
  v3 = v2;

  sub_22088E4CC();
  sub_22088E32C();
  v4 = sub_22088E23C();

  if (v4)
  {
    v5 = v1;
    v6 = v3;
    v7 = 0;
LABEL_5:
    sub_2206B24E4(v5, v6, v7);
  }

  sub_22088E31C();
  v8 = sub_22088E23C();

  if (v8)
  {
    v5 = v1;
    v6 = v3;
    v7 = 1;
    goto LABEL_5;
  }

  sub_22088E3DC();
  v10 = sub_22088E23C();

  if (v10 & 1) != 0 || (sub_22088E37C(), v11 = sub_22088E23C(), , (v11))
  {
    sub_2206B2A28(v1, v3);
  }
}

void sub_2206B314C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F70] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2206B31A4()
{
  result = qword_27CF57590;
  if (!qword_27CF57590)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57590);
  }

  return result;
}

uint64_t sub_2206B3204(void *a1)
{
  v1 = [a1 activityType];
  v2 = sub_22089136C();
  v4 = v3;

  if (v2 == sub_22089136C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2208928BC();
  }

  return v7 & 1;
}

uint64_t sub_2206B32A8(void *a1)
{
  v27 = a1;
  v1 = sub_22088B28C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220884E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v26 - v13;
  v15 = sub_22088CB7C();
  v16 = [v15 activityType];

  v17 = sub_22089136C();
  v19 = v18;

  if (v17 == sub_22089136C() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_2208928BC();

    result = 0;
    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  v24 = [v27 webpageURL];
  if (v24)
  {
    v25 = v24;
    sub_220884E4C();

    (*(v7 + 32))(v14, v10, v6);
    (*(v2 + 104))(v5, *MEMORY[0x277D6D6F0], v1);
    sub_2208889AC();
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v14, v6);
  }

  return 1;
}

uint64_t sub_2206B3564()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2206B35D0(uint64_t a1)
{
  v56 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2204D4D88(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v53 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v54 = v51 - v8;
  v9 = sub_22088685C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v55 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206B81C4(0, &qword_281296E78, MEMORY[0x277D6EC60]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v20);
  v52 = v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v51 - v24;
  sub_2204D4D88(0, &unk_281297F30, sub_2204D4A18, v2);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v29 = v51 - v28;
  sub_2204D4A18();
  v58 = *(v30 - 8);
  v59 = v30;
  MEMORY[0x28223BE20](v30, v31);
  v57 = v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v1;
  v51[2] = *(v1 + 32);
  sub_22088B6BC();
  v61 = v62;
  sub_2204951A0();
  v34 = v33;
  v51[0] = sub_2206B8C0C(&qword_281297C60, sub_2204951A0);
  v51[1] = v34;
  sub_22088BF9C();

  sub_220479334(v56, v16, type metadata accessor for StockListSelectionModel);
  if (!(*(v10 + 48))(v16, 2, v9))
  {
    v35 = v55;
    (*(v10 + 32))(v55, v16, v9);
    sub_22088677C();
    (*(v10 + 8))(v35, v9);
  }

  sub_22088E70C();

  v36 = *(v19 + 8);
  v36(v25, v18);
  v38 = v58;
  v37 = v59;
  v39 = (*(v58 + 48))(v29, 1, v59);
  v40 = v57;
  if (v39 == 1)
  {
    sub_220516A78(v29, &unk_281297F30, sub_2204D4A18);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v42 = result;
      v43 = sub_2208854AC();
      v44 = v53;
      (*(*(v43 - 8) + 56))(v53, 1, 1, v43);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = off_2834174E0;
        type metadata accessor for StockSearchViewController(0);
        v45(v42, &off_28341EA98, v44);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      return sub_220516A78(v44, &qword_2812993D0, MEMORY[0x277CC9AF8]);
    }
  }

  else
  {
    (*(v38 + 32))(v57, v29, v37);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v47 = Strong;
      sub_22088B6BC();
      v61 = v62;
      v48 = v52;
      sub_22088BF9C();

      v49 = v54;
      sub_22088E7EC();
      v36(v48, v18);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v50 = off_2834174E0;
        type metadata accessor for StockSearchViewController(0);
        v50(v47, &off_28341EA98, v49);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_220516A78(v49, &qword_2812993D0, MEMORY[0x277CC9AF8]);
    }

    return (*(v38 + 8))(v40, v37);
  }

  return result;
}

void sub_2206B3CD8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  (*(v1 + 40))(v2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  sub_220584B74();
  sub_2206B8C0C(&qword_281297D08, sub_220584B74);

  sub_22088B6DC();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0;
  v6 = sub_2208903CC();

  sub_2208903BC();
}

uint64_t sub_2206B3ED4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + *(*result + 120));
    swift_unknownObjectRetain();

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v3 = &off_28341B698;
    if (!Strong)
    {
      v3 = 0;
    }

    *(v1 + 24) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2206B3FA0(uint64_t a1)
{
  v2 = sub_22089030C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206B845C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220479334(a1, v10, sub_2206B845C);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    swift_unownedRetainStrong();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unownedRetainStrong();

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        *(swift_allocObject() + 16) = v13;
        swift_unknownObjectRetain();
        sub_220888FEC();
        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    swift_unownedRetainStrong();
    v14 = swift_unknownObjectWeakLoadStrong();

    if (v14)
    {
      swift_unownedRetainStrong();
      v15 = type metadata accessor for StockSearchInteractor();
      sub_220720B10(v6, v14, v15, &off_28341B6B8);

      swift_unknownObjectRelease();
    }

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

uint64_t sub_2206B421C()
{
  (*(*(*v0 + 88) + 48))(*(*v0 + 80));
  sub_220584B74();
  sub_2206B8C0C(&qword_281297D08, sub_220584B74);
  sub_22088B6DC();
}

uint64_t sub_2206B4310(uint64_t a1)
{
  v2 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220889CFC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v11, *MEMORY[0x277D68C30], v6, v9);
  sub_2206B4538(a1, v11);
  (*(v7 + 8))(v11, v6);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v5, a1, v12);
  (*(v13 + 56))(v5, 0, 2, v12);
  sub_2206B8C0C(&qword_28128AD90, type metadata accessor for StockListSelectionModel);
  sub_2208886AC();
  return sub_2204A2830(v5, type metadata accessor for StockListSelectionModel);
}

uint64_t sub_2206B4538(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = sub_220889CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v7 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088685C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v13, a1, v8, v12);
  (*(v4 + 16))(v7, v19, v3);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + *(v4 + 80) + v14) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v13, v8);
  (*(v4 + 32))(v16 + v15, v7, v3);
  sub_22088726C();
}

uint64_t sub_2206B4760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v39 = *v3;
  v6 = type metadata accessor for StockSearchMode(0);
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v36 = v8;
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22089030C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206B845C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v18, v18);
  v20 = (&v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v21 = a1;
  }

  else
  {
    v21 = 0;
  }

  if (a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  *v20 = v21;
  v20[1] = v22;
  swift_storeEnumTagMultiPayload();

  sub_22088BDBC();
  sub_2204A2830(v20, type metadata accessor for StocksActivity);
  sub_2206B4BF0(v21, v22);
  sub_2208903FC();
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = v38;
    sub_220479334(v37, v38, type metadata accessor for StockSearchMode);
    v26 = (*(v35 + 80) + 40) & ~*(v35 + 80);
    v27 = (v36 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v29 = v39;
    v28[2] = *(v39 + 80);
    v28[3] = *(v29 + 88);
    v28[4] = v24;
    sub_2206B84B8(v25, v28 + v26, type metadata accessor for StockSearchMode);
    v30 = (v28 + v27);
    *v30 = v21;
    v30[1] = v22;
    *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = v23;

    sub_220846EC0(v21, v22, sub_2206B8520, v28);
  }

  else
  {
    v32 = v39;

    (*(v10 + 32))(v13, v17, v9);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_220720B10(v13, Strong, v32, &off_28341B6B8);
      swift_unknownObjectRelease();
    }

    return (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_2206B4BF0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_22088726C();
}

uint64_t sub_2206B4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v88 = a5;
  v89 = a8;
  v87 = a6;
  v90 = a3;
  v13 = sub_22088AA4C();
  v82 = *(v13 - 8);
  v83 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v73 - v18;
  v20 = sub_220886A4C();
  v79 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v78 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for StockSearchMode(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23 - 8, v26);
  v77 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v73 - v29;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v73 = v19;
  v74 = v20;
  v81 = a7;
  v84 = a1;
  v85 = a2;
  v32 = a1;
  v33 = a2;
  v34 = v90;
  v35 = v88;
  v86 = sub_2206B56B0(v32, v33, v90, v88);
  v91 = v86;
  v36 = swift_allocObject();
  swift_weakInit();
  sub_220479334(v35, v30, type metadata accessor for StockSearchMode);
  v37 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v38 = swift_allocObject();
  v75 = a9;
  v38[2] = a9;
  v38[3] = a10;
  v76 = a10;
  v38[4] = v36;
  sub_2206B84B8(v30, v38 + v37, type metadata accessor for StockSearchMode);
  sub_220584B74();
  sub_2206B8C0C(&qword_281297D08, sub_220584B74);

  sub_22088B6DC();

  v39 = v34;
  if (*(v34 + 16))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v84;
    v41 = v85;
    if (Strong)
    {
      type metadata accessor for StockSearchInteractor();

      v43 = 0;
LABEL_5:
      sub_220720B70(v43);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    v44 = v81;
    v45 = HIBYTE(v81) & 0xF;
    v46 = v87;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v45 = v87 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v48 = objc_opt_self();
      v49 = [v48 bundleForClass_];
      sub_220884CAC();

      sub_2204D4D88(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_220899360;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = sub_22048D860();
      *(v50 + 32) = v46;
      *(v50 + 40) = v44;

      sub_22089139C();

      v51 = [v48 bundleForClass_];
      sub_220884CAC();

      v52 = v80;
      sub_22088AA2C();
      v53 = swift_unknownObjectWeakLoadStrong();
      v42 = v84;
      if (v53)
      {
        v54 = v53;
        v55 = type metadata accessor for StockSearchInteractor();

        sub_220720C4C(v52, v54, v55, &off_28341B6B8);

        swift_unknownObjectRelease();
      }

      (*(v82 + 8))(v52, v83);
      v39 = v90;
      v41 = v85;
      goto LABEL_18;
    }

    v56 = v77;
    sub_220479334(v35, v77, type metadata accessor for StockSearchMode);
    v57 = v79;
    v58 = v74;
    if ((*(v79 + 48))(v56, 1, v74) != 1)
    {
      (*(v57 + 32))(v78, v56, v58);
      type metadata accessor for Localized();
      v60 = swift_getObjCClassFromMetadata();
      v61 = objc_opt_self();
      v62 = [v61 bundleForClass_];
      sub_220884CAC();

      v63 = [v61 bundleForClass_];
      sub_220884CAC();

      sub_2204D4D88(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_220899360;
      v65 = sub_220886A0C();
      v67 = v66;
      *(v64 + 56) = MEMORY[0x277D837D0];
      *(v64 + 64) = sub_22048D860();
      *(v64 + 32) = v65;
      *(v64 + 40) = v67;
      sub_22089139C();

      v68 = v73;
      sub_22088AA2C();
      v69 = swift_unknownObjectWeakLoadStrong();
      if (v69)
      {
        v70 = v69;
        v71 = type metadata accessor for StockSearchInteractor();

        sub_220720C4C(v68, v70, v71, &off_28341B6B8);

        swift_unknownObjectRelease();
      }

      (*(v82 + 8))(v68, v83);
      (*(v79 + 8))(v78, v74);
      v39 = v90;
      v42 = v84;
      v41 = v85;
      goto LABEL_18;
    }

    v59 = swift_unknownObjectWeakLoadStrong();
    v42 = v84;
    v41 = v85;
    if (v59)
    {
      type metadata accessor for StockSearchInteractor();

      v43 = 1;
      goto LABEL_5;
    }
  }

LABEL_18:
  v72 = v89;
  swift_beginAccess();
  if ((*(v72 + 16) & 1) == 0)
  {
    swift_beginAccess();
    *(v72 + 16) = 1;
    sub_2206B5B50(v87, v81, v42, v41, v39);
  }
}

uint64_t sub_2206B56B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a1;
  v29 = a2;
  v8 = *v5;
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220479334(a4, v17, type metadata accessor for StockSearchMode);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v18 = *v5;
    v27[1] = *(*v5 + 112);
    v19 = a3;
    v20 = *(v5 + *(v18 + 120));
    __swift_project_boxed_opaque_existential_1((v20 + 112), *(v20 + 136));
    sub_2208863EC();
    __swift_project_boxed_opaque_existential_1((v20 + 112), *(v20 + 136));
    v21 = sub_220885FCC();
    v22 = (*(*(v8 + 88) + 56))(v28, v29, v19, v13, v21, *(v8 + 80));
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    v23 = *(v5 + *(*v5 + 120));
    __swift_project_boxed_opaque_existential_1((v23 + 112), *(v23 + 136));
    v24 = sub_220885FCC();
    v22 = (*(*(v8 + 88) + 56))(v28, v29, a3, v13, v24, *(v8 + 80));
  }

  v25 = v22;

  (*(v10 + 8))(v13, v9);
  return v25;
}

uint64_t sub_2206B5998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_220479334(a3, v11, type metadata accessor for StockSearchMode);
    v13 = sub_220886A4C();
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
    {
      sub_22088867C();
      sub_2206B35D0(v7);

      v14 = type metadata accessor for StockListSelectionModel;
      v15 = v7;
    }

    else
    {

      v14 = type metadata accessor for StockSearchMode;
      v15 = v11;
    }

    return sub_2204A2830(v15, v14);
  }

  return result;
}

uint64_t sub_2206B5B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;

  sub_22088726C();
}

uint64_t sub_2206B5C24(uint64_t a1)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  (*(v3 + 72))(a1, v4, v3);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v5;
  v6[5] = a1;
  sub_220584B74();
  sub_2206B8C0C(&qword_281297D08, sub_220584B74);

  sub_22088B6DC();
}

uint64_t sub_2206B5DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088C6AC();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a1, v9, v12);
  v15 = (*(v10 + 88))(v14, v9);
  if (v15 == *MEMORY[0x277D6DF98])
  {
    (*(v10 + 8))(v14, v9);
    return sub_22088CF0C();
  }

  if (v15 == *MEMORY[0x277D6DF90])
  {
    return sub_22088CF0C();
  }

  if (v15 == *MEMORY[0x277D6DFA0])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_2206B6020(a3);
      sub_22088867C();
      sub_2206B35D0(v8);

      return sub_2204A2830(v8, type metadata accessor for StockListSelectionModel);
    }
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2206B6020(uint64_t a1)
{
  v2 = sub_220889CFC();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v62 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088BC8C();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockViewModel();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for StockSearchModel();
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v60 - v23;
  sub_2204D4A18();
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v60 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088685C();
  v70 = *(v31 - 8);
  v71 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v61 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v69 = &v60 - v36;
  v66 = a1;
  sub_22088CEEC();
  sub_22088AD8C();
  (*(v27 + 8))(v30, v26);
  sub_2206B84B8(v24, v20, type metadata accessor for StockSearchModel);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22049550C();
    v38 = *(v37 + 48);
    sub_2206B84B8(v20, v12, type metadata accessor for StockViewModel);
    v39 = sub_220886A4C();
    (*(*(v39 - 8) + 8))(&v20[v38], v39);
  }

  else
  {
    sub_2206B84B8(v20, v12, type metadata accessor for StockViewModel);
  }

  sub_2206B84B8(v12, v16, type metadata accessor for StockViewModel);
  v41 = v69;
  v40 = v70;
  v42 = *(v70 + 16);
  v43 = v71;
  v42(v69, v16, v71);
  sub_2204A2830(v16, type metadata accessor for StockViewModel);
  sub_22088CEFC();
  v45 = v67;
  v44 = v68;
  v46 = (*(v67 + 88))(v8, v68);
  if (v46 == *MEMORY[0x277D6DA60])
  {
    (*(v40 + 8))(v41, v43);
    (*(v45 + 96))(v8, v44);
    sub_220690814();
    v48 = *(v47 + 48);
    v49 = sub_2208854AC();
    v50 = *(*(v49 - 8) + 8);
    v50(&v8[v48], v49);
    return (v50)(v8, v49);
  }

  if (v46 == *MEMORY[0x277D6DA68])
  {
    (*(v40 + 8))(v41, v43);
    return (*(v45 + 8))(v8, v44);
  }

  if (v46 == *MEMORY[0x277D6DA70])
  {
    v52 = sub_22088994C();
    v42(v61, v41, v43);
    v73 = sub_22088A7BC();
    __swift_allocate_boxed_opaque_existential_1(v72);
    sub_22088A7AC();
    v53 = sub_2206B8C0C(&qword_27CF587A0, MEMORY[0x277D688E8]);
    sub_2206B72F0(v52, v72, v63, v41, v52, v53);
    sub_2204A2830(v72, sub_22055F87C);
    v54 = MEMORY[0x277D68C40];
  }

  else
  {
    if (v46 != *MEMORY[0x277D6DA78])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }

    v55 = sub_2208897DC();
    v42(v61, v41, v43);
    v73 = sub_22088A79C();
    __swift_allocate_boxed_opaque_existential_1(v72);
    sub_22088A78C();
    v56 = sub_2206B8C0C(&qword_281298460, MEMORY[0x277D687D0]);
    sub_2206B72F0(v55, v72, v63, v41, v55, v56);
    sub_2204A2830(v72, sub_22055F87C);
    v54 = MEMORY[0x277D68C38];
  }

  v58 = v64;
  v57 = v65;
  v59 = v62;
  (*(v64 + 104))(v62, *v54, v65);
  sub_2206B4538(v41, v59);
  (*(v58 + 8))(v59, v57);
  return (*(v40 + 8))(v41, v43);
}

uint64_t sub_2206B6844()
{
  v0 = type metadata accessor for StockListSelectionModel();
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088867C();
  sub_2206B35D0(v3);
  return sub_2204A2830(v3, type metadata accessor for StockListSelectionModel);
}

uint64_t sub_2206B68FC(uint64_t a1)
{
  (*(*(*v1 + 88) + 80))(a1, *(*v1 + 80));
  sub_220584B74();
  sub_2206B8C0C(&qword_281297D08, sub_220584B74);
  sub_22088B6DC();
}

uint64_t sub_2206B69F0()
{
  v0 = sub_22088910C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2208890FC();
  sub_2204D4D88(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v5 = sub_220886F8C();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277CEAD18], v5);
  sub_2206B8C0C(&qword_281298580, MEMORY[0x277D68250]);
  sub_220886F1C();

  (*(v1 + 8))(v4, v0);
  sub_22088924C();
  sub_2206B8C0C(&qword_281298548, MEMORY[0x277D683A0]);
  memset(v10, 0, sizeof(v10));
  sub_220886F3C();
  return sub_2204A2830(v10, sub_22055F87C);
}

uint64_t sub_2206B6CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a6;
  v57 = a1;
  v8 = sub_22088982C();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v54 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088910C();
  v50 = *(v11 - 8);
  v51 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v49 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockViewModel();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  v20 = MEMORY[0x277D84F90];
  if (v19)
  {
    v58 = a3;
    *&v59[0] = MEMORY[0x277D84F90];
    sub_22048EE54(0, v19, 0);
    v20 = *&v59[0];
    v21 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v48 = v15;
    v22 = *(v15 + 72);
    do
    {
      sub_220479334(v21, v18, type metadata accessor for StockViewModel);
      v23 = sub_22088681C();
      v25 = v24;
      sub_2204A2830(v18, type metadata accessor for StockViewModel);
      *&v59[0] = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_22048EE54((v26 > 1), v27 + 1, 1);
        v20 = *&v59[0];
      }

      *(v20 + 16) = v27 + 1;
      v28 = v20 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
      v21 += v22;
      --v19;
    }

    while (v19);
    a3 = v58;
    v15 = v48;
  }

  v29 = *(a3 + 16);
  v30 = MEMORY[0x277D84F90];
  if (v29)
  {
    *&v59[0] = MEMORY[0x277D84F90];
    sub_22048EE54(0, v29, 0);
    v30 = *&v59[0];
    v31 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v58 = *(v15 + 72);
    do
    {
      sub_220479334(v31, v18, type metadata accessor for StockViewModel);
      v32 = sub_22088681C();
      v34 = v33;
      sub_2204A2830(v18, type metadata accessor for StockViewModel);
      *&v59[0] = v30;
      v36 = *(v30 + 16);
      v35 = *(v30 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22048EE54((v35 > 1), v36 + 1, 1);
        v30 = *&v59[0];
      }

      *(v30 + 16) = v36 + 1;
      v37 = v30 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
      v31 += v58;
      --v29;
    }

    while (v29);
  }

  *&v59[0] = v20;
  sub_22048EE74(v30);
  sub_2206B8C0C(&qword_281298580, MEMORY[0x277D68250]);
  v38 = v51;
  sub_220886EFC();

  v39 = v49;
  sub_2208890FC();
  sub_220886F1C();
  (*(v50 + 8))(v39, v38);
  v40 = v54;
  sub_22088981C();
  sub_2204D4D88(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v41 = sub_220886F8C();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_220899360;
  (*(v42 + 104))(v44 + v43, *MEMORY[0x277CEAD10], v41);
  sub_2206B8C0C(&qword_281298450, MEMORY[0x277D68800]);
  v45 = v56;
  sub_220886F1C();

  (*(v55 + 8))(v40, v45);
  sub_220889D8C();
  sub_2206B8C0C(&qword_281298320, MEMORY[0x277D68CF0]);
  memset(v59, 0, sizeof(v59));
  sub_220886F3C();
  return sub_2204A2830(v59, sub_22055F87C);
}

uint64_t sub_2206B72F0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v9 = *a3;
  v10 = sub_22088685C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a3 + v9[18]);
  v15 = swift_allocObject();
  swift_weakInit();
  (*(v11 + 16))(v14, a4, v10);
  sub_220479334(a2, v26, sub_22055F87C);
  v16 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v17 = (v12 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v9[10];
  *(v18 + 3) = v23;
  *(v18 + 4) = v9[11];
  *(v18 + 5) = v24;
  *(v18 + 6) = v15;
  (*(v11 + 32))(&v18[v16], v14, v10);
  *&v18[v17] = v25;
  v19 = &v18[(v17 + 15) & 0xFFFFFFFFFFFFFFF8];
  v20 = v26[1];
  *v19 = v26[0];
  *(v19 + 1) = v20;

  sub_22088726C();
}

uint64_t sub_2206B7524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v61 = a7;
  v72 = a4;
  v73 = a5;
  v10 = sub_22088944C();
  v68 = *(v10 - 8);
  v69 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v66 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v64 = &v50 - v15;
  v65 = sub_220886A4C();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v16);
  v62 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088943C();
  v70 = *(v18 - 8);
  v71 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v67 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22088915C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22088699C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22088914C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v59 = result;
    v60 = a9;
    sub_22088681C();
    v51 = v30;
    v74 = a1;
    sub_2208867CC();
    sub_22067D2D4(v24);
    (*(v26 + 8))(v29, v25);
    sub_22088683C();
    sub_22088912C();
    sub_2204D4D88(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v58 = v36;
    v55 = sub_220886F8C();
    v37 = *(v55 - 8);
    v57 = *(v37 + 72);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    v56 = xmmword_220899360;
    *(v39 + 16) = xmmword_220899360;
    v54 = *MEMORY[0x277CEAD18];
    v53 = *(v37 + 104);
    v53(v39 + v38);
    v52 = "archInteractor.swift";
    sub_2206B8C0C(&qword_281298578, MEMORY[0x277D68270]);
    v40 = v51;
    sub_220886F1C();

    (*(v31 + 8))(v34, v40);
    __swift_project_boxed_opaque_existential_1((v59 + *(*v59 + 160)), *(v59 + *(*v59 + 160) + 24));
    v41 = v62;
    sub_2208863EC();
    v42 = sub_2208869AC();
    v44 = v68;
    v43 = v69;
    v45 = MEMORY[0x277D68560];
    if ((v42 & 1) == 0)
    {
      v45 = MEMORY[0x277D68558];
    }

    v46 = v64;
    (*(v68 + 104))(v64, *v45, v69);
    (*(v44 + 16))(v66, v46, v43);
    v47 = v67;
    sub_22088942C();
    (*(v44 + 8))(v46, v43);
    (*(v63 + 8))(v41, v65);
    v48 = swift_allocObject();
    *(v48 + 16) = v56;
    (v53)(v48 + v38, v54, v55);
    sub_2206B8C0C(&qword_2812984F0, MEMORY[0x277D68550]);
    v49 = v71;
    sub_220886F1C();

    (*(v70 + 8))(v47, v49);
    sub_220886F3C();
  }

  return result;
}

uint64_t sub_2206B7C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_220889CFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220889A0C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088681C();
  (*(v5 + 16))(v8, a3, v4);
  sub_2208899FC();
  sub_2204D4D88(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v14 = sub_220886F8C();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_220899360;
  (*(v15 + 104))(v17 + v16, *MEMORY[0x277CEAD18], v14);
  sub_2206B8C0C(&qword_27CF58A80, MEMORY[0x277D68958]);
  sub_220886F1C();

  (*(v10 + 8))(v13, v9);
  sub_220889C9C();
  sub_2206B8C0C(&qword_27CF58A88, MEMORY[0x277D68BD0]);
  memset(v19, 0, sizeof(v19));
  sub_220886F3C();
  return sub_2204A2830(v19, sub_22055F87C);
}

uint64_t *sub_2206B7FBC()
{
  v1 = *v0;
  sub_22054B9F8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + *(*v0 + 160));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2206B8124()
{
  sub_2206B7FBC();

  return swift_deallocClassInstance();
}

void sub_2206B81C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor();
    v8[1] = type metadata accessor for StockSearchModel();
    v8[2] = sub_2206B8C0C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor);
    v8[3] = sub_2206B8C0C(&qword_281291EB0, type metadata accessor for StockSearchModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2206B82B8(uint64_t a1)
{
  v3 = *(sub_22088685C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_220889CFC() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2206B7C54(a1, v1 + v4, v7);
}

uint64_t sub_2206B838C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_22088685C() - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2206B7524(a1, v1[6], v1 + v8, *(v1 + v9), v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8), v3, v4, v5, v6);
}

void sub_2206B845C()
{
  if (!qword_2812968C0)
  {
    sub_2204971CC();
    v0 = sub_2208903EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2812968C0);
    }
  }
}

uint64_t sub_2206B84B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206B8520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(type metadata accessor for StockSearchMode(0) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2206B4C88(a1, a2, a3, v3[4], v3 + v10, *(v3 + v11), *(v3 + v11 + 8), *(v3 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), v7, v8);
}

uint64_t sub_2206B85F4(uint64_t a1)
{
  v3 = *(type metadata accessor for StockSearchMode(0) - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2206B5998(a1, v4, v5);
}

uint64_t sub_2206B86B8(uint64_t a1, void *a2)
{
  v34 = a1;
  v3 = sub_22088F11C();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22088F14C();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220886A4C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockSearchMode(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
  swift_beginAccess();
  sub_220479334(a2 + v20, v19, type metadata accessor for StockSearchMode);
  if ((*(v12 + 48))(v19, 1, v11) == 1)
  {
    goto LABEL_2;
  }

  v33 = v10;
  (*(v12 + 32))(v15, v19, v11);
  v26 = sub_2208869BC();
  v28 = v27;
  if (v26 == sub_2208869BC() && v28 == v29)
  {

    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v31 = sub_2208928BC();

    result = (*(v12 + 8))(v15, v11);
    v10 = v33;
    if ((v31 & 1) == 0)
    {
LABEL_2:
      sub_22046D5B4();
      v21 = sub_220891D0C();
      v22 = swift_allocObject();
      *(v22 + 16) = a2;
      aBlock[4] = sub_2206B8C04;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2204C35E8;
      aBlock[3] = &block_descriptor_28;
      v23 = _Block_copy(aBlock);
      v24 = a2;

      sub_22088F13C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2206B8C0C(&qword_281296CA0, MEMORY[0x277D85198]);
      sub_2204D4D88(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2204B6C74();
      sub_2208923FC();
      MEMORY[0x223D89EC0](0, v10, v6, v23);
      _Block_release(v23);

      (*(v36 + 8))(v6, v3);
      return (*(v7 + 8))(v10, v35);
    }
  }

  return result;
}

uint64_t sub_2206B8B80(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2206B86B8(a1, Strong);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2206B8C0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for WatchState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
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

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WatchState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
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

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2206B8DCC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2206B8DE8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_2206B8E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = a1;
  v101 = a2;
  v4 = sub_2208852DC();
  v113 = *(v4 - 8);
  v114 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v122 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2208857EC();
  v111 = *(v7 - 8);
  v112 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v109 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22088699C();
  v121 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v10);
  v119 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v115 = &v93 - v14;
  v120 = sub_220885D4C();
  v15 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v16);
  v118 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for StockSparklineViewModel;
  sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v93 - v20;
  v117 = &v93 - v20;
  v22 = MEMORY[0x277D697F8];
  v99 = MEMORY[0x277D697F8];
  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v103 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v102 = &v93 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v100 = &v93 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v97 = &v93 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v116 = &v93 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = (&v93 - v40);
  v42 = sub_22088685C();
  v43 = *(v42 - 8);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v47 = &v93 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v43;
  v104 = *(v43 + 16);
  v104(v47, v3, v42, v45);
  sub_2204B28E8(v108, v41, &qword_2812990C0, v22);
  v48 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v48 - 8) + 56))(v21, 1, 1, v48);
  v49 = type metadata accessor for StockViewModel();
  v50 = v49[8];
  v108 = v15;
  v51 = *(v15 + 16);
  v52 = v118;
  v53 = v120;
  v51(v118, v3 + v50, v120);
  v98 = *(v3 + v49[9]);
  v54 = v101;
  v107 = v42;
  (v104)(v101, v47, v42);
  v55 = v49;
  v56 = v54 + v49[5];
  v57 = v99;
  sub_2204B28E8(v41, v56, &qword_2812990C0, v99);
  v58 = v54 + v55[6];
  v59 = v54;
  v60 = v116;
  sub_2204B28E8(v117, v58, qword_28128AAE8, v106);
  v51((v59 + v55[8]), v52, v53);
  v95 = v55;
  *(v59 + v55[9]) = v98;
  v106 = v41;
  v61 = v41;
  v62 = v97;
  sub_2204B28E8(v61, v60, &qword_2812990C0, v57);
  v63 = v115;
  v104 = v47;
  sub_2208867CC();
  sub_2204B28E8(v60, v62, &qword_2812990C0, v57);
  v64 = sub_22088676C();
  v65 = *(v64 - 8);
  v66 = *(v65 + 48);
  if (v66(v62, 1, v64) == 1)
  {
    sub_2204B3B04(v62, &qword_2812990C0, MEMORY[0x277D697F8]);
    v99 = 0;
    v98 = 1;
  }

  else
  {
    v99 = sub_22088675C();
    v98 = v67;
    (*(v65 + 8))(v62, v64);
  }

  v68 = v100;
  sub_2204B28E8(v60, v100, &qword_2812990C0, MEMORY[0x277D697F8]);
  v69 = v66(v68, 1, v64);
  v70 = v103;
  if (v69 == 1)
  {
    sub_2204B3B04(v68, &qword_2812990C0, MEMORY[0x277D697F8]);
    v97 = 0;
    v96 = 1;
  }

  else
  {
    v97 = sub_22088666C();
    v96 = v71;
    (*(v65 + 8))(v68, v64);
  }

  v72 = v102;
  sub_2204B28E8(v60, v102, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v66(v72, 1, v64) == 1)
  {
    sub_2204B3B04(v72, &qword_2812990C0, MEMORY[0x277D697F8]);
    v102 = 0;
    LODWORD(v100) = 1;
  }

  else
  {
    v102 = sub_22088671C();
    LODWORD(v100) = v73;
    (*(v65 + 8))(v72, v64);
  }

  sub_2204B28E8(v60, v70, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v66(v70, 1, v64) == 1)
  {
    sub_2204B3B04(v70, &qword_2812990C0, MEMORY[0x277D697F8]);
    v94 = 0;
    v74 = 0;
  }

  else
  {
    v94 = sub_22088668C();
    v74 = v75;
    (*(v65 + 8))(v70, v64);
  }

  v76 = v119;
  v77 = v63;
  v78 = v59 + v95[7];
  v79 = *(v121 + 16);
  v80 = v110;
  v79(v119, v77, v110);
  v82 = v111;
  v81 = v112;
  v83 = v109;
  (*(v111 + 104))(v109, *MEMORY[0x277D69288], v112);
  v84 = v122;
  sub_22088524C();
  *v78 = v99;
  *(v78 + 8) = v98 & 1;
  *(v78 + 16) = v97;
  *(v78 + 24) = v96 & 1;
  *(v78 + 32) = v102;
  *(v78 + 40) = v100 & 1;
  *(v78 + 48) = v94;
  *(v78 + 56) = v74;
  v85 = type metadata accessor for PriceViewModel();
  v79((v78 + v85[10]), v76, v80);
  *(v78 + 64) = 9666786;
  *(v78 + 72) = 0xA300000000000000;
  (*(v82 + 16))(v78 + v85[9], v83, v81);
  v86 = v113;
  v87 = v114;
  (*(v113 + 16))(v78 + v85[11], v84, v114);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v88 = qword_2812B6B48;
  (*(v82 + 8))(v83, v81);
  v89 = *(v121 + 8);
  v89(v119, v80);
  v89(v115, v80);
  v90 = MEMORY[0x277D697F8];
  sub_2204B3B04(v116, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v108 + 8))(v118, v120);
  sub_2204B3B04(v117, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B3B04(v106, &qword_2812990C0, v90);
  (*(v105 + 8))(v104, v107);
  v91 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v86 + 40))(v88 + v91, v122, v87);
  return swift_endAccess();
}

uint64_t sub_2206B99EC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v102) = a1;
  v94 = a2;
  v3 = sub_2208852DC();
  v109 = *(v3 - 8);
  v110 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v118 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208857EC();
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22088699C();
  v117 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v9);
  v115 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v111 = &v89 - v13;
  v116 = sub_220885D4C();
  v14 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v15);
  v114 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for StockSparklineViewModel;
  sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v89 - v19;
  v113 = &v89 - v19;
  v21 = MEMORY[0x277D697F8];
  v95 = MEMORY[0x277D697F8];
  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v99 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v98 = &v89 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v97 = &v89 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v93 = &v89 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v112 = &v89 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v40 = &v89 - v39;
  v41 = sub_22088685C();
  v42 = *(v41 - 8);
  v44 = MEMORY[0x28223BE20](v41, v43);
  v46 = (&v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = v42;
  v96 = *(v42 + 16);
  v96(v46, v2, v41, v44);
  v47 = type metadata accessor for StockViewModel();
  sub_2204B28E8(v2 + v47[5], v40, &qword_2812990C0, v21);
  v48 = type metadata accessor for StockSparklineViewModel(0);
  (*(*(v48 - 8) + 56))(v20, 1, 1, v48);
  v49 = v47[8];
  v104 = v14;
  v50 = *(v14 + 16);
  v51 = v2 + v49;
  v52 = v114;
  v53 = v116;
  v50(v114, v51, v116);
  v54 = v94;
  v103 = v41;
  (v96)(v94, v46, v41);
  v55 = v95;
  sub_2204B28E8(v40, v54 + v47[5], &qword_2812990C0, v95);
  sub_2204B28E8(v113, v54 + v47[6], qword_28128AAE8, v100);
  v56 = v52;
  v57 = v112;
  v50((v54 + v47[8]), v56, v53);
  v91 = v47;
  *(v54 + v47[9]) = v102;
  v102 = v40;
  sub_2204B28E8(v40, v57, &qword_2812990C0, v55);
  v58 = v111;
  v100 = v46;
  sub_2208867CC();
  v59 = v93;
  sub_2204B28E8(v57, v93, &qword_2812990C0, v55);
  v60 = sub_22088676C();
  v61 = *(v60 - 8);
  v62 = *(v61 + 48);
  if (v62(v59, 1, v60) == 1)
  {
    sub_2204B3B04(v59, &qword_2812990C0, MEMORY[0x277D697F8]);
    v96 = 0;
    LODWORD(v95) = 1;
  }

  else
  {
    v96 = sub_22088675C();
    LODWORD(v95) = v63;
    (*(v61 + 8))(v59, v60);
  }

  v64 = v97;
  sub_2204B28E8(v57, v97, &qword_2812990C0, MEMORY[0x277D697F8]);
  v65 = v62(v64, 1, v60);
  v66 = v99;
  if (v65 == 1)
  {
    sub_2204B3B04(v64, &qword_2812990C0, MEMORY[0x277D697F8]);
    v93 = 0;
    v92 = 1;
  }

  else
  {
    v93 = sub_22088666C();
    v92 = v67;
    (*(v61 + 8))(v64, v60);
  }

  v68 = v98;
  sub_2204B28E8(v57, v98, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v62(v68, 1, v60) == 1)
  {
    sub_2204B3B04(v68, &qword_2812990C0, MEMORY[0x277D697F8]);
    v98 = 0;
    LODWORD(v97) = 1;
  }

  else
  {
    v98 = sub_22088671C();
    LODWORD(v97) = v69;
    (*(v61 + 8))(v68, v60);
  }

  sub_2204B28E8(v57, v66, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v62(v66, 1, v60) == 1)
  {
    sub_2204B3B04(v66, &qword_2812990C0, MEMORY[0x277D697F8]);
    v90 = 0;
    v70 = 0;
  }

  else
  {
    v90 = sub_22088668C();
    v70 = v71;
    (*(v61 + 8))(v66, v60);
  }

  v72 = v115;
  v73 = v58;
  v74 = v54 + v91[7];
  v75 = *(v117 + 16);
  v76 = v106;
  v75(v115, v73, v106);
  v78 = v107;
  v77 = v108;
  v79 = v105;
  (*(v107 + 104))(v105, *MEMORY[0x277D69288], v108);
  v80 = v118;
  sub_22088524C();
  *v74 = v96;
  *(v74 + 8) = v95 & 1;
  *(v74 + 16) = v93;
  *(v74 + 24) = v92 & 1;
  *(v74 + 32) = v98;
  *(v74 + 40) = v97 & 1;
  *(v74 + 48) = v90;
  *(v74 + 56) = v70;
  v81 = type metadata accessor for PriceViewModel();
  v75((v74 + v81[10]), v72, v76);
  *(v74 + 64) = 9666786;
  *(v74 + 72) = 0xA300000000000000;
  (*(v78 + 16))(v74 + v81[9], v79, v77);
  v82 = v109;
  v83 = v110;
  (*(v109 + 16))(v74 + v81[11], v80, v110);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v84 = qword_2812B6B48;
  (*(v78 + 8))(v79, v77);
  v85 = *(v117 + 8);
  v85(v115, v76);
  v85(v111, v76);
  v86 = MEMORY[0x277D697F8];
  sub_2204B3B04(v112, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v104 + 8))(v114, v116);
  sub_2204B3B04(v113, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B3B04(v102, &qword_2812990C0, v86);
  (*(v101 + 8))(v100, v103);
  v87 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v82 + 40))(v84 + v87, v118, v83);
  return swift_endAccess();
}

uint64_t sub_2206BA5E0()
{
  if (*v0)
  {
    return 0x6863746157746F6ELL;
  }

  else
  {
    return 0x676E696863746177;
  }
}

uint64_t sub_2206BA624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696863746177 && a2 == 0xE800000000000000;
  if (v6 || (sub_2208928BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6863746157746F6ELL && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2208928BC();

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

uint64_t sub_2206BA704(uint64_t a1)
{
  v2 = sub_2206BABC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206BA740(uint64_t a1)
{
  v2 = sub_2206BABC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2206BA77C(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  sub_2206BAC70(0, &qword_27CF58AA8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206BABC8();
  sub_220892A5C();
  if (v3 == 2)
  {
    v11[15] = 1;
  }

  else
  {
    v11[14] = 0;
  }

  sub_22089280C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2206BA90C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2206BA9D8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2206BA954@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22088677C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2206BA97C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2204CF0F0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2206BA9D8(void *a1)
{
  sub_2206BAC70(0, &qword_27CF58A90, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v13[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206BABC8();
  sub_220892A4C();
  if (!v1)
  {
    v13[15] = 0;
    sub_22089273C();
    if (v10)
    {
      v9 = 0;
LABEL_8:

      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v9;
    }

    v13[14] = 1;
    v9 = v8;
    sub_22089273C();
    if (v12)
    {
      v9 = 2;
      goto LABEL_8;
    }

    sub_2206BAC1C();
    swift_allocError();
    swift_willThrow();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2206BABC8()
{
  result = qword_27CF58A98;
  if (!qword_27CF58A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58A98);
  }

  return result;
}

unint64_t sub_2206BAC1C()
{
  result = qword_27CF58AA0;
  if (!qword_27CF58AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58AA0);
  }

  return result;
}

void sub_2206BAC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2206BABC8();
    v7 = a3(a1, &type metadata for WatchState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2206BACF8()
{
  result = qword_27CF58AB0;
  if (!qword_27CF58AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58AB0);
  }

  return result;
}

unint64_t sub_2206BAD50()
{
  result = qword_27CF58AB8;
  if (!qword_27CF58AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58AB8);
  }

  return result;
}

unint64_t sub_2206BADA8()
{
  result = qword_27CF58AC0;
  if (!qword_27CF58AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58AC0);
  }

  return result;
}

unint64_t sub_2206BAE00()
{
  result = qword_27CF58AC8;
  if (!qword_27CF58AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58AC8);
  }

  return result;
}

uint64_t type metadata accessor for CreateWatchlistViewModel()
{
  result = qword_27CF58AD0;
  if (!qword_27CF58AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206BAEC8()
{
  sub_2206AA758(319);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_2206BAF44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22088519C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088518C();
  v9 = sub_22088517C();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *a2 = v9;
  a2[1] = v11;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_220884CAC();
  v16 = v15;

  a2[2] = v14;
  a2[3] = v16;
  WatchlistViewModel = type metadata accessor for CreateWatchlistViewModel();
  return sub_22057B318(a1, a2 + *(WatchlistViewModel + 24));
}

BOOL sub_2206BB0E8(void *a1, void *a2)
{
  v4 = sub_22088685C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206BB404();
  v14 = v13;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2208928BC() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_2208928BC() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for CreateWatchlistViewModel() + 24);
  v19 = *(v14 + 48);
  sub_220576A98(a1 + v18, v17);
  sub_220576A98(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) != 1)
  {
    sub_220576A98(v17, v12);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v19], v4);
      sub_2206BB4C8();
      v22 = sub_2208912FC();
      v23 = *(v5 + 8);
      v23(v8, v4);
      v23(v12, v4);
      sub_2206BB468(v17, sub_2206AA758);
      return (v22 & 1) != 0;
    }

    (*(v5 + 8))(v12, v4);
LABEL_12:
    sub_2206BB468(v17, sub_2206BB404);
    return 0;
  }

  if (v20(&v17[v19], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_2206BB468(v17, sub_2206AA758);
  return 1;
}

void sub_2206BB404()
{
  if (!qword_27CF58AE0)
  {
    sub_2206AA758(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF58AE0);
    }
  }
}

uint64_t sub_2206BB468(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2206BB4C8()
{
  result = qword_281299070;
  if (!qword_281299070)
  {
    sub_22088685C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299070);
  }

  return result;
}

uint64_t sub_2206BB520()
{

  sub_2206BBFC4(v0 + 24);

  return swift_deallocClassInstance();
}

BOOL sub_2206BB588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22089057C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a4, v5, v8);
  v11 = (*(v6 + 88))(v10, v5) == *MEMORY[0x277D33888];
  (*(v6 + 8))(v10, v5);
  return v11;
}

uint64_t sub_2206BB698(uint64_t a1)
{
  v63 = a1;
  v59 = sub_22088D1DC();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v1);
  v58 = (&v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v56, v3);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220887C9C();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088822C();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208876BC();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220884E9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v52 - v27;
  v29 = sub_22089057C();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = (&v52 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v34, v63, v29, v32);
  if ((*(v30 + 88))(v34, v29) != *MEMORY[0x277D33888])
  {
    return (*(v30 + 8))(v34, v29);
  }

  (*(v30 + 96))(v34, v29);
  v35 = [*v34 routeURL];
  if (!v35)
  {
    v40 = *(v17 + 56);
    v40(v28, 1, 1, v16);
    sub_2206BC04C(v28, sub_22047C320);
    swift_unknownObjectRetain();
    sub_2208881FC();
    v40(v24, 1, 1, v16);
    v42 = v54;
    v41 = v55;
    (*(v54 + 104))(v8, *MEMORY[0x277D2FF08], v55);
    v43 = v60;
    sub_22088767C();
    (*(v42 + 8))(v8, v41);
    sub_2206BC04C(v24, sub_22047C320);
    (*(v52 + 8))(v12, v53);
    sub_2204481D8();
    v45 = *(v44 + 48);
    v46 = v61;
    v47 = v61 + *(v44 + 64);
    sub_2206BBED0(v43, v61);
    *(v46 + v45) = 2;
    type metadata accessor for StocksActivity.Article(0);
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2206BBF34(v62 + 24, &v64);
    if (v65)
    {
      __swift_project_boxed_opaque_existential_1(&v64, v65);
      v48 = sub_22088B8AC();
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v50 = v58;
      v49 = v59;
      if (v48)
      {
LABEL_10:
        *v50 = v48;
        v51 = v57 + 104;
        (*(v57 + 104))(v50, *MEMORY[0x277D6E588], v49);
        sub_22088B01C();
        swift_unknownObjectRelease();
        (*(v51 - 96))(v50, v49);
        sub_2206BC04C(v46, type metadata accessor for StocksActivity);
        v37 = MEMORY[0x277D2FB40];
        v38 = v43;
        return sub_2206BC04C(v38, v37);
      }
    }

    else
    {
      sub_2206BBFC4(&v64);
      v50 = v58;
      v49 = v59;
    }

    v48 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v36 = v35;
  sub_220884E4C();

  swift_unknownObjectRelease();
  (*(v17 + 32))(v28, v20, v16);
  (*(v17 + 56))(v28, 0, 1, v16);
  v37 = sub_22047C320;
  v38 = v28;
  return sub_2206BC04C(v38, v37);
}

uint64_t sub_2206BBED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2208876BC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206BBF34(uint64_t a1, uint64_t a2)
{
  sub_22050528C(0, &qword_27CF58AE8, &qword_281297C30, MEMORY[0x277D6D908], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206BBFC4(uint64_t a1)
{
  sub_22050528C(0, &qword_27CF58AE8, &qword_281297C30, MEMORY[0x277D6D908], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2206BC04C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_2206BC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22089057C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a4, v5, v8);
  v11 = (*(v6 + 88))(v10, v5) == *MEMORY[0x277D33888];
  (*(v6 + 8))(v10, v5);
  return v11;
}

uint64_t sub_2206BC1E4(uint64_t a1)
{
  v64 = a1;
  v60 = sub_22088D1DC();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v1);
  v59 = (&v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v57, v3);
  v62 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220887C9C();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088822C();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208876BC();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v61 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220884E9C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22047C320(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v53 - v27;
  v29 = sub_22089057C();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = (&v53 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v34, v64, v29, v32);
  if ((*(v30 + 88))(v34, v29) != *MEMORY[0x277D33888])
  {
    return (*(v30 + 8))(v34, v29);
  }

  (*(v30 + 96))(v34, v29);
  v35 = [*v34 routeURL];
  if (v35)
  {
    v36 = v35;
    sub_220884E4C();

    swift_unknownObjectRelease();
    (*(v17 + 32))(v28, v20, v16);
    (*(v17 + 56))(v28, 0, 1, v16);
    v37 = sub_22047C320;
    v38 = v28;
  }

  else
  {
    v40 = *(v17 + 56);
    v40(v28, 1, 1, v16);
    sub_2206BC04C(v28, sub_22047C320);
    swift_unknownObjectRetain();
    sub_2208881FC();
    v40(v24, 1, 1, v16);
    v42 = v55;
    v41 = v56;
    (*(v55 + 104))(v8, *MEMORY[0x277D2FF08], v56);
    v43 = v61;
    sub_22088767C();
    (*(v42 + 8))(v8, v41);
    sub_2206BC04C(v24, sub_22047C320);
    (*(v53 + 8))(v12, v54);
    sub_2204481D8();
    v45 = *(v44 + 48);
    v46 = v62;
    v47 = v62 + *(v44 + 64);
    sub_2206BBED0(v43, v62);
    *(v46 + v45) = 2;
    type metadata accessor for StocksActivity.Article(0);
    *v47 = 0u;
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2206BBF34(v63 + 24, &v65);
    v48 = v66;
    if (v66)
    {
      __swift_project_boxed_opaque_existential_1(&v65, v66);
      v48 = sub_22088B89C();
      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    else
    {
      sub_2206BBFC4(&v65);
    }

    sub_2206BBF34(v63 + 24, &v65);
    if (v66)
    {
      __swift_project_boxed_opaque_existential_1(&v65, v66);
      v49 = sub_22088B8AC();
      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    else
    {
      sub_2206BBFC4(&v65);
      v49 = 0;
    }

    v51 = v58;
    v50 = v59;
    *v59 = v48;
    v50[1] = v49;
    v52 = v60;
    (*(v51 + 104))(v50, *MEMORY[0x277D6E590], v60);
    sub_22088B01C();
    swift_unknownObjectRelease();
    (*(v51 + 8))(v50, v52);
    sub_2206BC04C(v46, type metadata accessor for StocksActivity);
    v37 = MEMORY[0x277D2FB40];
    v38 = v43;
  }

  return sub_2206BC04C(v38, v37);
}

unint64_t sub_2206BCA70()
{
  result = qword_2812834E0;
  if (!qword_2812834E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812834E0);
  }

  return result;
}

uint64_t sub_2206BCB54(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v103 = a3;
  v116 = sub_22088519C();
  v133 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v5);
  v115 = v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v130, v7);
  v114 = (v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v10);
  v12 = (v95 - v11);
  sub_22051D97C();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v16);
  v117 = v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v134 = (v95 - v20);
  sub_22051DA14();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v110 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v24, v25);
  v111 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v124 = v95 - v29;
  sub_2204FA2D0();
  v31 = v30;
  v123 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v132 = v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v35);
  v127 = v95 - v36;
  v102 = sub_22088B64C();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v37);
  v100 = v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048802C(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v99 = v39;
  v98 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v40);
  v97 = v95 - v41;
  sub_2205252E0();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v95[3] = v95 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F1480();
  v46 = v45;
  v96 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47);
  v105 = v95 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95[2] = sub_22088E6FC();
  v95[1] = v49;
  v50 = sub_22044E28C(&unk_281296EB0, sub_2204F1480);
  v51 = sub_22089197C();
  v104 = a2;
  if (!v51)
  {
    v88 = MEMORY[0x277D84F90];
LABEL_34:
    v89 = sub_22044E28C(&qword_281297E78, sub_2204FA2D0);
    v90 = sub_22044E28C(&qword_281297E80, sub_2204FA2D0);
    MEMORY[0x223D80A20](v88, v31, v89, v90);
    v134 = type metadata accessor for ForYouFeedSectionDescriptor;
    sub_22044E28C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_22044E28C(&unk_281293320, type metadata accessor for ForYouFeedModel);
    sub_22088E6EC();
    v91 = v101;
    v92 = v100;
    v93 = v102;
    (*(v101 + 104))(v100, *MEMORY[0x277D6D868], v102);
    sub_22044E28C(&unk_281288480, v134);
    v94 = v97;
    sub_22088C67C();
    (*(v91 + 8))(v92, v93);
    v104(v94);
    (*(v98 + 8))(v94, v99);
    return (*(v96 + 8))(v105, v46);
  }

  v137 = MEMORY[0x277D84F90];
  v122 = v51;
  sub_22070C334(0, v51 & ~(v51 >> 63), 0);
  v128 = v137;
  result = sub_22089193C();
  if (v122 < 0)
  {
    goto LABEL_37;
  }

  v53 = 0;
  v121 = (v123 + 16);
  v129 = (v15 + 16);
  v113 = (v133 + 1);
  v112 = (v15 + 8);
  v133 = (v15 + 32);
  v106 = (v123 + 8);
  v125 = (v123 + 32);
  v54 = v117;
  v131 = v31;
  v109 = a1;
  v108 = v24;
  v107 = v46;
  v120 = v50;
  while (1)
  {
    v55 = __OFADD__(v53, 1);
    v56 = v53 + 1;
    if (v55)
    {
      __break(1u);
      goto LABEL_36;
    }

    v126 = v56;
    v57 = sub_2208919BC();
    (*v121)(v132);
    v57(v136, 0);
    sub_22088B2AC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      break;
    }

    if (!EnumCaseMultiPayload)
    {
      v80 = sub_2204595F4;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_23;
    }

    sub_22045849C();
    v60 = *(v59 + 48);
    v61 = v124;
    sub_2204FC1C4(v124 + *(v59 + 64), sub_2204595F4);
    sub_2204FC1C4(v61 + v60, type metadata accessor for StockViewModel);
    v62 = sub_22088685C();
    (*(*(v62 - 8) + 8))(v61, v62);
LABEL_26:
    (*v125)(v127, v132, v31);
LABEL_27:
    v81 = v128;
    v137 = v128;
    v83 = *(v128 + 16);
    v82 = *(v128 + 24);
    if (v83 >= v82 >> 1)
    {
      sub_22070C334(v82 > 1, v83 + 1, 1);
      v81 = v137;
    }

    *(v81 + 16) = v83 + 1;
    v84 = (*(v123 + 80) + 32) & ~*(v123 + 80);
    v128 = v81;
    v85 = v81 + v84 + *(v123 + 72) * v83;
    v31 = v131;
    (*(v123 + 32))(v85, v127, v131);
    result = sub_2208919AC();
    v53 = v126;
    if (v126 == v122)
    {
      v88 = v128;
      goto LABEL_34;
    }
  }

  if (EnumCaseMultiPayload == 3)
  {
LABEL_23:
    v80 = type metadata accessor for ForYouFeedSectionDescriptor;
LABEL_25:
    sub_2204FC1C4(v124, v80);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 4)
  {
    goto LABEL_26;
  }

  swift_storeEnumTagMultiPayload();
  sub_22044E28C(&qword_281297E70, sub_2204FA2D0);
  v63 = sub_22089197C();
  if (!v63)
  {
    v65 = MEMORY[0x277D84F90];
LABEL_32:
    v86 = sub_22044E28C(&qword_281297F68, sub_22051D97C);
    v87 = sub_22044E28C(&qword_281297F70, sub_22051D97C);
    MEMORY[0x223D80A20](v65, v14, v86, v87);
    sub_22044E28C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
    sub_22044E28C(&unk_281293320, type metadata accessor for ForYouFeedModel);
    sub_22088B29C();
    (*v106)(v132, v131);
    v46 = v107;
    goto LABEL_27;
  }

  v64 = v63;
  v135 = MEMORY[0x277D84F90];
  sub_22051E3CC(0, v63 & ~(v63 >> 63), 0);
  v65 = v135;
  result = sub_22089193C();
  if ((v64 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v76 = sub_2208919BC();
      (*v129)(v54);
      v76(v136, 0);
      sub_22088AD8C();
      v77 = swift_getEnumCaseMultiPayload();
      if (((1 << v77) & 0x37) != 0)
      {
        break;
      }

      if (v77 != 3)
      {
        goto LABEL_18;
      }

      v118 = *v12;
      sub_220458918();
      v119 = *(v66 + 48);
      v67 = v115;
      sub_22088518C();
      v68 = v14;
      v69 = v15;
      v70 = sub_22088517C();
      v72 = v71;
      (*v113)(v67, v116);
      v73 = v12;
      v74 = v114;
      *v114 = v70;
      v74[1] = v72;
      v15 = v69;
      v14 = v68;
      v74[2] = v118;
      swift_storeEnumTagMultiPayload();
      sub_22044E28C(&unk_281293320, type metadata accessor for ForYouFeedModel);
      v12 = v73;
      v54 = v117;
      sub_22088AD7C();
      (*v112)(v54, v68);
      v75 = sub_22089030C();
      (*(*(v75 - 8) + 8))(v12 + v119, v75);
LABEL_19:
      v135 = v65;
      v79 = *(v65 + 16);
      v78 = *(v65 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_22051E3CC(v78 > 1, v79 + 1, 1);
        v65 = v135;
      }

      *(v65 + 16) = v79 + 1;
      (*(v15 + 32))(v65 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v79, v134, v14);
      sub_2208919AC();
      if (!--v64)
      {
        goto LABEL_32;
      }
    }

    sub_2204FC1C4(v12, type metadata accessor for ForYouFeedModel);
LABEL_18:
    (*v133)(v134, v54, v14);
    goto LABEL_19;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_2206BDB2C(CGFloat a1)
{
  v2 = sub_22088CC6C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220888C9C();
  v7 = v35;
  if (v35)
  {
    v8 = [v35 view];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 frame];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v36.origin.x = v11;
    v36.origin.y = v13;
    v36.size.width = v15;
    v36.size.height = v17;
    if (CGRectGetMaxY(v36) >= a1)
    {
      v25 = 1;
      goto LABEL_7;
    }

    v18 = sub_22088D29C();
    v22 = sub_2206F1D88(1uLL, v18);
    if (v21)
    {
      v26 = v21;
      v27 = v20;
      v34 = v19;
      sub_2208928DC();
      swift_unknownObjectRetain_n();
      v28 = swift_dynamicCastClass();
      if (!v28)
      {
        swift_unknownObjectRelease();
        v28 = MEMORY[0x277D84F90];
      }

      v29 = *(v28 + 16);

      if (__OFSUB__(v26 >> 1, v27))
      {
        __break(1u);
      }

      else if (v29 == (v26 >> 1) - v27)
      {
        v24 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v24)
        {
LABEL_15:
          v30 = *(v3 + 104);
          v30(v6, *MEMORY[0x277D6E230], v2);
          v31 = sub_2206FA318(v6, v24);
          v32 = *(v3 + 8);
          v32(v6, v2);
          if (v31)
          {

            goto LABEL_18;
          }

          v30(v6, *MEMORY[0x277D6E258], v2);
          v33 = sub_2206FA318(v6, v24);

          v32(v6, v2);
          if (v33)
          {
            goto LABEL_18;
          }

          v25 = 0;
LABEL_7:
          sub_2204919B8(v25);
LABEL_18:

          return;
        }

        v24 = MEMORY[0x277D84F90];
LABEL_14:
        swift_unknownObjectRelease();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v21 = v26;
      v20 = v27;
      v19 = v34;
    }

    sub_2206CE40C(v22, v19, v20, v21);
    v24 = v23;
    goto LABEL_14;
  }
}

void sub_2206BDE1C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22088D67C();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x28223BE20](v5, v7).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewWillDisappear_, a1 & 1, v8);
  sub_220888C9C();
  v11 = v13;
  if (v13)
  {
    if (*(v2 + qword_281282160))
    {
      sub_22088D26C();
      (*(v6 + 104))(v10, *MEMORY[0x277D6E790], v5);
      sub_22088D66C();

      (*(v6 + 8))(v10, v5);
    }

    else
    {
    }
  }
}

void sub_2206BDF98(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206BDE1C(a3);
}

void sub_2206BDFEC(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2204BEE48(a3, &selRef_viewDidDisappear_);
}

uint64_t sub_2206BE0A8()
{

  sub_22054B9F8(v0 + qword_281282170);

  v1 = v0 + qword_281282158;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_2206BE118(uint64_t a1)
{

  sub_22054B9F8(a1 + qword_281282170);

  v2 = a1 + qword_281282158;

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void sub_2206BE1AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_22088D67C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v41 = a1;
    v42 = a2;
    sub_220888CBC();
    v14 = v43;
    v15 = [objc_opt_self() areAnimationsEnabled];
    if (a4)
    {
      v16 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
      v14[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 1;
      sub_22088C71C();
      v17 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v14[v16];
      sub_2207A7D00();

      v18 = MEMORY[0x277D6E798];
    }

    else
    {
      v18 = MEMORY[0x277D6E790];
    }

    v19 = v13;
    sub_22088D26C();

    (*(v8 + 104))(v11, *v18, v7);
    sub_22088D66C();

    (*(v8 + 8))(v11, v7);
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = a4 & 1;
    if (!v20 || (v22 = v20, v23 = v19, v24 = sub_2206BEB74(a4 & 1, v22), swift_unknownObjectRelease(), v23, !v24))
    {
      type metadata accessor for TickerCardContainerControllerAnimationCoordinator();
      v24 = swift_allocObject();
      *(v24 + 16) = MEMORY[0x277D84F98];
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v14;
    *(v25 + 32) = v19;
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v14;
    *(v26 + 32) = v19;
    type metadata accessor for TickerAnimation();
    v27 = swift_allocObject();
    v27[2] = sub_2206BED78;
    v27[3] = v25;
    v27[4] = sub_2206BED84;
    v27[5] = v26;
    MEMORY[0x28223BE20](v27, v28);
    *(&v41 - 2) = v24;
    *(&v41 - 8) = v15;
    v29 = v19;
    v30 = v14;
    v31 = v29;
    v32 = v30;
    sub_220888FBC();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v15;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2206BEDCC;
    *(v34 + 24) = v33;

    v35 = sub_220888D9C();
    sub_220888E3C();

    v36 = swift_allocObject();
    *(v36 + 16) = v24;
    *(v36 + 24) = v15;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_2206BEDD8;
    *(v37 + 24) = v36;

    v38 = sub_220888D9C();
    sub_220888E3C();

    v39 = swift_allocObject();
    *(v39 + 16) = v41;
    *(v39 + 24) = v42;

    v40 = sub_220888D9C();
    sub_220888EDC();
  }
}

id sub_2206BE6E4(char a1, id a2, uint64_t a3)
{
  result = [a2 view];
  v6 = result;
  if (a1)
  {
    v7 = 1.0;
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0.0;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  [result setAlpha_];

  v8 = *(a3 + qword_281282178);

  return [v8 setAlpha_];
}

id sub_2206BE790(int a1, char a2, id a3, uint64_t a4)
{
  result = [a3 view];
  v8 = result;
  if ((a2 & 1) == 0)
  {
    if (result)
    {
      [result setAlpha_];

      [*(a4 + qword_281282178) setAlpha_];
      v9 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
      *(a3 + OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling) = 0;
      sub_22088C71C();
      v10 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = *(a3 + v9);
      sub_2207A7D00();

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  [result setAlpha_];

  [*(a4 + qword_281282178) setAlpha_];
LABEL_6:
  sub_22088D26C();
  sub_22088D65C();
}

uint64_t sub_2206BE8F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1, a2);
  }

  sub_22046D934();
  swift_allocObject();
  return sub_220888F2C();
}

uint64_t sub_2206BE9C4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_2206BEA68, v4);
}

void sub_2206BEA78()
{
  *(v0 + qword_281282170 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_281282160) = 0;
  v1 = qword_281282168;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v2 = qword_281282178;
  *(v0 + v2) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(v0 + qword_281282190) = 0;
  *(v0 + qword_281282180) = 0x4062A00000000000;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2206BEB74(char a1, void *a2)
{
  type metadata accessor for TickerCardContainerControllerAnimationCoordinator();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  type metadata accessor for TickerAnimation();
  if (a1)
  {
    v8 = swift_allocObject();
    v8[2] = sub_2206BEE20;
    v8[3] = v6;
    v8[4] = sub_2206BEE28;
    v8[5] = v7;
    swift_beginAccess();
    v9 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v11 = v8;
    v12 = 0;
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = sub_2206BEE30;
    v13[3] = v6;
    v13[4] = sub_2206BEE38;
    v13[5] = v7;
    swift_beginAccess();
    v14 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v11 = v13;
    v12 = 1;
  }

  sub_2207CF7D4(v11, v12, isUniquelyReferenced_nonNull_native);
  *v5 = v16;
  swift_endAccess();

  return v4;
}

uint64_t sub_2206BEE40(char a1, void *a2)
{
  type metadata accessor for TickerCardContainerControllerAnimationCoordinator();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  v5 = (v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  type metadata accessor for TickerAnimation();
  if (a1)
  {
    v8 = swift_allocObject();
    v8[2] = sub_2206BF044;
    v8[3] = v6;
    v8[4] = sub_2206BF04C;
    v8[5] = v7;
    swift_beginAccess();
    v9 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v11 = v8;
    v12 = 0;
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = sub_2206BF048;
    v13[3] = v6;
    v13[4] = sub_2206BF050;
    v13[5] = v7;
    swift_beginAccess();
    v14 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v11 = v13;
    v12 = 1;
  }

  sub_2207CF7D4(v11, v12, isUniquelyReferenced_nonNull_native);
  *v5 = v16;
  swift_endAccess();

  return v4;
}

uint64_t sub_2206BF084()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6AA0);
  __swift_project_value_buffer(v0, qword_2812B6AA0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BF230()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6A88);
  __swift_project_value_buffer(v0, qword_2812B6A88);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BF3D8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D038);
  __swift_project_value_buffer(v0, qword_27CF6D038);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BF584()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D050);
  __swift_project_value_buffer(v0, qword_27CF6D050);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BF7BC()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6A70);
  __swift_project_value_buffer(v0, qword_2812B6A70);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BF970()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_2812B6A58);
  __swift_project_value_buffer(v0, qword_2812B6A58);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BFB1C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D068);
  __swift_project_value_buffer(v0, qword_27CF6D068);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_2206BFCC8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6D080);
  __swift_project_value_buffer(v0, qword_27CF6D080);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t ForYouSectionDescriptor.identifier.getter()
{
  v1 = v0;
  v2 = sub_22088F23C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088685C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForYouSectionDescriptor();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206C0518(v1, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v15, v2);
      v18 = sub_22088F1EC();
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      return 0x69726F7453706F74;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    return *v15;
  }

  else
  {
    (*(v8 + 32))(v11, v15, v7);
    v20[0] = 0x2D6B636F7473;
    v20[1] = 0xE600000000000000;
    v17 = sub_22088681C();
    MEMORY[0x223D89680](v17);

    v18 = v20[0];
    (*(v8 + 8))(v11, v7);
  }

  return v18;
}

uint64_t _s8StocksUI23ForYouSectionDescriptorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22088685C();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - v10;
  v12 = type metadata accessor for ForYouSectionDescriptor();
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v37 - v18;
  sub_2206C057C();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v23[*(v24 + 56)];
  sub_2206C0518(a1, v23);
  sub_2206C0518(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v27 = swift_getEnumCaseMultiPayload();
      v28 = type metadata accessor for ForYouSectionDescriptor;
      if (v27 == 3)
      {
        v29 = 1;
        goto LABEL_16;
      }
    }

LABEL_15:
    v29 = 0;
    v28 = sub_2206C057C;
    goto LABEL_16;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2206C0518(v23, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = v38;
      v35 = *(v38 + 32);
      v35(v11, v19, v4);
      v35(v7, v25, v4);
      v29 = MEMORY[0x223D7E940](v11, v7);
      v36 = *(v34 + 8);
      v36(v7, v4);
      v36(v11, v4);
      v28 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_16;
    }

    (*(v38 + 8))(v19, v4);
    goto LABEL_15;
  }

  sub_2206C0518(v23, v15);
  v31 = *v15;
  v30 = v15[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_15;
  }

  if (v31 == *v25 && v30 == *(v25 + 1))
  {
    v29 = 1;
  }

  else
  {
    v29 = sub_2208928BC();
  }

  v28 = type metadata accessor for ForYouSectionDescriptor;
LABEL_16:
  sub_2206C05E0(v23, v28);
  return v29 & 1;
}

uint64_t sub_2206C0518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2206C057C()
{
  if (!qword_27CF58AF0)
  {
    type metadata accessor for ForYouSectionDescriptor();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF58AF0);
    }
  }
}

uint64_t sub_2206C05E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206C0640(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27[1] = a2;
  v28 = sub_220889B4C();
  v27[0] = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206C09E0();
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886E8C();
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v19 + 16))(v27 - v18, a1, v15, v17);
  if (swift_dynamicCast())
  {
    (*(v11 + 8))(v14, v10);
    v20 = sub_220886E6C();
    v21 = sub_2208871CC();
    v23 = v22;

    if (!v3)
    {
      sub_2206C0A74(&unk_281298390, MEMORY[0x277D68A90]);
      v24 = v28;
      sub_22088827C();
      sub_220457EE8(v21, v23);
      (*(v27[0] + 32))(a3, v8, v24);
      v25 = type metadata accessor for EngagementEvent();
      swift_storeEnumTagMultiPayload();
      (*(*(v25 - 8) + 56))(a3, 0, 1, v25);
    }
  }

  else
  {
    v26 = type metadata accessor for EngagementEvent();
    (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
  }
}

void sub_2206C09E0()
{
  if (!qword_281298C40)
  {
    sub_220889B5C();
    sub_2206C0A74(&qword_281298388, MEMORY[0x277D68AA0]);
    v0 = sub_220886E8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298C40);
    }
  }
}

uint64_t sub_2206C0A74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206C0ABC(void *a1, uint64_t (*a2)(id), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v47 = a2;
  v48 = a3;
  v6 = sub_22088F11C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F14C();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088F17C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v20, v21).n128_u64[0];
  v24 = &v39 - v23;
  [a1 bounds];
  Height = CGRectGetHeight(v50);
  [a1 contentSize];
  v27 = v26;
  v28 = [a1 contentOffset];
  if (Height + v29 >= v27)
  {
    return v47(v28);
  }

  [a1 setContentOffset:0 animated:?];
  sub_22046D5B4();
  v43 = v11;
  v40 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v30 = *(v16 + 8);
  v41 = v15;
  v42 = v30;
  v30(v19, v15);
  v31 = swift_allocObject();
  v32 = v45;
  v31[2] = v44;
  v31[3] = v32;
  v33 = v47;
  v34 = v48;
  v31[4] = a1;
  v31[5] = v33;
  v31[6] = v34;
  aBlock[4] = sub_2206C1D74;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_12;
  v35 = _Block_copy(aBlock);
  v36 = a1;

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2206C1D2C(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2206C1D2C(&qword_28127EA50, sub_22056D204);
  sub_2208923FC();
  v37 = v40;
  MEMORY[0x223D89E80](v24, v14, v10, v35);
  _Block_release(v35);

  (*(v7 + 8))(v10, v6);
  (*(v46 + 8))(v14, v43);
  return v42(v24, v41);
}

void sub_2206C0F10(uint64_t a1, uint64_t a2, void *a3, void (*a4)(__n128), uint64_t a5)
{
  v41 = a4;
  v42 = a5;
  v37 = a3;
  v7 = sub_22088F11C();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F14C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088F17C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v33 - v23;
  v25 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else if (v25 >= a2)
  {
    v41(v22);
  }

  else
  {
    sub_22046D5B4();
    v35 = sub_220891D0C();
    sub_22088F16C();
    sub_22088F18C();
    v36 = *(v16 + 8);
    v36(v19, v15);
    v26 = swift_allocObject();
    v34 = v15;
    v27 = v37;
    v28 = v41;
    v29 = v42;
    v26[2] = v37;
    v26[3] = v28;
    v26[4] = v29;
    v26[5] = v25;
    v26[6] = a2;
    aBlock[4] = sub_2206C1D8C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_18;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2206C1D2C(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_22056D204();
    sub_2206C1D2C(&qword_28127EA50, sub_22056D204);
    sub_2208923FC();
    v32 = v35;
    MEMORY[0x223D89E80](v24, v14, v10, v30);
    _Block_release(v30);

    (*(v40 + 8))(v10, v7);
    (*(v38 + 8))(v14, v39);
    v36(v24, v34);
  }
}

uint64_t sub_2206C1318(uint64_t a1, int a2, void *a3, uint64_t (*a4)(id), uint64_t (*a5)(id), uint64_t a6)
{
  v54 = a6;
  v55 = a4;
  v56 = a5;
  v48 = sub_22088F11C();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v10);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088F14C();
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088F17C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v19 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v20, v21).n128_u64[0];
  v24 = &v44 - v23;
  v50 = a3;
  v25 = [a3 contentSize];
  v47 = a1;
  v49 = a2;
  if (a2)
  {
    if (v26 > *&a1)
    {
      return v55(v25);
    }
  }

  else if (v27 > *&a1)
  {
    return v55(v25);
  }

  v45 = v12;
  v46 = v9;
  sub_22088F16C();
  sub_2206C1D2C(&qword_27CF58AF8, MEMORY[0x277D851E0]);
  v28 = v54;
  v29 = sub_2208912DC();
  v30 = *(v16 + 8);
  v25 = v30(v24, v15);
  if (v29)
  {
    return v55(v25);
  }

  sub_22046D5B4();
  v44 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v30(v19, v15);
  (*(v16 + 16))(v19, v28, v15);
  v32 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v47;
  *(v33 + 24) = v49 & 1;
  v34 = v50;
  *(v33 + 32) = v50;
  (*(v16 + 32))(v33 + v32, v19, v15);
  v35 = (v33 + ((v17 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
  v36 = v30;
  v37 = v56;
  *v35 = v55;
  v35[1] = v37;
  aBlock[4] = sub_2206C1C90;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_30;
  v38 = _Block_copy(aBlock);
  v39 = v34;

  v40 = v51;
  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2206C1D2C(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2206C1D2C(&qword_28127EA50, sub_22056D204);
  v41 = v53;
  v42 = v48;
  sub_2208923FC();
  v43 = v44;
  MEMORY[0x223D89E80](v24, v40, v41, v38);
  _Block_release(v38);

  (*(v46 + 8))(v41, v42);
  (*(v52 + 8))(v40, v45);
  return v36(v24, v15);
}

uint64_t sub_2206C1848(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a6;
  v35 = a2;
  v34 = a1;
  v41 = sub_22088F11C();
  v44 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v8);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088F14C();
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088F17C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v18 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v33 - v21;
  sub_22046D5B4();
  v38 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v39 = *(v15 + 8);
  v39(v18, v14);
  (*(v15 + 16))(v18, a4, v14);
  v23 = (*(v15 + 80) + 56) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v34;
  *(v24 + 24) = v35 & 1;
  v25 = v36;
  v26 = v37;
  *(v24 + 32) = a3;
  *(v24 + 40) = v25;
  *(v24 + 48) = v26;
  (*(v15 + 32))(v24 + v23, v18, v14);
  aBlock[4] = sub_22056D194;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_6;
  v27 = _Block_copy(aBlock);
  v28 = a3;

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2206C1D2C(&qword_281296CA0, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2206C1D2C(&qword_28127EA50, sub_22056D204);
  v30 = v40;
  v29 = v41;
  sub_2208923FC();
  v31 = v38;
  MEMORY[0x223D89E80](v22, v13, v30, v27);
  _Block_release(v27);

  (*(v44 + 8))(v30, v29);
  (*(v42 + 8))(v13, v43);
  return (v39)(v22, v14);
}

uint64_t sub_2206C1C90()
{
  v1 = *(sub_22088F17C() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_2206C1848(v3, v4, v5, v0 + v2, v7, v8);
}

uint64_t sub_2206C1D2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2206C1DBC()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    if ([v1 respondsToSelector_])
    {
      v2 = [v1 window];
      swift_unknownObjectRelease();
      if (v2)
      {
        [v2 setAlpha_];
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_2206C1EC4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 delegate];

  if (v4)
  {
    if ([v4 respondsToSelector_])
    {
      v6 = [v4 window];
      v5 = swift_unknownObjectRelease();
      if (v6)
      {
        [v6 setAlpha_];
      }
    }

    else
    {
      v5 = swift_unknownObjectRelease();
    }
  }

  return a2(v5);
}

void sub_2206C1FA0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    if ([v5 respondsToSelector_])
    {
      v6 = [v5 window];
      swift_unknownObjectRelease();
      if (v6)
      {
        [v6 setAlpha_];
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = objc_opt_self();
  v15 = sub_2206C1DBC;
  v16 = 0;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2204C35E8;
  v14 = &block_descriptor_21;
  v8 = _Block_copy(&v11);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v15 = sub_2206C21AC;
  v16 = v9;
  v11 = MEMORY[0x277D85DD0];
  v12 = 1107296256;
  v13 = sub_2206B2490;
  v14 = &block_descriptor_27;
  v10 = _Block_copy(&v11);

  [v7 animateWithDuration:v8 animations:v10 completion:0.5];
  _Block_release(v10);
  _Block_release(v8);
}

uint64_t sub_2206C21DC(uint64_t a1)
{
  v38 = a1;
  v39 = *v1;
  v36 = sub_2208854FC();
  v2 = *(v36 - 8);
  v37 = *(v2 + 64);
  MEMORY[0x28223BE20](v36, v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088F12C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088831C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = &v33 - v18;
  *(&v33 - v18) = 0x404E000000000000;
  v20 = *MEMORY[0x277D6CA48];
  v21 = *(v12 + 104);
  v33 = v11;
  v21(&v33 - v18, v20, v11, v17);
  sub_22046D5B4();
  (*(v7 + 104))(v10, *MEMORY[0x277D851B8], v6);
  v35 = sub_220891D3C();
  (*(v7 + 8))(v10, v6);
  v22 = v2;
  v23 = v36;
  (*(v2 + 16))(v5, v38, v36);
  v24 = v34;
  (*(v12 + 16))(v34, v19, v11);
  v25 = v22;
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = (v37 + *(v12 + 80) + v26) & ~*(v12 + 80);
  v28 = swift_allocObject();
  (*(v25 + 32))(v28 + v26, v5, v23);
  v29 = v33;
  (*(v12 + 32))(v28 + v27, v24, v33);
  sub_22088665C();
  v30 = v35;
  v31 = sub_220888FAC();

  (*(v12 + 8))(v19, v29);
  return v31;
}

uint64_t sub_2206C2594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = a3;
  v3 = sub_22088846C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22088681C();
  sub_220599480(v7);
  v8 = sub_220885AFC();

  (*(v4 + 8))(v7, v3);
  return v8;
}

void sub_2206C26F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = objc_opt_self();

  if ([v9 isMainThread])
  {
    sub_22088859C();
    sub_22088856C();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_2206C30D8;
    *(v10 + 24) = v8;

    sub_22088857C();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a5 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_priceDataManager), *(a5 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_priceDataManager + 24));
    sub_2206C30E4(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
    v11 = sub_22088685C();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220899360;
    (*(v12 + 16))(v14 + v13, a5 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_stock, v11);
    sub_22088632C();

    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;

    v16 = sub_220888D9C();
    sub_220888E4C();
  }
}

void sub_2206C29E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_priceDataManager), *(a1 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_priceDataManager + 24));
  sub_2206C30E4(0, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D84560]);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220899360;
  (*(v7 + 16))(v9 + v8, a1 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_stock, v6);
  sub_22088632C();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_220888D9C();
  sub_220888E4C();
}

uint64_t sub_2206C2BCC()
{
  v1 = OBJC_IVAR____TtC8StocksUI21StockChartDataManager_stock;
  v2 = sub_22088685C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_priceDataManager);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartDataManager()
{
  result = qword_28128D840;
  if (!qword_28128D840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206C2CDC()
{
  result = sub_22088685C();
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

uint64_t sub_2206C2D80()
{
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  sub_2206C30E4(0, &qword_2812986A8, MEMORY[0x277D69308], MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_220888F2C();
  (*(v2 + 16))(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + OBJC_IVAR____TtC8StocksUI21StockChartDataManager_stock, v1);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  (*(v2 + 32))(v6 + v5, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v7 = sub_220888D9C();
  sub_2206C30E4(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  v8 = sub_220888E4C();

  return v8;
}

uint64_t sub_2206C2F84(uint64_t a1)
{
  v3 = *(sub_2208854FC() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22088831C() - 8);
  return sub_2206C2594(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

void sub_2206C30E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2206C3190(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + *(type metadata accessor for StocksAudioTrack() + 44));

  return MEMORY[0x28218E3A0](v5, v6, a2, a3);
}

void sub_2206C3218()
{
  sub_22055D82C();
  if (v0 <= 0x3F)
  {
    sub_22055DA04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8StocksUI32StockFeedLayoutSectionDescriptorO8BrandingO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2206C32BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
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

uint64_t sub_2206C330C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_2206C3370(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_2206C33B8()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_2206C41A0(319, &qword_28127E9F0, type metadata accessor for StockFeedLayoutSectionDescriptor.Header, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_2206C41A0(319, &qword_28127E9F8, type metadata accessor for StockFeedLayoutSectionDescriptor.Footer, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_2206C41A0(319, &qword_28127EA00, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration, MEMORY[0x277D83940]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2206C35A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_2206C3618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_2206C3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2206C3740()
{
  v1 = v0;
  v2 = type metadata accessor for StockFeedMastheadViewLayoutAttributes();
  MEMORY[0x28223BE20](v2, v3);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206C4304(v1, v9, type metadata accessor for StockFeedLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if ((EnumCaseMultiPayload - 2) >= 6)
  {
    if (EnumCaseMultiPayload)
    {
      sub_22055DA04();
      v16 = &v9[*(v15 + 48)];
      v17 = *(v16 + 4);
      v23[3] = *(v16 + 3);
      v23[4] = v17;
      v24 = *(v16 + 10);
      v18 = *(v16 + 2);
      v23[1] = *(v16 + 1);
      v23[2] = v18;
      v23[0] = *v16;
      if (*(&v23[0] + 1))
      {
        sub_2206C41A0(0, &qword_28127DFF0, sub_2205ED294, MEMORY[0x277D84560]);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_220899360;
        *(v19 + 56) = &type metadata for BrandingTitleViewLayoutAttributes;
        *(v19 + 64) = sub_2206C4204();
        v20 = swift_allocObject();
        *(v19 + 32) = v20;
        v21 = *(v16 + 40);
        v20[1] = *(v16 + 24);
        v20[2] = v21;
        v22 = *(v16 + 72);
        v20[3] = *(v16 + 56);
        v20[4] = v22;
        sub_22055D7D8(v23);
        sub_2206C436C(v9, sub_2206AA690);
        return v19;
      }

      else
      {
        sub_2206C436C(v9, sub_2206AA690);
        return 0;
      }
    }

    else
    {
      sub_22055D82C();
      sub_2206C429C(&v9[*(v12 + 48)], v5, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      sub_2206C41A0(0, &qword_28127DFF0, sub_2205ED294, MEMORY[0x277D84560]);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_220899360;
      *(v13 + 56) = v2;
      *(v13 + 64) = sub_2204627A4(&qword_2812812B8, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      sub_2206C429C(v5, boxed_opaque_existential_1, type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      sub_2206C436C(v9, type metadata accessor for StockFeedMastheadModel);
      return v13;
    }
  }

  return result;
}

uint64_t sub_2206C3A70(uint64_t a1)
{
  v2 = sub_2204627A4(&qword_27CF58B00, type metadata accessor for StockFeedLayoutSectionDescriptor);

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2206C3ADC()
{
  sub_2204627A4(&qword_281283F88, type metadata accessor for StockFeedLayoutSectionDescriptor);

  return sub_22088D90C();
}

uint64_t sub_2206C3BD8()
{
  sub_22055D934(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206AA690(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v26 - v13;
  v15 = type metadata accessor for StockFeedLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206C4304(v0, v18, type metadata accessor for StockFeedLayoutSectionDescriptor);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  if ((EnumCaseMultiPayload - 2) >= 6)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_22055D82C();
      sub_2206C436C(&v18[*(v21 + 48)], type metadata accessor for StockFeedMastheadViewLayoutAttributes);
      v22 = type metadata accessor for StockFeedMastheadModel;
      v23 = v18;
LABEL_6:
      sub_2206C436C(v23, v22);
      return 0;
    }

    sub_22055DA04();
    sub_2206C4258(*&v18[*(v24 + 48)], *&v18[*(v24 + 48) + 8], *&v18[*(v24 + 48) + 16]);
    sub_2206C429C(v18, v14, sub_2206AA690);
    sub_2206C4304(v14, v10, sub_2206AA690);
    if ((*(v3 + 48))(v10, 1, v2) == 1)
    {
      sub_2206C436C(v14, sub_2206AA690);
      v23 = v10;
      v22 = sub_2206AA690;
      goto LABEL_6;
    }

    sub_2206C429C(v10, v6, sub_22055D934);
    v25 = sub_2206C3F00(*&v6[*(v2 + 36)]);
    sub_2206C436C(v14, sub_2206AA690);
    sub_2206C436C(v6, sub_22055D934);
    return v25;
  }

  return result;
}

uint64_t sub_2206C3F00(uint64_t a1)
{
  v26 = sub_22088F7AC();
  v2 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v25 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v23 - v12;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v28 = MEMORY[0x277D84F90];
    sub_22070C384(0, v14, 0);
    v15 = v28;
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v24 = *(v7 + 72);
    do
    {
      sub_2206C4304(v16, v13, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration);
      v17 = v25;
      sub_2206C4304(v13, v25, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration);
      v18 = v17;
      v19 = v26;
      (*(v2 + 32))(v5, v18, v26);
      sub_22088F78C();
      (*(v2 + 8))(v5, v19);
      sub_2206C436C(v13, type metadata accessor for StockFeedLayoutSectionDescriptor.Decoration);
      v28 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22070C384((v20 > 1), v21 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v21 + 1;
      sub_220457328(&v27, v15 + 40 * v21 + 32);
      v16 += v24;
      --v14;
    }

    while (v14);
  }

  return v15;
}

void sub_2206C41A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2206C4204()
{
  result = qword_281283C10;
  if (!qword_281283C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283C10);
  }

  return result;
}

void sub_2206C4258(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_2206C429C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206C4304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}