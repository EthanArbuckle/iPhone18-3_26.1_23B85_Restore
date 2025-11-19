uint64_t RemoteIntelligenceError.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4E0, &qword_223730778);
  v114 = *(v125 - 8);
  v3 = *(v114 + 64);
  MEMORY[0x28223BE20](v125, v4);
  v121 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4E8, &qword_223730780);
  v115 = *(v6 - 8);
  v116 = v6;
  v7 = *(v115 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v120 = &v96 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4F0, &qword_223730788);
  v112 = *(v10 - 8);
  v113 = v10;
  v11 = *(v112 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v118 = &v96 - v13;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F4F8, &qword_223730790);
  v110 = *(v111 - 8);
  v14 = *(v110 + 64);
  MEMORY[0x28223BE20](v111, v15);
  v124 = &v96 - v16;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F500, &qword_223730798);
  v109 = *(v108 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x28223BE20](v108, v18);
  v123 = &v96 - v19;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F508, &qword_2237307A0);
  v106 = *(v107 - 8);
  v20 = *(v106 + 64);
  MEMORY[0x28223BE20](v107, v21);
  v117 = &v96 - v22;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F510, &qword_2237307A8);
  v104 = *(v105 - 8);
  v23 = *(v104 + 64);
  MEMORY[0x28223BE20](v105, v24);
  v119 = &v96 - v25;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F518, &qword_2237307B0);
  v102 = *(v103 - 8);
  v26 = *(v102 + 64);
  MEMORY[0x28223BE20](v103, v27);
  v122 = &v96 - v28;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F520, &qword_2237307B8);
  v100 = *(v101 - 8);
  v29 = *(v100 + 64);
  MEMORY[0x28223BE20](v101, v30);
  v32 = &v96 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F528, &qword_2237307C0);
  v99 = *(v33 - 8);
  v34 = *(v99 + 64);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v96 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F530, &qword_2237307C8);
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38, v41);
  v43 = &v96 - v42;
  v45 = a1[3];
  v44 = a1[4];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v45);
  sub_2236BA4CC();
  v46 = v128;
  sub_22372B7D8();
  if (v46)
  {
    goto LABEL_15;
  }

  v47 = v37;
  v96 = v33;
  v97 = v32;
  v48 = v122;
  v49 = v123;
  v50 = v124;
  v98 = 0;
  v128 = v39;
  v51 = v125;
  v52 = v126;
  v53 = sub_22372B668();
  v54 = (2 * *(v53 + 16)) | 1;
  v129 = v53;
  v130 = v53 + 32;
  v131 = 0;
  v132 = v54;
  v55 = sub_22368BD04();
  if (v55 == 10 || v131 != v132 >> 1)
  {
    v69 = sub_22372B4B8();
    swift_allocError();
    v71 = v70;
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F000, &qword_2237307D0) + 48);
    *v71 = &type metadata for RemoteIntelligenceError;
    sub_22372B618();
    sub_22372B4A8();
    (*(*(v69 - 8) + 104))(v71, *MEMORY[0x277D84160], v69);
    swift_willThrow();
    goto LABEL_13;
  }

  v134 = v55;
  if (v55 <= 4u)
  {
    if (v55 > 1u)
    {
      v56 = v98;
      if (v55 == 2)
      {
        v135 = 2;
        sub_2236BA76C();
        v58 = v48;
        sub_22372B608();
        v57 = v128;
        if (!v56)
        {
          v59 = v103;
          v60 = sub_22372B628();
          v62 = &v133;
          goto LABEL_10;
        }
      }

      else
      {
        v57 = v128;
        if (v55 == 3)
        {
          v135 = 3;
          sub_2236BA718();
          v58 = v119;
          sub_22372B608();
          if (!v56)
          {
            v59 = v105;
            v60 = sub_22372B628();
            v62 = &v136;
LABEL_10:
            v63 = v60;
            v64 = v61;
            (*(*(v62 - 32) + 8))(v58, v59);
            (*(v57 + 8))(v43, v38);
            swift_unknownObjectRelease();
            v65 = v64;
            v66 = v63;
LABEL_11:
            v67 = v127;
            v68 = v52;
LABEL_46:
            *v68 = v66;
            *(v68 + 8) = v65;
            *(v68 + 16) = v134;
            return __swift_destroy_boxed_opaque_existential_1Tm(v67);
          }
        }

        else
        {
          v135 = 4;
          sub_2236BA6C4();
          v58 = v117;
          sub_22372B608();
          if (!v56)
          {
            v59 = v107;
            v60 = sub_22372B628();
            v62 = &v137;
            goto LABEL_10;
          }
        }
      }

      goto LABEL_34;
    }

    v79 = v98;
    if (v55)
    {
      v135 = 1;
      sub_2236BA7C0();
      v58 = v97;
      sub_22372B608();
      if (!v79)
      {
        v59 = v101;
        v60 = sub_22372B628();
        v57 = v128;
        v62 = &v132;
        goto LABEL_10;
      }
    }

    else
    {
      v135 = 0;
      sub_2236BA814();
      v80 = v47;
      sub_22372B608();
      if (!v79)
      {
        v81 = v96;
        v92 = sub_22372B628();
        v93 = v80;
        v95 = v94;
        (*(v99 + 8))(v93, v81);
        (*(v128 + 8))(v43, v38);
        swift_unknownObjectRelease();
        v65 = v95;
        v66 = v92;
        goto LABEL_11;
      }
    }

LABEL_13:
    (*(v128 + 8))(v43, v38);
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    v67 = v127;
    return __swift_destroy_boxed_opaque_existential_1Tm(v67);
  }

  v74 = v128;
  if (v55 <= 6u)
  {
    if (v55 == 5)
    {
      v135 = 5;
      sub_2236BA670();
      v50 = v49;
      v82 = v98;
      sub_22372B608();
      if (!v82)
      {
        v76 = v108;
        v77 = sub_22372B628();
        v83 = &v138;
LABEL_28:
        v84 = *(*(v83 - 32) + 8);
        v57 = v74;
LABEL_45:
        v90 = v77;
        v91 = v78;
        v84(v50, v76);
        (*(v57 + 8))(v43, v38);
        swift_unknownObjectRelease();
        v65 = v91;
        v66 = v90;
        v68 = v52;
        v67 = v127;
        goto LABEL_46;
      }
    }

    else
    {
      v135 = 6;
      sub_2236BA61C();
      v88 = v98;
      sub_22372B608();
      if (!v88)
      {
        v76 = v111;
        v77 = sub_22372B628();
        v83 = &v139;
        goto LABEL_28;
      }
    }

    (*(v74 + 8))(v43, v38);
    goto LABEL_14;
  }

  v57 = v128;
  if (v55 == 7)
  {
    v135 = 7;
    sub_2236BA5C8();
    v50 = v118;
    v85 = v98;
    sub_22372B608();
    if (!v85)
    {
      v76 = v113;
      v77 = sub_22372B628();
      v89 = v112;
      goto LABEL_44;
    }

LABEL_34:
    (*(v57 + 8))(v43, v38);
    goto LABEL_14;
  }

  if (v55 == 8)
  {
    v135 = 8;
    sub_2236BA574();
    v50 = v120;
    v75 = v98;
    sub_22372B608();
    if (!v75)
    {
      v76 = v116;
      v77 = sub_22372B628();
      v89 = v115;
LABEL_44:
      v84 = *(v89 + 8);
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  v68 = v52;
  v135 = 9;
  sub_2236BA520();
  v86 = v121;
  v87 = v98;
  sub_22372B608();
  if (!v87)
  {
    (*(v114 + 8))(v86, v51);
    (*(v57 + 8))(v43, v38);
    swift_unknownObjectRelease();
    v66 = 0;
    v65 = 0;
    v67 = v127;
    goto LABEL_46;
  }

  (*(v57 + 8))(v43, v38);
  swift_unknownObjectRelease();
  v67 = v127;
  return __swift_destroy_boxed_opaque_existential_1Tm(v67);
}

uint64_t _s24RequestDispatcherBridges23RemoteIntelligenceErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 4)
  {
    if (*(a1 + 16) <= 6u)
    {
      if (v4 == 5)
      {
        if (v7 != 5)
        {
          goto LABEL_50;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_22366FD64(*a1, v2, 5u);
          sub_22366FD64(v3, v2, 5u);
          sub_223661204(v3, v2, 5u);
          v8 = v3;
          v9 = v2;
          v10 = 5;
          goto LABEL_49;
        }

        v21 = *a1;
        v13 = sub_22372B6E8();
        sub_22366FD64(v6, v5, 5u);
        sub_22366FD64(v3, v2, 5u);
        sub_223661204(v3, v2, 5u);
        v14 = v6;
        v15 = v5;
        v16 = 5;
      }

      else
      {
        if (v7 != 6)
        {
          goto LABEL_50;
        }

        if (v3 == v6 && v2 == v5)
        {
          sub_22366FD64(*a1, v2, 6u);
          sub_22366FD64(v3, v2, 6u);
          sub_223661204(v3, v2, 6u);
          v8 = v3;
          v9 = v2;
          v10 = 6;
          goto LABEL_49;
        }

        v23 = *a1;
        v13 = sub_22372B6E8();
        sub_22366FD64(v6, v5, 6u);
        sub_22366FD64(v3, v2, 6u);
        sub_223661204(v3, v2, 6u);
        v14 = v6;
        v15 = v5;
        v16 = 6;
      }
    }

    else
    {
      if (v4 != 7)
      {
        if (v4 == 8)
        {
          if (v7 == 8)
          {
            if (v3 == v6 && v2 == v5)
            {
              sub_22366FD64(*a1, v2, 8u);
              sub_22366FD64(v3, v2, 8u);
              sub_223661204(v3, v2, 8u);
              v8 = v3;
              v9 = v2;
              v10 = 8;
              goto LABEL_49;
            }

            v19 = *a1;
            v13 = sub_22372B6E8();
            sub_22366FD64(v6, v5, 8u);
            sub_22366FD64(v3, v2, 8u);
            sub_223661204(v3, v2, 8u);
            v14 = v6;
            v15 = v5;
            v16 = 8;
            goto LABEL_60;
          }
        }

        else if (v7 == 9 && !(v5 | v6))
        {
          sub_223661204(*a1, v2, 9u);
          v8 = 0;
          v9 = 0;
          v10 = 9;
          goto LABEL_49;
        }

        goto LABEL_50;
      }

      if (v7 != 7)
      {
        goto LABEL_50;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_22366FD64(*a1, v2, 7u);
        sub_22366FD64(v3, v2, 7u);
        sub_223661204(v3, v2, 7u);
        v8 = v3;
        v9 = v2;
        v10 = 7;
        goto LABEL_49;
      }

      v17 = *a1;
      v13 = sub_22372B6E8();
      sub_22366FD64(v6, v5, 7u);
      sub_22366FD64(v3, v2, 7u);
      sub_223661204(v3, v2, 7u);
      v14 = v6;
      v15 = v5;
      v16 = 7;
    }
  }

  else if (*(a1 + 16) <= 1u)
  {
    if (*(a1 + 16))
    {
      if (v7 != 1)
      {
        goto LABEL_50;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_22366FD64(*a1, v2, 1u);
        sub_22366FD64(v3, v2, 1u);
        sub_223661204(v3, v2, 1u);
        v8 = v3;
        v9 = v2;
        v10 = 1;
        goto LABEL_49;
      }

      v22 = *a1;
      v13 = sub_22372B6E8();
      sub_22366FD64(v6, v5, 1u);
      sub_22366FD64(v3, v2, 1u);
      sub_223661204(v3, v2, 1u);
      v14 = v6;
      v15 = v5;
      v16 = 1;
    }

    else
    {
      if (*(a2 + 16))
      {
        goto LABEL_50;
      }

      if (v3 == v6 && v2 == v5)
      {
        sub_22366FD64(*a1, v2, 0);
        sub_22366FD64(v3, v2, 0);
        sub_223661204(v3, v2, 0);
        v8 = v3;
        v9 = v2;
        v10 = 0;
        goto LABEL_49;
      }

      v24 = *a1;
      v13 = sub_22372B6E8();
      sub_22366FD64(v6, v5, 0);
      sub_22366FD64(v3, v2, 0);
      sub_223661204(v3, v2, 0);
      v14 = v6;
      v15 = v5;
      v16 = 0;
    }
  }

  else if (v4 == 2)
  {
    if (v7 != 2)
    {
      goto LABEL_50;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_22366FD64(*a1, v2, 2u);
      sub_22366FD64(v3, v2, 2u);
      sub_223661204(v3, v2, 2u);
      v8 = v3;
      v9 = v2;
      v10 = 2;
      goto LABEL_49;
    }

    v12 = *a1;
    v13 = sub_22372B6E8();
    sub_22366FD64(v6, v5, 2u);
    sub_22366FD64(v3, v2, 2u);
    sub_223661204(v3, v2, 2u);
    v14 = v6;
    v15 = v5;
    v16 = 2;
  }

  else
  {
    if (v4 == 3)
    {
      if (v7 == 3)
      {
        if (v3 == v6 && v2 == v5)
        {
          sub_22366FD64(*a1, v2, 3u);
          sub_22366FD64(v3, v2, 3u);
          sub_223661204(v3, v2, 3u);
          v8 = v3;
          v9 = v2;
          v10 = 3;
LABEL_49:
          sub_223661204(v8, v9, v10);
          return 1;
        }

        v18 = *a1;
        v13 = sub_22372B6E8();
        sub_22366FD64(v6, v5, 3u);
        sub_22366FD64(v3, v2, 3u);
        sub_223661204(v3, v2, 3u);
        v14 = v6;
        v15 = v5;
        v16 = 3;
        goto LABEL_60;
      }

LABEL_50:
      sub_22366FD64(*a2, *(a2 + 8), v7);
      sub_22366FD64(v3, v2, v4);
      sub_223661204(v3, v2, v4);
      sub_223661204(v6, v5, v7);
      return 0;
    }

    if (v7 != 4)
    {
      goto LABEL_50;
    }

    if (v3 == v6 && v2 == v5)
    {
      sub_22366FD64(*a1, v2, 4u);
      sub_22366FD64(v3, v2, 4u);
      sub_223661204(v3, v2, 4u);
      v8 = v3;
      v9 = v2;
      v10 = 4;
      goto LABEL_49;
    }

    v20 = *a1;
    v13 = sub_22372B6E8();
    sub_22366FD64(v6, v5, 4u);
    sub_22366FD64(v3, v2, 4u);
    sub_223661204(v3, v2, 4u);
    v14 = v6;
    v15 = v5;
    v16 = 4;
  }

LABEL_60:
  sub_223661204(v14, v15, v16);
  return v13 & 1;
}

unint64_t sub_2236BA4CC()
{
  result = qword_27D08F488;
  if (!qword_27D08F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F488);
  }

  return result;
}

unint64_t sub_2236BA520()
{
  result = qword_27D08F490;
  if (!qword_27D08F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F490);
  }

  return result;
}

unint64_t sub_2236BA574()
{
  result = qword_27D08F498;
  if (!qword_27D08F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F498);
  }

  return result;
}

unint64_t sub_2236BA5C8()
{
  result = qword_27D08F4A0;
  if (!qword_27D08F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4A0);
  }

  return result;
}

unint64_t sub_2236BA61C()
{
  result = qword_27D08F4A8;
  if (!qword_27D08F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4A8);
  }

  return result;
}

unint64_t sub_2236BA670()
{
  result = qword_27D08F4B0;
  if (!qword_27D08F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4B0);
  }

  return result;
}

unint64_t sub_2236BA6C4()
{
  result = qword_27D08F4B8;
  if (!qword_27D08F4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4B8);
  }

  return result;
}

unint64_t sub_2236BA718()
{
  result = qword_27D08F4C0;
  if (!qword_27D08F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4C0);
  }

  return result;
}

unint64_t sub_2236BA76C()
{
  result = qword_27D08F4C8;
  if (!qword_27D08F4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4C8);
  }

  return result;
}

unint64_t sub_2236BA7C0()
{
  result = qword_27D08F4D0;
  if (!qword_27D08F4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4D0);
  }

  return result;
}

unint64_t sub_2236BA814()
{
  result = qword_27D08F4D8;
  if (!qword_27D08F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F4D8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_24RequestDispatcherBridges23RemoteIntelligenceErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 8)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 9);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2236BA898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF7 && *(a1 + 17))
  {
    return (*a1 + 247);
  }

  v3 = *(a1 + 16);
  if (v3 <= 9)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2236BA8E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF6)
  {
    *(result + 16) = 0;
    *result = a2 - 247;
    *(result + 8) = 0;
    if (a3 >= 0xF7)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF7)
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

uint64_t sub_2236BA924(uint64_t result, unsigned int a2)
{
  if (a2 >= 9)
  {
    *result = a2 - 9;
    *(result + 8) = 0;
    LOBYTE(a2) = 9;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteIntelligenceError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RemoteIntelligenceError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2236BAB30()
{
  result = qword_27D08F538;
  if (!qword_27D08F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F538);
  }

  return result;
}

unint64_t sub_2236BAB88()
{
  result = qword_27D08F540;
  if (!qword_27D08F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F540);
  }

  return result;
}

unint64_t sub_2236BABE0()
{
  result = qword_27D08F548;
  if (!qword_27D08F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F548);
  }

  return result;
}

unint64_t sub_2236BAC38()
{
  result = qword_27D08F550;
  if (!qword_27D08F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F550);
  }

  return result;
}

unint64_t sub_2236BAC90()
{
  result = qword_27D08F558;
  if (!qword_27D08F558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F558);
  }

  return result;
}

unint64_t sub_2236BACE8()
{
  result = qword_27D08F560;
  if (!qword_27D08F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F560);
  }

  return result;
}

unint64_t sub_2236BAD40()
{
  result = qword_27D08F568;
  if (!qword_27D08F568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F568);
  }

  return result;
}

unint64_t sub_2236BAD98()
{
  result = qword_27D08F570;
  if (!qword_27D08F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F570);
  }

  return result;
}

unint64_t sub_2236BADF0()
{
  result = qword_27D08F578;
  if (!qword_27D08F578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F578);
  }

  return result;
}

unint64_t sub_2236BAE48()
{
  result = qword_27D08F580;
  if (!qword_27D08F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F580);
  }

  return result;
}

unint64_t sub_2236BAEA0()
{
  result = qword_27D08F588;
  if (!qword_27D08F588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F588);
  }

  return result;
}

unint64_t sub_2236BAEF8()
{
  result = qword_27D08F590;
  if (!qword_27D08F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F590);
  }

  return result;
}

unint64_t sub_2236BAF50()
{
  result = qword_27D08F598;
  if (!qword_27D08F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F598);
  }

  return result;
}

unint64_t sub_2236BAFA8()
{
  result = qword_27D08F5A0;
  if (!qword_27D08F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5A0);
  }

  return result;
}

unint64_t sub_2236BB000()
{
  result = qword_27D08F5A8;
  if (!qword_27D08F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5A8);
  }

  return result;
}

unint64_t sub_2236BB058()
{
  result = qword_27D08F5B0;
  if (!qword_27D08F5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5B0);
  }

  return result;
}

unint64_t sub_2236BB0B0()
{
  result = qword_27D08F5B8;
  if (!qword_27D08F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5B8);
  }

  return result;
}

unint64_t sub_2236BB108()
{
  result = qword_27D08F5C0;
  if (!qword_27D08F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5C0);
  }

  return result;
}

unint64_t sub_2236BB160()
{
  result = qword_27D08F5C8;
  if (!qword_27D08F5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5C8);
  }

  return result;
}

unint64_t sub_2236BB1B8()
{
  result = qword_27D08F5D0;
  if (!qword_27D08F5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5D0);
  }

  return result;
}

unint64_t sub_2236BB210()
{
  result = qword_27D08F5D8;
  if (!qword_27D08F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5D8);
  }

  return result;
}

unint64_t sub_2236BB268()
{
  result = qword_27D08F5E0;
  if (!qword_27D08F5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5E0);
  }

  return result;
}

unint64_t sub_2236BB2C0()
{
  result = qword_27D08F5E8;
  if (!qword_27D08F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5E8);
  }

  return result;
}

unint64_t sub_2236BB318()
{
  result = qword_27D08F5F0;
  if (!qword_27D08F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5F0);
  }

  return result;
}

unint64_t sub_2236BB370()
{
  result = qword_27D08F5F8;
  if (!qword_27D08F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F5F8);
  }

  return result;
}

unint64_t sub_2236BB3C8()
{
  result = qword_27D08F600;
  if (!qword_27D08F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F600);
  }

  return result;
}

unint64_t sub_2236BB420()
{
  result = qword_27D08F608;
  if (!qword_27D08F608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F608);
  }

  return result;
}

unint64_t sub_2236BB478()
{
  result = qword_27D08F610;
  if (!qword_27D08F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F610);
  }

  return result;
}

unint64_t sub_2236BB4D0()
{
  result = qword_27D08F618;
  if (!qword_27D08F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F618);
  }

  return result;
}

unint64_t sub_2236BB528()
{
  result = qword_27D08F620;
  if (!qword_27D08F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F620);
  }

  return result;
}

