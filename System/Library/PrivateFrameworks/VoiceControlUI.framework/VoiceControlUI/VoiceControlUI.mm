uint64_t sub_27240820C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, double a6, CGFloat a7)
{
  v57 = a7;
  v56 = a6;
  v55 = a3;
  v54 = a1;
  v10 = sub_272433E50();
  v11 = *(v10 - 8);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v62 = &v52 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F98);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = sub_272433E70();
  (*(*(v20 - 8) + 16))(v19, a5, v20);
  v21 = *(v17 + 44);
  sub_272409ABC();
  sub_272434AE0();
  sub_272434B00();
  if (*&v19[v21] == v65)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_3:
    sub_272409BB4(v19);
    v23 = *(v22 + 2);
    if (v23)
    {
      v24 = v22 + 56;
      v25 = *(v22 + 7);
      v26 = *(v22 + 4);
      v27 = *(v22 + 5);
      v28 = *(v22 + 6);
      do
      {
        *&v26 = CGRectUnion(*&v26, *(v24 - 24));
        v24 += 32;
        --v23;
      }

      while (v23);
    }
  }

  v29 = a2;
  v30 = 0;
  v60 = (v11 + 32);
  v61 = (v11 + 16);
  v59 = (v11 + 8);
  v31 = 0.0;
  v22 = MEMORY[0x277D84F90];
  v53 = v29 & 1;
  v52 = a4 & 1;
  v32 = 0.0;
  v33 = 0.0;
  while (1)
  {
    v34 = sub_272434B20();
    v35 = v62;
    (*v61)(v62);
    v34(&v65, 0);
    sub_272434B10();
    (*v60)(v14, v35, v10);
    if (v30)
    {
      v30 = 1;
      v36 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
      v39 = 0.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    LOBYTE(v65) = v53;
    LOBYTE(v63) = v52;
    sub_272433E30();
    v38 = v40;
    v39 = v41;
    if (v31 + v40 <= v56)
    {
      v42 = v31;
    }

    else
    {
      v32 = v32 + v33 + v58[1];
      v33 = 0.0;
      v42 = 0.0;
    }

    v69.origin.x = v42;
    v69.origin.y = v32;
    v69.size.width = v38;
    v69.size.height = v39;
    if (CGRectGetMaxY(v69) > v57)
    {
      v30 = 1;
      v36 = 0.0;
      v37 = 0.0;
      v38 = 0.0;
      v31 = v42;
      v39 = 0.0;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_29;
      }

      v31 = v42;
      goto LABEL_25;
    }

    v43 = v58;
    v44 = *v58;
    v70.origin.x = v42;
    v70.origin.y = v32;
    v70.size.width = v38;
    v70.size.height = v39;
    Height = CGRectGetHeight(v70);
    if (v33 <= Height)
    {
      v33 = Height;
    }

    v67 = *(v43 + 2);
    v46 = *(v43 + 6);
    v68 = v46;
    v65 = *(v43 + 2);
    v66 = v46;
    sub_272409B14(&v68, &v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FB0);
    sub_272434730();
    if ((v64 & 1) == 0)
    {
      break;
    }

    v47 = 1;
LABEL_23:
    v31 = v42 + v38 + v44;
    v65 = v67;
    v66 = v46;
    v63 = v47;
    v64 = 0;
    sub_272434740();
    sub_272409B84(v58);
    v30 = 0;
    v36 = v42;
    v37 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_29:
      v22 = sub_272414EFC(0, *(v22 + 2) + 1, 1, v22);
      goto LABEL_25;
    }

    v36 = v42;
    v37 = v32;
LABEL_25:
    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    if (v50 >= v49 >> 1)
    {
      v22 = sub_272414EFC((v49 > 1), v50 + 1, 1, v22);
    }

    (*v59)(v14, v10);
    *(v22 + 2) = v50 + 1;
    v51 = &v22[32 * v50];
    *(v51 + 4) = v36;
    *(v51 + 5) = v37;
    *(v51 + 6) = v38;
    *(v51 + 7) = v39;
    sub_272434B00();
    if (*&v19[v21] == v65)
    {
      goto LABEL_3;
    }
  }

  v65 = v67;
  v66 = v46;
  result = sub_272434730();
  if (v64)
  {
    goto LABEL_32;
  }

  v47 = v63 + 1;
  if (!__OFADD__(v63, 1))
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2724087DC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v100 = a9;
  v17 = sub_272433F20();
  v87 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v96 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v95 = &v85 - v20;
  v105 = sub_272433E50();
  v21 = *(v105 - 8);
  v22 = MEMORY[0x28223BE20](v105);
  v110 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v108 = &v85 - v25;
  MEMORY[0x28223BE20](v24);
  *&MinX = &v85 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F98);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v85 - v29;
  v102 = a1;
  v31 = *&a1;
  v103 = a2;
  if (a2)
  {
    v31 = 1.79769313e308;
  }

  v89 = v31;
  v104 = a3;
  v32 = *&a3;
  v101 = a4;
  if (a4)
  {
    v32 = 1.79769313e308;
  }

  v88 = v32;
  v33 = sub_272433E70();
  (*(*(v33 - 8) + 16))(v30, a5, v33);
  v34 = *(v28 + 44);
  sub_272409ABC();
  sub_272434AE0();
  sub_272434B00();
  v35 = *&v34[v30] == v113;
  v99 = a8;
  v98 = a6;
  v97 = v17;
  v86 = v21;
  v94 = a7;
  if (!v35)
  {
    v59 = 0;
    *&MinY = v21 + 16;
    v93 = (v21 + 32);
    v91 = (v21 + 8);
    v60 = 0.0;
    v109 = MEMORY[0x277D84F90];
    v61 = 0.0;
    v62 = 0.0;
    v63 = v105;
    v64 = v108;
    v92 = v34;
    while (1)
    {
      v65 = sub_272434B20();
      v66 = MinX;
      (**&MinY)(COERCE_DOUBLE(*&MinX));
      v65(&v113, 0);
      sub_272434B10();
      (*v93)(v64, COERCE_DOUBLE(*&v66), v63);
      if (v59)
      {
        v67 = v109;
        v59 = 1;
        v68 = 0.0;
        v69 = 0.0;
        v70 = 0.0;
        v71 = 0.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        LOBYTE(v113) = v103 & 1;
        LOBYTE(v111) = v101 & 1;
        sub_272433E30();
        v70 = v72;
        v71 = v73;
        if (v89 >= v60 + v72)
        {
          v74 = v60;
        }

        else
        {
          v61 = v61 + v62 + v90[1];
          v62 = 0.0;
          v74 = 0.0;
        }

        v123.origin.x = v74;
        v123.origin.y = v61;
        v123.size.width = v70;
        v123.size.height = v71;
        if (v88 >= CGRectGetMaxY(v123))
        {
          v75 = v90;
          v76 = *v90;
          v124.origin.x = v74;
          v124.origin.y = v61;
          v124.size.width = v70;
          v124.size.height = v71;
          Height = CGRectGetHeight(v124);
          if (v62 <= Height)
          {
            v62 = Height;
          }

          v115 = *(v75 + 2);
          v78 = *(v75 + 6);
          v116 = v78;
          v113 = *(v75 + 2);
          v114 = v78;
          sub_272409B14(&v116, &v111);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FB0);
          sub_272434730();
          if (v112)
          {
            v79 = 1;
          }

          else
          {
            v113 = v115;
            v114 = v78;
            result = sub_272434730();
            if (v112)
            {
              goto LABEL_39;
            }

            v79 = v111 + 1;
            if (__OFADD__(v111, 1))
            {
              __break(1u);
              goto LABEL_37;
            }
          }

          v60 = v74 + v70 + v76;
          v113 = v115;
          v114 = v78;
          v111 = v79;
          v112 = 0;
          sub_272434740();
          sub_272409B84(v90);
          v67 = v109;
          v59 = 0;
          v68 = v74;
          v69 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_35:
            v67 = sub_272414EFC(0, *(v67 + 2) + 1, 1, v67);
            goto LABEL_31;
          }

          v68 = v74;
          v69 = v61;
        }

        else
        {
          v67 = v109;
          v59 = 1;
          v68 = 0.0;
          v69 = 0.0;
          v70 = 0.0;
          v60 = v74;
          v71 = 0.0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_35;
          }

          v60 = v74;
        }
      }

LABEL_31:
      v81 = *(v67 + 2);
      v80 = *(v67 + 3);
      v109 = v67;
      v63 = v105;
      if (v81 >= v80 >> 1)
      {
        v84 = sub_272414EFC((v80 > 1), v81 + 1, 1, v109);
        v63 = v105;
        v109 = v84;
      }

      v64 = v108;
      (*v91)(v108, v63);
      v82 = v109;
      *(v109 + 2) = v81 + 1;
      v83 = &v82[32 * v81];
      *(v83 + 4) = v68;
      *(v83 + 5) = v69;
      *(v83 + 6) = v70;
      *(v83 + 7) = v71;
      sub_272434B00();
      if (*&v92[v30] == v113)
      {
        goto LABEL_8;
      }
    }
  }

  v109 = MEMORY[0x277D84F90];
LABEL_8:
  sub_272409BB4(v30);
  sub_272434AE0();
  sub_272434B00();
  result = sub_272434AF0();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_37:
    __break(1u);
  }

  else
  {
    v37 = result;
    if (!result)
    {
    }

    if (result <= *(v109 + 2))
    {
      v38 = 0;
      v93 = (v87 + 8);
      v91 = (v86 + 8);
      v39 = (v109 + 56);
      v92 = v37;
      v40 = (v87 + 8);
      do
      {
        v108 = v38 + 1;
        sub_272433E80();
        v41 = *(v39 - 3);
        v42 = *(v39 - 2);
        v43 = *(v39 - 1);
        v44 = *v39;
        v117.origin.x = v41;
        v117.origin.y = v42;
        v117.size.width = v43;
        v117.size.height = *v39;
        MinX = CGRectGetMinX(v117);
        v45 = v98;
        v118.origin.x = v98;
        v46 = v94;
        v118.origin.y = v94;
        v47 = v99;
        v118.size.width = v99;
        v48 = v100;
        v118.size.height = v100;
        MinX = MinX + CGRectGetMinX(v118);
        v119.origin.x = v41;
        v119.origin.y = v42;
        v119.size.width = v43;
        v119.size.height = v44;
        MinY = CGRectGetMinY(v119);
        v120.origin.x = v45;
        v120.origin.y = v46;
        v120.size.width = v47;
        v120.size.height = v48;
        v49 = MinY + CGRectGetMinY(v120);
        v121.origin.x = v41;
        v121.origin.y = v42;
        v121.size.width = v43;
        v121.size.height = v44;
        CGRectGetWidth(v121);
        v122.origin.x = v41;
        v122.origin.y = v42;
        v122.size.width = v43;
        v122.size.height = v44;
        CGRectGetHeight(v122);
        CGSizeMake(MinX, v49);
        sub_272434890();
        v50 = v103 & 1;
        LOBYTE(v113) = v103 & 1;
        v51 = v101 & 1;
        LOBYTE(v111) = v101 & 1;
        v52 = v95;
        sub_272433E20();
        sub_272433F00();
        v54 = v53;
        v55 = *v40;
        v56 = v52;
        v57 = v97;
        (*v40)(v56, v97);
        MinX = v54;
        LOBYTE(v113) = v50;
        LOBYTE(v111) = v51;
        v58 = v96;
        sub_272433E20();
        sub_272433F10();
        v55(v58, v57);
        LOBYTE(v113) = 0;
        LOBYTE(v111) = 0;
        sub_272433E40();
        (*v91)(v110, v105);
        v39 += 4;
        v38 = v108;
      }

      while (v92 != v108);
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void (*sub_272409370(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_272433CA0();
  return sub_2724093F8;
}

void sub_2724093F8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2724095F8()
{
  result = qword_280895F38;
  if (!qword_280895F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F30);
    sub_272409784(&qword_280895F40, &qword_280895F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F38);
  }

  return result;
}

unint64_t sub_27240969C()
{
  result = qword_280895F50;
  if (!qword_280895F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F58);
    sub_272409784(&qword_280895F60, &qword_280895F58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F50);
  }

  return result;
}

uint64_t sub_272409784(unint64_t *a1, uint64_t *a2)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2724097E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_272409808(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
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

uint64_t sub_272409878(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_2724098D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_272409964(uint64_t a1, int a2)
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

uint64_t sub_272409984(uint64_t result, int a2, int a3)
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

void sub_2724099C0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_272409A10()
{
  result = qword_280895F88;
  if (!qword_280895F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F88);
  }

  return result;
}

unint64_t sub_272409A68()
{
  result = qword_280895F90;
  if (!qword_280895F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895F90);
  }

  return result;
}

unint64_t sub_272409ABC()
{
  result = qword_280895FA0;
  if (!qword_280895FA0)
  {
    sub_272433E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895FA0);
  }

  return result;
}

uint64_t sub_272409B14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272409BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_272409C50@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_272435CF0;
  v5 = sub_2724343C0();
  *(inited + 32) = v5;
  v6 = sub_2724343E0();
  *(inited + 33) = v6;
  v7 = sub_2724343D0();
  sub_2724343D0();
  if (sub_2724343D0() != v5)
  {
    v7 = sub_2724343D0();
  }

  sub_2724343D0();
  if (sub_2724343D0() != v6)
  {
    v7 = sub_2724343D0();
  }

  sub_272409E28(a1, &v15);
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v18;
  v31[0] = v15;
  v31[1] = v16;
  v31[2] = v17;
  v31[3] = v18;
  v31[4] = v19;
  v31[5] = v20;
  v31[6] = v21;
  v32 = v22;
  sub_27240A0F0(&v23, &v14, &qword_280895FC0);
  sub_27240A158(v31, &qword_280895FC0);
  *&v33[23] = v24;
  *&v33[7] = v23;
  *&v33[87] = v28;
  *&v33[71] = v27;
  *&v33[103] = v29;
  *&v33[119] = v30;
  *&v33[39] = v25;
  *&v33[55] = v26;
  *a2 = v7;
  v8 = *v33;
  v9 = *&v33[16];
  v10 = *&v33[32];
  *(a2 + 49) = *&v33[48];
  *(a2 + 33) = v10;
  *(a2 + 17) = v9;
  *(a2 + 1) = v8;
  result = *&v33[64];
  v12 = *&v33[80];
  v13 = *&v33[96];
  *(a2 + 112) = *&v33[111];
  *(a2 + 97) = v13;
  *(a2 + 81) = v12;
  *(a2 + 65) = result;
  return result;
}

uint64_t sub_272409E28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2724340D0();
  sub_272409F88(a1, &v29);
  v5 = v29;
  v6 = v30;
  v7 = v31;
  v8 = v32;
  v9 = v33;
  v10 = v34;
  LOBYTE(v29) = v33;
  sub_272434850();
  sub_272433DE0();
  v11 = v19;
  v12 = v21;
  *&v24 = v4;
  *(&v24 + 1) = 0x3FF0000000000000;
  LOBYTE(v25) = 0;
  *(&v25 + 1) = v5;
  LOBYTE(v26) = v6;
  *(&v26 + 1) = v7;
  *&v27 = v8;
  BYTE8(v27) = v9;
  v28 = v10;
  v18[80] = v20;
  v18[72] = v22;
  v13 = v20;
  v14 = v22;
  v15 = v27;
  *(a2 + 32) = v26;
  *(a2 + 48) = v15;
  v16 = v25;
  *a2 = v24;
  *(a2 + 16) = v16;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v13;
  *(a2 + 88) = v12;
  *(a2 + 96) = v14;
  *(a2 + 104) = v23;
  v29 = v4;
  v30 = 0x3FF0000000000000;
  LOBYTE(v31) = 0;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v36 = v9;
  v37 = v10;
  sub_27240A0F0(&v24, v18, &qword_280895FC8);
  return sub_27240A158(&v29, &qword_280895FC8);
}

uint64_t sub_272409F88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  if ([v3 isWhiteSpace])
  {

    v4 = 0;
  }

  else
  {
    v5 = v3;
    v4 = v3;
  }

  v6 = [v3 displayedText];
  v7 = [v6 string];

  sub_272434930();
  sub_27240A1B8();
  v8 = sub_2724344C0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v4;
  v12 &= 1u;
  sub_27240A20C(v8, v10, v12);

  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  sub_27240A21C(v8, v10, v12);
}

uint64_t sub_27240A0F0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_27240A158(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_27240A1B8()
{
  result = qword_280895FD0;
  if (!qword_280895FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895FD0);
  }

  return result;
}

uint64_t sub_27240A20C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_27240A21C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_27240A230()
{
  result = qword_280895FD8;
  if (!qword_280895FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280895FD8);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_27240A2B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_27240A2F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27240A374@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FE8);
  v62 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v61 = v59 - v2;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FF0);
  MEMORY[0x28223BE20](v76);
  v78 = v59 - v3;
  v74 = sub_272434340();
  v65 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v64 = (v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v75 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F20));
  v63 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = v59 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895FF8);
  v67 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v66 = v59 - v6;
  v70 = sub_272434330();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v82 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000));
  v81 = *(v82 - 8);
  v9 = MEMORY[0x28223BE20](v82);
  v60 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[2] = v10;
  MEMORY[0x28223BE20](v9);
  v12 = v59 - v11;
  v13 = *(v1 + 24);
  v59[0] = *(v1 + 16);
  OpaqueTypeConformance2 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  v59[1] = v13;
  sub_272433C00();

  x = v85.origin.x;
  y = v85.origin.y;
  width = v85.size.width;
  height = v85.size.height;
  MinX = CGRectGetMinX(v85);
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = width;
  v92.size.height = height;
  MaxY = CGRectGetMaxY(v92);
  v20 = sub_2724340D0();
  sub_27240AFDC(&v85);
  v21 = v85.origin.x;
  v22 = *&v85.origin.y;
  v23 = *&v85.size.width;
  v24 = BYTE1(v85.size.height);
  height_low = LOBYTE(v85.size.height);
  v91 = 1;
  v90 = BYTE1(v85.size.height);
  *&v85.origin.x = v20;
  v85.origin.y = 0.0;
  LOBYTE(v85.size.width) = 1;
  v85.size.height = v21;
  v86 = *&v22;
  v87 = v23;
  LOBYTE(v88) = height_low;
  BYTE1(v88) = v90;
  sub_272434320();
  *&v26 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F58));
  *&v27 = COERCE_DOUBLE(sub_272409784(&qword_280895F60, &qword_280895F58));
  v83 = v12;
  v72 = *&v26;
  v28 = v70;
  v71 = *&v27;
  sub_272434600();
  v29 = *(v69 + 8);
  v29(v8, v28);
  sub_27240B3FC(*&v21, v22, v23, height_low, v24);
  if (*(OpaqueTypeConformance2 + 48))
  {
    *&v85.origin.x = sub_2724340D0();
    v85.origin.y = 0.0;
    LOBYTE(v85.size.width) = 1;
    v85.size.height = MinX;
    v86 = MaxY;
    sub_272434320();
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F30);
    v30 = sub_2724095F8();
    sub_272434600();
    v29(v8, v28);
    type metadata accessor for VCUIBadgedTextOverlayModel();
    sub_27240B410();
    sub_272433EA0();
    swift_getKeyPath();
    sub_272433EB0();

    LODWORD(v70) = v84;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    v31 = sub_272434770();
    v32 = v64;
    *v64 = v31;
    v33 = v65;
    (*(v65 + 104))(v32, *MEMORY[0x277CDE248], v74);
    v34 = v81;
    v35 = v60;
    v36 = v82;
    (*(v81 + 16))(v60, v83, v82);
    v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v38 = swift_allocObject();
    (*(v34 + 32))(v38 + v37, v35, v36);
    MEMORY[0x2743C8A70](2);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F28);
    *&v85.origin.x = v69;
    *&v85.origin.y = v30;
    v69 = MEMORY[0x277CDED28];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v58 = sub_27240969C();
    v40 = *&v75;
    v41 = v66;
    v42 = v73;
    sub_272434520();

    (*(v33 + 8))(v32, v74);
    (*(v63 + 8))(v42, COERCE_CGFLOAT(*&v40));
    v43 = v67;
    v44 = v41;
    v45 = v77;
    (*(v67 + 16))(v78, v41, v77);
    swift_storeEnumTagMultiPayload();
    v85.origin.x = v40;
    *&v85.origin.y = v39;
    *&v85.size.width = OpaqueTypeConformance2;
    *&v85.size.height = v58;
    v46 = *&v82;
    swift_getOpaqueTypeConformance2();
    v85.origin.x = v72;
    v85.origin.y = v71;
    v47 = swift_getOpaqueTypeConformance2();
    v85.origin.x = v46;
    *&v85.origin.y = MEMORY[0x277CE1350];
    *&v85.size.width = v39;
    *&v85.size.height = v39;
    v86 = *&v47;
    v87 = MEMORY[0x277CE1340];
    v88 = v58;
    v89 = v58;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    (*(v43 + 8))(v44, v45);
  }

  else
  {
    sub_272434840();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F28);
    v85.origin.x = v72;
    v85.origin.y = v71;
    v49 = swift_getOpaqueTypeConformance2();
    v57 = sub_27240969C();
    v50 = v61;
    v46 = *&v82;
    sub_272434680();
    v51 = v62;
    v52 = v80;
    (*(v62 + 16))(v78, v50, v80);
    swift_storeEnumTagMultiPayload();
    v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F30);
    v54 = sub_2724095F8();
    *&v85.origin.x = v53;
    *&v85.origin.y = v54;
    v55 = swift_getOpaqueTypeConformance2();
    *&v85.origin.x = v75;
    *&v85.origin.y = v48;
    *&v85.size.width = v55;
    *&v85.size.height = v57;
    swift_getOpaqueTypeConformance2();
    v85.origin.x = v46;
    *&v85.origin.y = MEMORY[0x277CE1350];
    *&v85.size.width = v48;
    *&v85.size.height = v48;
    v86 = *&v49;
    v87 = MEMORY[0x277CE1340];
    v88 = v57;
    v89 = v57;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    (*(v51 + 8))(v50, v52);
  }

  return (*(v81 + 8))(v83, COERCE_CGFLOAT(*&v46));
}

