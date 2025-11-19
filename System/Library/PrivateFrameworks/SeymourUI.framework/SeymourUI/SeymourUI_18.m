uint64_t sub_20B729CE0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C1365F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B73514C(v7);
      sub_20B520158(v7, &qword_27C764A28);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D5C0(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D5C0(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B73514C(v7);
        sub_20B520158(v7, &qword_27C764A28);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D5C0(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D5C0(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D90E8(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D5C0(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D5C0(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D5C0(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D5C0(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72A9B4(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C138244();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B735E44(v7);
      sub_20B520158(v7, &qword_27C764AC8);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D648(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D648(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B735E44(v7);
        sub_20B520158(v7, &qword_27C764AC8);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D648(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D648(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D9114(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D648(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D648(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D648(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D648(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72B688(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C1382B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B736B3C(v7);
      sub_20B520158(v7, &qword_27C764A60);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D68C(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D68C(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B736B3C(v7);
        sub_20B520158(v7, &qword_27C764A60);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D68C(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D68C(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D9140(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D68C(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D68C(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D68C(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D68C(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72C35C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C1333E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B737834(v7);
      sub_20B520158(v7, &qword_27C764AB0);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D6D0(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D6D0(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B737834(v7);
        sub_20B520158(v7, &qword_27C764AB0);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D6D0(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D6D0(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D916C(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D6D0(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D6D0(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D6D0(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D6D0(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72D030(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C1334D4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B73852C(v7);
      sub_20B520158(v7, &qword_27C764A08);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D714(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D714(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B73852C(v7);
        sub_20B520158(v7, &qword_27C764A08);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D714(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D714(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D9198(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D714(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D714(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D714(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D714(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72DD04(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C1370C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B739224(v7);
      sub_20B520158(v7, &qword_27C764AF0);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D824(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D824(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B739224(v7);
        sub_20B520158(v7, &qword_27C764AF0);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D824(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D824(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D91C4(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D824(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D824(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D824(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D824(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72E9D8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v105 - v6;
  v8 = sub_20C133A74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v105 - v12;
  MEMORY[0x28223BE20](v13);
  v122 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v108 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v121 = &v105 - v18;
  MEMORY[0x28223BE20](v19);
  v126 = &v105 - v20;
  MEMORY[0x28223BE20](v21);
  v109 = &v105 - v22;
  MEMORY[0x28223BE20](v23);
  v112 = &v105 - v24;
  MEMORY[0x28223BE20](v25);
  v125 = &v105 - v26;
  MEMORY[0x28223BE20](v27);
  v106 = &v105 - v28;
  v29 = qword_27C79BF30;
  swift_beginAccess();
  v30 = sub_20C133E24();
  v31 = v2 + v29;
  v32 = v2;
  (*(*(v30 - 8) + 24))(v31, a1, v30);
  swift_endAccess();
  v33 = qword_27C79BF38;
  swift_beginAccess();
  v34 = sub_20C135524();
  (*(*(v34 - 8) + 24))(v2 + v33, a2, v34);
  result = swift_endAccess();
  v36 = *(v2 + *(*v2 + 216));
  v113 = *(v36 + 16);
  v114 = v9;
  v119 = v2;
  if (v113)
  {
    v37 = 0;
    v117 = (v9 + 56);
    v118 = (v9 + 16);
    v116 = (v9 + 32);
    v110 = (v9 + 8);
    v38 = MEMORY[0x277D84F90];
    v39 = v112;
    v111 = v36;
    v40 = v106;
    do
    {
      if (v37 >= *(v36 + 16))
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v41 = *(v9 + 72);
      v123 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v124 = v41;
      v42 = *(v9 + 16);
      v42(v40, v36 + v123 + v41 * v37, v8);
      v42(v7, v40, v8);
      v115 = *(v9 + 56);
      (v115)(v7, 0, 1, v8);
      v43 = sub_20B739F1C(v7);
      sub_20B520158(v7, &qword_27C764A40);
      if (v43 == 2)
      {
        result = (*v110)(v40, v8);
      }

      else
      {
        v44 = *v116;
        (*v116)(v125, v40, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5D868(0, *(v38 + 2) + 1, 1);
          v40 = v106;
          v38 = v127;
        }

        v46 = v124;
        v48 = *(v38 + 2);
        v47 = *(v38 + 3);
        if (v48 >= v47 >> 1)
        {
          sub_20BB5D868(v47 > 1, v48 + 1, 1);
          v40 = v106;
          v46 = v124;
          v38 = v127;
        }

        *(v38 + 2) = v48 + 1;
        result = (v44)(&v38[v123 + v48 * v46], v125, v8);
        v9 = v114;
        v36 = v111;
        v39 = v112;
      }

      v37 = (v37 + 1);
    }

    while (v113 != v37);
    v49 = *(v36 + 16);
    if (v49)
    {
      v50 = 0;
      v51 = v36 + v123;
      v125 = MEMORY[0x277D84F90];
      while (v50 < *(v36 + 16))
      {
        v42(v39, v51, v8);
        v42(v7, v39, v8);
        (v115)(v7, 0, 1, v8);
        v53 = sub_20B739F1C(v7);
        sub_20B520158(v7, &qword_27C764A40);
        if (v53 == 2)
        {
          v54 = *v116;
          (*v116)(v109, v39, v8);
          v55 = v125;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v57 = v55;
          v127 = v55;
          if ((v56 & 1) == 0)
          {
            sub_20BB5D868(0, *(v55 + 2) + 1, 1);
            v57 = v127;
          }

          v52 = v124;
          v59 = *(v57 + 2);
          v58 = *(v57 + 3);
          v60 = (v59 + 1);
          if (v59 >= v58 >> 1)
          {
            v125 = (v59 + 1);
            sub_20BB5D868(v58 > 1, v59 + 1, 1);
            v52 = v124;
            v60 = v125;
            v57 = v127;
          }

          *(v57 + 2) = v60;
          v125 = v57;
          result = (v54)(&v57[v123 + v59 * v52], v109, v8);
          v36 = v111;
          v39 = v112;
        }

        else
        {
          result = (*v110)(v39, v8);
          v52 = v124;
        }

        ++v50;
        v51 += v52;
        if (v49 == v50)
        {
          v9 = v114;
          goto LABEL_26;
        }
      }

      goto LABEL_67;
    }

    v125 = MEMORY[0x277D84F90];
LABEL_26:
    v32 = v119;
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
    v125 = MEMORY[0x277D84F90];
  }

  v111 = *(*v32 + 224);
  *(v32 + v111) = v36;

  v61 = *(v32 + *(*v32 + 200));
  if (v61)
  {
    v127 = v38;

    sub_20B8D91F0(v62);
    *(v32 + v111) = v127;
  }

  if ((v61 & 4) != 0)
  {
    v110 = v61;
    v63 = *(v32 + v111);
    v64 = *(v63 + 2);

    v115 = v64;
    if (v64)
    {
      v65 = 0;
      v123 = v9 + 16;
      v66 = (v9 + 8);
      v113 = (v9 + 32);
      v116 = MEMORY[0x277D84F90];
      v112 = v63;
      v67 = v121;
      while (v65 < *(v63 + 2))
      {
        v70 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v71 = *(v9 + 72);
        v118 = (v65 + 1);
        v124 = v71;
        v72 = *(v9 + 16);
        result = v72(v126, &v63[v70 + v71 * v65], v8);
        v73 = *(v38 + 2);
        v117 = v70;
        v74 = &v38[v70];
        v75 = -v73;
        v76 = -1;
        while (v75 + v76 != -1)
        {
          if (++v76 >= *(v38 + 2))
          {
            __break(1u);
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }

          v77 = v38;
          v78 = &v74[v124];
          (v72)(v67);
          sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
          v79 = sub_20C13C894();
          v80 = *v66;
          result = (*v66)(v67, v8);
          v74 = v78;
          v38 = v77;
          if (v79)
          {
            result = v80(v126, v8);
            v32 = v119;
            v63 = v112;
            goto LABEL_37;
          }
        }

        v81 = *v113;
        (*v113)(v108, v126, v8);
        v83 = v116;
        v82 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v83;
        v32 = v119;
        if ((v82 & 1) == 0)
        {
          sub_20BB5D868(0, v83[2] + 1, 1);
          v83 = v127;
        }

        v63 = v112;
        v69 = v83[2];
        v68 = v83[3];
        if (v69 >= v68 >> 1)
        {
          sub_20BB5D868(v68 > 1, v69 + 1, 1);
          v83 = v127;
        }

        v83[2] = (v69 + 1);
        v116 = v83;
        result = (v81)(&v117[v83 + v69 * v124], v108, v8);
LABEL_37:
        v65 = v118;
        v9 = v114;
        if (v118 == v115)
        {
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v116 = MEMORY[0x277D84F90];
LABEL_47:

    *(v32 + v111) = v116;

    if ((v110 & 2) == 0)
    {
    }
  }

  else
  {

    if ((v61 & 2) == 0)
    {
    }
  }

  v84 = *(v32 + v111);
  v85 = v84[2];

  v118 = v85;
  if (v85)
  {
    v86 = 0;
    v126 = (v9 + 16);
    v87 = (v9 + 8);
    v117 = (v9 + 32);
    v121 = MEMORY[0x277D84F90];
    v116 = v84;
    v88 = v120;
    while (v86 < v84[2])
    {
      v91 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v92 = *(v9 + 72);
      v124 = v86 + 1;
      v93 = *(v9 + 16);
      result = v93(v122, v84 + v91 + v92 * v86, v8);
      v94 = *(v125 + 2);
      v123 = v91;
      v95 = &v125[v91];
      v96 = -v94;
      v97 = -1;
      while (v96 + v97 != -1)
      {
        if (++v97 >= *(v125 + 2))
        {
          goto LABEL_65;
        }

        v98 = &v95[v92];
        (v93)(v88);
        sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
        v99 = sub_20C13C894();
        v100 = *v87;
        result = (*v87)(v88, v8);
        v95 = v98;
        if (v99)
        {
          result = v100(v122, v8);
          v32 = v119;
          v84 = v116;
          goto LABEL_53;
        }
      }

      v101 = *v117;
      (*v117)(v107, v122, v8);
      v102 = v121;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      v104 = v102;
      v127 = v102;
      if ((v103 & 1) == 0)
      {
        sub_20BB5D868(0, *(v102 + 2) + 1, 1);
        v104 = v127;
      }

      v90 = *(v104 + 2);
      v89 = *(v104 + 3);
      v84 = v116;
      if (v90 >= v89 >> 1)
      {
        sub_20BB5D868(v89 > 1, v90 + 1, 1);
        v104 = v127;
      }

      *(v104 + 2) = v90 + 1;
      v121 = v104;
      result = v101(&v104[v123 + v90 * v92], v107, v8);
      v32 = v119;
LABEL_53:
      v86 = v124;
      v9 = v114;
      if (v124 == v118)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    __break(1u);
    return result;
  }

  v121 = MEMORY[0x277D84F90];
LABEL_63:

  *(v32 + v111) = v121;
}

uint64_t sub_20B72F6AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B728338(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B7414BC(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C764A78);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C764A78);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C764A78);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B72FC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72900C(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B741980(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C7627B8);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C7627B8);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C7627B8);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B7301BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B729CE0(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B741E00(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C771090);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C771090);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C771090);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B730744()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72A9B4(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B7422C4(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C762710);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C762710);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C762710);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B730CCC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72B688(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B742788(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C7627E8);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C7627E8);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C7627E8);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B731254()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72C35C(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B742C4C(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C764AA0);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C764AA0);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C764AA0);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B7317DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72D030(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B743110(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C762758);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C762758);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C762758);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B731D64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72DD04(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B7435D4(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &qword_27C764AE0);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &qword_27C764AE0);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &qword_27C764AE0);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B7322EC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v2 - 8);
  v24 = &v22 - v3;
  v4 = sub_20C135524();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C133E24();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_27C79BF30;
  swift_beginAccess();
  v23 = *(v9 + 16);
  v23(v11, &v0[v12], v8);
  v13 = qword_27C79BF38;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v1[v13], v4);
  sub_20B72E9D8(v11, v7);
  (*(v5 + 8))(v7, v4);
  v14 = *(v9 + 8);
  v14(v11, v8);
  v23(v11, &v1[v12], v8);
  LODWORD(v13) = v1[*(*v1 + 208)];

  v16 = v24;
  sub_20B743A98(v15, v13, v24);

  v14(v11, v8);
  v17 = *(*v1 + 192);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v17], &unk_27C767600);
  swift_endAccess();
  sub_20B52F9E8(&v1[v17], v16, &unk_27C767600);
  v18 = *(*v1 + 176);
  swift_beginAccess();
  sub_20B5DF2D4(v16, &v1[v18], &unk_27C767600);
  swift_endAccess();
  v19 = *(v1 + 6);
  if (v19)
  {

    v19(v20);
    sub_20B583ECC(v19);
  }

  swift_getObjectType();
  type metadata accessor for FilterResultUpdated();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7710D0, type metadata accessor for FilterResultUpdated);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  type metadata accessor for ClearAllSelected();
  swift_allocObject();
  swift_weakInit();
  sub_20B753124(&qword_27C7649C8, type metadata accessor for ClearAllSelected);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v25);
  swift_allocObject();
  swift_weakInit();
  sub_20B747B8C();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20B732874(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v33 = a3;
  v37 = a1;
  v4 = sub_20C134EC4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v10 - 8);
  v36 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  swift_beginAccess();
  v35 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = *(v5 + 16);
    v19(v17, Strong + *(*Strong + 248), v4);

    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
    v19 = *(v5 + 16);
  }

  v19(v14, v37, v4);
  v20(v14, 0, 1, v4);
  v21 = *(v7 + 48);
  sub_20B52F9E8(v17, v9, &qword_27C7649E0);
  sub_20B52F9E8(v14, &v9[v21], &qword_27C7649E0);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) != 1)
  {
    v23 = v36;
    sub_20B52F9E8(v9, v36, &qword_27C7649E0);
    if (v22(&v9[v21], 1, v4) != 1)
    {
      v25 = v34;
      (*(v5 + 32))(v34, &v9[v21], v4);
      sub_20B753124(&qword_27C7649E8, MEMORY[0x277D512A8]);
      v26 = sub_20C13C894();
      v27 = *(v5 + 8);
      v27(v25, v4);
      sub_20B520158(v14, &qword_27C7649E0);
      sub_20B520158(v17, &qword_27C7649E0);
      v27(v23, v4);
      result = sub_20B520158(v9, &qword_27C7649E0);
      if ((v26 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v14, &qword_27C7649E0);
    sub_20B520158(v17, &qword_27C7649E0);
    (*(v5 + 8))(v23, v4);
    return sub_20B520158(v9, &qword_27C7649D8);
  }

  sub_20B520158(v14, &qword_27C7649E0);
  sub_20B520158(v17, &qword_27C7649E0);
  if (v22(&v9[v21], 1, v4) != 1)
  {
    return sub_20B520158(v9, &qword_27C7649D8);
  }

  sub_20B520158(v9, &qword_27C7649E0);
LABEL_11:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v28 = result;
    v29 = type metadata accessor for FilterResultUpdated();
    v33(v37 + *(v29 + 20), v37 + *(v29 + 24));
    v30 = *(v28 + 64);
    if (v30)
    {

      v30(v31);

      return sub_20B583ECC(v30);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B732DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void, __n128), void (*a6)(void (*)(void), uint64_t))
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v39 = a1;
  v7 = sub_20C134EC4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649D8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649E0);
  MEMORY[0x28223BE20](v13 - 8);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  swift_beginAccess();
  v37 = a2;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = *(v8 + 16);
    v22(v20, Strong + *(*Strong + 248), v7);

    v23 = *(v8 + 56);
    v23(v20, 0, 1, v7);
  }

  else
  {
    v23 = *(v8 + 56);
    v23(v20, 1, 1, v7);
    v22 = *(v8 + 16);
  }

  v22(v17, v39, v7);
  v23(v17, 0, 1, v7);
  v24 = *(v10 + 48);
  sub_20B52F9E8(v20, v12, &qword_27C7649E0);
  sub_20B52F9E8(v17, &v12[v24], &qword_27C7649E0);
  v25 = *(v8 + 48);
  if (v25(v12, 1, v7) != 1)
  {
    v26 = v38;
    sub_20B52F9E8(v12, v38, &qword_27C7649E0);
    if (v25(&v12[v24], 1, v7) != 1)
    {
      v28 = v36;
      (*(v8 + 32))(v36, &v12[v24], v7);
      sub_20B753124(&qword_27C7649E8, MEMORY[0x277D512A8]);
      v29 = v26;
      v30 = sub_20C13C894();
      v31 = *(v8 + 8);
      v31(v28, v7);
      sub_20B520158(v17, &qword_27C7649E0);
      sub_20B520158(v20, &qword_27C7649E0);
      v31(v29, v7);
      result = sub_20B520158(v12, &qword_27C7649E0);
      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v17, &qword_27C7649E0);
    sub_20B520158(v20, &qword_27C7649E0);
    (*(v8 + 8))(v26, v7);
    return sub_20B520158(v12, &qword_27C7649D8);
  }

  sub_20B520158(v17, &qword_27C7649E0);
  sub_20B520158(v20, &qword_27C7649E0);
  if (v25(&v12[v24], 1, v7) != 1)
  {
    return sub_20B520158(v12, &qword_27C7649D8);
  }

  sub_20B520158(v12, &qword_27C7649E0);
LABEL_11:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B733324(v32, v33, v34, v35);
  }

  return result;
}

void sub_20B733324(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void, __n128), void (*a4)(void (*)(void), uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  if (*(*(v4 + *(*v4 + 224)) + 16))
  {
    v15 = a3(0, v12);
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    v16 = *(*v4 + 176);
    swift_beginAccess();
    sub_20B5DF2D4(v14, v4 + v16, a1);
    swift_endAccess();
    sub_20B52F9E8(v4 + v16, v10, a1);
    if ((*(v4 + *(*v4 + 200)) & 0x10) == 0)
    {
      v17 = v4[10];
      if (v17)
      {
        v18 = v4[11];

        v17(v10);
        a4(v17, v18);
      }
    }

    sub_20B520158(v10, a1);
  }
}

void sub_20B733510(uint64_t *a1, uint64_t a2, void (*a3)(void (*)(void), uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10];
  if (*(*(v3 + *(*v3 + 224)) + 16))
  {
    v12 = *(*v3 + 192);
    swift_beginAccess();
    sub_20B52F9E8(v3 + v12, v11, a1);
    v13 = *(*v3 + 176);
    swift_beginAccess();
    sub_20B5DF2D4(v11, v3 + v13, a1);
    swift_endAccess();
    sub_20B52F9E8(v3 + v13, v8, a1);
    if ((*(v3 + *(*v3 + 200)) & 0x10) == 0)
    {
      v14 = v3[10];
      if (v14)
      {
        v15 = v3[11];

        v14(v8);
        a3(v14, v15);
      }
    }

    sub_20B520158(v8, a1);
  }
}

uint64_t sub_20B7337FC(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C134E04();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764A88);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A88;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C764A78);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C764A78);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C134DD4();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C134DD4();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D51130], &qword_27C764A78, &unk_20C156788, MEMORY[0x277D510F8], 10, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C764A78);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C764A78);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C764A78);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C764A78);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A70;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C764A78);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C764A78);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C764A78);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C764A78);
  return (v79 & 1) != 0;
}

uint64_t sub_20B7344F4(uint64_t a1)
{
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998);
  MEMORY[0x28223BE20](v92);
  v93 = v79 - v2;
  v3 = sub_20C135524();
  v96 = *(v3 - 8);
  v97 = v3;
  MEMORY[0x28223BE20](v3);
  v95 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v90);
  v91 = v79 - v5;
  v6 = sub_20C135C84();
  MEMORY[0x28223BE20](v6);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = v79 - v10;
  MEMORY[0x28223BE20](v11);
  v88 = v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v13 - 8);
  v87 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v99 = v79 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = v79 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v79 - v21;
  v23 = sub_20C1341A4();
  MEMORY[0x28223BE20](v23);
  v86 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v94 = v79 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = v79 - v28;
  v31 = v30;
  sub_20B52F9E8(a1, v22, &qword_27C7649A8);
  v32 = *(v31 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    sub_20B520158(v22, &qword_27C7649A8);
    return 0;
  }

  v79[0] = v8;
  v34 = v31 + 48;
  v36 = v31 + 32;
  v35 = *(v31 + 32);
  v83 = v6;
  v84 = v35;
  v35(v29, v22, v23);
  v37 = v98;
  v38 = v31;
  v39 = *(*v98 + 176);
  swift_beginAccess();
  v40 = v32;
  v41 = v37;
  v80 = v39;
  v42 = v37 + v39;
  v43 = v38;
  sub_20B52F9E8(v42, v19, &qword_27C7627B8);
  v82 = v40;
  v81 = v34;
  v44 = v40(v19, 1, v23);
  v85 = v38;
  v79[1] = v36;
  if (v44 == 1)
  {
    sub_20B520158(v19, &qword_27C7627B8);
LABEL_7:
    v47 = v41;
    v48 = v99;
    v49 = v23;
    goto LABEL_8;
  }

  v45 = v94;
  v46 = v84;
  v84(v94, v19, v23);
  sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
  if (sub_20C13C894())
  {
    (*(v43 + 8))(v45, v23);
    goto LABEL_7;
  }

  v53 = v88;
  v46(v88, v45, v23);
  swift_storeEnumTagMultiPayload();
  v54 = v89;
  v49 = v23;
  (*(v43 + 16))(v89, v29, v23);
  swift_storeEnumTagMultiPayload();
  v55 = *(v90 + 48);
  v56 = v53;
  v57 = v91;
  sub_20B7479A0(v56, v91);
  sub_20B7479A0(v54, v57 + v55);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    v59 = v99;
    if (EnumCaseMultiPayload > 3)
    {
      v47 = v41;
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          goto LABEL_63;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v47 = v41;
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_67;
        }

        goto LABEL_63;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_63:
        (*(v43 + 8))(v29, v49);
        sub_20B747A68(v57 + v55, MEMORY[0x277D52060]);
        goto LABEL_64;
      }
    }
  }

  else
  {
    v59 = v99;
    if (EnumCaseMultiPayload <= 7)
    {
      v47 = v41;
      if (EnumCaseMultiPayload == 6)
      {
        v75 = v79[0];
        sub_20B747A04(v57, v79[0]);
        v76 = swift_getEnumCaseMultiPayload();
        v77 = *(v43 + 8);
        if (v76 == 6)
        {
          v77(v29, v49);
          v77((v57 + v55), v49);
          v77(v75, v49);
LABEL_64:
          sub_20B747A68(v57, MEMORY[0x277D52060]);
          return 2;
        }

        v77(v75, v49);
      }

      else if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v47 = v41;
      if (EnumCaseMultiPayload == 8)
      {
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 9)
        {
          if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
          {
            goto LABEL_67;
          }

          goto LABEL_63;
        }

        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_63;
        }
      }
    }
  }

LABEL_67:
  v78 = MEMORY[0x277D52060];
  sub_20B747A68(v57 + v55, MEMORY[0x277D52060]);
  sub_20B747A68(v57, v78);
  v48 = v59;
LABEL_8:
  v50 = v95;
  sub_20B73FED0(v95);
  v51 = *(v47 + *(*v47 + 208));
  if (v51 <= 3)
  {
    if (*(v47 + *(*v47 + 208)) > 1u)
    {
      if (v51 == 2)
      {
        v52 = sub_20C1354A4();
      }

      else
      {
        v52 = sub_20C1354B4();
      }
    }

    else if (*(v47 + *(*v47 + 208)))
    {
      v52 = sub_20C1354E4();
    }

    else
    {
      v52 = sub_20C1354D4();
    }
  }

  else if (*(v47 + *(*v47 + 208)) <= 5u)
  {
    if (v51 == 4)
    {
      v52 = sub_20C1354F4();
    }

    else
    {
      v52 = sub_20C135504();
    }
  }

  else if (v51 == 6)
  {
    v52 = sub_20C135484();
  }

  else if (v51 == 7)
  {
    v52 = sub_20C135514();
  }

  else
  {
    v52 = sub_20C135494();
  }

  v60 = v52;
  (*(v96 + 8))(v50, v97);
  v61 = sub_20C1362C4();
  v63 = sub_20B8D7150(v61, v62, v60);

  if ((v63 & 1) == 0)
  {
    (*(v85 + 8))(v29, v49);
    return 2;
  }

  v64 = v85;
  (*(v85 + 16))(v48, v29, v49);
  (*(v64 + 56))(v48, 0, 1, v49);
  v65 = *(v92 + 48);
  v66 = v29;
  v67 = v93;
  sub_20B52F9E8(v48, v93, &qword_27C7627B8);
  sub_20B52F9E8(v47 + v80, v67 + v65, &qword_27C7627B8);
  v68 = v82;
  if (v82(v67, 1, v49) == 1)
  {
    sub_20B520158(v48, &qword_27C7627B8);
    (*(v64 + 8))(v66, v49);
    if (v68(v67 + v65, 1, v49) == 1)
    {
      sub_20B520158(v67, &qword_27C7627B8);
      return 1;
    }

    goto LABEL_44;
  }

  v69 = v87;
  sub_20B52F9E8(v67, v87, &qword_27C7627B8);
  if (v68(v67 + v65, 1, v49) == 1)
  {
    sub_20B520158(v99, &qword_27C7627B8);
    v70 = *(v85 + 8);
    v70(v66, v49);
    v70(v69, v49);
LABEL_44:
    sub_20B520158(v67, &qword_27C764998);
    return 0;
  }

  v71 = (v67 + v65);
  v72 = v86;
  v84(v86, v71, v49);
  sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
  v73 = sub_20C13C894();
  v74 = *(v85 + 8);
  v74(v72, v49);
  sub_20B520158(v99, &qword_27C7627B8);
  v74(v66, v49);
  v74(v69, v49);
  sub_20B520158(v67, &qword_27C7627B8);
  return (v73 & 1) != 0;
}

uint64_t sub_20B73514C(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C1365F4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764A28);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A28;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C771090);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C771090);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C1365A4();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C1365A4();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D52AF8], &qword_27C771090, &unk_20C15A040, MEMORY[0x277D52AC8], 4, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C771090);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C771090);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C771090);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C771090);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A18;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C771090);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C771090);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C771090);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C771090);
  return (v79 & 1) != 0;
}

uint64_t sub_20B735E44(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C138244();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764AC8);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764AC8;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C762710);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C762710);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C138224();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C138224();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D53E10], &qword_27C762710, &unk_20C176710, MEMORY[0x277D53DE0], 1, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C762710);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C762710);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C762710);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C762710);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764AB8;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C762710);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C762710);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C762710);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C762710);
  return (v79 & 1) != 0;
}