unint64_t sub_2236BB580()
{
  result = qword_27D08F628;
  if (!qword_27D08F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F628);
  }

  return result;
}

unint64_t sub_2236BB5D8()
{
  result = qword_27D08F630;
  if (!qword_27D08F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F630);
  }

  return result;
}

uint64_t sub_2236BB62C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002237364E0 == a2;
  if (v3 || (sub_22372B6E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223736500 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002237354B0 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000223736520 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000223736540 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000223736560 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000223736580 == a2 || (sub_22372B6E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E6E6F6973736573 && a2 == 0xEF646E756F46746FLL || (sub_22372B6E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D656C706D696E75 && a2 == 0xED00006465746E65 || (sub_22372B6E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002237365A0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_22372B6E8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

void sub_2236BB9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v10 = sub_22372AC88();
    v4 = sub_22372B268();
    if (os_log_type_enabled(v10, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v10, v4, "Not changing PromptState because request is in candidate phase", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x28223BE20](a1, a2);
    MEMORY[0x28223BE20](v7, v8);
    os_unfair_lock_lock(v6 + 4);
    sub_223637034(v9);
    os_unfair_lock_unlock(v6 + 4);
  }
}

void sub_2236BBB6C(uint64_t a1, char a2, char a3)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (!os_log_type_enabled(v7, v8))
  {

    v16 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return;
    }

LABEL_15:
    if (v16 == 1)
    {

      v17 = sub_22372AC88();
      v18 = sub_22372B278();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = a2;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v30 = v21;
        *v20 = 136315138;
        v22 = 0x6D6F72506C6C6977;
        v23 = 0xEA00000000007470;
        if (*(a1 + 24) != 1)
        {
          v22 = 0xD000000000000016;
          v23 = 0x8000000223734320;
        }

        if (*(a1 + 24))
        {
          v24 = v22;
        }

        else
        {
          v24 = 0x706D6F7250746F6ELL;
        }

        if (*(a1 + 24))
        {
          v25 = v23;
        }

        else
        {
          v25 = 0xEC000000676E6974;
        }

        v26 = sub_223623274(v24, v25, &v30);

        *(v20 + 4) = v26;
        _os_log_impl(&dword_223620000, v17, v18, "Unexpected PromptState while receiving TRPCandidate for an active request: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v21);
        MEMORY[0x223DE8A80](v21, -1, -1);
        MEMORY[0x223DE8A80](v20, -1, -1);

        if (v19)
        {
          return;
        }
      }

      else
      {

        if (a2)
        {
          return;
        }
      }

      v27 = *(a1 + 24);
      v28 = 2;
    }

    else
    {
      if ((a2 & 1) == 0)
      {
        return;
      }

      v27 = 2;
      v28 = 1;
    }

    *(a1 + 24) = v28;
    sub_22363A1EC(v27);
    return;
  }

  v29 = a3;
  v9 = swift_slowAlloc();
  v10 = swift_slowAlloc();
  v30 = v10;
  *v9 = 136315906;
  *(v9 + 4) = sub_223623274(0xD00000000000003ALL, 0x80000002237366C0, &v30);
  *(v9 + 12) = 2080;
  v11 = 0x6D6F72506C6C6977;
  v12 = 0xEA00000000007470;
  if (*(a1 + 24) != 1)
  {
    v11 = 0xD000000000000016;
    v12 = 0x8000000223734320;
  }

  if (*(a1 + 24))
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x706D6F7250746F6ELL;
  }

  if (*(a1 + 24))
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xEC000000676E6974;
  }

  v15 = sub_223623274(v13, v14, &v30);

  *(v9 + 14) = v15;
  *(v9 + 22) = 1024;
  *(v9 + 24) = a2 & 1;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v29 & 1;
  _os_log_impl(&dword_223620000, v7, v8, "%s PromptState: %s, isEmptySpeech: %{BOOL}d, isCandidateRequest:%{BOOL}d", v9, 0x22u);
  swift_arrayDestroy();
  MEMORY[0x223DE8A80](v10, -1, -1);
  MEMORY[0x223DE8A80](v9, -1, -1);

  v16 = *(a1 + 24);
  if (*(a1 + 24))
  {
    goto LABEL_15;
  }
}

void sub_2236BBF34(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v3 = sub_22372AC98();
    __swift_project_value_buffer(v3, qword_28132B680);
    v10 = sub_22372AC88();
    v4 = sub_22372B268();
    if (os_log_type_enabled(v10, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v10, v4, "Not changing PromptState because request is in candidate phase", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }
  }

  else
  {
    v6 = *(v2 + 16);
    v7 = MEMORY[0x28223BE20](a1, a2);
    MEMORY[0x28223BE20](v7, v8);
    os_unfair_lock_lock(v6 + 4);
    sub_223637034(v9);
    os_unfair_lock_unlock(v6 + 4);
  }
}

void sub_2236BC0C4(uint64_t a1, char a2, char a3)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v6 = sub_22372AC98();
  __swift_project_value_buffer(v6, qword_28132B680);

  v7 = sub_22372AC88();
  v8 = sub_22372B268();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315906;
    *(v9 + 4) = sub_223623274(0xD00000000000003FLL, 0x8000000223736680, &v18);
    *(v9 + 12) = 2080;
    v11 = 0xEA00000000007470;
    v12 = 0x6D6F72506C6C6977;
    if (*(a1 + 24) != 1)
    {
      v12 = 0xD000000000000016;
      v11 = 0x8000000223734320;
    }

    if (*(a1 + 24))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0x706D6F7250746F6ELL;
    }

    if (*(a1 + 24))
    {
      v14 = v11;
    }

    else
    {
      v14 = 0xEC000000676E6974;
    }

    v15 = sub_223623274(v13, v14, &v18);

    *(v9 + 14) = v15;
    *(v9 + 22) = 1024;
    *(v9 + 24) = a2 & 1;
    *(v9 + 28) = 1024;
    *(v9 + 30) = a3 & 1;
    _os_log_impl(&dword_223620000, v7, v8, "%s PromptState: %s, isEmptySpeech: %{BOOL}d, isCandidateRequest:%{BOOL}d", v9, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v10, -1, -1);
    MEMORY[0x223DE8A80](v9, -1, -1);

    v16 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return;
    }
  }

  else
  {

    v16 = *(a1 + 24);
    if (!*(a1 + 24))
    {
      return;
    }
  }

  if (v16 == 1)
  {
    if (a2)
    {
      return;
    }

    v17 = 0;
  }

  else
  {
    v17 = a2 & 1;
  }

  *(a1 + 24) = v17;
  sub_22363A1EC(v16);
}

uint64_t getEnumTagSinglePayload for PromptState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PromptState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2236BC484(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6D6F72506C6C6977;
  v4 = 0xEA00000000007470;
  v5 = 0x8000000223734320;
  if (v2 != 1)
  {
    v3 = 0xD000000000000016;
    v4 = 0x8000000223734320;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x706D6F7250746F6ELL;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEC000000676E6974;
  }

  v8 = 0x6D6F72506C6C6977;
  if (*a2 == 1)
  {
    v5 = 0xEA00000000007470;
  }

  else
  {
    v8 = 0xD000000000000016;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x706D6F7250746F6ELL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEC000000676E6974;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_22372B6E8();
  }

  return v11 & 1;
}

uint64_t sub_2236BC58C()
{
  v1 = *v0;
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236BC640()
{
  *v0;
  *v0;
  sub_22372B078();
}

uint64_t sub_2236BC6E0()
{
  v1 = *v0;
  sub_22372B7A8();
  sub_22372B078();

  return sub_22372B7C8();
}

uint64_t sub_2236BC790@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2236BC888();
  *a2 = result;
  return result;
}

void sub_2236BC7C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000676E6974;
  v4 = 0xEA00000000007470;
  v5 = 0x6D6F72506C6C6977;
  if (v2 != 1)
  {
    v5 = 0xD000000000000016;
    v4 = 0x8000000223734320;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x706D6F7250746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2236BC834()
{
  result = qword_27D08F638;
  if (!qword_27D08F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F638);
  }

  return result;
}

uint64_t sub_2236BC888()
{
  v0 = sub_22372B5F8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2236BC91C()
{
  v0 = sub_223727BC8();
  v40 = *(v0 - 8);
  v41 = v0;
  v1 = *(v40 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223727BE8();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223727BF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_223727C48();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_223727C58();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223727D18();
  if ((*(v21 + 88))(v25, v20) == *MEMORY[0x277D1C890])
  {
    (*(v21 + 96))(v25, v20);
    (*(v15 + 32))(v19, v25, v14);
    sub_223727C38();
    v26 = (*(v9 + 88))(v13, v8);
    if (v26 == *MEMORY[0x277D1C6B8])
    {
      (*(v9 + 96))(v13, v8);
      v28 = v39;
      v27 = v40;
      v29 = v41;
      (*(v40 + 32))(v39, v13, v41);
      v30 = sub_223727BB8();
      (*(v27 + 8))(v28, v29);
      (*(v15 + 8))(v19, v14);
      return v30;
    }

    if (v26 == *MEMORY[0x277D1C6C0])
    {
      (*(v9 + 96))(v13, v8);
      v33 = v36;
      v32 = v37;
      v34 = v38;
      (*(v37 + 32))(v36, v13, v38);
      v35 = sub_223727BD8();
      (*(v32 + 8))(v33, v34);
      (*(v15 + 8))(v19, v14);
      return v35;
    }

    (*(v15 + 8))(v19, v14);
    (*(v9 + 8))(v13, v8);
  }

  else
  {
    (*(v21 + 8))(v25, v20);
  }

  return 0;
}

uint64_t sub_2236BCDE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v46 = a5;
  v48 = a1;
  v49 = a2;
  v47 = sub_22372AC98();
  v9 = *(v47 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v47, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22372AC78();
  v50 = *(v14 - 8);
  v51 = v14;
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  sub_223623934(a3, v62);
  v52 = a6;
  sub_223623934(a6, v61);
  v19 = type metadata accessor for SiriActivationHelper();
  v20 = swift_allocObject();
  v59 = &type metadata for CaptureOutputFeatureFlag;
  v60 = sub_2236C35E8();
  v45 = sub_2237275B8();
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  v44 = AFDeviceSupportsPatientSiri();
  v21 = sub_22372A7A8();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_22372A798();
  v59 = v21;
  v60 = MEMORY[0x277D60048];
  v58[0] = v24;
  v57[3] = v19;
  v57[4] = &off_2836C75B0;
  v57[0] = v20;
  v25 = type metadata accessor for RequestControllerBridge(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v57, v19);
  v30 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v29, v29);
  v32 = (&v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v56[3] = v19;
  v56[4] = &off_2836C75B0;
  v56[0] = v34;
  *(v28 + qword_28132AC88) = MEMORY[0x277D84F98];
  v35 = (v28 + qword_28132AC90);
  *v35 = 0;
  v35[1] = 0;
  *(v28 + qword_28132AB08) = 0;
  *(v28 + qword_28132AAF0) = 0;
  sub_223623470();
  sub_22372A7D8();
  sub_223623934(v56, v28 + qword_28132AAF8);
  type metadata accessor for RequestControllerMitigationHandler();
  swift_getObjectType();
  v36 = qword_28132A8E8;
  swift_unknownObjectRetain();
  if (v36 != -1)
  {
    swift_once();
  }

  *(v28 + qword_28132ACA0) = sub_2236ED760(a4, qword_28132B928);
  *(v28 + qword_28132AAE8) = v45 & 1;
  *(v28 + qword_28132AAE0) = v44;
  sub_223623934(v58, v28 + qword_28132AB18);
  sub_223623934(v62, &v55);
  sub_223623934(v61, &v54);
  v37 = qword_281328E58;
  swift_unknownObjectRetain();

  v38 = v46;
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = v47;
  v40 = __swift_project_value_buffer(v47, qword_28132B680);
  (*(v9 + 16))(v13, v40, v39);
  v41 = sub_22372A6E8();

  sub_2236BD320();
  sub_22372A7B8();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  (*(v50 + 8))(v18, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  return v41;
}

uint64_t sub_2236BD320()
{
  v1 = sub_22372A848();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223728478();
  sub_22372A938();
  sub_223728968();
  sub_22372A928();
  sub_223729E08();
  sub_22372A928();
  v13[1] = sub_223728CE8();
  sub_22372A928();
  sub_223728038();
  sub_22372A928();
  sub_223728188();
  sub_22372A928();
  sub_223729ED8();
  sub_22372A928();
  sub_223728498();
  sub_22372A928();
  sub_223727F18();
  sub_22372A928();
  sub_2237293E8();
  sub_22372A938();
  v7 = *MEMORY[0x277D60070];
  v8 = v2[13];
  v8(v6, v7, v1);
  sub_223728BE8();
  type metadata accessor for RequestControllerBridgeRequestProcessor();
  sub_22372A6C8();
  v9 = v2[1];
  v9(v6, v1);
  v8(v6, v7, v1);
  sub_223729188();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v7, v1);
  sub_223728DF8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v7, v1);
  sub_223728FB8();
  sub_22372A6C8();
  v9(v6, v1);
  v10 = *MEMORY[0x277D60098];
  v8(v6, v10, v1);
  sub_2237294B8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728388();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729B68();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728B38();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728918();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728A78();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223727EE8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728288();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729228();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728028();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729A18();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729C08();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729AD8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, *MEMORY[0x277D60078], v1);
  sub_223728DB8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728F88();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729138();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_2237292E8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729EC8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729718();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_2237295B8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729A38();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223727EB8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728638();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_2237298B8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729A48();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729CE8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223729CD8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_2237282A8();
  sub_22372A6C8();
  v9(v6, v1);
  v8(v6, v10, v1);
  sub_223728C48();
  sub_22372A6C8();
  v9(v6, v1);
  if (*(v0 + qword_28132AAE0) == 1)
  {
    v8(v6, v10, v1);
    sub_223728BD8();
    sub_22372A6C8();
    v9(v6, v1);
  }

  v11 = *(v0 + qword_28132AB18 + 32);
  __swift_project_boxed_opaque_existential_1((v0 + qword_28132AB18), *(v0 + qword_28132AB18 + 24));
  result = sub_22372A818();
  if (result)
  {
    sub_223630584(0, &qword_281328D20, 0x277D47438);
    sub_22372A968();
    sub_223729CB8();
    sub_22372A938();
    sub_223630584(0, &qword_281328D30, 0x277D476A0);
    return sub_22372A968();
  }

  return result;
}

id sub_2236BE6E0(void *a1)
{
  result = sub_2236DEA18(a1, sub_2236C209C, 0);
  if (!v1)
  {
    v3 = sub_223729D38();
    sub_2236D06B8(v3, v4);
  }

  return result;
}

uint64_t sub_2236BE95C(uint64_t a1, uint64_t a2)
{
  *(a2 + qword_28132B890) = sub_2237296A8() & 1;
  v3 = *(a2 + qword_28132B868);
  v4 = *(a2 + qword_28132B868 + 8);

  sub_2236D3640(v3, v4);
}

uint64_t sub_2236BED24(void *a1)
{
  v2 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_223620000, v6, v7, "MUX: received message: %@", v8, 0xCu);
    sub_223626478(v9, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v11 = *(v2 + qword_28132AAF0);
  *(v2 + qword_28132AAF0) = v5;
  v12 = v5;

  result = AFIsInternalInstall();
  if (result)
  {
    return sub_22372AA38();
  }

  return result;
}

void sub_2236BEEA4(void *a1)
{
  v2 = v1;
  v4 = sub_22372A298();
  v5 = *(v4 - 8);
  v69 = v4;
  v70 = v5;
  isa = v5[8].isa;
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v62 - v17;
  v19 = sub_22372A548();
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v66 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v23 = sub_22372AC98();
  __swift_project_value_buffer(v23, qword_28132B680);
  v24 = a1;
  v25 = sub_22372AC88();
  v26 = sub_22372B268();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_223620000, v25, v26, "#user-session: received message: %@", v27, 0xCu);
    sub_223626478(v28, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v28, -1, -1);
    MEMORY[0x223DE8A80](v27, -1, -1);
  }

  v30 = *(v2 + qword_28132AB18 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + qword_28132AB18), *(v2 + qword_28132AB18 + 24));
  if ((sub_22372A808() & 1) == 0)
  {
    v70 = sub_22372AC88();
    v42 = sub_22372B278();
    if (!os_log_type_enabled(v70, v42))
    {
      goto LABEL_20;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. Feature flag is off.";
LABEL_16:
    _os_log_impl(&dword_223620000, v70, v42, v44, v43, 2u);
    MEMORY[0x223DE8A80](v43, -1, -1);
    goto LABEL_20;
  }

  v31 = *(v2 + qword_28132AB08);
  v32 = v70;
  if (!v31)
  {
    v70 = sub_22372AC88();
    v42 = sub_22372B278();
    if (!os_log_type_enabled(v70, v42))
    {
      goto LABEL_20;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "#user-session: cannot handle ActiveUserSessionDetectedMessage. session context doesn't exist yet.";
    goto LABEL_16;
  }

  v33 = *(v2 + qword_28132AAF0);
  if (v33)
  {
    v34 = *(v2 + qword_28132AB08);

    v35 = v33;
    sub_2237293D8();
    v65 = v35;
    sub_22372A288();
    v36 = v32[1].isa;
    v36(v9, v69);
    v38 = v67;
    v37 = v68;
    if ((*(v67 + 48))(v18, 1, v68) == 1)
    {
      sub_223626478(v18, &unk_27D08E990, &qword_22372FCF0);
      v39 = sub_22372AC88();
      v40 = sub_22372B278();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_223620000, v39, v40, "#user-session: cannot handle ActiveUserSessionDetectedMessage. No shared user id found.", v41, 2u);
        MEMORY[0x223DE8A80](v41, -1, -1);
      }
    }

    else
    {
      v64 = v36;
      v49 = v66;
      (*(v38 + 32))(v66, v18, v37);
      v50 = v38;
      sub_2237293D8();
      v51 = v37;
      v52 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_userSessionState;
      swift_beginAccess();
      (v70[5].isa)(v31 + v52, v9, v69);
      (*(v50 + 16))(v15, v49, v51);
      (*(v50 + 56))(v15, 0, 1, v51);
      sub_22372A278();
      swift_endAccess();

      v53 = sub_22372AC88();
      v54 = sub_22372B268();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v71 = v63;
        *v55 = 136315138;
        v56 = v69;
        (v70[2].isa)(v9, v31 + v52, v69);
        sub_223623398(&unk_27D08F670, MEMORY[0x277D5D0E0]);
        v57 = sub_22372B6B8();
        v59 = v58;
        v64(v9, v56);
        v60 = sub_223623274(v57, v59, &v71);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_223620000, v53, v54, "#user-session: final user session state: %s.", v55, 0xCu);
        v61 = v63;
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x223DE8A80](v61, -1, -1);
        MEMORY[0x223DE8A80](v55, -1, -1);
      }

      else
      {
      }

      (*(v50 + 8))(v66, v68);
    }

    return;
  }

  v45 = *(v2 + qword_28132AB08);

  v70 = sub_22372AC88();
  v46 = sub_22372B278();
  if (os_log_type_enabled(v70, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_223620000, v70, v46, "#user-session: cannot handle ActiveUserSessionDetectedMessage. muxcontext hasn't arrived", v47, 2u);
    MEMORY[0x223DE8A80](v47, -1, -1);
  }

LABEL_20:
  v48 = v70;
}

