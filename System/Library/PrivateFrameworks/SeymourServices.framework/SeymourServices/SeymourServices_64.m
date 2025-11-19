uint64_t Array<A>.intersects(modalityKinds:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v17 = *(a2 + 16);
  v18 = a2 + 32;
  v5 = a1 + 56;
  while (1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_4;
    }

    v6 = v18 + 40 * v4;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(a1 + 40);
    sub_22766D370();

    sub_226EB396C(v7, v8, v9);
    sub_226EB396C(v7, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
    sub_226F480FC();
    sub_227663B10();
    v11 = sub_22766D3F0();
    v12 = -1 << *(a1 + 32);
    v13 = v11 & ~v12;
    if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      break;
    }

LABEL_3:

    sub_226EB2DFC(v7, v8, v9);
    sub_226EB2DFC(v7, v8, v9);
    v2 = v17;
LABEL_4:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v14 = ~v12;
  sub_226F48150();
  sub_226EC1E18();
  while (1)
  {
    v15 = *(a1 + 48) + 24 * v13;
    v19 = *v15;
    v20 = *(v15 + 16);
    if (sub_227663B20())
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  sub_226EB2DFC(v7, v8, v9);
  sub_226EB2DFC(v7, v8, v9);
  return 1;
}

uint64_t Array<A>.withBodyFocuses(_:forModality:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v32 = MEMORY[0x277D84F90];
  sub_226F1FD28(0, v5, 0);
  v8 = 0;
  v6 = v32;
  for (i = (a5 + 64); ; i += 40)
  {
    v10 = *(i - 4);
    v11 = *(i - 3);
    v12 = *(i - 1);
    v14 = *i;
    v29 = *(i - 2);
    v13 = v29;
    v30 = v12;
    v31 = v14;

    sub_226EB396C(v13, v12, v14);
    sub_226F48150();
    sub_226EC1E18();
    result = sub_227663B20();
    v27 = v10;
    if ((result & 1) == 0)
    {
      goto LABEL_7;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *(a1 + 16))
    {
      goto LABEL_12;
    }

    v16 = *(sub_227664B70() - 8);
    v17 = v8;
    v18 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v8;
    v26 = sub_227664B60();
    v20 = v19;
    v21 = sub_226F4906C();
    v28 = MEMORY[0x22AA98980](1, MEMORY[0x277D537D8], v21);
    sub_2270AEFC4(&v29, v26, v20, 0);
    v8 = v17 + 1;
    sub_226F49200(v29, v30, v31);
    sub_226EB396C(v13, v12, v14);

    sub_226EB2DFC(v13, v12, v14);
    v11 = v28;
LABEL_7:
    v32 = v6;
    v23 = *(v6 + 16);
    v22 = *(v6 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_226F1FD28((v22 > 1), v23 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v23 + 1;
    v24 = v6 + 40 * v23;
    *(v24 + 32) = v27;
    *(v24 + 40) = v11;
    *(v24 + 48) = v13;
    *(v24 + 56) = v12;
    *(v24 + 64) = v14;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t Array<A>.hasDuplicateCategories(usingMapping:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v30 = &v28 - v8;
  MEMORY[0x28223BE20](v9);
  v29 = &v28 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v33 = MEMORY[0x277D84FA0];
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = (a2 + 64);
    do
    {
      if (*(a1 + 16))
      {
        v16 = *v15;
        v18 = *(v15 - 2);
        v17 = *(v15 - 1);
        sub_226EB396C(v18, v17, *v15);
        v19 = sub_226F491D8(v18, v17, v16);
        v21 = v20;
        sub_226EB2DFC(v18, v17, v16);
        if (v21)
        {
          v22 = *(a1 + 56) + *(v32 + 72) * v19;
          v23 = v29;
          sub_226E93170(v22, v29, &qword_27D7B88C0, &unk_22767A720);
          sub_226E95D18(v23, v13, &qword_27D7B88C0, &unk_22767A720);
          v24 = v31;
          sub_226E93170(v13, v31, &qword_27D7B88C0, &unk_22767A720);
          v25 = v30;
          LOBYTE(v23) = sub_227105A44(v30, v24);
          sub_226E97D1C(v25, &qword_27D7B88C0, &unk_22767A720);
          sub_226E97D1C(v13, &qword_27D7B88C0, &unk_22767A720);
          if ((v23 & 1) == 0)
          {
            v26 = 1;
            goto LABEL_11;
          }
        }
      }

      v15 += 40;
      --v14;
    }

    while (v14);
    v26 = 0;
  }

  else
  {
    v26 = 0;
  }

LABEL_11:

  return v26;
}

BOOL Array<A>.contains(modalityKind:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  v4 = (a2 + 64);
  v5 = v3 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = v4 + 40;
    v9 = *(v4 - 1);
    v10 = *v4;
    sub_226F48150();
    sub_226EC1E18();
    v7 = sub_227663B20();
    v4 = v6;
  }

  while ((v7 & 1) == 0);

  return v5 != 0;
}

uint64_t Array<A>.count(forModalityCategory:usingMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v98 = *(v5 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v5);
  v97 = &v93 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  v8 = *(*(v114 - 8) + 64);
  MEMORY[0x28223BE20](v114);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v93 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v96 = &v93 - v18;
  MEMORY[0x28223BE20](v19);
  v105 = &v93 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v93 - v22;
  MEMORY[0x28223BE20](v24);
  v107 = &v93 - v25;
  MEMORY[0x28223BE20](v26);
  v106 = &v93 - v27;
  v28 = sub_227666900();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v33;
  v34 = *(v33 + 16);
  v117 = v32;
  v123 = v35;
  v112 = v34;
  v113 = v33 + 16;
  v34(v30);
  v36 = *(a3 + 16);

  v94 = a3;

  v116 = v36;
  if (!v36)
  {
LABEL_17:

    v67 = 0;
    goto LABEL_44;
  }

  v37 = 0;
  v99 = v94 + 32;
  v38 = (v98 + 56);
  v111 = (v98 + 48);
  v39 = (v94 + 64);
  v115 = v5;
  v95 = v16;
  v110 = a2;
  v103 = v12;
  v102 = (v98 + 56);
  v104 = v23;
  while (1)
  {
    v42 = *(v39 - 3);
    v43 = *(v39 - 2);
    v44 = *(v39 - 1);
    v45 = *v39;
    v46 = *(a2 + 16);
    v122 = *v39;
    v120 = v43;
    v121 = v44;
    v118 = v42;
    v119 = v37;
    if (v46)
    {

      sub_226EB396C(v43, v44, v45);
      sub_226EB396C(v43, v44, v45);
      v47 = sub_226F491D8(v43, v44, v45);
      v49 = v48;
      sub_226EB2DFC(v43, v44, v45);
      if (v49)
      {
        v50 = v98;
        v51 = v106;
        sub_226E93170(*(a2 + 56) + *(v98 + 72) * v47, v106, &qword_27D7B88C0, &unk_22767A720);
        v52 = *(v50 + 56);
        v53 = v51;
        v54 = 0;
      }

      else
      {
        v52 = *v38;
        v51 = v106;
        v53 = v106;
        v54 = 1;
      }

      v5 = v115;
      v52(v53, v54, 1, v115);
    }

    else
    {
      v52 = *v38;
      v55 = v43;
      v51 = v106;
      (*v38)(v106, 1, 1, v5);

      sub_226EB396C(v55, v44, v45);
    }

    v56 = v107;
    (v112)(v107, v117, v123);
    swift_storeEnumTagMultiPayload();
    v108 = v52;
    v109 = v38 & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v52(v56, 0, 1, v5);
    v57 = v56;
    v58 = *(v114 + 48);
    v59 = v103;
    sub_226E93170(v51, v103, &qword_27D7BB378, &qword_22767A730);
    sub_226E93170(v56, v59 + v58, &qword_27D7BB378, &qword_22767A730);
    v60 = *v111;
    if ((*v111)(v59, 1, v5) == 1)
    {
      break;
    }

    v61 = v104;
    sub_226E93170(v59, v104, &qword_27D7BB378, &qword_22767A730);
    if (v60(v59 + v58, 1, v5) == 1)
    {
      sub_226E97D1C(v107, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v106, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v61, &qword_27D7B88C0, &unk_22767A720);
      v41 = v119;
      goto LABEL_4;
    }

    v101 = v60;
    v62 = v97;
    sub_226E95D18(v59 + v58, v97, &qword_27D7B88C0, &unk_22767A720);
    sub_22746B598(&qword_27D7B88D8);
    sub_22746B598(&qword_27D7B88E0);
    v63 = sub_227663B20();
    v64 = v62;
    v65 = v104;
    sub_226E97D1C(v64, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v107, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v106, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v65, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v59, &qword_27D7BB378, &qword_22767A730);

    result = sub_226EB2DFC(v120, v121, v122);
    v41 = v119;
    if (v63)
    {
      goto LABEL_19;
    }

LABEL_5:
    v37 = v41 + 1;
    v39 += 40;
    a2 = v110;
    v38 = v102;
    if (v116 == v37)
    {
      goto LABEL_17;
    }
  }

  sub_226E97D1C(v57, &qword_27D7BB378, &qword_22767A730);
  sub_226E97D1C(v51, &qword_27D7BB378, &qword_22767A730);
  v40 = v60(v59 + v58, 1, v5);
  v41 = v119;
  if (v40 != 1)
  {
LABEL_4:
    sub_226E97D1C(v59, &qword_27D7BB370, &unk_227686440);

    sub_226EB2DFC(v120, v121, v122);
    goto LABEL_5;
  }

  v101 = v60;
  sub_226E97D1C(v59, &qword_27D7BB378, &qword_22767A730);

  result = sub_226EB2DFC(v120, v121, v122);
LABEL_19:
  v68 = 0;
  v69 = v105;
  v70 = v96;
LABEL_20:
  v118 = v68 + 1;
  if (__OFADD__(v68, 1))
  {
    goto LABEL_47;
  }

  if (v41 == v116)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v71 = __OFADD__(v41++, 1);
  if (v71)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  while (v41 != v116)
  {
    if (v41 >= v116)
    {
      goto LABEL_46;
    }

    v72 = v99 + 40 * v41;
    v73 = *(v72 + 8);
    v74 = *(v72 + 16);
    v75 = *(v72 + 24);
    v76 = *(v72 + 32);
    v77 = v110;
    v78 = *(v110 + 16);
    v122 = v76;
    v120 = v74;
    v121 = v75;
    v119 = v73;
    if (v78)
    {

      sub_226EB396C(v74, v75, v76);
      sub_226EB396C(v74, v75, v76);
      v79 = sub_226F491D8(v74, v75, v76);
      v81 = v80;
      sub_226EB2DFC(v74, v75, v76);
      if (v81)
      {
        sub_226E93170(*(v77 + 56) + *(v98 + 72) * v79, v69, &qword_27D7B88C0, &unk_22767A720);
        v82 = v69;
        v83 = 0;
      }

      else
      {
        v82 = v69;
        v83 = 1;
      }

      v5 = v115;
      v84 = v108;
      v108(v82, v83, 1, v115);
      v85 = v100;
    }

    else
    {
      v84 = v108;
      v108(v69, 1, 1, v5);

      v85 = v100;
      sub_226EB396C(v74, v75, v76);
    }

    v86 = v69;
    (v112)(v70, v117, v123);
    swift_storeEnumTagMultiPayload();
    v84(v70, 0, 1, v5);
    v87 = *(v114 + 48);
    sub_226E93170(v86, v85, &qword_27D7BB378, &qword_22767A730);
    sub_226E93170(v70, v85 + v87, &qword_27D7BB378, &qword_22767A730);
    v88 = v101;
    if (v101(v85, 1, v5) == 1)
    {
      sub_226E97D1C(v70, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v86, &qword_27D7BB378, &qword_22767A730);
      if (v88(v85 + v87, 1, v5) == 1)
      {
        sub_226E97D1C(v85, &qword_27D7BB378, &qword_22767A730);

        result = sub_226EB2DFC(v120, v121, v122);
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    v89 = v95;
    sub_226E93170(v85, v95, &qword_27D7BB378, &qword_22767A730);
    if (v88(v85 + v87, 1, v5) == 1)
    {
      v70 = v96;
      sub_226E97D1C(v96, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v105, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v89, &qword_27D7B88C0, &unk_22767A720);
LABEL_26:
      sub_226E97D1C(v85, &qword_27D7BB370, &unk_227686440);

      result = sub_226EB2DFC(v120, v121, v122);
      goto LABEL_27;
    }

    v90 = v85 + v87;
    v91 = v97;
    sub_226E95D18(v90, v97, &qword_27D7B88C0, &unk_22767A720);
    sub_22746B598(&qword_27D7B88D8);
    sub_22746B598(&qword_27D7B88E0);
    v92 = sub_227663B20();
    sub_226E97D1C(v91, &qword_27D7B88C0, &unk_22767A720);
    v70 = v96;
    sub_226E97D1C(v96, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v105, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v89, &qword_27D7B88C0, &unk_22767A720);
    sub_226E97D1C(v85, &qword_27D7BB378, &qword_22767A730);

    result = sub_226EB2DFC(v120, v121, v122);
    if (v92)
    {
      v5 = v115;
LABEL_42:
      v69 = v105;
      v68 = v118;
      goto LABEL_20;
    }

LABEL_27:
    v71 = __OFADD__(v41++, 1);
    v5 = v115;
    v69 = v105;
    if (v71)
    {
      goto LABEL_45;
    }
  }

  v67 = v118;
LABEL_44:
  (*(v93 + 8))(v117, v123);
  return v67;
}

uint64_t Array<A>.totalDuration(forModalityCategory:usingMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v57 - v8;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB370, &unk_227686440);
  v9 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = &v57 - v17;
  MEMORY[0x28223BE20](v18);
  v74 = &v57 - v19;
  v20 = sub_227666900();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v25;
  v26 = *(v25 + 16);
  v72 = v24;
  v73 = v27;
  v67 = v26;
  v68 = v25 + 16;
  v26(v22);
  v28 = *(a3 + 16);
  v75 = (v6 + 56);
  v76 = a2;
  v63 = v6;
  v66 = (v6 + 48);

  v30 = 0;
  v61 = 0;
  v59 = a3;
  v60 = a3 + 64;
  v70 = v5;
  v71 = v28;
  v64 = v15;
  while (2)
  {
    if (v30 == v28)
    {
      goto LABEL_23;
    }

    v31 = (v60 + 40 * v30);
    while (1)
    {
      if (v30 >= v28)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return result;
      }

      if (__OFADD__(v30, 1))
      {
        goto LABEL_25;
      }

      v82 = v30 + 1;
      v34 = v11;
      v35 = *(v31 - 3);
      v65 = *(v31 - 4);
      v36 = *(v31 - 2);
      v37 = *(v31 - 1);
      v38 = *v31;
      v39 = *(v76 + 16);
      v81 = *v31;
      v79 = v36;
      v80 = v37;
      v77 = v30;
      v78 = v35;
      if (v39)
      {

        sub_226EB396C(v36, v37, v38);
        sub_226EB396C(v36, v37, v38);
        v40 = v76;
        v41 = sub_226F491D8(v36, v37, v38);
        v42 = v37;
        v43 = v41;
        v45 = v44;
        sub_226EB2DFC(v36, v42, v38);
        v46 = v74;
        if (v45)
        {
          v47 = v63;
          sub_226E93170(*(v40 + 56) + *(v63 + 72) * v43, v74, &qword_27D7B88C0, &unk_22767A720);
          v48 = *(v47 + 56);
          v49 = v70;
          v48(v46, 0, 1, v70);
        }

        else
        {
          v48 = *v75;
          v49 = v70;
          (*v75)(v74, 1, 1, v70);
        }
      }

      else
      {
        v48 = *v75;
        v46 = v74;
        v49 = v70;
        (*v75)(v74, 1, 1, v70);

        sub_226EB396C(v36, v37, v38);
      }

      v50 = v83;
      (v67)(v83, v72, v73);
      swift_storeEnumTagMultiPayload();
      v48(v50, 0, 1, v49);
      v51 = *(v69 + 48);
      v11 = v34;
      sub_226E93170(v46, v34, &qword_27D7BB378, &qword_22767A730);
      sub_226E93170(v50, v34 + v51, &qword_27D7BB378, &qword_22767A730);
      v52 = *v66;
      if ((*v66)(v34, 1, v49) == 1)
      {
        break;
      }

      v53 = v64;
      sub_226E93170(v34, v64, &qword_27D7BB378, &qword_22767A730);
      if (v52(v34 + v51, 1, v49) == 1)
      {
        sub_226E97D1C(v83, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v74, &qword_27D7BB378, &qword_22767A730);
        sub_226E97D1C(v53, &qword_27D7B88C0, &unk_22767A720);
        v33 = v82;
        goto LABEL_5;
      }

      v54 = v62;
      sub_226E95D18(v34 + v51, v62, &qword_27D7B88C0, &unk_22767A720);
      sub_22746B598(&qword_27D7B88D8);
      sub_22746B598(&qword_27D7B88E0);
      v55 = sub_227663B20();
      sub_226E97D1C(v54, &qword_27D7B88C0, &unk_22767A720);
      sub_226E97D1C(v83, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v74, &qword_27D7BB378, &qword_22767A730);
      sub_226E97D1C(v53, &qword_27D7B88C0, &unk_22767A720);
      sub_226E97D1C(v34, &qword_27D7BB378, &qword_22767A730);

      result = sub_226EB2DFC(v79, v80, v81);
      v33 = v82;
      if (v55)
      {
        goto LABEL_20;
      }

LABEL_6:
      v30 = v77 + 1;
      v31 += 40;
      v28 = v71;
      if (v33 == v71)
      {
        goto LABEL_23;
      }
    }

    sub_226E97D1C(v83, &qword_27D7BB378, &qword_22767A730);
    sub_226E97D1C(v46, &qword_27D7BB378, &qword_22767A730);
    v32 = v52(v34 + v51, 1, v49);
    v33 = v82;
    if (v32 != 1)
    {
LABEL_5:
      sub_226E97D1C(v34, &qword_27D7BB370, &unk_227686440);

      result = sub_226EB2DFC(v79, v80, v81);
      goto LABEL_6;
    }

    sub_226E97D1C(v34, &qword_27D7BB378, &qword_22767A730);

    result = sub_226EB2DFC(v79, v80, v81);
LABEL_20:
    v30 = v33;
    v56 = __OFADD__(v61, v65);
    v61 += v65;
    v28 = v71;
    if (!v56)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:

  (*(v58 + 8))(v72, v73);
  return v61;
}

uint64_t Array<A>.totalDuration(forModalityKind:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  v5 = 0;
  v6 = 0;
  v7 = a2 + 64;
LABEL_2:
  v8 = (v7 + 40 * v5);
  while (1)
  {
    if (v3 == v5)
    {
      goto LABEL_10;
    }

    if (v5 >= v3)
    {
      break;
    }

    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_12;
    }

    v10 = *(v8 - 4);
    v12 = *(v8 - 1);
    v13 = *v8;
    sub_226F48150();
    sub_226EC1E18();
    result = sub_227663B30();
    ++v5;
    v8 += 40;
    if (result)
    {
      v5 = v9;
      v11 = __OFADD__(v6, v10);
      v6 += v10;
      v7 = a2 + 64;
      if (!v11)
      {
        goto LABEL_2;
      }

      __break(1u);
LABEL_10:

      return v6;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t static Array<A>.unscheduled.getter()
{
  if (qword_27D7B7F28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2274E8434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  return sub_226EB396C(v3, v2, v4);
}

uint64_t sub_2274E844C@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_226E97CC0(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_226F04970(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_226E97D1C(v22, &qword_27D7BE108, &qword_227688B20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_2274E85AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_226E97CC0(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_226F04970(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_226E97D1C(&v19, &qword_27D7BE118, &unk_227688B30);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2274E86FC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4B8, &unk_227678D30);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v46 = sub_2276624A0();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v46);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE110, &qword_227688B28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v50 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v43 = v6;
  v49 = v21;
  if (v22)
  {
    v45 = a1;
    v23 = v20;
LABEL_11:
    v44 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v46;
    (*(v7 + 16))(v10, *(v18 + 48) + *(v7 + 72) * v27, v46);
    v29 = *(*(v18 + 56) + 8 * v27);
    v30 = *(v48 + 48);
    v31 = v10;
    v32 = v48;
    (*(v7 + 32))(v17, v31, v28);
    *&v17[v30] = v29;
    v33 = v47;
    (*(v47 + 56))(v17, 0, 1, v32);

    v34 = v44;
    a1 = v45;
    v26 = v23;
    v35 = v33;
LABEL_12:
    *v1 = v18;
    v1[1] = v19;
    v36 = v50;
    v1[2] = v49;
    v1[3] = v26;
    v1[4] = v34;
    v37 = v1[5];
    v38 = v1[6];
    sub_226E95D18(v17, v36, &qword_27D7BE110, &qword_227688B28);
    v39 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v40 = v36;
      v41 = v43;
      sub_226E95D18(v40, v43, &qword_27D7BA4B8, &unk_227678D30);
      v37(v41);
      sub_226E97D1C(v41, &qword_27D7BA4B8, &unk_227678D30);
      v39 = 0;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA4A8, &qword_227678D20);
    return (*(*(v42 - 8) + 56))(a1, v39, 1, v42);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v35 = v47;
        v32 = v48;
        (*(v47 + 56))(&v43 - v16, 1, 1, v48);
        v34 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v45 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2274E8AE0()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == v2)
  {
    return 0;
  }

  if (v1 >= v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *v0 + 40 * v1;
    v5 = *(v4 + 64);
    v7 = *(v4 + 48);
    v6 = *(v4 + 56);
    v10 = v4 + 32;
    v9 = *(v4 + 32);
    v8 = *(v10 + 8);
    v0[1] = v1 + 1;
    v12 = v0[2];
    v11 = v0[3];
    v16[0] = v9;
    v16[1] = v8;
    v17 = v7;
    v18 = v6;
    v19 = v5;

    sub_226EB396C(v7, v6, v5);
    v12(&v15, v16);
    v13 = v17;
    v14 = v18;
    LOBYTE(v6) = v19;

    sub_226EB2DFC(v13, v14, v6);
    return v15;
  }

  return result;
}

uint64_t sub_2274E8BB4(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB378, &qword_22767A730);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v44 - v5;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88C0, &unk_22767A720);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v44 - v9;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return 0;
  }

  v47 = 0;
  v48 = 0;
  v11 = (v8 + 56);
  v45 = v8;
  v46 = (v8 + 48);
  v12 = (a1 + 64);
  v13 = MEMORY[0x277D84F98];
  v14 = v44;
  while (1)
  {
    if (!*(v14 + 16))
    {
      (*v11)(v6, 1, 1, v49);
LABEL_4:
      sub_226E97D1C(v6, &qword_27D7BB378, &qword_22767A730);
      goto LABEL_5;
    }

    v16 = *(v12 - 2);
    v15 = *(v12 - 1);
    v17 = *v12;
    sub_226EB396C(v16, v15, *v12);
    v18 = sub_226F491D8(v16, v15, v17);
    if (v19)
    {
      sub_226E93170(*(v14 + 56) + *(v45 + 72) * v18, v6, &qword_27D7B88C0, &unk_22767A720);
      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = v49;
    (*v11)(v6, v20, 1, v49);
    sub_226EB2DFC(v16, v15, v17);
    if ((*v46)(v6, 1, v21) == 1)
    {
      goto LABEL_4;
    }

    v22 = v50;
    sub_226E95D18(v6, v50, &qword_27D7B88C0, &unk_22767A720);
    sub_226EA9E3C(v48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v13;
    v24 = sub_226F3ADC4(v22);
    v26 = v13[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v13[3] < v29)
    {
      sub_226FE6DD4(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_226F3ADC4(v50);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_35;
      }

LABEL_16:
      v13 = v51;
      if ((v30 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_19;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v42 = v24;
    sub_226FF2414();
    v24 = v42;
    v13 = v51;
    if ((v30 & 1) == 0)
    {
LABEL_17:
      v13[(v24 >> 6) + 8] |= 1 << v24;
      v32 = v24;
      sub_226E93170(v50, v13[6] + *(v45 + 72) * v24, &qword_27D7B88C0, &unk_22767A720);
      *(v13[7] + 8 * v32) = 0;
      v33 = v13[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_34;
      }

      v24 = v32;
      v13[2] = v34;
    }

LABEL_19:
    v35 = v13[7];
    v36 = *(v35 + 8 * v24);
    v28 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v28)
    {
      goto LABEL_33;
    }

    *(v35 + 8 * v24) = v37;
    if (v13[2] && (v38 = sub_226F3ADC4(v50), (v39 & 1) != 0))
    {
      v40 = *(v13[7] + 8 * v38);
    }

    else
    {
      v40 = 0;
    }

    sub_226E97D1C(v50, &qword_27D7B88C0, &unk_22767A720);
    v41 = v47;
    if (v40 > v47)
    {
      v41 = v40;
    }

    v47 = v41;
    v48 = sub_226F04A6C;
    v14 = v44;
LABEL_5:
    v12 += 40;
    if (!--v10)
    {

      sub_226EA9E3C(v48);
      return v47;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:

  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2274E9008@<X0>(void (*a1)(uint64_t)@<X2>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E00, &qword_227672198);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v12 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  a1(v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_22722A874(v7);
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    *(swift_allocObject() + 16) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    return sub_227669280();
  }

  else
  {
    v19 = *(v9 + 32);
    v19(v15, v7, v8);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_226EC2978;
    *(v20 + 24) = 0;
    (*(v9 + 16))(v12, v15, v8);
    v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v25[1] = a2;
    v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    v19((v23 + v21), v12, v8);
    v24 = (v23 + v22);
    *v24 = sub_226EC1D10;
    v24[1] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    sub_227669270();
    return (*(v9 + 8))(v15, v8);
  }
}

uint64_t sub_2274E9354(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = sub_22766B390();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  v14 = sub_22766B380();
  v15 = sub_22766C8B0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v10;
    v17 = v16;
    v18 = swift_slowAlloc();
    v32 = a4;
    v30 = v18;
    v35 = v18;
    *v17 = 136446210;
    v34 = a1;
    v19 = sub_2274E9930();
    v20 = MEMORY[0x22AA958B0](&type metadata for IncomingScriptRequest, v19);
    v22 = a2;
    v23 = a3;
    v24 = sub_226E97AE8(v20, v21, &v35);

    *(v17 + 4) = v24;
    a3 = v23;
    a2 = v22;
    v6 = v4;
    _os_log_impl(&dword_226E8E000, v14, v15, "ScriptConnection registering request handler: %{public}s", v17, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    v26 = (*(v33 + 8))(v13, v31);
  }

  else
  {

    v26 = (*(v33 + 8))(v13, v10);
  }

  v27 = *(v6 + 16);
  MEMORY[0x28223BE20](v26);
  *(&v29 - 4) = v6;
  *(&v29 - 24) = a1;
  *(&v29 - 2) = a2;
  *(&v29 - 1) = a3;
  return sub_2276696A0();
}

uint64_t sub_2274E95BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a3;
  v28 = a6;
  v26[1] = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(*(a1 + 24) + 16))
  {
    v15 = *(a1 + 24);

    sub_226EA8CE0(a2);
    v17 = v16;

    if (v17)
    {
      sub_22766A730();
      v18 = sub_22766B380();
      v19 = sub_22766C890();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v26[0] = v6;
        v21 = v20;
        *v20 = 0;
        _os_log_impl(&dword_226E8E000, v18, v19, "Overwriting existing handler", v20, 2u);
        MEMORY[0x22AA9A450](v21, -1, -1);
      }

      (*(v11 + 8))(v14, v10);
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = a4;
  swift_beginAccess();

  v23 = *(a1 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(a1 + 24);
  *(a1 + 24) = 0x8000000000000000;
  sub_22736C398(v28, v22, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 24) = v29;
  return swift_endAccess();
}

uint64_t sub_2274E97E4()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v1;
  v3(v1, 0, 1);

  v5 = v0[1];

  return v5();
}

void sub_2274E9878(void (*a1)(void *, void, uint64_t))
{
  sub_226F6649C();
  v2 = swift_allocError();
  *v3 = 2;
  a1(v2, 0, 1);
}

unint64_t sub_2274E9930()
{
  result = qword_28139A430;
  if (!qword_28139A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A430);
  }

  return result;
}

uint64_t sub_2274E99DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, char *a7, char *a8)
{
  v155 = a7;
  v156 = a8;
  v147 = a6;
  v148 = a1;
  *(&v143 + 1) = a4;
  v144 = a5;
  v136 = a3;
  v145 = a2;
  v137 = sub_22766BA80();
  v135 = *(v137 - 8);
  v8 = *(v135 + 64);
  MEMORY[0x28223BE20](v137);
  v134 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B7F0();
  v139 = *(v10 - 8);
  v140 = v10;
  v11 = *(v139 + 64);
  MEMORY[0x28223BE20](v10);
  v138 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE120, &qword_227688C08);
  v142 = *(v13 - 8);
  *&v143 = v13;
  v14 = *(v142 + 64);
  MEMORY[0x28223BE20](v13);
  v141 = &v124 - v15;
  v153 = sub_227662940();
  v150 = *(v153 - 8);
  v16 = *(v150 + 64);
  MEMORY[0x28223BE20](v153);
  v154 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v133 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v149 = &v124 - v22;
  v23 = sub_227662750();
  v151 = *(v23 - 8);
  v152 = v23;
  v24 = *(v151 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v132 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v146 = &v124 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v124 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v124 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC0C8, &qword_22767C978);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34 - 8);
  v37 = &v124 - v36;
  v38 = sub_227662190();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v124 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v45 = &v124 - v44;
  sub_22766A360();
  v131 = v43;
  v155 = v31;
  v156 = v33;
  (*(v39 + 56))(v37, 0, 1, v38);
  (*(v39 + 32))(v45, v37, v38);
  v46 = v154;
  sub_227662920();
  v47 = v149;
  sub_2276628D0();
  v150 = *(v150 + 8);
  (v150)(v46, v153);
  v48 = v151;
  v49 = v152;
  v50 = v151 + 48;
  v51 = *(v151 + 48);
  if (v51(v47, 1, v152) == 1)
  {
    (*(v39 + 8))(v45, v38);
    return sub_226E97D1C(v47, &qword_27D7B9690, qword_227670B50);
  }

  v128 = v51;
  v129 = v50;
  v130 = v45;
  v126 = *(v48 + 32);
  v127 = v48 + 32;
  v126(v156, v47, v49);
  sub_227662920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
  v53 = sub_227662930();
  v149 = v38;
  v54 = v53;
  v55 = *(v53 - 8);
  v56 = *(v55 + 72);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_227670CD0;
  (*(v55 + 104))(v58 + v57, *MEMORY[0x277CC9988], v54);
  sub_226F4CE68(v58);
  swift_setDeallocating();
  v59 = v54;
  v60 = v149;
  (*(v55 + 8))(v58 + v57, v59);
  swift_deallocClassInstance();
  v61 = v155;
  sub_227662740();
  v62 = v131;
  v63 = v154;
  sub_2276628A0();

  v64 = *(v48 + 8);
  v155 = (v48 + 8);
  v64(v61, v49);
  (v150)(v63, v153);
  v65 = sub_227662140();
  LOBYTE(v63) = v66;
  v67 = (v39 + 8);
  v68 = *(v39 + 8);
  v68(v62, v60);
  if (v63)
  {
    v64(v156, v49);
    return (v68)(v130, v60);
  }

  v131 = v67;
  v69 = sub_22766BFD0();
  v70 = v141;
  sub_22766BC50();

  v71 = v143;
  sub_22766BC80();
  (*(v142 + 8))(v70, v71);
  v72 = v157;
  v124 = v65;
  v125 = v68;
  if (!v157)
  {
    v83 = 2592000.0;
    v73 = v147;
    v74 = v144;
    goto LABEL_20;
  }

  strcpy(v159, "identifiers");
  HIDWORD(v159[1]) = -352321536;
  sub_22766CDA0();
  v73 = v147;
  v74 = v144;
  if (!*(v72 + 16) || (v75 = sub_226E9BF6C(&v157), (v76 & 1) == 0))
  {

    sub_226E9B62C(&v157);
    v83 = 2592000.0;
    goto LABEL_20;
  }

  sub_226E97CC0(*(v72 + 56) + 32 * v75, &v160);
  sub_226E9B62C(&v157);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v77 = v159[0];
  v159[0] = v74;
  v159[1] = v73;

  sub_22766CDA0();
  if (!*(v77 + 16))
  {
    goto LABEL_18;
  }

  v78 = sub_226E9BF6C(&v157);
  if ((v79 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_226E97CC0(*(v77 + 56) + 32 * v78, &v160);
  sub_226E9B62C(&v157);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v83 = 2592000.0;
    goto LABEL_20;
  }

  v80 = v159[0];
  strcpy(v159, "updateInterval");
  HIBYTE(v159[1]) = -18;
  sub_22766CDA0();
  if (!*(v80 + 16) || (v81 = sub_226E9BF6C(&v157), (v82 & 1) == 0))
  {
LABEL_18:

    sub_226E9B62C(&v157);
    goto LABEL_19;
  }

  sub_226E97CC0(*(v80 + 56) + 32 * v81, &v160);
  sub_226E9B62C(&v157);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v83 = *v159;
LABEL_20:
  *&v157 = 0xD000000000000028;
  *(&v157 + 1) = 0x80000002276A2B00;
  MEMORY[0x22AA98450](v74, v73);
  v153 = *(&v157 + 1);
  v150 = v157;
  *&v157 = 0xD00000000000002BLL;
  *(&v157 + 1) = 0x80000002276A2B30;
  MEMORY[0x22AA98450](v74, v73);
  v84 = v157;
  v85 = [objc_opt_self() standardUserDefaults];
  v86 = v146;
  sub_227662740();
  v143 = v84;
  v87 = sub_22766BFD0();
  v154 = v85;
  v88 = [v85 valueForKey_];

  if (v88)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v160 = 0u;
    v161 = 0u;
  }

  v144 = v64;
  v157 = v160;
  v158 = v161;
  if (!*(&v161 + 1))
  {
    v89 = &unk_27D7BC990;
    v90 = &qword_227670A30;
    v91 = &v157;
LABEL_39:
    sub_226E97D1C(v91, v89, v90);
    goto LABEL_40;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  if (v159[0] == v148 && v159[1] == v145)
  {

    goto LABEL_30;
  }

  v92 = sub_22766D190();

  if ((v92 & 1) == 0)
  {
LABEL_40:
    v104 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2276707E0;
    *(inited + 32) = 0x707954746E657665;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = 0x706172676F6D6564;
    *(inited + 56) = 0xEB00000000636968;
    *(inited + 72) = v104;
    *(inited + 80) = 0x644972657375;
    v106 = v148;
    *(inited + 88) = 0xE600000000000000;
    *(inited + 96) = v106;
    *(inited + 104) = v145;
    *(inited + 120) = v104;
    *(inited + 128) = 0x65676E6152656761;
    v107 = MEMORY[0x277D83B88];
    v108 = v124;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v108;
    *(inited + 168) = v107;
    *(inited + 176) = 0x6D6954746E657665;
    *(inited + 184) = 0xE900000000000065;

    v109 = sub_227662620();
    *(inited + 216) = MEMORY[0x277D84D38];
    *(inited + 192) = v109;
    v151 = sub_227149264(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C80, &unk_227675CF0);
    v110 = *(sub_22766BC00() - 8);
    v111 = *(v110 + 72);
    v112 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = xmmword_22767B770;
    sub_22766BBE0();
    sub_22766BB70();
    sub_22766BB80();
    sub_22766BBD0();
    sub_22766BB90();
    sub_22766BBF0();
    sub_22766BBB0();
    sub_22766BBA0();
    sub_226F4CB48(v113);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v114 = v138;
    sub_22766B7C0();
    v115 = v134;
    sub_22766BA70();
    sub_22766B870();

    (*(v135 + 8))(v115, v137);
    v116 = v146;
    v117 = sub_2276626A0();
    v118 = sub_22766BFD0();

    v119 = v154;
    [v154 setValue:v117 forKey:v118];

    v120 = sub_22766BFD0();
    v121 = sub_22766BFD0();

    [v119 setValue:v120 forKey:v121];

    (*(v139 + 8))(v114, v140);
    v122 = v152;
    v123 = v144;
    v144(v116, v152);
    v123(v156, v122);
    return v125(v130, v149);
  }

LABEL_30:
  v93 = sub_22766BFD0();
  v94 = [v154 valueForKey_];

  if (v94)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v160 = 0u;
    v161 = 0u;
  }

  v96 = v132;
  v95 = v133;
  v97 = v152;
  v157 = v160;
  v158 = v161;
  if (!*(&v161 + 1))
  {
    sub_226E97D1C(&v157, &unk_27D7BC990, &qword_227670A30);
    (*(v151 + 56))(v95, 1, 1, v97);
    goto LABEL_38;
  }

  v98 = swift_dynamicCast();
  (*(v151 + 56))(v95, v98 ^ 1u, 1, v97);
  if (v128(v95, 1, v97) == 1)
  {
LABEL_38:
    v89 = &qword_27D7B9690;
    v90 = qword_227670B50;
    v91 = v95;
    goto LABEL_39;
  }

  v126(v96, v95, v97);
  sub_227662680();
  v100 = v99;
  v144(v96, v97);
  if (v100 >= v83)
  {
    goto LABEL_40;
  }

  v101 = v86;
  v102 = v152;
  v103 = v144;
  v144(v101, v152);
  v103(v156, v102);
  return v125(v130, v149);
}

uint64_t sub_2274EAB54()
{
  v1 = v0;
  v2 = *(v0 + 56);
  v3 = sub_2276693E0();
  v5 = v4;
  v6 = sub_2276693E0();
  v8 = v7;
  if (sub_2276693B0())
  {
    v9 = &unk_283A93BC0;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2276728D0;
  *(v10 + 32) = v3;
  *(v10 + 40) = v5;
  *(v10 + 48) = v6;
  *(v10 + 56) = v8;
  sub_22745F204(v9);
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v1[5]);
  v12 = sub_22766AC40();

  return v12 & 1;
}

uint64_t sub_2274EAC5C()
{
  v0 = sub_22766B3B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22766B3F0();
  v5 = *(v18 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v18);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22766B3C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226EA1CF4();
  (*(v10 + 104))(v13, *MEMORY[0x277D851D0], v9);
  v14 = sub_22766C980();
  (*(v10 + 8))(v13, v9);
  aBlock[4] = sub_2274EB390;
  aBlock[5] = v17[1];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);

  sub_22766B3D0();
  v19 = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v8, v4, v15);
  _Block_release(v15);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v18);
}

uint64_t sub_2274EAF88(uint64_t a1)
{
  v2 = sub_22766B3B0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B3F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2274EAB54();
  sub_226EA1CF4();
  v13 = sub_22766C950();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v12 & 1;
  aBlock[4] = sub_2274EB398;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226E9D72C;
  aBlock[3] = &block_descriptor_9_0;
  v15 = _Block_copy(aBlock);

  sub_22766B3D0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_226E9D3F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA240, &unk_227674420);
  sub_226E9D394();
  sub_22766CC80();
  MEMORY[0x22AA98C80](0, v11, v6, v15);
  _Block_release(v15);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void sub_2274EB224(void *a1, char a2)
{
  v4 = a1[8];
  v5 = sub_22766BFD0();
  v9 = v5;
  if (a2)
  {
    [v4 setBool:1 forKey:v5];
  }

  else
  {
    [v4 removeObjectForKey_];

    v6 = a1[9];
    if (v6)
    {
      v7 = a1[10];

      v6(v8);

      sub_226EA9E3C(v6);
    }
  }
}

uint64_t sub_2274EB324()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 80);
  sub_226EA9E3C(*(v0 + 72));

  return swift_deallocClassInstance();
}

void sub_2274EB3AC(void *a1)
{
  v2 = [a1 version];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    [a1 state];
    sub_22717ADEC();
    sub_227663AE0();
    sub_2274EB8DC();
    sub_227663AE0();
    sub_2276689B0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_2274EB9C8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

size_t static PersonalizationPrivacyPreference.representativeSamples()()
{
  v20 = sub_227668A00();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v20);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2274EB834();
  sub_22717ADEC();
  v4 = sub_227663B50();
  sub_2274EB888();
  sub_2274EB8DC();
  v26 = sub_227663B50();
  v27[0] = v4;
  v27[1] = v27;
  v27[2] = &v26;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE138, &qword_227688C48);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE140, &qword_227688C50);
  v22 = sub_226F5BF60(&qword_27D7BE148, &qword_27D7BE138, &qword_227688C48);
  v23 = sub_226F5BF60(&qword_27D7BE150, &qword_27D7BE140, &qword_227688C50);
  v5 = sub_2276638E0();

  v6 = *(v5 + 16);
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_226F20788(0, v6, 0);
    v8 = 0;
    v9 = v21;
    v17[1] = v0 + 32;
    v18 = v6;
    v10 = (v5 + 64);
    v19 = v5;
    while (v8 < *(v5 + 16))
    {
      v11 = v0;
      v12 = *(v10 - 4);
      v13 = *(v10 - 24);
      v14 = v3;
      sub_226EB396C(*(v10 - 2), *(v10 - 1), *v10);
      sub_2276689B0();
      v21 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_226F20788(v15 > 1, v16 + 1, 1);
        v9 = v21;
      }

      ++v8;
      *(v9 + 16) = v16 + 1;
      v0 = v11;
      result = (*(v11 + 32))(v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v16, v14, v20);
      v10 += 40;
      v3 = v14;
      v5 = v19;
      if (v18 == v8)
      {

        return v9;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2274EB834()
{
  result = qword_27D7BE128;
  if (!qword_27D7BE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE128);
  }

  return result;
}