uint64_t sub_20B736B3C(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C1382B4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764A60);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A60;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C7627E8);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C7627E8);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C138294();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C138294();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D53E88], &qword_27C7627E8, &unk_20C1643F0, MEMORY[0x277D53E58], 3, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C7627E8);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C7627E8);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C7627E8);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C7627E8);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A50;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C7627E8);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C7627E8);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C7627E8);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C7627E8);
  return (v79 & 1) != 0;
}

uint64_t sub_20B737834(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C1333E4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764AB0);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764AB0;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C764AA0);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C764AA0);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C1333B4();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C1333B4();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D4FE80], &qword_27C764AA0, &unk_20C1643E0, MEMORY[0x277D4FE50], 5, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C764AA0);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C764AA0);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C764AA0);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C764AA0);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A98;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C764AA0);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C764AA0);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C764AA0);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C764AA0);
  return (v79 & 1) != 0;
}

uint64_t sub_20B73852C(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C1334D4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764A08);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A08;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C762758);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C762758);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C1334A4();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C1334A4();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D4FF18], &qword_27C762758, &unk_20C176700, MEMORY[0x277D4FEF0], 7, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C762758);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C762758);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C762758);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C762758);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C7649F8;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C762758);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C762758);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C762758);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C762758);
  return (v79 & 1) != 0;
}