uint64_t sub_2236BF688(uint64_t a1)
{
  v2 = v1;
  v40 = sub_223727408();
  v4 = *(v40 - 1);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v40, v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v39 - v11;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v13 = sub_22372AC98();
  __swift_project_value_buffer(v13, qword_28132B680);
  v14 = sub_22372AC88();
  v15 = sub_22372B268();
  v16 = os_log_type_enabled(v14, v15);
  v39[1] = v2;
  v39[2] = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v41[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_223623274(0xD000000000000023, 0x8000000223736BB0, v41);
    _os_log_impl(&dword_223620000, v14, v15, "%s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x223DE8A80](v18, -1, -1);
    MEMORY[0x223DE8A80](v17, -1, -1);
  }

  sub_2237273F8();
  v19 = sub_2237273B8();
  v21 = v20;
  v22 = *(v4 + 8);
  v22(v12, v40);

  v23 = sub_22372AC88();
  v24 = sub_22372B288();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_223623274(v19, v21, v41);
    _os_log_impl(&dword_223620000, v23, v24, "ASRReadyForNewTurnMessage: Minted new requestId %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x223DE8A80](v26, -1, -1);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  v27 = sub_223729D98();
  v29 = v28;
  sub_223729D58();
  v30 = v39[0];
  sub_223626650(v19, v21, v27, v29, v9, 1, v19, v21);
  if (v30)
  {
    v22(v9, v40);
  }

  else
  {
    v22(v9, v40);

    type metadata accessor for RequestControllerBridgeRequestProcessor();
    v32 = swift_dynamicCastClass();
    if (v32)
    {
      v33 = v32;

      v40 = sub_22372A658();
      v35 = v34;
      v36 = *v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v35;
      *v35 = 0x8000000000000000;
      sub_22368DDC0(v33, v19, v21, isUniquelyReferenced_nonNull_native);

      *v35 = v42;
      (v40)(v41, 0);
      sub_223728968();

      sub_22372A6B8();
    }

    else
    {

      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v38 = v19;
      v38[1] = v21;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }
}

uint64_t sub_2236BFB84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v29 - v15;
  v17 = sub_223727408();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_223729C68();
  sub_2237273F8();
  sub_2237273B8();
  (*(v18 + 8))(v22, v17);
  sub_223729C28();
  sub_2237273F8();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_223729C78();
  v23 = *MEMORY[0x277D5CDE8];
  v24 = sub_223729DE8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v11, v23, v24);
  (*(v25 + 56))(v11, 0, 1, v24);
  sub_223729C48();
  v26 = a4;
  sub_223729C58();
  v27 = a5;
  return sub_223729C38();
}

void sub_2236BFE18(void *a1, void *a2)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B268();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43[0] = v41;
    *v8 = 136315138;
    v9 = [v5 debugDescription];
    v10 = a2;
    v11 = sub_22372AFE8();
    v13 = v12;

    v14 = v11;
    a2 = v10;
    v15 = sub_223623274(v14, v13, v43);

    *(v8 + 4) = v15;
    _os_log_impl(&dword_223620000, v6, v7, "Received SARDRunPOMMESRequest: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x223DE8A80](v41, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v16 = &off_2784E0000;
  if (sub_22372A688())
  {
    type metadata accessor for RequestControllerBridgeRequestProcessor();
    if (swift_dynamicCastClass())
    {
      v17 = sub_22372A768();
      v19 = v18;
      v20 = [v5 &selRef_setUserId_ + 1];
      if (v20)
      {
        v21 = v20;
        v40 = a2;
        v22 = sub_22372AFE8();
        v24 = v23;

        if (v17 == v22 && v19 == v24)
        {

LABEL_13:
          sub_223630584(0, &qword_281328D30, 0x277D476A0);
          sub_22372A6A8();

          return;
        }

        v25 = sub_22372B6E8();

        a2 = v40;
        v16 = &off_2784E0000;
        if (v25)
        {
          goto LABEL_13;
        }
      }

      else
      {

        v16 = &off_2784E0000;
      }
    }
  }

  v26 = sub_22372AC88();
  v27 = sub_22372B268();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_223620000, v26, v27, "RCB has no active request processor with matching requestId, will post RunPommesRequestMessage to be handled by PommesBridge.", v28, 2u);
    MEMORY[0x223DE8A80](v28, -1, -1);
  }

  v29 = [v5 v16[81]];
  if (v29 || (v29 = [a2 requestID]) != 0)
  {
    v30 = v29;
    sub_22372AFE8();

    MEMORY[0x28223BE20](v31, v32);
    v33 = objc_allocWithZone(sub_223728518());
    v34 = sub_2237284A8();

    if (v34)
    {
      sub_22372A958();
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      sub_223729D88();

      __swift_destroy_boxed_opaque_existential_1Tm(v43);
    }

    else
    {
      v35 = sub_22372AC88();
      v36 = sub_22372B278();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_223620000, v35, v36, "Could not build RunPommesRequestMessage. Missing fields?", v37, 2u);
        MEMORY[0x223DE8A80](v37, -1, -1);
      }
    }
  }

  else
  {
    v42 = sub_22372AC88();
    v38 = sub_22372B278();
    if (os_log_type_enabled(v42, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_223620000, v42, v38, "Could not find a refId in the RunPOMMESRequest command, dropping.", v39, 2u);
      MEMORY[0x223DE8A80](v39, -1, -1);
    }
  }
}

uint64_t sub_2236C0400(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v29 - v15;
  v17 = sub_223727408();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2237284F8();
  sub_2237273F8();
  sub_2237273B8();
  (*(v18 + 8))(v22, v17);
  sub_2237284B8();
  sub_2237273F8();
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_223728508();
  v23 = *MEMORY[0x277D5CDE8];
  v24 = sub_223729DE8();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v11, v23, v24);
  (*(v25 + 56))(v11, 0, 1, v24);
  sub_2237284D8();
  v26 = a4;
  sub_2237284E8();
  v27 = a5;
  return sub_2237284C8();
}

uint64_t sub_2236C0694(void *a1)
{
  v2 = v1;
  v4 = sub_223727408();
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_28132B680);
  v9 = sub_22372AC88();
  v10 = sub_22372B268();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v67 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_223623274(0xD000000000000024, 0x8000000223736B60, &v67);
    _os_log_impl(&dword_223620000, v9, v10, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x223DE8A80](v12, -1, -1);
    MEMORY[0x223DE8A80](v11, -1, -1);
  }

  v13 = sub_223729D38();
  v15 = sub_2236C179C(v13, v14);

  if (v15)
  {
    v61 = v4;
    v62 = v2;
    v16 = a1;

    v17 = sub_22372AC88();
    v18 = sub_22372B268();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      HIDWORD(v59) = v18;
      v20 = v19;
      v60 = swift_slowAlloc();
      v67 = v60;
      *v20 = 136315650;
      v21 = v16;
      v22 = [v21 description];
      v23 = v64;
      v24 = v22;
      v25 = sub_22372AFE8();
      v27 = v26;

      v28 = sub_223623274(v25, v27, &v67);

      *(v20 + 4) = v28;
      *(v20 + 12) = 2080;
      v66 = v15;
      type metadata accessor for RequestControllerBridgeRequestProcessor();

      v29 = sub_22372B038();
      v31 = sub_223623274(v29, v30, &v67);

      *(v20 + 14) = v31;
      *(v20 + 22) = 2080;
      v32 = v63;
      sub_223729D58();
      sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0]);
      v33 = v61;
      v34 = sub_22372B6B8();
      v36 = v35;
      (*(v23 + 8))(v32, v33);
      v37 = sub_223623274(v34, v36, &v67);

      *(v20 + 24) = v37;
      _os_log_impl(&dword_223620000, v17, BYTE4(v59), "Handling TRPCandidateRequestMessage %s with requestControllerBridgeRequestProcessor %s for sessionId: %s", v20, 0x20u);
      v38 = v60;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v38, -1, -1);
      MEMORY[0x223DE8A80](v20, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeRequestProcessor();
    sub_223728CE8();

    sub_22372A6B8();
  }

  else
  {
    v40 = a1;
    v41 = sub_22372AC88();
    v42 = sub_22372B278();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v67 = v65;
      *v43 = 136315394;
      v44 = sub_223729D38();
      v46 = sub_223623274(v44, v45, &v67);
      v47 = v64;
      v48 = v46;

      *(v43 + 4) = v48;
      *(v43 + 12) = 2080;
      v49 = v63;
      sub_223729D58();
      sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0]);
      v50 = sub_22372B6B8();
      v52 = v51;
      (*(v47 + 8))(v49, v4);
      v53 = sub_223623274(v50, v52, &v67);

      *(v43 + 14) = v53;
      _os_log_impl(&dword_223620000, v41, v42, "Did not find a RequestControllerBridgeRequestProcessor requestId: %s for sessionId: %s", v43, 0x16u);
      v54 = v65;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v54, -1, -1);
      MEMORY[0x223DE8A80](v43, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    v55 = swift_allocError();
    v57 = v56;
    *v56 = sub_223729D38();
    v57[1] = v58;
    swift_storeEnumTagMultiPayload();
    v65 = v55;
    return swift_willThrow();
  }
}

uint64_t sub_2236C0D1C()
{
  v1 = v0;
  v2 = sub_223727408();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v8 = sub_22372AC98();
  __swift_project_value_buffer(v8, qword_28132B680);
  v9 = sub_22372AC88();
  v10 = sub_22372B268();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v34 = v1;
    v12 = v2;
    v13 = v11;
    v14 = swift_slowAlloc();
    v35 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_223623274(0xD00000000000001ELL, 0x8000000223736B40, &v35);
    _os_log_impl(&dword_223620000, v9, v10, "%s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x223DE8A80](v14, -1, -1);
    v15 = v13;
    v2 = v12;
    v1 = v34;
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  sub_223729D58();
  v16 = *(v1 + qword_28132AB08);
  if (!v16)
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    (*(v3 + 16))(v24, v7, v2);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v3 + 8))(v7, v2);
  }

  v17 = v2;
  v18 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_sessionId;
  v19 = *(v1 + qword_28132AB08);

  if ((sub_2237273D8() & 1) == 0)
  {
    v34 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    v33 = swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
    v28 = *(v3 + 16);
    v29 = v16 + v18;
    v2 = v17;
    v28(v26, v29, v17);
    v28(v26 + v27, v7, v17);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return (*(v3 + 8))(v7, v2);
  }

  (*(v3 + 8))(v7, v17);
  v20 = sub_223729D38();
  v22 = sub_2236C18BC(v20, v21);

  if (v22)
  {
    type metadata accessor for RequestControllerBridgeRequestProcessor();
    sub_223728188();

    sub_22372A6B8();
  }

  else
  {
    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_223623398(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    v31 = v30;
    *v30 = sub_223729D38();
    v31[1] = v32;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

id sub_2236C1210(void *a1)
{
  result = sub_223642C1C(a1, sub_2236C2030, 0);
  if (!v1)
  {
    v3 = sub_223729D38();
    sub_2236E3E0C(v3, v4);
  }

  return result;
}

uint64_t sub_2236C1284(void *a1)
{
  v2 = sub_223727408();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v23[-v9];
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v11 = sub_22372AC98();
  __swift_project_value_buffer(v11, qword_28132B680);
  v12 = a1;
  v13 = sub_22372AC88();
  v14 = sub_22372B268();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v29 = v25;
    *v15 = 136315138;
    v24 = v14;
    sub_223729D58();
    sub_223623398(&qword_28132B600, MEMORY[0x277CC95F0]);
    v16 = v28;
    v17 = sub_22372B6B8();
    v26 = v7;
    v19 = v18;
    (*(v27 + 8))(v10, v16);
    v20 = sub_223623274(v17, v19, &v29);
    v7 = v26;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_223620000, v13, v24, "Received SiriDismissedMessage for sessionId: %s", v15, 0xCu);
    v21 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x223DE8A80](v21, -1, -1);
    MEMORY[0x223DE8A80](v15, -1, -1);
  }

  sub_223729D58();
  sub_223729D98();
  sub_22362B4E0();
  (*(v27 + 8))(v7, v28);
}

uint64_t sub_2236C1570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a5;
  v24[1] = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = v24 - v16;
  v18 = *MEMORY[0x277D5CDE8];
  v19 = sub_223729DE8();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  sub_223728158();

  sub_223728138();
  v21 = sub_223727408();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v12, a4, v21);
  (*(v22 + 56))(v12, 0, 1, v21);
  sub_223728178();

  sub_223728168();
  return sub_223728148();
}

uint64_t sub_2236C179C(uint64_t a1, uint64_t a2)
{
  if (sub_22372A688())
  {
    if (sub_22372A768() == a1 && v4 == a2)
    {

      goto LABEL_6;
    }

    v5 = sub_22372B6E8();

    if (v5)
    {
LABEL_6:
      type metadata accessor for RequestControllerBridgeRequestProcessor();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  v7 = sub_22372A668();
  if (!*(v7 + 16) || (v8 = sub_2236261A0(a1, a2), (v9 & 1) == 0))
  {

    return 0;
  }

  v10 = *(*(v7 + 56) + 8 * v8);

  type metadata accessor for RequestControllerBridgeRequestProcessor();
  result = swift_dynamicCastClass();
  if (result)
  {
    return result;
  }

LABEL_7:

  return 0;
}

uint64_t sub_2236C18BC(uint64_t a1, unint64_t a2)
{
  if (sub_22372A688())
  {
    if (sub_22372A768() == a1 && v4 == a2)
    {
    }

    else
    {
      v5 = sub_22372B6E8();

      if ((v5 & 1) == 0)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    type metadata accessor for RequestControllerBridgeRequestProcessor();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v8 = sub_22372AC98();
      __swift_project_value_buffer(v8, qword_28132B680);

      v9 = sub_22372AC88();
      v10 = sub_22372B268();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v25[0] = v12;
        *v11 = 136315138;
        *(v11 + 4) = sub_223623274(a1, a2, v25);
        _os_log_impl(&dword_223620000, v9, v10, "Deinitializing RequestControllerBridgeRequestProcessor with requestId: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x223DE8A80](v12, -1, -1);
        MEMORY[0x223DE8A80](v11, -1, -1);
      }

      sub_22372A698();
      return v7;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = sub_22372A668();
  if (*(v13 + 16) && (v14 = sub_2236261A0(a1, a2), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);

    type metadata accessor for RequestControllerBridgeRequestProcessor();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v7 = v17;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v18 = sub_22372AC98();
      __swift_project_value_buffer(v18, qword_28132B680);

      v19 = sub_22372AC88();
      v20 = sub_22372B268();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v25[0] = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_223623274(a1, a2, v25);
        _os_log_impl(&dword_223620000, v19, v20, "Deinitializing RequestControllerBridgeRequestProcessor with requestId: %s.  ", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        MEMORY[0x223DE8A80](v22, -1, -1);
        MEMORY[0x223DE8A80](v21, -1, -1);
      }

      v23 = sub_22372A658();
      sub_223713EE0(0, a1, a2);
      v23(v25, 0);
      return v7;
    }
  }

  else
  {
  }

  return 0;
}

void sub_2236C1C8C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AAF8));
  v1 = *(v0 + qword_28132ACA0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AB18));
  v2 = *(v0 + qword_28132AC88);

  v3 = *(v0 + qword_28132AC90 + 8);

  v4 = *(v0 + qword_28132AB08);

  v5 = *(v0 + qword_28132AAF0);
}

uint64_t RequestControllerBridge.deinit()
{
  v0 = sub_22372A6F8();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AAF8));
  v1 = *(v0 + qword_28132ACA0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AB18));
  v2 = *(v0 + qword_28132AC88);

  v3 = *(v0 + qword_28132AC90 + 8);

  v4 = *(v0 + qword_28132AB08);

  return v0;
}

uint64_t RequestControllerBridge.__deallocating_deinit()
{
  v0 = sub_22372A6F8();
  v1 = qword_28132AAF8;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + v1));
  v3 = *(v0 + qword_28132ACA0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_28132AB18));
  v4 = *(v0 + qword_28132AC88);

  v5 = *(v0 + qword_28132AC90 + 8);

  v6 = *(v0 + qword_28132AB08);

  v7 = *(v0 + qword_28132AAF0);

  return swift_deallocClassInstance();
}

void *sub_2236C1E80(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319B8;
}

void *sub_2236C1EEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731998;
}

void *sub_2236C1F58(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731980;
}

void *sub_2236C1FC4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319A0;
}

void *sub_2236C2030(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731978;
}

void *sub_2236C209C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237319C0;
}

void *sub_2236C2108(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731990;
}

uint64_t sub_2236C2194(uint64_t a1, uint64_t a2)
{
  v124 = a1;
  v3 = sub_223727408();
  v4 = *(v3 - 8);
  v122 = v3;
  v123 = v4;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v113 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v112 = &v109 - v11;
  v13 = MEMORY[0x28223BE20](v10, v12);
  v111 = &v109 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v114 = &v109 - v17;
  v19 = MEMORY[0x28223BE20](v16, v18);
  v115 = &v109 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v116 = &v109 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v110 = &v109 - v25;
  v26 = type metadata accessor for RequestControllerBridgeInternalErrors(0);
  v27 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v120 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v119 = &v109 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v118 = &v109 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v121 = &v109 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = (&v109 - v42);
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = (&v109 - v46);
  v49 = MEMORY[0x28223BE20](v45, v48);
  v117 = &v109 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v54 = (&v109 - v53);
  v56 = MEMORY[0x28223BE20](v52, v55);
  v58 = (&v109 - v57);
  MEMORY[0x28223BE20](v56, v59);
  v61 = (&v109 - v60);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F660, &unk_223731960);
  v63 = *(*(v62 - 8) + 64);
  v65 = MEMORY[0x28223BE20](v62 - 8, v64);
  v67 = &v109 - v66;
  v68 = (&v109 + *(v65 + 56) - v66);
  sub_2236C3520(v124, &v109 - v66, type metadata accessor for RequestControllerBridgeInternalErrors);
  sub_2236C3520(a2, v68, type metadata accessor for RequestControllerBridgeInternalErrors);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      v79 = v123;
      if (EnumCaseMultiPayload != 9)
      {
        if (EnumCaseMultiPayload == 10)
        {
          if (swift_getEnumCaseMultiPayload() != 10)
          {
LABEL_53:
            sub_223626478(v67, &unk_27D08F660, &unk_223731960);
LABEL_54:
            v90 = 0;
            return v90 & 1;
          }
        }

        else if (swift_getEnumCaseMultiPayload() != 11)
        {
          goto LABEL_53;
        }

LABEL_59:
        sub_2236C3588(v67, type metadata accessor for RequestControllerBridgeInternalErrors);
        v90 = 1;
        return v90 & 1;
      }

      v91 = v120;
      sub_2236C3520(v67, v120, type metadata accessor for RequestControllerBridgeInternalErrors);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        (*(v79 + 8))(v91, v122);
        goto LABEL_53;
      }

      v92 = *(v79 + 32);
      v93 = v113;
      goto LABEL_33;
    }

    v72 = v123;
    v73 = v68;
    if (EnumCaseMultiPayload == 6)
    {
      v80 = v121;
      sub_2236C3520(v67, v121, type metadata accessor for RequestControllerBridgeInternalErrors);
      v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F648, &qword_2237317B8) + 48);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        v102 = *(v72 + 8);
        v103 = v80 + v81;
        v104 = v122;
        v102(v103, v122);
        v102(v80, v104);
        goto LABEL_53;
      }

      v82 = *(v72 + 32);
      v83 = v116;
      v84 = v122;
      v82(v116, v73, v122);
      v85 = v115;
      v82(v115, (v80 + v81), v84);
      v86 = (v73 + v81);
      v87 = v114;
      v82(v114, v86, v84);
      v88 = sub_2237273D8();
      v89 = *(v72 + 8);
      v89(v80, v84);
      if ((v88 & 1) == 0)
      {
        v89(v87, v84);
        v89(v85, v84);
        v89(v83, v84);
        goto LABEL_61;
      }

      v90 = sub_2237273D8();
      v89(v87, v84);
      v89(v85, v84);
      v89(v83, v84);
      goto LABEL_39;
    }

    v74 = v122;
    if (EnumCaseMultiPayload == 7)
    {
      v75 = v118;
      sub_2236C3520(v67, v118, type metadata accessor for RequestControllerBridgeInternalErrors);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v76 = v111;
        (*(v72 + 32))(v111, v68, v74);
LABEL_38:
        v90 = sub_2237273D8();
        v98 = *(v72 + 8);
        v98(v76, v74);
        v98(v75, v74);
        goto LABEL_39;
      }
    }

    else
    {
      v75 = v119;
      sub_2236C3520(v67, v119, type metadata accessor for RequestControllerBridgeInternalErrors);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v76 = v112;
        (*(v72 + 32))(v112, v68, v74);
        goto LABEL_38;
      }
    }

    (*(v72 + 8))(v75, v74);
    goto LABEL_53;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_2236C3520(v67, v47, type metadata accessor for RequestControllerBridgeInternalErrors);
        v78 = *v47;
        v77 = v47[1];
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          if (v78 == *v68 && v77 == v68[1])
          {
            goto LABEL_44;
          }

LABEL_55:
          v105 = sub_22372B6E8();

          if (v105)
          {
            goto LABEL_59;
          }

          goto LABEL_61;
        }
      }

      else
      {
        sub_2236C3520(v67, v43, type metadata accessor for RequestControllerBridgeInternalErrors);
        v100 = *v43;
        v99 = v43[1];
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          if (v100 == *v68 && v99 == v68[1])
          {
            v101 = v68[1];
LABEL_44:

            goto LABEL_59;
          }

          v106 = v68[1];
          v107 = sub_22372B6E8();

          if (v107)
          {
            goto LABEL_59;
          }

LABEL_61:
          sub_2236C3588(v67, type metadata accessor for RequestControllerBridgeInternalErrors);
          goto LABEL_54;
        }
      }

      goto LABEL_45;
    }

    v91 = v117;
    sub_2236C3520(v67, v117, type metadata accessor for RequestControllerBridgeInternalErrors);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v123 + 8))(v91, v122);
      goto LABEL_53;
    }

    v79 = v123;
    v92 = *(v123 + 32);
    v93 = v110;
LABEL_33:
    v94 = v122;
    v92(v93, v68, v122);
    v90 = sub_2237273D8();
    v95 = *(v79 + 8);
    v95(v93, v94);
    v95(v91, v94);
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2236C3520(v67, v61, type metadata accessor for RequestControllerBridgeInternalErrors);
    v71 = *v61;
    v70 = v61[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      goto LABEL_23;
    }

LABEL_45:

    goto LABEL_53;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2236C3520(v67, v58, type metadata accessor for RequestControllerBridgeInternalErrors);
    v71 = *v58;
    v70 = v58[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_45;
    }