unint64_t sub_2274EB888()
{
  result = qword_27D7BE130;
  if (!qword_27D7BE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE130);
  }

  return result;
}

unint64_t sub_2274EB8DC()
{
  result = qword_28139B458;
  if (!qword_28139B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B458);
  }

  return result;
}

uint64_t sub_2274EB970(uint64_t a1)
{
  result = sub_2274EB9C8(&qword_2813A5550, MEMORY[0x277D53708]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274EB9C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2274EBA10(void *a1)
{
  sub_2276689C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE158, &unk_227688CA0);
  sub_227663AD0();
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v8 <= 0x7FFFFFFF)
  {
    [a1 setState_];
    v2 = sub_2276689F0();
    v4 = v3;
    v6 = v5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
    sub_227663AD0();
    v7 = sub_22766BFD0();
    sub_226EB2DFC(v2, v4, v6);

    [a1 setVersion_];

    return;
  }

  __break(1u);
}

uint64_t sub_2274EBB60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE160, qword_227688CF8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = v8;
  v17 = v9;

  sub_22766A070();
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  swift_getKeyPath();
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v43[0] = a1;
  v43[1] = a2;
  sub_226F06498();

  v18 = sub_22766C820();
  sub_226ED25F8(v43, v41);
  v19 = v42;
  if (v42)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v21 = *(v19 - 8);
    v22 = *(v21 + 64);
    v23 = MEMORY[0x28223BE20](v20);
    v25 = v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v25, v23);
    v26 = sub_22766D170();
    (*(v21 + 8))(v25, v19);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE168 &qword_227688D40))];

  sub_226EBC888(v43);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v43, 0);
  swift_endAccess();

  v33 = MEMORY[0x22AA99A00]();
  sub_227544F0C(v15, a4);
  objc_autoreleasePoolPop(v33);
  swift_setDeallocating();

  v34 = *(v15 + 40);

  v35 = qword_2813B2078;
  v36 = sub_22766A100();
  (*(*(v36 - 8) + 8))(v15 + v35, v36);
  v37 = *(*v15 + 48);
  v38 = *(*v15 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2274EBF64@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE170, qword_227688D48);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  swift_getKeyPath();
  v13 = sub_227662390();
  v15 = v14;
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v40[0] = v13;
  v40[1] = v15;
  sub_226F06498();

  v16 = sub_22766C820();
  sub_226ED25F8(v40, v38);
  v17 = v39;
  if (v39)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v38, v39);
    v19 = *(v17 - 8);
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](v18);
    v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v25 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE178 &qword_227688D88))];

  sub_226EBC888(v40);
  swift_beginAccess();
  v26 = v25;
  v27 = sub_22766A080();
  v29 = v28;
  MEMORY[0x22AA985C0]();
  if (*((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v37 = *((*v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v27(v40, 0);
  swift_endAccess();

  v30 = MEMORY[0x22AA99A00]();
  sub_227544EA4(v10, v41);
  objc_autoreleasePoolPop(v30);
  swift_setDeallocating();

  v31 = *(v10 + 40);

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v10 + v32, v33);
  v34 = *(*v10 + 48);
  v35 = *(*v10 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_2274EC368()
{
  sub_2274EC5DC(v0, v11);
  v1 = v12;
  if (v14)
  {
    v7 = v13;
    sub_226E92AB8(v11, v8);
    sub_22766C100();
    v2 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v3 = *(v2 + 8);
    sub_22766BF60();
    sub_22766C100();
    MEMORY[0x22AA996B0](v1);
    sub_22766D3A0();

    sub_22766D3A0();
    sub_22766C100();
    MEMORY[0x22AA996B0](v7);
  }

  else
  {
    sub_226E92AB8(v11, v8);
    sub_22766C100();
    v4 = v10;
    __swift_project_boxed_opaque_existential_0(v8, v9);
    v5 = *(v4 + 8);
    sub_22766BF60();
    sub_22766C100();
    MEMORY[0x22AA996B0](v1);
  }

  sub_22766D3A0();

  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t sub_2274EC500()
{
  sub_22766D370();
  sub_2274EC368();
  return sub_22766D3F0();
}

uint64_t sub_2274EC544()
{
  sub_22766D370();
  sub_2274EC368();
  return sub_22766D3F0();
}

unint64_t sub_2274EC588()
{
  result = qword_27D7BE180;
  if (!qword_27D7BE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE180);
  }

  return result;
}

BOOL sub_2274EC614(uint64_t a1, uint64_t a2)
{
  sub_2274EC5DC(a2, v5);
  sub_22766D400();
  sub_2274EC368();
  sub_22766D400();
  sub_2274EC368();
  v2 = sub_22766D3E0();
  v3 = sub_22766D3E0();
  sub_2274EC6A0(v5);
  return v2 == v3;
}

__n128 __swift_memcpy114_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2274EC708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 114))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 113);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2274EC744(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 114) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 114) = 0;
    }

    if (a2)
    {
      *(result + 113) = -a2;
    }
  }

  return result;
}