uint64_t sub_27240AFDC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    sub_27240EE70(3, 1, 0, 1, *(&v3 + 1));

LABEL_5:
    sub_27240B590();
    sub_27240B5E4();
    sub_272434290();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896020);
    sub_27240B638();
    result = sub_272434290();
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v5;
    *(a1 + 25) = v6;
    return result;
  }

  if (!v3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_272433C00();

    sub_27240EE70(2, 0, 1, 0, *(&v3 + 1));

    goto LABEL_5;
  }

  result = sub_272434CC0();
  __break(1u);
  return result;
}

double sub_27240B2E8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *&result = sub_27240B2F8(a1, a2, _Q0).n128_u64[0];
  return result;
}

double sub_27240B2F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __asm { FMOV            V0.2D, #5.0 }

  *&result = sub_27240B2F8(a1, a2, _Q0).n128_u64[0];
  return result;
}

__n128 sub_27240B2F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v5 = sub_2724343F0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280895F28) + 36);
  *v7 = v5;
  result = a3;
  *(v7 + 8) = a3;
  *(v7 + 24) = a3;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_27240B3FC(uint64_t result, uint64_t a2, uint64_t a3, char a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    return j__swift_bridgeObjectRelease(result, a2, a3, a4 & 1);
  }

  return result;
}

unint64_t sub_27240B410()
{
  result = qword_280896008;
  if (!qword_280896008)
  {
    type metadata accessor for VCUIBadgedTextOverlayModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896008);
  }

  return result;
}

uint64_t sub_27240B470()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_27240B504@<D0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896000) - 8);
  __asm { FMOV            V0.2D, #5.0 }

  *&result = sub_27240B2F8(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)), a1, _Q0).n128_u64[0];
  return result;
}

unint64_t sub_27240B590()
{
  result = qword_280896010;
  if (!qword_280896010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896010);
  }

  return result;
}

unint64_t sub_27240B5E4()
{
  result = qword_280896018;
  if (!qword_280896018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896018);
  }

  return result;
}

unint64_t sub_27240B638()
{
  result = qword_280896028;
  if (!qword_280896028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896020);
    sub_27240B590();
    sub_27240B5E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896028);
  }

  return result;
}

unint64_t sub_27240B6C8()
{
  result = qword_280896030;
  if (!qword_280896030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896038);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F30);
    sub_2724095F8();
    swift_getOpaqueTypeConformance2();
    sub_27240969C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896000);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280895F58);
    sub_272409784(&qword_280895F60, &qword_280895F58);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896030);
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

uint64_t sub_27240B8C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27240B910(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27240B97C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896088);
  sub_272434720();
  *a2 = xmmword_272436010;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  if (a1 >> 62 && sub_272434CD0() < 0)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896040);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896078);
  sub_27240BE90();
  sub_27240BD74();
  return sub_272434830();
}

uint64_t sub_27240BB28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = *a1;
  if (result > 49)
  {
    result = 0;
    goto LABEL_7;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x2743C92B0]();
    goto LABEL_7;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (result < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(a2 + 8 * result + 32);
LABEL_7:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_27240BB98()
{
  sub_2724343E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896040);
  sub_27240BC38();
  return sub_272433D20();
}

unint64_t sub_27240BC38()
{
  result = qword_280896048;
  if (!qword_280896048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896040);
    sub_27240BFB4(&qword_280896050, &qword_280896058);
    sub_27240BCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896048);
  }

  return result;
}

unint64_t sub_27240BCF0()
{
  result = qword_280896060;
  if (!qword_280896060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896068);
    sub_27240BD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896060);
  }

  return result;
}

unint64_t sub_27240BD74()
{
  result = qword_280896070;
  if (!qword_280896070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896078);
    sub_27240BDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896070);
  }

  return result;
}

unint64_t sub_27240BDF8()
{
  result = qword_280896080;
  if (!qword_280896080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896080);
  }

  return result;
}

uint64_t sub_27240BE4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_27240BE90()
{
  result = qword_280896098;
  if (!qword_280896098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896090);
    sub_27240BF1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896098);
  }

  return result;
}

unint64_t sub_27240BF1C()
{
  result = qword_2808960A0;
  if (!qword_2808960A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808960A0);
  }

  return result;
}

uint64_t sub_27240BFB4(unint64_t *a1, uint64_t *a2)
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

uint64_t sub_27240BFFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27240C044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27240C0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v24 = a3;
  v3 = sub_272433F80();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960C0);
  v23 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v11 = &v17 - v10;
  sub_272434120();
  v12 = swift_allocObject();
  *(v12 + 16) = v18;
  *(v12 + 24) = v19;

  sub_2724347A0();
  sub_272433F70();
  v13 = sub_27240BFB4(&qword_280896620, &qword_2808960B8);
  sub_272434550();
  (*(v21 + 8))(v5, v22);
  (*(v7 + 8))(v9, v6);
  KeyPath = swift_getKeyPath();
  v26 = v13;
  v27 = KeyPath;
  v28 = 0;
  v25 = v6;
  swift_getOpaqueTypeConformance2();
  sub_27240E6AC();
  v15 = v20;
  sub_272434510();
  sub_27240E700(v27, v28);
  return (*(v23 + 8))(v11, v15);
}

uint64_t sub_27240C3FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_27240C45C@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = sub_272434170();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960D0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - v6);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960D8);
  MEMORY[0x28223BE20](v21);
  v9 = &v19 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  *v7 = sub_272434850();
  v7[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960E0);
  sub_27240C7D8(v10, v11, (v7 + *(v13 + 44)));
  v25 = v10;
  v26 = v11;
  v23 = sub_27240E1E8();
  v24 = v14;
  sub_27240BFB4(&qword_2808960E8, &qword_2808960D0);
  sub_27240A1B8();
  sub_272434560();

  sub_27240A158(v7, &qword_2808960D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968D0);
  v15 = v19;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_272435CF0;
  sub_272434160();
  sub_272434150();
  v23 = v16;
  sub_27240EE28(&qword_2808960F0, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968E0);
  sub_27240BFB4(&qword_2808960F8, &unk_2808968E0);
  v17 = v20;
  sub_272434C50();
  sub_272433F30();
  (*(v15 + 8))(v4, v17);
  return sub_27240A158(v9, &qword_2808960D8);
}

uint64_t sub_27240C7D8@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v25 = a2;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896100);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = (&v24 - v8);
  v10 = objc_opt_self();
  v11 = [v10 systemGrayColor];
  v12 = sub_272434690();
  v24 = v12;
  CGSizeMake(75.0, 75.0);
  sub_272434850();
  sub_272433DE0();
  *&v28[3] = *&v28[27];
  *&v28[11] = *&v28[35];
  *&v28[19] = *&v28[43];
  v13 = [v10 systemBackgroundColor];
  v14 = sub_272434690();
  CGSizeMake(66.0, 66.0);
  sub_272434850();
  sub_272433DE0();
  *&v27[6] = *&v28[51];
  *&v27[22] = *&v28[59];
  *&v27[38] = *&v28[67];
  *v9 = sub_272434850();
  v9[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896108);
  sub_27240CB64(v26, v25 & 1, v9 + *(v16 + 44));
  sub_27240A0F0(v9, v7, &qword_280896100);
  *&v29[0] = v12;
  WORD4(v29[0]) = 256;
  *(v29 + 10) = *v28;
  *(&v29[1] + 10) = *&v28[8];
  *(&v29[2] + 10) = *&v28[16];
  *(&v29[3] + 1) = *&v28[23];
  *&v30[0] = v14;
  v17 = v29[1];
  *a3 = v29[0];
  a3[1] = v17;
  v18 = v29[3];
  a3[2] = v29[2];
  a3[3] = v18;
  WORD4(v30[0]) = 256;
  *(v30 + 10) = *v27;
  *(&v30[3] + 1) = *&v27[46];
  *(&v30[2] + 10) = *&v27[32];
  *(&v30[1] + 10) = *&v27[16];
  v19 = v30[0];
  v20 = v30[1];
  v21 = v30[3];
  a3[6] = v30[2];
  a3[7] = v21;
  a3[4] = v19;
  a3[5] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896110);
  sub_27240A0F0(v7, a3 + *(v22 + 64), &qword_280896100);
  sub_27240A0F0(v29, &v36, &qword_280896118);
  sub_27240A0F0(v30, &v36, &qword_280896118);
  sub_27240A158(v9, &qword_280896100);
  sub_27240A158(v7, &qword_280896100);
  v31 = v14;
  v32 = 256;
  v33 = *v27;
  v34 = *&v27[16];
  *v35 = *&v27[32];
  *&v35[14] = *&v27[46];
  sub_27240A158(&v31, &qword_280896118);
  v36 = v24;
  v37 = 256;
  v38 = *v28;
  v39 = *&v28[8];
  *v40 = *&v28[16];
  *&v40[14] = *&v28[23];
  return sub_27240A158(&v36, &qword_280896118);
}

uint64_t sub_27240CB64@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v118 = a1;
  v123 = a3;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896120);
  MEMORY[0x28223BE20](v116);
  v92 = &v91 - v3;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896128);
  MEMORY[0x28223BE20](v110);
  v93 = &v91 - v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896130);
  MEMORY[0x28223BE20](v113);
  v115 = &v91 - v5;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896138);
  MEMORY[0x28223BE20](v108);
  v109 = &v91 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896140);
  MEMORY[0x28223BE20](v114);
  v111 = &v91 - v7;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896148);
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v91 - v8;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896150);
  MEMORY[0x28223BE20](v112);
  v94 = &v91 - v9;
  v126 = sub_2724340A0();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896158);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v122 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v121 = &v91 - v14;
  v15 = sub_272433F50();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896160);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v91 - v24;
  v26 = [objc_opt_self() systemRedColor];
  v120 = sub_272434690();
  CGSizeMake(60.0, 60.0);
  sub_272434850();
  sub_272433DE0();
  *&v134[6] = v135;
  *&v134[22] = v136;
  *&v134[38] = v137;
  sub_2724348A0();
  sub_272433F60();
  sub_272434860();
  v27 = sub_27240EE28(&qword_280896168, MEMORY[0x277CDFAE8]);
  sub_272433D30();

  v28 = *(v16 + 8);
  v100 = v18;
  v104 = v16 + 8;
  v98 = v28;
  v28(v18, v15);
  v99 = *(v20 + 16);
  v99(v23, v25, v19);
  v101 = v15;
  v129 = v15;
  v97 = v27;
  *v130 = v27;
  v29 = v126;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v102 = v23;
  v31 = v19;
  v119 = sub_272433DF0();
  v32 = *(v20 + 8);
  v95 = v25;
  v106 = v20 + 8;
  v96 = v32;
  v32(v25, v19);
  v33 = v117;
  v34 = v125;
  v35 = v124;
  v36 = v118;
  if (v117)
  {
    LOBYTE(v129) = v118;
    v37 = v118;
  }

  else
  {
    sub_27240E918(v118, 0);
    sub_272434B50();
    v38 = sub_2724343B0();
    sub_272433B90();

    sub_272434090();
    swift_getAtKeyPath();
    sub_27240E700(v36, 0);
    (*(v34 + 8))(v35, v29);
    v37 = v129;
  }

  if (v37 == 3)
  {

LABEL_7:
    sub_2724346F0();
    v40 = v103;
    sub_272434700();

    swift_getOpaqueTypeConformance2();
    v41 = v94;
    v42 = v107;
    sub_272434610();
    (*(v105 + 8))(v40, v42);
    v43 = sub_2724346C0();
    *(v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896188) + 36)) = v43;
    sub_2724348A0();
    v44 = v100;
    sub_272433F60();
    sub_272434860();
    v45 = v95;
    v46 = v101;
    sub_272433D30();

    v98(v44, v46);
    v99(v102, v45, v31);
    v47 = sub_272433DF0();
    v96(v45, v31);
    *(v41 + *(v112 + 36)) = v47;
    v48 = &qword_280896150;
    sub_27240A0F0(v41, v109, &qword_280896150);
    swift_storeEnumTagMultiPayload();
    sub_27240E9B0();
    sub_27240EB74();
    v49 = v111;
    sub_272434290();
    sub_27240A0F0(v49, v115, &qword_280896140);
    swift_storeEnumTagMultiPayload();
    sub_27240E924();
    sub_27240EC58();
    v50 = v121;
    sub_272434290();
    sub_27240A158(v49, &qword_280896140);
    v51 = v41;
LABEL_30:
    sub_27240A158(v51, v48);
    goto LABEL_31;
  }

  v39 = sub_272434CF0();

  if (v39)
  {
    goto LABEL_7;
  }

  v118 = OpaqueTypeConformance2;
  if (v33)
  {
    LOBYTE(v129) = v36;
    v52 = v36;
  }

  else
  {
    sub_27240E918(v36, 0);
    sub_272434B50();
    v53 = sub_2724343B0();
    sub_272433B90();

    v54 = v124;
    sub_272434090();
    swift_getAtKeyPath();
    sub_27240E700(v36, 0);
    (*(v125 + 8))(v54, v126);
    v52 = v129;
  }

  if (v52 > 2u && v52 <= 4u && v52 != 3)
  {

LABEL_16:
    v56 = v93;
    sub_272433DD0();
    v57 = sub_2724346C0();
    KeyPath = swift_getKeyPath();
    v59 = (v56 + *(v110 + 36));
    *v59 = KeyPath;
    v59[1] = v57;
    sub_27240A0F0(v56, v109, &qword_280896128);
    swift_storeEnumTagMultiPayload();
    sub_27240E9B0();
    sub_27240EB74();
    v60 = v111;
    sub_272434290();
    sub_27240A0F0(v60, v115, &qword_280896140);
    swift_storeEnumTagMultiPayload();
    sub_27240E924();
    sub_27240EC58();
    v50 = v121;
    sub_272434290();
    sub_27240A158(v60, &qword_280896140);
    sub_27240A158(v56, &qword_280896128);
LABEL_31:
    v68 = 0;
    goto LABEL_32;
  }

  v55 = sub_272434CF0();

  if (v55)
  {
    goto LABEL_16;
  }

  if (v33)
  {
    LOBYTE(v129) = v36;
    v61 = v36;
  }

  else
  {
    sub_27240E918(v36, 0);
    sub_272434B50();
    v62 = sub_2724343B0();
    sub_272433B90();

    v63 = v124;
    sub_272434090();
    swift_getAtKeyPath();
    sub_27240E700(v36, 0);
    (*(v125 + 8))(v63, v126);
    v61 = v129;
  }

  if (v61 == 5)
  {
    goto LABEL_28;
  }

  v64 = sub_272434CF0();

  if (v64)
  {
LABEL_29:
    sub_2724346F0();
    v69 = v103;
    sub_272434700();

    swift_getOpaqueTypeConformance2();
    v70 = v92;
    v71 = v107;
    sub_272434610();
    (*(v105 + 8))(v69, v71);
    v72 = sub_2724346C0();
    *(v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896188) + 36)) = v72;
    sub_2724348A0();
    v73 = v100;
    sub_272433F60();
    sub_272434860();
    v74 = v95;
    v75 = v101;
    sub_272433D30();

    v98(v73, v75);
    v99(v102, v74, v31);
    v76 = sub_272433DF0();
    v96(v74, v31);
    *(v70 + *(v112 + 36)) = v76;
    LOBYTE(v76) = sub_272434410();
    sub_272433CE0();
    v77 = v70 + *(v116 + 36);
    *v77 = v76;
    *(v77 + 8) = v78;
    *(v77 + 16) = v79;
    *(v77 + 24) = v80;
    *(v77 + 32) = v81;
    *(v77 + 40) = 0;
    v48 = &qword_280896120;
    sub_27240A0F0(v70, v115, &qword_280896120);
    swift_storeEnumTagMultiPayload();
    sub_27240E924();
    sub_27240EC58();
    v50 = v121;
    sub_272434290();
    v51 = v70;
    goto LABEL_30;
  }

  if (v33)
  {
    LOBYTE(v129) = v36;
  }

  else
  {
    sub_27240E918(v36, 0);
    sub_272434B50();
    v65 = sub_2724343B0();
    sub_272433B90();

    v66 = v124;
    sub_272434090();
    swift_getAtKeyPath();
    sub_27240E700(v36, 0);
    (*(v125 + 8))(v66, v126);
    LOBYTE(v36) = v129;
  }

  if (v36 > 5u)
  {
LABEL_28:

    goto LABEL_29;
  }

  v67 = sub_272434CF0();

  if (v67)
  {
    goto LABEL_29;
  }

  v68 = 1;
  v50 = v121;
LABEL_32:
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896170);
  (*(*(v82 - 8) + 56))(v50, v68, 1, v82);
  v83 = v122;
  sub_27240A0F0(v50, v122, &qword_280896158);
  v84 = v120;
  *v127 = v120;
  *&v127[8] = 256;
  *&v127[26] = *&v134[16];
  *&v127[10] = *v134;
  *&v127[42] = *&v134[32];
  *&v127[56] = *&v134[46];
  v85 = v119;
  v128 = v119;
  v86 = v123;
  *(v123 + 64) = v119;
  v87 = *&v127[48];
  v86[2] = *&v127[32];
  v86[3] = v87;
  v88 = *&v127[16];
  *v86 = *v127;
  v86[1] = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896178);
  sub_27240A0F0(v83, v86 + *(v89 + 48), &qword_280896158);
  sub_27240A0F0(v127, &v129, &qword_280896180);
  sub_27240A158(v50, &qword_280896158);
  sub_27240A158(v83, &qword_280896158);
  v129 = v84;
  *v130 = 256;
  *&v130[2] = *v134;
  v131 = *&v134[16];
  *v132 = *&v134[32];
  *&v132[14] = *&v134[46];
  v133 = v85;
  return sub_27240A158(&v129, &qword_280896180);
}