LABEL_23:
    if (v71 == *v68 && v70 == v68[1])
    {
      goto LABEL_44;
    }

    goto LABEL_55;
  }

  sub_2236C3520(v67, v54, type metadata accessor for RequestControllerBridgeInternalErrors);
  v96 = *v54;
  if (swift_getEnumCaseMultiPayload() != 2)
  {

    goto LABEL_53;
  }

  v97 = *v68;
  sub_223630584(0, &qword_281328D10, 0x277D82BB8);
  v90 = sub_22372B368();

LABEL_39:
  sub_2236C3588(v67, type metadata accessor for RequestControllerBridgeInternalErrors);
  return v90 & 1;
}

uint64_t sub_2236C2C48(uint64_t a1, uint64_t a2)
{
  v37 = a1;
  v38 = a2;
  v2 = sub_223729FB8();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223728E18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for IntelligenceFlowPrescribedTool(0);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v35 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F658, &qword_223731958);
  v23 = *(*(v22 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v22 - 8, v24);
  v27 = &v35 - v26;
  v28 = *(v25 + 56);
  sub_2236C3520(v37, &v35 - v26, type metadata accessor for IntelligenceFlowPrescribedTool);
  sub_2236C3520(v38, &v27[v28], type metadata accessor for IntelligenceFlowPrescribedTool);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2236C3520(v27, v18, type metadata accessor for IntelligenceFlowPrescribedTool);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v35;
      v29 = v36;
      (*(v35 + 32))(v6, &v27[v28], v36);
      v31 = sub_223729F98();
      v32 = *(v30 + 8);
      v32(v6, v29);
      v32(v18, v29);
LABEL_9:
      sub_2236C3588(v27, type metadata accessor for IntelligenceFlowPrescribedTool);
      return v31 & 1;
    }

    (*(v35 + 8))(v18, v36);
  }

  else
  {
    sub_2236C3520(v27, v21, type metadata accessor for IntelligenceFlowPrescribedTool);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v8 + 32))(v12, &v27[v28], v7);
      v31 = sub_223728E08();
      v33 = *(v8 + 8);
      v33(v12, v7);
      v33(v21, v7);
      goto LABEL_9;
    }

    (*(v8 + 8))(v21, v7);
  }

  sub_223626478(v27, &qword_27D08F658, &qword_223731958);
  v31 = 0;
  return v31 & 1;
}

void sub_2236C30F0()
{
  v0 = sub_223727408();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = sub_22372A548();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      v4 = sub_22372A298();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_22369BEEC();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_2236C3278()
{
  result = sub_223728E18();
  if (v1 <= 0x3F)
  {
    result = sub_223729FB8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2236C32EC()
{
  sub_2236C340C();
  if (v0 <= 0x3F)
  {
    sub_2236C34D4(319, &qword_28132B568, MEMORY[0x277D5CDB0]);
    if (v1 <= 0x3F)
    {
      sub_2236C34D4(319, &unk_28132B620, MEMORY[0x277CC95F0]);
      if (v2 <= 0x3F)
      {
        sub_2236C343C();
        if (v3 <= 0x3F)
        {
          sub_2236C346C();
          if (v4 <= 0x3F)
          {
            sub_2236C34D4(319, &qword_28132B648, MEMORY[0x277CC95F0]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2236C340C()
{
  result = qword_281328E00;
  if (!qword_281328E00)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_281328E00);
  }

  return result;
}

uint64_t sub_2236C343C()
{
  result = qword_281328E08;
  if (!qword_281328E08)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_281328E08);
  }

  return result;
}

void sub_2236C346C()
{
  if (!qword_28132B630)
  {
    sub_223727408();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28132B630);
    }
  }
}

void sub_2236C34D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2236C3520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2236C3588(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2236C35E8()
{
  result = qword_281329548;
  if (!qword_281329548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281329548);
  }

  return result;
}

uint64_t sub_2236C3668(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_223643468(a1, v5, v4);
}

uint64_t sub_2236C3758(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_223624EA4;

  return sub_2236CA8A8(a1, v5, v4);
}

uint64_t sub_2236C3810(uint64_t result)
{
  if (result != 1)
  {
    return sub_22363FFD8(result);
  }

  return result;
}

uint64_t sub_2236C3874(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D1A00(a1, v5, v4);
}

uint64_t sub_2236C3A28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CA774(a1, v5, v4);
}

uint64_t sub_2236C3B1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CB9FC(a1, v5, v4);
}

uint64_t sub_2236C3BF4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236CA640(a1, v5, v4);
}

uint64_t sub_2236C3D30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2236242EC;

  return sub_2236D0584(a1, v5, v4);
}

void sub_2236C3F44(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

id sub_2236C3FBC()
{
  type metadata accessor for RequestControllerBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  v1 = objc_opt_self();
  v0[2] = [v1 sharedStream];
  v2 = sub_22372A8A8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v0[3] = sub_22372A898();
  result = [v1 sharedAnalytics];
  v0[4] = result;
  qword_28132B928 = v0;
  return result;
}

void sub_2236C4060(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277D59860]) init];
  if (!v6)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_28132B680);

    v21 = sub_22372AC88();
    v12 = sub_22372B278();

    if (os_log_type_enabled(v21, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v22 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_223623274(a1, a2, &v22);
      _os_log_impl(&dword_223620000, v21, v12, "MUX: Instrumentation: Failed to create ORCHSchemaORCHResultCandidateReceived message for : %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x223DE8A80](v14, -1, -1);
      MEMORY[0x223DE8A80](v13, -1, -1);
LABEL_12:

      return;
    }

LABEL_14:
    v10 = v21;
    goto LABEL_15;
  }

  v7 = *(v2 + 24);
  v21 = v6;
  v8 = sub_22372A888();
  [v21 setTrpId:v8];

  v9 = sub_22372A868();
  if (!v9)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);

    v16 = sub_22372AC88();
    v17 = sub_22372B278();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_223623274(a1, a2, &v22);
      _os_log_impl(&dword_223620000, v16, v17, "MUX: Instrumentation: Failed to create wrapper event message for end request for : %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x223DE8A80](v19, -1, -1);
      MEMORY[0x223DE8A80](v18, -1, -1);

      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v20 = v9;
  [v9 setTrpCandidateReceived:v21];
  [*(v3 + 16) emitMessage_];

  v10 = v20;
LABEL_15:
}

void sub_2236C4390(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v8 = [objc_allocWithZone(MEMORY[0x277D59600]) init];
  v9 = [objc_allocWithZone(MEMORY[0x277D59608]) init];
  v17 = v9;
  if (v9)
  {
    [v9 setRequestType:sub_2236C60E4(a3 & 1, a4)];
    v9 = v17;
  }

  [v8 setStarted:v9];
  v10 = *(v4 + 24);
  v11 = sub_22372A868();
  if (v11)
  {
    v12 = v11;
    [v11 setCandidateRequestContext:v8];
    [*(v5 + 16) emitMessage_];
    v13 = v8;
    v8 = v17;
    v17 = v12;
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v14 = sub_22372AC98();
    __swift_project_value_buffer(v14, qword_28132B680);
    v13 = sub_22372AC88();
    v15 = sub_22372B278();
    if (os_log_type_enabled(v13, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_223620000, v13, v15, "Could not build wrapper when logging CandidateRequestContext", v16, 2u);
      MEMORY[0x223DE8A80](v16, -1, -1);
    }
  }
}

void sub_2236C456C()
{
  v1 = v0;
  v10 = [objc_allocWithZone(MEMORY[0x277D59600]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277D595F8]) init];
  [v10 setCancelled:v2];
  v3 = *(v0 + 24);
  v4 = sub_22372A868();
  if (v4)
  {
    v5 = v4;
    [v4 setCandidateRequestContext:v10];
    [*(v1 + 16) emitMessage_];
    v6 = v10;
    v10 = v5;
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    v6 = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, v6, v8, "Could not build wrapper when logging CandidateRequestContext", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

void sub_2236C470C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = sub_22372A868();
  if (v3)
  {
    v4 = v3;
    v5 = sub_22372A888();
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(MEMORY[0x277D59868]) init];
      v8 = v7;
      oslog = v7;
      if (v7)
      {
        [v7 setTrpId:v6];
        v8 = oslog;
      }

      [v4 setTrpFinalized_];
      [*(v1 + 16) emitMessage_];
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v12 = sub_22372AC98();
      __swift_project_value_buffer(v12, qword_28132B680);
      oslog = sub_22372AC88();
      v13 = sub_22372B278();
      if (os_log_type_enabled(oslog, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_223620000, oslog, v13, "The trpId is not a valid UUID, stop logging TRPFinalizedEvent", v14, 2u);
        MEMORY[0x223DE8A80](v14, -1, -1);
      }
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v9 = sub_22372AC98();
    __swift_project_value_buffer(v9, qword_28132B680);
    oslog = sub_22372AC88();
    v10 = sub_22372B278();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_223620000, oslog, v10, "Could not build wrapper when logging TRPFinalizedEvent", v11, 2u);
      MEMORY[0x223DE8A80](v11, -1, -1);
    }
  }
}

void sub_2236C495C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v42 - v11;
  v13 = sub_223727408();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2237273A8();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_223660FAC(v12);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v19 = sub_22372AC98();
    __swift_project_value_buffer(v19, qword_28132B680);

    v20 = sub_22372AC88();
    v21 = sub_22372B278();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_223623274(a2, a3, aBlock);
      _os_log_impl(&dword_223620000, v20, v21, "Unable to apply log redaction due to invalid requestId %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x223DE8A80](v23, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);

    v25 = sub_22372AC88();
    v26 = sub_22372B268();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v44 = a2;
      v45 = v28;
      aBlock[0] = v28;
      *v27 = 136315394;
      v29 = sub_22372B328();
      v31 = sub_223623274(v29, v30, aBlock);
      v43 = v25;
      v32 = v18;
      v33 = a1;
      v34 = v31;

      *(v27 + 4) = v34;
      a1 = v33;
      v18 = v32;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_223623274(v44, a3, aBlock);
      v35 = v43;
      _os_log_impl(&dword_223620000, v43, v26, "Apply redaction tag with sensitive state %s for requestId %s", v27, 0x16u);
      v36 = v45;
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v36, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    else
    {
    }

    v37 = objc_allocWithZone(MEMORY[0x277D552D0]);
    v38 = sub_2237273C8();
    v39 = [v37 initWithConditionType:a1 requestId:v38 joined:1];

    v40 = *(v4 + 32);
    aBlock[4] = nullsub_1;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2236C3F44;
    aBlock[3] = &block_descriptor_3;
    v41 = _Block_copy(aBlock);
    [v40 createTag:v39 completion:v41];
    _Block_release(v41);

    (*(v14 + 8))(v18, v13);
  }
}

void sub_2236C4E3C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 24);
  v9 = sub_22372A868();
  if (v9)
  {
    v10 = v9;
    oslog = [objc_allocWithZone(MEMORY[0x277D597C8]) init];
    [oslog setMitigationSource:a1];
    [v10 setRequestMitigated_];
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v11 = sub_22372AC98();
    __swift_project_value_buffer(v11, qword_28132B680);

    v12 = sub_22372AC88();
    v13 = sub_22372B268();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_223623274(a2, a3, &v20);
      _os_log_impl(&dword_223620000, v12, v13, "Sending SELF RequestMitigated event for requestId %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223DE8A80](v15, -1, -1);
      MEMORY[0x223DE8A80](v14, -1, -1);
    }

    [*(v4 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);
    oslog = sub_22372AC88();
    v17 = sub_22372B278();
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_223620000, oslog, v17, "Could not build wrapper when logging requestMitigatedEvent", v18, 2u);
      MEMORY[0x223DE8A80](v18, -1, -1);
    }
  }
}

void sub_2236C50D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(v4 + 24);
  v8 = sub_22372A868();
  if (v8)
  {
    v9 = v8;
    v10 = [objc_allocWithZone(MEMORY[0x277D59880]) init];
    v11 = v10;
    if (v10)
    {
      [v10 setExists_];
    }

    v18 = [objc_allocWithZone(MEMORY[0x277D59870]) init];
    [v18 setStartedOrChanged:v11];
    if (a4)
    {
      v12 = sub_22372A888();
      if (v12)
      {
        v13 = v12;
        if (v18)
        {
          v14 = v18;
          [v14 setTrpId:v13];
        }
      }
    }

    [v9 setUiActivationContext_];
    [*(v5 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v15 = sub_22372AC98();
    __swift_project_value_buffer(v15, qword_28132B680);
    v18 = sub_22372AC88();
    v16 = sub_22372B278();
    if (os_log_type_enabled(v18, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_223620000, v18, v16, "Could not build wrapper when logging logUIActivationStarted", v17, 2u);
      MEMORY[0x223DE8A80](v17, -1, -1);
    }
  }
}

void sub_2236C52C0()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = sub_22372A868();
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D59878]) init];
    v6 = v5;
    if (v5)
    {
      [v5 setExists_];
    }

    oslog = [objc_allocWithZone(MEMORY[0x277D59870]) init];
    [oslog setEnded:v6];
    [v4 setUiActivationContext_];
    [*(v1 + 16) emitMessage_];
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v7 = sub_22372AC98();
    __swift_project_value_buffer(v7, qword_28132B680);
    oslog = sub_22372AC88();
    v8 = sub_22372B278();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_223620000, oslog, v8, "Could not build wrapper when logging logUIActivationEnded", v9, 2u);
      MEMORY[0x223DE8A80](v9, -1, -1);
    }
  }
}

void sub_2236C5458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, char a8)
{
  v9 = v8;
  v13 = *(v8 + 24);
  v14 = sub_22372A868();
  if (!v14)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v21 = sub_22372AC98();
    __swift_project_value_buffer(v21, qword_28132B680);
    v27 = sub_22372AC88();
    v22 = sub_22372B278();
    if (os_log_type_enabled(v27, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_223620000, v27, v22, "Could not build wrapper when logging logRewrittenUtteranceTier1", v23, 2u);
      MEMORY[0x223DE8A80](v23, -1, -1);
    }

    goto LABEL_20;
  }

  v15 = v14;
  v16 = sub_22372A888();
  if (!v16)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v27 = sub_22372AC88();
    v25 = sub_22372B278();
    if (os_log_type_enabled(v27, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_223620000, v27, v25, "The subRequestId is not a valid UUID, will not emit for logRewrittenUtteranceTier1", v26, 2u);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    goto LABEL_20;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x277D59570]) init];
  v19 = v18;
  v27 = v18;
  if (v18)
  {
    [v18 setSubRequestId:v17];
    v20 = v27;
    if (a6)
    {
      a6 = sub_22372AFD8();
    }

    [v27 setUtteranceText:a6];

    v19 = v27;
    if ((a8 & 1) == 0)
    {
      if (a7 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (a7 <= 0x7FFFFFFF)
      {
        [v27 setUtteranceIndex:a7];
        v19 = v27;
        goto LABEL_19;
      }

      __break(1u);
      return;
    }
  }

LABEL_19:
  [v15 setRouterRewrittenUtterance_];
  [*(v9 + 16) emitMessage_];

LABEL_20:
}