uint64_t sub_2274EC79C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 113) = a2;
  return result;
}

uint64_t sub_2274EC7E0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1A0, &qword_227688F70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2274ED794();
  sub_22766D480();
  v24 = *v3;
  v21 = *v3;
  v20 = 0;
  sub_2274ED820(&v24, v19);
  sub_2273A486C();
  sub_22766D120();
  if (v2)
  {
    sub_226EDC420(v21, *(&v21 + 1));
  }

  else
  {
    sub_226EDC420(v21, *(&v21 + 1));
    v23 = v3[1];
    v21 = v3[1];
    v20 = 1;
    sub_2274ED820(&v23, v19);
    sub_22766D120();
    sub_226EDC420(v21, *(&v21 + 1));
    v21 = v3[2];
    v22 = v21;
    v20 = 2;
    sub_2274ED820(&v22, v19);
    sub_22766D120();
    sub_226EDC420(v21, *(&v21 + 1));
    v12 = *(v3 + 6);
    v13 = *(v3 + 7);
    LOBYTE(v21) = 3;
    sub_22766D0F0();
    v14 = *(v3 + 8);
    v15 = *(v3 + 9);
    LOBYTE(v21) = 4;
    sub_22766D0F0();
    v16 = *(v3 + 10);
    v17 = *(v3 + 11);
    LOBYTE(v21) = 5;
    sub_22766D0F0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2274ECA84()
{
  v1 = *v0;
  v2 = 0x666F6F7270;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0x6E4963696C627570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x5365746176697270;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2274ECB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2274ED05C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2274ECB80(uint64_t a1)
{
  v2 = sub_2274ED794();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2274ECBBC(uint64_t a1)
{
  v2 = sub_2274ED794();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2274ECBF8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2274ED270(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_2274ECC5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_22766D370();
  sub_2276625A0();
  sub_2276625A0();
  sub_2276625A0();
  sub_22766C100();
  sub_22766C100();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2274ECD30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_2276625A0();
  sub_2276625A0();
  sub_2276625A0();
  sub_22766C100();
  sub_22766C100();

  return sub_22766C100();
}

uint64_t sub_2274ECDF4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  v11 = v0[10];
  v12 = v0[11];
  sub_22766D370();
  sub_2276625A0();
  sub_2276625A0();
  sub_2276625A0();
  sub_22766C100();
  sub_22766C100();
  sub_22766C100();
  return sub_22766D3F0();
}

uint64_t sub_2274ECEC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_2274ECF78(v9, v10) & 1;
}

unint64_t sub_2274ECF24()
{
  result = qword_27D7BE188;
  if (!qword_27D7BE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE188);
  }

  return result;
}

uint64_t sub_2274ECF78(uint64_t *a1, uint64_t *a2)
{
  if ((sub_227130B5C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_227130B5C(a1[2], a1[3], a2[2], a2[3]) & 1) == 0 || (sub_227130B5C(a1[4], a1[5], a2[4], a2[5]) & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_22766D190() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  if (a1[10] == a2[10] && a1[11] == a2[11])
  {
    return 1;
  }

  return sub_22766D190();
}

uint64_t sub_2274ED05C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000022769B8F0 == a2 || (sub_22766D190() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666F6F7270 && a2 == 0xE500000000000000 || (sub_22766D190() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5365746176697270 && a2 == 0xEB00000000646565 || (sub_22766D190() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002276A2C10 == a2 || (sub_22766D190() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002276A2C30 == a2 || (sub_22766D190() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E4963696C627570 && a2 == 0xEA00000000006F66)
  {

    return 5;
  }

  else
  {
    v5 = sub_22766D190();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_2274ED270@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE190, &qword_227688F68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2274ED794();
  sub_22766D460();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = a2;
  LOBYTE(v36) = 0;
  sub_2273A4818();
  sub_22766D0B0();
  v11 = v42[0];
  LOBYTE(v36) = 1;
  sub_22766D0B0();
  v34 = *(&v11 + 1);
  v33 = v42[0];
  LOBYTE(v36) = 2;
  sub_22766D0B0();
  v32 = v42[0];
  LOBYTE(v42[0]) = 3;
  v12 = sub_22766D080();
  v31 = v13;
  LOBYTE(v42[0]) = 4;
  *&v30 = sub_22766D080();
  *(&v30 + 1) = v14;
  v50 = 5;
  v15 = sub_22766D080();
  v16 = *(v6 + 8);
  v17 = v15;
  v29 = v18;
  v16(v9, v5);
  *&v36 = v11;
  *(&v36 + 1) = v34;
  v19 = v33;
  v37 = v33;
  v20 = v32;
  v38 = v32;
  v21 = *(&v32 + 1);
  *&v39 = v12;
  *(&v39 + 1) = v31;
  v40 = v30;
  *&v41 = v17;
  v22 = v29;
  *(&v41 + 1) = v29;
  sub_2274ED7E8(&v36, v42);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v42[0] = v11;
  *(&v42[0] + 1) = v34;
  v42[1] = __PAIR128__(*(&v33 + 1), v19);
  v43 = v20;
  v44 = v21;
  v45 = v12;
  v46 = v31;
  v47 = v30;
  v48 = v17;
  v49 = v22;
  result = sub_227215CCC(v42);
  v24 = v39;
  v25 = v35;
  v35[2] = v38;
  v25[3] = v24;
  v26 = v41;
  v25[4] = v40;
  v25[5] = v26;
  v27 = v37;
  *v25 = v36;
  v25[1] = v27;
  return result;
}

unint64_t sub_2274ED794()
{
  result = qword_27D7BE198;
  if (!qword_27D7BE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE198);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EvaluatedElementContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EvaluatedElementContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2274ED9CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2274EDA14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2274EDA80()
{
  result = qword_27D7BE1A8;
  if (!qword_27D7BE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1A8);
  }

  return result;
}

unint64_t sub_2274EDAD8()
{
  result = qword_27D7BE1B0;
  if (!qword_27D7BE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1B0);
  }

  return result;
}

unint64_t sub_2274EDB30()
{
  result = qword_27D7BE1B8;
  if (!qword_27D7BE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1B8);
  }

  return result;
}

uint64_t sub_2274EDB84(uint64_t a1)
{
  v66 = sub_227662B60();
  v2 = *(v66 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v66);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227665440();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  v10 = *(*(v71 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v77 = &v60 - v13;
  v14 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v67 = v7 + 32;
  v68 = v7 + 16;
  v72 = v7;
  v76 = v7 + 8;
  v60 = v2 + 16;
  v61 = v2;
  v63 = (v2 + 8);

  v19 = 0;
  v20 = MEMORY[0x277D84F98];
  v79 = v5;
  v64 = a1 + 64;
  v65 = v6;
  v69 = v18;
  v62 = a1;
  if (v17)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v23 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v23 >= v18)
    {

      return v20;
    }

    v17 = *(v14 + 8 * v23);
    ++v19;
  }

  while (!v17);
  v75 = v20;
  while (1)
  {
    v24 = __clz(__rbit64(v17)) | (v23 << 6);
    v25 = v72;
    v26 = v77;
    (*(v72 + 16))(v77, *(a1 + 48) + *(v72 + 72) * v24, v6);
    v27 = *(*(a1 + 56) + 8 * v24);
    v28 = a1;
    v30 = v70;
    v29 = v71;
    *(v26 + *(v71 + 48)) = v27;
    sub_2274EE198(v26, v30);
    v31 = *(v30 + *(v29 + 48));

    (*(v25 + 32))(v78, v30, v6);
    sub_2274EE198(v26, v30);
    v32 = *(v30 + *(v29 + 48));
    v74 = *(v25 + 8);
    v74(v30, v6);
    sub_227665400();
    sub_227665410();
    sub_227665420();
    sub_227665430();
    v33 = v79;
    sub_227662B40();
    v34 = *(v32 + 16);
    if (v34)
    {
      v80 = MEMORY[0x277D84F90];
      sub_226F1F748(0, v34, 0);
      v35 = v80;
      v73 = v32;
      v36 = (v32 + 40);
      do
      {
        v37 = *(v36 - 1);
        v38 = *v36;
        v80 = v35;
        v40 = v35[2];
        v39 = v35[3];

        if (v40 >= v39 >> 1)
        {
          sub_226F1F748((v39 > 1), v40 + 1, 1);
          v35 = v80;
        }

        v35[2] = v40 + 1;
        v41 = &v35[2 * v40];
        v41[4] = v37;
        v41[5] = v38;
        v36 += 2;
        --v34;
      }

      while (v34);

      a1 = v62;
      v42 = v79;
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
      a1 = v28;
      v42 = v33;
    }

    v43 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v43;
    v45 = sub_226F3A7D0(v42);
    v47 = v43[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    v18 = v69;
    if (v49)
    {
      break;
    }

    v51 = v46;
    if (v43[3] >= v50)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v58 = v45;
        sub_226FF0A6C();
        v45 = v58;
        v42 = v79;
      }
    }

    else
    {
      sub_226FE2FFC(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_226F3A7D0(v42);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_32;
      }
    }

    v14 = v64;
    v17 &= v17 - 1;
    v20 = v80;
    if (v51)
    {
      v21 = v80[7];
      v22 = *(v21 + 8 * v45);
      *(v21 + 8 * v45) = v35;

      (*v63)(v42, v66);
      v6 = v65;
      v74(v78, v65);
      sub_2274EE208(v77);
      v19 = v23;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v80[(v45 >> 6) + 8] |= 1 << v45;
      v53 = v61;
      v54 = v45;
      v55 = v66;
      (*(v61 + 16))(v20[6] + *(v61 + 72) * v45, v79, v66);
      *(v20[7] + 8 * v54) = v35;
      (*(v53 + 8))(v79, v55);
      v6 = v65;
      v74(v78, v65);
      sub_2274EE208(v77);
      v56 = v20[2];
      v49 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v49)
      {
        goto LABEL_31;
      }

      v20[2] = v57;
      v19 = v23;
      if (!v17)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v75 = v20;
    v23 = v19;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_2274EE198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274EE208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9DE0, &qword_227676640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2274EE270(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1C0, &qword_227689240);
  if (swift_dynamicCast())
  {
    sub_226E92AB8(__src, &v42);
    __swift_project_boxed_opaque_existential_0(&v42, v43);
    sub_2276621A0();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_0(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2274F14A0(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22766CEC0();
  }

  sub_2274F0B5C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2274F1300(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_2274F0C24(sub_2274F1508);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_227662530();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2274F117C(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22766C160();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22766C190();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22766CEC0();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2274F117C(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22766C170();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_227662540();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_227662540();
    sub_226FB1424(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_226FB1424(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_226F5E0B4(*&__src[0], *(&__src[0] + 1));

  sub_226EDC420(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

void *sub_2274EE780(char a1)
{
  v2 = sub_22766B390();
  v56 = *(v2 - 8);
  v3 = *(v56 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v51 = &v50 - v10;
  v11 = sub_2276624A0();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22766BFD0();
  v16 = [objc_opt_self() bundleWithIdentifier_];

  if (v16)
  {
    v50 = v2;
    strcpy(v55, "CatalogModel ");
    HIWORD(v55[1]) = -4864;
    v17 = sub_2274E2FEC(a1);
    MEMORY[0x22AA98450](v17);

    v18 = v55[1];
    v19 = v55[0];
    v20 = sub_22766BFD0();
    v21 = v16;
    v22 = sub_22766BFD0();
    v23 = sub_22766BFD0();
    v52 = v21;
    v24 = [v21 URLForResource:v20 withExtension:v22 subdirectory:v23];

    if (v24)
    {
      sub_227662430();

      v25 = objc_allocWithZone(MEMORY[0x277CBE450]);
      v26 = sub_2276623E0();
      v27 = [v25 initWithContentsOfURL_];

      if (v27)
      {
        v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v29 = sub_22766BFD0();

        v30 = [v28 initWithName:v29 managedObjectModel:v27];

        (*(v53 + 8))(v14, v54);
      }

      else
      {

        v42 = v51;
        sub_22766A770();
        v43 = sub_22766B380();
        v44 = sub_22766C890();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          _os_log_impl(&dword_226E8E000, v43, v44, "Failed to load managed object model", v45, 2u);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        (*(v56 + 8))(v42, v50);
        v30 = sub_227664DD0();
        sub_2274F1590(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v30 - 1) + 104))(v46, *MEMORY[0x277D51020], v30);
        swift_willThrow();

        (*(v53 + 8))(v14, v54);
      }
    }

    else
    {
      sub_22766A770();

      v36 = sub_22766B380();
      v37 = sub_22766C890();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v55[0] = v39;
        *v38 = 136446210;
        v40 = sub_226E97AE8(v19, v18, v55);

        *(v38 + 4) = v40;
        _os_log_impl(&dword_226E8E000, v36, v37, "Error loading model with filename: '%{public}s'", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x22AA9A450](v39, -1, -1);
        MEMORY[0x22AA9A450](v38, -1, -1);
      }

      else
      {
      }

      (*(v56 + 8))(v9, v50);
      v47 = v52;
      v30 = sub_227664DD0();
      sub_2274F1590(&qword_28139B8D0, MEMORY[0x277D51040]);
      swift_allocError();
      (*(*(v30 - 1) + 104))(v48, *MEMORY[0x277D51020], v30);
      swift_willThrow();
    }
  }

  else
  {
    sub_22766A770();
    v31 = sub_22766B380();
    v32 = sub_22766C890();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v2;
      v35 = swift_slowAlloc();
      v55[0] = v35;
      *v33 = 136446210;
      *(v33 + 4) = sub_226E97AE8(0xD000000000000019, 0x800000022769A030, v55);
      _os_log_impl(&dword_226E8E000, v31, v32, "Error loading bundle with name: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AA9A450](v35, -1, -1);
      MEMORY[0x22AA9A450](v33, -1, -1);

      (*(v56 + 8))(v6, v34);
    }

    else
    {

      (*(v56 + 8))(v6, v2);
    }

    v30 = sub_227664DD0();
    sub_2274F1590(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v30 - 1) + 104))(v41, *MEMORY[0x277D51020], v30);
    swift_willThrow();
  }

  return v30;
}

uint64_t sub_2274EEF88(uint64_t a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = [v1 persistentStoreCoordinator];
  v12 = [v11 metadataForPersistentStore_];

  v13 = sub_22766BEB0();
  sub_22766A770();

  v14 = sub_22766B380();
  v15 = sub_22766C880();

  v16 = os_log_type_enabled(v14, v15);
  v49 = v3;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v50 = v18;
    *v17 = 136315138;
    if (*(v13 + 16) && (v19 = sub_226E92000(0xD000000000000013, 0x80000002276A1760), (v20 & 1) != 0))
    {
      sub_226E97CC0(*(v13 + 56) + 32 * v19, v52);
      if (swift_dynamicCast())
      {
        v21 = v51;
      }

      else
      {
        v21 = 0uLL;
        v51 = 0u;
      }

      v23 = v4;
    }

    else
    {
      v23 = v4;
      v21 = 0uLL;
      v51 = 0u;
    }

    v52[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    v24 = sub_22766CB80();
    v26 = v25;

    v27 = sub_226E97AE8(v24, v26, &v50);

    *(v17 + 4) = v27;
    _os_log_impl(&dword_226E8E000, v14, v15, "Data Version: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AA9A450](v18, -1, -1);
    MEMORY[0x22AA9A450](v17, -1, -1);

    v22 = *(v23 + 8);
    v3 = v49;
    v22(v10, v49);
  }

  else
  {

    v22 = *(v4 + 8);
    v22(v10, v3);
  }

  sub_22766A770();

  v28 = sub_22766B380();
  v29 = sub_22766C880();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v50 = v31;
    *v30 = 136315138;
    if (*(v13 + 16) && (v32 = sub_226E92000(0xD000000000000012, 0x80000002276A2C50), (v33 & 1) != 0))
    {
      sub_226E97CC0(*(v13 + 56) + 32 * v32, v52);
      v34 = swift_dynamicCast();
      if (v34)
      {
        v35 = v51;
      }

      else
      {
        v35 = 0;
        *&v51 = 0;
      }

      v38 = v34 ^ 1;
    }

    else
    {
      v35 = 0;
      *&v51 = 0;
      v38 = 1;
    }

    BYTE8(v51) = v38;
    *&v52[0] = v35;
    BYTE8(v52[0]) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8C38, &unk_227682250);
    v39 = sub_22766CB80();
    v41 = sub_226E97AE8(v39, v40, &v50);

    *(v30 + 4) = v41;
    _os_log_impl(&dword_226E8E000, v28, v29, "Old Data Version: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v30, -1, -1);

    v36 = v8;
    v37 = v49;
  }

  else
  {

    v36 = v8;
    v37 = v3;
  }

  v22(v36, v37);
  if (*(v13 + 16) && (v42 = sub_226E92000(0xD000000000000013, 0x80000002276A1760), (v43 & 1) != 0) && (sub_226E97CC0(*(v13 + 56) + 32 * v42, v52), (swift_dynamicCast() & 1) != 0) && (v44 = sub_2275E0994(), v44 != 56))
  {
    v48 = v44;

    return v48;
  }

  else
  {
    if (*(v13 + 16) && (v45 = sub_226E92000(0xD000000000000012, 0x80000002276A2C50), (v46 & 1) != 0))
    {
      sub_226E97CC0(*(v13 + 56) + 32 * v45, v52);

      if (swift_dynamicCast())
      {
        return sub_2275E09E8(v51);
      }
    }

    else
    {
    }

    return 56;
  }
}

void sub_2274EF574(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_2274EF600()
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = sub_22766B460();
  v40 = *(v1 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B5A0();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766B590();
  v8 = [v0 entityVersionHashesByName];
  v9 = sub_22766BEB0();

  v10 = *(v9 + 16);
  v42 = v7;
  if (v10)
  {
    v11 = sub_2274CDBA4(v10, 0);
    v45 = sub_2274CF2F4(v47, (v11 + 4), v10, v9);

    sub_226EBB21C();
    if (v45 != v10)
    {
      goto LABEL_46;
    }

    v7 = v42;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v37 = v1;
  v47[0] = v11;
  sub_2274F0114(v47);
  v36 = 0;

  v45 = v47[0];
  v44 = v47[0][2];
  if (v44)
  {
    v12 = 0;
    v13 = v45 + 7;
    v41 = v4;
    do
    {
      if (v12 >= v45[2])
      {
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
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
      }

      v15 = *(v13 - 1);
      v14 = *v13;
      v16 = *(v13 - 3);
      v17 = *(v13 - 2);
      swift_bridgeObjectRetain_n();
      sub_226F5E0B4(v15, v14);
      v18 = sub_2274EE270(v16, v17);
      v20 = v18;
      v21 = v19;
      v22 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v22 == 2)
        {
          v43 = v17;
          v24 = *(v18 + 16);
          v23 = *(v18 + 24);
          if (sub_227662060() && __OFSUB__(v24, sub_227662090()))
          {
            goto LABEL_42;
          }

          if (__OFSUB__(v23, v24))
          {
            goto LABEL_39;
          }

LABEL_21:
          sub_227662080();
          sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
          v4 = v41;
          v7 = v42;
          sub_22766B450();
          sub_226EDC420(v20, v21);
          goto LABEL_24;
        }

        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
        memset(v47, 0, 14);
      }

      else
      {
        if (v22)
        {
          if (v18 >> 32 < v18)
          {
            goto LABEL_38;
          }

          v43 = v17;
          if (sub_227662060() && __OFSUB__(v20, sub_227662090()))
          {
            goto LABEL_44;
          }

          goto LABEL_21;
        }

        v47[0] = v18;
        LOWORD(v47[1]) = v19;
        BYTE2(v47[1]) = BYTE2(v19);
        BYTE3(v47[1]) = BYTE3(v19);
        BYTE4(v47[1]) = BYTE4(v19);
        BYTE5(v47[1]) = BYTE5(v19);
        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
      }

      sub_22766B450();
      sub_226EDC420(v20, v21);
LABEL_24:
      v25 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v25 == 2)
        {
          v26 = *(v15 + 16);
          v27 = *(v15 + 24);

          if (sub_227662060() && __OFSUB__(v26, sub_227662090()))
          {
            goto LABEL_43;
          }

          if (__OFSUB__(v27, v26))
          {
            goto LABEL_41;
          }

          sub_227662080();
          sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
          v4 = v41;
        }

        else
        {
          sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
          memset(v47, 0, 14);
        }
      }

      else if (v25)
      {
        if (v15 >> 32 < v15)
        {
          goto LABEL_40;
        }

        if (sub_227662060() && __OFSUB__(v15, sub_227662090()))
        {
          goto LABEL_45;
        }

        sub_227662080();
        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
        v7 = v42;
      }

      else
      {
        v47[0] = v15;
        LOWORD(v47[1]) = v14;
        BYTE2(v47[1]) = BYTE2(v14);
        BYTE3(v47[1]) = BYTE3(v14);
        BYTE4(v47[1]) = BYTE4(v14);
        BYTE5(v47[1]) = BYTE5(v14);
        sub_2274F1590(&qword_2813991E0, MEMORY[0x277CC5540]);
      }

      sub_22766B450();
      sub_226EDC420(v15, v14);

      sub_226EDC420(v15, v14);
      ++v12;
      v13 += 4;
    }

    while (v44 != v12);
  }

  v28 = v38;
  sub_22766B580();
  v29 = v37;
  v48 = v37;
  v49 = sub_2274F1590(&qword_2813991E8, MEMORY[0x277CC5290]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
  v31 = v7;
  v32 = v40;
  (*(v40 + 16))(boxed_opaque_existential_0, v28, v29);
  __swift_project_boxed_opaque_existential_0(v47, v48);
  sub_2276621A0();
  (*(v32 + 8))(v28, v29);
  v33 = v46;
  __swift_destroy_boxed_opaque_existential_0(v47);
  (*(v39 + 8))(v31, v4);
  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

uint64_t sub_2274EFEFC(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_227670B30;
  *(v5 + 32) = a1;
  sub_227431D60();
  v6 = a1;
  v7 = sub_22766C2B0();

  [v2 setPersistentStoreDescriptions_];

  v12[4] = sub_2274F15D8;
  v12[5] = v4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2274EF574;
  v12[3] = &block_descriptor_37;
  v8 = _Block_copy(v12);

  [v2 loadPersistentStoresWithCompletionHandler_];
  _Block_release(v8);
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (v9)
  {
    swift_willThrow();
    v10 = v9;
  }
}

void sub_2274F00B4(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;
}

uint64_t sub_2274F0114(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_227117AC8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2274F0180(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2274F0180(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB8, &qword_2276795B0);
        v5 = sub_22766C380();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2274F0358(v7, v8, a1, v4);
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
    return sub_2274F0288(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2274F0288(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 32 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *v12 && v10 == *(v12 + 8);
      if (v13 || (result = sub_22766D190(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v14 = *(v12 + 48);
      v15 = *(v12 + 16);
      *(v12 + 32) = *v12;
      *(v12 + 48) = v15;
      *v12 = result;
      *(v12 + 8) = v10;
      *(v12 + 16) = v14;
      v12 -= 32;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2274F0358(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v98 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_105:
    v8 = *v98;
    if (!*v98)
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_137:
      result = sub_2271171D0(v7);
      v7 = result;
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_2274F0934((*a3 + 32 * *v91), (*a3 + 32 * *v93), (*a3 + 32 * v94), v8);
        if (v4)
        {
        }

        if (v94 < v92)
        {
          goto LABEL_129;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_130;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_131;
        }

        v90 = *v89 - 1;
        result = memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
        }
      }

      goto LABEL_141;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = (*a3 + 32 * v6);
      result = *v9;
      v10 = (*a3 + 32 * v8);
      if (*v9 == *v10 && v9[1] == v10[1])
      {
        v12 = 0;
      }

      else
      {
        result = sub_22766D190();
        v12 = result;
      }

      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v13 = v10 + 5;
        v14 = v10 + 5;
        do
        {
          result = v13[3];
          v16 = v14[4];
          v14 += 4;
          v15 = v16;
          if (result == *(v13 - 1) && v15 == *v13)
          {
            if (v12)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22766D190();
            if ((v12 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v6;
          v13 = v14;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_23:
      if (v12)
      {
LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_134;
        }

        if (v8 < v6)
        {
          v18 = 32 * v6 - 16;
          v19 = 32 * v8;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_140;
              }

              v22 = (v28 + v19);
              v23 = (v28 + v18);
              v24 = *v22;
              v25 = v22[1];
              v26 = *(v22 + 1);
              v27 = *v23;
              *v22 = *(v23 - 1);
              *(v22 + 1) = v27;
              *(v23 - 2) = v24;
              *(v23 - 1) = v25;
              *v23 = v26;
            }

            ++v21;
            v18 -= 32;
            v19 += 32;
          }

          while (v21 < v20);
        }
      }
    }

    v29 = a3[1];
    if (v6 < v29)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_133;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_135;
        }

        if (v8 + a4 >= v29)
        {
          v30 = a3[1];
        }

        else
        {
          v30 = (v8 + a4);
        }

        if (v30 < v8)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v6 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v6 < v8)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v44 = *(v7 + 2);
    v43 = *(v7 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_2273A4F9C((v43 > 1), v44 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v45;
    v46 = &v7[16 * v44];
    *(v46 + 4) = v8;
    *(v46 + 5) = v6;
    v47 = *v98;
    if (!*v98)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v7 + 4);
          v50 = *(v7 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v7[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v7[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v7[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v7[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v8 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (!*a3)
        {
          goto LABEL_139;
        }

        v86 = *&v7[16 * v8 + 32];
        v87 = *&v7[16 * v48 + 40];
        sub_2274F0934((*a3 + 32 * v86), (*a3 + 32 * *&v7[16 * v48 + 32]), (*a3 + 32 * v87), v47);
        if (v4)
        {
        }

        if (v87 < v86)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2271171D0(v7);
        }

        if (v8 >= *(v7 + 2))
        {
          goto LABEL_117;
        }

        v88 = &v7[16 * v8];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        result = sub_227117144(v48);
        v45 = *(v7 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v7[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v7[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v7[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_105;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v6 - 32;
  v96 = v8;
  v33 = (v8 - v6);
LABEL_43:
  v34 = (v31 + 32 * v6);
  v35 = *v34;
  v36 = v34[1];
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *v38 && v36 == *(v38 + 8);
    if (v39 || (result = sub_22766D190(), (result & 1) == 0))
    {
LABEL_42:
      ++v6;
      v32 += 32;
      --v33;
      if (v6 != v30)
      {
        goto LABEL_43;
      }

      v6 = v30;
      v8 = v96;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v40 = *(v38 + 48);
    v41 = *(v38 + 16);
    *(v38 + 32) = *v38;
    *(v38 + 48) = v41;
    *v38 = v35;
    *(v38 + 8) = v36;
    *(v38 + 16) = v40;
    v38 -= 32;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
  return result;
}

uint64_t sub_2274F0934(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v17 && (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v17 = v7 == v4;
      v4 += 32;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v17 = v7 == v6;
    v6 += 32;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_28:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = *(v19 - 4);
      v21 = *(v19 - 3);
      v19 -= 32;
      v22 = v20 == *(v6 - 4) && v21 == *(v6 - 3);
      if (!v22 && (sub_22766D190() & 1) != 0)
      {
        if (v5 + 32 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v24;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 32 != v14)
      {
        v23 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v23;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

uint64_t sub_2274F0B5C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_2274F1248(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_2276620A0();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_227662050();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_227662520();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_2274F0C24(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_226EDC420(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_226EDC420(v6, v5);
    *v3 = xmmword_227689230;
    sub_226EDC420(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_227662060() && __OFSUB__(v6, sub_227662090()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_2276620A0();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_227662040();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_2274F10C8(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_226EDC420(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_227689230;
    sub_226EDC420(0, 0xC000000000000000);
    sub_2276624B0();
    result = sub_2274F10C8(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2274F0FC8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2274F1248(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2274F13A0(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2274F141C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2274F105C(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_2274F10C8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_227662060();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_227662090();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_227662080();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_2274F117C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22766C1A0();
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
    v5 = MEMORY[0x22AA984A0](15, a1 >> 16);
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

uint64_t sub_2274F11F8@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_22766CE30();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2274F1248(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2274F1300(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2276620A0();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_227662070();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_227662520();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2274F13A0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2276620A0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_227662050();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_227662520();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2274F141C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2276620A0();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_227662050();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2274F14A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1C8, &qword_227689248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_2274F1508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2274F105C(sub_2274F1570, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2274F1590(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2274F15E0(uint64_t a1)
{
  result = sub_2274F1608();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274F1608()
{
  result = qword_27D7BE1D0;
  if (!qword_27D7BE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1D0);
  }

  return result;
}

uint64_t sub_2274F165C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A600();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v13 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v56 = v12;
  v14 = *MEMORY[0x277D4E320];
  v48 = v3[13];
  v48(v6, v14, v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v54 = v13;
  sub_227669E80();

  v15 = v3[1];
  v50 = v3 + 1;
  v51 = v15;
  v55 = v2;
  v15(v6, v2);
  swift_unknownObjectRelease();
  v56 = v12;
  v16 = v48;
  v48(v6, *MEMORY[0x277D4EAF8], v2);
  swift_allocObject();
  v53 = v1;
  swift_weakInit();
  sub_227667D20();
  swift_unknownObjectRetain();
  sub_227669E90();

  v17 = v55;
  v51(v6, v55);
  swift_unknownObjectRelease();
  v56 = v12;
  v16(v6, *MEMORY[0x277D4E828], v17);
  v49 = v3 + 13;
  swift_allocObject();
  swift_weakInit();
  sub_2276624A0();
  swift_unknownObjectRetain();
  sub_227669E80();

  v18 = v55;
  v19 = v51;
  v51(v6, v55);
  swift_unknownObjectRelease();
  v56 = v12;
  v20 = v48;
  v48(v6, *MEMORY[0x277D4E600], v18);
  swift_allocObject();
  swift_weakInit();
  v47 = sub_2276646D0();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v19(v6, v18);
  swift_unknownObjectRelease();
  v56 = v12;
  v20(v6, *MEMORY[0x277D4E5E0], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v19(v6, v18);
  swift_unknownObjectRelease();
  v56 = v12;
  v21 = v12;
  v22 = v48;
  v48(v6, *MEMORY[0x277D4E768], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EB0();

  v23 = v55;
  v19(v6, v55);

  swift_unknownObjectRelease();
  v56 = v12;
  v22(v6, *MEMORY[0x277D4EDD8], v23);
  swift_allocObject();
  swift_weakInit();
  v47 = sub_227669040();
  swift_unknownObjectRetain();
  sub_227669E90();

  v24 = v55;
  v51(v6, v55);
  swift_unknownObjectRelease();
  v56 = v12;
  v25 = v6;
  v22(v6, *MEMORY[0x277D4E628], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1D8, &qword_2276893A8);
  sub_2274F3EE4();
  sub_2274F3FE0(&qword_281398E08, &qword_27D7BE1D8, &qword_2276893A8, sub_2274F3F68);
  sub_227669E90();

  v26 = v24;
  v27 = v24;
  v28 = v51;
  v51(v6, v27);
  swift_unknownObjectRelease();
  v56 = v21;
  v29 = v48;
  v48(v6, *MEMORY[0x277D4E968], v26);
  swift_allocObject();
  swift_weakInit();
  sub_227667000();
  swift_unknownObjectRetain();
  sub_227669E90();

  v30 = v55;
  v28(v6, v55);
  swift_unknownObjectRelease();
  v56 = v21;
  v29(v6, *MEMORY[0x277D4E438], v30);
  swift_allocObject();
  swift_weakInit();
  sub_2276631A0();
  swift_unknownObjectRetain();
  sub_227669E90();

  v31 = v55;
  v32 = v51;
  v51(v6, v55);
  swift_unknownObjectRelease();
  v56 = v21;
  v29(v6, *MEMORY[0x277D4E518], v31);
  swift_allocObject();
  swift_weakInit();
  sub_227664170();
  swift_unknownObjectRetain();
  sub_227669E90();

  v33 = v55;
  v32(v6, v55);
  swift_unknownObjectRelease();
  v56 = v21;
  v29(v6, *MEMORY[0x277D4ED68], v33);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_2274F3FE0(&qword_281398BC0, &qword_27D7B94F0, &unk_227670BA0, sub_226F62704);
  sub_227669E90();

  v34 = v51;
  v51(v25, v55);
  swift_unknownObjectRelease();
  v56 = v21;
  v45 = *MEMORY[0x277D4E948];
  v35 = v48;
  (v48)(v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EA0();

  v34(v25, v55);
  swift_unknownObjectRelease();
  v56 = v21;
  v46 = *MEMORY[0x277D4EDE8];
  v35(v25);
  swift_allocObject();
  v36 = v53;
  swift_weakInit();
  sub_227669EA0();

  v37 = v55;
  v34(v25, v55);
  swift_unknownObjectRelease();
  v38 = *(v36 + 80);
  v44[2] = *(v36 + 96);
  v44[1] = swift_getObjectType();
  v56 = v38;
  (v35)(v25, v45, v37);
  v39 = v35;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EA0();

  v40 = v55;
  v41 = v51;
  v51(v25, v55);
  swift_unknownObjectRelease();
  v56 = v21;
  (v39)(v25, *MEMORY[0x277D4EAE8], v40);
  swift_allocObject();
  swift_weakInit();

  sub_227669EB0();

  v42 = v55;
  v41(v25, v55);

  swift_unknownObjectRelease();
  v56 = v38;
  (v39)(v25, v46, v42);
  swift_allocObject();
  swift_weakInit();
  sub_227669EA0();

  v41(v25, v42);
  return swift_unknownObjectRelease();
}

uint64_t sub_2274F2610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v10);

    v6 = *__swift_project_boxed_opaque_existential_0(v10, v10[3]);
    sub_226F576C0(v4, v3, a2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    return __swift_destroy_boxed_opaque_existential_0(v10);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9500, &unk_227671CA0);
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }
}

uint64_t sub_2274F274C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  sub_226E91B50(Strong + 40, v25);

  v15 = __swift_project_boxed_opaque_existential_0(v25, v25[3]);
  v24 = a1;
  v16 = *v15;
  sub_22766A600();
  sub_22766B370();
  (*(v10 + 8))(v13, v9);
  v17 = *(v16 + 320);
  sub_2274E27F0(v8);
  (*(v3 + 16))(v6, v8, v2);
  v18 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v19 = swift_allocObject();
  (*(v3 + 32))(v19 + v18, v6, v2);
  v20 = (v19 + ((v4 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = sub_226F57DF8;
  v20[1] = 0;
  sub_227667D20();
  v21 = v24;
  sub_227669270();
  (*(v3 + 8))(v8, v2);
  (*(v3 + 56))(v21, 0, 1, v2);
  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t sub_2274F2A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    v5 = off_283A97B40;
    type metadata accessor for EngagementSystem();
    v5(a1);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_2274F2BEC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[37];
    v10 = v8[38];
    __swift_project_boxed_opaque_existential_0(v8 + 34, v9);
    v11 = sub_227669040();

    sub_226ECF5D8(sub_2274F4110, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC658, &qword_22767E3A8);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_2274F2E44@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[37];
    v10 = v8[38];
    __swift_project_boxed_opaque_existential_0(v8 + 34, v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1D8, &qword_2276893A8);
    sub_226ECF5D8(sub_2274F40F4, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1E0, &unk_2276893B0);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE1E0, &unk_2276893B0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_2274F30A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 320);
    sub_226E93C5C(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C0, &unk_22767E4C0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_2274F32A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 320);
    sub_2274E29D0(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B8, &qword_227684DB0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_2274F34AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v13);

    v8 = *__swift_project_boxed_opaque_existential_0(v13, v13[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = *(v8 + 320);
    sub_2274E2BB0(a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6B0, &unk_22767E4B0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }
}

uint64_t sub_2274F36B0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v15);

    v8 = *__swift_project_boxed_opaque_existential_0(v15, v15[3]);
    sub_22766A600();
    sub_22766B370();
    (*(v3 + 8))(v6, v2);
    v9 = v8[37];
    v10 = v8[38];
    __swift_project_boxed_opaque_existential_0(v8 + 34, v9);

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    sub_226ECF5D8(sub_2274F40D8, v8, v9, v11, v10, a1);

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB1C8, &qword_227679D20);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

uint64_t sub_2274F3910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_227666170();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v19);

    v14 = __swift_project_boxed_opaque_existential_0(v19, v19[3]);

    sub_227662740();
    sub_227666140();
    v15 = *v14;
    sub_226F59E38(v10, a2);
    (*(v7 + 8))(v10, v6);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
    return __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
  }
}

uint64_t sub_2274F3B50@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v9);

    v5 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    a1();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
  }
}

uint64_t sub_2274F3C80@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 40, v11);

    v7 = *__swift_project_boxed_opaque_existential_0(v11, v11[3]);
    a2(a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    (*(*(v8 - 8) + 56))(a3, 0, 1, v8);
    return __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
    return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
  }
}

uint64_t sub_2274F3DC0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 5);
  v2 = v0[10];
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_2274F3EE4()
{
  result = qword_281398E10;
  if (!qword_281398E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE1D8, &qword_2276893A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E10);
  }

  return result;
}

unint64_t sub_2274F3F68()
{
  result = qword_28139B960;
  if (!qword_28139B960)
  {
    sub_2276646D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B960);
  }

  return result;
}

uint64_t sub_2274F3FE0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2274F412C(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC6C8, &unk_227684DC0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_2272B2484(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_2274F4204()
{
  result = qword_27D7BE1E8;
  if (!qword_27D7BE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1E8);
  }

  return result;
}

uint64_t sub_2274F4258()
{
  sub_2274F43E0(v0, &v5);
  if (v13)
  {
    v3[4] = v9;
    v3[5] = v10;
    v3[6] = v11;
    v3[0] = v5;
    v3[1] = v6;
    v4 = v12;
    v3[2] = v7;
    v3[3] = v8;
    sub_22766C100();
    sub_2274EC368();
    return sub_2274EC6A0(v3);
  }

  else
  {
    v2 = v6;
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v2);
    sub_22766D3A0();
  }
}

uint64_t sub_2274F4358()
{
  sub_22766D370();
  sub_2274F4258();
  return sub_22766D3F0();
}

uint64_t sub_2274F439C()
{
  sub_22766D370();
  sub_2274F4258();
  return sub_22766D3F0();
}

BOOL sub_2274F4418(uint64_t a1, uint64_t a2)
{
  sub_2274F43E0(a2, v5);
  sub_22766D400();
  sub_2274F4258();
  sub_22766D400();
  sub_2274F4258();
  v2 = sub_22766D3E0();
  v3 = sub_22766D3E0();
  sub_2274F44A4(v5);
  return v2 == v3;
}

__n128 __swift_memcpy115_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 111) = *(a2 + 111);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2274F450C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 115))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 114);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2274F4548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 111) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 115) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 115) = 0;
    }

    if (a2)
    {
      *(result + 114) = -a2;
    }
  }

  return result;
}

uint64_t sub_2274F45A0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    v2 = a2 - 2;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 114) = a2;
  return result;
}

unint64_t sub_2274F45F8()
{
  result = qword_27D7BE1F0;
  if (!qword_27D7BE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1F0);
  }

  return result;
}

unint64_t sub_2274F464C(uint64_t a1)
{
  result = sub_2274F4674();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2274F4674()
{
  result = qword_27D7BE1F8;
  if (!qword_27D7BE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE1F8);
  }

  return result;
}

uint64_t sub_2274F46C8()
{
  v0 = sub_22766C090();
  v1 = *(v0 + 16);
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_226F1EE10(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v10 + 16);
      v7 = *(v10 + 24);

      if (v6 >= v7 >> 1)
      {
        sub_226F1EE10((v7 > 1), v6 + 1, 1);
      }

      *(v10 + 16) = v6 + 1;
      v8 = v10 + 16 * v6;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v2;
}

uint64_t sub_2274F47D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_22766C7B0();
  if (!v26)
  {
    return sub_22766C370();
  }

  v48 = v26;
  v52 = sub_22766CF70();
  v39 = sub_22766CF80();
  sub_22766CF20();
  result = sub_22766C760();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_22766C7D0();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_22766CF60();
      result = sub_22766C7C0();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2274F4BF0(int a1, void *a2, char *a3, char *a4)
{
  v57 = a1;
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v55 = v7;
  v56 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *(a3 - 1);
  v11 = *(v59 + 64);
  MEMORY[0x28223BE20](v12);
  v65 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22766B390();
  v15 = *(v14 - 8);
  v60 = v14;
  v61 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v62 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a2;
  v18 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *v18;
  v20 = v18[1];
  v22 = v18[3];
  v23 = *(v18 + 16);
  v64 = a4;
  v66 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = *(AssociatedConformanceWitness + 24);
  v26 = *(AssociatedConformanceWitness + 32);
  sub_226FC5B44(AssociatedTypeWitness, v21, v20, v23, v22);
  v27 = v67;
  v28 = sub_226FDD228(0x64);

  if (!v27)
  {
    v68 = v28;
    MEMORY[0x28223BE20](result);
    v30 = v66;
    v31 = v64;
    *(&v54 - 4) = v66;
    *(&v54 - 3) = v31;
    *(&v54 - 16) = v57 & 1;
    v32 = v58;
    *(&v54 - 1) = v58;
    v33 = sub_22766C730();
    v34 = sub_227664140();
    WitnessTable = swift_getWitnessTable();
    v37 = sub_2274F47D0(sub_2274F6DDC, (&v54 - 6), v33, v34, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v36);

    v38 = v62;
    sub_22766A6B0();
    v39 = v59;
    (*(v59 + 16))(v65, v32, v30);
    swift_bridgeObjectRetain_n();
    v40 = sub_22766B380();
    v41 = sub_22766C870();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      LODWORD(v58) = v41;
      v43 = v42;
      v44 = swift_slowAlloc();
      v68 = v44;
      *v43 = 136446466;
      v45 = v54;
      v67 = 0;
      v46 = v66;
      sub_2274F5148();
      (*(v39 + 8))(v65, v46);
      sub_2274F6FC4();
      v47 = v55;
      v48 = sub_22766D140();
      v50 = v49;
      (*(v56 + 8))(v45, v47);
      v51 = sub_226E97AE8(v48, v50, &v68);

      *(v43 + 4) = v51;
      *(v43 + 12) = 2050;
      v52 = *(v37 + 16);

      *(v43 + 14) = v52;

      _os_log_impl(&dword_226E8E000, v40, v58, "Bootstrapping %{public}s with %{public}ld operations inserting.", v43, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v43, -1, -1);
    }

    else
    {

      (*(v39 + 8))(v65, v66);
    }

    (*(v61 + 8))(v38, v60);
    v53 = __swift_project_boxed_opaque_existential_0(v63, v63[3]);
    sub_227554D6C(v37, v53[1], *(v53 + 16), v53[3]);
  }

  return result;
}

uint64_t sub_2274F5148()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2274F51E4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_2274F5208, 0, 0);
}

uint64_t sub_2274F5208()
{
  v1 = v0[9];
  (*(v0[8] + 24))(v0[7]);
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v2);
  v4 = *(v3 + 32);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_2274F534C;

  return v8(v2, v3);
}

uint64_t sub_2274F534C(char a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_2274F544C, 0, 0);
}

uint64_t sub_2274F544C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 88);
  sub_2274F6EC0();
  v4 = sub_227669C10();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 8);

  return v5((v4 & 1) == 0);
}

uint64_t sub_2274F54D0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v138 = a3;
  v147 = a2;
  v9 = sub_2276694E0();
  v134 = *(v9 - 8);
  v135 = v9;
  v10 = *(v134 + 64);
  MEMORY[0x28223BE20](v9);
  v133 = &v117[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = *(a4 - 8);
  v12 = *(v141 + 64);
  MEMORY[0x28223BE20](v13);
  v129 = &v117[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v146 = &v117[-v16];
  v17 = sub_22766B390();
  v142 = *(v17 - 8);
  v143 = v17;
  v18 = *(v142 + 64);
  MEMORY[0x28223BE20](v17);
  v131 = &v117[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v22 = &v117[-v21];
  v139 = a1;
  v151 = a1;
  v149 = a4;
  v150 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v144 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v130 = *(AssociatedConformanceWitness + 32);
  v25 = sub_22766C730();
  v26 = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v125 = v25;
  v124 = WitnessTable;
  v29 = sub_2274F47D0(sub_2274F72DC, v148, v25, v26, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v28);
  v136 = v5;
  v151 = v29;
  v30 = sub_22766C3D0();
  v120 = AssociatedConformanceWitness;
  v132 = AssociatedTypeWitness;
  v31 = v141;
  v32 = swift_getAssociatedConformanceWitness();
  v33 = swift_getWitnessTable();
  v123 = v30;
  v121 = v33;
  v34 = sub_22766C740();
  sub_22766A6B0();
  v35 = *(v31 + 16);
  v36 = v147;
  v145 = a4;
  v128 = v31 + 16;
  v127 = v35;
  v35(v146, v140, a4);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v137 = v22;
  v37 = sub_22766B380();
  v38 = sub_22766C8B0();
  v39 = os_log_type_enabled(v37, v38);
  v126 = v26;
  v122 = v32;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v151 = v119;
    *v40 = 136447234;
    v41 = v133;
    v42 = v34;
    v43 = v145;
    sub_2274F5148();
    v44 = v146;
    v45 = v43;
    v34 = v42;
    v146 = *(v31 + 8);
    (v146)(v44, v45);
    sub_2274F6FC4();
    v118 = v38;
    v46 = v135;
    v47 = sub_22766D140();
    v48 = v37;
    v50 = v49;
    (*(v134 + 8))(v41, v46);
    v51 = sub_226E97AE8(v47, v50, &v151);

    *(v40 + 4) = v51;
    *(v40 + 12) = 2048;
    v52 = sub_22766C6B0();

    *(v40 + 14) = v52;

    *(v40 + 22) = 2048;
    v53 = sub_22766C6B0();

    *(v40 + 24) = v53;

    *(v40 + 32) = 2082;
    v54 = sub_22766C610();
    v56 = v55;
    swift_bridgeObjectRelease_n();
    v57 = sub_226E97AE8(v54, v56, &v151);

    *(v40 + 34) = v57;
    *(v40 + 42) = 2082;
    v58 = v143;
    v59 = sub_22766C610();
    v61 = v60;
    swift_bridgeObjectRelease_n();
    v62 = sub_226E97AE8(v59, v61, &v151);

    *(v40 + 44) = v62;
    v63 = v145;
    _os_log_impl(&dword_226E8E000, v48, v118, "%{public}s: (+%ld, -%ld) Inserting %{public}s, Deleting %{public}s", v40, 0x34u);
    v64 = v119;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v64, -1, -1);
    v65 = v40;
    v36 = v147;
    v66 = v142;
    MEMORY[0x22AA9A450](v65, -1, -1);

    v67 = *(v66 + 8);
    v68 = v137;
    v69 = v58;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v63 = v145;
    v70 = v146;
    v146 = *(v31 + 8);
    (v146)(v70, v145);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v69 = v143;
    v67 = *(v142 + 8);
    v68 = v137;
  }

  v137 = v67;
  v67(v68, v69);
  v71 = v138;
  v72 = v144;
  v73 = v136;
  v74 = sub_2274F701C(v34, v138, v63, v144, sub_226FDD228);
  v75 = v139;
  if (v73)
  {
  }

  v76 = v74;
  v77 = sub_2274F701C(v36, v71, v63, v72, sub_226FDD488);
  sub_2274F716C(v75, v71);
  v147 = v76;
  v151 = v76;
  MEMORY[0x28223BE20](v79);
  *&v117[-16] = v63;
  *&v117[-8] = v72;
  v138 = v77;
  v80 = v63;
  v151 = sub_2274F47D0(sub_2274F7274, &v117[-32], v125, v126, MEMORY[0x277D84A98], v124, MEMORY[0x277D84AC0], v81);
  v82 = sub_22766C640();

  MEMORY[0x28223BE20](v83);
  *&v117[-32] = v80;
  *&v117[-24] = v72;
  *&v117[-16] = v82;

  v84 = v132;
  v85 = sub_22766C6D0();
  MEMORY[0x28223BE20](v85);
  *&v117[-32] = v80;
  *&v117[-24] = v72;
  *&v117[-16] = v82;

  sub_22766C6D0();
  v139 = 0;

  v86 = sub_22766C620();

  v87 = v131;
  sub_22766A6B0();
  v88 = v129;
  v127(v129, v140, v80);
  v89 = v85;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v90 = sub_22766B380();
  LODWORD(v140) = sub_22766C8B0();
  if (os_log_type_enabled(v90, v140))
  {
    v91 = v88;
    v92 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    v151 = v137;
    *v92 = 136447746;
    v147 = v86;
    v93 = v133;
    v94 = v145;
    sub_2274F5148();
    (v146)(v91, v94);
    sub_2274F6FC4();
    v146 = v90;
    v95 = v135;
    v96 = sub_22766D140();
    v98 = v97;
    (*(v134 + 8))(v93, v95);
    v99 = sub_226E97AE8(v96, v98, &v151);

    *(v92 + 4) = v99;
    *(v92 + 12) = 2048;
    v100 = sub_22766C6B0();

    *(v92 + 14) = v100;

    *(v92 + 22) = 2048;
    v101 = sub_22766C6B0();

    *(v92 + 24) = v101;

    *(v92 + 32) = 2048;
    v102 = sub_22766C6B0();

    *(v92 + 34) = v102;

    *(v92 + 42) = 2082;
    v103 = sub_22766C610();
    v105 = v104;
    swift_bridgeObjectRelease_n();
    v106 = sub_226E97AE8(v103, v105, &v151);

    *(v92 + 44) = v106;
    *(v92 + 52) = 2082;
    v107 = sub_22766C610();
    v109 = v108;
    swift_bridgeObjectRelease_n();
    v110 = sub_226E97AE8(v107, v109, &v151);

    *(v92 + 54) = v110;
    *(v92 + 62) = 2082;
    v89 = v85;
    v86 = v147;
    v111 = sub_22766C610();
    v113 = v112;
    swift_bridgeObjectRelease_n();
    v114 = sub_226E97AE8(v111, v113, &v151);
    v84 = v132;

    *(v92 + 64) = v114;
    v115 = v146;
    _os_log_impl(&dword_226E8E000, v146, v140, "%{public}s: (+%ld, %ld, -%ld) Inserted %{public}s, Updated: %{public}s, Deleted: %{public}s", v92, 0x48u);
    v116 = v137;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v116, -1, -1);
    MEMORY[0x22AA9A450](v92, -1, -1);

    (*(v142 + 8))(v131, v143);
  }

  else
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (v146)(v88, v145);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v137(v87, v143);
  }

  if ((sub_22766C6F0() & 1) == 0 || (sub_22766C6F0() & 1) == 0 || (sub_22766C6F0() & 1) == 0)
  {
    return nullsub_1(v89, v86, v138, v84, v120);
  }

  return 0;
}

uint64_t sub_2274F62D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_2274F72F4;

  return sub_2274F51E4(a1, WitnessTable);
}

uint64_t sub_2274F63E4(char a1)
{
  v2 = sub_2276694E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1 == 1;
  }

  else
  {
    v9 = v5;
    sub_2274F5148();
    v10 = sub_2276694A0();
    (*(v3 + 8))(v7, v9);
    v8 = v10 ^ 1;
  }

  return v8 & 1;
}

uint64_t sub_2274F658C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  WitnessTable = swift_getWitnessTable();
  *v3 = v1;
  v3[1] = sub_2274F664C;

  return sub_2274F51E4(a1, WitnessTable);
}

uint64_t sub_2274F664C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2274F6798()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 104);
  v2 = swift_checkMetadataState();
  return v1(v2, AssociatedConformanceWitness);
}

BOOL sub_2274F6858(uint64_t a1, uint64_t a2)
{
  v11[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v11 - v6;
  v8 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v8();
  swift_getAssociatedConformanceWitness();
  v9 = sub_22766C710();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return (v9 & 1) == 0;
}

uint64_t sub_2274F6A08(uint64_t a1, uint64_t a2)
{
  v11[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v11 - v6;
  v8 = *(AssociatedConformanceWitness + 104);
  swift_checkMetadataState();
  v8();
  swift_getAssociatedConformanceWitness();
  v9 = sub_22766C710();
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return v9 & 1;
}

uint64_t sub_2274F6BB4@<X0>(int a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v18 = a1;
  v17[2] = a4;
  v4 = sub_2276694E0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v17 - v10;
  v12 = *(AssociatedConformanceWitness + 104);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness, v14);
  v15 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_22766D140();
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  sub_2274F5148();
  sub_2276625E0();
  return sub_227664100();
}

BOOL sub_2274F6E04(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v5 = sub_22718C6F4(a1, v4);

  return v5;
}

uint64_t sub_2274F6EC0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_2274F6F4C()
{
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  return sub_22766C060();
}

unint64_t sub_2274F6FC4()
{
  result = qword_28139B258;
  if (!qword_28139B258)
  {
    sub_2276694E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B258);
  }

  return result;
}

uint64_t sub_2274F701C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *v6;
  v8 = v6[1];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 24);
  v13 = *(AssociatedConformanceWitness + 32);
  sub_226FC5B44(AssociatedTypeWitness, v9, v8, v6, v10);
  v14 = (*(AssociatedConformanceWitness + 112))(a1, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_226FDE3D4(v14);

  v15 = a5(100);

  return v15;
}

void sub_2274F716C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v11 = a1;
  v4 = v3[1];
  v5 = v3[3];
  v6 = *(v3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 32);
  v9 = sub_22766C730();
  WitnessTable = swift_getWitnessTable();
  sub_226FC5BC8(&v11, v4, v6, v5, v9, WitnessTable, *(AssociatedConformanceWitness + 24));
}

uint64_t sub_2274F7274()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2274F6798();
}