uint64_t sub_27240E1E8()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = sub_2724340A0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  if (*(v0 + 8) == 1)
  {
    v22 = *v0;
  }

  else
  {

    sub_272434B50();
    v14 = sub_2724343B0();
    v21 = v8;
    v15 = v2;
    v16 = v14;
    sub_272433B90();

    v2 = v15;
    v8 = v21;
    sub_272434090();
    swift_getAtKeyPath();
    sub_27240E700(v13, 0);
    (*(v10 + 8))(v12, v9);
  }

  sub_2724348F0();
  (*(v3 + 16))(v6, v8, v2);
  sub_27240E8CC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v19 = sub_272434950();
  (*(v3 + 8))(v8, v2);
  return v19;
}

unint64_t sub_27240E6AC()
{
  result = qword_2808960C8;
  if (!qword_2808960C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808960C8);
  }

  return result;
}

uint64_t sub_27240E700(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
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

uint64_t sub_27240E72C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_27240E774(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_27240E7C8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960B8);
  sub_27240BFB4(&qword_280896620, &qword_2808960B8);
  swift_getOpaqueTypeConformance2();
  sub_27240E6AC();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27240E8CC()
{
  result = qword_280896670;
  if (!qword_280896670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896670);
  }

  return result;
}

uint64_t sub_27240E918(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_27240E924()
{
  result = qword_280896190;
  if (!qword_280896190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896140);
    sub_27240E9B0();
    sub_27240EB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896190);
  }

  return result;
}

unint64_t sub_27240E9B0()
{
  result = qword_280896198;
  if (!qword_280896198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896150);
    sub_27240EA68();
    sub_27240BFB4(&qword_2808961B8, &qword_2808961C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896198);
  }

  return result;
}

unint64_t sub_27240EA68()
{
  result = qword_2808961A0;
  if (!qword_2808961A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896148);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27240BFB4(&qword_2808961A8, &qword_2808961B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961A0);
  }

  return result;
}

unint64_t sub_27240EB74()
{
  result = qword_2808961C8;
  if (!qword_2808961C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896128);
    sub_27240BFB4(&qword_2808961D0, &qword_2808961D8);
    sub_27240BFB4(&qword_2808961E0, &qword_2808961E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961C8);
  }

  return result;
}

unint64_t sub_27240EC58()
{
  result = qword_2808961F0;
  if (!qword_2808961F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896120);
    sub_27240E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961F0);
  }

  return result;
}

uint64_t sub_27240ECE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_272434070();
  *a1 = result;
  return result;
}

unint64_t sub_27240ED40()
{
  result = qword_2808961F8;
  if (!qword_2808961F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808960D8);
    sub_27240BFB4(&qword_2808960E8, &qword_2808960D0);
    sub_27240EE28(&qword_280896890, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808961F8);
  }

  return result;
}

uint64_t sub_27240EE28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27240EE70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = 15;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = v10;
  *(v12 + 56) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200);
  sub_27240A1B8();
  sub_27240BFB4(&qword_280896208, &qword_280896200);
  sub_272434C00();

  swift_beginAccess();
  v13 = *(v9 + 16);

  return v13;
}

uint64_t sub_27240F078()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_27240F0C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v85 = a4;
  v17 = sub_272433B30();
  MEMORY[0x28223BE20](v17 - 8);
  v86 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896210);
  v87 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_272433AC0();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a8)
    {
      goto LABEL_6;
    }

    v92 = a1;
    v93 = a2;
    sub_272433AA0();
    sub_27240A1B8();
    v26 = sub_272434BF0();
    v28 = v27;
    (*(v23 + 8))(v25, v22);

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
LABEL_6:
      v83 = v21;
      v84 = v19;
      v82 = a13;
      v30 = a3;
      swift_beginAccess();
      v81 = a9;
      if ((*(a9 + 16) ^ a3) >= 0x4000)
      {
        v77 = *(a9 + 16);
        v78 = a10;
        v90 = a10;
        v91 = a11;
        v80 = a11;
        sub_272433AB0();
        sub_27240A1B8();
        v31 = sub_272434BE0();
        (*(v23 + 8))(v25, v22);
        v90 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896960);
        sub_27240BFB4(&qword_280896218, &qword_280896960);
        sub_2724348E0();

        v32 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v33 = sub_272434910();

        v76 = [v32 initWithString_];

        swift_beginAccess();
        v89 = *(a12 + 16);
        sub_272433B10();
        sub_27240FAA4();
        v34 = v83;
        sub_272433AD0();
        sub_27240BFB4(&qword_280896228, &qword_280896210);
        v35 = v84;
        sub_272434C30();
        (*(v87 + 8))(v34, v35);
        v36 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v37 = sub_272434910();

        v38 = [v36 initWithString_];

        swift_beginAccess();
        v39 = *(a12 + 16);
        v40 = [objc_allocWithZone(VCUIBadgedTextSegmentModel) init];
        v41 = &v40[OBJC_IVAR___VCUIBadgedTextSegmentModel_range];
        swift_beginAccess();
        v42 = v77;
        *v41 = v77;
        *(v41 + 1) = a3;
        v43 = &v40[OBJC_IVAR___VCUIBadgedTextSegmentModel_displayedRange];
        swift_beginAccess();
        *v43 = v42;
        *(v43 + 1) = a3;
        v44 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
        swift_beginAccess();
        v45 = *&v40[v44];
        *&v40[v44] = v76;
        v46 = v40;

        v47 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
        swift_beginAccess();
        v48 = *&v46[v47];
        *&v46[v47] = v38;

        v49 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
        swift_beginAccess();
        *&v46[v49] = v39;

        [v46 setIsWhiteSpace_];
        v50 = v82;
        swift_beginAccess();
        v51 = v46;
        MEMORY[0x2743C9040]();
        if (*((*(v50 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v50 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_272434A70();
        }

        sub_272434A80();
        swift_endAccess();

        v30 = a3;
      }

      v79 = v30;
      v52 = v81;
      swift_beginAccess();
      *(v52 + 16) = v30;
      v53 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v54 = sub_272434910();
      v80 = [v53 initWithString_];

      swift_beginAccess();
      v88 = *(a12 + 16);
      sub_272433B10();
      sub_27240FAA4();
      v55 = v83;
      sub_272433AD0();
      sub_27240BFB4(&qword_280896228, &qword_280896210);
      v56 = v84;
      sub_272434C30();
      (*(v87 + 8))(v55, v56);
      v57 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v58 = sub_272434910();

      v59 = [v57 &off_279E42578];

      swift_beginAccess();
      v60 = *(a12 + 16);
      v61 = [objc_allocWithZone(VCUIBadgedTextSegmentModel) init];
      v62 = &v61[OBJC_IVAR___VCUIBadgedTextSegmentModel_range];
      swift_beginAccess();
      v63 = v79;
      v64 = v85;
      *v62 = v79;
      *(v62 + 1) = v64;
      v65 = &v61[OBJC_IVAR___VCUIBadgedTextSegmentModel_displayedRange];
      swift_beginAccess();
      *v65 = v63;
      *(v65 + 1) = v64;
      v66 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
      swift_beginAccess();
      v67 = *&v61[v66];
      *&v61[v66] = v80;
      v68 = v61;

      v69 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
      swift_beginAccess();
      v70 = *&v68[v69];
      *&v68[v69] = v59;

      v71 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
      swift_beginAccess();
      *&v68[v71] = v60;

      swift_beginAccess();
      v72 = *(a12 + 16);
      v73 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        __break(1u);
      }

      else
      {
        swift_beginAccess();
        *(a12 + 16) = v73;
        swift_beginAccess();
        *(v52 + 16) = v64;
        v74 = v82;
        swift_beginAccess();
        v68 = v68;
        MEMORY[0x2743C9040]();
        if (*((*(v74 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v74 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_12:
          sub_272434A80();
          swift_endAccess();

          return;
        }
      }

      sub_272434A70();
      goto LABEL_12;
    }
  }
}

uint64_t sub_27240FA1C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_27240FAA4()
{
  result = qword_280896220;
  if (!qword_280896220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896220);
  }

  return result;
}

uint64_t VCUIBadgedTextSegmentModel.range.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___VCUIBadgedTextSegmentModel_range);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_27240FBC8(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t VCUIBadgedTextSegmentModel.displayedRange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___VCUIBadgedTextSegmentModel_displayedRange);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

id VCUIBadgedTextSegmentModel.text.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void VCUIBadgedTextSegmentModel.text.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_text;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VCUIBadgedTextSegmentModel.label.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void VCUIBadgedTextSegmentModel.label.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_label;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t VCUIBadgedTextSegmentModel.labelNumber.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VCUIBadgedTextSegmentModel.labelNumber.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_labelNumber;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VCUIBadgedTextSegmentModel.isWhiteSpace.getter()
{
  v1 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t VCUIBadgedTextSegmentModel.isWhiteSpace.setter(char a1)
{
  v3 = OBJC_IVAR___VCUIBadgedTextSegmentModel_isWhiteSpace;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t VCUIBadgedTextSegmentModel.nsRange.getter()
{
  swift_beginAccess();
  v1 = [v0 text];
  v2 = [v1 string];

  sub_272434930();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200);
  sub_2724103BC();
  sub_27240A1B8();
  return sub_272434BC0();
}

unint64_t sub_2724103BC()
{
  result = qword_280896208;
  if (!qword_280896208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896208);
  }

  return result;
}

id VCUIBadgedTextSegmentModel.representedText.getter()
{
  v1 = [v0 text];
  v2 = [v0 nsRange];
  v4 = [v1 attributedSubstringFromRange_];

  return v4;
}

id VCUIBadgedTextSegmentModel.displayedText.getter()
{
  v1 = [v0 text];
  swift_beginAccess();
  v2 = [v0 text];
  v3 = [v2 string];

  v4 = sub_272434930();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896200);
  sub_2724103BC();
  sub_27240A1B8();
  v7 = sub_272434BC0();
  v9 = [v1 attributedSubstringFromRange_];

  return v9;
}

id sub_2724106A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 text];
  *a2 = result;
  return result;
}

id sub_2724106FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 label];
  *a2 = result;
  return result;
}

id sub_272410758@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 labelNumber];
  *a2 = result;
  return result;
}

id sub_2724107AC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isWhiteSpace];
  *a2 = result;
  return result;
}

unint64_t type metadata accessor for VCUIBadgedTextSegmentModel()
{
  result = qword_280896260;
  if (!qword_280896260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896260);
  }

  return result;
}

uint64_t sub_2724108BC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896088);
  sub_272434720();
  *a2 = xmmword_272436010;
  *(a2 + 16) = a3;
  *(a2 + 24) = a4;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  if (a1 >> 62 && sub_272434CD0() < 0)
  {
    __break(1u);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896268);
  swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896290);
  sub_27240BE90();
  sub_272410C44();
  return sub_272434830();
}

uint64_t sub_272410A68()
{
  sub_2724343E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896268);
  sub_272410B08();
  return sub_272433D20();
}

unint64_t sub_272410B08()
{
  result = qword_280896270;
  if (!qword_280896270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896268);
    sub_27240BFB4(&qword_280896050, &qword_280896058);
    sub_272410BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896270);
  }

  return result;
}

unint64_t sub_272410BC0()
{
  result = qword_280896278;
  if (!qword_280896278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896280);
    sub_272410C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896278);
  }

  return result;
}

unint64_t sub_272410C44()
{
  result = qword_280896288;
  if (!qword_280896288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896290);
    sub_272410CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896288);
  }

  return result;
}

unint64_t sub_272410CC8()
{
  result = qword_280896298;
  if (!qword_280896298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896298);
  }

  return result;
}

uint64_t sub_272410D1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_272410DC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 isWhiteSpace])
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_272435CF0;
    v12 = sub_272434420();
    *(inited + 32) = v12;
    v13 = sub_272434440();
    *(inited + 33) = v13;
    v14 = sub_272434430();
    sub_272434430();
    if (sub_272434430() != v12)
    {
      v14 = sub_272434430();
    }

    sub_272434430();
    if (sub_272434430() != v13)
    {
      v14 = sub_272434430();
    }

    sub_272433CE0();
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v10 = v18;
    LOBYTE(v35) = 0;
    v19 = a1;
    v5 = v14;
    v6 = 1;
    v4 = a1;
  }

  v20 = [a1 displayedText];
  v21 = [v20 string];

  sub_272434930();
  sub_27240A1B8();
  v22 = sub_2724344C0();
  v24 = v23;
  *&v32 = v4;
  *(&v32 + 1) = v6;
  *&v33 = v5;
  *(&v33 + 1) = v7;
  *v34 = v8;
  *&v34[8] = v9;
  *&v34[16] = v10;
  v34[24] = 0;
  v35 = v32;
  v36 = v33;
  *v37 = *v34;
  *&v37[9] = *&v34[9];
  v26 = v25 & 1;
  v27 = v32;
  v28 = v33;
  v29 = *&v37[16];
  *(a2 + 32) = *v37;
  *(a2 + 48) = v29;
  *a2 = v27;
  *(a2 + 16) = v28;
  *(a2 + 64) = v22;
  *(a2 + 72) = v23;
  *(a2 + 80) = v25 & 1;
  *(a2 + 88) = v30;
  sub_27240A0F0(&v32, v38, &qword_2808962C0);
  sub_27240A20C(v22, v24, v26);

  sub_27240A21C(v22, v24, v26);

  v38[0] = v4;
  v38[1] = v6;
  v38[2] = v5;
  v38[3] = v7;
  v38[4] = v8;
  v38[5] = v9;
  v38[6] = v10;
  v39 = 0;
  return sub_27240A158(v38, &qword_2808962C0);
}

double sub_27241105C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_272434180();
  v18 = 1;
  sub_272410DC4(v3, &v11);
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v19 = v11;
  v20 = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v25[5] = v16;
  v25[0] = v11;
  v25[1] = v12;
  sub_27240A0F0(&v19, &v10, &qword_2808962B0);
  sub_27240A158(v25, &qword_2808962B0);
  *&v17[39] = v21;
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24;
  *&v17[7] = v19;
  *&v17[23] = v20;
  v5 = *&v17[32];
  *(a1 + 65) = *&v17[48];
  v6 = *&v17[80];
  *(a1 + 81) = *&v17[64];
  *(a1 + 97) = v6;
  v8 = *v17;
  result = *&v17[16];
  *(a1 + 33) = *&v17[16];
  *(a1 + 49) = v5;
  v9 = v18;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 112) = *&v17[95];
  *(a1 + 17) = v8;
  return result;
}

unint64_t sub_272411170()
{
  result = qword_2808962C8;
  if (!qword_2808962C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808962C8);
  }

  return result;
}

uint64_t sub_2724111D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2724340A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  sub_27240A0F0(v1 + *(v10 + 20), v9, &qword_2808962D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_272433E10();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_272434B50();
    v13 = sub_2724343B0();
    sub_272433B90();

    sub_272434090();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2724113DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView() + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_272413788;
  a2[1] = v6;
}

uint64_t sub_27241145C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (a2 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView() + 24));

  *v6 = sub_272413780;
  v6[1] = v5;
  return result;
}

uint64_t VCUIPhoneticVocabularyNavigationView.completionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView() + 24));

  return v1;
}

uint64_t type metadata accessor for VCUIPhoneticVocabularyNavigationView()
{
  result = qword_280896360;
  if (!qword_280896360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VCUIPhoneticVocabularyNavigationView.completionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for VCUIPhoneticVocabularyNavigationView() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *VCUIPhoneticVocabularyNavigationView.init(voiceControlLocaleIdentifier:variant:completionHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  v12 = a3[1];
  v13 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v14 = *(v13 + 20);
  *(a6 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8);
  swift_storeEnumTagMultiPayload();
  sub_272433BB0();
  v15 = (a6 + *(v13 + 24));
  *v15 = a4;
  v15[1] = a5;
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = v11;
  result[5] = v12;
  *a6 = sub_272412CB8;
  *(a6 + 8) = result;
  *(a6 + 16) = 0;
  return result;
}

uint64_t sub_272411710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  swift_allocObject();

  return sub_2724143EC(a1, a2, v7);
}

uint64_t VCUIPhoneticVocabularyNavigationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v2 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v18 = *(v2 - 8);
  v3 = *(v18 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v16 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E0);
  MEMORY[0x28223BE20](v17);
  v5 = &v12 - v4;
  v6 = *v1;
  v14 = *(v1 + 8);
  v15 = v6;
  v13 = *(v1 + 16);
  v12 = type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
  sub_272433D80();
  swift_getKeyPath();
  sub_272433EB0();

  v21 = v23;
  v22 = v24;
  v20 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962F0);
  sub_27240BFB4(&qword_2808962F8, &qword_2808962E8);
  sub_27240BFB4(&qword_280896300, &qword_2808962E8);
  sub_27240BFB4(&qword_280896308, &qword_2808962E8);
  sub_272412CD4();
  sub_272412F0C();
  sub_272433F40();
  v7 = v16;
  sub_27241381C(v1, v16, type metadata accessor for VCUIPhoneticVocabularyNavigationView);
  v8 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v9 = swift_allocObject();
  sub_272412F68(v7, v9 + v8);
  v10 = &v5[*(v17 + 36)];
  *v10 = sub_272412FCC;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
  sub_272433D70();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  sub_272413034();
  sub_2724345E0();
  return sub_2724130EC(v5);
}

uint64_t sub_272411B84@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  return result;
}

uint64_t sub_272411C04()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272411C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v45 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  MEMORY[0x28223BE20](v45);
  v4 = (v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896388);
  MEMORY[0x28223BE20](v49);
  v50 = v40 - v5;
  v6 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v40[0] = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v40[1] = v7;
  v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896390);
  MEMORY[0x28223BE20](v44);
  v9 = v40 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896318);
  MEMORY[0x28223BE20](v48);
  v46 = v40 - v10;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896398);
  v43 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v42 = v40 - v11;
  type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
  v12 = sub_272433D70();
  swift_beginAccess();
  v13 = *(v12 + 24);

  if (v13)
  {

    v14 = sub_272433D70();
    sub_272416820(v14, v4);
    sub_27241381C(v4, v9, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    swift_storeEnumTagMultiPayload();
    sub_272412E70();
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    v15 = v46;
    sub_272434290();
    sub_272413884(v4);
    sub_27240A0F0(v15, v50, &qword_280896318);
    swift_storeEnumTagMultiPayload();
    v16 = sub_272412DB4();
    v17 = sub_272412F0C();
    v56 = v48;
    v57 = &type metadata for VCUIPhoneticVocabularyCoordinator.Stage;
    v58 = v48;
    v59 = v16;
    v60 = v17;
    v61 = v16;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    return sub_2724138E0(v15);
  }

  else
  {
    sub_272433D70();
    v19 = sub_272433E90();
    v21 = v20;
    v22 = sub_272433D10();
    v24 = v23;
    v26 = v25;
    v55[0] = 0;
    sub_272434720();
    v27 = v56;
    v28 = v57;
    KeyPath = swift_getKeyPath();
    v52 = 0;
    *v9 = v19;
    *(v9 + 1) = v21;
    v9[16] = v22 & 1;
    *(v9 + 17) = *v55;
    *(v9 + 5) = *&v55[3];
    *(v9 + 3) = v24;
    v9[32] = v26 & 1;
    *(v9 + 33) = *v54;
    *(v9 + 9) = *&v54[3];
    v9[40] = v27;
    *(v9 + 41) = *v53;
    *(v9 + 11) = *&v53[3];
    *(v9 + 6) = v28;
    *(v9 + 7) = KeyPath;
    v9[64] = v52;
    swift_storeEnumTagMultiPayload();
    sub_272412E70();
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    v30 = v46;
    sub_272434290();
    v31 = v41;
    sub_27241381C(a1, v41, type metadata accessor for VCUIPhoneticVocabularyNavigationView);
    v32 = (*(v40[0] + 80) + 16) & ~*(v40[0] + 80);
    v33 = swift_allocObject();
    sub_272412F68(v31, v33 + v32);
    v34 = sub_272412DB4();
    v35 = sub_272412F0C();
    v36 = v42;
    v37 = v48;
    sub_2724345B0();

    sub_2724138E0(v30);
    v38 = v43;
    v39 = v47;
    (*(v43 + 16))(v50, v36, v47);
    swift_storeEnumTagMultiPayload();
    v56 = v37;
    v57 = &type metadata for VCUIPhoneticVocabularyCoordinator.Stage;
    v58 = v37;
    v59 = v34;
    v60 = v35;
    v61 = v34;
    swift_getOpaqueTypeConformance2();
    sub_272434290();
    return (*(v38 + 8))(v36, v39);
  }
}