void sub_2236C574C()
{
  v1 = sub_223729D38();
  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D59858]) init];
  if (!v4)
  {
    if (qword_281328E58 == -1)
    {
LABEL_18:
      v25 = sub_22372AC98();
      __swift_project_value_buffer(v25, qword_28132B680);

      oslog = sub_22372AC88();
      v26 = sub_22372B278();

      if (os_log_type_enabled(oslog, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v42 = v28;
        *v27 = 136315138;
        v29 = sub_223623274(v1, v3, &v42);

        *(v27 + 4) = v29;
        _os_log_impl(&dword_223620000, oslog, v26, "MUX: Instrumentation: Failed to create ORCHSchemaORCHTRPCandidateCreated message for : %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
        MEMORY[0x223DE8A80](v28, -1, -1);
        MEMORY[0x223DE8A80](v27, -1, -1);
        v30 = oslog;
LABEL_24:

        return;
      }

      v24 = oslog;
      goto LABEL_27;
    }

LABEL_31:
    swift_once();
    goto LABEL_18;
  }

  v39 = v4;
  osloga = *(v0 + 24);
  v5 = sub_22372A868();
  if (v5)
  {
    v38 = v5;
    v37 = v0;

    sub_223728CF8();
    v6 = sub_2237298C8();
    v3 = v6;
    v42 = MEMORY[0x277D84F90];
    v7 = v6 + 64;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v6 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    if (!v10)
    {
      goto LABEL_8;
    }

    do
    {
LABEL_6:
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        v14 = v13 | (v12 << 6);
        v15 = *(*(v3 + 48) + 16 * v14 + 8);
        v16 = *(*(v3 + 56) + 8 * v14);

        v17 = v16;
        sub_223728CF8();
        v1 = v18;
        v19 = sub_22372A888();

        if (v19)
        {
          break;
        }

        if (!v10)
        {
          goto LABEL_8;
        }
      }

      MEMORY[0x223DE7B50](v20);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22372B148();
      }

      sub_22372B158();
    }

    while (v10);
LABEL_8:
    while (1)
    {
      v21 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v21 >= v11)
      {

        v22 = sub_22372A888();

        [v39 setRootTrpId:v22];

        sub_2236C6080();
        v23 = sub_22372B118();

        [v39 setUserTrpIds:v23];

        [v38 setTrpCandidateCreated:v39];
        [*(v37 + 16) emitMessage_];

        v24 = v38;
        goto LABEL_27;
      }

      v10 = *(v7 + 8 * v21);
      ++v12;
      if (v10)
      {
        v12 = v21;
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v31 = sub_22372AC98();
  __swift_project_value_buffer(v31, qword_28132B680);

  v32 = sub_22372AC88();
  v33 = sub_22372B278();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v42 = v35;
    *v34 = 136315138;
    v36 = sub_223623274(v1, v3, &v42);

    *(v34 + 4) = v36;
    _os_log_impl(&dword_223620000, v32, v33, "MUX: Instrumentation: Failed to create wrapper event message for end request for : %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x223DE8A80](v35, -1, -1);
    MEMORY[0x223DE8A80](v34, -1, -1);

    v30 = v39;
    goto LABEL_24;
  }

  v24 = v39;
LABEL_27:
}

uint64_t sub_2236C5C88()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_2236C5CF4(uint64_t a1)
{
  v2 = sub_2237287C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RequestInfo.RequestRoute(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route;
  swift_beginAccess();
  sub_2236C5FC0(a1 + v13, v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    if (*(a1 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite))
    {
      return 12;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    v16 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
    swift_beginAccess();
    (*(v3 + 16))(v7, a1 + v16, v2);
    v17 = (*(v3 + 88))(v7, v2);
    if (v17 == *MEMORY[0x277D5CB88])
    {
      v18 = sub_2236F0954();
      (*(v3 + 8))(v7, v2);
      sub_2236C6024(v12);
      if (v18)
      {
        return 9;
      }

      else
      {
        return 8;
      }
    }

    else if (v17 == *MEMORY[0x277D5CBA0])
    {
      v19 = sub_2236F0954();
      sub_2236C6024(v12);
      if (v19)
      {
        return 6;
      }

      else
      {
        return 4;
      }
    }

    else if (v17 == *MEMORY[0x277D5CB98])
    {
      v20 = sub_2236F0954();
      sub_2236C6024(v12);
      if (v20)
      {
        return 11;
      }

      else
      {
        return 10;
      }
    }

    else
    {
      (*(v3 + 8))(v7, v2);
      sub_2236C6024(v12);
      return 0;
    }
  }
}

uint64_t sub_2236C5FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequestInfo.RequestRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2236C6024(uint64_t a1)
{
  v2 = type metadata accessor for RequestInfo.RequestRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2236C6080()
{
  result = qword_27D08F688;
  if (!qword_27D08F688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D08F688);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2236C60E4(char a1, uint64_t a2)
{
  v4 = sub_22372A1D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - v12;
  if (a1)
  {
    return 2;
  }

  v15 = *(v5 + 16);
  v15(&v29 - v12, a2, v4);
  v16 = (*(v5 + 88))(v13, v4);
  if (v16 == *MEMORY[0x277D5D080])
  {
    return 5;
  }

  if (v16 == *MEMORY[0x277D5D088])
  {
    return 4;
  }

  if (v16 == *MEMORY[0x277D5D098])
  {
    return 3;
  }

  if (v16 == *MEMORY[0x277D5D090])
  {
    return 6;
  }

  if (v16 == *MEMORY[0x277D5D0A0])
  {
    return 1;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v17 = sub_22372AC98();
  __swift_project_value_buffer(v17, qword_28132B680);
  v15(v10, a2, v4);
  v18 = sub_22372AC88();
  v19 = sub_22372B278();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v30 = v20;
    v31 = swift_slowAlloc();
    v32 = v31;
    *v20 = 136315138;
    v21 = sub_22372A1C8();
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v10, v4);
    v25 = sub_223623274(v21, v23, &v32);

    v26 = v30;
    *(v30 + 1) = v25;
    v27 = v26;
    _os_log_impl(&dword_223620000, v18, v19, "AudioRecordType = %s, returning unknown RequestType", v26, 0xCu);
    v28 = v31;
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v28, -1, -1);
    MEMORY[0x223DE8A80](v27, -1, -1);
  }

  else
  {

    v24 = *(v5 + 8);
    v24(v10, v4);
  }

  v24(v13, v4);
  return 0;
}

uint64_t RemoteIntelligenceFlowErrorMessage.CodingKeys.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t RemoteIntelligenceFlowErrorMessage.CodingKeys.hashValue.getter()
{
  sub_22372B7A8();
  MEMORY[0x223DE8200](0);
  return sub_22372B7C8();
}

uint64_t sub_2236C6598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22372B6E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2236C6628(uint64_t a1)
{
  v2 = sub_2236C6C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2236C6664(uint64_t a1)
{
  v2 = sub_2236C6C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RemoteIntelligenceFlowErrorMessage.__allocating_init(build:)(void (*a1)(char *))
{
  v3 = type metadata accessor for RemoteIntelligenceFlowErrorMessage.Builder(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = sub_223727408();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  a1(v7);
  sub_22364FCB0(v7, v10 + qword_27D097238);
  v12 = sub_223727518();
  sub_2236C68BC(v7);
  return v12;
}

uint64_t RemoteIntelligenceFlowErrorMessage.init(build:)(void (*a1)(char *))
{
  v3 = type metadata accessor for RemoteIntelligenceFlowErrorMessage.Builder(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223727408();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  a1(v7);
  sub_22364FCB0(v7, v1 + qword_27D097238);
  v9 = sub_223727518();
  sub_2236C68BC(v7);
  return v9;
}

uint64_t sub_2236C68BC(uint64_t a1)
{
  v2 = type metadata accessor for RemoteIntelligenceFlowErrorMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RemoteIntelligenceFlowErrorMessage.__allocating_init(from:)(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return RemoteIntelligenceFlowErrorMessage.init(from:)(a1);
}

uint64_t RemoteIntelligenceFlowErrorMessage.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20[-v6 - 8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F690, &qword_223731A48);
  v8 = *(v19 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v19, v10);
  v12 = &v20[-v11 - 8];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236C6C00();
  sub_22372B7D8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for RemoteIntelligenceFlowErrorMessage(0);
    v16 = *(*v21 + 48);
    v17 = *(*v21 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v8;
    sub_2236C6E50(&qword_27D08F6A0, &qword_27D08ED50);
    v15 = v19;
    sub_22372B648();
    sub_223671888(v7, v21 + qword_27D097238);
    sub_223623934(a1, v20);
    v8 = sub_223727508();
    (*(v14 + 8))(v12, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v8;
}

unint64_t sub_2236C6C00()
{
  result = qword_27D08F698;
  if (!qword_27D08F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F698);
  }

  return result;
}

uint64_t sub_2236C6C74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F6A8, &qword_223731A50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2236C6C00();
  sub_22372B7E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  sub_2236C6E50(&qword_27D08ED68, &unk_28132B610);
  sub_22372B6A8();
  if (!v1)
  {
    sub_223727528();
    v10 = sub_223727538();
    v10(a1);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_2236C6E50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D08E530, &unk_22372CB10);
    sub_2236C6ED8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2236C6ED8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_223727408();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t RemoteIntelligenceFlowErrorMessage.deinit()
{
  v0 = sub_223727548();
  sub_223660FAC(v0 + qword_27D097238);
  return v0;
}

uint64_t RemoteIntelligenceFlowErrorMessage.__deallocating_deinit()
{
  v0 = sub_223727548();
  sub_223660FAC(v0 + qword_27D097238);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

unint64_t sub_2236C7040()
{
  result = qword_27D08F6B0;
  if (!qword_27D08F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F6B0);
  }

  return result;
}

unint64_t sub_2236C7098()
{
  result = qword_27D08F6B8;
  if (!qword_27D08F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F6B8);
  }

  return result;
}

unint64_t sub_2236C70F0()
{
  result = qword_27D08F6C0;
  if (!qword_27D08F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D08F6C0);
  }

  return result;
}

void sub_2236C7144()
{
  sub_22369BEEC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

void sub_2236C7250()
{
  sub_22369BEEC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_2236C72CC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6946505254626372;
    v6 = 0xD000000000000015;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001DLL;
    }

    if (!a1)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    if (a1 != 7)
    {
      v1 = 0xD00000000000001ELL;
    }

    if (a1 == 6)
    {
      v2 = 0xD00000000000001CLL;
    }

    else
    {
      v2 = v1;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v3 = 0xD00000000000001FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2236C7408()
{
  v0 = sub_22372A608();
  __swift_allocate_value_buffer(v0, qword_28132BA28);
  __swift_project_value_buffer(v0, qword_28132BA28);
  return sub_22372A5D8();
}

void sub_2236C746C()
{
  sub_2236E8BBC(319, &qword_28132B4E0, MEMORY[0x277D5D298]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_2236E8BBC(319, &qword_28132B550, MEMORY[0x277D5CEA0]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_2236E8BBC(319, &qword_28132B530, MEMORY[0x277D5CF58]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_2236E8BBC(319, &qword_28132B508, MEMORY[0x277D5D0C0]);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_initClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_2236C76B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_223634890(a3, v25 - v11, &qword_27D08F640, &unk_22372D770);
  v13 = sub_22372B1A8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_223626478(v12, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22372B168();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_22372B058() + 32;
      type metadata accessor for SessionClientBox(0);

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  type metadata accessor for SessionClientBox(0);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2236C7970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_223634890(a3, v25 - v11, &qword_27D08F640, &unk_22372D770);
  v13 = sub_22372B1A8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_223626478(v12, &qword_27D08F640, &unk_22372D770);
  }

  else
  {
    sub_22372B198();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_22372B168();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_22372B058() + 32;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_223626478(a3, &qword_27D08F640, &unk_22372D770);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_223626478(a3, &qword_27D08F640, &unk_22372D770);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2236C7C4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  v4 = a2;
  v5 = a1;
  return a3(&v5, &v4);
}

uint64_t sub_2236C7C88(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v7 == 1)
      {
        sub_223630584(0, &qword_281328D10, 0x277D82BB8);
        return sub_22372B368() & 1;
      }

      return 0;
    }

    if (v4 | v3)
    {
      return v7 == 2 && v6 == 1 && v5 == 0;
    }

    else
    {
      return v7 == 2 && (v5 | v6) == 0;
    }
  }

  else
  {
    if (v7)
    {
      return 0;
    }

    if (v4 == v6 && v3 == v5)
    {
      return 1;
    }

    else
    {
      v12 = *a1;

      return sub_22372B6E8();
    }
  }
}

uint64_t sub_2236C7D74()
{
  v1 = v0;
  v2 = sub_22372A768();
  v4 = v3;
  v5 = qword_28132B848;
  swift_beginAccess();
  v6 = *(v1 + v5);
  if (*(v6 + 16) && (, v7 = sub_2236261A0(v2, v4), v9 = v8, , (v9 & 1) != 0))
  {
    v10 = (*(v6 + 56) + 24 * v7);
    v11 = *v10;
    v12 = v10[2];
    swift_unknownObjectRetain();

    type metadata accessor for RootRequestController(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;

      return v14;
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v24 = sub_22372AC98();
    __swift_project_value_buffer(v24, qword_28132B680);
    v25 = sub_22372AC88();
    v26 = sub_22372B278();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_223620000, v25, v26, "Could not cast root RequestController to RootRequestController", v27, 2u);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  else
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v16 = sub_22372AC98();
    __swift_project_value_buffer(v16, qword_28132B680);

    v17 = sub_22372AC88();
    v18 = sub_22372B278();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      v21 = sub_22372A768();
      v23 = sub_223623274(v21, v22, &v28);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_223620000, v17, v18, "Could not find a RequestController with rootRequestId: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x223DE8A80](v20, -1, -1);
      MEMORY[0x223DE8A80](v19, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_2236C8058(uint64_t a1, uint64_t a2)
{
  v3 = qword_28132B870;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4 >> 62)
  {
    if (v4 < 0)
    {
      v7 = *(a2 + v3);
    }

    sub_22372B558();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_22372A3E8();
  return sub_22372A3F8();
}

id sub_2236C80FC(void *a1)
{
  v40 = a1;
  v38 = sub_22372A9B8();
  v35 = *(v38 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v38, v3);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_223727408();
  v37 = *(v39 - 8);
  v5 = *(v37 + 64);
  MEMORY[0x28223BE20](v39, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v34 - v17;
  v19 = *MEMORY[0x277D5CF40];
  v20 = sub_223729F08();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v18, v19, v20);
  (*(v21 + 56))(v18, 0, 1, v20);
  v22 = qword_28132B888;
  swift_beginAccess();
  v23 = v40;
  sub_2236719F4(v18, v1 + v22, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v24 = v41;
  result = sub_2236DC48C(v23, sub_2236C86B4, 0);
  if (!v24)
  {
    v26 = v35;
    v41 = 0;
    sub_223728058();
    v27 = sub_223729EE8();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
    v28 = qword_28132B858;
    swift_beginAccess();
    sub_2236719F4(v13, v1 + v28, &unk_27D08F6F0, &qword_223732CD0);
    swift_endAccess();
    if (qword_281328E80 != -1)
    {
      swift_once();
    }

    v29 = sub_22372A648();
    __swift_project_value_buffer(v29, qword_28132B6C8);
    sub_223729D98();
    sub_223729D58();
    sub_223729D38();
    v30 = v26;
    v31 = *(v26 + 104);
    v32 = v36;
    v33 = v38;
    v31(v36, *MEMORY[0x277D600B8], v38);
    sub_22372A618();

    (*(v30 + 8))(v32, v33);
    return (*(v37 + 8))(v8, v39);
  }

  return result;
}

uint64_t sub_2236C8580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236C86B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_2237320A0;
}

void sub_2236C8720(uint64_t a1)
{
  v107 = a1;
  v2 = sub_22372A9B8();
  v101 = *(v2 - 8);
  v102 = v2;
  v3 = *(v101 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v99 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_223727408();
  v98 = *(v100 - 8);
  v6 = *(v98 + 64);
  MEMORY[0x28223BE20](v100, v7);
  v106 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RequestInfo.UserInput(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v104 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223729F08();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v105 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v103 = &v95 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v95 - v25;
  v27 = *MEMORY[0x277D5CF40];
  v28 = *(v14 + 104);
  v28(&v95 - v25, *MEMORY[0x277D5CF40], v13);
  (*(v14 + 56))(v26, 0, 1, v13);
  v29 = qword_28132B888;
  swift_beginAccess();
  v30 = v1 + v29;
  v31 = v107;
  sub_2236719F4(v26, v30, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  v32 = v1;
  v33 = v108;
  sub_2236DCCE4(v31, sub_2236C941C, 0);
  if (v33)
  {
    return;
  }

  v95 = v28;
  v96 = v27;
  v108 = v13;
  v34 = v104;
  v97 = 0;
  v35 = v31;
  v36 = sub_223729D38();
  v38 = v37;
  if (v36 == sub_22372A708() && v38 == v39)
  {

    v40 = v35;
    v41 = v34;
    v42 = v108;
  }

  else
  {
    v43 = sub_22372B6E8();

    v40 = v35;
    v41 = v34;
    v42 = v108;
    if ((v43 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v44 = v103;
  sub_223729168();
  v45 = sub_223729EE8();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = qword_28132B858;
  swift_beginAccess();
  sub_2236719F4(v44, v32 + v46, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
  v47 = sub_223729178();
  v48 = *(v32 + qword_28132B878);
  *(v32 + qword_28132B878) = v47;

  *(v32 + qword_28132B8B0) = sub_223729158() & 1;
LABEL_7:
  v49 = v14;
  v50 = v105;
  if (*(v32 + qword_28132A1F8) == 1)
  {
    v51 = sub_223729D38();
    v53 = v52;
    v95(v50, v96, v42);
    sub_223676D90(v51, v53, v50);

    (*(v49 + 8))(v50, v42);
  }

  if (*(v32 + qword_28132B8C0))
  {
    v54 = *(v32 + qword_28132B8C0);
  }

  else
  {
    v55 = type metadata accessor for RequestInfo.UserQuery(0);
    v56 = *(v55 + 28);
    v57 = sub_223728858();
    (*(*(v57 - 8) + 56))(&v41[v56], 1, 1, v57);
    v58 = *(v55 + 32);
    v59 = sub_2237287E8();
    (*(*(v59 - 8) + 56))(&v41[v58], 1, 1, v59);
    *(v41 + 1) = 0u;
    *(v41 + 2) = 0u;
    *v41 = 0u;
    (*(*(v55 - 8) + 56))(v41, 0, 1, v55);
    v54 = sub_22362D128(v41);
    sub_22363B214(v41, type metadata accessor for RequestInfo.UserInput);
  }

  v60 = sub_223729148();
  if (v60)
  {
    v61 = v60;
    v62 = qword_28132B870;
    swift_beginAccess();
    v64 = *(v32 + v62);
    if (v64 >> 62)
    {
      if (v64 < 0)
      {
        v76 = *(v32 + v62);
      }

      v65 = sub_22372B558();
      if (v65 >= 2)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v65 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65 >= 2)
      {
LABEL_15:
        v66 = objc_allocWithZone(sub_22372A408());
        v65 = sub_22372A3D8();
        v67 = v65;
        goto LABEL_25;
      }
    }

    v67 = 0;
LABEL_25:
    MEMORY[0x28223BE20](v65, v63);
    *(&v95 - 2) = v61;
    *(&v95 - 1) = v67;
    v77 = objc_allocWithZone(sub_22372A328());
    v78 = sub_22372A2E8();

    v79 = *(v32 + qword_28132B8A0);
    *(v32 + qword_28132B8A0) = v78;

    MEMORY[0x28223BE20](v80, v81);
    *(&v95 - 4) = v54;
    *(&v95 - 3) = v40;
    *(&v95 - 2) = v32;
    v82 = objc_allocWithZone(sub_2237292E8());
    v83 = sub_223729238();
    if (v83)
    {
      v84 = v83;
      sub_22363B540(v83, 1, v32, MEMORY[0x277D5CC90]);
      v85 = v97;
      sub_2236D3118();
      if (v85)
      {
      }

      else
      {
        v90 = *(v32 + qword_28132B868);
        v91 = *(v32 + qword_28132B868 + 8);

        sub_2236D3640(v90, v91);
        v97 = 0;

        if (qword_281328E80 != -1)
        {
          swift_once();
        }

        v92 = sub_22372A648();
        v108 = __swift_project_value_buffer(v92, qword_28132B6C8);
        v107 = sub_223729D98();
        sub_223729D58();
        sub_223729D38();
        v93 = v101;
        v94 = v99;
        (*(v101 + 104))(v99, *MEMORY[0x277D600B8], v102);
        sub_22372A618();

        (*(v93 + 8))(v94, v102);
        (*(v98 + 8))(v106, v100);
      }
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v86 = sub_22372AC98();
      __swift_project_value_buffer(v86, qword_28132B680);
      v87 = sub_22372AC88();
      v88 = sub_22372B278();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_223620000, v87, v88, "Could not construct StartChildSpeechRequestMessage. Missing fields?", v89, 2u);
        MEMORY[0x223DE8A80](v89, -1, -1);
      }
    }

    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v68 = sub_22372AC98();
  __swift_project_value_buffer(v68, qword_28132B680);
  v69 = v40;
  v70 = sub_22372AC88();
  v71 = sub_22372B278();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138412290;
    *(v72 + 4) = v69;
    *v73 = v69;
    v74 = v69;
    _os_log_impl(&dword_223620000, v70, v71, "Message %@ didn't contain requestContextData", v72, 0xCu);
    sub_223626478(v73, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v73, -1, -1);
    MEMORY[0x223DE8A80](v72, -1, -1);
  }

  sub_2236EA17C();
  swift_allocError();
  *v75 = xmmword_22372CE90;
  *(v75 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_2236C92E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236C941C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732080;
}

uint64_t sub_2236C9488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v33 - v19;
  v21 = *(a2 + 16);
  v22 = *(a2 + 24);

  sub_2237292C8();
  sub_223729D38();
  sub_223729248();
  v23 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId;
  v24 = sub_223727408();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v20, a2 + v23, v24);
  v26 = *(v25 + 56);
  v26(v20, 0, 1, v24);
  sub_223729298();
  sub_223729D58();
  v26(v20, 0, 1, v24);
  sub_2237292D8();
  sub_223729D98();
  sub_223729268();
  sub_223729168();
  v27 = sub_223729EE8();
  (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
  sub_223729278();
  sub_223729178();
  sub_2237292B8();
  v28 = *(a4 + qword_28132B8A0);
  sub_223729288();
  sub_223729158();
  sub_223729258();
  v29 = *MEMORY[0x277D5CDE8];
  v30 = sub_223729DE8();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v10, v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  return sub_2237292A8();
}

void sub_2236C97DC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RequestInfo.UserInput(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v78 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v77 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F700, &qword_223731D88);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v76 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8, v19);
  v21 = &v76 - v20;
  v22 = *MEMORY[0x277D5CF28];
  v23 = sub_223729F08();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v21, v22, v23);
  v25 = v23;
  v26 = a1;
  (*(v24 + 56))(v21, 0, 1, v25);
  v27 = qword_28132B888;
  swift_beginAccess();
  sub_2236719F4(v21, v1 + v27, &qword_27D08E9D0, &qword_22372D1E0);
  swift_endAccess();
  sub_223728DC8();
  v28 = sub_22372A218();
  (*(*(v28 - 8) + 56))(v16, 0, 1, v28);
  v29 = qword_28132B898;
  swift_beginAccess();
  sub_2236719F4(v16, v2 + v29, &unk_27D08F700, &qword_223731D88);
  swift_endAccess();
  *(v2 + qword_28132B890) = 0;
  v30 = v79;
  sub_2236DD110(a1, sub_2236CA1F8, 0);
  if (v30)
  {
    return;
  }

  v31 = v77;
  v32 = v78;
  v33 = sub_223729D38();
  v35 = v34;
  if (v33 == sub_22372A708() && v35 == v36)
  {

    v37 = v31;
  }

  else
  {
    v38 = sub_22372B6E8();

    v37 = v31;
    if ((v38 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  sub_223728DE8();
  v39 = sub_223729EE8();
  (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
  v40 = qword_28132B858;
  swift_beginAccess();
  sub_2236719F4(v37, v2 + v40, &unk_27D08F6F0, &qword_223732CD0);
  swift_endAccess();
LABEL_7:
  v41 = type metadata accessor for RequestInfo.UserQuery(0);
  v42 = *(v41 + 28);
  v43 = sub_223728858();
  (*(*(v43 - 8) + 56))(&v32[v42], 1, 1, v43);
  v44 = *(v41 + 32);
  v45 = sub_2237287E8();
  (*(*(v45 - 8) + 56))(&v32[v44], 1, 1, v45);
  *(v32 + 1) = 0u;
  *(v32 + 2) = 0u;
  *v32 = 0u;
  (*(*(v41 - 8) + 56))(v32, 0, 1, v41);
  v46 = sub_22362D128(v32);
  sub_22363B214(v32, type metadata accessor for RequestInfo.UserInput);
  v47 = sub_223728DD8();
  if (v47)
  {
    v48 = v47;
    v49 = qword_28132B870;
    swift_beginAccess();
    v51 = *(v2 + v49);
    if (v51 >> 62)
    {
      if (v51 < 0)
      {
        v63 = *(v2 + v49);
      }

      v52 = sub_22372B558();
      if (v52 >= 2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52 >= 2)
      {
LABEL_10:
        v53 = objc_allocWithZone(sub_22372A408());
        v52 = sub_22372A3D8();
        v54 = v52;
        goto LABEL_20;
      }
    }

    v54 = 0;
LABEL_20:
    MEMORY[0x28223BE20](v52, v50);
    *(&v76 - 2) = v48;
    *(&v76 - 1) = v54;
    v64 = objc_allocWithZone(sub_22372A328());
    v65 = sub_22372A2E8();

    v66 = *(v2 + qword_28132B8A0);
    *(v2 + qword_28132B8A0) = v65;

    MEMORY[0x28223BE20](v67, v68);
    *(&v76 - 4) = v46;
    *(&v76 - 3) = v26;
    *(&v76 - 2) = v2;
    v69 = objc_allocWithZone(sub_223728F88());
    v70 = sub_223728ED8();
    if (v70)
    {
      v71 = v70;
      sub_22363B540(v70, 1, v2, MEMORY[0x277D5CC60]);
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v72 = sub_22372AC98();
      __swift_project_value_buffer(v72, qword_28132B680);
      v73 = sub_22372AC88();
      v74 = sub_22372B278();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&dword_223620000, v73, v74, "Could not construct StartChildTextRequestMessage. Missing fields?", v75, 2u);
        MEMORY[0x223DE8A80](v75, -1, -1);
      }
    }

    return;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v55 = sub_22372AC98();
  __swift_project_value_buffer(v55, qword_28132B680);
  v56 = v26;
  v57 = sub_22372AC88();
  v58 = sub_22372B278();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v59 = 138412290;
    *(v59 + 4) = v56;
    *v60 = v56;
    v61 = v56;
    _os_log_impl(&dword_223620000, v57, v58, "Message %@ didn't contain requestContextData", v59, 0xCu);
    sub_223626478(v60, &unk_27D08F250, &unk_22372D1D0);
    MEMORY[0x223DE8A80](v60, -1, -1);
    MEMORY[0x223DE8A80](v59, -1, -1);
  }

  sub_2236EA17C();
  swift_allocError();
  *v62 = xmmword_22372CE90;
  *(v62 + 16) = 2;
  swift_willThrow();
}

uint64_t sub_2236CA0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CA1F8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732060;
}

uint64_t sub_2236CA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F6F0, &qword_223732CD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F700, &qword_223731D88);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v24 = &v38 - v23;
  v25 = *(a2 + 16);
  v26 = *(a2 + 24);

  sub_223728F68();
  sub_223729D38();
  sub_223728EE8();
  v27 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId;
  v28 = sub_223727408();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v24, a2 + v27, v28);
  v30 = *(v29 + 56);
  v30(v24, 0, 1, v28);
  sub_223728F48();
  sub_223728DC8();
  v31 = sub_22372A218();
  (*(*(v31 - 8) + 56))(v19, 0, 1, v31);
  sub_223728EF8();
  sub_223729D58();
  v30(v24, 0, 1, v28);
  sub_223728F78();
  sub_223729D98();
  sub_223728F08();
  sub_223728DE8();
  v32 = sub_223729EE8();
  (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
  sub_223728F18();
  v33 = *(v39 + qword_28132B8A0);
  sub_223728F38();
  v34 = *MEMORY[0x277D5CDE8];
  v35 = sub_223729DE8();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v9, v34, v35);
  (*(v36 + 56))(v9, 0, 1, v35);
  return sub_223728F58();
}

uint64_t sub_2236CA640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_2236CA774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

uint64_t sub_2236CA8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

id sub_2236CA9DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (&v42 - v7);
  v9 = sub_223728CF8();
  v11 = v10;
  *v8 = sub_223729A08();
  v8[1] = v12;
  v13 = *MEMORY[0x277D5CD90];
  v14 = sub_223729D78();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v8, v13, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  swift_beginAccess();
  sub_2237141EC(v8, v9, v11);
  swift_endAccess();
  v16 = sub_223728CF8();
  v17 = v16;
  v19 = v18;
  v20 = *(v2 + qword_28132B8C0);
  if (!v20)
  {
    goto LABEL_8;
  }

  v43 = v16;
  v21 = qword_281328E58;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = sub_22372AC98();
  __swift_project_value_buffer(v22, qword_28132B680);
  v23 = sub_22372AC88();
  v24 = sub_22372B268();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_223620000, v23, v24, "Forwarding TRPCandidateForPlannerMessage to other bridges for eager processing as TRPCandidateRequestMessage", v25, 2u);
    MEMORY[0x223DE8A80](v25, -1, -1);
  }

  MEMORY[0x28223BE20](v26, v27);
  *(&v42 - 6) = v2;
  *(&v42 - 5) = v20;
  v28 = v43;
  *(&v42 - 4) = a1;
  *(&v42 - 3) = v28;
  *(&v42 - 2) = v19;
  v29 = objc_allocWithZone(sub_223729078());
  v30 = sub_223728FC8();
  if (v30)
  {
    v31 = v30;
    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v44, v44[3]);
    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v17 = v43;
LABEL_8:
    v32 = sub_223728CF8();
    v34 = v33;
    v35 = qword_28132B840;
    swift_beginAccess();
    v36 = *(v2 + v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *(v2 + v35);
    *(v2 + v35) = 0x8000000000000000;
    sub_22368E320(v17, v19, v32, v34, isUniquelyReferenced_nonNull_native);

    *(v2 + v35) = v45;
    swift_endAccess();
    return sub_2236DF69C(a1, sub_2236CB214, 0);
  }

  v39 = sub_22372AC88();
  v40 = sub_22372B278();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_223620000, v39, v40, "Failed to build TRPCandidateRequestMessage from TRPCandidateForPlannerMessage. Missing Fields?", v41, 2u);
    MEMORY[0x223DE8A80](v41, -1, -1);
  }
}

uint64_t sub_2236CAE08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v27 - v17;
  sub_22372A728();
  sub_223728FE8();
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);

  sub_223729048();
  sub_22372A778();
  v21 = sub_223727408();
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  sub_223729058();
  v22 = *MEMORY[0x277D5CDE8];
  v23 = sub_223729DE8();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v13, v22, v23);
  (*(v24 + 56))(v13, 0, 1, v23);
  sub_223729028();
  sub_223728CF8();
  sub_223728FF8();
  sub_223728D08();
  v25 = sub_22372A548();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  sub_223729038();
  sub_223729A08();
  sub_223729068();

  return sub_223729018();
}

uint64_t sub_2236CB0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 192);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CB214(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732020;
}

void sub_2236CB280(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = (v38 - v7);
  v9 = sub_223728CF8();
  v11 = v10;
  v12 = sub_223729198();
  v13 = qword_28132B838;
  swift_beginAccess();
  v14 = *(v1 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *(v1 + v13);
  *(v1 + v13) = 0x8000000000000000;
  sub_22368E158(v12, v9, v11, isUniquelyReferenced_nonNull_native);

  *(v1 + v13) = v41;
  swift_endAccess();
  v16 = sub_223729198();
  if (*(v16 + 16))
  {
    sub_223634890(v16 + 32, &v39, &qword_27D08F7B0, &qword_22372DD30);

    v17 = v39;
    v18 = [v39 speechPackage];

    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    if (v18)
    {
      v19 = sub_223728CF8();
      v21 = v20;
      *v8 = v18;
      v22 = *MEMORY[0x277D5CD98];
      v23 = sub_223729D78();
      v24 = *(v23 - 8);
      (*(v24 + 104))(v8, v22, v23);
      (*(v24 + 56))(v8, 0, 1, v23);
      swift_beginAccess();
      v25 = v18;
      sub_2237141EC(v8, v19, v21);
      swift_endAccess();

      goto LABEL_10;
    }
  }

  else
  {
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v26 = sub_22372AC98();
  __swift_project_value_buffer(v26, qword_28132B680);
  v27 = a1;
  v28 = sub_22372AC88();
  v29 = sub_22372B278();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v39 = v31;
    *v30 = 136315138;
    v32 = sub_223728CF8();
    v34 = sub_223623274(v32, v33, &v39);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_223620000, v28, v29, "Could not find speechPackage for trpId = %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x223DE8A80](v31, -1, -1);
    MEMORY[0x223DE8A80](v30, -1, -1);
  }

LABEL_10:
  v35 = v38[1];
  sub_2236DEE44(a1, sub_2236CB784, 0);
  if (!v35)
  {
    v36 = *(v2 + qword_28132B828);
    *(v2 + qword_28132B828) = a1;
    v37 = a1;

    sub_2236D3118();
  }
}

uint64_t sub_2236CB650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 80);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CB784(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223732000;
}

uint64_t sub_2236CB7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v25 - v16;

  sub_2237284F8();
  sub_22372A728();
  sub_2237284B8();
  sub_22372A778();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  sub_223728508();
  v19 = *MEMORY[0x277D5CDE8];
  v20 = sub_223729DE8();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v12, v19, v20);
  (*(v21 + 56))(v12, 0, 1, v20);
  sub_2237284D8();
  v22 = a5;
  sub_2237284E8();
  v23 = a6;
  return sub_2237284C8();
}