uint64_t sub_20B739224(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C1370C4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764AF0);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764AF0;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &qword_27C764AE0);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &qword_27C764AE0);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C1370A4();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C1370A4();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D53128], &qword_27C764AE0, &unk_20C1643D0, MEMORY[0x277D53108], 9, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &qword_27C764AE0);
  sub_20B52F9E8(v65 + v86, v73 + v71, &qword_27C764AE0);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &qword_27C764AE0);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &qword_27C764AE0);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764AD8;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &qword_27C764AE0);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &qword_27C764AE0);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &qword_27C764AE0);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &qword_27C764AE0);
  return (v79 & 1) != 0;
}

uint64_t sub_20B739F1C(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30);
  MEMORY[0x28223BE20](v96);
  v97 = &v81 - v3;
  v4 = sub_20C135524();
  v98 = *(v4 - 8);
  v99 = v4;
  MEMORY[0x28223BE20](v4);
  v100 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649C0);
  MEMORY[0x28223BE20](v94);
  v95 = &v81 - v6;
  v7 = sub_20C135C84();
  MEMORY[0x28223BE20](v7);
  v89 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = (&v81 - v10);
  MEMORY[0x28223BE20](v11);
  v92 = (&v81 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v13 - 8);
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v101 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v81 - v21;
  v23 = sub_20C133A74();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v90 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v81 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v81 - v30;
  sub_20B52F9E8(v102, v22, &qword_27C764A40);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) == 1)
  {
    v33 = &qword_27C764A40;
    v34 = v22;
LABEL_3:
    sub_20B520158(v34, v33);
    return 0;
  }

  v88 = v7;
  v102 = v24;
  v36 = *(v24 + 32);
  v36(v31, v22, v23);
  v37 = *(*v2 + 176);
  swift_beginAccess();
  v86 = v37;
  sub_20B52F9E8(v2 + v37, v19, &unk_27C767600);
  v87 = v32;
  v38 = v32(v19, 1, v23);
  v39 = v2;
  v85 = v24 + 32;
  v84 = v36;
  if (v38 == 1)
  {
    sub_20B520158(v19, &unk_27C767600);
    v40 = v102;
    v41 = v100;
    v42 = v23;
    goto LABEL_39;
  }

  v36(v28, v19, v23);
  sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
  v42 = v23;
  if (sub_20C13C894())
  {
    v40 = v102;
    (*(v102 + 8))(v28, v23);
    v41 = v100;
    goto LABEL_39;
  }

  v43 = v2;
  v44 = sub_20C133A34();
  v45 = v92;
  *v92 = v44;
  v45[1] = v46;
  swift_storeEnumTagMultiPayload();
  v47 = sub_20C133A34();
  v49 = v48;
  v50 = *(v102 + 8);
  v83 = v102 + 8;
  v82 = v50;
  v50(v28, v42);
  v51 = v93;
  *v93 = v47;
  *(v51 + 8) = v49;
  swift_storeEnumTagMultiPayload();
  v52 = *(v94 + 48);
  v53 = v45;
  v54 = v95;
  sub_20B7479A0(v53, v95);
  sub_20B7479A0(v51, v54 + v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 3)
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v100;
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v56 = swift_getEnumCaseMultiPayload() == 4;
    }

    else
    {
      v39 = v43;
      if (EnumCaseMultiPayload != 1)
      {
        v41 = v100;
        if (EnumCaseMultiPayload != 3 || swift_getEnumCaseMultiPayload() != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v56 = swift_getEnumCaseMultiPayload() == 1;
    }

LABEL_30:
    v41 = v100;
    if (v56)
    {
      goto LABEL_35;
    }

    goto LABEL_38;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    v39 = v43;
    if (EnumCaseMultiPayload == 6)
    {
      v57 = v89;
      sub_20B747A04(v54, v89);
      v58 = swift_getEnumCaseMultiPayload();
      v41 = v100;
      if (v58 == 6)
      {
        v82(v31, v42);
        v59 = sub_20C1341A4();
        v60 = *(*(v59 - 8) + 8);
        v60(v54 + v52, v59);
        v60(v57, v59);
LABEL_36:
        sub_20B747A68(v54, MEMORY[0x277D52060]);
        return 2;
      }

      v61 = sub_20C1341A4();
      (*(*(v61 - 8) + 8))(v57, v61);
    }

    else
    {
      v41 = v100;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_38;
  }

  v39 = v43;
  if (EnumCaseMultiPayload == 8)
  {
    v56 = swift_getEnumCaseMultiPayload() == 8;
    goto LABEL_30;
  }

  v41 = v100;
  if (EnumCaseMultiPayload != 9)
  {
    if (EnumCaseMultiPayload != 10 || swift_getEnumCaseMultiPayload() != 10)
    {
      goto LABEL_38;
    }

    goto LABEL_35;
  }

  if (swift_getEnumCaseMultiPayload() == 9)
  {
LABEL_35:
    v82(v31, v42);
    sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
    goto LABEL_36;
  }

LABEL_38:
  v62 = MEMORY[0x277D52060];
  sub_20B747A68(v54 + v52, MEMORY[0x277D52060]);
  sub_20B747A68(v54, v62);
  v40 = v102;
LABEL_39:
  sub_20B740984(MEMORY[0x277D50278], &unk_27C767600, &unk_20C175400, MEMORY[0x277D50240], 8, v41);
  v63 = *(v39 + *(*v39 + 208));
  if (v63 <= 3)
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) > 1u)
    {
      if (v63 == 2)
      {
        v66 = sub_20C1354A4();
      }

      else
      {
        v66 = sub_20C1354B4();
      }
    }

    else if (*(v39 + *(*v39 + 208)))
    {
      v66 = sub_20C1354E4();
    }

    else
    {
      v66 = sub_20C1354D4();
    }
  }

  else
  {
    v64 = v101;
    v65 = v39;
    if (*(v39 + *(*v39 + 208)) <= 5u)
    {
      if (v63 == 4)
      {
        v66 = sub_20C1354F4();
      }

      else
      {
        v66 = sub_20C135504();
      }
    }

    else if (v63 == 6)
    {
      v66 = sub_20C135484();
    }

    else if (v63 == 7)
    {
      v66 = sub_20C135514();
    }

    else
    {
      v66 = sub_20C135494();
    }
  }

  v67 = v66;
  (*(v98 + 8))(v41, v99);
  v68 = sub_20C1362C4();
  v70 = sub_20B8D7150(v68, v69, v67);

  if ((v70 & 1) == 0)
  {
    (*(v40 + 8))(v31, v42);
    return 2;
  }

  (*(v40 + 16))(v64, v31, v42);
  (*(v40 + 56))(v64, 0, 1, v42);
  v71 = *(v96 + 48);
  v72 = v31;
  v73 = v97;
  sub_20B52F9E8(v64, v97, &unk_27C767600);
  sub_20B52F9E8(v65 + v86, v73 + v71, &unk_27C767600);
  v74 = v87;
  if (v87(v73, 1, v42) == 1)
  {
    sub_20B520158(v64, &unk_27C767600);
    (*(v40 + 8))(v72, v42);
    if (v74(v73 + v71, 1, v42) == 1)
    {
      sub_20B520158(v73, &unk_27C767600);
      return 1;
    }

LABEL_64:
    v33 = &qword_27C764A30;
    v34 = v73;
    goto LABEL_3;
  }

  v102 = v72;
  v75 = v91;
  sub_20B52F9E8(v73, v91, &unk_27C767600);
  if (v74(v73 + v71, 1, v42) == 1)
  {
    sub_20B520158(v101, &unk_27C767600);
    v76 = *(v40 + 8);
    v76(v102, v42);
    v76(v75, v42);
    goto LABEL_64;
  }

  v77 = v73 + v71;
  v78 = v90;
  v84(v90, v77, v42);
  sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
  v79 = sub_20C13C894();
  v80 = *(v40 + 8);
  v80(v78, v42);
  sub_20B520158(v101, &unk_27C767600);
  v80(v102, v42);
  v80(v75, v42);
  sub_20B520158(v73, &unk_27C767600);
  return (v79 & 1) != 0;
}