uint64_t sub_2724123BC(_BYTE *a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896390);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  if (*a1)
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator();
    sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
    v8 = sub_272433D70();
    sub_272416820(v8, v4);
    sub_27241381C(v4, v7, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    swift_storeEnumTagMultiPayload();
    sub_272412E70();
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    sub_272434290();
    return sub_272413884(v4);
  }

  else
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator();
    sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
    sub_272433D70();
    v10 = sub_272433E90();
    v12 = v11;
    v13 = sub_272433D10();
    v15 = v14;
    v17 = v16;
    v22 = 0;
    sub_272434720();
    v18 = v23;
    v21 = v2;
    v19 = v24;
    KeyPath = swift_getKeyPath();
    v23 = 0;
    *v7 = v10;
    *(v7 + 1) = v12;
    v7[16] = v13 & 1;
    *(v7 + 3) = v15;
    v7[32] = v17 & 1;
    v7[40] = v18;
    *(v7 + 6) = v19;
    *(v7 + 7) = KeyPath;
    v7[64] = 0;
    swift_storeEnumTagMultiPayload();
    sub_272412E70();
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    return sub_272434290();
  }
}

uint64_t sub_272412700(uint64_t a1)
{
  v2 = sub_272433AC0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
  v7 = sub_272433D70();
  sub_27241381C(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VCUIPhoneticVocabularyNavigationView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_272412F68(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = (v7 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  *v10 = sub_272413794;
  v10[1] = v9;

  v11 = sub_272433D70();
  swift_beginAccess();
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);

  if (v13)
  {
    v15 = sub_272433D70();
    v25 = v12;
    v26 = v13;
    v16 = v22;
    sub_272433AB0();
    sub_27240A1B8();
    v17 = sub_272434BF0();
    v19 = v18;
    (*(v23 + 8))(v16, v24);

    v20 = (v15 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    *v20 = v17;
    v20[1] = v19;
  }

  return result;
}

uint64_t sub_272412A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272433E10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  (*(a4 + *(v12 + 24)))(a1, a2, a3);
  sub_2724111D4(v11);
  sub_272433E00();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_272412B2C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_272412BAC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272412C78()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_272412CD4()
{
  result = qword_280896310;
  if (!qword_280896310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896318);
    sub_272412DB4();
    sub_272412F0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896310);
  }

  return result;
}

unint64_t sub_272412DB4()
{
  result = qword_280896320;
  if (!qword_280896320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896318);
    sub_272412E70();
    sub_272412EC4(&qword_280896330, type metadata accessor for VCUIPhoneticVocabularyRecordingView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896320);
  }

  return result;
}

unint64_t sub_272412E70()
{
  result = qword_280896328;
  if (!qword_280896328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896328);
  }

  return result;
}

uint64_t sub_272412EC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_272412F0C()
{
  result = qword_280896338;
  if (!qword_280896338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896338);
  }

  return result;
}

uint64_t sub_272412F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_272412FCC()
{
  v1 = *(type metadata accessor for VCUIPhoneticVocabularyNavigationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_272412700(v2);
}

unint64_t sub_272413034()
{
  result = qword_280896340;
  if (!qword_280896340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962E0);
    sub_27240BFB4(&qword_280896348, &qword_280896350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896340);
  }

  return result;
}

uint64_t sub_2724130EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272413178(uint64_t a1, unsigned int a2)
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

uint64_t sub_2724131C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_27241321C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_272413234(void *result, int a2)
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

uint64_t sub_272413278(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896358);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_272433BC0();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_2724133C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896358);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = sub_272433BC0();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_2724134F4()
{
  sub_2724135A8();
  if (v0 <= 0x3F)
  {
    sub_27241363C();
    if (v1 <= 0x3F)
    {
      sub_272413694();
      if (v2 <= 0x3F)
      {
        sub_272433BC0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2724135A8()
{
  if (!qword_280896370)
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator();
    sub_272412EC4(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
    v0 = sub_272433D90();
    if (!v1)
    {
      atomic_store(v0, &qword_280896370);
    }
  }
}

void sub_27241363C()
{
  if (!qword_280896378)
  {
    sub_272433E10();
    v0 = sub_272433D60();
    if (!v1)
    {
      atomic_store(v0, &qword_280896378);
    }
  }
}

unint64_t sub_272413694()
{
  result = qword_280896380;
  if (!qword_280896380)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_280896380);
  }

  return result;
}

uint64_t sub_2724136E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808962E0);
  sub_272413034();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_272413748()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272413794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for VCUIPhoneticVocabularyNavigationView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_272412A14(a1, a2, a3, v8);
}

uint64_t sub_27241381C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_272413884(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2724138E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272413948@<X0>(_BYTE *a1@<X8>)
{
  result = sub_272433FC0();
  *a1 = result & 1;
  return result;
}

uint64_t objectdestroy_6Tm()
{
  v1 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_272412F60();
  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_272433E10();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_272433BC0();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_272413B18(char *a1)
{
  type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v3 = *a1;
  return sub_2724123BC(&v3);
}

uint64_t sub_272413BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return a4(v5);
}

uint64_t sub_272413C1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t sub_272413C7C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v3;
}

uint64_t sub_272413CC4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
}

uint64_t VCUIPhoneticVocabularyCoordinator.Stage.hashValue.getter()
{
  v1 = *v0;
  sub_272434D10();
  MEMORY[0x2743C9330](v1);
  return sub_272434D30();
}

uint64_t sub_272413E1C()
{
  v1 = *v0;
  sub_272434D10();
  MEMORY[0x2743C9330](v1);
  return sub_272434D30();
}

uint64_t sub_272413E90()
{
  v1 = *v0;
  sub_272434D10();
  MEMORY[0x2743C9330](v1);
  return sub_272434D30();
}

uint64_t sub_272413EE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_272413F54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_272413FC8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  return v1;
}

uint64_t sub_27241403C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_2724140A8()
{
  v1 = (v0 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_272414180@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_272415CC0;
  a2[1] = v6;
}

uint64_t sub_27241420C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  *v6 = sub_272415C84;
  v6[1] = v5;
}

uint64_t sub_2724142A8()
{
  v1 = (v0 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_272414320(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9);
}

uint64_t sub_2724143EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v41 = a1;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963B8);
  v10 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963A8);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = *a3;
  v36 = a3[1];
  v37 = v17;
  v18 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__navigationPath;
  v19 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962E8);
  sub_272433BE0();
  (*(v14 + 32))(v3 + v18, v16, v13);
  v20 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__ipaCandidates;
  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896960);
  sub_272433BE0();
  (*(v10 + 32))(v3 + v20, v12, v34);
  v21 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__textFieldText;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_272433BE0();
  (*(v35 + 32))(v3 + v21, v9, v38);
  v22 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__canSaveRecording;
  LOBYTE(v43) = 0;
  sub_272433BE0();
  v23 = *(v39 + 32);
  v24 = v3 + v22;
  v25 = v40;
  v23(v24, v7, v40);
  v26 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  *v26 = 0;
  v26[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_ipas) = v19;
  v27 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__didFinishRecording;
  LOBYTE(v43) = 0;
  sub_272433BE0();
  v23(v3 + v27, v7, v25);
  v28 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  *v28 = CGSizeMake;
  v28[1] = 0;
  v29 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  v31 = v36;
  *(v3 + 16) = v37;
  *(v3 + 24) = v31;
  return v3;
}

uint64_t sub_2724147FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_272433AC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = a1;
  v15[1] = a2;
  sub_272433AB0();
  sub_27240A1B8();
  v10 = sub_272434BF0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = (v3 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
  *v13 = v10;
  v13[1] = v12;
}

uint64_t sub_272414914(uint64_t a1)
{
  v20 = sub_272433AC0();
  v3 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v19 = v1;
    v23 = MEMORY[0x277D84F90];
    sub_272415200(0, v6, 0);
    v7 = v23;
    v8 = (v3 + 8);
    v9 = (a1 + 40);
    do
    {
      v10 = *v9;
      v21 = *(v9 - 1);
      v22 = v10;

      sub_272433AB0();
      sub_27240A1B8();
      v11 = sub_272434BF0();
      v13 = v12;
      (*v8)(v5, v20);

      v23 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_272415200((v14 > 1), v15 + 1, 1);
        v7 = v23;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v9 += 2;
      --v6;
    }

    while (v6);
    v1 = v19;
  }

  *(v1 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_ipas) = v7;
}

uint64_t sub_272414AD0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_272433BF0();
  v2 = v1;
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_272415000(0, *(v3 + 2) + 1, 1, v3);
    *v2 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_272415000((v5 > 1), v6 + 1, 1, v3);
    *v2 = v3;
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = 1;
  v0(&v8, 0);
}

uint64_t sub_272414BF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = sub_272433BF0();
  *v1 = MEMORY[0x277D84F90];

  v0(&v3, 0);
}

uint64_t VCUIPhoneticVocabularyCoordinator.deinit()
{

  v1 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__navigationPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__ipaCandidates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963B8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__textFieldText;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963C8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__canSaveRecording;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808963D8);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);

  v9(v0 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator__didFinishRecording, v8);

  return v0;
}

uint64_t VCUIPhoneticVocabularyCoordinator.__deallocating_deinit()
{
  VCUIPhoneticVocabularyCoordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_272414EBC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  result = sub_272433BD0();
  *a1 = result;
  return result;
}

char *sub_272414EFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896430);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_272415000(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896428);
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

char *sub_2724150F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_272415200(char *a1, int64_t a2, char a3)
{
  result = sub_272415220(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_272415220(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_27241532C(uint64_t a1, uint64_t a2)
{
  v4 = sub_272433AC0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1;
  v15 = a2;
  sub_272433AB0();
  sub_27240A1B8();
  v8 = sub_272434BF0();
  v10 = v9;
  (*(v5 + 8))(v7, v4);

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v14 = a1;
    v15 = a2;
    v13[0] = 45506;
    v13[1] = 0xA200000000000000;
    LOBYTE(v11) = sub_272434C20() ^ 1;
  }

  return v11 & 1;
}

unint64_t sub_272415494()
{
  result = qword_2808963E8;
  if (!qword_2808963E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808963E8);
  }

  return result;
}

uint64_t sub_2724154F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_272415544@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t type metadata accessor for VCUIPhoneticVocabularyCoordinator()
{
  result = qword_2808963F0;
  if (!qword_2808963F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2724155FC()
{
  sub_272415A28(319, &qword_280896400, &qword_2808962E8);
  if (v0 <= 0x3F)
  {
    sub_272415A28(319, &qword_280896408, &qword_280896960);
    if (v1 <= 0x3F)
    {
      sub_272415A7C(319, &qword_280896410);
      if (v2 <= 0x3F)
      {
        sub_272415A7C(319, &qword_280896418);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_272415A28(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_272433C20();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_272415A7C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_272433C20();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VCUIPhoneticVocabularyCoordinator.Stage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCUIPhoneticVocabularyCoordinator.Stage(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_272415C4C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_272415C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  return v4(v6);
}

void sub_272415DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_272434910();
    if (a3)
    {
LABEL_3:
      v7 = sub_272434A40();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

VCUIPhoneticVocabularyNavigationViewWrapper __swiftcall VCUIPhoneticVocabularyNavigationViewWrapper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE019createTypeAndRecordD004withfG16LocaleIdentifier17completionHandlerSo16UIViewControllerCSS_ySSSg_SaySSGSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  v16 = *(v9 + 28);
  *&v14[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8);
  swift_storeEnumTagMultiPayload();

  sub_272433BB0();
  v17 = &v14[*(v9 + 32)];
  *v17 = sub_2724165C8;
  *(v17 + 1) = v15;
  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = 0;
  v18[5] = 0;
  *v14 = sub_2724165DC;
  *(v14 + 1) = v18;
  v14[16] = 0;
  sub_27241645C(v14, v12);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896440));

  v19 = sub_2724341C0();
  sub_2724164C0(v14);
  return v19;
}

uint64_t _sSo43VCUIPhoneticVocabularyNavigationViewWrapperC14VoiceControlUIE016createRecordOnlyD004withfG16LocaleIdentifier4text17completionHandlerSo16UIViewControllerCSS_SSySSSg_SaySSGSgtctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v11 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  v19 = *(v12 + 28);
  *&v17[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808962D8);
  swift_storeEnumTagMultiPayload();

  sub_272433BB0();
  v20 = &v17[*(v12 + 32)];
  *v20 = sub_272416450;
  v20[1] = v18;
  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = v25;
  v21[5] = a4;
  *v17 = sub_272412CB8;
  *(v17 + 1) = v21;
  v17[16] = 0;
  sub_27241645C(v17, v15);
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896440));

  v22 = sub_2724341C0();
  sub_2724164C0(v17);
  return v22;
}

unint64_t type metadata accessor for VCUIPhoneticVocabularyNavigationViewWrapper()
{
  result = qword_280896438;
  if (!qword_280896438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280896438);
  }

  return result;
}

uint64_t sub_272416410()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_27241645C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2724164C0(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyNavigationView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27241651C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2724165E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656873696E6966;
  if (a1 != 5)
  {
    v5 = 0x6465726F727265;
    v4 = 0xE700000000000000;
  }

  v6 = 0x6E6964726F636572;
  v7 = 0xE900000000000067;
  if (a1 != 3)
  {
    v6 = 0x6F636552656E6F64;
    v7 = 0xED0000676E696472;
  }

  if (a1 > 4u)
  {
    v6 = v5;
    v7 = v4;
  }

  v8 = 0xD000000000000010;
  v9 = 0x8000000272437A90;
  if (a1 != 1)
  {
    v8 = 0xD000000000000014;
    v9 = 0x8000000272437AB0;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 1701602409;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000272437A90;
        if (v10 != 0xD000000000000010)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0x8000000272437AB0;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701602409)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x64656873696E6966)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6465726F727265)
      {
LABEL_39:
        v13 = sub_272434CF0();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000067;
    if (v10 != 0x6E6964726F636572)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xED0000676E696472;
    if (v10 != 0x6F636552656E6F64)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_272416820@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v3 = sub_272434B80();
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_272434B70();
  MEMORY[0x28223BE20](v38);
  v37[1] = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2724348D0();
  MEMORY[0x28223BE20](v6 - 8);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v8 = (a2 + v7[7]);
  v44 = [objc_allocWithZone(MEMORY[0x277CB84B8]) init];
  sub_27242AA04(0, &qword_280896558);
  sub_272434720();
  v9 = *(&v46 + 1);
  *v8 = v46;
  v8[1] = v9;
  v10 = a2 + v7[8];
  LOBYTE(v44) = 0;
  sub_272434720();
  v11 = *(&v46 + 1);
  *v10 = v46;
  *(v10 + 1) = v11;
  v12 = a2 + v7[9];
  LOBYTE(v44) = 0;
  sub_272434720();
  v13 = *(&v46 + 1);
  *v12 = v46;
  *(v12 + 1) = v13;
  v14 = a2 + v7[10];
  v44 = 0;
  v45 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896578);
  sub_272434720();
  v15 = v47;
  *v14 = v46;
  *(v14 + 2) = v15;
  v16 = a2 + v7[11];
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_272434720();
  v17 = v47;
  *v16 = v46;
  *(v16 + 2) = v17;
  sub_272433BB0();
  v18 = v7[13];
  sub_272433C60();
  swift_allocObject();
  *(a2 + v18) = sub_272433C50();
  v19 = v7[14];
  sub_27242AA04(0, &qword_280896588);
  sub_2724348C0();
  *&v46 = MEMORY[0x277D84F90];
  sub_27242AA74(&qword_280896988, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896990);
  sub_27240BFB4(&qword_280896998, &qword_280896990);
  sub_272434C50();
  (*(v40 + 104))(v39, *MEMORY[0x277D85260], v41);
  *(a2 + v19) = sub_272434BB0();
  v20 = a2 + v7[15];
  LOBYTE(v44) = 0;
  sub_272434720();
  v21 = *(&v46 + 1);
  *v20 = v46;
  *(v20 + 1) = v21;
  v22 = a2 + v7[16];
  LOBYTE(v44) = 0;
  sub_272434720();
  v23 = *(&v46 + 1);
  *v22 = v46;
  *(v22 + 1) = v23;
  v24 = a2 + v7[17];
  LOBYTE(v44) = 0;
  sub_272434720();
  v25 = *(&v46 + 1);
  *v24 = v46;
  *(v24 + 1) = v25;
  v26 = a2 + v7[18];
  LOBYTE(v44) = 0;
  sub_272434720();
  v27 = *(&v46 + 1);
  *v26 = v46;
  *(v26 + 1) = v27;
  *(a2 + v7[19]) = 1;
  *(a2 + v7[20]) = 0;
  *(a2 + v7[21]) = 0;
  *(a2 + v7[22]) = 0;
  v28 = (v42 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  objc_allocWithZone(type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0));

  v31 = sub_272416E30(v30, v29);
  v32 = (a2 + v7[6]);
  v43 = v31;
  sub_272434720();
  v33 = v45;
  *v32 = v44;
  v32[1] = v33;
  v34 = (a2 + v7[5]);
  type metadata accessor for VCUIPhoneticVocabularyCoordinator();
  sub_27242AA74(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
  result = sub_272433E90();
  *v34 = result;
  v34[1] = v36;
  return result;
}

id sub_272416E30(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection] = 0;
  v5 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_text];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  sub_272433BB0();
  v10 = &v2[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_272416F34()
{
  v1 = *&v0[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (v1)
  {
    [v1 endSession];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for VCUIPhoneticVocabularyRecordingManager(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2724170EC()
{
  v1 = v0;
  v2 = sub_272433B00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CEF268]) init];
  v7 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v8 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection);
  *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection) = v6;
  v9 = v6;

  if (v9)
  {
    [v9 setDelegate_];
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CEF288]) init];
  [v10 setTranscriptionMode_];
  sub_272433AF0();
  v11 = sub_272433AE0();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v15 = sub_272429094(6, v11, v13, v14);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  MEMORY[0x2743C8F90](v15, v17, v19, v21);

  v22 = sub_272434910();

  [v10 setOrthography_];

  v23 = [objc_allocWithZone(MEMORY[0x277CEF4A0]) initWithActivationEvent_];
  [v23 setIsEyesFree_];
  [v23 setEndpointerOperationMode_];
  v24 = *(v1 + v7);
  if (v24)
  {
    v25 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier);
    v26 = *(v1 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier + 8);
    if (v25 == 0x4E495F6E65 && v26 == 0xE500000000000000 || (sub_272434CF0() & 1) != 0)
    {
      v27 = v24;
    }

    else
    {
      v30[4] = v25;
      v30[5] = v26;
      v30[2] = 95;
      v30[3] = 0xE100000000000000;
      v30[0] = 45;
      v30[1] = 0xE100000000000000;
      sub_27240A1B8();
      v27 = v24;
      sub_272434C10();
    }

    v29 = sub_272434910();

    [v27 startDictationWithLanguageCode:v29 options:v10 speechOptions:v23];

    v28 = v10;
  }

  else
  {
    v28 = v23;
    v23 = v10;
  }
}