BOOL sub_2274F7294(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2274F6858(a1, v1[4]);
}

uint64_t sub_2274F72B8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_2274F6A08(a1, v1[4]) & 1;
}

unint64_t PersistenceEntityName.rawValue.getter()
{
  result = 0x42646567616E614DLL;
  switch(*v0)
  {
    case 1:
    case 0x35:
    case 0x62:
      result = 0xD000000000000024;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
    case 0x28:
    case 0x2E:
    case 0x44:
    case 0x58:
    case 0x5B:
    case 0x5D:
    case 0x61:
      result = 0xD000000000000016;
      break;
    case 5:
    case 0x63:
      result = 0xD000000000000021;
      break;
    case 6:
    case 0x2B:
    case 0x3A:
    case 0x60:
      result = 0xD000000000000012;
      break;
    case 7:
    case 0x17:
    case 0x18:
    case 0x24:
    case 0x3B:
    case 0x42:
    case 0x47:
      result = 0xD00000000000001DLL;
      break;
    case 8:
    case 0x3E:
    case 0x40:
    case 0x50:
      result = 0xD000000000000011;
      break;
    case 9:
    case 0x37:
    case 0x4A:
    case 0x5C:
      result = 0xD000000000000017;
      break;
    case 0xA:
      result = 0xD00000000000001ELL;
      break;
    case 0xB:
      result = 0xD000000000000026;
      break;
    case 0xC:
    case 0x2C:
    case 0x32:
      result = 0xD00000000000001CLL;
      break;
    case 0xD:
    case 0x39:
    case 0x3D:
      result = 0xD000000000000019;
      break;
    case 0xE:
      result = 0xD000000000000031;
      break;
    case 0xF:
      result = 0xD00000000000001ELL;
      break;
    case 0x10:
    case 0x43:
      result = 0xD000000000000027;
      break;
    case 0x11:
    case 0x2F:
      result = 0xD000000000000010;
      break;
    case 0x12:
    case 0x23:
    case 0x26:
    case 0x30:
    case 0x68:
      result = 0xD00000000000001ALL;
      break;
    case 0x13:
      return result;
    case 0x14:
    case 0x1A:
    case 0x3C:
    case 0x65:
    case 0x67:
      result = 0xD00000000000001FLL;
      break;
    case 0x16:
    case 0x34:
    case 0x49:
      result = 0xD000000000000020;
      break;
    case 0x19:
      result = 0xD00000000000001ELL;
      break;
    case 0x1B:
    case 0x38:
    case 0x4B:
      result = 0xD000000000000015;
      break;
    case 0x1C:
      result = 0xD00000000000001ELL;
      break;
    case 0x1D:
    case 0x22:
    case 0x31:
    case 0x48:
    case 0x52:
    case 0x53:
    case 0x56:
    case 0x5A:
    case 0x5F:
      result = 0xD000000000000018;
      break;
    case 0x1E:
    case 0x46:
    case 0x4E:
    case 0x59:
      result = 0xD000000000000013;
      break;
    case 0x1F:
    case 0x3F:
    case 0x51:
    case 0x55:
    case 0x64:
      result = 0xD00000000000001BLL;
      break;
    case 0x20:
    case 0x41:
    case 0x4D:
    case 0x69:
      result = 0xD000000000000023;
      break;
    case 0x25:
      result = 0xD00000000000001ELL;
      break;
    case 0x27:
    case 0x2A:
    case 0x2D:
    case 0x4F:
    case 0x54:
    case 0x57:
      result = 0xD000000000000014;
      break;
    case 0x29:
      result = 0xD00000000000001ELL;
      break;
    case 0x33:
      result = 0xD00000000000001ELL;
      break;
    case 0x36:
      result = 0xD00000000000002BLL;
      break;
    case 0x45:
      result = 0x50646567616E614DLL;
      break;
    case 0x4C:
      result = 0xD000000000000025;
      break;
    case 0x5E:
      result = 0xD00000000000001ELL;
      break;
    case 0x66:
      result = 0xD000000000000028;
      break;
    default:
      result = 0xD000000000000022;
      break;
  }

  return result;
}