uint64_t sub_2236CB9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

id sub_2236CBB30(char *a1)
{
  v2 = v1;
  v4 = sub_223729F08();
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v72 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v8 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74, v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v73 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v18 = *&v1[qword_28132B8C0];
  v75 = &v70 - v19;
  if (v18)
  {
    v21 = *(v18 + 16);
    v20 = *(v18 + 24);

    if (v21 == sub_223729D38() && v20 == v22)
    {
    }

    else
    {
      v24 = sub_22372B6E8();

      if ((v24 & 1) == 0)
      {

        goto LABEL_15;
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v70 = v11;
    v71 = v4;
    v77 = a1;
    v25 = sub_22372AC98();
    __swift_project_value_buffer(v25, qword_28132B680);
    v26 = sub_22372AC88();
    v27 = sub_22372B268();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_223620000, v26, v27, "Posting NLTRPCandidateMessage at root level", v28, 2u);
      MEMORY[0x223DE8A80](v28, -1, -1);
    }

    sub_22372A758();
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v29 = sub_22372A768();
    v31 = MEMORY[0x28223BE20](v29, v30);
    *(&v70 - 4) = v77;
    *(&v70 - 3) = v31;
    *(&v70 - 2) = v32;
    v33 = objc_allocWithZone(sub_223728388());
    v34 = sub_2237282E8();

    if (!v34)
    {
      type metadata accessor for RequestControllerBridgeInternalErrors(0);
      sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
      swift_allocError();
      *v49 = 0xD000000000000015;
      v49[1] = 0x8000000223737600;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return __swift_destroy_boxed_opaque_existential_1Tm(v78);
    }

    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    a1 = v77;
    v11 = v70;
    v4 = v71;
  }

LABEL_15:
  v35 = *&v2[qword_28132B8B8];
  if (!v35)
  {
    return sub_2236DD968(a1, sub_2236CC818, 0);
  }

  v37 = *(v35 + 16);
  v36 = *(v35 + 24);
  v38 = *&v2[qword_28132B8B8];

  if (v37 == sub_223729D38() && v36 == v39)
  {
  }

  else
  {
    v41 = sub_22372B6E8();

    if ((v41 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v71 = v35;
  v77 = a1;
  v42 = v11;
  v43 = qword_28132B888;
  swift_beginAccess();
  v45 = v75;
  v44 = v76;
  (*(v76 + 104))(v75, *MEMORY[0x277D5CF40], v4);
  (*(v44 + 56))(v45, 0, 1, v4);
  v46 = *(v74 + 48);
  sub_223634890(&v2[v43], v42, &qword_27D08E9D0, &qword_22372D1E0);
  sub_223634890(v45, v42 + v46, &qword_27D08E9D0, &qword_22372D1E0);
  v47 = *(v44 + 48);
  if (v47(v42, 1, v4) != 1)
  {
    v48 = v73;
    sub_223634890(v42, v73, &qword_27D08E9D0, &qword_22372D1E0);
    if (v47(v42 + v46, 1, v4) != 1)
    {
      v51 = v76;
      v52 = v72;
      (*(v76 + 32))(v72, v42 + v46, v4);
      sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58]);
      v53 = sub_22372AFC8();
      v54 = *(v51 + 8);
      v54(v52, v4);
      sub_223626478(v75, &qword_27D08E9D0, &qword_22372D1E0);
      v54(v48, v4);
      sub_223626478(v42, &qword_27D08E9D0, &qword_22372D1E0);
      a1 = v77;
      if ((v53 & 1) == 0)
      {
LABEL_39:

        return sub_2236DD968(a1, sub_2236CC818, 0);
      }

      goto LABEL_32;
    }

    sub_223626478(v75, &qword_27D08E9D0, &qword_22372D1E0);
    (*(v76 + 8))(v48, v4);
LABEL_30:
    a1 = v77;
    sub_223626478(v42, &qword_27D08F740, &unk_223731DC0);
    return sub_2236DD968(a1, sub_2236CC818, 0);
  }

  sub_223626478(v45, &qword_27D08E9D0, &qword_22372D1E0);
  if (v47(v42 + v46, 1, v4) != 1)
  {

    goto LABEL_30;
  }

  sub_223626478(v42, &qword_27D08E9D0, &qword_22372D1E0);
  a1 = v77;
LABEL_32:
  v55 = *&v2[qword_28132B860];
  if (v55)
  {
    v56 = qword_281328E58;
    v57 = v55;
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_22372AC98();
    __swift_project_value_buffer(v58, qword_28132B680);
    v59 = sub_22372AC88();
    v60 = sub_22372B268();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_223620000, v59, v60, "Posting TTResponseMessage for fallback child request", v61, 2u);
      MEMORY[0x223DE8A80](v61, -1, -1);
    }

    sub_22372A758();
    v77 = v2;
    __swift_project_boxed_opaque_existential_1(v78, v79);
    sub_223729D38();
    v62 = v80;
    v63 = sub_2236CC538();
    v80 = v62;
    if (v62)
    {

      return __swift_destroy_boxed_opaque_existential_1Tm(v78);
    }

    v68 = a1;
    v69 = v63;

    sub_223729D88();

    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    a1 = v68;
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v64 = sub_22372AC98();
    __swift_project_value_buffer(v64, qword_28132B680);
    v65 = sub_22372AC88();
    v66 = sub_22372B278();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_223620000, v65, v66, "Could not find a root TTResponseMessage for this speech request, this is an error.", v67, 2u);
      MEMORY[0x223DE8A80](v67, -1, -1);
    }
  }

  return sub_2236DD968(a1, sub_2236CC818, 0);
}

uint64_t sub_2236CC538()
{
  v0 = objc_allocWithZone(sub_223728028());
  result = sub_223727F78();
  if (!result)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v2 = sub_22372AC98();
    __swift_project_value_buffer(v2, qword_28132B680);
    v3 = sub_22372AC88();
    v4 = sub_22372B278();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_223620000, v3, v4, "Could not construct TTResponseMessage", v5, 2u);
      MEMORY[0x223DE8A80](v5, -1, -1);
    }

    type metadata accessor for RequestControllerBridgeInternalErrors(0);
    sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
    swift_allocError();
    *v6 = 0xD000000000000011;
    v6[1] = 0x8000000223737440;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2236CC6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CC818(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731FD8;
}

id sub_2236CC884(void *a1)
{
  v2 = sub_223729D38();
  v4 = v3;
  if (v2 == sub_22372A708() && v4 == v5)
  {

    v6 = sub_2236CCDCC;
  }

  else
  {
    v7 = sub_22372B6E8();

    if (v7)
    {
      v6 = sub_2236CCDCC;
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v8 = sub_22372AC98();
      __swift_project_value_buffer(v8, qword_28132B680);
      v9 = sub_22372AC88();
      v10 = sub_22372B268();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_223620000, v9, v10, "Replaying ExecutionFinalizedMessage at root level", v11, 2u);
        MEMORY[0x223DE8A80](v11, -1, -1);
      }

      v12 = sub_22372A768();
      MEMORY[0x28223BE20](v12, v13);
      v14 = objc_allocWithZone(sub_223728B38());
      v15 = sub_223728A98();

      if (v15)
      {
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v27, v27[3]);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v27);
      }

      else
      {
        type metadata accessor for RequestControllerBridgeInternalErrors(0);
        sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
        v16 = swift_allocError();
        *v17 = 0xD000000000000019;
        v17[1] = 0x8000000223735150;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v18 = v16;
        v19 = sub_22372AC88();
        v20 = sub_22372B278();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27[0] = v26;
          *v21 = 136315138;
          swift_getErrorValue();
          v22 = sub_22372B738();
          v24 = sub_223623274(v22, v23, v27);

          *(v21 + 4) = v24;
          _os_log_impl(&dword_223620000, v19, v20, "Error while constructing root level ExecutionFinalizedMessage: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v26);
          MEMORY[0x223DE8A80](v26, -1, -1);
          MEMORY[0x223DE8A80](v21, -1, -1);
        }

        else
        {
        }
      }

      v6 = sub_2236CCE38;
    }
  }

  return sub_2236DE1C0(a1, v6, 0);
}

uint64_t sub_2236CCC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 96);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CCDCC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F98;
}

void *sub_2236CCE38(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731FB8;
}

uint64_t sub_2236CCEA4(void *a1)
{
  v3 = qword_28132A208;
  v4 = *(*(v1 + qword_28132A208) + 72);
  if (!v4)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v18 = sub_22372AC98();
    __swift_project_value_buffer(v18, qword_28132B680);
    v19 = sub_22372AC88();
    v20 = sub_22372B278();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v66[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, v66);
      _os_log_impl(&dword_223620000, v19, v20, "%s Reason: latestVoiceIdScoreCard is nil", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x223DE8A80](v22, -1, -1);
      MEMORY[0x223DE8A80](v21, -1, -1);
    }

    goto LABEL_24;
  }

  v6 = v4;
  if ([v6 hasSufficientAudioProcessed] != 2)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v23 = sub_22372AC98();
    __swift_project_value_buffer(v23, qword_28132B680);
    v24 = sub_22372AC88();
    v25 = sub_22372B278();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v66[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, v66);
      _os_log_impl(&dword_223620000, v24, v25, "%s Reason: haven't received scorecard with sufficient audio processed", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v26, -1, -1);
    }

    goto LABEL_17;
  }

  v7 = *(v1 + v3);

  v8 = sub_223729BF8();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v7 + 64);
  if (!*(v11 + 16) || (, v12 = sub_2236261A0(v8, v10), v14 = v13, , (v14 & 1) == 0))
  {

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v28 = sub_22372AC98();
    __swift_project_value_buffer(v28, qword_28132B680);
    v29 = a1;
    v30 = sub_22372AC88();
    v31 = sub_22372B278();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v67 = v33;
      *v32 = 136315394;
      *(v32 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v67);
      *(v32 + 12) = 2080;
      v34 = sub_223729BF8();
      v36 = sub_223623274(v34, v35, &v67);

      *(v32 + 14) = v36;
      _os_log_impl(&dword_223620000, v30, v31, "%s Reason: Couldn't retrieve the selectedCandidateContext for topLevelCandidateId %s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v33, -1, -1);
      MEMORY[0x223DE8A80](v32, -1, -1);
    }

    goto LABEL_23;
  }

  v15 = *(*(v11 + 56) + 8 * v12);

  if (!*(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_nlUserParses))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v38 = sub_22372AC98();
    __swift_project_value_buffer(v38, qword_28132B680);

    v39 = sub_22372AC88();
    v40 = sub_22372B278();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v67 = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v67);
      *(v41 + 12) = 2080;
      v43 = *(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
      v44 = *(v15 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);

      v45 = sub_223623274(v43, v44, &v67);

      *(v41 + 14) = v45;
      _os_log_impl(&dword_223620000, v39, v40, "%s nlUserParses not available for candidateId: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v42, -1, -1);
      MEMORY[0x223DE8A80](v41, -1, -1);
    }

    goto LABEL_24;
  }

  v16 = sub_223679638(v15);
  if (v2)
  {

    return v17 & 1;
  }

  if (!v16)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v48 = sub_22372AC98();
    __swift_project_value_buffer(v48, qword_28132B680);
    v24 = sub_22372AC88();
    v49 = sub_22372B278();
    if (os_log_type_enabled(v24, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v67 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v67);
      _os_log_impl(&dword_223620000, v24, v49, "%s Reason: postNLSelectedContext is nil", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x223DE8A80](v51, -1, -1);
      MEMORY[0x223DE8A80](v50, -1, -1);
    }

LABEL_17:

LABEL_23:
LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  v46 = OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState;
  v47 = v16;
  if (*(v16 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_candidateState) == 2)
  {

LABEL_41:
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v53 = sub_22372AC98();
    __swift_project_value_buffer(v53, qword_28132B680);
    v54 = sub_22372AC88();
    v55 = sub_22372B268();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_223620000, v54, v55, "MUX: Will process stoppedListeningForSpeechContinuationForPlannerMessage. Passed all checks", v56, 2u);
      MEMORY[0x223DE8A80](v56, -1, -1);
    }

    v17 = 1;
    return v17 & 1;
  }

  v52 = sub_22372B6E8();

  if (v52)
  {
    goto LABEL_41;
  }

  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v57 = sub_22372AC98();
  __swift_project_value_buffer(v57, qword_28132B680);

  v58 = sub_22372AC88();
  v59 = sub_22372B278();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v67 = v61;
    *v60 = 136315394;
    *(v60 + 4) = sub_223623274(0xD000000000000050, 0x8000000223737570, &v67);
    *(v60 + 12) = 2080;
    v65 = *(v47 + v46);
    v62 = sub_22372B038();
    v64 = sub_223623274(v62, v63, &v67);

    *(v60 + 14) = v64;
    _os_log_impl(&dword_223620000, v58, v59, "%s Reason: Selected User has changed. NL has been retriggered. Candidate State = %s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE8A80](v61, -1, -1);
    MEMORY[0x223DE8A80](v60, -1, -1);
  }

  else
  {
  }

  v17 = 0;
  return v17 & 1;
}