void sub_27241743C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection);
  if (v1)
  {

    [v1 stopSpeechWithOptions_];
  }

  else
  {
    oslog = sub_272433BA0();
    v2 = sub_272434B60();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_272406000, oslog, v2, "[Guard] Calling stopRecording() when connection is nil", v3, 2u);
      MEMORY[0x2743C99D0](v3, -1, -1);
    }
  }
}

void sub_272417524()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v3 = *&v0[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (v3)
  {
    v4 = v3;
    v5 = v0;
    v6 = sub_272433BA0();
    v7 = sub_272434B30();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      v10 = *&v1[v2];
      if (v10)
      {
        v11 = [v10 debugDescription];
        v12 = sub_272434930();
        v14 = v13;
      }

      else
      {
        v14 = 0xE300000000000000;
        v12 = 7104878;
      }

      v18 = sub_2724285FC(v12, v14, &v20);

      *(v8 + 4) = v18;
      _os_log_impl(&dword_272406000, v6, v7, "endSession() %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x2743C99D0](v9, -1, -1);
      MEMORY[0x2743C99D0](v8, -1, -1);
    }

    [v4 endSession];
    v17 = *&v1[v2];
    *&v1[v2] = 0;
  }

  else
  {
    oslog = sub_272433BA0();
    v15 = sub_272434B60();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_272406000, oslog, v15, "[Guard] Calling endSession() when connection is nil", v16, 2u);
      MEMORY[0x2743C99D0](v16, -1, -1);
    }

    v17 = oslog;
  }
}

void sub_272417744(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v5 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v5 == a1)
    {
LABEL_3:
      v6 = a1;
      v7 = v1;
      v8 = sub_272433BA0();
      v9 = sub_272434B60();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = 0x53555F6E65;
        v11 = swift_slowAlloc();
        oslog = swift_slowAlloc();
        v41 = oslog;
        *v11 = 136315650;
        v12 = &v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
        v14 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
        v13 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier + 8];
        v15 = 0xE500000000000000;
        v16 = v14 == 0x4E495F6E65 && v13 == 0xE500000000000000;
        if (!v16 && (sub_272434CF0() & 1) == 0)
        {
          v40[0] = v14;
          v40[1] = v13;
          sub_27240A1B8();
          v10 = sub_272434C10();
          v15 = v17;
        }

        v18 = sub_2724285FC(v10, v15, &v41);

        *(v11 + 4) = v18;
        *(v11 + 12) = 2080;
        v19 = *v12;
        v20 = v12[1];

        v21 = sub_2724285FC(v19, v20, &v41);

        *(v11 + 14) = v21;
        *(v11 + 22) = 2080;
        v40[0] = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
        v22 = sub_272434BD0();
        v24 = sub_2724285FC(v22, v23, &v41);

        *(v11 + 24) = v24;
        _os_log_impl(&dword_272406000, v8, v9, "dictationConnectionSpeechRecordingDidBegin for locale: %s, actual VC locale: %s connection: %s", v11, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2743C99D0](oslog, -1, -1);
        MEMORY[0x2743C99D0](v11, -1, -1);
      }

      v25 = *&v7[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
      if (v25)
      {

        v25(v26);
        sub_272427F50(v25);
      }

      return;
    }
  }

  else if (!v5)
  {
    goto LABEL_3;
  }

  v27 = a1;
  v28 = v1;
  osloga = sub_272433BA0();
  v29 = sub_272434B60();

  if (os_log_type_enabled(osloga, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40[0] = v32;
    *v30 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
    v33 = sub_272434BD0();
    v35 = sub_2724285FC(v33, v34, v40);

    *(v30 + 4) = v35;
    *(v30 + 12) = 2112;
    v36 = *&v2[v4];
    *(v30 + 14) = v36;
    *v31 = v36;
    v37 = v36;
    _os_log_impl(&dword_272406000, osloga, v29, "[Guard] dictationConnectionSpeechRecordingDidBegin callback received for unexpected connection (%s. Expected: %@", v30, 0x16u);
    sub_27240A158(v31, &qword_280896978);
    MEMORY[0x2743C99D0](v31, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x2743C99D0](v32, -1, -1);
    MEMORY[0x2743C99D0](v30, -1, -1);
  }

  else
  {
  }
}

void sub_272417D48(void *a1, id a2, const char *a3, const char *a4)
{
  v7 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v8 = *&v4[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (!a1)
  {
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_7:
    v23 = a1;
    v24 = v4;
    oslog = sub_272433BA0();
    v25 = sub_272434B60();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v26 = 136315394;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
      v29 = sub_272434BD0();
      v31 = sub_2724285FC(v29, v30, &v37);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2112;
      v32 = *&v4[v7];
      *(v26 + 14) = v32;
      *v27 = v32;
      v33 = v32;
      _os_log_impl(&dword_272406000, oslog, v25, a4, v26, 0x16u);
      sub_27240A158(v27, &qword_280896978);
      MEMORY[0x2743C99D0](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2743C99D0](v28, -1, -1);
      MEMORY[0x2743C99D0](v26, -1, -1);
    }

    else
    {
    }

    return;
  }

  if (v8 != a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v10 = a2;
  v11 = a1;
  v12 = sub_272433BA0();
  v13 = sub_272434B40();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315394;

    if (!a2)
    {
      __break(1u);
      return;
    }

    swift_getErrorValue();
    v16 = sub_272434D00();
    v18 = sub_2724285FC(v16, v17, &v37);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
    v19 = sub_272434BD0();
    v21 = sub_2724285FC(v19, v20, &v37);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_272406000, v12, v13, a3, v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C99D0](v15, -1, -1);
    MEMORY[0x2743C99D0](v14, -1, -1);
  }

  else
  {
  }

  v34 = *&v4[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  if (v34)
  {

    v34(v35);
    sub_272427F50(v34);
  }

  sub_272417524();
}

void sub_272418164(void *a1)
{
  v2 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v3 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v3 == a1)
    {
LABEL_3:
      v4 = a1;
      v5 = sub_272433BA0();
      v6 = sub_272434B60();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v26 = v8;
        *v7 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
        v9 = sub_272434BD0();
        v11 = sub_2724285FC(v9, v10, &v26);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_272406000, v5, v6, "dictationConnectionSpeechRecordingDidCancel connection: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x2743C99D0](v8, -1, -1);
        MEMORY[0x2743C99D0](v7, -1, -1);
      }

      v12 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
      if (v12)
      {

        v12(v13);
        sub_272427F50(v12);
      }

      sub_272417524();
      return;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v14 = a1;
  v15 = v1;
  oslog = sub_272433BA0();
  v16 = sub_272434B60();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v17 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
    v20 = sub_272434BD0();
    v22 = sub_2724285FC(v20, v21, &v26);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = *&v1[v2];
    *(v17 + 14) = v23;
    *v18 = v23;
    v24 = v23;
    _os_log_impl(&dword_272406000, oslog, v16, "[Guard] dictationConnectionSpeechRecordingDidCancel callback received for unexpected connection (%s. Expected: %@", v17, 0x16u);
    sub_27240A158(v18, &qword_280896978);
    MEMORY[0x2743C99D0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2743C99D0](v19, -1, -1);
    MEMORY[0x2743C99D0](v17, -1, -1);
  }

  else
  {
  }
}

void sub_2724184E0(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v4 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v4 == a1)
    {
      goto LABEL_3;
    }
  }

  else if (!v4)
  {
LABEL_3:
    v5 = a1;
    oslog = sub_272433BA0();
    v6 = sub_272434B60();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v24 = v8;
      *v7 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
      v9 = sub_272434BD0();
      v11 = sub_2724285FC(v9, v10, &v24);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_272406000, oslog, v6, "dictationConnectionSpeechRecognitionDidSucceed connection: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      v12 = v8;
LABEL_8:
      MEMORY[0x2743C99D0](v12, -1, -1);
      MEMORY[0x2743C99D0](v7, -1, -1);

      return;
    }

    goto LABEL_9;
  }

  v13 = a1;
  v14 = v1;
  oslog = sub_272433BA0();
  v15 = sub_272434B60();

  if (os_log_type_enabled(oslog, v15))
  {
    v7 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v7 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
    v18 = sub_272434BD0();
    v20 = sub_2724285FC(v18, v19, &v24);

    *(v7 + 4) = v20;
    *(v7 + 12) = 2112;
    v21 = *&v2[v3];
    *(v7 + 14) = v21;
    *v16 = v21;
    v22 = v21;
    _os_log_impl(&dword_272406000, oslog, v15, "[Guard] dictationConnectionSpeechRecognitionDidSucceed callback received for unexpected connection (%s. Expected: %@", v7, 0x16u);
    sub_27240A158(v16, &qword_280896978);
    MEMORY[0x2743C99D0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v12 = v17;
    goto LABEL_8;
  }

LABEL_9:
}

void sub_272418800(void *a1)
{
  v2 = OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection;
  v3 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_connection];
  if (a1)
  {
    if (v3 == a1)
    {
LABEL_3:
      v4 = a1;
      v5 = sub_272433BA0();
      v6 = sub_272434B60();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v26 = v8;
        *v7 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
        v9 = sub_272434BD0();
        v11 = sub_2724285FC(v9, v10, &v26);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_272406000, v5, v6, "dictationConnectionSpeechRecordingDidEnd connection: %s", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x2743C99D0](v8, -1, -1);
        MEMORY[0x2743C99D0](v7, -1, -1);
      }

      v12 = *&v1[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
      if (v12)
      {

        v12(v13);
        sub_272427F50(v12);
      }

      return;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  v14 = a1;
  v15 = v1;
  oslog = sub_272433BA0();
  v16 = sub_272434B60();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v17 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896970);
    v20 = sub_272434BD0();
    v22 = sub_2724285FC(v20, v21, &v26);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2112;
    v23 = *&v1[v2];
    *(v17 + 14) = v23;
    *v18 = v23;
    v24 = v23;
    _os_log_impl(&dword_272406000, oslog, v16, "[Guard] dictationConnectionSpeechRecordingDidEnd callback received for unexpected connection (%s. Expected: %@", v17, 0x16u);
    sub_27240A158(v18, &qword_280896978);
    MEMORY[0x2743C99D0](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2743C99D0](v19, -1, -1);
    MEMORY[0x2743C99D0](v17, -1, -1);
  }

  else
  {
  }
}

VoiceControlUI::VCUIDictationState_optional __swiftcall VCUIDictationState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_272434CE0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t VCUIDictationState.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x64656873696E6966;
  if (v1 != 5)
  {
    v3 = 0x6465726F727265;
  }

  v4 = 0x6E6964726F636572;
  if (v1 != 3)
  {
    v4 = 0x6F636552656E6F64;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = v5;
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

unint64_t sub_272418CF8()
{
  result = qword_280896450;
  if (!qword_280896450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896450);
  }

  return result;
}

uint64_t sub_272418D58()
{
  sub_272434990();
}

uint64_t sub_272418E7C()
{
  sub_272434D10();
  sub_272434990();

  return sub_272434D30();
}