uint64_t sub_20B73AC14(void (*a1)(uint64_t), uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v114 = a1;
  v127 = sub_20C133E24();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v121 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v120 = &v101 - v6;
  MEMORY[0x28223BE20](v7);
  v122 = &v101 - v8;
  MEMORY[0x28223BE20](v9);
  v119 = &v101 - v10;
  v132 = sub_20C135C84();
  v135 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v118 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v124 = &v101 - v13;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  v14 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v117 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v116 = &v101 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v101 - v19;
  MEMORY[0x28223BE20](v21);
  v131 = (&v101 - v22);
  v23 = sub_20C1341A4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v27 - 8);
  v112 = &v101 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v110 = &v101 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v101 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v101 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8);
  v38 = *(v14 + 72);
  v39 = *(v14 + 80);
  v40 = (v39 + 32) & ~v39;
  v134 = v38;
  v107 = v39;
  v109 = v37;
  v106 = v40 + 2 * v38;
  v41 = swift_allocObject();
  v108 = v40;
  v103 = v41;
  v42 = v41 + v40;
  v43 = *(*v3 + 176);
  swift_beginAccess();
  v133 = v3;
  v105 = v43;
  sub_20B52F9E8(v3 + v43, v36, &qword_27C7627B8);
  v123 = v24;
  v129 = *(v24 + 48);
  v130 = v24 + 48;
  if (v129(v36, 1, v23))
  {
    sub_20B520158(v36, &qword_27C7627B8);
    v44 = 1;
    v45 = v132;
  }

  else
  {
    v46 = v123;
    (*(v123 + 16))(v26, v36, v23);
    sub_20B520158(v36, &qword_27C7627B8);
    (*(v46 + 32))(v42, v26, v23);
    v45 = v132;
    swift_storeEnumTagMultiPayload();
    v44 = 0;
  }

  v128 = *(v135 + 56);
  v128(v42, v44, 1, v45);
  v47 = v133;
  v48 = *(*v133 + 184);
  swift_beginAccess();
  v104 = v48;
  sub_20B52F9E8(v47 + v48, v33, &qword_27C7627B8);
  v49 = v129(v33, 1, v23);
  v50 = v134;
  v115 = v23;
  if (v49)
  {
    sub_20B520158(v33, &qword_27C7627B8);
    v51 = 1;
  }

  else
  {
    v52 = v123;
    (*(v123 + 16))(v26, v33, v23);
    sub_20B520158(v33, &qword_27C7627B8);
    (*(v52 + 32))(v42 + v50, v26, v23);
    swift_storeEnumTagMultiPayload();
    v51 = 0;
  }

  v53 = v131;
  v128(v42 + v50, v51, 1, v45);
  sub_20B52F9E8(v42, v53, &unk_27C7629B0);
  sub_20B5DF134(v53, v20, &unk_27C7629B0);
  v54 = v135 + 48;
  v131 = *(v135 + 48);
  v55 = v131(v20, 1, v45);
  v102 = v26;
  if (v55 == 1)
  {
    sub_20B520158(v20, &unk_27C7629B0);
    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v20, v124);
    v56 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_20BC05D14(0, v56[2] + 1, 1, v56);
    }

    v58 = v56[2];
    v57 = v56[3];
    if (v58 >= v57 >> 1)
    {
      v56 = sub_20BC05D14(v57 > 1, v58 + 1, 1, v56);
    }

    v56[2] = v58 + 1;
    sub_20B7479A0(v124, v56 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v58);
    v45 = v132;
  }

  sub_20B52F9E8(v42 + v134, v53, &unk_27C7629B0);
  sub_20B5DF134(v53, v20, &unk_27C7629B0);
  v111 = v54;
  if (v131(v20, 1, v45) == 1)
  {
    sub_20B520158(v20, &unk_27C7629B0);
    v59 = v117;
    v60 = v115;
    v61 = v112;
  }

  else
  {
    sub_20B7479A0(v20, v124);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v115;
    v61 = v112;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_20BC05D14(0, v56[2] + 1, 1, v56);
    }

    v59 = v117;
    v64 = v56[2];
    v63 = v56[3];
    if (v64 >= v63 >> 1)
    {
      v56 = sub_20BC05D14(v63 > 1, v64 + 1, 1, v56);
    }

    v56[2] = v64 + 1;
    sub_20B7479A0(v124, v56 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v64);
    v45 = v132;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v124 = sub_20B716268(v56);

  v114(v65);
  v117 = swift_allocObject();
  v66 = &v117[v108];
  v67 = v110;
  sub_20B52F9E8(v133 + v105, v110, &qword_27C7627B8);
  v68 = v129(v67, 1, v60);
  v69 = v134;
  if (v68)
  {
    sub_20B520158(v67, &qword_27C7627B8);
    v70 = 1;
  }

  else
  {
    v71 = v123;
    v72 = v102;
    (*(v123 + 16))(v102, v67, v60);
    sub_20B520158(v67, &qword_27C7627B8);
    (*(v71 + 32))(v66, v72, v60);
    swift_storeEnumTagMultiPayload();
    v70 = 0;
  }

  v73 = v118;
  v128(v66, v70, 1, v45);
  sub_20B52F9E8(v133 + v104, v61, &qword_27C7627B8);
  if (v129(v61, 1, v60))
  {
    sub_20B520158(v61, &qword_27C7627B8);
    v74 = 1;
  }

  else
  {
    v75 = v123;
    v76 = v102;
    (*(v123 + 16))(v102, v61, v60);
    sub_20B520158(v61, &qword_27C7627B8);
    (*(v75 + 32))(v66 + v69, v76, v60);
    swift_storeEnumTagMultiPayload();
    v74 = 0;
  }

  v128(v66 + v69, v74, 1, v45);
  v77 = v116;
  sub_20B52F9E8(v66, v116, &unk_27C7629B0);
  sub_20B5DF134(v77, v59, &unk_27C7629B0);
  if (v131(v59, 1, v45) == 1)
  {
    sub_20B520158(v59, &unk_27C7629B0);
    v78 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v59, v73);
    v78 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_20BC05D14(0, v78[2] + 1, 1, v78);
    }

    v80 = v78[2];
    v79 = v78[3];
    if (v80 >= v79 >> 1)
    {
      v78 = sub_20BC05D14(v79 > 1, v80 + 1, 1, v78);
    }

    v78[2] = v80 + 1;
    sub_20B7479A0(v73, v78 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v80);
  }

  sub_20B52F9E8(v66 + v134, v77, &unk_27C7629B0);
  sub_20B5DF134(v77, v59, &unk_27C7629B0);
  if (v131(v59, 1, v132) == 1)
  {
    sub_20B520158(v59, &unk_27C7629B0);
  }

  else
  {
    sub_20B7479A0(v59, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_20BC05D14(0, v78[2] + 1, 1, v78);
    }

    v82 = v78[2];
    v81 = v78[3];
    if (v82 >= v81 >> 1)
    {
      v78 = sub_20BC05D14(v81 > 1, v82 + 1, 1, v78);
    }

    v78[2] = v82 + 1;
    sub_20B7479A0(v73, v78 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v82);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v83 = sub_20B716268(v78);

  v84 = qword_27C79BF30;
  v85 = v133;
  swift_beginAccess();
  v86 = v126;
  v87 = *(v126 + 16);
  v88 = v85;
  v89 = v85 + v84;
  v90 = v119;
  v91 = v127;
  v87(v119, v89, v127);
  v92 = sub_20C133E04();
  v93 = *(v86 + 8);
  v93(v90, v91);
  if (*(v124 + 16) <= *(v92 + 16) >> 3)
  {
    v136 = v92;
    sub_20B6CEA94(v124);

    v94 = v136;
  }

  else
  {
    v94 = sub_20B6D1890(v124, v92);
  }

  sub_20B722CF0(v83, v94);
  v135 = v95;
  v96 = v120;
  v97 = v127;
  v87(v120, v88 + v84, v127);
  sub_20C133DF4();
  v93(v96, v97);
  sub_20C134EB4();
  v98 = v121;
  v87(v121, v88 + v84, v97);
  sub_20C133E14();
  v93(v98, v97);
  v99 = v122;
  sub_20C133DE4();
  swift_beginAccess();
  (*(v126 + 40))(v88 + v84, v99, v97);
  return swift_endAccess();
}