SeymourServices::PersistenceEntityName_optional __swiftcall PersistenceEntityName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22766D1E0();

  v5 = 0;
  v6 = 88;
  switch(v3)
  {
    case 0:
      goto LABEL_100;
    case 1:
      v5 = 1;
      goto LABEL_100;
    case 2:
      v5 = 2;
      goto LABEL_100;
    case 3:
      v5 = 3;
      goto LABEL_100;
    case 4:
      v5 = 4;
      goto LABEL_100;
    case 5:
      v5 = 5;
      goto LABEL_100;
    case 6:
      v5 = 6;
      goto LABEL_100;
    case 7:
      v5 = 7;
      goto LABEL_100;
    case 8:
      v5 = 8;
      goto LABEL_100;
    case 9:
      v5 = 9;
      goto LABEL_100;
    case 10:
      v5 = 10;
      goto LABEL_100;
    case 11:
      v5 = 11;
      goto LABEL_100;
    case 12:
      v5 = 12;
      goto LABEL_100;
    case 13:
      v5 = 13;
      goto LABEL_100;
    case 14:
      v5 = 14;
      goto LABEL_100;
    case 15:
      v5 = 15;
      goto LABEL_100;
    case 16:
      v5 = 16;
      goto LABEL_100;
    case 17:
      v5 = 17;
      goto LABEL_100;
    case 18:
      v5 = 18;
      goto LABEL_100;
    case 19:
      v5 = 19;
      goto LABEL_100;
    case 20:
      v5 = 20;
      goto LABEL_100;
    case 21:
      v5 = 21;
      goto LABEL_100;
    case 22:
      v5 = 22;
      goto LABEL_100;
    case 23:
      v5 = 23;
      goto LABEL_100;
    case 24:
      v5 = 24;
      goto LABEL_100;
    case 25:
      v5 = 25;
      goto LABEL_100;
    case 26:
      v5 = 26;
      goto LABEL_100;
    case 27:
      v5 = 27;
      goto LABEL_100;
    case 28:
      v5 = 28;
      goto LABEL_100;
    case 29:
      v5 = 29;
      goto LABEL_100;
    case 30:
      v5 = 30;
      goto LABEL_100;
    case 31:
      v5 = 31;
      goto LABEL_100;
    case 32:
      v5 = 32;
      goto LABEL_100;
    case 33:
      v5 = 33;
      goto LABEL_100;
    case 34:
      v5 = 34;
      goto LABEL_100;
    case 35:
      v5 = 35;
      goto LABEL_100;
    case 36:
      v5 = 36;
      goto LABEL_100;
    case 37:
      v5 = 37;
      goto LABEL_100;
    case 38:
      v5 = 38;
      goto LABEL_100;
    case 39:
      v5 = 39;
      goto LABEL_100;
    case 40:
      v5 = 40;
      goto LABEL_100;
    case 41:
      v5 = 41;
      goto LABEL_100;
    case 42:
      v5 = 42;
      goto LABEL_100;
    case 43:
      v5 = 43;
      goto LABEL_100;
    case 44:
      v5 = 44;
      goto LABEL_100;
    case 45:
      v5 = 45;
      goto LABEL_100;
    case 46:
      v5 = 46;
      goto LABEL_100;
    case 47:
      v5 = 47;
      goto LABEL_100;
    case 48:
      v5 = 48;
      goto LABEL_100;
    case 49:
      v5 = 49;
      goto LABEL_100;
    case 50:
      v5 = 50;
      goto LABEL_100;
    case 51:
      v5 = 51;
      goto LABEL_100;
    case 52:
      v5 = 52;
      goto LABEL_100;
    case 53:
      v5 = 53;
      goto LABEL_100;
    case 54:
      v5 = 54;
      goto LABEL_100;
    case 55:
      v5 = 55;
      goto LABEL_100;
    case 56:
      v5 = 56;
      goto LABEL_100;
    case 57:
      v5 = 57;
      goto LABEL_100;
    case 58:
      v5 = 58;
      goto LABEL_100;
    case 59:
      v5 = 59;
      goto LABEL_100;
    case 60:
      v5 = 60;
      goto LABEL_100;
    case 61:
      v5 = 61;
      goto LABEL_100;
    case 62:
      v5 = 62;
      goto LABEL_100;
    case 63:
      v5 = 63;
      goto LABEL_100;
    case 64:
      v5 = 64;
      goto LABEL_100;
    case 65:
      v5 = 65;
      goto LABEL_100;
    case 66:
      v5 = 66;
      goto LABEL_100;
    case 67:
      v5 = 67;
      goto LABEL_100;
    case 68:
      v5 = 68;
      goto LABEL_100;
    case 69:
      v5 = 69;
      goto LABEL_100;
    case 70:
      v5 = 70;
      goto LABEL_100;
    case 71:
      v5 = 71;
      goto LABEL_100;
    case 72:
      v5 = 72;
      goto LABEL_100;
    case 73:
      v5 = 73;
      goto LABEL_100;
    case 74:
      v5 = 74;
      goto LABEL_100;
    case 75:
      v5 = 75;
      goto LABEL_100;
    case 76:
      v5 = 76;
      goto LABEL_100;
    case 77:
      v5 = 77;
      goto LABEL_100;
    case 78:
      v5 = 78;
      goto LABEL_100;
    case 79:
      v5 = 79;
      goto LABEL_100;
    case 80:
      v5 = 80;
      goto LABEL_100;
    case 81:
      v5 = 81;
      goto LABEL_100;
    case 82:
      v5 = 82;
      goto LABEL_100;
    case 83:
      v5 = 83;
      goto LABEL_100;
    case 84:
      v5 = 84;
      goto LABEL_100;
    case 85:
      v5 = 85;
      goto LABEL_100;
    case 86:
      v5 = 86;
      goto LABEL_100;
    case 87:
      v5 = 87;
LABEL_100:
      v6 = v5;
      break;
    case 88:
      break;
    case 89:
      v6 = 89;
      break;
    case 90:
      v6 = 90;
      break;
    case 91:
      v6 = 91;
      break;
    case 92:
      v6 = 92;
      break;
    case 93:
      v6 = 93;
      break;
    case 94:
      v6 = 94;
      break;
    case 95:
      v6 = 95;
      break;
    case 96:
      v6 = 96;
      break;
    case 97:
      v6 = 97;
      break;
    case 98:
      v6 = 98;
      break;
    case 99:
      v6 = 99;
      break;
    case 100:
      v6 = 100;
      break;
    case 101:
      v6 = 101;
      break;
    case 102:
      v6 = 102;
      break;
    case 103:
      v6 = 103;
      break;
    case 104:
      v6 = 104;
      break;
    case 105:
      v6 = 105;
      break;
    default:
      v6 = 106;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2274F7E80(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = PersistenceEntityName.rawValue.getter();
  v4 = v3;
  if (v2 == PersistenceEntityName.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22766D190();
  }

  return v7 & 1;
}

unint64_t sub_2274F7F20()
{
  result = qword_27D7BE200;
  if (!qword_27D7BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE200);
  }

  return result;
}