void sub_272418FB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701602409;
  v5 = 0xE800000000000000;
  v6 = 0x64656873696E6966;
  if (v2 != 5)
  {
    v6 = 0x6465726F727265;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE900000000000067;
  v8 = 0x6E6964726F636572;
  if (v2 != 3)
  {
    v8 = 0x6F636552656E6F64;
    v7 = 0xED0000676E696472;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xD000000000000010;
  v10 = 0x8000000272437A90;
  if (v2 != 1)
  {
    v9 = 0xD000000000000014;
    v10 = 0x8000000272437AB0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2724190CC()
{
  result = sub_272433BC0();
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

uint64_t getEnumTagSinglePayload for VCUIDictationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for VCUIDictationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2724192F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896510);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_272433BC0();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_272419438(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896510);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_272433BC0();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_27241958C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2724195C4()
{
  sub_2724198A8(319, &qword_280896530, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_272419814();
    if (v1 <= 0x3F)
    {
      sub_2724198A8(319, &qword_280896548, type metadata accessor for VCUIPhoneticVocabularyRecordingManager, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_27241990C();
        if (v3 <= 0x3F)
        {
          sub_2724199D8(319, &qword_280896560);
          if (v4 <= 0x3F)
          {
            sub_2724199D8(319, &qword_280896568);
            if (v5 <= 0x3F)
            {
              sub_272419974();
              if (v6 <= 0x3F)
              {
                sub_2724199D8(319, &qword_280896580);
                if (v7 <= 0x3F)
                {
                  sub_272433BC0();
                  if (v8 <= 0x3F)
                  {
                    sub_272433C60();
                    if (v9 <= 0x3F)
                    {
                      sub_27242AA04(319, &qword_280896588);
                      if (v10 <= 0x3F)
                      {
                        sub_2724199D8(319, &qword_280896590);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
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
}

void sub_272419814()
{
  if (!qword_280896538)
  {
    type metadata accessor for VCUIPhoneticVocabularyCoordinator();
    sub_27242AA74(&qword_280896540, type metadata accessor for VCUIPhoneticVocabularyCoordinator);
    v0 = sub_272433EC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280896538);
    }
  }
}

void sub_2724198A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_27241990C()
{
  if (!qword_280896550)
  {
    sub_27242AA04(255, &qword_280896558);
    v0 = sub_272434760();
    if (!v1)
    {
      atomic_store(v0, &qword_280896550);
    }
  }
}

void sub_272419974()
{
  if (!qword_280896570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896578);
    v0 = sub_272434760();
    if (!v1)
    {
      atomic_store(v0, &qword_280896570);
    }
  }
}

void sub_2724199D8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_272434760();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for VCUIPhoneticVocabularyRecordingView.ActiveAlert(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for VCUIPhoneticVocabularyRecordingView.ActiveAlert(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_272419B78()
{
  result = qword_280896598;
  if (!qword_280896598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280896598);
  }

  return result;
}

uint64_t sub_272419BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_272418CF8();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_272419C38()
{
  sub_272429BD4();

  return sub_2724340B0();
}

uint64_t sub_272419C80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2724340A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896628);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_27240A0F0(v2, &v14 - v9, &qword_280896628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_272433D50();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_272434B50();
    v13 = sub_2724343B0();
    sub_272433B90();

    sub_272434090();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_272419EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v4 = *(v3 - 8);
  v52 = v3 - 8;
  v47 = v4;
  v46 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v45 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_272433B80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965A0);
  MEMORY[0x28223BE20](v10 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965A8);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v51 = v39 - v11;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965B0);
  MEMORY[0x28223BE20](v43);
  v40 = v39 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965B8);
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = v39 - v13;
  v39[2] = sub_27241A854();
  v39[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965C0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_272436A70;
  sub_272433B50();
  sub_272433B70();
  sub_272433B60();
  v57 = v15;
  sub_27242AA74(&qword_2808965C8, MEMORY[0x277CE7670]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965D0);
  sub_27240BFB4(&qword_2808965D8, &qword_2808965D0);
  sub_272434C50();
  sub_272434820();
  (*(v7 + 8))(v9, v6);
  v56 = v1;
  v55 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965E8);
  sub_27240BFB4(&qword_2808965F0, &qword_2808965E0);
  sub_27240BFB4(&qword_2808965F8, &qword_2808965E8);
  sub_272433B40();
  v63 = sub_27241DE10();
  v64 = v16;
  v17 = v1 + *(v52 + 72);
  v18 = *v17;
  v19 = *(v17 + 8);
  v61 = v18;
  v62 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
  sub_272434750();
  v54 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
  sub_27240BFB4(&unk_280896610, &qword_2808965A8);
  sub_27240A1B8();
  sub_27240BFB4(&qword_280896620, &qword_2808960B8);
  v20 = v41;
  v21 = v40;
  v22 = v51;
  sub_272434620();

  (*(v42 + 8))(v22, v20);
  v23 = v45;
  sub_2724276E8(v2, v45);
  v24 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v25 = swift_allocObject();
  sub_272427750(v23, v25 + v24);
  v26 = v43;
  v27 = (v21 + *(v43 + 36));
  *v27 = sub_2724277B4;
  v27[1] = v25;
  v27[2] = 0;
  v27[3] = 0;
  v28 = v2 + *(v52 + 40);
  v29 = *v28;
  v30 = *(v28 + 8);
  LOBYTE(v57) = v29;
  v58 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  LOBYTE(v57) = v63;
  sub_2724276E8(v2, v23);
  v31 = swift_allocObject();
  sub_272427750(v23, v31 + v24);
  v32 = sub_272427A98();
  v33 = sub_272418CF8();
  v34 = v44;
  sub_272434660();

  sub_27240A158(v21, &qword_2808965B0);
  v53 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896640);
  v57 = v26;
  v58 = &type metadata for VCUIDictationState;
  v59 = v32;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280896648);
  v36 = sub_272427C24();
  v57 = v35;
  v58 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  sub_272434650();
  return (*(v49 + 8))(v34, v37);
}

uint64_t sub_27241A854()
{
  v1 = v0;
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  v10 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  if (*(v0 + v10[19]) == 1)
  {
    v11 = (*(v0 + v10[5] + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);

    v12 = sub_2724349A0();

    if (v12 >= 51)
    {
      goto LABEL_9;
    }

    sub_2724348F0();
    (*(v4 + 16))(v7, v9, v3);
    sub_27242AA04(0, &qword_280896670);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    sub_272434950();
    (*(v4 + 8))(v9, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_272436A80;
    v21 = *v11;
    v20 = v11[1];
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_27242A9B0();
    *(v19 + 32) = v21;
    *(v19 + 40) = v20;

    v22 = sub_272434940();
LABEL_11:

    return v22;
  }

  v13 = v10;
  v14 = (v0 + v10[8]);
  v15 = *v14;
  v16 = *(v14 + 1);
  v33[8] = v15;
  v34 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  if (v35 == 5)
  {
  }

  else
  {
    v23 = sub_272434CF0();

    if ((v23 & 1) == 0)
    {
      sub_2724348F0();
      (*(v4 + 16))(v7, v9, v3);
      sub_27242AA04(0, &qword_280896670);
      v26 = swift_getObjCClassFromMetadata();
      v27 = [objc_opt_self() bundleForClass_];
      sub_272433B20();
      sub_272434950();
      (*(v4 + 8))(v9, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_272436A80;
      v29 = (*(v1 + v13[5] + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
      v31 = *v29;
      v30 = v29[1];
      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = sub_27242A9B0();
      *(v28 + 32) = v31;
      *(v28 + 40) = v30;

      v22 = sub_272434940();
      goto LABEL_11;
    }
  }

LABEL_9:
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27242AA04(0, &qword_280896670);
  v24 = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v22 = sub_272434950();
  (*(v4 + 8))(v9, v3);
  return v22;
}

uint64_t sub_27241AF18@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v82 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967D0);
  v86 = *(v87 - 1);
  MEMORY[0x28223BE20](v87);
  v4 = (&v71 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967D8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v88 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v71 - v8;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967E0);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v76 = &v71 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967E8);
  MEMORY[0x28223BE20](v11 - 8);
  v73 = (&v71 - v12);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967F0);
  v13 = MEMORY[0x28223BE20](v72);
  v75 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v71 - v16;
  MEMORY[0x28223BE20](v15);
  v74 = &v71 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967F8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v78 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v23 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v24 = a1 + v23[8];
  v25 = *(v24 + 8);
  LOBYTE(v97) = *v24;
  v98 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  v77 = v4;
  if (v107 == 5)
  {
  }

  else
  {
    v26 = sub_272434CF0();

    if ((v26 & 1) == 0)
    {
LABEL_5:
      v97 = sub_27241BAE0();
      v98 = v27;
      sub_27240A1B8();
      v92 = sub_2724344C0();
      v83 = v28;
      v30 = v29;
      v91 = v31;
      KeyPath = swift_getKeyPath();
      LOBYTE(v97) = v30 & 1;
      v89 = v30 & 1;
      v32 = sub_2724343F0();
      v80 = 1;
      v79 = v32;
      v90 = 65537;
      goto LABEL_7;
    }
  }

  if (*(a1 + v23[19]) == 1)
  {
    goto LABEL_5;
  }

  v92 = 0;
  v83 = 0;
  v91 = 0;
  KeyPath = 0;
  v80 = 0;
  v79 = 0;
  v90 = 0;
  v89 = 0;
LABEL_7:
  v33 = *(v24 + 8);
  LOBYTE(v97) = *v24;
  v98 = v33;
  sub_272434730();
  if (v93 == 5)
  {
  }

  else
  {
    v34 = sub_272434CF0();

    if ((v34 & 1) == 0)
    {
      v35 = 1;
      goto LABEL_13;
    }
  }

  v35 = 1;
  if ((*(a1 + v23[19]) & 1) == 0)
  {
    v36 = v73;
    sub_27241BE78(v73);
    v37 = (a1 + v23[18]);
    v38 = *v37;
    v39 = *(v37 + 1);
    LOBYTE(v97) = v38;
    v98 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
    sub_272434730();
    v40 = sub_2724343F0();
    sub_272433CE0();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v36;
    v50 = v71;
    sub_27242A258(v49, v71, &qword_2808967E8);
    v51 = v50 + *(v72 + 36);
    *v51 = v40;
    *(v51 + 8) = v42;
    *(v51 + 16) = v44;
    *(v51 + 24) = v46;
    *(v51 + 32) = v48;
    *(v51 + 40) = 0;
    v52 = v50;
    v53 = v74;
    sub_27242A258(v52, v74, &qword_2808967F0);
    v54 = *(a1 + v23[20]);
    v55 = v75;
    sub_27240A0F0(v53, v75, &qword_2808967F0);
    v56 = v76;
    sub_27240A0F0(v55, v76, &qword_2808967F0);
    *(v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896818) + 48)) = (v54 & 1) == 0;
    sub_27240A158(v53, &qword_2808967F0);
    sub_27240A158(v55, &qword_2808967F0);
    sub_27242A258(v56, v22, &qword_2808967E0);
    v35 = 0;
  }

LABEL_13:
  v57 = 1;
  (*(v84 + 56))(v22, v35, 1, v85);
  if (os_variant_has_internal_ui())
  {
    v58 = v77;
    if (*(a1 + v23[22]) == 1)
    {
      sub_27241C984(v77);
      v57 = 0;
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896810);
    (*(*(v59 - 8) + 56))(v58, v57, 1, v59);
    sub_27242A258(v58, v9, &qword_2808967D0);
    v57 = 0;
  }

  (*(v86 + 56))(v9, v57, 1, v87);
  v60 = v78;
  sub_27240A0F0(v22, v78, &qword_2808967F8);
  v61 = v88;
  sub_27240A0F0(v9, v88, &qword_2808967D8);
  v87 = v22;
  *&v93 = v92;
  v62 = v83;
  *(&v93 + 1) = v83;
  *&v94 = v89;
  *(&v94 + 1) = v91;
  v63 = KeyPath;
  *&v95 = KeyPath;
  *(&v95 + 1) = v90;
  v64 = v79;
  *v96 = v79;
  memset(&v96[8], 0, 32);
  v65 = v80;
  v96[40] = v80;
  v66 = *v96;
  v67 = v82;
  v82[2] = v95;
  v67[3] = v66;
  v67[4] = *&v96[16];
  *(v67 + 73) = *&v96[25];
  v68 = v94;
  *v67 = v93;
  v67[1] = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896800);
  sub_27240A0F0(v60, v67 + *(v69 + 48), &qword_2808967F8);
  sub_27240A0F0(v61, v67 + *(v69 + 64), &qword_2808967D8);
  sub_27240A0F0(&v93, &v97, &qword_280896808);
  sub_27240A158(v9, &qword_2808967D8);
  sub_27240A158(v87, &qword_2808967F8);
  sub_27240A158(v61, &qword_2808967D8);
  sub_27240A158(v60, &qword_2808967F8);
  v97 = v92;
  v98 = v62;
  v99 = v89;
  v100 = v91;
  v101 = v63;
  v102 = v90;
  v103 = v64;
  v104 = 0u;
  v105 = 0u;
  v106 = v65;
  return sub_27240A158(&v97, &qword_280896808);
}

uint64_t sub_27241BAE0()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v20[-v7];
  v9 = (*(v0 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 20) + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);

  v10 = sub_2724349A0();

  sub_2724348F0();
  (*(v3 + 16))(v6, v8, v2);
  sub_27242AA04(0, &qword_280896670);
  if (v10 < 51)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    v16 = sub_272434950();
    (*(v3 + 8))(v8, v2);
  }

  else
  {
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    sub_272434950();
    (*(v3 + 8))(v8, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_272436A80;
    v15 = *v9;
    v14 = v9[1];
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_27242A9B0();
    *(v13 + 32) = v15;
    *(v13 + 40) = v14;

    v16 = sub_272434940();
  }

  return v16;
}

uint64_t sub_27241BE78@<X0>(_OWORD *a1@<X8>)
{
  v91 = a1;
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = v2 - 8;
  v78 = *(v2 - 8);
  v98 = *(v78 + 64);
  MEMORY[0x28223BE20](v2);
  v92 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896820);
  v6 = *(v5 - 8);
  v82 = v5;
  v83 = v6;
  MEMORY[0x28223BE20](v5);
  v79 = &v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896828);
  v9 = *(v8 - 8);
  v84 = v8;
  v85 = v9;
  MEMORY[0x28223BE20](v8);
  v80 = &v70 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896830);
  v90 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v81 = &v70 - v11;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896838);
  v87 = *(v89 - 8);
  v12 = MEMORY[0x28223BE20](v89);
  v86 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v97 = &v70 - v14;
  v15 = sub_272433B30();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_272434900();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  sub_2724348F0();
  (*(v17 + 16))(v20, v22, v16);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v25 = sub_272434950();
  v27 = v26;
  (*(v17 + 8))(v22, v16);
  *&v110 = v25;
  *(&v110 + 1) = v27;
  sub_27240A1B8();
  v28 = sub_2724344C0();
  v95 = v29;
  v96 = v28;
  LOBYTE(v16) = v30;
  v77 = v31;
  KeyPath = swift_getKeyPath();
  v76 = sub_2724343F0();
  v93 = v16 & 1;
  LOBYTE(v110) = v16 & 1;
  LOBYTE(v106) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v32 = *(v110 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  v33 = sub_272428CD4(0, v32, v110);

  v34 = swift_getKeyPath();
  v35 = v1;
  v36 = (v1 + *(v3 + 48));
  v37 = *v36;
  v74 = v36[1];
  v75 = v37;
  v38 = v36[2];
  v72 = v1;
  v73 = v38;
  *&v106 = v37;
  *(&v106 + 1) = v74;
  *&v107 = v38;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
  sub_272434750();
  v70 = v110;
  v39 = v111;
  v40 = v112;
  v41 = v92;
  sub_2724276E8(v35, v92);
  v42 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v43 = swift_allocObject();
  sub_272427750(v41, v43 + v42);
  v44 = swift_allocObject();
  *(v44 + 16) = sub_27242A2C0;
  *(v44 + 24) = v43;
  *&v106 = v33;
  v110 = v70;
  v111 = v39;
  v112 = v40;
  v99 = &v106;
  v100 = v34;
  v101 = sub_27242A358;
  v102 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896840);
  sub_27242A398();
  v45 = v79;
  sub_272434480();

  v46 = sub_27240BFB4(&qword_280896898, &qword_280896820);
  v47 = v80;
  v48 = v82;
  sub_2724345D0();
  (*(v83 + 8))(v45, v48);
  *&v110 = v48;
  *(&v110 + 1) = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v50 = v81;
  v51 = v84;
  sub_272434590();
  (*(v85 + 8))(v47, v51);
  *&v110 = v75;
  *(&v110 + 1) = v74;
  v111 = v73;
  sub_272434730();
  v110 = v106;
  v52 = v92;
  sub_2724276E8(v72, v92);
  v53 = swift_allocObject();
  sub_272427750(v52, v53 + v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896578);
  *&v106 = v51;
  *(&v106 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27242A610();
  v54 = v97;
  v55 = v88;
  sub_272434660();

  (*(v90 + 8))(v50, v55);
  v57 = v86;
  v56 = v87;
  v58 = *(v87 + 16);
  v59 = v89;
  v58(v86, v54, v89);
  *&v106 = v96;
  *(&v106 + 1) = v95;
  LOBYTE(v107) = v93;
  *(&v107 + 1) = *v105;
  DWORD1(v107) = *&v105[3];
  v60 = v77;
  *(&v107 + 1) = v77;
  *&v108 = KeyPath;
  BYTE8(v108) = 1;
  HIDWORD(v108) = *&v104[3];
  *(&v108 + 9) = *v104;
  LOBYTE(v54) = v76;
  LOBYTE(v109[0]) = v76;
  DWORD1(v109[0]) = *&v103[3];
  *(v109 + 1) = *v103;
  *(&v109[1] + 8) = 0u;
  *(v109 + 8) = 0u;
  BYTE8(v109[2]) = 1;
  v61 = v107;
  v62 = v91;
  *v91 = v106;
  v62[1] = v61;
  v63 = v108;
  v64 = v109[0];
  v65 = v109[1];
  *(v62 + 73) = *(&v109[1] + 9);
  v62[3] = v64;
  v62[4] = v65;
  v62[2] = v63;
  v66 = v62;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968A8);
  v58(&v66[*(v67 + 48)], v57, v59);
  sub_27240A0F0(&v106, &v110, &qword_2808966D8);
  v68 = *(v56 + 8);
  v68(v97, v59);
  v68(v57, v59);
  *&v110 = v96;
  *(&v110 + 1) = v95;
  LOBYTE(v111) = v93;
  *(&v111 + 1) = *v105;
  HIDWORD(v111) = *&v105[3];
  v112 = v60;
  v113 = KeyPath;
  v114 = 1;
  *v115 = *v104;
  *&v115[3] = *&v104[3];
  v116 = v54;
  *&v117[3] = *&v103[3];
  *v117 = *v103;
  v119 = 0u;
  v118 = 0u;
  v120 = 1;
  return sub_27240A158(&v110, &qword_2808966D8);
}

uint64_t sub_27241C984@<X0>(void *a1@<X8>)
{
  v68 = a1;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
  v80 = *(v82 - 8);
  v2 = MEMORY[0x28223BE20](v82);
  v87 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v77 = &v62 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896958);
  v79 = *(v81 - 8);
  v5 = MEMORY[0x28223BE20](v81);
  v78 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v62 - v7;
  v9 = sub_272434110();
  v10 = MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  sub_272434100();
  sub_2724340F0();
  v11 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_272433C00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896960);
  sub_272434960();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v12 = sub_2724344B0();
  v84 = v13;
  v85 = v12;
  LODWORD(v67) = v14;
  v86 = v15;
  sub_272434120();
  v16 = (v1 + *(v11 + 44));
  v17 = *v16;
  v18 = *(v16 + 2);
  v91 = v17;
  v92 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808967A0);
  sub_272434750();
  v76 = v8;
  sub_272434870();
  sub_272434100();
  sub_2724340F0();
  v19 = (v1 + *(v11 + 32));
  v20 = *v19;
  v21 = *(v19 + 1);
  LOBYTE(v89) = v20;
  v90 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v74 = sub_2724344B0();
  v73 = v22;
  v66 = v23;
  v75 = v24;
  sub_272434100();
  sub_2724340F0();
  v25 = objc_opt_self();
  v26 = [v25 sharedPreferences];
  v27 = [v26 dictationIsEnabled];

  LOBYTE(v89) = v27;
  sub_272434960();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v83 = sub_2724344B0();
  v72 = v28;
  v30 = v29;
  v71 = v31;
  sub_272434100();
  sub_2724340F0();
  v32 = [v25 sharedPreferences];
  LOBYTE(v25) = [v32 suppressDictationOptIn];

  LOBYTE(v89) = v25;
  sub_272434960();
  sub_2724340E0();

  sub_2724340F0();
  sub_272434130();
  v64 = sub_2724344B0();
  v69 = v33;
  v65 = v34;
  v70 = v35;
  sub_272434120();
  v36 = v77;
  sub_2724347A0();
  LOBYTE(v89) = v67 & 1;
  LOBYTE(v8) = v67 & 1;
  v63 = v67 & 1;
  v37 = v78;
  v38 = *(v79 + 16);
  v39 = v81;
  v38(v78, v76, v81);
  v40 = v66 & 1;
  LOBYTE(v91) = v66 & 1;
  v41 = v30 & 1;
  v88 = v30 & 1;
  v62 = v30 & 1;
  v67 = *(v80 + 16);
  v67(v87, v36, v82);
  v42 = v68;
  v43 = v84;
  *v68 = v85;
  v42[1] = v43;
  *(v42 + 16) = v8;
  v42[3] = v86;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896968);
  v38(v42 + v44[12], v37, v39);
  v45 = v42 + v44[16];
  v46 = v74;
  v47 = v73;
  *v45 = v74;
  *(v45 + 1) = v47;
  v45[16] = v40;
  *(v45 + 3) = v75;
  v48 = v42 + v44[20];
  v49 = v72;
  *v48 = v83;
  *(v48 + 1) = v49;
  v48[16] = v41;
  *(v48 + 3) = v71;
  v50 = v42 + v44[24];
  v51 = v64;
  v52 = v69;
  *v50 = v64;
  *(v50 + 1) = v52;
  v66 = v65 & 1;
  v50[16] = v65 & 1;
  *(v50 + 3) = v70;
  v53 = v42 + v44[28];
  v54 = v82;
  v67(v53, v87, v82);
  sub_27240A20C(v85, v84, v63);

  sub_27240A20C(v46, v47, v40);

  sub_27240A20C(v83, v49, v62);

  v55 = v51;
  v56 = v51;
  v57 = v69;
  LOBYTE(v42) = v66;
  sub_27240A20C(v56, v69, v66);
  v58 = *(v80 + 8);

  v58(v77, v54);
  v59 = *(v79 + 8);
  v60 = v81;
  v59(v76, v81);
  v58(v87, v54);
  sub_27240A21C(v55, v57, v42);

  sub_27240A21C(v83, v72, v88);

  sub_27240A21C(v74, v73, v91);

  v59(v78, v60);
  sub_27240A21C(v85, v84, v89);
}

uint64_t sub_27241D404@<X0>(void *a1@<X8>)
{
  sub_27241D484(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808965E8);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

uint64_t sub_27241D484@<X0>(void *a1@<X8>)
{
  v67 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966C0);
  v1 = MEMORY[0x28223BE20](v64);
  v66 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v65 = (&v59 - v3);
  v4 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_272433B30();
  MEMORY[0x28223BE20](v6 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_272434900();
  v60 = *(v62 - 8);
  v8 = MEMORY[0x28223BE20](v62);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  v13 = objc_opt_self();
  v14 = [v13 sharedPreferences];
  v15 = [v14 dictationIsEnabled];

  if ((v15 & 1) != 0 || (v16 = [v13 sharedPreferences], v17 = objc_msgSend(v16, sel_suppressDictationOptIn), v16, !v17))
  {
    v34 = v68;
    sub_2724276E8(v68, &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v35 = (*(v63 + 80) + 16) & ~*(v63 + 80);
    v36 = swift_allocObject();
    sub_272427750(&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35);
    KeyPath = swift_getKeyPath();
    v38 = v34 + *(v4 + 32);
    v39 = *v38;
    v40 = *(v38 + 8);
    LOBYTE(v90[0]) = v39;
    *(&v90[0] + 1) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
    sub_272434730();
    LODWORD(v63) = LOBYTE(v89[0]);
    v41 = sub_272434850();
    v43 = v42;
    sub_2724245C0(v34, v90);
    v82 = v90[10];
    v83 = v90[11];
    v78 = v90[6];
    v79 = v90[7];
    v80 = v90[8];
    v81 = v90[9];
    v74 = v90[2];
    v75 = v90[3];
    v76 = v90[4];
    v77 = v90[5];
    v72 = v90[0];
    v73 = v90[1];
    v85[10] = v90[10];
    v85[11] = v90[11];
    v85[6] = v90[6];
    v85[7] = v90[7];
    v85[8] = v90[8];
    v85[9] = v90[9];
    v85[2] = v90[2];
    v85[3] = v90[3];
    v85[4] = v90[4];
    v85[5] = v90[5];
    v84 = *&v90[12];
    v86 = *&v90[12];
    v85[0] = v90[0];
    v85[1] = v90[1];
    sub_27240A0F0(&v72, v89, &qword_2808966C8);
    sub_27240A158(v85, &qword_2808966C8);
    v90[10] = v82;
    v90[11] = v83;
    *&v90[12] = v84;
    v90[6] = v78;
    v90[7] = v79;
    v90[8] = v80;
    v90[9] = v81;
    v90[2] = v74;
    v90[3] = v75;
    v90[4] = v76;
    v90[5] = v77;
    v90[0] = v72;
    v90[1] = v73;
    v44 = sub_2724343F0();
    LOBYTE(v89[0]) = 1;
    *v87 = v41;
    *&v87[8] = v43;
    *&v87[176] = v90[10];
    *&v87[192] = v90[11];
    *&v87[208] = *&v90[12];
    *&v87[112] = v90[6];
    *&v87[128] = v90[7];
    *&v87[144] = v90[8];
    *&v87[160] = v90[9];
    *&v87[48] = v90[2];
    *&v87[64] = v90[3];
    *&v87[80] = v90[4];
    *&v87[96] = v90[5];
    *&v87[16] = v90[0];
    *&v87[32] = v90[1];
    v87[216] = v44;
    memset(&v87[224], 0, 32);
    v87[256] = 1;
    memcpy(v69, v87, 0x101uLL);
    memcpy(v88, v87, 0x101uLL);
    memcpy(&v71[7], v87, 0x101uLL);

    sub_27240A0F0(v87, v90, &qword_2808966D0);

    sub_27240A0F0(v88, v90, &qword_2808966D0);
    sub_27240A158(v69, &qword_2808966D0);

    v89[0] = sub_272429804;
    v89[1] = v36;
    v89[2] = KeyPath;
    LOBYTE(v89[3]) = v63;
    memcpy(&v89[3] + 1, v71, 0x108uLL);
    sub_2724298B8(v89);
    memcpy(v90, v89, 0x122uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966E0);
    sub_2724298C4();
    sub_27240BFB4(&qword_280896710, &qword_2808966E0);
    sub_272434290();
    v33 = v68;
    sub_27240A158(v87, &qword_2808966D0);

    memcpy(v90, v70, 0x122uLL);
  }

  else
  {
    sub_2724348F0();
    v18 = v60;
    v19 = v62;
    (*(v60 + 16))(v10, v12, v62);
    sub_27242AA04(0, &qword_280896670);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v21 = [objc_opt_self() bundleForClass_];
    sub_272433B20();
    v22 = sub_272434950();
    v24 = v23;
    (*(v18 + 8))(v12, v19);
    *&v90[0] = v22;
    *(&v90[0] + 1) = v24;
    sub_27240A1B8();
    v25 = sub_2724344C0();
    v27 = v26;
    LOBYTE(v24) = v28;
    v30 = v29;
    v31 = swift_getKeyPath();
    v32 = sub_2724343F0();
    LOBYTE(v90[0]) = v24 & 1;
    v89[0] = v25;
    v89[1] = v27;
    LOBYTE(v89[2]) = v24 & 1;
    v89[3] = v30;
    v89[4] = v31;
    LOBYTE(v89[5]) = 1;
    LOBYTE(v89[6]) = v32;
    memset(&v89[7], 0, 32);
    LOBYTE(v89[11]) = 1;
    sub_272429A10(v89);
    memcpy(v70, v89, 0x122uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966E0);
    sub_2724298C4();
    sub_27240BFB4(&qword_280896710, &qword_2808966E0);
    sub_272434290();
    v33 = v68;
  }

  v45 = sub_272434850();
  v46 = v65;
  *v65 = v45;
  *(v46 + 8) = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896718);
  sub_27242567C(v33, v46 + *(v48 + 44));
  v49 = sub_272434410();
  sub_272433CE0();
  v50 = v46 + *(v64 + 36);
  *v50 = v49;
  *(v50 + 8) = v51;
  *(v50 + 16) = v52;
  *(v50 + 24) = v53;
  *(v50 + 32) = v54;
  *(v50 + 40) = 0;
  memcpy(v69, v90, 0x122uLL);
  v55 = v66;
  sub_27240A0F0(v46, v66, &qword_2808966C0);
  memcpy(v70, v69, 0x122uLL);
  v56 = v67;
  memcpy(v67, v69, 0x122uLL);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896720);
  sub_27240A0F0(v55, v56 + *(v57 + 48), &qword_2808966C0);
  sub_27240A0F0(v70, v89, &qword_280896728);
  sub_27240A158(v46, &qword_2808966C0);
  sub_27240A158(v55, &qword_2808966C0);
  memcpy(v89, v69, 0x122uLL);
  return sub_27240A158(v89, &qword_280896728);
}