uint64_t sub_20B73BCD4(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void, __n128), uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t), int a7)
{
  v173 = a7;
  v181 = a6;
  v11 = v7;
  v160 = a2;
  v161 = a1;
  v12 = sub_20C133E24();
  v179 = *(v12 - 8);
  v180 = v12;
  MEMORY[0x28223BE20](v12);
  v167 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v166 = &v148 - v15;
  MEMORY[0x28223BE20](v16);
  v168 = &v148 - v17;
  MEMORY[0x28223BE20](v18);
  v165 = &v148 - v19;
  v186 = sub_20C135C84();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v164 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v175 = &v148 - v22;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  v185 = *(v178 - 8);
  v23 = v185;
  MEMORY[0x28223BE20](v178);
  v163 = &v148 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v177 = &v148 - v26;
  MEMORY[0x28223BE20](v27);
  v158 = (&v148 - v28);
  v30 = MEMORY[0x28223BE20](v29);
  v174 = &v148 - v31;
  v32 = a3(0, v30);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v148 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x28223BE20](v36 - 8);
  v159 = &v148 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v157 = &v148 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v148 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v148 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8);
  v47 = v23;
  v48 = a5;
  v49 = v185[80];
  v50 = (v49 + 32) & ~v49;
  v176 = *(v47 + 9);
  v154 = v49;
  v156 = v46;
  v153 = v50 + 2 * v176;
  v51 = swift_allocObject();
  v155 = v50;
  v150 = v51;
  v52 = (v51 + v50);
  v53 = *(*v11 + 176);
  swift_beginAccess();
  v185 = v11;
  v152 = v53;
  v54 = &v11[v53];
  v55 = v181;
  sub_20B52F9E8(v54, v45, a4);
  v182 = *(v33 + 48);
  v183 = (v33 + 48);
  v56 = v182(v45, 1, v32);
  v57 = v186;
  v170 = v48;
  v171 = v33;
  v169 = v35;
  if (v56)
  {
    sub_20B520158(v45, a4);
    v58 = v184;
    v59 = *(v184 + 56);
    v60 = v52;
    v61 = 1;
  }

  else
  {
    (*(v33 + 16))(v35, v45, v32);
    v62 = sub_20B520158(v45, a4);
    v63 = v55(v62);
    v65 = v64;
    (*(v33 + 8))(v35, v32);
    *v52 = v63;
    v52[1] = v65;
    swift_storeEnumTagMultiPayload();
    v58 = v184;
    v59 = *(v184 + 56);
    v60 = v52;
    v61 = 0;
  }

  v66 = v57;
  v67 = v59;
  v59(v60, v61, 1, v66);
  v149 = v52;
  v68 = (v52 + v176);
  v69 = v185;
  v70 = *(*v185 + 184);
  swift_beginAccess();
  v151 = v70;
  sub_20B52F9E8(&v69[v70], v42, a4);
  v71 = v182(v42, 1, v32);
  v172 = v32;
  v162 = a4;
  if (v71)
  {
    sub_20B520158(v42, a4);
    v72 = v186;
    v67(v68, 1, 1, v186);
  }

  else
  {
    v73 = v171;
    v74 = v67;
    v75 = v169;
    (*(v171 + 16))(v169, v42, v32);
    v76 = sub_20B520158(v42, a4);
    v77 = v181(v76);
    v79 = v78;
    v80 = v75;
    v67 = v74;
    (*(v73 + 8))(v80, v32);
    *v68 = v77;
    v68[1] = v79;
    v72 = v186;
    swift_storeEnumTagMultiPayload();
    v74(v68, 0, 1, v72);
  }

  v81 = v158;
  v82 = v174;
  sub_20B52F9E8(v149, v174, &unk_27C7629B0);
  sub_20B5DF134(v82, v81, &unk_27C7629B0);
  v83 = *(v58 + 48);
  if (v83(v81, 1, v72) == 1)
  {
    sub_20B520158(v81, &unk_27C7629B0);
    v84 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v81, v175);
    v84 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v84 = sub_20BC05D14(0, v84[2] + 1, 1, v84);
    }

    v86 = v84[2];
    v85 = v84[3];
    if (v86 >= v85 >> 1)
    {
      v84 = sub_20BC05D14(v85 > 1, v86 + 1, 1, v84);
    }

    v84[2] = v86 + 1;
    sub_20B7479A0(v175, v84 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v86);
  }

  v87 = v174;
  sub_20B52F9E8(v68, v174, &unk_27C7629B0);
  sub_20B5DF134(v87, v81, &unk_27C7629B0);
  v88 = v83(v81, 1, v186);
  v158 = v83;
  if (v88 == 1)
  {
    sub_20B520158(v81, &unk_27C7629B0);
    v89 = v172;
    v90 = v171;
  }

  else
  {
    sub_20B7479A0(v81, v175);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = v184;
    v90 = v171;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v84 = sub_20BC05D14(0, v84[2] + 1, 1, v84);
    }

    v94 = v84[2];
    v93 = v84[3];
    if (v94 >= v93 >> 1)
    {
      v84 = sub_20BC05D14(v93 > 1, v94 + 1, 1, v84);
    }

    v84[2] = v94 + 1;
    sub_20B7479A0(v175, v84 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v94);
    v89 = v172;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v175 = sub_20B716268(v84);

  v161(v95);
  v174 = swift_allocObject();
  v96 = (v174 + v155);
  v97 = v157;
  v98 = v162;
  sub_20B52F9E8(&v185[v152], v157, v162);
  if (v182(v97, 1, v89))
  {
    sub_20B520158(v97, v98);
    v67(v96, 1, 1, v186);
  }

  else
  {
    v99 = v67;
    v100 = v169;
    (*(v90 + 16))(v169, v97, v89);
    v101 = sub_20B520158(v97, v98);
    v102 = v181(v101);
    v104 = v103;
    v105 = v100;
    v67 = v99;
    (*(v90 + 8))(v105, v172);
    *v96 = v102;
    v96[1] = v104;
    v89 = v172;
    v106 = v186;
    swift_storeEnumTagMultiPayload();
    v67(v96, 0, 1, v106);
  }

  v107 = (v96 + v176);
  v108 = v159;
  sub_20B52F9E8(&v185[v151], v159, v98);
  if (v182(v108, 1, v89))
  {
    sub_20B520158(v108, v98);
    v109 = v186;
    v67(v107, 1, 1, v186);
  }

  else
  {
    v110 = v108;
    v111 = v171;
    v112 = *(v171 + 16);
    v183 = v67;
    v113 = v169;
    v112(v169, v110, v89);
    v114 = sub_20B520158(v110, v98);
    v115 = v181(v114);
    v116 = v89;
    v118 = v117;
    (*(v111 + 8))(v113, v116);
    *v107 = v115;
    v107[1] = v118;
    v109 = v186;
    swift_storeEnumTagMultiPayload();
    v183(v107, 0, 1, v109);
  }

  v119 = v164;
  v120 = v177;
  sub_20B52F9E8(v96, v177, &unk_27C7629B0);
  v121 = v163;
  sub_20B5DF134(v120, v163, &unk_27C7629B0);
  v122 = v158;
  if (v158(v121, 1, v109) == 1)
  {
    sub_20B520158(v121, &unk_27C7629B0);
    v123 = MEMORY[0x277D84F90];
  }

  else
  {
    sub_20B7479A0(v121, v119);
    v123 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = sub_20BC05D14(0, v123[2] + 1, 1, v123);
    }

    v125 = v123[2];
    v124 = v123[3];
    if (v125 >= v124 >> 1)
    {
      v123 = sub_20BC05D14(v124 > 1, v125 + 1, 1, v123);
    }

    v123[2] = v125 + 1;
    sub_20B7479A0(v119, v123 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v125);
  }

  v126 = v107;
  v127 = v177;
  sub_20B52F9E8(v126, v177, &unk_27C7629B0);
  sub_20B5DF134(v127, v121, &unk_27C7629B0);
  if (v122(v121, 1, v109) == 1)
  {
    sub_20B520158(v121, &unk_27C7629B0);
  }

  else
  {
    sub_20B7479A0(v121, v119);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v123 = sub_20BC05D14(0, v123[2] + 1, 1, v123);
    }

    v129 = v123[2];
    v128 = v123[3];
    if (v129 >= v128 >> 1)
    {
      v123 = sub_20BC05D14(v128 > 1, v129 + 1, 1, v123);
    }

    v123[2] = v129 + 1;
    sub_20B7479A0(v119, v123 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v129);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v130 = sub_20B716268(v123);

  v131 = qword_27C79BF30;
  v132 = v185;
  swift_beginAccess();
  v133 = v179;
  v134 = *(v179 + 16);
  v135 = v132;
  v136 = &v132[v131];
  v137 = v165;
  v138 = v180;
  v134(v165, v136, v180);
  v139 = sub_20C133E04();
  v140 = *(v133 + 8);
  v140(v137, v138);
  if (*(v175 + 16) <= *(v139 + 16) >> 3)
  {
    v187 = v139;
    sub_20B6CEA94(v175);

    v141 = v187;
  }

  else
  {
    v141 = sub_20B6D1890(v175, v139);
  }

  sub_20B722CF0(v130, v141);
  v186 = v142;
  v143 = v166;
  v144 = v180;
  v134(v166, &v135[v131], v180);
  sub_20C133DF4();
  v140(v143, v144);
  sub_20C134EB4();
  v145 = v167;
  v134(v167, &v135[v131], v144);
  sub_20C133E14();
  v140(v145, v144);
  v146 = v168;
  sub_20C133DE4();
  swift_beginAccess();
  (*(v179 + 40))(&v135[v131], v146, v144);
  return swift_endAccess();
}