uint64_t sub_2274F7F74()
{
  v1 = *v0;
  sub_22766D370();
  PersistenceEntityName.rawValue.getter();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2274F7FDC()
{
  v2 = *v0;
  PersistenceEntityName.rawValue.getter();
  sub_22766C100();
}

uint64_t sub_2274F8040()
{
  v1 = *v0;
  sub_22766D370();
  PersistenceEntityName.rawValue.getter();
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_2274F80B0@<X0>(unint64_t *a1@<X8>)
{
  result = PersistenceEntityName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2274F80DC()
{
  result = qword_27D7BE208;
  if (!qword_27D7BE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BE210, &qword_2276897E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE208);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersistenceEntityName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x97)
  {
    goto LABEL_17;
  }

  if (a2 + 105 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 105) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 105;
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

      return (*a1 | (v4 << 8)) - 105;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 105;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x6A;
  v8 = v6 - 106;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersistenceEntityName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 105 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 105) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x97)
  {
    v4 = 0;
  }

  if (a2 > 0x96)
  {
    v5 = ((a2 - 151) >> 8) + 1;
    *result = a2 + 105;
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
    *result = a2 + 105;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2274F82A0(void *a1)
{
  v2 = [a1 referenceIdentifier];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  sub_22766C000();

  v4 = [a1 referenceType];
  if (!v4)
  {
LABEL_11:

LABEL_12:
    v12 = sub_227664470();
    sub_2274F8F54(&qword_27D7BA250, MEMORY[0x277D50940]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D50908], v12);
    swift_willThrow();
    goto LABEL_13;
  }

  v5 = v4;
  sub_22766C000();

  v6 = [a1 shelfMarker];
  if (!v6)
  {
LABEL_10:

    goto LABEL_11;
  }

  v7 = v6;
  sub_22766C000();

  v8 = [a1 source];
  if (!v8)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = v8;
  sub_22766C000();

  v10 = [a1 reason];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  sub_22766C000();

  [a1 index];
  sub_227125DE8();
  sub_227663AE0();
  sub_2274F8B70();
  sub_227663AE0();
  sub_2274F8C18();
  sub_227663AE0();
  sub_2276643D0();
LABEL_13:
}

size_t static Recommendation.representativeSamples()()
{
  v32 = sub_227664410();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F05E24();
  sub_22766CFA0();

  sub_2274F8B1C();
  sub_2274F8B70();
  v3 = sub_227663B50();
  v4 = sub_22766C090();
  sub_22732D5AC();
  sub_227125DE8();
  v5 = sub_227663B50();
  sub_2274F8BC4();
  sub_2274F8C18();
  v6 = sub_227663B50();
  v60[0] = sub_22766CFA0();
  v60[1] = v60;
  v7 = sub_22766C090();
  v58 = v4;
  v59 = v7;
  v60[2] = &v59;
  v60[3] = &v58;
  v56 = v3;
  v57 = v5;
  v60[4] = &v57;
  v60[5] = &v56;
  v55 = v6;
  v60[6] = &v55;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96F0, qword_227674920);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBD0, &qword_227680910);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE238, &qword_2276899F0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE240, &qword_2276899F8);
  v43 = sub_226F5BF60(&qword_27D7B8510, &qword_27D7B96F0, qword_227674920);
  v44 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v45 = v44;
  v46 = sub_226F5BF60(&qword_27D7BCBD8, &qword_27D7BCBD0, &qword_227680910);
  v47 = sub_226F5BF60(&qword_27D7BE248, &qword_27D7BE238, &qword_2276899F0);
  v48 = sub_226F5BF60(&qword_27D7BE250, &qword_27D7BE240, &qword_2276899F8);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v42 = MEMORY[0x277D84F90];
    result = sub_226F20108(0, v9, 0);
    v11 = 0;
    v12 = v42;
    v27[1] = v0 + 32;
    v13 = v8 + 72;
    v30 = v0;
    v29 = v8;
    v28 = v9;
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 32);
      v40 = *(v13 - 40);
      v39 = v14;
      v37 = *(v13 - 24);
      v15 = *(v13 - 8);
      v38 = *(v13 - 16);
      v36 = v15;
      v17 = *v13;
      v35 = *(v13 + 8);
      v16 = v35;
      v18 = *(v13 + 16);
      v19 = *(v13 + 32);
      v34 = *(v13 + 24);
      v33 = v19;
      v20 = *(v13 + 40);
      v41 = v12;
      v22 = *(v13 + 48);
      v21 = *(v13 + 56);
      v23 = *(v13 + 64);

      sub_226EB396C(v17, v16, v18);
      sub_226EB396C(v34, v33, v20);
      sub_226EB396C(v22, v21, v23);
      v12 = v41;
      v24 = v31;
      sub_2276643D0();
      v42 = v12;
      v26 = *(v12 + 16);
      v25 = *(v12 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_226F20108(v25 > 1, v26 + 1, 1);
        v12 = v42;
      }

      ++v11;
      *(v12 + 16) = v26 + 1;
      result = (*(v30 + 32))(v12 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v24, v32);
      v13 += 112;
      v8 = v29;
      if (v28 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_2274F8B1C()
{
  result = qword_27D7BE218;
  if (!qword_27D7BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE218);
  }

  return result;
}