uint64_t sub_27241DE10()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-v7];
  v9 = (v0 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 68));
  v10 = *v9;
  v11 = *(v9 + 1);
  v16[16] = v10;
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698);
  sub_272434730();
  sub_2724348F0();
  (*(v3 + 16))(v6, v8, v2);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v14 = sub_272434950();
  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t sub_27241E154()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966B8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v18 - v1;
  v3 = sub_272433B30();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_272434900();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - v9;
  sub_2724348F0();
  (*(v5 + 16))(v8, v10, v4);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v13 = sub_272434950();
  v15 = v14;
  (*(v5 + 8))(v10, v4);
  v18[1] = v13;
  v18[2] = v15;
  sub_272433CC0();
  v16 = sub_272433CD0();
  (*(*(v16 - 8) + 56))(v2, 0, 1, v16);
  sub_27240A1B8();
  return sub_272434790();
}

uint64_t sub_27241E414@<X0>(uint64_t a1@<X8>)
{
  sub_27241E470();
  sub_27240A1B8();
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_27241E470()
{
  v1 = sub_272433B30();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_272434900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v19[-v7];
  v9 = (v0 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 68));
  v10 = *v9;
  v11 = *(v9 + 1);
  v21 = v10;
  v22 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698);
  sub_272434730();
  if (v20 && v20 != 1)
  {
    sub_2724348F0();
    (*(v3 + 16))(v6, v8, v2);
    sub_27242AA04(0, &qword_280896670);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
  }

  else
  {
    v12 = [objc_opt_self() currentDevice];
    [v12 userInterfaceIdiom];

    sub_2724348F0();
    (*(v3 + 16))(v6, v8, v2);
    sub_27242AA04(0, &qword_280896670);
    v13 = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
  }

  v16 = v14;
  sub_272433B20();
  v17 = sub_272434950();
  (*(v3 + 8))(v8, v2);
  return v17;
}

uint64_t sub_27241E944(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8);
  v28 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v30 = MEMORY[0x277D84F90];

  sub_272433C10();
  v6 = (a1 + *(v5 + 32));
  v7 = v6[1];
  v30 = *v6;
  v8 = v30;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896678);
  sub_272434730();
  v9 = v29;
  sub_2724276E8(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_272427750(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = &v9[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  v13 = *&v9[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didError];
  *v12 = sub_272427F38;
  v12[1] = v11;
  sub_272427F50(v13);

  v30 = v8;
  v31 = v7;
  sub_272434730();
  v14 = v29;
  sub_2724276E8(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = swift_allocObject();
  sub_272427750(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v10);
  v16 = &v14[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
  v17 = *&v14[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didStart];
  *v16 = sub_272427F60;
  v16[1] = v15;
  sub_272427F50(v17);

  v30 = v8;
  v31 = v7;
  sub_272434730();
  v18 = v29;
  sub_2724276E8(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_272427750(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v10);
  v20 = &v18[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
  v21 = *&v18[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_didEnd];
  *v20 = sub_272427F78;
  v20[1] = v19;
  sub_272427F50(v21);

  v30 = v8;
  v31 = v7;
  sub_272434730();
  v22 = v29;
  sub_2724276E8(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = swift_allocObject();
  sub_272427750(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v10);
  v24 = &v22[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
  v25 = *&v22[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_recognizedPhonemesBlock];
  *v24 = sub_272427F90;
  v24[1] = v23;
  sub_272427F50(v25);

  sub_2724276E8(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = swift_allocObject();
  sub_272427750(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v10);
  sub_272428070(sub_272428000);
  sub_272433C30();

  return sub_272433C40();
}

void sub_27241ECD0()
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  if (v7 > 5u)
  {
  }

  else
  {
    v0 = sub_272434CF0();

    if ((v0 & 1) == 0)
    {
      v1 = sub_272433BA0();
      v2 = sub_272434B30();
      if (os_log_type_enabled(v1, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&dword_272406000, v1, v2, "recordingManager.didError, dictationState -> .errored (unknownError)", v3, 2u);
        MEMORY[0x2743C99D0](v3, -1, -1);
      }

      sub_272434740();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698);
      sub_272434740();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
      sub_272434740();
      return;
    }
  }

  v4 = sub_272433BA0();
  v5 = sub_272434B30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_272406000, v4, v5, "recordingManager.didError, already in .errored state. no-op", v6, 2u);
    MEMORY[0x2743C99D0](v6, -1, -1);
  }
}

uint64_t sub_27241F004()
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v0 = sub_272433BA0();
  v1 = sub_272434B30();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_272406000, v0, v1, "recordingManager.didStart, dictationState -> .recording", v2, 2u);
    MEMORY[0x2743C99D0](v2, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434740();
}

void sub_27241F10C(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47[-v7];
  v9 = a1 + *(v6 + 32);
  v10 = *(v9 + 8);
  v50 = *v9;
  v51 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  if (v49 == 3)
  {

LABEL_4:
    sub_2724276E8(a1, v8);
    v12 = sub_272433BA0();
    v13 = sub_272434B30();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v49 = v15;
      *v14 = 136315138;
      v16 = &v8[*(v2 + 32)];
      v17 = *v16;
      v18 = *(v16 + 1);
      v50 = v17;
      v51 = v18;
      sub_272434730();
      v19 = 0xE800000000000000;
      v20 = 0x64656873696E6966;
      if (v48 != 5)
      {
        v20 = 0x6465726F727265;
        v19 = 0xE700000000000000;
      }

      v21 = 0x6F636552656E6F64;
      v22 = 0xED0000676E696472;
      if (v48 == 3)
      {
        v21 = 0x6E6964726F636572;
        v22 = 0xE900000000000067;
      }

      if (v48 <= 4u)
      {
        v20 = v21;
        v19 = v22;
      }

      v23 = 0xE400000000000000;
      v24 = 0xD000000000000010;
      v25 = 0x8000000272437A90;
      if (v48 != 1)
      {
        v24 = 0xD000000000000014;
        v25 = 0x8000000272437AB0;
      }

      if (v48)
      {
        v23 = v25;
      }

      else
      {
        v24 = 1701602409;
      }

      if (v48 <= 2u)
      {
        v26 = v24;
      }

      else
      {
        v26 = v20;
      }

      if (v48 <= 2u)
      {
        v27 = v23;
      }

      else
      {
        v27 = v19;
      }

      sub_272413884(v8);
      v28 = sub_2724285FC(v26, v27, &v49);

      *(v14 + 4) = v28;
      _os_log_impl(&dword_272406000, v12, v13, "recordingManager.didEnd, %s dictationState -> .doneRecording", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x2743C99D0](v15, -1, -1);
      MEMORY[0x2743C99D0](v14, -1, -1);
    }

    else
    {

      sub_272413884(v8);
    }

    v46 = *(v9 + 8);
    v50 = *v9;
    v51 = v46;
    LOBYTE(v49) = 4;

    sub_272434740();

    return;
  }

  v11 = sub_272434CF0();

  if (v11)
  {
    goto LABEL_4;
  }

  sub_2724276E8(a1, v5);
  v29 = sub_272433BA0();
  v30 = sub_272434B30();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136315138;
    v33 = &v5[*(v2 + 32)];
    v34 = *v33;
    v35 = *(v33 + 1);
    v50 = v34;
    v51 = v35;
    sub_272434730();
    v36 = 0xE800000000000000;
    v37 = 0x64656873696E6966;
    if (v48 != 5)
    {
      v37 = 0x6465726F727265;
      v36 = 0xE700000000000000;
    }

    v38 = 0x6F636552656E6F64;
    v39 = 0xED0000676E696472;
    if (v48 == 3)
    {
      v38 = 0x6E6964726F636572;
      v39 = 0xE900000000000067;
    }

    if (v48 <= 4u)
    {
      v37 = v38;
      v36 = v39;
    }

    v40 = 0xE400000000000000;
    v41 = 0xD000000000000010;
    v42 = 0x8000000272437A90;
    if (v48 != 1)
    {
      v41 = 0xD000000000000014;
      v42 = 0x8000000272437AB0;
    }

    if (v48)
    {
      v40 = v42;
    }

    else
    {
      v41 = 1701602409;
    }

    if (v48 <= 2u)
    {
      v43 = v41;
    }

    else
    {
      v43 = v37;
    }

    if (v48 <= 2u)
    {
      v44 = v40;
    }

    else
    {
      v44 = v36;
    }

    sub_272413884(v5);
    v45 = sub_2724285FC(v43, v44, &v49);

    *(v31 + 4) = v45;
    _os_log_impl(&dword_272406000, v29, v30, "recordingManager.didEnd, state (%s) is not .recording, no-op.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x2743C99D0](v32, -1, -1);
    MEMORY[0x2743C99D0](v31, -1, -1);
  }

  else
  {

    sub_272413884(v5);
  }
}

uint64_t sub_27241F714(uint64_t a1, uint64_t a2)
{
  v4 = sub_2724348B0();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2724348D0();
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  sub_27242AA04(0, &qword_280896588);
  v13 = sub_272434B90();
  sub_2724276E8(a2, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  sub_272427750(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  aBlock[4] = sub_2724282C8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2724205BC;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  sub_2724348C0();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27242AA74(&qword_280896680, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896688);
  sub_27240BFB4(&qword_280896690, &qword_280896688);
  sub_272434C50();
  MEMORY[0x2743C91B0](0, v9, v6, v16);
  _Block_release(v16);

  (*(v21 + 8))(v6, v4);
  return (*(v19 + 8))(v9, v20);
}

uint64_t sub_27241FAA4(uint64_t a1, void (**a2)(char *, uint64_t))
{
  v74 = sub_272433AC0();
  MEMORY[0x28223BE20](v74);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v70 = a1 + 16;
  if (!v7)
  {
    goto LABEL_18;
  }

  v72 = a2;
  v8 = 0;
  a2 = (v4 + 8);
  v69 = a1;
  v9 = a1 + 40;
  v10 = MEMORY[0x277D84F90];
  v71 = v9;
LABEL_3:
  v73 = v10;
  v11 = (v9 + 16 * v8);
  v12 = v8;
  do
  {
    if (v12 >= v7)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_38;
    }

    v13 = v7;
    v14 = *(v11 - 1);
    v15 = *v11;
    v77 = v14;
    v78 = v15;

    sub_272433AB0();
    sub_27240A1B8();
    v16 = sub_272434BF0();
    v18 = v17;
    (*a2)(v6, v74);

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {
      v10 = v73;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_272415200(0, *(v10 + 16) + 1, 1);
        v10 = v75;
      }

      v9 = v71;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_272415200((v21 > 1), v22 + 1, 1);
        v10 = v75;
      }

      *(v10 + 16) = v22 + 1;
      v23 = v10 + 16 * v22;
      *(v23 + 32) = v14;
      *(v23 + 40) = v15;
      v7 = v13;
      if (v8 == v13)
      {

        a2 = v72;
        goto LABEL_18;
      }

      goto LABEL_3;
    }

    ++v12;
    v11 += 2;
    v7 = v13;
  }

  while (v8 != v13);
  v24 = *(v73 + 16);

  a2 = v72;
  v12 = v69;
  if (!v24)
  {
    v74 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
    v38 = sub_272433BA0();
    v39 = sub_272434B30();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_272406000, v38, v39, "recognizedPhonemesBlock, dictationState -> .finished", v40, 2u);
      MEMORY[0x2743C99D0](v40, -1, -1);
    }

    v41 = a2 + *(v74 + 32);
    v42 = *(v41 + 1);
    LOBYTE(v77) = *v41;
    v78 = v42;
    LOBYTE(v75) = 5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
    sub_272434740();

    v43 = sub_272433BA0();
    v44 = sub_272434B30();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77 = v46;
      *v45 = 136315138;
      v47 = MEMORY[0x2743C9070](v12, MEMORY[0x277D837D0]);
      v49 = sub_2724285FC(v47, v48, &v77);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_272406000, v43, v44, "phonemeSuggestions: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v50 = v46;
      v7 = v13;
      MEMORY[0x2743C99D0](v50, -1, -1);
      MEMORY[0x2743C99D0](v45, -1, -1);
    }

    v51 = v70 + 16 * v7;
    v11 = *v51;
    v6 = *(v51 + 8);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v52 = *(v12 + 2);
      if (v52)
      {
        goto LABEL_27;
      }

      goto LABEL_40;
    }

LABEL_39:
    v12 = sub_272429080(v12);
    v52 = *(v12 + 2);
    if (v52)
    {
LABEL_27:
      *(v12 + 2) = v52 - 1;

      v80 = v12;
      v52 = *(v12 + 2);
      if (v52 < *(v12 + 3) >> 1)
      {
        goto LABEL_28;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v12 = sub_2724150F4(1, v52 + 1, 1, v12);
    v80 = v12;
LABEL_28:
    sub_272429678(0, 0, 1, v11, v6);

    v80 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    v77 = v12;

    sub_272433C10();
    v53 = sub_272433BA0();
    v54 = sub_272434B30();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v77 = v56;
      *v55 = 136315138;

      v58 = MEMORY[0x2743C9070](v57, MEMORY[0x277D837D0]);
      v60 = v59;

      v61 = sub_2724285FC(v58, v60, &v77);

      *(v55 + 4) = v61;
      _os_log_impl(&dword_272406000, v53, v54, "rearrangedIPAs: %s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      MEMORY[0x2743C99D0](v56, -1, -1);
      MEMORY[0x2743C99D0](v55, -1, -1);
    }

    if (*(v12 + 2) == 1)
    {
      v63 = *(v12 + 4);
      v62 = *(v12 + 5);
      v64 = v74;
      v65 = (a2 + *(v74 + 40));
      v66 = *v65;
      v67 = v65[1];
      v68 = v65[2];
      v77 = *v65;
      v78 = v67;
      v79 = v68;
      v75 = v63;
      v76 = v62;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
      sub_272434740();
      if ((*(a2 + *(v64 + 76)) & 1) == 0)
      {
        v77 = v66;
        v78 = v67;
        v79 = v68;
        result = sub_272434730();
        if (!v76)
        {
          __break(1u);
          return result;
        }

        sub_2724202B0();
      }
    }
  }

LABEL_18:
  v25 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v26 = sub_272433BA0();
  v27 = sub_272434B30();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_272406000, v26, v27, "recognizedPhonemesBlock empty phonemeSuggestions, dictationState -> .errored (noSpeechDetected)", v28, 2u);
    MEMORY[0x2743C99D0](v28, -1, -1);
  }

  v29 = a2 + v25[8];
  v30 = *(v29 + 1);
  LOBYTE(v77) = *v29;
  v78 = v30;
  LOBYTE(v75) = 6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434740();

  v31 = a2 + v25[17];
  v32 = *v31;
  v33 = *(v31 + 1);
  LOBYTE(v77) = v32;
  v78 = v33;
  LOBYTE(v75) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698);
  sub_272434740();
  v34 = a2 + v25[16];
  v35 = *v34;
  v36 = *(v34 + 1);
  LOBYTE(v77) = v35;
  v78 = v36;
  LOBYTE(v75) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
  return sub_272434740();
}

void sub_2724202B0()
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966B0);
  sub_272434730();
  [v13 setUsesApplicationAudioSession_];

  sub_272434730();
  [v13 stopSpeakingAtBoundary_];

  swift_beginAccess();

  v0 = sub_272434910();

  v1 = [objc_opt_self() voiceWithLanguage_];

  v2 = sub_272434910();
  if (v1)
  {
    v3 = v2;
    v4 = [v1 language];
    if (!v4)
    {
      sub_272434930();
      v4 = sub_272434910();
    }

    v5 = [objc_opt_self() lhPhonemesFromIPA:v3 language:v4];

    if (v5)
    {
      v6 = sub_272434930();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    sub_272434C90();

    if (v8)
    {
      MEMORY[0x2743C8FE0](v6, v8);

      MEMORY[0x2743C8FE0](0x726F3D696F745C1BLL, 0xEB000000005C6874);
      v9 = objc_allocWithZone(MEMORY[0x277CB84C0]);
      v10 = sub_272434910();

      v11 = [v9 initWithString_];

      [v11 setVoice_];
      sub_272434730();
      [v12 speakUtterance_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2724205BC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_272420600(uint64_t a1, uint64_t a2)
{
  v3 = sub_272433C80();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_272433C90();
  v10 = *(v4 + 104);
  v10(v7, *MEMORY[0x277CD8F78], v3);
  v11 = sub_272433C70();
  v12 = *(v4 + 8);
  v12(v7, v3);
  v12(v9, v3);
  if (v11)
  {
    v13 = (a2 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 60));
    v14 = *v13;
    v15 = *(v13 + 1);
    v23 = v14;
    v24 = v15;
    v22 = 1;
  }

  else
  {
    sub_272433C90();
    v10(v7, *MEMORY[0x277CD8F68], v3);
    v16 = sub_272433C70();
    v12(v7, v3);
    result = (v12)(v9, v3);
    if ((v16 & 1) == 0)
    {
      return result;
    }

    v18 = (a2 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 60));
    v19 = *v18;
    v20 = *(v18 + 1);
    v23 = v19;
    v24 = v20;
    v22 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
  return sub_272434740();
}

uint64_t sub_27242082C()
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  if (v1 != 5)
  {
    sub_272434CF0();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  return sub_272433C10();
}

uint64_t sub_272420A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896668);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = v28 - v6;
  v7 = sub_2724342C0();
  MEMORY[0x28223BE20](v7 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896658);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896648);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v28 - v14;
  v16 = *(a1 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 20) + 8);
  swift_beginAccess();
  if (*(v16 + 24))
  {
    v17 = sub_2724342A0();
    v30 = a2;
    v28[1] = v28;
    MEMORY[0x28223BE20](v17);
    v28[-2] = a1;
    v29 = v10;
    v18 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808960B8);
    sub_27240BFB4(&qword_280896620, &qword_2808960B8);
    sub_272433DC0();
    v19 = sub_27240BFB4(&qword_280896660, &qword_280896658);
    v21 = v32;
    v20 = v33;
    MEMORY[0x2743C8900](v9, v33, v19);
    (*(v5 + 16))(v13, v21, v18);
    (*(v5 + 56))(v13, 0, 1, v18);
    v34 = v20;
    v35 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x2743C8910](v13, v18, OpaqueTypeConformance2);
    sub_27240A158(v13, &qword_280896648);
    v23 = v18;
    v10 = v29;
    (*(v5 + 8))(v21, v23);
    (*(v31 + 8))(v9, v20);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
    v24 = sub_27240BFB4(&qword_280896660, &qword_280896658);
    v34 = v33;
    v35 = v24;
    v25 = swift_getOpaqueTypeConformance2();
    MEMORY[0x2743C8910](v13, v4, v25);
    sub_27240A158(v13, &qword_280896648);
  }

  v26 = sub_272427C24();
  MEMORY[0x2743C8900](v15, v10, v26);
  return sub_27240A158(v15, &qword_280896648);
}