uint64_t sub_20B73CE9C(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C134E04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A70);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A88);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A88);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A88);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C764A78);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C764A78);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C764A78);
LABEL_12:
      sub_20B520158(v25, &qword_27C764A78);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C764A78);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A70);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A90, MEMORY[0x277D51130]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C764A78);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C764A78);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C764A78);
  return swift_endAccess();
}

uint64_t sub_20B73D3E8(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1341A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764998);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C7649A8);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C7649A8);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C7627B8);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C7627B8);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C7627B8);
LABEL_12:
      sub_20B520158(v25, &qword_27C7627B8);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C7627B8);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764998);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C7649B0, MEMORY[0x277D50618]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C7627B8);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C7627B8);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C7627B8);
  return swift_endAccess();
}

uint64_t sub_20B73D934(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1365F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A28);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A28);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A28);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C771090);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C771090);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C771090);
LABEL_12:
      sub_20B520158(v25, &qword_27C771090);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C771090);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A18);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764300, MEMORY[0x277D52AF8]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C771090);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C771090);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C771090);
  return swift_endAccess();
}

uint64_t sub_20B73DE80(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C138244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AC8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764AC8);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764AC8);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C762710);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C762710);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C762710);
LABEL_12:
      sub_20B520158(v25, &qword_27C762710);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C762710);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764AB8);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764AD0, MEMORY[0x277D53E10]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C762710);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C762710);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C762710);
  return swift_endAccess();
}

uint64_t sub_20B73E3CC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1382B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A50);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A60);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A60);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C7627E8);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C7627E8);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C7627E8);
LABEL_12:
      sub_20B520158(v25, &qword_27C7627E8);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C7627E8);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A50);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A68, MEMORY[0x277D53E88]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C7627E8);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C7627E8);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C7627E8);
  return swift_endAccess();
}