unint64_t sub_2274F8B70()
{
  result = qword_27D7BE220;
  if (!qword_27D7BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE220);
  }

  return result;
}

unint64_t sub_2274F8BC4()
{
  result = qword_27D7BE228;
  if (!qword_27D7BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE228);
  }

  return result;
}

unint64_t sub_2274F8C18()
{
  result = qword_27D7BE230;
  if (!qword_27D7BE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE230);
  }

  return result;
}

uint64_t sub_2274F8CAC(uint64_t a1)
{
  result = sub_2274F8F54(&qword_28139B990, MEMORY[0x277D508B0]);
  *(a1 + 8) = result;
  return result;
}

void sub_2274F8D04(void *a1)
{
  v2 = sub_2276643E0();
  v3 = 0x7FFFFFFFLL;
  if (v2 < 0x7FFFFFFF)
  {
    v3 = v2;
  }

  if (v3 <= 0xFFFFFFFF80000000)
  {
    v4 = 0xFFFFFFFF80000000;
  }

  else
  {
    v4 = v3;
  }

  [a1 setIndex_];
  v5 = sub_2276643A0();
  v7 = v6;
  v9 = v8 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE258, &qword_227689A48);
  sub_227663AD0();
  v10 = sub_22766BFD0();
  sub_226EB2DFC(v5, v7, v9);

  [a1 setShelfMarker_];

  sub_2276643C0();
  v11 = sub_22766BFD0();

  [a1 setReferenceIdentifier_];

  v12 = sub_2276643B0();
  v14 = v13;
  v16 = v15 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
  sub_227663AD0();
  v17 = sub_22766BFD0();
  sub_226EB2DFC(v12, v14, v16);

  [a1 setReferenceType_];

  sub_2276643F0();
  v18 = sub_22766BFD0();

  [a1 setReason_];

  v19 = sub_227664400();
  v21 = v20;
  LOBYTE(v14) = v22 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE260, &qword_227689A50);
  sub_227663AD0();
  v23 = sub_22766BFD0();
  sub_226EB2DFC(v19, v21, v14);

  [a1 setSource_];
}

uint64_t sub_2274F8F54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2274F8F9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v22 - v14;
  v16 = [a1 term];
  if (!v16)
  {
    goto LABEL_6;
  }

  v22[3] = a2;
  v17 = v16;
  v22[1] = sub_22766C000();

  v18 = [a1 dateCreated];
  if (!v18)
  {
LABEL_5:

LABEL_6:
    v20 = sub_227664DD0();
    sub_2274F9828(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
    swift_willThrow();

    return;
  }

  v19 = v18;
  sub_227662710();

  (*(v5 + 32))(v15, v11, v4);
  if (MEMORY[0x22AA95720]([a1 platform]) == 4)
  {
    (*(v5 + 8))(v15, v4);
    goto LABEL_5;
  }

  (*(v5 + 16))(v8, v15, v4);
  sub_227664DF0();

  (*(v5 + 8))(v15, v4);
}

size_t static RecentSearchTerm.representativeSamples()()
{
  v31 = sub_227662750();
  v27 = *(v31 - 8);
  v0 = *(v27 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE268, &qword_227689A58);
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = v23 - v4;
  v28 = sub_227664E20();
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v28);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v11 = sub_227662630();
  v12 = sub_2276693F0();
  v40 = v11;
  v41[0] = v10;
  v41[1] = v41;
  v41[2] = &v40;
  v39 = v12;
  v41[3] = &v39;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE270, &qword_227689A60);
  v33 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v34 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v35 = sub_226F5BF60(&qword_27D7BE278, &qword_27D7BE270, &qword_227689A60);
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v32 = MEMORY[0x277D84F90];
    result = sub_226F1F448(0, v14, 0);
    v16 = 0;
    v17 = v32;
    v25 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v24 = (v27 + 16);
    v27 = v6;
    v23[1] = v6 + 32;
    v26 = v13;
    while (v16 < *(v13 + 16))
    {
      sub_2274F96F8(v25 + *(v2 + 72) * v16, v5);
      v18 = *v5;
      v19 = *(v5 + 1);
      v20 = v5[*(v29 + 64)];
      (*v24)(v30, &v5[*(v29 + 48)], v31);

      sub_227664DF0();
      sub_2274F9768(v5);
      v32 = v17;
      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F448(v21 > 1, v22 + 1, 1);
        v17 = v32;
      }

      ++v16;
      *(v17 + 16) = v22 + 1;
      result = (*(v27 + 32))(v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v9, v28);
      v13 = v26;
      if (v14 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2274F96F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE268, &qword_227689A58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2274F9768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE268, &qword_227689A58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2274F97D0(uint64_t a1)
{
  result = sub_2274F9828(&qword_2813A5748, MEMORY[0x277D51068]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2274F9828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2274F9870(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227664E00();
  v7 = sub_22766BFD0();

  [a1 setTerm_];

  sub_227664DE0();
  v8 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setDateCreated_];

  sub_227664E10();
  result = sub_227669410();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    return [a1 setPlatform_];
  }

  __break(1u);
  return result;
}

uint64_t sub_2274F99E8(uint64_t a1, int a2)
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

uint64_t sub_2274F9A30(uint64_t result, int a2, int a3)
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

uint64_t sub_2274F9A90(uint64_t a1)
{
  v1 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F98];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_7:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v40 = v1;
  v8 = v9;
  while (1)
  {
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_226E93170(*(a1 + 56) + 32 * v11, v38, &unk_27D7BC990, &qword_227670A30);
    *&v37 = v14;
    *(&v37 + 1) = v13;
    v34 = v37;
    v35 = v38[0];
    v36 = v38[1];
    sub_226E93170(&v35, &v28, &unk_27D7BC990, &qword_227670A30);
    if (!v29)
    {

      sub_226E97D1C(&v34, &qword_27D7B9470, &qword_227689B70);
      result = sub_226E97D1C(&v28, &unk_27D7BC990, &qword_227670A30);
      v1 = v40;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }

    sub_226F04970(&v28, v33);
    v31 = v34;
    v32[0] = v35;
    v32[1] = v36;
    sub_226F04970(v33, v30);
    v1 = v40;
    v15 = *(v40 + 16);
    if (*(v40 + 24) <= v15)
    {

      sub_226FE4910(v15 + 1, 1);
      v1 = v39;
    }

    else
    {
    }

    v16 = v31;
    v17 = *(v1 + 40);
    sub_22766D370();
    sub_22766C100();
    result = sub_22766D3F0();
    v18 = v1 + 64;
    v19 = -1 << *(v1 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v1 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v1 + 48) + 16 * v22) = v16;
    sub_226F04970(v30, (*(v1 + 56) + 32 * v22));
    ++*(v1 + 16);
    result = sub_226E97D1C(v32, &unk_27D7BC990, &qword_227670A30);
    if (!v5)
    {
      goto LABEL_7;
    }

LABEL_11:
    v40 = v1;
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_26;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2274F9DB4(uint64_t a1, uint64_t a2)
{
  v3[62] = a2;
  v3[63] = v2;
  v3[61] = a1;
  v4 = sub_22766B390();
  v3[64] = v4;
  v5 = *(v4 - 8);
  v3[65] = v5;
  v6 = *(v5 + 64) + 15;
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9EC0, &qword_22767C990) - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v8 = sub_227665100();
  v3[69] = v8;
  v9 = *(v8 - 8);
  v3[70] = v9;
  v10 = *(v9 + 64) + 15;
  v3[71] = swift_task_alloc();
  v11 = sub_2276627D0();
  v3[72] = v11;
  v12 = *(v11 - 8);
  v3[73] = v12;
  v13 = *(v12 + 64) + 15;
  v3[74] = swift_task_alloc();
  v14 = sub_227662750();
  v3[75] = v14;
  v15 = *(v14 - 8);
  v3[76] = v15;
  v16 = *(v15 + 64) + 15;
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CC8, &unk_227689B50) - 8) + 64) + 15;
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FA020, 0, 0);
}