uint64_t sub_272420F18(uint64_t a1)
{
  v2 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2724276E8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_272427750(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_272434780();
}

uint64_t sub_272421044(uint64_t a1)
{
  v1 = (*(a1 + *(type metadata accessor for VCUIPhoneticVocabularyRecordingView(0) + 20) + 8) + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_dismissEnrollmentFlow);
  swift_beginAccess();
  v2 = *v1;

  v2(0, 0, 0);
}

uint64_t sub_2724210D4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_272433B30();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_272434900();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  sub_2724348F0();
  (*(v4 + 16))(v7, v9, v3);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_272433B20();
  v12 = sub_272434950();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v19[1] = v12;
  v19[2] = v14;
  sub_27240A1B8();
  result = sub_2724344C0();
  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  return result;
}

void sub_2724212F0()
{
  v0 = [objc_opt_self() sharedPreferences];
  [v0 setSuppressDictationOptIn_];
}

uint64_t sub_272421354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a4;
  v28 = a1;
  v29 = a3;
  v34 = a5;
  v33 = sub_272434170();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_272434360();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896860);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968C0);
  v16 = *(v15 - 8);
  v31 = v15;
  v32 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  *v14 = sub_2724340D0();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968C8);
  sub_2724217BC(v27, a2, v29, v28, &v14[*(v19 + 44)]);
  v20 = [objc_opt_self() tertiarySystemGroupedBackgroundColor];
  v35 = sub_272434690();
  *&v14[*(v12 + 36)] = sub_272434810();
  sub_272434350();
  v21 = sub_27242A514();
  sub_272434580();
  (*(v9 + 8))(v11, v8);
  sub_27240A158(v14, &qword_280896860);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968D0);
  v22 = v30;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_272436A80;
  sub_272434160();
  v35 = v23;
  sub_27242AA74(&qword_2808960F0, MEMORY[0x277CE01F0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808968E0);
  sub_27240BFB4(&qword_2808960F8, &unk_2808968E0);
  v24 = v33;
  sub_272434C50();
  v35 = v12;
  v36 = v21;
  swift_getOpaqueTypeConformance2();
  v25 = v31;
  sub_2724345C0();
  (*(v22 + 8))(v7, v24);
  return (*(v32 + 8))(v18, v25);
}

uint64_t sub_2724217BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v184 = a4;
  v203 = a3;
  v204 = a2;
  v180 = a5;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968F0);
  v6 = MEMORY[0x28223BE20](v179);
  v181 = v154 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v178 = (v154 - v9);
  MEMORY[0x28223BE20](v8);
  v200 = v154 - v10;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808968F8);
  v177 = *(v188 - 8);
  v11 = MEMORY[0x28223BE20](v188);
  v170 = v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = v154 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896900);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v199 = v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v198 = v154 - v17;
  v18 = sub_272434110();
  MEMORY[0x28223BE20](v18 - 8);
  v166 = v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896908);
  v173 = *(v174 - 8);
  v20 = MEMORY[0x28223BE20](v174);
  v175 = v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v167 = v154 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896910);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v197 = v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v196 = v154 - v26;
  v187 = sub_272433D50();
  v201 = *(v187 - 8);
  v27 = MEMORY[0x28223BE20](v187);
  v186 = v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v185 = v154 - v29;
  v30 = sub_272433B30();
  MEMORY[0x28223BE20](v30 - 8);
  v191 = v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_272434900();
  v202 = *(v192 - 8);
  v32 = MEMORY[0x28223BE20](v192);
  v190 = v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v154 - v34;
  v182 = sub_2724342E0();
  v183 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v37 = v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v38 = *(v205 - 1);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v205);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896918);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = v154 - v42;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896920);
  v176 = *(v195 - 8);
  v44 = MEMORY[0x28223BE20](v195);
  v194 = v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v47 = v154 - v46;
  v189 = a1;
  sub_2724276E8(a1, v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v49 = swift_allocObject();
  sub_272427750(v154 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48);
  v50 = (v49 + ((v39 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
  v51 = v203;
  *v50 = v204;
  v50[1] = v51;

  sub_272434780();
  sub_2724342D0();
  sub_27240BFB4(&qword_280896928, &qword_280896918);
  sub_27242AA74(&qword_280896930, MEMORY[0x277CDE0B8]);
  v193 = v47;
  v52 = v182;
  sub_272434500();
  (*(v183 + 8))(v37, v52);
  (*(v41 + 8))(v43, v40);
  sub_2724348F0();
  v53 = v202;
  v54 = v202 + 16;
  v55 = *(v202 + 16);
  v56 = v192;
  v55(v190, v35, v192);
  sub_27242AA04(0, &qword_280896670);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v58 = objc_opt_self();
  v59 = [v58 bundleForClass_];
  sub_272433B20();
  sub_272434950();
  v60 = v53 + 8;
  v61 = *(v53 + 8);
  v168 = v35;
  v202 = v60;
  v61(v35, v56);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896938);
  result = swift_allocObject();
  *(result + 16) = xmmword_272436A80;
  v64 = v184 + 1;
  if (!__OFADD__(v184, 1))
  {
    v155 = xmmword_272436A80;
    v156 = v62;
    v160 = v61;
    v162 = v58;
    v163 = ObjCClassFromMetadata;
    v164 = v55;
    v165 = v54;
    v65 = MEMORY[0x277D83C10];
    *(result + 56) = MEMORY[0x277D83B88];
    *(result + 64) = v65;
    *(result + 32) = v64;
    v66 = sub_272434920();
    v68 = v67;

    *&v206 = v66;
    *(&v206 + 1) = v68;
    v154[1] = sub_27240A1B8();
    v69 = sub_2724344C0();
    v71 = v70;
    v73 = v72;
    v171 = v74;
    v75 = v185;
    v76 = v189;
    sub_272419C80(v185);
    v77 = v201;
    v78 = *(v201 + 104);
    v79 = v186;
    v158 = *MEMORY[0x277CDF3D0];
    v80 = v187;
    v159 = v201 + 104;
    v157 = v78;
    v78(v186);
    LOBYTE(v66) = sub_272433D40();
    v82 = *(v77 + 8);
    v81 = v77 + 8;
    v82(v79, v80);
    v161 = v82;
    v82(v75, v80);
    if (v66)
    {
      v83 = sub_2724346B0();
    }

    else
    {
      v83 = sub_2724346C0();
    }

    v201 = v81;
    *&v206 = v83;
    v183 = sub_272434490();
    v182 = v84;
    v172 = v85;
    v184 = v86;
    sub_27240A21C(v69, v71, v73 & 1);

    if (*(v76 + v205[22]) == 1)
    {
      sub_272434100();
      sub_2724340F0();
      sub_2724340E0();
      sub_2724340F0();
      sub_272434130();
      v87 = sub_2724344B0();
      v89 = v88;
      v91 = v90;
      *&v206 = sub_2724346A0();
      v92 = sub_272434490();
      v94 = v93;
      v96 = v95;
      v98 = v97;
      sub_27240A21C(v87, v89, v91 & 1);

      *&v206 = v92;
      *(&v206 + 1) = v94;
      v76 = v189;
      LOBYTE(v207) = v96 & 1;
      v208 = v98;
      v99 = v167;
      sub_272434570();
      sub_27240A21C(v92, v94, v96 & 1);

      v100 = v99;
      v101 = v196;
      sub_27242A258(v100, v196, &qword_280896908);
      v102 = 0;
      v103 = v198;
    }

    else
    {
      v102 = 1;
      v103 = v198;
      v101 = v196;
    }

    v104 = 1;
    (*(v173 + 56))(v101, v102, 1, v174);
    if (*(v76 + v205[21]) == 1)
    {
      v105 = v101;
      v106 = v168;
      sub_2724348F0();
      v107 = v192;
      v164(v190, v106, v192);
      v108 = [v162 bundleForClass_];
      sub_272433B20();
      sub_272434950();
      v160(v106, v107);
      v109 = v76;
      v110 = swift_allocObject();
      *(v110 + 16) = v155;
      *(v110 + 56) = MEMORY[0x277D837D0];
      *(v110 + 64) = sub_27242A9B0();
      v111 = v203;
      *(v110 + 32) = v204;
      *(v110 + 40) = v111;

      v112 = sub_272434940();
      v114 = v113;

      *&v206 = v112;
      *(&v206 + 1) = v114;
      v115 = sub_2724344C0();
      v117 = v116;
      *&v206 = v115;
      *(&v206 + 1) = v116;
      LOBYTE(v106) = v118 & 1;
      LOBYTE(v207) = v118 & 1;
      v208 = v119;
      sub_272434570();
      v120 = v117;
      v76 = v109;
      sub_27240A21C(v115, v120, v106);

      v121 = v185;
      sub_272419C80(v185);
      v122 = v186;
      v123 = v187;
      v157(v186, v158, v187);
      LOBYTE(v115) = sub_272433D40();
      v124 = v161;
      v161(v122, v123);
      v124(v121, v123);
      if (v115)
      {
        v125 = sub_2724346B0();
      }

      else
      {
        v125 = sub_2724346C0();
      }

      v126 = v125;
      v127 = v170;
      sub_27242A258(v175, v170, &qword_280896908);
      *(v127 + *(v188 + 36)) = v126;
      v128 = v127;
      v129 = v169;
      sub_27242A258(v128, v169, &qword_2808968F8);
      sub_27242A258(v129, v103, &qword_2808968F8);
      v104 = 0;
      v101 = v105;
    }

    (*(v177 + 56))(v103, v104, 1, v188);
    v130 = sub_2724346F0();
    v131 = (v76 + v205[10]);
    v132 = *(v131 + 2);
    v206 = *v131;
    v207 = v132;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
    sub_272434730();
    if (v210)
    {
      if (v209 == v204 && v210 == v203)
      {

        v133 = 1.0;
LABEL_19:
        v135 = v178;
        sub_272433EF0();
        *v135 = v130;
        *(v135 + 1) = v133;
        v136 = v200;
        sub_27242A258(v135, v200, &qword_2808968F0);
        v137 = v176;
        v138 = *(v176 + 16);
        v139 = v194;
        v140 = v195;
        v138(v194, v193, v195);
        v141 = v101;
        v142 = v197;
        sub_27240A0F0(v141, v197, &qword_280896910);
        v143 = v199;
        sub_27240A0F0(v103, v199, &qword_280896900);
        v144 = v181;
        sub_27240A0F0(v136, v181, &qword_2808968F0);
        v145 = v180;
        v138(v180, v139, v140);
        v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896940);
        v147 = &v145[v146[12]];
        v148 = v183;
        v149 = v182;
        *v147 = v183;
        *(v147 + 1) = v149;
        v150 = v172 & 1;
        v147[16] = v172 & 1;
        *(v147 + 3) = v184;
        sub_27240A0F0(v142, &v145[v146[16]], &qword_280896910);
        sub_27240A0F0(v143, &v145[v146[20]], &qword_280896900);
        v151 = &v145[v146[24]];
        *v151 = 0;
        v151[8] = 1;
        sub_27240A0F0(v144, &v145[v146[28]], &qword_2808968F0);
        sub_27240A20C(v148, v149, v150);

        sub_27240A158(v200, &qword_2808968F0);
        sub_27240A158(v198, &qword_280896900);
        sub_27240A158(v196, &qword_280896910);
        v152 = *(v137 + 8);
        v153 = v195;
        v152(v193, v195);
        sub_27240A158(v144, &qword_2808968F0);
        sub_27240A158(v199, &qword_280896900);
        sub_27240A158(v197, &qword_280896910);
        sub_27240A21C(v148, v149, v150);

        return (v152)(v194, v153);
      }

      v134 = sub_272434CF0();

      v133 = 1.0;
      if (v134)
      {
        goto LABEL_19;
      }
    }

    v133 = 0.0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_272422C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
  sub_272434730();
  if (!v8)
  {
    goto LABEL_7;
  }

  if (v7 == a2 && v8 == a3)
  {
  }

  else
  {
    v6 = sub_272434CF0();

    if ((v6 & 1) == 0)
    {
LABEL_7:

      sub_272434740();
      return;
    }
  }

  sub_2724202B0();
}

uint64_t sub_272422D90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2724346F0();
  *a1 = result;
  return result;
}

uint64_t sub_272422DD4()
{
  type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808966A0);
  result = sub_272434730();
  if (v1)
  {
    sub_2724202B0();
  }

  return result;
}

void sub_272422E64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808967C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v72 - v3;
  v5 = type metadata accessor for VCUIPhoneticVocabularyRecordingView(0);
  v75 = *(v5 - 1);
  v6 = *(v75 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v8 = MEMORY[0x28223BE20](v7);
  v80 = &v72 - v9;
  v10 = (a1 + *(v8 + 64));
  v11 = *(v10 + 1);
  LODWORD(v79) = *v10;
  LOBYTE(v86) = v79;
  v87 = v11;
  LOBYTE(v84) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896600);
  sub_272434740();
  v12 = a1;
  v13 = a1 + v5[8];
  v14 = *(v13 + 8);
  LOBYTE(v86) = *v13;
  v87 = v14;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896630);
  sub_272434730();
  v77 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v4;
  v76 = v6;
  if (v84 <= 2u && !v84)
  {
    goto LABEL_14;
  }

  v15 = sub_272434CF0();

  if (v15)
  {
    goto LABEL_15;
  }

  v16 = *(v13 + 8);
  LOBYTE(v86) = *v13;
  v87 = v16;
  sub_272434730();
  if (v84 == 5)
  {
    goto LABEL_14;
  }

  v17 = sub_272434CF0();

  if (v17)
  {
    goto LABEL_15;
  }

  v18 = *(v13 + 8);
  LOBYTE(v86) = *v13;
  v87 = v18;
  sub_272434730();
  if (v84 > 5u)
  {
LABEL_14:

LABEL_15:
    v21 = v12 + v5[15];
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v86) = v22;
    v87 = v23;
    sub_272434730();
    if (v84 != 1)
    {
      v45 = v12 + v5[17];
      v46 = *v45;
      v47 = *(v45 + 8);
      LOBYTE(v86) = v46;
      v87 = v47;
      LOBYTE(v84) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280896698);
      sub_272434740();
      LOBYTE(v86) = v79;
      v87 = v11;
      LOBYTE(v84) = 1;
      sub_272434740();
      return;
    }

    v24 = (v12 + v5[6]);
    v26 = v24[1];
    v86 = *v24;
    v25 = v86;
    v87 = v26;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896678);
    sub_272434730();
    v28 = v84;
    v29 = *(v12 + v5[5] + 8);
    v30 = (v29 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_voiceControlLocaleIdentifier);
    swift_beginAccess();
    v31 = v30[1];
    v32 = &v28[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_voiceControlLocaleIdentifier];
    *v32 = *v30;
    *(v32 + 1) = v31;

    v84 = v25;
    v85 = v26;
    v79 = v27;
    sub_272434730();
    v33 = v83;
    v34 = *(v29 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord + 8);
    v35 = &v83[OBJC_IVAR____TtC14VoiceControlUI38VCUIPhoneticVocabularyRecordingManager_text];
    *v35 = *(v29 + OBJC_IVAR____TtC14VoiceControlUI33VCUIPhoneticVocabularyCoordinator_customWord);
    *(v35 + 1) = v34;

    v36 = v80;
    sub_2724276E8(v12, v80);
    v37 = sub_272433BA0();
    v38 = sub_272434B30();
    if (!os_log_type_enabled(v37, v38))
    {

      sub_272413884(v36);
LABEL_26:
      v51 = *(v13 + 8);
      LOBYTE(v84) = *v13;
      v85 = v51;
      sub_272434730();
      if (v83 == 5)
      {

        v52 = 2;
      }

      else
      {
        v53 = sub_272434CF0();

        if (v53)
        {
          v52 = 2;
        }

        else
        {
          v52 = 1;
        }
      }

      v54 = *(v13 + 8);
      LOBYTE(v84) = *v13;
      v85 = v54;
      LOBYTE(v83) = v52;

      sub_272434740();

      v55 = objc_opt_self();
      v56 = [v55 sharedPreferences];
      v57 = [v56 dictationIsEnabled];

      if (v57)
      {
        v84 = v25;
        v85 = v26;
        sub_272434730();
        v58 = v83;
        sub_2724170EC();
LABEL_33:

        return;
      }

      v59 = [v55 sharedPreferences];
      v60 = [v59 suppressDictationOptIn];

      if ((v60 & 1) == 0)
      {
        v61 = sub_272434AD0();
        v62 = v78;
        (*(*(v61 - 8) + 56))(v78, 1, 1, v61);
        v63 = v77;
        sub_2724276E8(v12, v77);
        sub_272434AB0();
        v64 = sub_272434AA0();
        v65 = (*(v75 + 80) + 32) & ~*(v75 + 80);
        v66 = swift_allocObject();
        v67 = MEMORY[0x277D85700];
        *(v66 + 16) = v64;
        *(v66 + 24) = v67;
        sub_272427750(v63, v66 + v65);
        sub_272424224(0, 0, v62, &unk_272436FE0, v66);
      }

      return;
    }

    v73 = v26;
    v74 = v25;
    v39 = 0xD000000000000010;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v83 = v41;
    *v40 = 136315138;
    v42 = v36 + v5[8];
    v43 = *v42;
    v44 = *(v42 + 8);
    LOBYTE(v84) = v43;
    v85 = v44;
    sub_272434730();
    if (v82 == 5)
    {
    }

    else
    {
      v48 = sub_272434CF0();

      if ((v48 & 1) == 0)
      {
        v49 = "ass";
        goto LABEL_25;
      }
    }

    v49 = "startingStandard";
    v39 = 0xD000000000000014;
LABEL_25:
    sub_272413884(v80);
    v50 = sub_2724285FC(v39, v49 | 0x8000000000000000, &v83);

    *(v40 + 4) = v50;
    _os_log_impl(&dword_272406000, v37, v38, "VCUIAudioButton, dictationState -> %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2743C99D0](v41, -1, -1);
    MEMORY[0x2743C99D0](v40, -1, -1);

    v26 = v73;
    v25 = v74;
    goto LABEL_26;
  }

  v19 = sub_272434CF0();

  if (v19)
  {
    goto LABEL_15;
  }

  v20 = *(v13 + 8);
  LOBYTE(v86) = *v13;
  v87 = v20;
  sub_272434730();
  if (v84 == 3)
  {

LABEL_37:
    v69 = (v12 + v5[6]);
    v71 = *v69;
    v70 = v69[1];
    v86 = v71;
    v87 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280896678);
    sub_272434730();
    v58 = v84;
    sub_27241743C();
    goto LABEL_33;
  }

  v68 = sub_272434CF0();

  if (v68)
  {
    goto LABEL_37;
  }
}