void sub_2236CD958(void *a1)
{
  v2 = v1;
  v4 = sub_22372A9B8();
  v102 = *(v4 - 8);
  v5 = *(v102 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v100 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_223727408();
  v8 = *(v101 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v101, v10);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = qword_28132A208;
  if (*(*(v1 + qword_28132A208) + 96))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v13 = sub_22372AC98();
    __swift_project_value_buffer(v13, qword_28132B680);
    v14 = sub_22372AC88();
    v15 = sub_22372B268();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_223620000, v14, v15, "MUX: Processing cached StoppedListeningForSpeechContinuationForPlanner", v16, 2u);
      MEMORY[0x223DE8A80](v16, -1, -1);
    }
  }

  else
  {
    v99 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v17 = sub_22372AC98();
    __swift_project_value_buffer(v17, qword_28132B680);
    v18 = a1;
    v19 = sub_22372AC88();
    v20 = sub_22372B268();

    v21 = os_log_type_enabled(v19, v20);
    v98 = a1;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v23 = v8;
      v24 = v4;
      v25 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v18;
      *v25 = v18;
      v26 = v18;
      _os_log_impl(&dword_223620000, v19, v20, "Received StoppedListeningForSpeechContinuationForPlannerMessage %@", v22, 0xCu);
      sub_223626478(v25, &unk_27D08F250, &unk_22372D1D0);
      v27 = v25;
      v4 = v24;
      v8 = v23;
      a1 = v98;
      MEMORY[0x223DE8A80](v27, -1, -1);
      MEMORY[0x223DE8A80](v22, -1, -1);
    }

    v28 = v18;
    v29 = sub_22372AC88();
    v30 = sub_22372B288();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = v8;
      v33 = v4;
      v34 = swift_slowAlloc();
      v105 = v34;
      *v31 = 136446210;
      v35 = sub_223729BF8();
      v37 = sub_223623274(v35, v36, &v105);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_223620000, v29, v30, "Received StoppedListeningForSpeechContinuationForPlannerMessage for lastTRPId: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      v38 = v34;
      v4 = v33;
      v8 = v32;
      a1 = v98;
      MEMORY[0x223DE8A80](v38, -1, -1);
      MEMORY[0x223DE8A80](v31, -1, -1);
    }

    v12 = v99;
  }

  v39 = sub_223729BF8();
  v40 = (v2 + qword_28132B868);
  v41 = *(v2 + qword_28132B868 + 8);
  *v40 = v39;
  v40[1] = v42;

  if (*(v2 + qword_28132A1F8) != 1)
  {
    v69 = a1;
LABEL_22:
    v70 = v104;
    sub_2236DBC34(v69, sub_2236CE548, 0);
    v104 = v70;
    if (v70)
    {
    }

    else
    {
      v103 = v8;
      if (qword_281328E80 != -1)
      {
        swift_once();
      }

      v71 = sub_22372A648();
      v99 = __swift_project_value_buffer(v71, qword_28132B6C8);
      sub_223729D98();
      sub_223729D58();
      sub_223729D38();
      v72 = v102;
      v73 = v100;
      (*(v102 + 104))(v100, *MEMORY[0x277D600B0], v4);
      sub_22372A618();

      (*(v72 + 8))(v73, v4);
      (*(v103 + 8))(v12, v101);
    }

    return;
  }

  v43 = v104;
  v44 = sub_2236CCEA4(a1);
  v104 = v43;
  if (v43)
  {
    return;
  }

  v45 = *(v2 + v103);
  if (v44)
  {
    v99 = v12;

    v46 = sub_223729BF8();
    v48 = v47;
    swift_beginAccess();
    v49 = *(v45 + 64);
    if (*(v49 + 16))
    {
      v97 = v4;

      v50 = sub_2236261A0(v46, v48);
      v52 = v51;

      if (v52)
      {
        v53 = *(*(v49 + 56) + 8 * v50);

        v54 = v103;
        v55 = *(v2 + v103);
        v56 = *(v55 + 96);
        *(v55 + 96) = 0;

        v57 = *(v2 + v54);

        v58 = sub_223729BF8();
        v59 = *(v57 + 40);
        *(v57 + 32) = v58;
        *(v57 + 40) = v60;

        v61 = (v53 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v62 = *(v53 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId + 8);
        v63 = v40[1];
        *v40 = *(v53 + OBJC_IVAR____TtC24RequestDispatcherBridges19MUXCandidateContext_userLevelCandidateId);
        v40[1] = v62;

        v65 = *v61;
        v66 = v61[1];
        MEMORY[0x28223BE20](v64, v67);
        *(&v96 - 4) = a1;
        *(&v96 - 3) = v68;
        *(&v96 - 2) = v66;
        objc_allocWithZone(sub_223729C08());

        v69 = sub_223729B88();

        if (!v69)
        {
          type metadata accessor for RequestControllerBridgeInternalErrors(0);
          sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
          v94 = swift_allocError();
          *v95 = 0xD000000000000036;
          v95[1] = 0x80000002237374F0;
          swift_storeEnumTagMultiPayload();
          v104 = v94;
          swift_willThrow();

          return;
        }

        v4 = v97;
        v12 = v99;
        goto LABEL_22;
      }
    }

    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v85 = sub_22372AC98();
    __swift_project_value_buffer(v85, qword_28132B680);
    v86 = a1;
    v87 = sub_22372AC88();
    v88 = sub_22372B278();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v106 = v90;
      *v89 = 136315138;
      v91 = sub_223729BF8();
      v93 = sub_223623274(v91, v92, &v106);

      *(v89 + 4) = v93;
      _os_log_impl(&dword_223620000, v87, v88, "MUX: Get endpoint signal but could not retrieve the selectedCandidateContext for topLevelCandidateId %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      MEMORY[0x223DE8A80](v90, -1, -1);
      MEMORY[0x223DE8A80](v89, -1, -1);
    }
  }

  else if (*(v45 + 96))
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v74 = sub_22372AC98();
    __swift_project_value_buffer(v74, qword_28132B680);
    v75 = sub_22372AC88();
    v76 = sub_22372B268();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_223620000, v75, v76, "MUX: StoppedListeningForSpeechContinuationForPlannerMessage is already cached.", v77, 2u);
      MEMORY[0x223DE8A80](v77, -1, -1);
    }
  }

  else
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v78 = sub_22372AC98();
    __swift_project_value_buffer(v78, qword_28132B680);
    v79 = sub_22372AC88();
    v80 = sub_22372B268();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_223620000, v79, v80, "MUX: Caching StoppedListeningForSpeechContinuationForPlannerMessage.", v81, 2u);
      MEMORY[0x223DE8A80](v81, -1, -1);
    }

    v82 = *(v2 + v103);
    v83 = *(v82 + 96);
    *(v82 + 96) = a1;
    v84 = a1;
  }
}

uint64_t sub_2236CE414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CE548(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F88;
}

uint64_t sub_2236CE5B4(void *a1)
{
  v2 = v1;
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v4 = sub_22372AC98();
  __swift_project_value_buffer(v4, qword_28132B680);
  v5 = a1;
  v6 = sub_22372AC88();
  v7 = sub_22372B288();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = sub_223729AC8();
    v12 = sub_223623274(v10, v11, &v22);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_223620000, v6, v7, "Received StoppedListeningForTextContinuationForPlannerMessage for lastTRPId: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x223DE8A80](v9, -1, -1);
    MEMORY[0x223DE8A80](v8, -1, -1);
  }

  v13 = sub_223729AC8();
  v14 = (v2 + qword_28132B868);
  v15 = *(v2 + qword_28132B868 + 8);
  *v14 = v13;
  v14[1] = v16;

  if (*(v2 + qword_28132A1F8) == 1)
  {
    v18 = *(v2 + qword_28132A208);

    v19 = sub_223729AC8();
    v20 = *(v18 + 40);
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
  }

  return result;
}

id sub_2236CE788(void *a1)
{
  v2 = v1;
  v4 = sub_22372A9B8();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223727408();
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v14 = sub_22372AC98();
  __swift_project_value_buffer(v14, qword_28132B680);
  v15 = a1;
  v16 = sub_22372AC88();
  v17 = sub_22372B288();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v29 = v8;
    v30 = v13;
    v20 = v19;
    v35 = v19;
    *v18 = 136446210;
    v21 = sub_223729B58();
    v23 = sub_223623274(v21, v22, &v35);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_223620000, v16, v17, "Received StoppedListeningForSpeechContinuationMessage for lastTRPId: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v24 = v20;
    v2 = v1;
    v8 = v29;
    v13 = v30;
    MEMORY[0x223DE8A80](v24, -1, -1);
    MEMORY[0x223DE8A80](v18, -1, -1);
  }

  result = sub_2236DDD94(v15, sub_2236CEC6C, 0);
  if (!v2)
  {
    v30 = 0;
    if (qword_281328E80 != -1)
    {
      swift_once();
    }

    v26 = sub_22372A648();
    __swift_project_value_buffer(v26, qword_28132B6C8);
    sub_223729D98();
    sub_223729D58();
    sub_223729D38();
    v28 = v33;
    v27 = v34;
    (*(v33 + 104))(v8, *MEMORY[0x277D600B0], v34);
    sub_22372A618();

    (*(v28 + 8))(v8, v27);
    return (*(v31 + 8))(v13, v32);
  }

  return result;
}

uint64_t sub_2236CEB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 112);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CEC6C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F68;
}

id sub_2236CECD8(void *a1)
{
  v86 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E980, &qword_22372D178);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v80 = &v79 - v6;
  v7 = sub_223729F08();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v12 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85, v13);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v83 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v79 - v22;
  if (qword_281328E58 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v24 = sub_22372AC98();
    v84 = __swift_project_value_buffer(v24, qword_28132B680);
    v25 = sub_22372AC88();
    v26 = sub_22372B268();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v88[0] = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_223623274(0xD00000000000001BLL, 0x8000000223737420, v88);
      _os_log_impl(&dword_223620000, v25, v26, "%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x223DE8A80](v28, -1, -1);
      MEMORY[0x223DE8A80](v27, -1, -1);
    }

    v29 = sub_223729D38();
    v31 = v30;
    if (v29 == sub_22372A708() && v31 == v32)
    {
    }

    else
    {
      v33 = sub_22372B6E8();

      if ((v33 & 1) == 0)
      {
        return sub_2236DF270(v86, sub_2236CF8CC, 0);
      }
    }

    v34 = qword_28132B888;
    swift_beginAccess();
    (*(v8 + 104))(v23, *MEMORY[0x277D5CF40], v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    v35 = v2;
    v36 = *(v85 + 48);
    v85 = v35;
    sub_223634890(v35 + v34, v15, &qword_27D08E9D0, &qword_22372D1E0);
    sub_223634890(v23, &v15[v36], &qword_27D08E9D0, &qword_22372D1E0);
    v37 = *(v8 + 48);
    if (v37(v15, 1, v7) == 1)
    {
      sub_223626478(v23, &qword_27D08E9D0, &qword_22372D1E0);
      if (v37(&v15[v36], 1, v7) != 1)
      {
        goto LABEL_13;
      }

      sub_223626478(v15, &qword_27D08E9D0, &qword_22372D1E0);
    }

    else
    {
      v38 = v83;
      sub_223634890(v15, v83, &qword_27D08E9D0, &qword_22372D1E0);
      if (v37(&v15[v36], 1, v7) == 1)
      {
        sub_223626478(v23, &qword_27D08E9D0, &qword_22372D1E0);
        (*(v8 + 8))(v38, v7);
LABEL_13:
        sub_223626478(v15, &qword_27D08F740, &unk_223731DC0);
        return sub_2236DF270(v86, sub_2236CF8CC, 0);
      }

      v39 = v82;
      (*(v8 + 32))(v82, &v15[v36], v7);
      sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58]);
      v40 = sub_22372AFC8();
      v41 = *(v8 + 8);
      v8 += 8;
      v41(v39, v7);
      sub_223626478(v23, &qword_27D08E9D0, &qword_22372D1E0);
      v41(v38, v7);
      sub_223626478(v15, &qword_27D08E9D0, &qword_22372D1E0);
      if ((v40 & 1) == 0)
      {
        return sub_2236DF270(v86, sub_2236CF8CC, 0);
      }
    }

    v42 = sub_22372AC88();
    v43 = sub_22372B268();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_223620000, v42, v43, "Posting TTResponseMessage for all child requests", v44, 2u);
      MEMORY[0x223DE8A80](v44, -1, -1);
    }

    v45 = sub_223642834();
    v83 = *(v45 + 16);
    if (!v83)
    {
      break;
    }

    v23 = 0;
    v2 = (v45 + 40);
    *&v46 = 136315138;
    v81 = v46;
    v82 = v45;
    while (v23 < *(v45 + 16))
    {
      v8 = *(v2 - 1);
      v15 = *v2;

      sub_22372A758();
      __swift_project_boxed_opaque_existential_1(v88, v88[3]);
      v47 = v87;
      v48 = sub_2236CC538();
      if (v47)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
      }

      v7 = v48;
      v87 = 0;
      sub_223729D88();

      __swift_destroy_boxed_opaque_existential_1Tm(v88);

      v49 = sub_22372AC88();
      v50 = sub_22372B268();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v88[0] = v52;
        *v51 = v81;
        *(v51 + 4) = sub_223623274(v8, v15, v88);
        _os_log_impl(&dword_223620000, v49, v50, "Posted TTResponseMessage for child requestId: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        MEMORY[0x223DE8A80](v52, -1, -1);
        MEMORY[0x223DE8A80](v51, -1, -1);
      }

      ++v23;
      v2 += 2;
      v45 = v82;
      if (v83 == v23)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_24:

  v54 = v85;
  v53 = v86;
  v55 = *(v85 + qword_28132B860);
  *(v85 + qword_28132B860) = v86;
  v56 = v53;

  v57 = v80;
  sub_223727F58();
  v58 = sub_22372A358();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_223626478(v57, &unk_27D08E980, &qword_22372D178);
  }

  else
  {
    v60 = sub_22372A348();
    v62 = v61;
    (*(v59 + 8))(v57, v58);
    v63 = sub_223728CF8();
    v65 = v64;
    v66 = qword_28132B840;
    swift_beginAccess();

    v67 = *(v54 + v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v54 + v66);
    *(v54 + v66) = 0x8000000000000000;
    v83 = v60;
    sub_22368E320(v60, v62, v63, v65, isUniquelyReferenced_nonNull_native);

    *(v54 + v66) = v89;
    swift_endAccess();
    v69 = v56;

    v70 = sub_22372AC88();
    v71 = sub_22372B268();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v88[0] = v73;
      *v72 = 136315394;
      v74 = sub_223623274(v83, v62, v88);

      *(v72 + 4) = v74;
      *(v72 + 12) = 2080;
      v75 = sub_223728CF8();
      v77 = sub_223623274(v75, v76, v88);

      *(v72 + 14) = v77;
      _os_log_impl(&dword_223620000, v70, v71, "selectedTCUId: %s for trpId: %s", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DE8A80](v73, -1, -1);
      MEMORY[0x223DE8A80](v72, -1, -1);
    }

    else
    {
    }
  }

  return sub_2236DF270(v86, sub_2236CF8CC, 0);
}

uint64_t sub_2236CF798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CF8CC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731F48;
}

uint64_t sub_2236CF938()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_223624EA4;

  return sub_2236839E4();
}

uint64_t sub_2236CF9C8(void *a1)
{
  v2 = v1;
  v4 = sub_223729D38();
  v6 = v5;
  if (v4 == sub_22372A708() && v6 == v7)
  {
  }

  else
  {
    v8 = sub_22372B6E8();

    if ((v8 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_2236DC8B8(a1, sub_2236CFF3C, 0);
  if (!v1)
  {
    if (qword_281328E58 != -1)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v10 = sub_22372AC98();
      __swift_project_value_buffer(v10, qword_28132B680);
      v11 = sub_22372AC88();
      v12 = sub_22372B268();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_223620000, v11, v12, "Posting CancelRequestMessage for all child requests", v13, 2u);
        MEMORY[0x223DE8A80](v13, -1, -1);
      }

      v31 = v2;

      v14 = sub_223642834();
      v2 = v14;
      v29 = *(v14 + 16);
      if (!v29)
      {
        break;
      }

      v15 = 0;
      v16 = (v14 + 40);
      v28 = v14;
      while (v15 < *(v2 + 16))
      {
        v18 = *(v16 - 1);
        v17 = *v16;

        v19 = sub_223728128();
        MEMORY[0x28223BE20](v19, v20);
        v21 = objc_allocWithZone(sub_223728188());
        v22 = sub_223728118();
        if (!v22)
        {

          type metadata accessor for RequestControllerBridgeInternalErrors(0);
          sub_2236233E0(qword_28132A9A0, type metadata accessor for RequestControllerBridgeInternalErrors);
          swift_allocError();
          *v27 = 0xD000000000000014;
          v27[1] = 0x8000000223736AD0;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
        }

        v23 = v22;
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v30, v30[3]);
        sub_223729D88();
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        v24 = v31;
        sub_2236DC8B8(v23, sub_2236CFFA8, 0);
        v31 = v24;
        if (v24)
        {
        }

        ++v15;

        v16 += 2;
        v2 = v28;
        if (v29 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_21:
      swift_once();
    }

LABEL_15:

    v25 = sub_223729D38();
    sub_2236E3E0C(v25, v26);
  }

  return result;
}

uint64_t sub_2236CFD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236CFED0(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731E00;
}

void *sub_2236CFF3C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731ED0;
}

void *sub_2236CFFA8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731EC0;
}

void sub_2236D0014(void *a1)
{
  v4 = sub_2237287C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08F900, &qword_223733FF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v34 - v13;
  sub_2236DE5EC(a1, sub_2236D0518, 0);
  if (!v2)
  {
    v15 = v5;
    v35 = 0;
    v16 = sub_223729D38();
    v18 = v17;
    if (v16 == sub_22372A708() && v18 == v19)
    {
    }

    else
    {
      v20 = sub_22372B6E8();

      if ((v20 & 1) == 0)
      {
        return;
      }
    }

    v21 = sub_223728848();
    v23 = v22;
    sub_2237287D8();
    (*(v15 + 56))(v14, 0, 1, v4);
    swift_beginAccess();
    sub_223713FD8(v14, v21, v23);
    swift_endAccess();
    v24 = *(v1 + qword_28132B8C0);
    if (v24)
    {
      v25 = *(v1 + qword_28132B8C0);

      sub_2237287D8();
      v26 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision;
      swift_beginAccess();
      (*(v15 + 40))(v24 + v26, v9, v4);
      swift_endAccess();
      sub_223728848();
      v27 = v35;
      sub_2236E5DC8(v24);
      if (!v27)
      {

        v28 = sub_223728848();
        sub_2236D3640(v28, v29);
        v35 = 0;
      }
    }

    else
    {
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v30 = sub_22372AC98();
      __swift_project_value_buffer(v30, qword_28132B680);
      v31 = sub_22372AC88();
      v32 = sub_22372B278();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_223620000, v31, v32, "BUG: We should have started an eager child request at this point", v33, 2u);
        MEMORY[0x223DE8A80](v33, -1, -1);
      }
    }
  }
}

uint64_t sub_2236D03E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236D0518(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731EB0;
}