uint64_t sub_2274FA020()
{
  v154 = v0;
  v1 = v0[63];
  v2 = v0[61];
  v3 = sub_227668360();
  v0[60] = v3;
  type metadata accessor for HKWorkoutActivityType(0);
  v0[81] = sub_22766C060();
  v0[82] = v4;
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_0(v1, v1[3]);
  sub_22766A380();
  v151 = v1;
  v6 = v0[80];
  v7 = v0[61];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9458, &unk_227674080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227689AB0;
  *(inited + 32) = sub_227669C90();
  *(inited + 40) = v9;
  v10 = sub_227668320();
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  *(inited + 80) = sub_227669CA0();
  *(inited + 88) = v13;
  v14 = sub_227668350();
  *(inited + 120) = v11;
  *(inited + 96) = v14;
  *(inited + 104) = v15;
  *(inited + 128) = sub_227669C70();
  *(inited + 136) = v16;
  v17 = sub_227664C10();
  *(inited + 168) = v11;
  *(inited + 144) = v17;
  *(inited + 152) = v18;
  v19 = *MEMORY[0x277CCC4C0];
  *(inited + 176) = sub_22766C000();
  *(inited + 184) = v20;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  *(inited + 224) = sub_227669C80();
  *(inited + 232) = v21;
  v22 = sub_227664AC0();
  *(inited + 264) = MEMORY[0x277D83B88];
  *(inited + 240) = v22;
  *(inited + 272) = sub_227669CB0();
  *(inited + 280) = v23;
  sub_227668330();
  v24 = sub_227664950();
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v26(v6, 1, v24);
  v28 = v0[80];
  if (v27 == 1)
  {
    sub_226E97D1C(v0[80], &qword_27D7B8CC8, &unk_227689B50);
    *(inited + 288) = 0u;
    *(inited + 304) = 0u;
  }

  else
  {
    v29 = sub_227664930();
    *(inited + 312) = v11;
    *(inited + 288) = v29;
    *(inited + 296) = v30;
    (*(v25 + 8))(v28, v24);
  }

  v31 = v0[79];
  v32 = v0[61];
  *(inited + 320) = sub_227669CC0();
  *(inited + 328) = v33;
  sub_227668330();
  v34 = v26(v31, 1, v24);
  v35 = v0[79];
  v147 = v3;
  if (v34 == 1)
  {
    sub_226E97D1C(v35, &qword_27D7B8CC8, &unk_227689B50);
LABEL_8:
    *(inited + 336) = 0u;
    *(inited + 352) = 0u;
    goto LABEL_9;
  }

  v36 = sub_227664910();
  v38 = v37;
  (*(v25 + 8))(v35, v24);
  if (!v38)
  {
    goto LABEL_8;
  }

  *(inited + 360) = v11;
  *(inited + 336) = v36;
  *(inited + 344) = v38;
LABEL_9:
  v39 = v0[78];
  v40 = v0[77];
  v41 = v0[76];
  v42 = v0[75];
  v140 = v42;
  v152 = v0[73];
  v142 = v0[74];
  v144 = v0[72];
  v43 = v0[61];
  v44 = *MEMORY[0x277CCC440];
  *(inited + 368) = sub_22766C000();
  *(inited + 376) = v45;
  *(inited + 408) = MEMORY[0x277D839B0];
  *(inited + 384) = 1;
  v46 = *MEMORY[0x277CCC438];
  *(inited + 416) = sub_22766C000();
  *(inited + 424) = v47;
  v48 = sub_227668320();
  *(inited + 456) = v11;
  *(inited + 432) = v48;
  *(inited + 440) = v49;
  v50 = sub_227148D38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9460, &unk_227689B60);
  swift_arrayDestroy();
  sub_227668380();
  sub_227668370();
  sub_227662690();
  v51 = *(v41 + 8);
  v0[83] = v51;
  v0[84] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v51(v40, v42);
  sub_227668380();
  sub_227668370();
  v53 = v52;
  v54 = [objc_opt_self() localDevice];
  sub_2274F9A90(v50);
  v55 = sub_2276626A0();
  v56 = sub_2276626A0();
  v57 = sub_22766BE90();
  v58 = v51;

  v59 = [objc_opt_self() workoutWithActivityType:v147 startDate:v55 endDate:v56 duration:0 totalEnergyBurned:0 totalDistance:v54 device:v53 metadata:v57];
  v0[85] = v59;

  v51(v40, v140);
  v60 = v59;
  sub_227668310();
  v61 = sub_227662790();
  v62 = *(v152 + 8);
  v0[86] = v62;
  v0[87] = (v152 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v62(v142, v144);
  [v60 _setUUID_];

  v63 = sub_227664AD0();
  v65 = v64;
  if (v63 == sub_227664AD0() && v65 == v66)
  {

    v67 = v151;
  }

  else
  {
    v68 = sub_22766D190();

    v67 = v151;
    if ((v68 & 1) == 0)
    {

      goto LABEL_20;
    }
  }

  v69 = v0[70];
  v70 = v0[69];
  v71 = v0[68];
  sub_226E93170(v0[62], v71, &qword_27D7B9EC0, &qword_22767C990);
  if ((*(v69 + 48))(v71, 1, v70) != 1)
  {
    v138 = v62;
    v148 = v58;
    v73 = v0[61];
    (*(v0[70] + 32))(v0[71], v0[68], v0[69]);
    sub_227668370();
    v75 = v74;
    sub_2276650F0();
    v77 = v75 / v76;
    sub_2276650D0();
    v79 = v77 * v78;
    sub_227668370();
    v81 = v80;
    sub_2276650F0();
    v83 = v81 / v82;
    sub_2276650E0();
    v85 = v83 * v84;
    v86 = objc_opt_self();
    v87 = [v86 largeCalorieUnit];
    v88 = objc_opt_self();
    v89 = [v88 quantityWithUnit:v87 doubleValue:v85];
    v0[88] = v89;

    v90 = [v86 largeCalorieUnit];
    v91 = [v88 quantityWithUnit:v90 doubleValue:v79];
    v0[89] = v91;

    [v60 _setTotalEnergyBurned_];
    v143 = v91;
    v145 = v60;
    [v60 _setTotalBasalEnergyBurned_];
    sub_226E99364(0, &qword_281398B48, 0x277CCD8D8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v93 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
    if (v93)
    {
      v96 = v93;
      v97 = v0[78];
      v98 = v0[77];
      v99 = v0[75];
      v100 = v0[61];
      v101 = v89;
      sub_227668380();
      v102 = sub_2276626A0();
      v103 = sub_2276626A0();
      v141 = objc_opt_self();
      v0[90] = [v141 quantitySampleWithType:v96 quantity:v101 startDate:v102 endDate:v103];

      v148(v98, v99);
      v93 = [ObjCClassFromMetadata quantityTypeForIdentifier_];
      if (v93)
      {
        v104 = v93;
        v105 = v0[78];
        v106 = v0[77];
        v139 = v0[75];
        v107 = v0[67];
        v108 = v0[61];

        v109 = v143;
        sub_227668380();
        v110 = sub_2276626A0();
        v111 = sub_2276626A0();
        v0[91] = [v141 quantitySampleWithType:v104 quantity:v109 startDate:v110 endDate:v111];

        v148(v106, v139);
        sub_22766A6D0();
        v112 = v145;
        v113 = sub_22766B380();
        v114 = sub_22766C8B0();

        if (os_log_type_enabled(v113, v114))
        {
          v115 = v0[74];
          v116 = v0[72];
          v146 = v0[65];
          v149 = v0[64];
          v150 = v0[67];
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v153 = v118;
          *v117 = 141558786;
          *(v117 + 4) = 1752392040;
          *(v117 + 12) = 2080;
          v119 = [v112 UUID];
          sub_2276627B0();

          sub_2274FCDC8(&unk_28139BD90, MEMORY[0x277CC95F0]);
          v120 = sub_22766D140();
          v122 = v121;
          v138(v115, v116);
          v123 = sub_226E97AE8(v120, v122, &v153);

          *(v117 + 14) = v123;
          *(v117 + 22) = 2048;
          *(v117 + 24) = v85;
          *(v117 + 32) = 2048;
          *(v117 + 34) = v79;
          _os_log_impl(&dword_226E8E000, v113, v114, "Adding calories to workout %{mask.hash}s: Active %f, Basal %f", v117, 0x2Au);
          __swift_destroy_boxed_opaque_existential_0(v118);
          MEMORY[0x22AA9A450](v118, -1, -1);
          MEMORY[0x22AA9A450](v117, -1, -1);

          (*(v146 + 8))(v150, v149);
        }

        else
        {
          v129 = v0[67];
          v130 = v0[65];
          v131 = v0[64];

          (*(v130 + 8))(v129, v131);
        }

        v132 = v0[63];
        v133 = v151[3];
        v134 = v132[6];
        __swift_project_boxed_opaque_existential_0(v132, v133);
        v135 = *(MEMORY[0x277D4F248] + 4);
        v136 = swift_task_alloc();
        v0[92] = v136;
        *v136 = v0;
        v136[1] = sub_2274FACE8;
        v93 = v112;
        v94 = v133;
        v95 = v134;
        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return MEMORY[0x2821AEDB0](v93, v94, v95);
  }

  v72 = v0[68];

  sub_226E97D1C(v72, &qword_27D7B9EC0, &qword_22767C990);
LABEL_20:
  v124 = v0[63];
  v125 = v67[3];
  v126 = v124[6];
  __swift_project_boxed_opaque_existential_0(v124, v125);
  v127 = *(MEMORY[0x277D4F248] + 4);
  v128 = swift_task_alloc();
  v0[97] = v128;
  *v128 = v0;
  v128[1] = sub_2274FB4C8;
  v93 = v60;
  v94 = v125;
  v95 = v126;
LABEL_23:

  return MEMORY[0x2821AEDB0](v93, v94, v95);
}

uint64_t sub_2274FACE8()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v7 = *v1;
  *(*v1 + 744) = v0;

  if (v0)
  {
    v4 = *(v2 + 656);

    v5 = sub_2274FBA04;
  }

  else
  {
    v5 = sub_2274FAE04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2274FAE04()
{
  v1 = v0[91];
  v2 = v0[90];
  v3 = v0[63];
  v4 = v3[3];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
  v6 = swift_allocObject();
  v0[94] = v6;
  *(v6 + 16) = xmmword_2276756A0;
  *(v6 + 32) = v2;
  *(v6 + 40) = v1;
  v7 = *(MEMORY[0x277D4F238] + 4);
  v8 = v2;
  v9 = v1;
  v10 = swift_task_alloc();
  v0[95] = v10;
  *v10 = v0;
  v10[1] = sub_2274FAF20;
  v11 = v0[85];

  return MEMORY[0x2821AEDA0](v6, v11, v4, v5);
}

uint64_t sub_2274FAF20()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;
  v2[96] = v0;

  v5 = v2[94];
  if (v0)
  {
    v6 = v2[82];

    v7 = sub_2274FBB58;
  }

  else
  {

    v7 = sub_2274FB064;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2274FB064()
{
  v64 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 568);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 656);
  v8 = *(v0 + 528);
  v9 = *(v0 + 680);
  v10 = [v9 description];
  v11 = sub_22766C000();
  v13 = v12;

  sub_22766A6D0();
  v14 = v9;

  v15 = sub_22766B380();
  v16 = sub_22766C8B0();

  if (os_log_type_enabled(v15, v16))
  {
    v49 = *(v0 + 688);
    v50 = *(v0 + 696);
    v17 = *(v0 + 680);
    v54 = v17;
    v61 = *(v0 + 672);
    v51 = *(v0 + 648);
    v52 = *(v0 + 656);
    v59 = *(v0 + 624);
    v60 = *(v0 + 664);
    v18 = *(v0 + 592);
    v53 = v11;
    v19 = *(v0 + 576);
    v57 = *(v0 + 528);
    v58 = *(v0 + 600);
    v55 = *(v0 + 520);
    v56 = *(v0 + 512);
    v20 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v63 = v48;
    *v20 = 141559298;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    v21 = [v17 UUID];
    sub_2276627B0();

    sub_2274FCDC8(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v22 = sub_22766D140();
    v24 = v23;
    v49(v18, v19);
    v25 = sub_226E97AE8(v22, v24, &v63);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2160;
    *(v20 + 24) = 1752392040;
    *(v20 + 32) = 2080;
    v26 = sub_226E97AE8(v51, v52, &v63);

    *(v20 + 34) = v26;
    *(v20 + 42) = 2160;
    *(v20 + 44) = 1752392040;
    *(v20 + 52) = 2080;
    v27 = sub_226E97AE8(v53, v13, &v63);

    *(v20 + 54) = v27;
    _os_log_impl(&dword_226E8E000, v15, v16, "Saved standalone workout in HealthKit with uuid: %{mask.hash}s, activityType: %{mask.hash}s, workout: %{mask.hash}s", v20, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v48, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v55 + 8))(v57, v56);
    v60(v59, v58);
  }

  else
  {
    v28 = *(v0 + 680);
    v62 = *(v0 + 672);
    v29 = v15;
    v30 = *(v0 + 664);
    v31 = *(v0 + 656);
    v32 = *(v0 + 624);
    v33 = *(v0 + 600);
    v34 = *(v0 + 528);
    v35 = *(v0 + 520);
    v36 = *(v0 + 512);

    (*(v35 + 8))(v34, v36);
    v30(v32, v33);
  }

  v37 = *(v0 + 640);
  v38 = *(v0 + 632);
  v39 = *(v0 + 624);
  v40 = *(v0 + 616);
  v41 = *(v0 + 592);
  v42 = *(v0 + 568);
  v43 = *(v0 + 544);
  v44 = *(v0 + 536);
  v45 = *(v0 + 528);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_2274FB4C8()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v7 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = *(v2 + 656);

    v5 = sub_2274FBCAC;
  }

  else
  {
    v5 = sub_2274FB5E4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2274FB5E4()
{
  v58 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 528);
  v3 = *(v0 + 680);
  v4 = [v3 description];
  v5 = sub_22766C000();
  v7 = v6;

  sub_22766A6D0();
  v8 = v3;

  v9 = sub_22766B380();
  v10 = sub_22766C8B0();

  if (os_log_type_enabled(v9, v10))
  {
    v43 = *(v0 + 688);
    v44 = *(v0 + 696);
    v11 = *(v0 + 680);
    v48 = v11;
    v55 = *(v0 + 672);
    v45 = *(v0 + 648);
    v46 = *(v0 + 656);
    v53 = *(v0 + 624);
    v54 = *(v0 + 664);
    v12 = *(v0 + 592);
    v47 = v5;
    v13 = *(v0 + 576);
    v51 = *(v0 + 528);
    v52 = *(v0 + 600);
    v49 = *(v0 + 520);
    v50 = *(v0 + 512);
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v57 = v42;
    *v14 = 141559298;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2080;
    v15 = [v11 UUID];
    sub_2276627B0();

    sub_2274FCDC8(&unk_28139BD90, MEMORY[0x277CC95F0]);
    v16 = sub_22766D140();
    v18 = v17;
    v43(v12, v13);
    v19 = sub_226E97AE8(v16, v18, &v57);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2160;
    *(v14 + 24) = 1752392040;
    *(v14 + 32) = 2080;
    v20 = sub_226E97AE8(v45, v46, &v57);

    *(v14 + 34) = v20;
    *(v14 + 42) = 2160;
    *(v14 + 44) = 1752392040;
    *(v14 + 52) = 2080;
    v21 = sub_226E97AE8(v47, v7, &v57);

    *(v14 + 54) = v21;
    _os_log_impl(&dword_226E8E000, v9, v10, "Saved standalone workout in HealthKit with uuid: %{mask.hash}s, activityType: %{mask.hash}s, workout: %{mask.hash}s", v14, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v42, -1, -1);
    MEMORY[0x22AA9A450](v14, -1, -1);

    (*(v49 + 8))(v51, v50);
    v54(v53, v52);
  }

  else
  {
    v22 = *(v0 + 680);
    v56 = *(v0 + 672);
    v23 = v9;
    v24 = *(v0 + 664);
    v25 = *(v0 + 656);
    v26 = *(v0 + 624);
    v27 = *(v0 + 600);
    v28 = *(v0 + 528);
    v29 = *(v0 + 520);
    v30 = *(v0 + 512);

    (*(v29 + 8))(v28, v30);
    v24(v26, v27);
  }

  v31 = *(v0 + 640);
  v32 = *(v0 + 632);
  v33 = *(v0 + 624);
  v34 = *(v0 + 616);
  v35 = *(v0 + 592);
  v36 = *(v0 + 568);
  v37 = *(v0 + 544);
  v38 = *(v0 + 536);
  v39 = *(v0 + 528);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2274FBA04()
{
  v1 = *(v0 + 728);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v22 = *(v0 + 664);
  v23 = *(v0 + 672);
  v5 = *(v0 + 624);
  v6 = *(v0 + 600);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  (*(v8 + 8))(v7, v9);
  v22(v5, v6);
  v10 = *(v0 + 744);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = *(v0 + 616);
  v15 = *(v0 + 592);
  v16 = *(v0 + 568);
  v17 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2274FBB58()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 712);
  v3 = *(v0 + 704);
  v4 = *(v0 + 680);
  v22 = *(v0 + 664);
  v23 = *(v0 + 672);
  v5 = *(v0 + 624);
  v6 = *(v0 + 600);
  v7 = *(v0 + 568);
  v8 = *(v0 + 560);
  v9 = *(v0 + 552);

  (*(v8 + 8))(v7, v9);
  v22(v5, v6);
  v10 = *(v0 + 768);
  v11 = *(v0 + 640);
  v12 = *(v0 + 632);
  v13 = *(v0 + 624);
  v14 = *(v0 + 616);
  v15 = *(v0 + 592);
  v16 = *(v0 + 568);
  v17 = *(v0 + 544);
  v18 = *(v0 + 536);
  v19 = *(v0 + 528);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2274FBCAC()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 664);
  v3 = *(v0 + 624);
  v4 = *(v0 + 600);

  v2(v3, v4);
  v5 = *(v0 + 784);
  v6 = *(v0 + 640);
  v7 = *(v0 + 632);
  v8 = *(v0 + 624);
  v9 = *(v0 + 616);
  v10 = *(v0 + 592);
  v11 = *(v0 + 568);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 528);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_2274FBDB4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_227664CA0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = sub_227662930();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v11 = sub_227662750();
  v3[13] = v11;
  v12 = *(v11 - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2274FBF74, 0, 0);
}

uint64_t sub_2274FBF74()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[3];
  sub_2276674F0();
  sub_2276674D0();
  v10 = v9;
  sub_227662740();
  (*(v6 + 104))(v5, *MEMORY[0x277CC9968], v7);
  sub_227662610();
  (*(v6 + 8))(v5, v7);
  v11 = *(v2 + 8);
  v0[17] = v11;
  v0[18] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v1, v3);
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    sub_226E97D1C(v0[12], &qword_27D7B9690, qword_227670B50);
    v12 = sub_227664710();
    sub_2274FCDC8(&qword_27D7B9EB8, MEMORY[0x277D50BA8]);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D50B90], v12);
    swift_willThrow();
    v15 = v0[15];
    v14 = v0[16];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[8];

    v19 = v0[1];

    return v19();
  }

  else
  {
    v21 = v0[15];
    v22 = v0[13];
    v23 = v0[4];
    v24 = v0[5];
    (*(v0[14] + 32))(v0[16], v0[12], v22);
    v25 = objc_opt_self();
    v26 = sub_2276626A0();
    sub_227662740();
    v27 = sub_2276626A0();
    v11(v21, v22);
    v28 = [v25 predicateForSamplesWithStartDate:v26 endDate:v27 options:0];
    v0[19] = v28;

    v29 = [v25 predicateForWorkoutsWithOperatorType:3 duration:v10];
    v0[20] = v29;
    sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5E0, &unk_227675900);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_2276728D0;
    v31 = *MEMORY[0x277CCC7A8];
    v32 = sub_22766C000();
    v34 = v33;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_22701311C();
    *(v30 + 32) = v32;
    *(v30 + 40) = v34;
    *(v30 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
    *(v30 + 104) = sub_227013170();
    *(v30 + 72) = v23;

    v35 = sub_22766C7F0();
    v0[21] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_2276856D0;
    *(v36 + 32) = v28;
    *(v36 + 40) = v29;
    *(v36 + 48) = v35;
    v37 = v28;
    v38 = v29;
    v39 = v35;
    v40 = sub_22766C2B0();

    v41 = [objc_opt_self() andPredicateWithSubpredicates_];
    v0[22] = v41;

    v42 = [objc_allocWithZone(MEMORY[0x277CCAC98]) initWithKey:*MEMORY[0x277CCCD50] ascending:0];
    v0[23] = v42;
    v43 = swift_task_alloc();
    v0[24] = v43;
    v43[2] = v41;
    v43[3] = v42;
    v43[4] = v24;
    v44 = *(MEMORY[0x277D85A40] + 4);
    v45 = swift_task_alloc();
    v0[25] = v45;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BE8, &unk_227675760);
    *v45 = v0;
    v45[1] = sub_2274FC4EC;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000029, 0x80000002276A2D70, sub_2274FCDBC, v43, v46);
  }
}