uint64_t sub_20B73E918(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1333E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A98);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764AB0);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764AB0);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C764AA0);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C764AA0);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C764AA0);
LABEL_12:
      sub_20B520158(v25, &qword_27C764AA0);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C764AA0);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A98);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C762B58, MEMORY[0x277D4FE80]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C764AA0);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C764AA0);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C764AA0);
  return swift_endAccess();
}

uint64_t sub_20B73EE64(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1334D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649F8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A08);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A08);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A08);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C762758);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C762758);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C762758);
LABEL_12:
      sub_20B520158(v25, &qword_27C762758);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C762758);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C7649F8);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A10, MEMORY[0x277D4FF18]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C762758);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C762758);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C762758);
  return swift_endAccess();
}

uint64_t sub_20B73F3B0(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C1370C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AD8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764AF0);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764AF0);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &qword_27C764AE0);
  sub_20B52F9E8(v25, &v8[v23], &qword_27C764AE0);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &qword_27C764AE0);
LABEL_12:
      sub_20B520158(v25, &qword_27C764AE0);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &qword_27C764AE0);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764AD8);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764AF8, MEMORY[0x277D53128]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &qword_27C764AE0);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &qword_27C764AE0);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &qword_27C764AE0);
  return swift_endAccess();
}

uint64_t sub_20B73F8FC(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v3 = sub_20C133A74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A30);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767600);
  MEMORY[0x28223BE20](v12 - 8);
  v39 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v41 = &v36 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_20B52F9E8(a1, v11, &qword_27C764A40);
  v19 = *(v4 + 48);
  if (v19(v11, 1, v3) == 1)
  {
    sub_20B520158(v11, &qword_27C764A40);
    v20 = 1;
  }

  else
  {
    (*(v4 + 32))(v18, v11, v3);
    v20 = 0;
  }

  v40 = v4;
  v38 = *(v4 + 56);
  v38(v18, v20, 1, v3);
  v42 = v18;
  v21 = v43;
  v22 = *(*v43 + 176);
  swift_beginAccess();
  v23 = *(v6 + 48);
  v24 = v21 + v22;
  v25 = v42;
  sub_20B52F9E8(v24, v8, &unk_27C767600);
  sub_20B52F9E8(v25, &v8[v23], &unk_27C767600);
  if (v19(v8, 1, v3) == 1)
  {
    if (v19(&v8[v23], 1, v3) == 1)
    {
      sub_20B520158(v8, &unk_27C767600);
LABEL_12:
      sub_20B520158(v25, &unk_27C767600);
      v27 = v41;
      v38(v41, 1, 1, v3);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v26 = v39;
  sub_20B52F9E8(v8, v39, &unk_27C767600);
  if (v19(&v8[v23], 1, v3) == 1)
  {
    (*(v40 + 8))(v26, v3);
LABEL_9:
    sub_20B520158(v8, &qword_27C764A30);
    goto LABEL_10;
  }

  v28 = v40;
  v29 = v37;
  (*(v40 + 32))(v37, &v8[v23], v3);
  sub_20B753124(&qword_27C764A48, MEMORY[0x277D50278]);
  v30 = v26;
  v31 = sub_20C13C894();
  v32 = *(v28 + 8);
  v33 = v29;
  v25 = v42;
  v32(v33, v3);
  v32(v30, v3);
  sub_20B520158(v8, &unk_27C767600);
  if (v31)
  {
    goto LABEL_12;
  }

LABEL_10:
  v27 = v41;
  sub_20B5DF134(v25, v41, &unk_27C767600);
LABEL_13:
  v34 = v43;
  swift_beginAccess();
  sub_20B5DF2D4(v27, v34 + v22, &unk_27C767600);
  return swift_endAccess();
}

uint64_t sub_20B73FE48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*a1 + 184);
  swift_beginAccess();
  sub_20B606B6C(a2, a1 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_20B73FED0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v85 = sub_20C133E24();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C135C84();
  v5 = *(v4 - 8);
  v96 = v4;
  v97 = v5;
  MEMORY[0x28223BE20](v4);
  v95 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v86 = &v80 - v8;
  MEMORY[0x28223BE20](v9);
  v100 = &v80 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  v11 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v82 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  MEMORY[0x28223BE20](v16);
  v99 = &v80 - v17;
  v18 = sub_20C1341A4();
  v90 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v80 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8);
  v27 = *(v11 + 72);
  v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v88 = swift_allocObject();
  v29 = v88 + v28;
  sub_20C134E84();
  v30 = *(*v2 + 176);
  swift_beginAccess();
  v31 = &v2[v30];
  v32 = v90;
  sub_20B52F9E8(v31, v26, &qword_27C7627B8);
  v93 = *(v32 + 48);
  v33 = (v93)(v26, 1, v18);
  v81 = v20;
  if (v33)
  {
    sub_20B520158(v26, &qword_27C7627B8);
    v34 = 1;
    v35 = v96;
  }

  else
  {
    (*(v32 + 16))(v20, v26, v18);
    sub_20B520158(v26, &qword_27C7627B8);
    (*(v32 + 32))(v29 + v27, v20, v18);
    v35 = v96;
    swift_storeEnumTagMultiPayload();
    v34 = 0;
  }

  v36 = *(v97 + 56);
  v92 = v97 + 56;
  v91 = v36;
  v36(v29 + v27, v34, 1, v35);
  v98 = v27;
  v94 = v29;
  v37 = v29 + 2 * v27;
  v38 = *(*v2 + 184);
  swift_beginAccess();
  sub_20B52F9E8(&v2[v38], v23, &qword_27C7627B8);
  v39 = (v93)(v23, 1, v18);
  v93 = v2;
  if (v39)
  {
    sub_20B520158(v23, &qword_27C7627B8);
    v40 = 1;
  }

  else
  {
    v41 = v90;
    v42 = v81;
    (*(v90 + 16))(v81, v23, v18);
    sub_20B520158(v23, &qword_27C7627B8);
    (*(v41 + 32))(v37, v42, v18);
    swift_storeEnumTagMultiPayload();
    v40 = 0;
  }

  v43 = v35;
  v91(v37, v40, 1, v35);
  v44 = (v97 + 48);
  v45 = MEMORY[0x277D84F90];
  v46 = 3;
  v47 = v94;
  do
  {
    v48 = v99;
    sub_20B52F9E8(v47, v99, &unk_27C7629B0);
    sub_20B5DF134(v48, v15, &unk_27C7629B0);
    v49 = *v44;
    if ((*v44)(v15, 1, v43) == 1)
    {
      sub_20B520158(v15, &unk_27C7629B0);
    }

    else
    {
      sub_20B7479A0(v15, v100);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_20BC05D14(0, v45[2] + 1, 1, v45);
      }

      v51 = v45[2];
      v50 = v45[3];
      if (v51 >= v50 >> 1)
      {
        v45 = sub_20BC05D14(v50 > 1, v51 + 1, 1, v45);
      }

      v45[2] = v51 + 1;
      sub_20B7479A0(v100, v45 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v51);
      v43 = v96;
    }

    v47 += v98;
    --v46;
  }

  while (v46);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v93;
  if ((v52[*(*v52 + 200)] & 0x20) != 0)
  {

    v75 = &v52[*(*v52 + 232)];
LABEL_35:
    v79 = sub_20C135524();
    return (*(*(v79 - 8) + 16))(v87, v75, v79);
  }

  v53 = qword_27C79BF30;
  swift_beginAccess();
  v54 = v84;
  v55 = &v52[v53];
  v56 = v83;
  v57 = v85;
  (*(v84 + 16))(v83, v55, v85);
  v58 = sub_20C133E04();
  (*(v54 + 8))(v56, v57);
  v59 = v58 + 56;
  v60 = 1 << *(v58 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v58 + 56);
  v63 = (v60 + 63) >> 6;

  v65 = 0;
  v100 = v58;
  if (v62)
  {
LABEL_20:
    v66 = v65;
LABEL_24:
    v67 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v68 = *(v58 + 48);
    v69 = *(v97 + 72);
    v70 = v86;
    sub_20B747A04(v68 + v69 * (v67 | (v66 << 6)), v86);
    sub_20B7479A0(v70, v95);
    v71 = v45[2] + 1;
    v72 = v45;
    while (--v71)
    {
      v73 = (v72 + v69);
      v74 = MEMORY[0x20F2ED3D0](v72 + ((*(v97 + 80) + 32) & ~*(v97 + 80)), v95);
      v72 = v73;
      if (v74)
      {
        result = sub_20B747A68(v95, MEMORY[0x277D52060]);
        v65 = v66;
        v58 = v100;
        if (!v62)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v76 = v82;
    sub_20B7479A0(v95, v82);
    v77 = 0;
LABEL_32:
    v78 = v96;
    v91(v76, v77, 1, v96);

    LODWORD(v78) = v49(v76, 1, v78);
    sub_20B520158(v76, &unk_27C7629B0);
    if (v78 == 1)
    {
      v75 = &v93[*(*v93 + 240)];
    }

    else
    {
      v75 = &v93[qword_27C79BF38];
      swift_beginAccess();
    }

    goto LABEL_35;
  }

LABEL_21:
  while (1)
  {
    v66 = v65 + 1;
    if (__OFADD__(v65, 1))
    {
      break;
    }

    if (v66 >= v63)
    {

      v77 = 1;
      v76 = v82;
      goto LABEL_32;
    }

    v62 = *(v59 + 8 * v66);
    ++v65;
    if (v62)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B740984@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v112 = a5;
  v111 = a4;
  v114 = a3;
  v9 = v6;
  v113 = a6;
  v108 = sub_20C133E24();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135C84();
  v124 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v122 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v109 = &v103 - v14;
  MEMORY[0x28223BE20](v15);
  v126 = &v103 - v16;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0);
  v17 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v105 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v103 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v125 = &v103 - v24;
  v25 = a1(0, v23);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v110 = &v103 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  MEMORY[0x28223BE20](v28 - 8);
  v116 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v103 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7649B8);
  v33 = *(v17 + 72);
  v34 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v117 = swift_allocObject();
  v35 = v117 + v34;
  sub_20C134E84();
  v127 = v33;
  v121 = v35;
  v36 = (v35 + v33);
  v37 = v26;
  v38 = *(*v9 + 176);
  swift_beginAccess();
  v120 = v9;
  sub_20B52F9E8(v9 + v38, v32, a2);
  v39 = *(v26 + 48);
  v40 = v25;
  v115 = v39;
  v41 = v39(v32, 1, v25);
  v123 = a2;
  v104 = v37;
  if (v41)
  {
    sub_20B520158(v32, a2);
    v42 = v124;
    v43 = *(v124 + 56);
    v44 = v36;
    v45 = 1;
  }

  else
  {
    v46 = v110;
    (*(v37 + 16))(v110, v32, v40);
    v47 = sub_20B520158(v32, a2);
    v48 = v111(v47);
    v49 = v37;
    v51 = v50;
    (*(v49 + 8))(v46, v40);
    *v36 = v48;
    v36[1] = v51;
    swift_storeEnumTagMultiPayload();
    v42 = v124;
    v43 = *(v124 + 56);
    v44 = v36;
    v45 = 0;
  }

  v119 = v43;
  v43(v44, v45, 1, v11);
  v52 = v40;
  v53 = v120;
  v54 = (v121 + 2 * v127);
  v55 = *(*v120 + 184);
  swift_beginAccess();
  v56 = v53 + v55;
  v57 = v116;
  v58 = v123;
  sub_20B52F9E8(v56, v116, v123);
  if (v115(v57, 1, v52))
  {
    sub_20B520158(v57, v58);
    v59 = v54;
    v60 = 1;
  }

  else
  {
    v61 = v104;
    v62 = v110;
    (*(v104 + 16))(v110, v57, v52);
    v63 = sub_20B520158(v57, v58);
    v64 = v111(v63);
    v66 = v65;
    (*(v61 + 8))(v62, v52);
    *v54 = v64;
    v54[1] = v66;
    swift_storeEnumTagMultiPayload();
    v59 = v54;
    v60 = 0;
  }

  v119(v59, v60, 1, v11);
  v67 = (v42 + 48);
  v68 = MEMORY[0x277D84F90];
  v69 = 3;
  v70 = v121;
  v123 = v11;
  do
  {
    v71 = v125;
    sub_20B52F9E8(v70, v125, &unk_27C7629B0);
    sub_20B5DF134(v71, v21, &unk_27C7629B0);
    v72 = *v67;
    if ((*v67)(v21, 1, v11) == 1)
    {
      sub_20B520158(v21, &unk_27C7629B0);
    }

    else
    {
      sub_20B7479A0(v21, v126);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_20BC05D14(0, v68[2] + 1, 1, v68);
      }

      v74 = v68[2];
      v73 = v68[3];
      if (v74 >= v73 >> 1)
      {
        v68 = sub_20BC05D14(v73 > 1, v74 + 1, 1, v68);
      }

      v68[2] = v74 + 1;
      sub_20B7479A0(v126, v68 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v74);
      v11 = v123;
    }

    v70 += v127;
    --v69;
  }

  while (v69);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v75 = v120;
  if ((*(v75 + *(*v75 + 200)) & 0x20) != 0)
  {

    v98 = v75 + *(*v75 + 232);
LABEL_35:
    v102 = sub_20C135524();
    return (*(*(v102 - 8) + 16))(v113, v98, v102);
  }

  v76 = qword_27C79BF30;
  swift_beginAccess();
  v77 = v107;
  v78 = v75 + v76;
  v79 = v106;
  v80 = v108;
  (*(v107 + 16))(v106, v78, v108);
  v81 = sub_20C133E04();
  (*(v77 + 8))(v79, v80);
  v82 = v81 + 56;
  v83 = 1 << *(v81 + 32);
  v84 = -1;
  if (v83 < 64)
  {
    v84 = ~(-1 << v83);
  }

  v85 = v84 & *(v81 + 56);
  v86 = (v83 + 63) >> 6;
  v127 = v81;

  v88 = 0;
  v89 = v124;
  if (v85)
  {
LABEL_20:
    v90 = v88;
LABEL_24:
    v91 = __clz(__rbit64(v85));
    v85 &= v85 - 1;
    v92 = *(v89 + 72);
    v93 = v109;
    sub_20B747A04(*(v127 + 48) + v92 * (v91 | (v90 << 6)), v109);
    sub_20B7479A0(v93, v122);
    v94 = v68[2] + 1;
    v95 = v68;
    while (--v94)
    {
      v96 = (v95 + v92);
      v97 = MEMORY[0x20F2ED3D0](v95 + ((*(v124 + 80) + 32) & ~*(v124 + 80)), v122);
      v95 = v96;
      if (v97)
      {
        result = sub_20B747A68(v122, MEMORY[0x277D52060]);
        v88 = v90;
        v89 = v124;
        if (!v85)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    v99 = v105;
    sub_20B7479A0(v122, v105);
    v100 = 0;
LABEL_32:
    v101 = v123;
    v119(v99, v100, 1, v123);

    LODWORD(v101) = v72(v99, 1, v101);
    sub_20B520158(v99, &unk_27C7629B0);
    if (v101 == 1)
    {
      v98 = v120 + *(*v120 + 240);
    }

    else
    {
      v98 = v120 + qword_27C79BF38;
      swift_beginAccess();
    }

    goto LABEL_35;
  }

LABEL_21:
  while (1)
  {
    v90 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      break;
    }

    if (v90 >= v86)
    {

      v100 = 1;
      v99 = v105;
      goto LABEL_32;
    }

    v85 = *(v82 + 8 * v90);
    ++v88;
    if (v85)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20B7414BC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A78);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C134E04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D51130], MEMORY[0x277D51110], sub_20B752D20, sub_20B6B6F84, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C764A78);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05E48(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05E48(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B741980@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C1341A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B743F5C(v13, v45, v44, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C7627B8);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05E70(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05E70(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B741E00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D52AF8], MEMORY[0x277D52AD8], sub_20B74F4CC, sub_20B6B6FDC, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C771090);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05E98(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05E98(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B7422C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C138244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D53E10], MEMORY[0x277D53DF0], sub_20B752F88, sub_20B6B7008, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C762710);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05EC0(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05EC0(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B742788@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C1382B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D53E88], MEMORY[0x277D53E68], sub_20B752BEC, sub_20B6B7034, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C7627E8);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05EE8(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05EE8(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B742C4C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AA0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C1333E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D4FE80], MEMORY[0x277D4FE60], sub_20B752E54, sub_20B6B7060, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C764AA0);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05F10(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05F10(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}

uint64_t sub_20B743110@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v44 = a1;
  v40 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762758);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_20C1334D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v33 - v10;
  v11 = sub_20C135C84();
  v43 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C133E04();
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v7;
  v39 = (v7 + 32);

  v21 = 0;
  v42 = MEMORY[0x277D84F90];
  while (1)
  {
    v22 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    sub_20B747A04(*(v15 + 48) + *(v43 + 72) * (__clz(__rbit64(v19)) | (v21 << 6)), v13);
    sub_20B744C60(v13, v45, v44, MEMORY[0x277D4FF18], MEMORY[0x277D4FEF8], sub_20B74EC10, sub_20B6B708C, v5);
    v19 &= v19 - 1;
    sub_20B747A68(v13, MEMORY[0x277D52060]);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_20B520158(v5, &qword_27C762758);
    }

    else
    {
      v36 = *v39;
      v36(v37, v5, v6);
      v36(v38, v37, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_20BC05F38(0, *(v42 + 2) + 1, 1, v42);
      }

      v24 = *(v42 + 2);
      v23 = *(v42 + 3);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v34 = *(v42 + 2);
        v35 = v24 + 1;
        v28 = sub_20BC05F38(v23 > 1, v24 + 1, 1, v42);
        v24 = v34;
        v25 = v35;
        v42 = v28;
      }

      v26 = v41;
      v27 = v42;
      *(v42 + 2) = v25;
      v36(&v27[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24], v38, v6);
    }
  }

  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);

      sub_20B747A68(v13, MEMORY[0x277D52060]);

      __break(1u);
      return result;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v22;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  if (*(v42 + 2))
  {
    v29 = v40;
    v30 = v41;
    (*(v41 + 16))(v40, &v42[(*(v41 + 80) + 32) & ~*(v41 + 80)], v6);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v29 = v40;
    v30 = v41;
  }

  return (*(v30 + 56))(v29, v31, 1, v6);
}