uint64_t sub_2236D0584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 160);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void sub_2236D06B8(unint64_t a1, uint64_t a2)
{
  v5 = sub_223729F08();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v91 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F740, &unk_223731DC0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v88 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v92 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v27 = &v88 - v26;
  v94 = v2;
  if (sub_22372A768() == a1 && v28 == a2)
  {

    goto LABEL_5;
  }

  v90 = v27;
  v29 = a1;
  v30 = sub_22372B6E8();

  if (v30)
  {
LABEL_5:
    v31 = qword_28132B888;
    v32 = v94;
    swift_beginAccess();
    (*(v6 + 104))(v22, *MEMORY[0x277D5CF30], v5);
    (*(v6 + 56))(v22, 0, 1, v5);
    v33 = *(v10 + 48);
    sub_223634890(v32 + v31, v14, &qword_27D08E9D0, &qword_22372D1E0);
    sub_223634890(v22, &v14[v33], &qword_27D08E9D0, &qword_22372D1E0);
    v34 = *(v6 + 48);
    if (v34(v14, 1, v5) == 1)
    {
      sub_223626478(v22, &qword_27D08E9D0, &qword_22372D1E0);
      if (v34(&v14[v33], 1, v5) == 1)
      {
        sub_223626478(v14, &qword_27D08E9D0, &qword_22372D1E0);
        v35 = 1;
LABEL_15:
        v50 = v35 & 1;
LABEL_16:
        sub_2236D1330(v50);
        return;
      }
    }

    else
    {
      v36 = v92;
      sub_223634890(v14, v92, &qword_27D08E9D0, &qword_22372D1E0);
      if (v34(&v14[v33], 1, v5) != 1)
      {
        v48 = v91;
        (*(v6 + 32))(v91, &v14[v33], v5);
        sub_2236233E0(&unk_28132B540, MEMORY[0x277D5CF58]);
        v35 = sub_22372AFC8();
        v49 = *(v6 + 8);
        v49(v48, v5);
        sub_223626478(v22, &qword_27D08E9D0, &qword_22372D1E0);
        v49(v36, v5);
        sub_223626478(v14, &qword_27D08E9D0, &qword_22372D1E0);
        goto LABEL_15;
      }

      sub_223626478(v22, &qword_27D08E9D0, &qword_22372D1E0);
      (*(v6 + 8))(v36, v5);
    }

    sub_223626478(v14, &qword_27D08F740, &unk_223731DC0);
    v35 = 0;
    goto LABEL_15;
  }

  v92 = v29;
  v37 = a2;
  v38 = v94;
  v39 = sub_2236E6F88(v29, a2);
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = *(v38 + qword_28132A1E8);
  v47 = __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(v46 + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
  if (!*(*v47 + 24) || *(*v47 + 24) != 1)
  {
    v51 = sub_22372B6E8();

    if (v51)
    {
      goto LABEL_18;
    }

    v56 = sub_223727408();
    v57 = v90;
    (*(*(v56 - 8) + 56))(v90, 1, 1, v56);
    v58 = OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_ongoingOrchestrationTaskId;
    swift_beginAccess();
    sub_2236719F4(v57, v46 + v58, &unk_27D08E530, &unk_22372CB10);
    swift_endAccess();
    v59 = qword_28132B870;
    swift_beginAccess();
    v60 = *(v38 + v59);
    v89 = v41;
    v90 = v39;
    if (v60 >> 62)
    {
      v61 = sub_22372B558();
    }

    else
    {
      v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = v43;

    if (v61)
    {
      v62 = 0;
      while (1)
      {
        if ((v60 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x223DE7ED0](v62, v60);
          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_65;
          }

          v63 = *(v60 + 8 * v62 + 32);

          v64 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_38;
          }
        }

        v65 = v63[2].isa == v92 && v63[3].isa == v37;
        if (v65 || (sub_22372B6E8() & 1) != 0)
        {
          break;
        }

        ++v62;
        if (v64 == v61)
        {
          goto LABEL_39;
        }
      }

      v71 = v93;
      sub_2236E672C(v63 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId);
      v70 = v71;
      if (!v71)
      {

        goto LABEL_50;
      }

      v72 = v91;
      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v73 = sub_22372AC98();
      __swift_project_value_buffer(v73, qword_28132B680);
      v74 = sub_22372AC88();
      v75 = sub_22372B278();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_223620000, v74, v75, "Couldn't post OrchestrationTaskCompletedMessage", v76, 2u);
        MEMORY[0x223DE8A80](v76, -1, -1);
      }

      v70 = 0;
    }

    else
    {
LABEL_39:

      if (qword_281328E58 != -1)
      {
        swift_once();
      }

      v66 = sub_22372AC98();
      __swift_project_value_buffer(v66, qword_28132B680);

      v63 = sub_22372AC88();
      v67 = sub_22372B278();

      if (os_log_type_enabled(v63, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v95 = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_223623274(v92, v37, &v95);
        _os_log_impl(&dword_223620000, v63, v67, "Couldn't find child request with requestId: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x223DE8A80](v69, -1, -1);
        MEMORY[0x223DE8A80](v68, -1, -1);
      }

      v70 = v93;
LABEL_50:
      v72 = v91;
    }

    v77 = v45 >> 1;
    if (v72 == v77)
    {
LABEL_63:
      swift_unknownObjectRelease();
      v50 = v72 == v77;
      goto LABEL_16;
    }

    if (v72 < v77)
    {
      v93 = v70;
      v63 = *(v89 + 8 * v72);
      v78 = qword_281328E58;

      if (v78 == -1)
      {
LABEL_56:
        v79 = sub_22372AC98();
        __swift_project_value_buffer(v79, qword_28132B680);

        v80 = sub_22372AC88();
        v81 = sub_22372B268();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v95 = v83;
          *v82 = 136315138;
          *(v82 + 4) = sub_223623274(v92, v37, &v95);
          _os_log_impl(&dword_223620000, v80, v81, "Child request %s completed, executing next child request", v82, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v83);
          MEMORY[0x223DE8A80](v83, -1, -1);
          MEMORY[0x223DE8A80](v82, -1, -1);
        }

        v84 = v93;
        sub_2236DA034(v63);
        v72 = v91;
        if (v84)
        {
          swift_unknownObjectRelease();

          v85 = sub_22372AC88();
          v86 = sub_22372B268();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            *v87 = 67109120;
            _os_log_impl(&dword_223620000, v85, v86, "shouldEndRootRequest=%{BOOL}d", v87, 8u);
            MEMORY[0x223DE8A80](v87, -1, -1);
          }

          return;
        }

        goto LABEL_63;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_56;
  }

LABEL_18:
  sub_2236EA99C(v39, v41, v43, v45, v38);
  swift_unknownObjectRelease();
  if (qword_281328E58 != -1)
  {
LABEL_65:
    swift_once();
  }

  v52 = sub_22372AC98();
  __swift_project_value_buffer(v52, qword_28132B680);
  v53 = sub_22372AC88();
  v54 = sub_22372B268();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    *(v55 + 4) = 1;
    _os_log_impl(&dword_223620000, v53, v54, "shouldEndRootRequest=%{BOOL}d", v55, 8u);
    MEMORY[0x223DE8A80](v55, -1, -1);
  }

  sub_2236E8534(0, 0);
}

void sub_2236D1330(char a1)
{
  if (qword_281328E58 != -1)
  {
    swift_once();
  }

  v2 = sub_22372AC98();
  __swift_project_value_buffer(v2, qword_28132B680);
  v3 = sub_22372AC88();
  v4 = sub_22372B268();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_223620000, v3, v4, "shouldEndRootRequest=%{BOOL}d", v5, 8u);
    MEMORY[0x223DE8A80](v5, -1, -1);
  }

  if (a1)
  {
    sub_2236E8534(0, 0);
  }
}

id sub_2236D143C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08E9D0, &qword_22372D1E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F640, &unk_22372D770);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v24 - v11;
  v13 = sub_2236C7D74();
  if (v13)
  {
    v14 = v13;
    v15 = sub_22372B1A8();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a1;
    v17 = a1;
    sub_2236C7970(0, 0, v12, &unk_223731E60, v16);

    v18 = *MEMORY[0x277D5CF40];
    v19 = sub_223729F08();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v7, v18, v19);
    (*(v20 + 56))(v7, 0, 1, v19);
    v21 = qword_28132B888;
    swift_beginAccess();
    sub_2236719F4(v7, v1 + v21, &qword_27D08E9D0, &qword_22372D1E0);
    return swift_endAccess();
  }

  else
  {
    sub_2236EA17C();
    swift_allocError();
    *v23 = a1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 1;
    swift_willThrow();
    return a1;
  }
}

uint64_t sub_2236D16AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_2236242EC;

  return sub_2236F6A58(a5);
}

uint64_t sub_2236D1748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v23 - v13;
  v15 = *MEMORY[0x277D5CDE8];
  v16 = sub_223729DE8();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  sub_223729588();
  sub_22372A728();
  sub_223729578();
  sub_22372A778();
  v18 = sub_223727408();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  sub_2237295A8();
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);

  sub_223729598();
  v21 = __swift_project_boxed_opaque_existential_1((*(a2 + qword_28132A1E8) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager), *(*(a2 + qword_28132A1E8) + OBJC_IVAR____TtCC24RequestDispatcherBridges23RequestControllerBridge14SessionContext_promptStateManager + 24));
  if (!*(*v21 + 24) || *(*v21 + 24) != 1)
  {
    sub_22372B6E8();
  }

  sub_223729558();
  sub_22372A768();
  return sub_223729568();
}

uint64_t sub_2236D1A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

id sub_2236D1B34(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9C0, &qword_223731E30);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v77 - v11;
  v13 = sub_22372A098();
  v85 = *(v13 - 8);
  v14 = *(v85 + 64);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v77 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v77 - v24;
  result = sub_2236E074C(a1, sub_2236D2418, 0);
  if (!v2)
  {
    v27 = v1;
    v82 = v18;
    v84 = 0;
    sub_223729A28();
    v28 = v85;
    if ((*(v85 + 48))(v12, 1, v13) == 1)
    {
      return sub_223626478(v12, &unk_27D08E9C0, &qword_223731E30);
    }

    else
    {
      v88 = a1;
      (*(v28 + 32))(v25, v12, v13);
      v29 = qword_28132B870;
      v30 = v27;
      swift_beginAccess();
      v79 = v29;
      v80 = v13;
      v31 = *(v27 + v29);
      v83 = v25;
      v81 = v30;
      v77 = v22;
      v78 = v9;
      if (v31 >> 62)
      {
LABEL_38:
        v86 = v31 & 0xFFFFFFFFFFFFFF8;
        v32 = sub_22372B558();
      }

      else
      {
        v86 = v31 & 0xFFFFFFFFFFFFFF8;
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v33 = 4;
      while (v33 - v32 != 4)
      {
        v34 = v33 - 4;
        if ((v31 & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x223DE7ED0](v33 - 4, v31);
        }

        else
        {
          if (v34 >= *(v86 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v35 = *(v31 + 8 * v33);
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 == sub_223729D38() && v36 == v38)
        {

LABEL_25:
          v52 = v79;

          v53 = *(v81 + v52);
          v47 = v85;
          v54 = v83;
          if ((v53 & 0xC000000000000001) != 0)
          {

            v55 = MEMORY[0x223DE7ED0](v33 - 4, v53);

            goto LABEL_28;
          }

          if (v34 < *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v55 = *(v53 + 8 * v33);

LABEL_28:
            v56 = qword_281328E58;

            v46 = v80;
            if (v56 != -1)
            {
              swift_once();
            }

            v57 = sub_22372AC98();
            __swift_project_value_buffer(v57, qword_28132B680);
            v58 = *(v47 + 16);
            v59 = v77;
            v58(v77, v54, v46);
            v60 = v88;
            v61 = sub_22372AC88();
            v62 = sub_22372B268();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v88 = v58;
              v64 = v63;
              v86 = swift_slowAlloc();
              v87[0] = v86;
              *v64 = 136315394;
              LODWORD(v79) = v62;
              v65 = sub_223729D38();
              v66 = v61;
              v68 = sub_223623274(v65, v67, v87);

              *(v64 + 4) = v68;
              *(v64 + 12) = 2080;
              v88(v82, v59, v46);
              v69 = sub_22372B038();
              v71 = v70;
              (*(v47 + 8))(v59, v46);
              v72 = sub_223623274(v69, v71, v87);

              *(v64 + 14) = v72;
              _os_log_impl(&dword_223620000, v66, v79, "Updating ongoingExecutionSource for requestInfo with requestId: %s to %s", v64, 0x16u);
              v73 = v86;
              swift_arrayDestroy();
              MEMORY[0x223DE8A80](v73, -1, -1);
              v74 = v64;
              v58 = v88;
              MEMORY[0x223DE8A80](v74, -1, -1);
            }

            else
            {

              (*(v47 + 8))(v59, v46);
            }

            v75 = v78;
            v48 = v83;
            v58(v78, v83, v46);
            (*(v47 + 56))(v75, 0, 1, v46);
            v76 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
            swift_beginAccess();
            sub_2236719F4(v75, v55 + v76, &unk_27D08E9C0, &qword_223731E30);
            swift_endAccess();
            sub_223630E28(v55);

            return (*(v47 + 8))(v48, v46);
          }

          __break(1u);
          goto LABEL_41;
        }

        v40 = sub_22372B6E8();

        if (v40)
        {
          goto LABEL_25;
        }

        ++v33;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_37;
        }
      }

      if (qword_281328E58 == -1)
      {
        goto LABEL_21;
      }

LABEL_41:
      swift_once();
LABEL_21:
      v41 = sub_22372AC98();
      __swift_project_value_buffer(v41, qword_28132B680);
      v42 = v88;
      v43 = sub_22372AC88();
      v44 = sub_22372B278();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v80;
      v47 = v85;
      v48 = v83;
      if (v45)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        *v49 = 138412290;
        *(v49 + 4) = v42;
        *v50 = v42;
        v51 = v42;
        _os_log_impl(&dword_223620000, v43, v44, "Could not find requestInfo matching message: %@", v49, 0xCu);
        sub_223626478(v50, &unk_27D08F250, &unk_22372D1D0);
        MEMORY[0x223DE8A80](v50, -1, -1);
        MEMORY[0x223DE8A80](v49, -1, -1);
      }

      return (*(v47 + 8))(v48, v46);
    }
  }

  return result;
}

uint64_t sub_2236D22E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a3 + 208);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2236242EC;

  return v11(a1, ObjectType, a3);
}

void *sub_2236D2418(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return &unk_223731E50;
}

void sub_2236D2484(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v115 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F760, &qword_223731DD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v104 - v8;
  v10 = sub_2237287C8();
  v121 = *(v10 - 8);
  v11 = *(v121 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v123 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RequestInfo.RequestRoute(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v120 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RequestInfo.UserInput(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v114 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_223727408();
  v117 = *(v119 - 8);
  v22 = *(v117 + 64);
  v24 = MEMORY[0x28223BE20](v119, v23);
  v118 = &v104 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v104 - v27;
  v29 = sub_223729D78();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v104 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F770, &qword_223731DE0);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8, v37);
  v39 = &v104 - v38;
  v40 = sub_22372A548();
  v41 = *(*(v40 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v40, v42);
  v45 = MEMORY[0x28223BE20](v43, v44);
  v49 = &v104 - v48;
  v50 = *(v4 + qword_28132B8C0);
  if (!v50)
  {
    if (qword_281328E58 != -1)
    {
      swift_once();
    }

    v60 = sub_22372AC98();
    __swift_project_value_buffer(v60, qword_28132B680);
    v61 = sub_22372AC88();
    v62 = sub_22372B278();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v122[0] = v64;
      *v63 = 136315138;
      *(v63 + 4) = sub_223623274(0xD000000000000029, 0x80000002237372A0, v122);
      _os_log_impl(&dword_223620000, v61, v62, "%s: BUG: We did not start an eager child request at this point", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x223DE8A80](v64, -1, -1);
      MEMORY[0x223DE8A80](v63, -1, -1);
    }

    goto LABEL_15;
  }

  v116 = v10;
  v51 = *(v4 + qword_28132B868 + 8);
  if (!v51)
  {
    v65 = qword_281328E58;

    if (v65 != -1)
    {
      swift_once();
    }

    v66 = sub_22372AC98();
    __swift_project_value_buffer(v66, qword_28132B680);
    v61 = sub_22372AC88();
    v67 = sub_22372B278();
    if (os_log_type_enabled(v61, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v122[0] = v69;
      *v68 = 136315138;
      *(v68 + 4) = sub_223623274(0xD000000000000029, 0x80000002237372A0, v122);
      _os_log_impl(&dword_223620000, v61, v67, "%s: BUG: We did not select a TRP at this point", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x223DE8A80](v69, -1, -1);
      MEMORY[0x223DE8A80](v68, -1, -1);
    }

LABEL_15:

    return;
  }

  v108 = v47;
  v110 = v46;
  v111 = v45;
  v112 = v9;
  v106 = v3;
  v52 = *(v4 + qword_28132B868);
  v113 = v50;

  v109 = v49;
  sub_2236D7D60(v52, v51, v49);
  v53 = qword_28132B850;
  swift_beginAccess();
  v54 = *(v4 + v53);
  v55 = *(v54 + 16);
  v107 = v4;
  if (v55)
  {

    v56 = sub_2236261A0(v52, v51);
    v58 = v57;

    if (v58)
    {
      (*(v30 + 16))(v39, *(v54 + 56) + *(v30 + 72) * v56, v29);
      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v4 = v107;
  }

  else
  {
    v59 = 1;
  }

  (*(v30 + 56))(v39, v59, 1, v29);
  if ((*(v30 + 48))(v39, 1, v29))
  {
    sub_223626478(v39, &qword_27D08F770, &qword_223731DE0);
    v70 = 0;
    v71 = 0;
  }

  else
  {
    (*(v30 + 16))(v34, v39, v29);
    sub_223626478(v39, &qword_27D08F770, &qword_223731DE0);
    v70 = sub_2236EF704();
    v71 = v72;
    (*(v30 + 8))(v34, v29);
  }

  *(v4 + qword_28132B890) = 0;
  sub_2237273F8();
  v105 = sub_2237273B8();
  v104 = v73;
  v74 = v117;
  v75 = v28;
  v76 = v119;
  (*(v117 + 8))(v75, v119);
  (*(v74 + 16))(v118, v113 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v76);
  v77 = sub_223727E98();
  v79 = v78;
  v80 = type metadata accessor for RequestInfo.UserQuery(0);
  v81 = *(v80 + 28);
  v82 = sub_223728858();
  v83 = v114;
  (*(*(v82 - 8) + 56))(&v114[v81], 1, 1, v82);
  v84 = *(v80 + 32);
  v85 = sub_2237287E8();
  (*(*(v85 - 8) + 56))(&v83[v84], 1, 1, v85);
  *v83 = v70;
  *(v83 + 1) = v71;
  *(v83 + 2) = v77;
  *(v83 + 3) = v79;
  *(v83 + 4) = v70;
  *(v83 + 5) = v71;
  (*(*(v80 - 8) + 56))(v83, 0, 1, v80);
  (*(v110 + 16))(v108, v109, v111);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08F680, &unk_223731E20);
  (*(*(v86 - 8) + 56))(v120, 1, 1, v86);
  (*(v121 + 104))(v123, *MEMORY[0x277D5CB80], v116);

  sub_223727EA8();
  v87 = type metadata accessor for RequestInfo(0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  v90 = swift_allocObject();
  v91 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands;
  v92 = MEMORY[0x277D84F90];
  *(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_aceCommands) = MEMORY[0x277D84F90];
  v93 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList;
  *(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_responseList) = v92;
  v94 = OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_ongoingExecutionSource;
  v95 = sub_22372A098();
  v96 = *(*(v95 - 8) + 56);
  v96(v90 + v94, 1, 1, v95);
  v96(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_systemResponseSource, 1, 1, v95);
  v97 = v111;
  v98 = v104;
  *(v90 + 16) = v105;
  *(v90 + 24) = v98;
  (*(v117 + 32))(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_orchestrationTaskId, v118, v119);
  v99 = v83;
  v100 = v110;
  sub_223639818(v99, v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userInput, type metadata accessor for RequestInfo.UserInput);
  (*(v100 + 32))(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_userId, v108, v97);
  swift_beginAccess();
  *(v90 + v91) = v92;
  swift_beginAccess();
  *(v90 + v93) = v92;
  sub_223639818(v120, v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_route, type metadata accessor for RequestInfo.RequestRoute);
  (*(v121 + 32))(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_nlRoutingDecision, v123, v116);
  v101 = v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceIndex;
  *v101 = 0;
  *(v101 + 8) = 1;
  v102 = v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_rewrittenUtteranceCount;
  *v102 = 0;
  *(v102 + 8) = 1;
  *(v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_isLLMFallbackWithRewrite) = 1;
  sub_2236EA450(v112, v90 + OBJC_IVAR____TtC24RequestDispatcherBridges11RequestInfo_siriXRedirectContext);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D08EB48, qword_2237329D0);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_22372FCE0;
  *(v103 + 32) = v90;

  sub_2236D9818(v103);
  (*(v100 + 8))(v109, v97);
}

void sub_2236D3118()
{
  if (*(v0 + qword_28132B8C0))
  {
    v1 = v0;
    v2 = qword_28132B828;
    v3 = *(v0 + qword_28132B828);
    if (v3)
    {
      v4 = qword_281328E58;

      v5 = v3;
      if (v4 != -1)
      {
        swift_once();
      }

      v6 = sub_22372AC98();
      __swift_project_value_buffer(v6, qword_28132B680);
      v7 = sub_22372AC88();
      v8 = sub_22372B268();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_223620000, v7, v8, "Forwarding TRPCandidateForPlannerMessage to other bridges for eager processing as TRPCandidateRequestMessage", v9, 2u);
        MEMORY[0x223DE8A80](v9, -1, -1);
      }

      MEMORY[0x28223BE20](v10, v11);
      v12 = objc_allocWithZone(sub_223728CE8());
      v13 = sub_223728C68();
      if (v13)
      {
        v14 = v13;
        sub_22372A758();
        __swift_project_boxed_opaque_existential_1(v19, v19[3]);
        sub_223729D88();

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      else
      {
        v15 = sub_22372AC88();
        v16 = sub_22372B278();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_223620000, v15, v16, "Failed to build TRPCandidateRequestMessage from TRPCandidateForPlannerMessage. Missing Fields?", v17, 2u);
          MEMORY[0x223DE8A80](v17, -1, -1);
        }
      }

      v18 = *(v1 + v2);
      *(v1 + v2) = 0;
    }
  }
}

uint64_t sub_2236D338C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E990, &qword_22372FCF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E9A0, &qword_223731970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D08E530, &unk_22372CB10);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v27 - v17;
  sub_22372A728();
  sub_223728C78();
  v19 = *(a3 + 16);
  v20 = *(a3 + 24);

  sub_223728CC8();
  sub_22372A778();
  v21 = sub_223727408();
  (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  sub_223728CD8();
  v22 = *MEMORY[0x277D5CDE8];
  v23 = sub_223729DE8();
  v24 = *(v23 - 8);
  (*(v24 + 104))(v13, v22, v23);
  (*(v24 + 56))(v13, 0, 1, v23);
  sub_223728CA8();
  sub_223729198();
  sub_223728C98();
  sub_223728CF8();
  sub_223728C88();
  sub_223728D08();
  v25 = sub_22372A548();
  (*(*(v25 - 8) + 56))(v8, 0, 1, v25);
  return sub_223728CB8();
}