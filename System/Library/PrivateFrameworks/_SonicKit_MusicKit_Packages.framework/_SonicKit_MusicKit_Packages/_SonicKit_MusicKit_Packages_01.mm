uint64_t sub_2753FA864@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2753FA9B8(&v15);
  if (v16)
  {
    sub_2753F16E0(&v15, v18);
    v5 = v19;
    v4 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    OUTLINED_FUNCTION_0_0(*(*(v4 + 8) + 8));
    v7 = v6(v5) % 4;
    v8 = *(v2 + 16);
    v9 = *(v8 + 16);
    v10 = v8 + 32;
    if (v9)
    {
      while (1)
      {
        sub_2753F161C(v10, &v15);
        v11 = v16;
        v12 = v17;
        __swift_project_boxed_opaque_existential_1(&v15, v16);
        OUTLINED_FUNCTION_0_0(v12);
        if (v13(v11, v12) == v7)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(&v15);
        v10 += 40;
        if (!--v9)
        {
          goto LABEL_5;
        }
      }

      sub_2753F16E0(&v15, a1);
    }

    else
    {
LABEL_5:
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    result = sub_2753FC520(&v15, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void sub_2753FA9B8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  swift_bridgeObjectRetain_n();
  v41[0] = v3;
  v41[1] = sub_27544FBA0(1, v3);
  v41[2] = v4;
  v41[3] = v5;
  v41[4] = v6;
  v7 = sub_2753F9928(v41);
  swift_unknownObjectRelease();

  v8 = 0;
  v9 = *(v7 + 16);
  for (i = v7 + 32; ; i += 48)
  {
    if (v9 == v8)
    {

      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      goto LABEL_8;
    }

    if (v8 >= *(v7 + 16))
    {
      __break(1u);
      return;
    }

    sub_2753FC404(i, &v32, sub_2753FC38C);
    if ((BYTE8(v34) & 3) == 0)
    {
      break;
    }

    ++v8;
    OUTLINED_FUNCTION_10_0();
    sub_2753FC4BC(&v32, v11);
  }

  v35 = v32;
  v36 = v33;
  v37 = v34;
LABEL_8:
  v12 = sub_2753FC404(&v35, &v32, sub_2753FC464);
  if (*(&v33 + 1))
  {
    v29 = v32;
    v30 = v33;
    v31 = v34;
    sub_2753F161C(&v29, &v38);
    OUTLINED_FUNCTION_10_0();
    v21 = sub_2753FC4BC(&v29, v20);
    OUTLINED_FUNCTION_12(v21, v22, v23, v24, v25, v26, v27, v28, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1));
    if (*(&v39 + 1))
    {
      sub_2753F16E0(&v38, a1);
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_12(v12, v13, v14, v15, v16, v17, v18, v19, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1));
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
  }

  sub_2753F8E44(v3, a1);
  if (*(&v39 + 1))
  {
    sub_2753FC520(&v38, &qword_2809DAEE8, &qword_2809DAEF0, &protocol descriptor for TransitionPlannerSectionBoundaryEvent);
  }
}

uint64_t sub_2753FAB94()
{
  sub_2753FA864(v14);
  sub_2753FC0D8(v14, &v12);
  if (v13)
  {
    sub_2753F16E0(&v12, v9);
    v0 = v10;
    v1 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    OUTLINED_FUNCTION_0_0(v1);
    v3 = v2(v0, v1);
    sub_2753FC520(v14, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_2753FC520(v14, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    v3 = 0;
  }

  v4 = sub_2753FB4B0(v3);
  v5 = sub_2753FB5F4(v4);

  sub_2753FB858(v5);
  v7 = v6;

  return v7;
}

void *sub_2753FACA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v113 = a2;
  if (*(a1 + 16))
  {
    sub_2753F161C(a1 + 32, &v124);
    v117 = 1;
  }

  else
  {
    v117 = 0;
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5)
  {
    v121 = 0;
    v6 = 0;
    v114 = a1 + 32;
    v7 = (v4 + 48);
    v8 = MEMORY[0x277D84F90];
    v120 = 1;
    v9 = 1;
    while (1)
    {
      v10 = v7;
      v12 = *(v7 - 2);
      v11 = *(v7 - 1);
      v13 = *v7;
      v14 = v7[40];
      v7 += 64;
      switch(v14 >> 6)
      {
        case 1u:
          v22 = *(&v125 + 1);
          if (*(&v125 + 1))
          {
            LODWORD(v119) = v9;
            OUTLINED_FUNCTION_27();
            v116 = v13;
            v118 = v11;
            v35 = v7;
            v7 = v6;
            v6 = &v111;
            OUTLINED_FUNCTION_7_1();
            v37 = *(v36 + 64);
            MEMORY[0x28223BE20](v38);
            OUTLINED_FUNCTION_18();
            v40 = OUTLINED_FUNCTION_6_2(v39);
            v41(v40);
            v42 = OUTLINED_FUNCTION_14();
            v43(v42);
            v44 = OUTLINED_FUNCTION_24();
            v45(v44, v22);
            OUTLINED_FUNCTION_22_0();
            v9 = v119;
            if (v34)
            {
              if (v119)
              {
                v6 = 0;
              }

              else
              {
                v6 = v112;
                if (__OFADD__(&v111, 1))
                {
                  goto LABEL_91;
                }
              }

              if (v120)
              {
                v121 = 0;
              }

              else
              {
                v58 = __OFADD__(v121++, 1);
                if (v58)
                {
                  goto LABEL_93;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v108 = *(v8 + 16);
                OUTLINED_FUNCTION_6_1();
                sub_2754315B8();
                v8 = v109;
              }

              OUTLINED_FUNCTION_13();
              if (v80)
              {
                OUTLINED_FUNCTION_4_2();
                OUTLINED_FUNCTION_23(&v129 + 4);
              }

              OUTLINED_FUNCTION_1_6(v88, v89, v90, v91);
              if (v34)
              {
                OUTLINED_FUNCTION_9_0(v93);
              }

              else
              {
                if (v92)
                {
                  goto LABEL_98;
                }

                OUTLINED_FUNCTION_8_0();
                v117 = (v35 + 1);
                if (__OFADD__(v35, 1))
                {
                  goto LABEL_101;
                }
              }

              sub_2753FC048(__src, &v124);
              v120 = 0;
              v9 = 0;
              v94 = &v129 + 4;
              goto LABEL_85;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v100 = *(v8 + 16);
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v101;
          }

          OUTLINED_FUNCTION_17();
          if (v80)
          {
            OUTLINED_FUNCTION_4_2();
            OUTLINED_FUNCTION_23(&v131 + 4);
          }

          LOBYTE(__src[0]) = v9 & 1;
          v123 = v120 & 1;
          OUTLINED_FUNCTION_5_2(v53, v54, v55, v56);
          OUTLINED_FUNCTION_21(v57);
          v52 = &v131 + 4;
          break;
        case 2u:
          if (v9)
          {
            v6 = 0;
          }

          else
          {
            v58 = __OFADD__(v6++, 1);
            if (v58)
            {
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
              JUMPOUT(0x2753FB4A0);
            }
          }

          v22 = *(&v125 + 1);
          if (!*(&v125 + 1))
          {
            goto LABEL_40;
          }

          v118 = v11;
          v119 = v8;
          OUTLINED_FUNCTION_27();
          OUTLINED_FUNCTION_7_1();
          v60 = *(v59 + 64);
          MEMORY[0x28223BE20](v61);
          OUTLINED_FUNCTION_18();
          v63 = OUTLINED_FUNCTION_6_2(v62);
          v64(v63);
          v65 = OUTLINED_FUNCTION_14();
          v66(v65);
          v67 = OUTLINED_FUNCTION_24();
          v68(v67, v22);
          if (v13 == v9)
          {
            v8 = v119;
            if (v120)
            {
              v121 = 0;
            }

            else
            {
              v58 = __OFADD__(v121++, 1);
              if (v58)
              {
                goto LABEL_94;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v75 = v118;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v104 = *(v8 + 16);
              OUTLINED_FUNCTION_6_1();
              sub_2754315B8();
              v8 = v105;
            }

            OUTLINED_FUNCTION_13();
            if (v80)
            {
              OUTLINED_FUNCTION_4_2();
              OUTLINED_FUNCTION_23(&v129);
            }

            OUTLINED_FUNCTION_1_6(v76, v77, v78, v79);
            if (v34)
            {
              OUTLINED_FUNCTION_9_0(v81);
            }

            else
            {
              if (v80)
              {
                goto LABEL_97;
              }

              OUTLINED_FUNCTION_8_0();
              v117 = (v75 + 1);
              if (__OFADD__(v75, 1))
              {
                goto LABEL_99;
              }
            }

            sub_2753FC048(__src, &v124);
            v120 = 0;
            v9 = 0;
            v94 = &v129;
LABEL_85:
            *(v94 - 64) = v22;
            goto LABEL_86;
          }

          v8 = v119;
LABEL_40:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = *(v8 + 16);
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v103;
          }

          OUTLINED_FUNCTION_17();
          if (v80)
          {
            OUTLINED_FUNCTION_4_2();
            OUTLINED_FUNCTION_23(&v130 + 4);
          }

          v9 = 0;
          LOBYTE(__src[0]) = v120 & 1;
          OUTLINED_FUNCTION_5_2(v69, v70, v71, v72);
          *(v73 + 64) = v121;
          *(v73 + 72) = __src[0];
          *(v73 + 88) = v51;
          v52 = &v130 + 4;
          break;
        case 3u:
          v22 = *(&v125 + 1);
          if (*(&v125 + 1))
          {
            LODWORD(v119) = v9;
            OUTLINED_FUNCTION_27();
            v116 = v13;
            v118 = v11;
            v23 = v7;
            v7 = v6;
            v6 = &v111;
            OUTLINED_FUNCTION_7_1();
            v25 = *(v24 + 64);
            MEMORY[0x28223BE20](v26);
            OUTLINED_FUNCTION_18();
            v28 = OUTLINED_FUNCTION_6_2(v27);
            v29(v28);
            v30 = OUTLINED_FUNCTION_14();
            v31(v30);
            v32 = OUTLINED_FUNCTION_24();
            v33(v32, v22);
            OUTLINED_FUNCTION_22_0();
            v9 = v119;
            if (v34)
            {
              if (v119)
              {
                v6 = 0;
              }

              else
              {
                v6 = v112;
                if (__OFADD__(&v111, 1))
                {
                  goto LABEL_92;
                }
              }

              if (v120)
              {
                v121 = 0;
              }

              else
              {
                v58 = __OFADD__(v121++, 1);
                if (v58)
                {
                  goto LABEL_95;
                }
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v106 = *(v8 + 16);
                OUTLINED_FUNCTION_6_1();
                sub_2754315B8();
                v8 = v107;
              }

              OUTLINED_FUNCTION_13();
              if (v80)
              {
                OUTLINED_FUNCTION_4_2();
                OUTLINED_FUNCTION_23(&v128 + 4);
              }

              OUTLINED_FUNCTION_1_6(v82, v83, v84, v85);
              if (v34)
              {
                OUTLINED_FUNCTION_9_0(v87);
              }

              else
              {
                if (v86)
                {
                  goto LABEL_96;
                }

                OUTLINED_FUNCTION_8_0();
                v117 = (v23 + 1);
                if (__OFADD__(v23, 1))
                {
                  goto LABEL_100;
                }
              }

              sub_2753FC048(__src, &v124);
              v120 = 0;
              v9 = 0;
              v94 = &v128 + 4;
              goto LABEL_85;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v98 = *(v8 + 16);
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v99;
          }

          OUTLINED_FUNCTION_17();
          if (v80)
          {
            OUTLINED_FUNCTION_4_2();
            OUTLINED_FUNCTION_23(&v131);
          }

          LOBYTE(__src[0]) = v9 & 1;
          v123 = v120 & 1;
          OUTLINED_FUNCTION_5_2(v46, v47, v48, v49);
          OUTLINED_FUNCTION_21(v50);
          v52 = &v131;
          break;
        default:
          v118 = v7;
          LOBYTE(__src[0]) = v10[8] & 1;
          LODWORD(v119) = v9;
          v123 = v9 & 1;
          v15 = v120 & 1;
          v122 = v120 & 1;
          v16 = LOBYTE(__src[0]);
          v17 = v9 & 1;
          v18 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = *(v8 + 16);
            OUTLINED_FUNCTION_6_1();
            sub_2754315B8();
            v8 = v96;
          }

          v19 = *(v8 + 16);
          v20 = v8;
          if (v19 >= *(v8 + 24) >> 1)
          {
            OUTLINED_FUNCTION_4_2();
            v20 = v97;
          }

          *(v20 + 16) = v19 + 1;
          v8 = v20;
          v21 = v20 + (v19 << 6);
          *(v21 + 32) = v12;
          *(v21 + 40) = v11;
          *(v21 + 48) = v13;
          *(v21 + 56) = v16;
          v6 = v18;
          *(v21 + 64) = v18;
          *(v21 + 72) = v17;
          *(v21 + 80) = v121;
          *(v21 + 88) = v15;
          v7 = v118;
          v9 = v119;
          goto LABEL_86;
      }

      *(v52 - 64) = v51;
LABEL_86:
      if (!--v5)
      {
        goto LABEL_89;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_89:
  sub_2753F9D50(v8, __src);
  sub_2753FC520(&v124, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  return memcpy(v113, __src, 0x48uLL);
}

uint64_t sub_2753FB4B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v6;
  }

  while (1)
  {
    sub_2753F161C(v5, &v14);
    v7 = v15;
    v8 = v16;
    __swift_project_boxed_opaque_existential_1(&v14, v15);
    result = (*(v8 + 16))(v7, v8);
    if (__OFSUB__(result, a1))
    {
      break;
    }

    if (((result - a1) & 0x8000000000000003) != 0)
    {
      __swift_destroy_boxed_opaque_existential_1(&v14);
    }

    else
    {
      sub_2753F16E0(&v14, v13);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2754412B4(0, *(v6 + 16) + 1, 1);
        v6 = v17;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2754412B4(v11 > 1, v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      sub_2753F16E0(v13, v6 + 40 * v12 + 32);
    }

    v5 += 40;
    if (!--v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2753FB5F4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2754412B4(0, v3, 0);
    v4 = v27;
    v6 = v2 + 32;
    do
    {
      sub_2753F161C(v6, v21);
      sub_2753FBAC0(v21, a1, &v24);
      if (v25)
      {
        v7 = sub_2753F16E0(&v24, v20);
        MEMORY[0x28223BE20](v7);
        v19[2] = v20;
        if (sub_2753F8B54(sub_2753FC1C0, v19, v2))
        {
          v8 = v22;
          v9 = v23;
          v10 = __swift_project_boxed_opaque_existential_1(v21, v22);
          v25 = v8;
          v26 = *(*(v9 + 8) + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v24);
          (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
        }

        else
        {
          sub_2753F161C(v20, &v24);
        }

        __swift_destroy_boxed_opaque_existential_1(v20);
      }

      else
      {
        sub_2753FC520(&v24, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
        v12 = v22;
        v13 = v23;
        v14 = __swift_project_boxed_opaque_existential_1(v21, v22);
        v25 = v12;
        v26 = *(*(v13 + 8) + 8);
        v15 = __swift_allocate_boxed_opaque_existential_1(&v24);
        (*(*(v12 - 8) + 16))(v15, v14, v12);
      }

      __swift_destroy_boxed_opaque_existential_1(v21);
      v27 = v4;
      v17 = *(v4 + 16);
      v16 = *(v4 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_2754412B4(v16 > 1, v17 + 1, 1);
        v4 = v27;
      }

      *(v4 + 16) = v17 + 1;
      sub_2753F16E0(&v24, v4 + 40 * v17 + 32);
      v6 += 40;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_2753FB858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = MEMORY[0x277D84F90];
    v3 = a1 + 32;
    do
    {
      sub_2753F161C(v3, v19);
      v4 = *(v2 + 16);
      if (v4)
      {
        sub_2753F161C(v2 + 40 * v4 - 8, v16);
        v5 = v20;
        v6 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v7 = (*(v6 + 16))(v5, v6);
        v8 = v17;
        v9 = v18;
        __swift_project_boxed_opaque_existential_1(v16, v17);
        if ((*(v9 + 16))(v8, v9) < v7)
        {
          sub_2753FC168(0, &qword_2809DAEE0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_275474500;
          sub_2753F161C(v19, inited + 32);
          v11 = *(v2 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v13 = *(v2 + 24) >> 1, v13 <= v11))
          {
            sub_275431470(isUniquelyReferenced_nonNull_native, v11 + 1, 1, v2);
            v2 = v14;
            v13 = *(v14 + 24) >> 1;
          }

          if (v13 <= *(v2 + 16))
          {
            __break(1u);
            return;
          }

          sub_2753F1680(0, &qword_2809DADD0);
          swift_arrayInitWithCopy();

          ++*(v2 + 16);
        }

        __swift_destroy_boxed_opaque_existential_1(v16);
      }

      else
      {
        sub_2753FC168(0, &qword_2809DAEE0, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D84560]);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_275474500;
        sub_2753F161C(v19, v15 + 32);

        v2 = v15;
      }

      __swift_destroy_boxed_opaque_existential_1(v19);
      v3 += 40;
      --v1;
    }

    while (v1);
  }
}

uint64_t sub_2753FBAC0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  *&v32 = a2;
  v6 = sub_2753FC200(sub_2753FC1E0, v22, a2);
  sub_2753FC2C0(sub_2753FC34C, v6, v7 & 1, v37);
  sub_2753F8CA4(sub_2753FC36C, a2, sub_2753F16E0, v36);
  sub_2753FC0D8(v37, &v32);
  sub_2753FC0D8(v36, &v34);
  if (!v33)
  {
    sub_2753FC520(v36, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    result = sub_2753FC520(v37, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    if (!v35)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v21 = &v34;
    return sub_2753F16E0(v21, a3);
  }

  if (!v35)
  {
    sub_2753FC520(v36, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    sub_2753FC520(v37, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
    v21 = &v32;
    return sub_2753F16E0(v21, a3);
  }

  sub_2753F16E0(&v32, v29);
  sub_2753F16E0(&v34, v26);
  v9 = v30;
  v8 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  (*(*(*(v8 + 8) + 8) + 8))(&v25, v9);
  v10 = v25;
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  (*(*(*(*(*(v11 + 8) + 8) + 8) + 8) + 8))(&v24, v12);
  v13 = v24 - v10;
  v15 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  (*(*(*(*(*(v14 + 8) + 8) + 8) + 8) + 8))(&v25, v15);
  v16 = v25;
  v18 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  (*(*(*(v17 + 8) + 8) + 8))(&v24, v18);
  sub_2753FC520(v36, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  sub_2753FC520(v37, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent);
  if (v13 >= v24 - v16 + -0.000000001)
  {
    v19 = v26;
  }

  else
  {
    v19 = v29;
  }

  sub_2753F161C(v19, a3);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

BOOL sub_2753FBE1C(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v5 = (*(*(*(v3 + 8) + 8) + 16))(v4);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return v5 == (*(v7 + 16))(v6, v7);
}

BOOL sub_2753FBEC0(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(*(v3 + 8) + 8) + 8))(&v10, v4);
  v5 = v10;
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(*(*(*(*(v6 + 8) + 8) + 8) + 8) + 8))(&v9, v7);
  return v9 >= v5;
}

BOOL sub_2753FBF84(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(*(*(v3 + 8) + 8) + 8))(&v10, v4);
  v5 = v10;
  v7 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  (*(*(*(*(*(v6 + 8) + 8) + 8) + 8) + 8))(&v9, v7);
  return v5 >= v9;
}

uint64_t sub_2753FC048(uint64_t a1, uint64_t a2)
{
  sub_2753FC168(0, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2753FC0D8(uint64_t a1, uint64_t a2)
{
  sub_2753FC168(0, &qword_2809DAED8, &qword_2809DADD0, &protocol descriptor for TransitionPlannerDownbeatEvent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2753FC168(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = OUTLINED_FUNCTION_28(0, a2, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, v5);
    }
  }
}

uint64_t sub_2753FC200(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = a3 + 40 * result - 8;
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    result = a1(v6);
    if (v3)
    {
      break;
    }

    v8 = result;
    v6 -= 40;
    result = v7 - 1;
  }

  while ((v8 & 1) == 0);
  return result;
}

unint64_t sub_2753FC270@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return sub_2753F161C(a2 + 40 * result + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_2753FC2C0@<X0>(uint64_t (*result)(void *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>))(void *)
{
  if (a3)
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v7[1] = v5;
    v7[2] = v6;
    v7[0] = a2;
    result = result(v7);
    if (v4)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_2753FC38C()
{
  if (!qword_2809DAEF8)
  {
    sub_2753F1680(255, &qword_2809DAEF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DAEF8);
    }
  }
}

uint64_t sub_2753FC404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_19(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

void sub_2753FC464()
{
  if (!qword_2809DAF00)
  {
    sub_2753FC38C();
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAF00);
    }
  }
}

uint64_t sub_2753FC4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_19(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2753FC520(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4)
{
  sub_2753FC168(0, a2, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_19(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_2753FC5FC(uint64_t a1, void *a2, unint64_t *a3)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_28(0, a2, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, v3);
    }
  }
}

uint64_t sub_2753FC650(uint64_t a1, void *a2, unint64_t *a3)
{
  sub_2753FC5FC(0, a2, a3);
  OUTLINED_FUNCTION_19(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_2753FC6D4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2753FC714(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void *OUTLINED_FUNCTION_0_11(void *result)
{
  *(v1 - 192) = result;
  v2 = *(v1 - 296);
  result[2] = *(v1 - 304);
  result[3] = v2;
  v3 = *(v1 - 272);
  result[4] = *(v1 - 288);
  result[5] = v3;
  v4 = *(v1 - 256);
  return result;
}

void OUTLINED_FUNCTION_1_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v6;
  v12 = a4 + (v8 << 6);
  *(v12 + 32) = v7;
  *(v12 + 40) = v5;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = *(v11 - 232);
  *(v12 + 88) = v4 & 1 | 0xC0;
  v13 = *(v11 - 296);
  v14 = *(v11 - 264);
}

void OUTLINED_FUNCTION_4_2()
{

  sub_2754315B8();
}

void OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 16) = v5;
  v10 = (a4 + (v7 << 6));
  v10[4] = v6;
  v10[5] = v4;
  v10[6] = v8;
  v10[7] = v9;
}

uint64_t OUTLINED_FUNCTION_6_2@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - a1;
  v4 = *(v2 + 16);
  return v3;
}

uint64_t OUTLINED_FUNCTION_8_0()
{
  v2 = *(v0 - 320) + 40 * *(v0 - 264);

  return sub_2753F161C(v2, v0 - 160);
}

double OUTLINED_FUNCTION_9_0@<D0>(uint64_t a1@<X8>)
{
  *(v1 - 128) = 0;
  *(v1 - 264) = a1;
  result = 0.0;
  *(v1 - 160) = 0u;
  *(v1 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return sub_2753FC4BC(va, sub_2753FC464);
}

uint64_t OUTLINED_FUNCTION_15()
{
  *(v0 - 160) = 0;
  *(v0 - 192) = 0u;
  *(v0 - 176) = 0u;
  return v0 - 192;
}

uint64_t OUTLINED_FUNCTION_16@<X0>(uint64_t result@<X0>, char a2@<W8>)
{
  *(result + 48) = a2;
  *(result + 55) = v4;
  *(result + 53) = v2;
  *(result + 49) = v3;
  return result;
}

double OUTLINED_FUNCTION_20_0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void OUTLINED_FUNCTION_21(char a1@<W8>)
{
  *(v1 + 64) = *(v2 - 160);
  *(v1 + 72) = *(v2 - 232);
  *(v1 + 80) = *(v2 - 216);
  *(v1 + 88) = a1;
}

uint64_t OUTLINED_FUNCTION_26(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v5;
  *(result + 32) = v4;
  *(result + 40) = v3;
  *(result + 48) = v1;
  *(result + 55) = v7;
  *(result + 53) = v6;
  return result;
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, unint64_t *a3)
{

  return sub_2753F1680(255, a3);
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_2753F16E0((v0 - 192), v0 - 144);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11TonalityMapVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 6))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 3);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s11TonalityMapVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *(result + 3) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2753FCB58(__int16 a1, __int16 a2)
{
  v4 = HIBYTE(a1);
  if (HIBYTE(a1) == (a2 & 0xFF00) >> 8 && a2 == a1)
  {
    return 0;
  }

  v6 = HIBYTE(a2);
  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) != 1)
    {
      return 3;
    }

    if (HIBYTE(a2) == 1)
    {
      goto LABEL_19;
    }

    if (HIBYTE(a2))
    {
      return 3;
    }
  }

  else
  {
    if (!HIBYTE(a2))
    {
      goto LABEL_19;
    }

    if (HIBYTE(a2) != 1)
    {
      return 3;
    }
  }

  v7 = sub_2753FCC70(a1);
  if ((v8 & 1) == 0)
  {
    v9 = v7;
    v10 = sub_2753FCC70(a2);
    if ((v11 & 1) == 0 && v9 == v10)
    {
      return 1;
    }
  }

  if (v4)
  {
    if (v6 != 1)
    {
      return 3;
    }
  }

  else if (v6)
  {
    return 3;
  }

LABEL_19:
  v12 = sub_2753FCC70(a1);
  if (v13)
  {
    return 3;
  }

  v14 = v12;
  result = sub_2753FCC70(a2);
  if (v15)
  {
    return 3;
  }

  if (result <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = result;
  }

  if (result >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = result;
  }

  if (!v17 && v16 == 11)
  {
    return 2;
  }

  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    if (v16 == v19)
    {
      return 2;
    }

    return 3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2753FCC70(__int16 a1)
{
  v1 = a1;
  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) == 2)
    {
      return 0;
    }

    else
    {
      result = 0;
      for (i = &byte_2884112F9; *(i - 1) != v1 || *i != 1; i += 2)
      {
        if (++result == 12)
        {
          return 0;
        }
      }
    }
  }

  else
  {
    result = 0;
    for (j = &byte_2884112C1; *j || *(j - 1) != v1; j += 2)
    {
      if (++result == 12)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s8TonalityVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s8TonalityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753FCE90);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *_s12TonalityModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753FCF94);
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

unint64_t sub_2753FCFD0()
{
  result = qword_2809DAF30;
  if (!qword_2809DAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF30);
  }

  return result;
}

uint64_t _s13TonalityTonicOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13TonalityTonicOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x2753FD178);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753FD1B4()
{
  result = qword_2809DAF38;
  if (!qword_2809DAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF38);
  }

  return result;
}

uint64_t sub_2753FD218(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = (a2 + 49);
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v6 - 17);
      v9 = *(v6 - 9);
      if (v5 >= v8 && v9 >= v4)
      {
        v11 = *(v6 - 1);
        v12 = *v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27544131C(0, *(v7 + 16) + 1, 1);
        }

        v14 = *(v7 + 16);
        v13 = *(v7 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_27544131C((v13 > 1), v14 + 1, 1);
        }

        *(v7 + 16) = v14 + 1;
        v15 = v7 + 24 * v14;
        *(v15 + 32) = v8;
        *(v15 + 40) = v9;
        *(v15 + 48) = v11;
        *(v15 + 49) = v12;
      }

      v6 += 24;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v16 = *(v7 + 16);
  if (v16)
  {
    sub_2754412EC(0, v16, 0);
    v17 = v3;
    v18 = *(v3 + 16);
    v19 = 49;
    do
    {
      v20 = *(v7 + v19);
      v21 = *(v3 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_2754412EC(v21 > 1, v18 + 1, 1);
      }

      *(v3 + 16) = v18 + 1;
      *(v3 + v18 + 32) = v20;
      v19 += 24;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v22 = sub_2753FD4E4(v17);

  return v22;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t _s22VocalActivityMapRegionVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 18))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s22VocalActivityMapRegionVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

BOOL sub_2753FD48C(uint64_t a1, uint64_t a2)
{
  v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
  if ((v2.i32[0] & v2.i32[1] & 1) == 0)
  {
    return 0;
  }

  return *(a1 + 16) == *(a2 + 16) && *(a1 + 17) == *(a2 + 17);
}

uint64_t sub_2753FD4E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 5;
  }

  result = *(a1 + 32);
  v4 = v1 - 1;
  if (v4)
  {
    v5 = (a1 + 33);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      else
      {
        result = result;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_2753FD524(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_2753FD568(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = *(a2 + 16);
  }

  v5 = sub_275418054(v4, a1);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = a2;
  v13 = v5;
  sub_275418054(v4, v12);
  v15 = v14;
  v17 = v16;
  v18 = v11 >> 1;
  v20 = v19 >> 1;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  v21 = MEMORY[0x277D84F90];
  v22 = v17;
  v23 = v9;
  v24 = v17;
  v25 = v9;
  while (1)
  {
    if (v18 == v25)
    {
LABEL_29:
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease_n();
      sub_2753FD4E4(v21);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    if (v23 < v9 || v25 >= v18)
    {
      break;
    }

    if (v20 == v24)
    {
      goto LABEL_29;
    }

    if (v22 < v17 || v24 >= v20)
    {
      goto LABEL_30;
    }

    v28 = *(v7 + v25);
    v29 = *(v15 + v24++);
    ++v25;
    if (v28 != 5 && v29 != 5)
    {
      if (v29 >= v28)
      {
        v31 = v28;
      }

      else
      {
        v31 = v29;
      }

      v37 = v31;
      v38 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = *(v21 + 16);
        sub_275431674();
        v21 = v35;
      }

      v32 = *(v21 + 16);
      v33 = v32 + 1;
      if (v32 >= *(v21 + 24) >> 1)
      {
        sub_275431674();
        v33 = v32 + 1;
        v21 = v36;
      }

      *(v21 + 16) = v33;
      *(v21 + v32 + 32) = v37;
      v22 = v24;
      v23 = v25;
      v13 = v38;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t _s13VocalActivityVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s13VocalActivityVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2753FD8D0);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *_s17VocalActivityKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2753FD9D4);
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

unint64_t sub_2753FDA10()
{
  result = qword_2809DAF40;
  if (!qword_2809DAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF40);
  }

  return result;
}

uint64_t _s21VocalActivityStrengthOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s21VocalActivityStrengthOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x2753FDBECLL);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2753FDC24()
{
  result = qword_2809DAF48;
  if (!qword_2809DAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAF48);
  }

  return result;
}

uint64_t sub_2753FDC8C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2753FDCCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2753FDD28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = *(v0 + 32);
  v4 = *(v0 + 40);
  return result;
}

uint64_t sub_2753FDD38(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  sub_275406650(0, &qword_2809DAFB8, MEMORY[0x277CD8320]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v33 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v37 = v9;
  v38 = a2;
  v41 = MEMORY[0x277D84F90];
  sub_27544133C(0, v10, 0);
  v11 = v41;
  v12 = sub_27546E490();
  v13 = *(v12 - 8);
  v14 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v35 = (v13 + 16);
  v36 = v12;
  v34 = *(v13 + 72);
  while (1)
  {
    v15 = v11;
    v16 = sub_27546E470();
    v40 = v17;
    v18 = v36;
    v19 = v37;
    (*v35)(v37, v14, v36);
    v20 = __swift_storeEnumTagSinglePayload(v19, 0, 1, v18);
    v21 = v38;
    v22 = *v38;
    MEMORY[0x28223BE20](v20);
    *(&v33 - 2) = v19;

    v23 = v22;
    v24 = v3;
    v25 = sub_275424238(sub_275406DB0, (&v33 - 4), v23);
    MEMORY[0x28223BE20](v25);
    *(&v33 - 2) = v19;
    result = sub_275406078(sub_275406DB0, (&v33 - 4));
    v27 = *(*v21 + 16);
    if (v27 < result)
    {
      break;
    }

    sub_27540650C(result, v27);
    v28 = sub_2753FDD38(v25, v21);
    v39 = v24;

    sub_275404F64(v19, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    v11 = v15;
    v41 = v15;
    v30 = *(v15 + 16);
    v29 = *(v15 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_27544133C((v29 > 1), v30 + 1, 1);
      v11 = v41;
    }

    *(v11 + 16) = v30 + 1;
    v31 = (v11 + 24 * v30);
    v3 = v39;
    v32 = v40;
    v31[4] = v16;
    v31[5] = v32;
    v31[6] = v28;
    v14 += v34;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2753FE03C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_275431F84(*(a1 + 16), 0);
  v4 = sub_275464A34(&v6, v3 + 32, v2, a1);
  sub_2754066A4();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

__n128 sub_2753FE0CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  OUTLINED_FUNCTION_0_12();
  sub_275406650(0, v12, v13);
  v15 = OUTLINED_FUNCTION_11_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_1();
  v150 = v18 - v19;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v20);
  v151 = &v143 - v21;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v22);
  v147 = &v143 - v23;
  OUTLINED_FUNCTION_1_7();
  v144 = v24;
  sub_275406650(0, v25, v26);
  v28 = OUTLINED_FUNCTION_11_0(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_8_1();
  v149 = v31 - v32;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v33);
  v148 = &v143 - v34;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v35);
  v146 = &v143 - v36;
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x28223BE20](v37);
  v39 = &v143 - v38;
  OUTLINED_FUNCTION_6_3();
  sub_275406650(0, v40, v41);
  v43 = OUTLINED_FUNCTION_11_0(v42);
  v45 = *(v44 + 64);
  MEMORY[0x28223BE20](v43);
  v145 = &v143 - v46;
  v47 = *a1;
  v48 = a1[1];
  v49 = sub_2753FE920(a4);
  v50 = sub_2753FEAE4(a4, a2, a6, a3 & 1, v49);
  v52 = v51;
  v54 = v53;
  v55 = v50;
  v57 = v56 & 1;
  v58 = sub_2753FF0E0(v51);
  OUTLINED_FUNCTION_12_0();
  v60 = sub_2753FF524(v59);
  OUTLINED_FUNCTION_12_0();
  v63 = sub_2753FF71C(v61, v62, v58);
  v64 = sub_2753FF994(a4, v55, v57, v52, v54);
  *a5 = v47;
  *(a5 + 8) = v48;
  *(a5 + 16) = v52;
  *(a5 + 24) = v54;
  *(a5 + 32) = v55;
  *(a5 + 40) = v57;
  v65 = _s22MusicKitStructuredSongVMa();
  sub_2753FFEA4(a4, a5 + v65[6]);
  *(a5 + v65[7]) = v52 - v58;
  *(a5 + v65[8]) = v52 - v60;
  *(a5 + v65[9]) = v63;
  sub_2753FFF08(a4, v64, v153);
  *(a5 + v65[10]) = v153[0];
  *(a5 + v65[11]) = v64;
  sub_2754003A8(a4, v152);
  v66 = (a5 + v65[12]);
  v67 = v152[1];
  *v66 = v152[0];
  v66[1] = v67;
  v68 = v152[3];
  v66[2] = v152[2];
  v66[3] = v68;
  *(a5 + v65[13]) = v49;
  sub_2754011B4(a4, v153);
  memcpy((a5 + v65[14]), v153, 0x48uLL);
  *(a5 + v65[15]) = sub_27540143C(a4);
  *(a5 + v65[16]) = sub_275401B6C(a4, a6);
  v69 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a4 + *(v69 + 24), v39, &qword_2809DAF60, v144);
  v70 = sub_27546E2E0();
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v71, v72, v73) == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v39, v74, v75);
    sub_2753FE800();
    v76 = v145;
    OUTLINED_FUNCTION_14_0(v145, v78, v79, v77);
  }

  else
  {
    v76 = v145;
    sub_27546E2D0();
    OUTLINED_FUNCTION_4_3();
    (*(v80 + 8))(v39, v70);
  }

  v81 = sub_275401F90(v76);
  OUTLINED_FUNCTION_6_3();
  sub_275404F64(v76, v82, v83);
  v84 = a5 + v65[17];
  *(v84 + 4) = WORD2(v81);
  *v84 = v81;
  v85 = OUTLINED_FUNCTION_2_5();
  v86 = v146;
  sub_275404ED4(v85, v146, v87, v88);
  OUTLINED_FUNCTION_9_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v89, v90, v91);
  v93 = v149;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v86, v94, v95);
    sub_2753FE784();
    v96 = v147;
    OUTLINED_FUNCTION_14_0(v147, v98, v99, v97);
  }

  else
  {
    v100 = v147;
    v101 = v86;
    sub_27546E1D0();
    v96 = v100;
    OUTLINED_FUNCTION_4_3();
    (*(v102 + 8))(v101, v70);
  }

  v103 = v151;
  sub_275402414(v96, v154);
  OUTLINED_FUNCTION_0_12();
  sub_275404F64(v96, v104, v105);
  v106 = a5 + v65[18];
  v107 = v154[1];
  *v106 = v154[0];
  *(v106 + 16) = v107;
  *(v106 + 32) = v155;
  v108 = OUTLINED_FUNCTION_2_5();
  v109 = v148;
  sub_275404ED4(v108, v148, v110, v111);
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v112, v113, v114) == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v109, v115, v116);
    sub_2753FE784();
    OUTLINED_FUNCTION_14_0(v103, v118, v119, v117);
  }

  else
  {
    sub_27546E1E0();
    v103 = v151;
    OUTLINED_FUNCTION_4_3();
    (*(v120 + 8))(v109, v70);
  }

  sub_275402414(v103, v156);
  OUTLINED_FUNCTION_0_12();
  sub_275404F64(v103, v121, v122);
  v123 = a5 + v65[19];
  v124 = v156[1];
  *v123 = v156[0];
  *(v123 + 16) = v124;
  *(v123 + 32) = v157;
  v125 = OUTLINED_FUNCTION_2_5();
  sub_275404ED4(v125, v93, v126, v127);
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v128, v129, v130) == 1)
  {
    OUTLINED_FUNCTION_1_7();
    sub_275404F64(v93, v131, v132);
    sub_2753FE784();
    v133 = v150;
    OUTLINED_FUNCTION_14_0(v150, v135, v136, v134);
  }

  else
  {
    v133 = v150;
    sub_27546E1C0();
    OUTLINED_FUNCTION_4_3();
    (*(v137 + 8))(v93, v70);
  }

  sub_275402414(v133, v158);
  sub_275404FBC(a4);
  OUTLINED_FUNCTION_0_12();
  sub_275404F64(v133, v138, v139);
  v140 = (a5 + v65[20]);
  result = v158[0];
  v142 = v158[1];
  *v140 = v158[0];
  v140[1] = v142;
  v140[2].n128_u16[0] = v159;
  return result;
}

void sub_2753FE784()
{
  if (!qword_2809DAF58)
  {
    v0 = sub_27546E270();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAF58);
    }
  }
}

void sub_2753FE800()
{
  if (!qword_2809DAF70)
  {
    sub_27546E2C0();
    sub_2753FE8DC(&qword_2809DAF78);
    sub_2753FE8DC(&qword_2809DAF80);
    sub_2753FE8DC(&qword_2809DAF88);
    v0 = sub_27546E270();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAF70);
    }
  }
}

uint64_t sub_2753FE8DC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_27546E2C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2753FE920(uint64_t a1)
{
  v2 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  v7 = sub_27546E3B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v12 + 32), v6, &qword_2809DAFC0, v2);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_275404F64(v6, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v13 = sub_275403CA4();
    (*(v8 + 8))(v11, v7);
  }

  return v13;
}

uint64_t sub_2753FEAE4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v58 - v12;
  v14 = sub_27546E3B0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v19 + 32), v13, &qword_2809DAFC0, v9);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v13, v14);
    if (!a5)
    {
LABEL_26:
      (*(v15 + 8))(v18, v14);
      return a2;
    }

    *&v20 = COERCE_DOUBLE(sub_27546E380());
    if (v21 & 1) != 0 || (v22 = *&v20, *&v23 = COERCE_DOUBLE(sub_27546E390()), (v24))
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v25 = sub_27546E3E0();
      __swift_project_value_buffer(v25, qword_2809F3C00);
      v26 = sub_27546E3C0();
      v27 = sub_27546E6D0();
      if (!os_log_type_enabled(v26, v27))
      {
        goto LABEL_25;
      }

      v28 = swift_slowAlloc();
      *v28 = 0;
      v29 = "Spatial duration map: Spatial timing information incomplete. Stereo and/or spatial trailing silence not available.";
      v30 = v27;
      v31 = v26;
      v32 = v28;
      v33 = 2;
    }

    else
    {
      v58 = *&v23;
      v59 = a2;
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v34 = sub_27546E3E0();
      __swift_project_value_buffer(v34, qword_2809F3C00);
      v35 = sub_27546E3C0();
      v36 = sub_27546E6E0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134217984;
        *(v37 + 4) = a3;
        _os_log_impl(&dword_2753EC000, v35, v36, "Spatial duration map: Stereo duration = %f.", v37, 0xCu);
        MEMORY[0x277C78090](v37, -1, -1);
      }

      v38 = sub_27546E3C0();
      v39 = sub_27546E6E0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134217984;
        *(v40 + 4) = v22;
        _os_log_impl(&dword_2753EC000, v38, v39, "Spatial duration map: Stereo trailing silence duration = %f.", v40, 0xCu);
        MEMORY[0x277C78090](v40, -1, -1);
      }

      v41 = a3 - v22;

      v42 = sub_27546E3C0();
      v43 = sub_27546E6E0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 134217984;
        *(v44 + 4) = v41;
        _os_log_impl(&dword_2753EC000, v42, v43, "Spatial duration map: Stereo duration excluding trailing silence = %f.", v44, 0xCu);
        MEMORY[0x277C78090](v44, -1, -1);
      }

      v60 = v41;
      sub_2753EF850(&v60, a5, &v61);
      v45 = v61;
      v46 = sub_27546E3C0();
      v47 = sub_27546E6E0();
      v48 = os_log_type_enabled(v46, v47);
      a2 = v59;
      if (v48)
      {
        v49 = swift_slowAlloc();
        *v49 = 134217984;
        *(v49 + 4) = v45;
        _os_log_impl(&dword_2753EC000, v46, v47, "Spatial duration map: Spatial duration excluding trailing silence = %f.", v49, 0xCu);
        MEMORY[0x277C78090](v49, -1, -1);
      }

      v50 = v58;
      v51 = v58;

      v52 = sub_27546E3C0();
      v53 = sub_27546E6E0();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        *(v54 + 4) = v50;
        _os_log_impl(&dword_2753EC000, v52, v53, "Spatial duration map: Spatial trailing silence duration = %f.", v54, 0xCu);
        MEMORY[0x277C78090](v54, -1, -1);
      }

      v55 = v45 + v51;

      v26 = sub_27546E3C0();
      v56 = sub_27546E6E0();
      if (!os_log_type_enabled(v26, v56))
      {
        goto LABEL_25;
      }

      v28 = swift_slowAlloc();
      *v28 = 134217984;
      *(v28 + 4) = v55;
      v29 = "Spatial duration map: Spatial duration = %f.";
      v30 = v56;
      v31 = v26;
      v32 = v28;
      v33 = 12;
    }

    _os_log_impl(&dword_2753EC000, v31, v30, v29, v32, v33);
    MEMORY[0x277C78090](v28, -1, -1);
LABEL_25:

    goto LABEL_26;
  }

  sub_275404F64(v13, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  return a2;
}

double sub_2753FF0E0(double a1)
{
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v2 = sub_27546E3E0();
  __swift_project_value_buffer(v2, qword_2809F3C00);
  v3 = sub_27546E3C0();
  v4 = sub_27546E6E0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_2753EC000, v3, v4, "Maximum preferred transition duration: Song duration = %f.", v5, 0xCu);
    MEMORY[0x277C78090](v5, -1, -1);
  }

  if (a1 >= 60.0)
  {
    if (a1 + -30.0 > 0.0)
    {
      v17 = a1 + -30.0;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = sub_27546E3C0();
    v19 = sub_27546E6E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = 0x403E000000000000;
      _os_log_impl(&dword_2753EC000, v18, v19, "Maximum preferred transition duration: Minimum song duration excluding incoming and outgoing transition durations = %f.", v20, 0xCu);
      MEMORY[0x277C78090](v20, -1, -1);
    }

    v21 = sub_27546E3C0();
    v22 = sub_27546E6E0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v17;
      _os_log_impl(&dword_2753EC000, v21, v22, "Maximum preferred transition duration: Maximum incoming plus outgoing transition duration = %f.", v23, 0xCu);
      MEMORY[0x277C78090](v23, -1, -1);
    }

    v12 = v17 * 0.5;

    v24 = sub_27546E3C0();
    v25 = sub_27546E6E0();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v12;
      _os_log_impl(&dword_2753EC000, v24, v25, "Maximum preferred transition duration: Maximum transition duration = %f.", v26, 0xCu);
      MEMORY[0x277C78090](v26, -1, -1);
    }

    v13 = sub_27546E3C0();
    v14 = sub_27546E6E0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v12;
      v16 = "Maximum preferred transition duration: Maximum preferred offset from song boundary = %f.";
      goto LABEL_23;
    }
  }

  else
  {
    v6 = sub_27546E3C0();
    v7 = sub_27546E6E0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 0x404E000000000000;
      _os_log_impl(&dword_2753EC000, v6, v7, "Maximum preferred transition duration: Song duration < %f.", v8, 0xCu);
      MEMORY[0x277C78090](v8, -1, -1);
    }

    v9 = sub_27546E3C0();
    v10 = sub_27546E6E0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v9, v10, "Maximum preferred transition duration: Maximum transition duration for short song = %f.", v11, 0xCu);
      MEMORY[0x277C78090](v11, -1, -1);
    }

    v12 = fmin(a1, 2.0);

    v13 = sub_27546E3C0();
    v14 = sub_27546E6E0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v12;
      v16 = "Maximum preferred transition duration: Maximum offset from song boundary = %f.";
LABEL_23:
      _os_log_impl(&dword_2753EC000, v13, v14, v16, v15, 0xCu);
      MEMORY[0x277C78090](v15, -1, -1);
    }
  }

  return v12;
}

double sub_2753FF524(double a1)
{
  if (a1 <= 60.0)
  {
    v2 = a1;
  }

  else
  {
    v2 = 60.0;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v3 = sub_27546E3E0();
  __swift_project_value_buffer(v3, qword_2809F3C00);
  v4 = sub_27546E3C0();
  v5 = sub_27546E6E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_2753EC000, v4, v5, "Maximum outgoing transition duration: Song duration = %f.", v6, 0xCu);
    MEMORY[0x277C78090](v6, -1, -1);
  }

  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = 0x404E000000000000;
    _os_log_impl(&dword_2753EC000, v7, v8, "Maximum outgoing transition duration: Maximum transition duration for long song = %f.", v9, 0xCu);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v2;
    _os_log_impl(&dword_2753EC000, v10, v11, "Maximum outgoing transition duration: Maximum outgoing offset from song boundary = %f.", v12, 0xCu);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  return v2;
}

double sub_2753FF71C(double a1, double a2, double a3)
{
  if (a3 <= 60.0)
  {
    v5 = a3;
  }

  else
  {
    v5 = 60.0;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a1;
    _os_log_impl(&dword_2753EC000, v7, v8, "Maximum incoming transition duration: Song duration = %f.", v9, 0xCu);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = a3;
    _os_log_impl(&dword_2753EC000, v10, v11, "Maximum incoming transition duration: Maximum preferred offset from song boundary = %f.", v12, 0xCu);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  v13 = sub_27546E3C0();
  v14 = sub_27546E6E0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = 0x404E000000000000;
    _os_log_impl(&dword_2753EC000, v13, v14, "Maximum incoming transition duration: Maximum transition duration for long song = %f.", v15, 0xCu);
    MEMORY[0x277C78090](v15, -1, -1);
  }

  v16 = sub_27546E3C0();
  v17 = sub_27546E6E0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v5;
    _os_log_impl(&dword_2753EC000, v16, v17, "Maximum incoming transition duration: Maximum incoming offset from song boundary = %f.", v18, 0xCu);
    MEMORY[0x277C78090](v18, -1, -1);
  }

  return v5;
}

uint64_t *sub_2753FF994(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v8 = sub_275402854(a1, a4, a5);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v9 = sub_27546E3E0();
  __swift_project_value_buffer(v9, qword_2809F3C00);
  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_2753EC000, v10, v11, "Duration-based transition complexities: Expected duration = %f.", v12, 0xCu);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  v13 = sub_275402AC0(a2, a3 & 1, v8);

  v14 = sub_27546E3C0();
  v15 = sub_27546E6E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v44 = v17;
    *v16 = 136315138;
    v18 = MEMORY[0x277C77770](v13, &type metadata for Transition.Complexity);
    v20 = sub_275446968(v18, v19, &v44);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2753EC000, v14, v15, "Duration-based transition complexities: Complexities = %s.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x277C78090](v17, -1, -1);
    MEMORY[0x277C78090](v16, -1, -1);
  }

  v21 = sub_275402C30(a1);

  v22 = sub_27546E3C0();
  v23 = sub_27546E6E0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v44 = v25;
    *v24 = 136315138;
    v26 = MEMORY[0x277C77770](v21, &type metadata for Transition.Complexity);
    v28 = sub_275446968(v26, v27, &v44);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_2753EC000, v22, v23, "Spatial transition complexities: Complexities = %s.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x277C78090](v25, -1, -1);
    MEMORY[0x277C78090](v24, -1, -1);
  }

  v29 = sub_275460EB0(v13);
  v30 = sub_275460EB0(v21);
  v31 = sub_275405954(v30, v29);

  v44 = sub_2753FE03C(v31);

  sub_27540506C(&v44);

  v32 = v44;
  if (v44[2])
  {

    v33 = sub_27546E3C0();
    v34 = sub_27546E6E0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315138;
      v37 = MEMORY[0x277C77770](v32, &type metadata for Transition.Complexity);
      v39 = sub_275446968(v37, v38, &v44);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_2753EC000, v33, v34, "Transition complexities for song: Complexities = %s.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x277C78090](v36, -1, -1);
      MEMORY[0x277C78090](v35, -1, -1);
    }
  }

  else
  {

    v40 = sub_27546E3C0();
    v41 = sub_27546E6E0();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_2753EC000, v40, v41, "Transition complexities for song: None. Duration-based and spatial transition complexities do not overlap.", v42, 2u);
      MEMORY[0x277C78090](v42, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  return v32;
}

uint64_t _s22MusicKitStructuredSongVMa()
{
  result = qword_2809DAFE0;
  if (!qword_2809DAFE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2753FFEA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2753FFF08(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v39 - v9;
  v11 = sub_27543CF50(a2, &unk_288411310);
  v12 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v12 + 32), v10, &qword_2809DAFC0, v6);
  v13 = sub_27546E3B0();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v10, 1, v13);
  sub_275404F64(v10, &qword_2809DAFC0, v6);
  if (a1 == 1)
  {
    if ((v11 & 1) == 0)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v14 = sub_27546E3E0();
      __swift_project_value_buffer(v14, qword_2809F3C00);

      v15 = sub_27546E3C0();
      v16 = sub_27546E6E0();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v40 = v18;
        *v17 = 136315138;
        v19 = MEMORY[0x277C77770](a2, &type metadata for Transition.Complexity);
        v21 = sub_275446968(v19, v20, &v40);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_2753EC000, v15, v16, "Timing accuracy issues: Stereo timing inaccurate. Transition complexities reduced. Complexities = %s.", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x277C78090](v18, -1, -1);
        MEMORY[0x277C78090](v17, -1, -1);
      }

      v22 = 1;
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (v11)
  {
LABEL_9:
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v23 = sub_27546E3E0();
    __swift_project_value_buffer(v23, qword_2809F3C00);

    v24 = sub_27546E3C0();
    v25 = sub_27546E6E0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v27;
      *v26 = 136315138;
      v28 = MEMORY[0x277C77770](a2, &type metadata for Transition.Complexity);
      v30 = sub_275446968(v28, v29, &v40);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_2753EC000, v24, v25, "Timing accuracy issues: None. Transition complexities not subject to limitations. Complexities = %s.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x277C78090](v27, -1, -1);
      MEMORY[0x277C78090](v26, -1, -1);
    }

    v22 = 0;
    goto LABEL_19;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v31 = sub_27546E3E0();
  __swift_project_value_buffer(v31, qword_2809F3C00);

  v32 = sub_27546E3C0();
  v33 = sub_27546E6E0();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136315138;
    v36 = MEMORY[0x277C77770](a2, &type metadata for Transition.Complexity);
    v38 = sub_275446968(v36, v37, &v40);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_2753EC000, v32, v33, "Timing accuracy issues: Spatial timing inaccurate. Transition complexities reduced. Complexities = %s.", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x277C78090](v35, -1, -1);
    MEMORY[0x277C78090](v34, -1, -1);
  }

  v22 = 2;
LABEL_19:
  *a3 = v22;
}

uint64_t sub_2754003A8@<X0>(uint64_t *a1@<X0>, void (**a2)(uint64_t, char *, uint64_t)@<X8>)
{
  v4 = sub_27546E490();
  v109 = *(v4 - 8);
  v5 = *(v109 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v95 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v103 = &v95 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v104 = &v95 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v95 - v12;
  sub_275406650(0, &qword_2809DAFB8, MEMORY[0x277CD8320]);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v96 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v97 = &v95 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v108 = &v95 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v95 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v95 - v25;
  __swift_storeEnumTagSinglePayload(&v95 - v25, 1, 1, v4);
  v27 = *a1;
  v123 = v27;
  v122 = v26;
  swift_bridgeObjectRetain_n();
  v101 = sub_275424238(sub_275406DB0, v121, v27);
  v110 = v26;
  v120 = v26;
  v28 = sub_275406428(sub_275406408, v119, v27);
  *&v116 = v4;
  v99 = v27;
  v100 = 0;
  if ((v29 & 1) == 0)
  {
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_71;
    }

    v114 = v28;
    v98 = a2;
    a2 = (v109 + 40);
    *&v117 = v109 + 8;
    v105 = (v109 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v32 = v99;
    v106 = v109 + 16;
    v107 = v13;
    v102 = (v109 + 40);
    while (1)
    {
      v33 = *(v32 + 16);
      if (v31 == v33)
      {
        v30 = v114;
        a2 = v98;
        if (v31 >= v114)
        {
          goto LABEL_41;
        }

LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        swift_once();
LABEL_51:
        v70 = sub_27546E3E0();
        __swift_project_value_buffer(v70, qword_2809F3C00);

        v71 = sub_27546E3C0();
        v72 = sub_27546E6D0();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          *&v124[0] = v74;
          *v73 = 136315138;
          v75 = a2;
          v76 = MEMORY[0x277C77770](v26, &_s5GenreVN);
          v78 = v77;

          v79 = v76;
          a2 = v75;
          v80 = sub_275446968(v79, v78, v124);

          *(v73 + 4) = v80;
          _os_log_impl(&dword_2753EC000, v71, v72, "Genre hierarchy contains more than one root genre. Root genres = %s.", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          MEMORY[0x277C78090](v74, -1, -1);
          MEMORY[0x277C78090](v73, -1, -1);
        }

        else
        {
        }

        sub_275404F64(v110, &qword_2809DAFB8, MEMORY[0x277CD8320]);
LABEL_55:

        v66 = 0uLL;
        v67 = 0uLL;
        v68 = 0uLL;
        v69 = 0uLL;
        goto LABEL_64;
      }

      if (v31 >= v33)
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }

      v34 = (*(v109 + 80) + 32) & ~*(v109 + 80);
      *&v118 = v32;
      v111 = v34;
      v35 = v32 + v34;
      v112 = *(v109 + 72);
      v36 = *(v109 + 16);
      *&v115 = v112 * v31;
      v36(v13, v35 + v112 * v31, v4);
      sub_27546E480();
      if (__swift_getEnumTagSinglePayload(v24, 1, v4) == 1)
      {
        sub_275404F64(v24, &qword_2809DAFB8, MEMORY[0x277CD8320]);
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v37 = sub_27546E470();
        v38 = v39;
        (*v117)(v24, v4);
      }

      v26 = v108;
      v113 = v36;
      v40 = v24;
      sub_275404ED4(v110, v108, &qword_2809DAFB8, MEMORY[0x277CD8320]);
      if (__swift_getEnumTagSinglePayload(v26, 1, v4) == 1)
      {
        break;
      }

      v41 = v26;
      v26 = sub_27546E470();
      v43 = v42;
      a2 = *v117;
      (*v117)(v41, v4);
      if (!v38)
      {
        if (!v43)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (!v43)
      {
        goto LABEL_21;
      }

      if (v37 == v26 && v38 == v43)
      {

        v13 = v107;
        v4 = v116;
        (a2)(v107, v116);
LABEL_37:
        v24 = v40;
LABEL_38:
        v32 = v118;
        goto LABEL_39;
      }

      v26 = sub_27546E9A0();

      v13 = v107;
      (a2)(v107, v116);
      if (v26)
      {
        v4 = v116;
        goto LABEL_37;
      }

LABEL_25:
      v45 = v114;
      if (v31 == v114)
      {
        v4 = v116;
        v24 = v40;
        v32 = v118;
      }

      else
      {
        v4 = v116;
        if (v114 < 0)
        {
          goto LABEL_66;
        }

        v46 = *(v118 + 16);
        if (v114 >= v46)
        {
          goto LABEL_67;
        }

        v24 = v40;
        v26 = v112 * v114;
        v47 = v113;
        v113(v104, v35 + v112 * v114, v116);
        if (v31 >= v46)
        {
          goto LABEL_68;
        }

        v47(v103, v35 + v115, v4);
        v32 = v118;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27540663C(v32);
          v32 = v50;
        }

        a2 = v102;
        v48 = v32 + v111;
        v49 = *v102;
        (*v102)(v32 + v111 + v26, v103, v4);
        if (v31 >= *(v32 + 16))
        {
          goto LABEL_69;
        }

        v49(v48 + v115, v104, v4);
        v123 = v32;
        v45 = v114;
      }

      v114 = v45 + 1;
LABEL_39:
      ++v31;
    }

    sub_275404F64(v26, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    if (!v38)
    {
      a2 = *v117;
LABEL_35:
      v13 = v107;
      v24 = v40;
      v4 = v116;
      (a2)(v107, v116);
      goto LABEL_38;
    }

LABEL_21:

    a2 = *v117;
LABEL_24:
    v13 = v107;
    (a2)(v107, v116);
    goto LABEL_25;
  }

  v30 = *(v27 + 16);
  v31 = v30;
LABEL_41:
  sub_27540650C(v30, v31);
  v26 = sub_2753FDD38(v101, &v123);

  v51 = *(v26 + 16);
  if (!v51)
  {
    sub_275404F64(v110, &qword_2809DAFB8, MEMORY[0x277CD8320]);

    goto LABEL_55;
  }

  if (v51 != 1)
  {
    if (qword_2809DACB0 != -1)
    {
      goto LABEL_72;
    }

    goto LABEL_51;
  }

  v98 = a2;
  v53 = *(v26 + 32);
  v52 = *(v26 + 40);
  v54 = *(v26 + 48);

  if (*(v123 + 16))
  {

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v55 = sub_27546E3E0();
    __swift_project_value_buffer(v55, qword_2809F3C00);
    v56 = sub_27546E3C0();
    v57 = sub_27546E6D0();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&v124[0] = v59;
      *v58 = 136315138;

      v61 = MEMORY[0x277C77770](v60, v116);
      v63 = v62;

      v64 = sub_275446968(v61, v63, v124);

      *(v58 + 4) = v64;
      _os_log_impl(&dword_2753EC000, v56, v57, "Genre hierarchy contains orphaned subgenres. Orphaned subgenres = %s.", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x277C78090](v59, -1, -1);
      MEMORY[0x277C78090](v58, -1, -1);
    }

    sub_275404F64(v110, &qword_2809DAFB8, MEMORY[0x277CD8320]);

    v66 = 0uLL;
    v67 = 0uLL;
    v68 = 0uLL;
    v69 = 0uLL;
  }

  else
  {
    v81 = v97;
    sub_2753F8E7C(v99, v97);
    v82 = v96;
    sub_275404ED4(v81, v96, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    v83 = v116;
    if (__swift_getEnumTagSinglePayload(v82, 1, v116) == 1)
    {
      sub_275404F64(v81, &qword_2809DAFB8, MEMORY[0x277CD8320]);

      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v84 = sub_27546E3E0();
      __swift_project_value_buffer(v84, qword_2809F3C00);
      v85 = sub_27546E3C0();
      v86 = sub_27546E6D0();
      v87 = os_log_type_enabled(v85, v86);
      a2 = v98;
      if (v87)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_2753EC000, v85, v86, "Main genre not identified.", v88, 2u);
        MEMORY[0x277C78090](v88, -1, -1);
      }

      sub_275404F64(v110, &qword_2809DAFB8, MEMORY[0x277CD8320]);
      goto LABEL_55;
    }

    v89 = v109;
    v90 = v95;
    (*(v109 + 32))(v95, v82, v83);
    v91 = sub_27546E470();
    v93 = v92;
    (*(v89 + 8))(v90, v83);
    v94 = MEMORY[0x277CD8320];
    sub_275404F64(v81, &qword_2809DAFB8, MEMORY[0x277CD8320]);
    sub_2753F3210(v53, v52, v54, v91, v93, v124);
    v118 = v124[0];
    v117 = v124[1];
    v116 = v124[2];
    v115 = v124[3];
    sub_275404F64(v110, &qword_2809DAFB8, v94);

    v69 = v115;
    v68 = v116;
    v67 = v117;
    v66 = v118;
  }

  a2 = v98;
LABEL_64:
  *a2 = v66;
  *(a2 + 1) = v67;
  *(a2 + 2) = v68;
  *(a2 + 3) = v69;
  return result;
}

uint64_t sub_2754011B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D2A988];
  sub_275406650(0, &qword_2809DAFB0, MEMORY[0x277D2A988]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - v7;
  v9 = sub_27546E1B0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v14 + 28), v8, &qword_2809DAFB0, v4);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_275404F64(v8, &qword_2809DAFB0, MEMORY[0x277D2A988]);
    v16 = 0;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v21 = sub_27546E1A0();
    v22 = sub_275403EF4(v21);

    sub_2753F9D50(v22, v28);
    v23 = sub_2753FAB94();
    sub_2753FACA4(v23, v29);
    v27 = v29[0];
    v26 = v29[1];
    v25 = v29[2];
    v24 = v29[3];
    v16 = v30;

    sub_275405018(v28);
    result = (*(v10 + 8))(v13, v9);
    v20 = v24;
    v19 = v25;
    v18 = v26;
    v17 = v27;
  }

  *a2 = v17;
  *(a2 + 16) = v18;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 64) = v16;
  return result;
}

uint64_t sub_27540143C(uint64_t a1)
{
  v78 = a1;
  v1 = sub_27546E2F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v73 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v79 = &v55[-v6];
  v7 = sub_27546E300();
  v74 = *(v7 - 8);
  v8 = *(v74 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = &v55[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v55[-v11];
  v13 = sub_27546E350();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v55[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x277D2AAB8];
  sub_275406650(0, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v55[-v21];
  v23 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(v78 + *(v23 + 24), v22, &qword_2809DAF60, v18);
  v24 = sub_27546E2E0();
  if (__swift_getEnumTagSinglePayload(v22, 1, v24) == 1)
  {
    sub_275404F64(v22, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
    return 0;
  }

  v78 = v2;
  v25 = sub_27546E230();
  (*(*(v24 - 8) + 8))(v22, v24);
  v26 = *(v25 + 16);
  if (!v26)
  {

    return 0;
  }

  v28 = *(v14 + 16);
  v27 = v14 + 16;
  v77 = v28;
  v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
  v57 = v25;
  v30 = v25 + v29;
  v76 = *(v27 + 56);
  v70 = (v74 + 88);
  v71 = (v74 + 16);
  v69 = *MEMORY[0x277D2AC48];
  v62 = *MEMORY[0x277D2AC30];
  v60 = *MEMORY[0x277D2AC40];
  v58 = *MEMORY[0x277D2AC38];
  v56 = *MEMORY[0x277D2AC50];
  v67 = (v78 + 16);
  v68 = (v74 + 8);
  v66 = (v78 + 88);
  v65 = *MEMORY[0x277D2AC28];
  v61 = *MEMORY[0x277D2AC18];
  v64 = (v78 + 8);
  v59 = *MEMORY[0x277D2AC20];
  v78 = v27;
  v31 = (v27 - 8);
  v32 = MEMORY[0x277D84F90];
  v63 = v1;
  v75 = v13;
  do
  {
    v77(v17, v30, v13);
    sub_27546E330();
    v34 = v33;
    sub_27546E310();
    if (v35 < v34)
    {
      goto LABEL_6;
    }

    v36 = v35;
    sub_27546E340();
    v37 = v72;
    (*v71)(v72, v12, v7);
    v38 = (*v70)(v37, v7);
    if (v38 == v69)
    {
      LODWORD(v74) = 0;
    }

    else
    {
      if (v38 == v62)
      {
        v39 = 1;
      }

      else if (v38 == v60)
      {
        v39 = 2;
      }

      else if (v38 == v58)
      {
        v39 = 3;
      }

      else
      {
        if (v38 != v56)
        {
          v50 = *v68;
          (*v68)(v72, v7);
          v50(v12, v7);
          goto LABEL_33;
        }

        v39 = 4;
      }

      LODWORD(v74) = v39;
    }

    v40 = v12;
    v41 = v12;
    v42 = v7;
    (*v68)(v41, v7);
    v43 = v79;
    sub_27546E320();
    v44 = v73;
    (*v67)(v73, v43, v1);
    v45 = (*v66)(v44, v1);
    if (v45 != v65)
    {
      if (v45 == v61)
      {
        v46 = 1;
        goto LABEL_24;
      }

      if (v45 == v59)
      {
        v46 = 2;
        goto LABEL_24;
      }

      v49 = *v64;
      (*v64)(v73, v1);
      v49(v79, v1);
      v7 = v42;
      v12 = v40;
LABEL_33:
      v13 = v75;
LABEL_6:
      (*v31)(v17, v13);
      goto LABEL_29;
    }

    v46 = 0;
LABEL_24:
    (*v64)(v79, v1);
    (*v31)(v17, v75);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = *(v32 + 16);
      sub_275431804();
      v32 = v52;
    }

    v47 = *(v32 + 16);
    if (v47 >= *(v32 + 24) >> 1)
    {
      sub_275431804();
      v32 = v53;
    }

    *(v32 + 16) = v47 + 1;
    v48 = v32 + 24 * v47;
    *(v48 + 32) = v34;
    *(v48 + 40) = v36;
    *(v48 + 48) = v46;
    *(v48 + 49) = v74;
    v1 = v63;
    v7 = v42;
    v12 = v40;
    v13 = v75;
LABEL_29:
    v30 += v76;
    --v26;
  }

  while (v26);

  return v32;
}

char *sub_275401B6C(uint64_t a1, double a2)
{
  v4 = MEMORY[0x277D2AAB8];
  sub_275406650(0, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v37 - v7;
  sub_275406650(0, &qword_2809DAFA8, MEMORY[0x277D2A9C0]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v37 - v11;
  v13 = sub_27546E210();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v18 + 24), v8, &qword_2809DAF60, v4);
  v19 = sub_27546E2E0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    sub_275404F64(v8, &qword_2809DAF60, MEMORY[0x277D2AAB8]);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
LABEL_4:
    sub_275404F64(v12, &qword_2809DAFA8, MEMORY[0x277D2A9C0]);
    return 0;
  }

  sub_27546E220();
  (*(*(v19 - 8) + 8))(v8, v19);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    goto LABEL_4;
  }

  (*(v14 + 32))(v17, v12, v13);
  v20 = *(sub_27546E200() + 16);

  if (!v20)
  {
LABEL_20:
    (*(v14 + 8))(v17, v13);
    return v20;
  }

  v22 = COERCE_DOUBLE(sub_27546E1F0());
  if (v24 & 1) != 0 && (v25 = *(sub_27546E200() + 16), , v23.n128_f64[0] = sub_275404584(v25, a2), (v26) || (v27 = v22, v22 <= 0.0))
  {
    (*(v14 + 8))(v17, v13, v23);
    return 0;
  }

  v28 = sub_27546E200();
  v29 = *(v28 + 16);
  if (!v29)
  {

    (*(v14 + 8))(v17, v13);
    return MEMORY[0x277D84F90];
  }

  v38 = MEMORY[0x277D84F90];
  v30 = 1.0 / v27;
  result = sub_27544116C(0, v29, 0);
  v31 = 0;
  v20 = v38;
  v32 = *(v28 + 16);
  while (v32 != v31)
  {
    if (v31 >= *(v28 + 16))
    {
      goto LABEL_23;
    }

    v33 = *(v28 + 8 * v31 + 32);
    v38 = v20;
    v35 = *(v20 + 16);
    v34 = *(v20 + 24);
    if (v35 >= v34 >> 1)
    {
      result = sub_27544116C((v34 > 1), v35 + 1, 1);
      v20 = v38;
    }

    *(v20 + 16) = v35 + 1;
    v36 = v20 + 16 * v35;
    *(v36 + 32) = v33;
    *(v36 + 40) = v30 * v31++;
    if (v29 == v31)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_275401F90(uint64_t a1)
{
  sub_275406650(0, &qword_2809DAF68, sub_2753FE800);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  sub_275406650(0, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_275404ED4(a1, v11, &qword_2809DAF68, sub_2753FE800);
  sub_2753FE800();
  v23 = v22;
  if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
  {
    sub_275404F64(v11, &qword_2809DAF68, sub_2753FE800);
    v24 = 1;
  }

  else
  {
    sub_27546E240();
    (*(*(v23 - 8) + 8))(v11, v23);
    v24 = 0;
  }

  v25 = sub_27546E2C0();
  __swift_storeEnumTagSinglePayload(v21, v24, 1, v25);
  v26 = sub_2754045C4(v21);
  sub_275404F64(v21, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  if ((v26 & 0xFF00) == 0x300)
  {
    return 50331648;
  }

  sub_275404ED4(a1, v9, &qword_2809DAF68, sub_2753FE800);
  if (__swift_getEnumTagSinglePayload(v9, 1, v23) == 1)
  {
    sub_275404F64(v9, &qword_2809DAF68, sub_2753FE800);
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v25);
  }

  else
  {
    sub_27546E260();
    (*(*(v23 - 8) + 8))(v9, v23);
  }

  v28 = sub_2754045C4(v19);
  sub_275404F64(v19, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  sub_275404ED4(a1, v6, &qword_2809DAF68, sub_2753FE800);
  if (__swift_getEnumTagSinglePayload(v6, 1, v23) == 1)
  {
    sub_275404F64(v6, &qword_2809DAF68, sub_2753FE800);
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v25);
  }

  else
  {
    sub_27546E250();
    (*(*(v23 - 8) + 8))(v6, v23);
  }

  v29 = sub_2754045C4(v16);
  sub_275404F64(v16, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  return v28 | (v26 << 16) | (HIBYTE(v26) << 24) | (v29 << 32);
}

uint64_t sub_275402414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_275406650(0, &qword_2809DAF50, sub_2753FE784);
  v5 = OUTLINED_FUNCTION_11_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_1();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v49 - v15;
  sub_275404ED4(a1, &v49 - v15, &qword_2809DAF50, sub_2753FE784);
  sub_2753FE784();
  v18 = v17;
  OUTLINED_FUNCTION_13_0(v16);
  if (v35)
  {
    OUTLINED_FUNCTION_0_12();
    result = sub_275404F64(v16, v19, v20);
  }

  else
  {
    sub_27546E240();
    v21 = v49;
    OUTLINED_FUNCTION_0_9(v18);
    v23 = *(v22 + 8);
    result = v23(v16, v18);
    if (v21 >= 0.0 && v21 <= 1.0)
    {
      v32 = OUTLINED_FUNCTION_5_3();
      sub_275404ED4(v32, v14, v33, v34);
      OUTLINED_FUNCTION_13_0(v14);
      if (v35)
      {
        OUTLINED_FUNCTION_0_12();
        sub_275404F64(v14, v36, v37);
        v26 = 0.0;
        v27 = 1;
      }

      else
      {
        sub_27546E260();
        v38 = v49;
        v39 = v50;
        v23(v14, v18);
        v40 = v38 > 1.0 || v38 < 0.0;
        if (v40)
        {
          v41 = 0.0;
        }

        else
        {
          v41 = v38;
        }

        if (v39)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v41;
        }

        v27 = (v39 & 1) != 0 || v40;
      }

      v42 = OUTLINED_FUNCTION_5_3();
      sub_275404ED4(v42, v10, v43, v44);
      OUTLINED_FUNCTION_13_0(v10);
      if (v35)
      {
        OUTLINED_FUNCTION_0_12();
        result = sub_275404F64(v10, v45, v46);
      }

      else
      {
        sub_27546E250();
        v47 = v49;
        v48 = v50;
        result = v23(v10, v18);
        if ((v48 & 1) == 0)
        {
          v30 = v47 < 0.0;
          if (v47 > 1.0)
          {
            v30 = 1;
          }

          if (v30)
          {
            v29 = 0.0;
          }

          else
          {
            v29 = v47;
          }

          goto LABEL_35;
        }
      }

      v29 = 0.0;
      LOBYTE(v30) = 1;
LABEL_35:
      v31 = 0;
      v28 = v21;
      goto LABEL_36;
    }
  }

  v26 = 0.0;
  v27 = 0;
  v28 = 0.0;
  v29 = 0.0;
  LOBYTE(v30) = 0;
  v31 = 1;
LABEL_36:
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v28;
  *(a2 + 24) = v29;
  *(a2 + 32) = v30;
  *(a2 + 33) = v31;
  return result;
}

double sub_2754026F8@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

double sub_275402708@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 32));
  *a2 = result;
  return result;
}

double sub_275402718@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 36));
  *a2 = result;
  return result;
}

__n128 sub_2754027E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 72);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

__n128 sub_27540280C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 76);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

__n128 sub_275402830@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 80);
  v4 = *(v3 + 32);
  v5 = *(v3 + 33);
  result = *v3;
  v7 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v7;
  *(a2 + 32) = v4;
  *(a2 + 33) = v5;
  return result;
}

double sub_275402854(uint64_t a1, double a2, double a3)
{
  v6 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v11 + 32), v10, &qword_2809DAFC0, v6);
  v12 = sub_27546E3B0();
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v10, 1, v12);
  sub_275404F64(v10, &qword_2809DAFC0, v6);
  if (a1 == 1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v13 = sub_27546E3E0();
    __swift_project_value_buffer(v13, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (!os_log_type_enabled(v14, v15))
    {
      a3 = a2;
      goto LABEL_12;
    }

    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a2;
    _os_log_impl(&dword_2753EC000, v14, v15, "Expected duration: Song is stereo. Expected stereo duration = %f.", v16, 0xCu);
    a3 = a2;
    goto LABEL_10;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v17 = sub_27546E3E0();
  __swift_project_value_buffer(v17, qword_2809F3C00);
  v14 = sub_27546E3C0();
  v18 = sub_27546E6E0();
  if (os_log_type_enabled(v14, v18))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a3;
    _os_log_impl(&dword_2753EC000, v14, v18, "Expected duration: Song is spatial. Expected spatial duration = %f.", v16, 0xCu);
LABEL_10:
    MEMORY[0x277C78090](v16, -1, -1);
  }

LABEL_12:

  return a3;
}

uint64_t sub_275402AC0(uint64_t a1, char a2, double a3)
{
  v3 = sub_275402EAC(a1, a2 & 1, a3);
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v4 = sub_27546E3E0();
  __swift_project_value_buffer(v4, qword_2809F3C00);
  v5 = sub_27546E3C0();
  v6 = sub_27546E6E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    v9 = sub_27546E540();
    v11 = sub_275446968(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2753EC000, v5, v6, "Confidence in duration: Confidence = %s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x277C78090](v8, -1, -1);
    MEMORY[0x277C78090](v7, -1, -1);
  }

  return *(&off_27A64AF50 + v3);
}

void *sub_275402C30(uint64_t a1)
{
  v2 = MEMORY[0x277D2AC90];
  sub_275406650(0, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v19 - v5;
  v7 = sub_27546E3B0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  sub_275404ED4(a1 + *(v12 + 32), v6, &qword_2809DAFC0, v2);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_275404F64(v6, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v13 = sub_27546E3E0();
    __swift_project_value_buffer(v13, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_2753EC000, v14, v15, "Spatial transition complexities: Using default complexities. Not spatial playback.", v16, 2u);
      MEMORY[0x277C78090](v16, -1, -1);
    }

    return &unk_288411310;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v17 = sub_275403204();
    (*(v8 + 8))(v11, v7);
  }

  return v17;
}

uint64_t sub_275402EAC(uint64_t a1, char a2, double a3)
{
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v6 = sub_27546E3E0();
  __swift_project_value_buffer(v6, qword_2809F3C00);
  v7 = sub_27546E3C0();
  v8 = sub_27546E6E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = a3;
    _os_log_impl(&dword_2753EC000, v7, v8, "Confidence in duration: Expected duration = %f.", v9, 0xCu);
    MEMORY[0x277C78090](v9, -1, -1);
  }

  if ((a2 & 1) == 0)
  {
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = a1;
      _os_log_impl(&dword_2753EC000, v14, v15, "Confidence in duration: Actual duration = %f.", v16, 0xCu);
      MEMORY[0x277C78090](v16, -1, -1);
    }

    v17 = vabdd_f64(a3, *&a1);
    v18 = sub_27546E3C0();
    v19 = sub_27546E6E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_2753EC000, v18, v19, "Confidence in duration: Duration delta = %f.", v20, 0xCu);
      MEMORY[0x277C78090](v20, -1, -1);
    }

    v10 = sub_27546E3C0();
    v21 = sub_27546E6E0();
    v22 = os_log_type_enabled(v10, v21);
    if (v17 >= 2.0)
    {
      if (!v22)
      {
        v12 = 0;
        goto LABEL_20;
      }

      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v10, v21, "Confidence in duration: None: Duration delta >= %f.", v13, 0xCu);
      v12 = 0;
      goto LABEL_17;
    }

    if (v22)
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = 0x4000000000000000;
      _os_log_impl(&dword_2753EC000, v10, v21, "Confidence in duration: High: Duration delta < %f.", v13, 0xCu);
      v12 = 2;
      goto LABEL_17;
    }

LABEL_18:
    v12 = 2;
    goto LABEL_20;
  }

  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (!os_log_type_enabled(v10, v11))
  {
    goto LABEL_18;
  }

  v12 = 2;
  v13 = swift_slowAlloc();
  *v13 = 0;
  _os_log_impl(&dword_2753EC000, v10, v11, "Confidence in duration: High: Song is not downloaded.", v13, 2u);
LABEL_17:
  MEMORY[0x277C78090](v13, -1, -1);
LABEL_20:

  return v12;
}

void *sub_275403204()
{
  v0 = sub_2754035D0();
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v1 = sub_27546E3E0();
  __swift_project_value_buffer(v1, qword_2809F3C00);
  v2 = sub_27546E3C0();
  v3 = sub_27546E6E0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136315138;
    v6 = sub_27546E540();
    v8 = sub_275446968(v6, v7, &v24);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2753EC000, v2, v3, "Confidence in spatial song being close match: Confidence = %s.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x277C78090](v5, -1, -1);
    MEMORY[0x277C78090](v4, -1, -1);
  }

  v9 = sub_275403810();
  v10 = sub_27546E3C0();
  v11 = sub_27546E6E0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    v14 = sub_27546E540();
    v16 = sub_275446968(v14, v15, &v24);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2753EC000, v10, v11, "Confidence in spatial time drift: Confidence = %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x277C78090](v13, -1, -1);
    MEMORY[0x277C78090](v12, -1, -1);
  }

  if (v0)
  {
    if (v0 == 1)
    {
      if (v9 == 2)
      {
        v17 = sub_27546E3C0();
        v18 = sub_27546E6E0();
        if (!os_log_type_enabled(v17, v18))
        {
          v20 = &unk_288411388;
          goto LABEL_19;
        }

        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2753EC000, v17, v18, "Spatial transition complexities: Only beat-matched or fallback transitions allowed. Low confidence in close match but high confidence in time drift.", v19, 2u);
        v20 = &unk_288411388;
        goto LABEL_17;
      }
    }

    else if (v9 == 2)
    {
      v17 = sub_27546E3C0();
      v21 = sub_27546E6E0();
      if (!os_log_type_enabled(v17, v21))
      {
        v20 = &unk_288411310;
        goto LABEL_19;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2753EC000, v17, v21, "Spatial transition complexities: All transitions allowed. High confidence in close match and time drift.", v19, 2u);
      v20 = &unk_288411310;
      goto LABEL_17;
    }
  }

  v17 = sub_27546E3C0();
  v22 = sub_27546E6E0();
  if (!os_log_type_enabled(v17, v22))
  {
    v20 = &unk_2884113B0;
    goto LABEL_19;
  }

  v19 = swift_slowAlloc();
  *v19 = 0;
  _os_log_impl(&dword_2753EC000, v17, v22, "Spatial transition complexities: Only fallback transitions allowed. Low or no confidence in close match and/or time drift.", v19, 2u);
  v20 = &unk_2884113B0;
LABEL_17:
  MEMORY[0x277C78090](v19, -1, -1);
LABEL_19:

  return v20;
}

uint64_t sub_2754035D0()
{
  v0 = sub_27546E370();
  if (v0 == 2)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v1 = sub_27546E3E0();
    __swift_project_value_buffer(v1, qword_2809F3C00);
    v2 = sub_27546E3C0();
    v3 = sub_27546E6D0();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 0;
LABEL_17:

      return v5;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2753EC000, v2, v3, "Confidence in spatial song being close match: None. Spatial timing information incomplete. Flag indicating close match not available.", v4, 2u);
    v5 = 0;
LABEL_15:
    MEMORY[0x277C78090](v4, -1, -1);
    goto LABEL_17;
  }

  v6 = v0;
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v7 = sub_27546E3E0();
  __swift_project_value_buffer(v7, qword_2809F3C00);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6 & 1;
    _os_log_impl(&dword_2753EC000, v8, v9, "Confidence in spatial song being close match: Close match = %{BOOL}d.", v10, 8u);
    MEMORY[0x277C78090](v10, -1, -1);
  }

  if ((v6 & 1) == 0)
  {
    v2 = sub_27546E3C0();
    v11 = sub_27546E6E0();
    if (!os_log_type_enabled(v2, v11))
    {
      v5 = 1;
      goto LABEL_17;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2753EC000, v2, v11, "Confidence in spatial song being close match: Low. Not close match.", v4, 2u);
    v5 = 1;
    goto LABEL_15;
  }

  return 2;
}

uint64_t sub_275403810()
{
  v0 = sub_27546E3A0();
  if (v1)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v2 = sub_27546E3E0();
    __swift_project_value_buffer(v2, qword_2809F3C00);
    v3 = sub_27546E3C0();
    v4 = sub_27546E6D0();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2753EC000, v3, v4, "Confidence in spatial time drift: None. Spatial timing information incomplete. Time drift not available.", v5, 2u);
    v6 = 0;
LABEL_13:
    MEMORY[0x277C78090](v5, -1, -1);
LABEL_17:

    return v6;
  }

  v7 = *&v0;
  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v8 = sub_27546E3E0();
  __swift_project_value_buffer(v8, qword_2809F3C00);
  v9 = sub_27546E3C0();
  v10 = sub_27546E6E0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v7;
    _os_log_impl(&dword_2753EC000, v9, v10, "Confidence in spatial time drift: Time drift = %f.", v11, 0xCu);
    MEMORY[0x277C78090](v11, -1, -1);
  }

  if (v7 > 0.04)
  {
    v3 = sub_27546E3C0();
    v12 = sub_27546E6E0();
    if (!os_log_type_enabled(v3, v12))
    {
      v6 = 1;
      goto LABEL_17;
    }

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = 0x3FA47AE147AE147BLL;
    _os_log_impl(&dword_2753EC000, v3, v12, "Confidence in spatial time drift: Low. Time drift > %f.", v5, 0xCu);
    v6 = 1;
    goto LABEL_13;
  }

  return 2;
}

uint64_t sub_275403A74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  sub_275406650(0, v3, v4);
  v6 = OUTLINED_FUNCTION_11_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_8_1();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  sub_27546E480();
  v15 = sub_27546E490();
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v16, v17, v18) == 1)
  {
    OUTLINED_FUNCTION_3_5();
    sub_275404F64(v14, v19, v20);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = sub_27546E470();
    v22 = v23;
    OUTLINED_FUNCTION_4_3();
    (*(v24 + 8))(v14, v15);
  }

  sub_275404ED4(a2, v11, &qword_2809DAFB8, MEMORY[0x277CD8320]);
  OUTLINED_FUNCTION_9_1();
  if (__swift_getEnumTagSinglePayload(v25, v26, v27) == 1)
  {
    OUTLINED_FUNCTION_3_5();
    sub_275404F64(v11, v28, v29);
    if (!v22)
    {
      goto LABEL_17;
    }

LABEL_14:
    v35 = 0;
LABEL_19:

    return v35 & 1;
  }

  v30 = sub_27546E470();
  v32 = v31;
  OUTLINED_FUNCTION_4_3();
  (*(v33 + 8))(v11, v15);
  if (v22)
  {
    if (v32)
    {
      if (v21 == v30 && v22 == v32)
      {

        v35 = 1;
      }

      else
      {
        v35 = sub_27546E9A0();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v32)
  {
    v35 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_275403CA4()
{
  sub_275403DF4(v7);
  if (v8)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v0 = sub_27546E3E0();
    __swift_project_value_buffer(v0, qword_2809F3C00);
    v1 = sub_27546E3C0();
    v2 = sub_27546E6D0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2753EC000, v1, v2, "Spatial time alignment map: Spatial timing information incomplete. Transformation between stereo and spatial times not identified.", v3, 2u);
      MEMORY[0x277C78090](v3, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v6 = v7[0];
    v5 = v7[1];
    sub_275406C8C(0, &qword_2809DAFD8, &_s25SpatialTimeAlignmentPointVN, MEMORY[0x277D84560]);
    result = swift_allocObject();
    *(result + 16) = xmmword_275474500;
    *(result + 32) = v6;
    *(result + 40) = v5;
  }

  return result;
}

void sub_275403DF4(uint64_t a1@<X8>)
{
  v2 = sub_27546E360();
  if (v3)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v4 = sub_27546E3E0();
    __swift_project_value_buffer(v4, qword_2809F3C00);
    v5 = sub_27546E3C0();
    v6 = sub_27546E6D0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2753EC000, v5, v6, "Spatial time alignment map: Spatial timing information incomplete. Start offset not available.", v7, 2u);
      MEMORY[0x277C78090](v7, -1, -1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = v2;
    *(a1 + 16) = 0;
  }
}

uint64_t sub_275403EF4(uint64_t a1)
{
  v2 = sub_27546E170();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = sub_27546E190();
  v9 = 0;
  v72 = 0;
  v74 = 0;
  v10 = (v3 + 88);
  v11 = *(v8 - 8);
  v12 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v13 = *(v11 + 72);
  v70 = *MEMORY[0x277D2A970];
  v68 = *MEMORY[0x277D2A978];
  v63 = *MEMORY[0x277D2A968];
  v75 = MEMORY[0x277D84F90];
  v59 = (v3 + 8);
  v14 = 0;
  v61 = *MEMORY[0x277D2A980];
  v69 = 1;
  v71 = 1;
  v73 = 1;
  v15 = 1;
  v66 = v6;
  v67 = v2;
  v65 = v13;
  while (1)
  {
    v16 = MEMORY[0x277C772B0]();
    sub_27546E180();
    result = (*v10)(v6, v2);
    if (result == v70)
    {
      break;
    }

    if (result == v68)
    {
      if (v15)
      {
        v14 = 0;
      }

      else
      {
        v18 = __OFADD__(v14++, 1);
        if (v18)
        {
          goto LABEL_63;
        }
      }

      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v18 = __OFADD__(v74++, 1);
        if (v18)
        {
          goto LABEL_64;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = *(v75 + 16);
        sub_2754315B8();
        v75 = v51;
      }

      v29 = *(v75 + 16);
      v30 = v64;
      if (v29 >= *(v75 + 24) >> 1)
      {
        sub_2754315B8();
        v30 = v64;
        v75 = v52;
      }

      v73 = 0;
      v80 = v71 & 1;
      v79 = v69 & 1;
      v31 = v30 & 1 | 0x40;
      v33 = v74;
      v32 = v75;
      *(v75 + 16) = v29 + 1;
      v34 = v32 + (v29 << 6);
      v15 = 0;
      *(v34 + 32) = v16;
      *(v34 + 40) = v14;
      *(v34 + 48) = v33;
      *(v34 + 56) = v72;
      *(v34 + 64) = v80;
      *(v34 + 72) = v9;
      *(v34 + 80) = v79;
      *(v34 + 88) = v31;
      v64 = v31;
    }

    else if (result == v63)
    {
      if (v15)
      {
        v14 = 0;
      }

      else
      {
        v18 = __OFADD__(v14++, 1);
        if (v18)
        {
          goto LABEL_65;
        }
      }

      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v18 = __OFADD__(v74++, 1);
        if (v18)
        {
          goto LABEL_66;
        }
      }

      if (v71)
      {
        v72 = 0;
      }

      else
      {
        v18 = __OFADD__(v72++, 1);
        if (v18)
        {
          goto LABEL_67;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = *(v75 + 16);
        sub_2754315B8();
        v75 = v54;
      }

      v35 = *(v75 + 16);
      v36 = v62;
      if (v35 >= *(v75 + 24) >> 1)
      {
        sub_2754315B8();
        v36 = v62;
        v75 = v55;
      }

      v71 = 0;
      v73 = 0;
      v81 = v69 & 1;
      v37 = v36 & 1 | 0xFFFFFF80;
      v39 = v74;
      v38 = v75;
      *(v75 + 16) = v35 + 1;
      v40 = v38 + (v35 << 6);
      v15 = 0;
      *(v40 + 32) = v16;
      *(v40 + 40) = v14;
      *(v40 + 48) = v39;
      *(v40 + 56) = v72;
      *(v40 + 64) = v9;
      *(v40 + 72) = v81;
      *(v40 + 88) = v37;
      v62 = v37;
    }

    else if (result == v61)
    {
      if (v15)
      {
        v14 = 0;
      }

      else
      {
        v18 = __OFADD__(v14++, 1);
        if (v18)
        {
          goto LABEL_68;
        }
      }

      if (v73)
      {
        v74 = 0;
      }

      else
      {
        v18 = __OFADD__(v74++, 1);
        if (v18)
        {
          goto LABEL_69;
        }
      }

      if (v71)
      {
        v72 = 0;
      }

      else
      {
        v18 = __OFADD__(v72++, 1);
        if (v18)
        {
          goto LABEL_70;
        }
      }

      if (v69)
      {
        v9 = 0;
      }

      else
      {
        v18 = __OFADD__(v9++, 1);
        if (v18)
        {
          goto LABEL_71;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v75 + 16);
        sub_2754315B8();
        v75 = v57;
      }

      v41 = *(v75 + 16);
      v42 = v60;
      if (v41 >= *(v75 + 24) >> 1)
      {
        sub_2754315B8();
        v42 = v60;
        v75 = v58;
      }

      v69 = 0;
      v71 = 0;
      v73 = 0;
      v43 = v75;
      *(v75 + 16) = v41 + 1;
      v44 = v42 & 1 | 0xFFFFFFC0;
      v45 = v43 + (v41 << 6);
      v15 = 0;
      *(v45 + 32) = v16;
      v46 = v74;
      *(v45 + 40) = v14;
      *(v45 + 48) = v46;
      *(v45 + 56) = v72;
      *(v45 + 64) = v9;
      *(v45 + 88) = v44;
      v60 = v44;
    }

    else
    {
      (*v59)(v6, v2);
    }

LABEL_58:
    v12 += v13;
    if (!--v7)
    {
      return v75;
    }
  }

  if (v15)
  {
    v14 = 0;
LABEL_10:
    v19 = v10;
    v78 = v73 & 1;
    v77 = v71 & 1;
    v20 = v69 & 1;
    v76 = v69 & 1;
    v21 = v73 & 1;
    v22 = v71 & 1;
    v23 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = *(v75 + 16);
      sub_2754315B8();
      v75 = v48;
    }

    v24 = *(v75 + 16);
    if (v24 >= *(v75 + 24) >> 1)
    {
      sub_2754315B8();
      v75 = v49;
    }

    v26 = v74;
    v25 = v75;
    *(v75 + 16) = v24 + 1;
    v27 = v25 + (v24 << 6);
    *(v27 + 32) = v16;
    *(v27 + 40) = v14;
    *(v27 + 48) = v26;
    v28 = v72;
    *(v27 + 56) = v21;
    *(v27 + 64) = v28;
    *(v27 + 72) = v22;
    *(v27 + 80) = v23;
    v15 = 0;
    v9 = v23;
    *(v27 + 88) = v20;
    v6 = v66;
    v2 = v67;
    v10 = v19;
    v13 = v65;
    goto LABEL_58;
  }

  v18 = __OFADD__(v14++, 1);
  if (!v18)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

double sub_275404584(int64_t a1, double result)
{
  if (result > 0.0 && a1 >= 1)
  {
    return a1 / result;
  }

  return result;
}

uint64_t sub_2754045C4(uint64_t a1)
{
  sub_275406650(0, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - v4;
  v6 = MEMORY[0x277D2AA98];
  sub_275406650(0, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  sub_275406650(0, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v25 - v16;
  sub_275404ED4(a1, v13, &qword_2809DAF90, v6);
  v18 = sub_27546E2C0();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_275404F64(v13, &qword_2809DAF90, MEMORY[0x277D2AA98]);
    v19 = sub_27546E2A0();
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  }

  else
  {
    sub_27546E2B0();
    (*(*(v18 - 8) + 8))(v13, v18);
  }

  v20 = sub_27540493C(v17);
  sub_275404F64(v17, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  if (v20 == 12)
  {
    return 768;
  }

  sub_275404ED4(a1, v11, &qword_2809DAF90, MEMORY[0x277D2AA98]);
  if (__swift_getEnumTagSinglePayload(v11, 1, v18) == 1)
  {
    sub_275404F64(v11, &qword_2809DAF90, MEMORY[0x277D2AA98]);
    v21 = sub_27546E280();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v21);
  }

  else
  {
    sub_27546E290();
    (*(*(v18 - 8) + 8))(v11, v18);
  }

  v22 = sub_275404CD8(v5);
  sub_275404F64(v5, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  if (v22 == 3)
  {
    return 768;
  }

  else
  {
    return v20 | (v22 << 8);
  }
}

uint64_t sub_27540493C(uint64_t a1)
{
  v2 = MEMORY[0x277D2AA90];
  sub_275406650(0, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  sub_275404ED4(a1, &v19 - v8, &qword_2809DAFA0, v2);
  v10 = sub_27546E2A0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    goto LABEL_2;
  }

  sub_275404ED4(v9, v7, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  v12 = *(v10 - 8);
  v13 = (*(v12 + 88))(v7, v10);
  if (v13 == *MEMORY[0x277D2AA20])
  {
LABEL_4:
    v11 = 0;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2A9E8])
  {
    v11 = 1;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA58] || v13 == *MEMORY[0x277D2AA28])
  {
    v11 = 2;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2A9F0])
  {
LABEL_14:
    v11 = 3;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA60])
  {
    goto LABEL_16;
  }

  if (v13 == *MEMORY[0x277D2AA30])
  {
    goto LABEL_14;
  }

  if (v13 == *MEMORY[0x277D2A9F8])
  {
LABEL_16:
    v11 = 4;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA68] || v13 == *MEMORY[0x277D2AA38])
  {
    v11 = 5;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA00])
  {
    v11 = 6;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA70] || v13 == *MEMORY[0x277D2AA40])
  {
    v11 = 7;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA08])
  {
LABEL_35:
    v11 = 8;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA78])
  {
    goto LABEL_37;
  }

  if (v13 == *MEMORY[0x277D2AA48])
  {
    goto LABEL_35;
  }

  if (v13 == *MEMORY[0x277D2AA10])
  {
LABEL_37:
    v11 = 9;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA80] || v13 == *MEMORY[0x277D2AA50])
  {
    v11 = 10;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA18])
  {
    v11 = 11;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D2AA88])
  {
    goto LABEL_4;
  }

  (*(v12 + 8))(v7, v10);
LABEL_2:
  v11 = 12;
LABEL_17:
  sub_275404F64(v9, &qword_2809DAFA0, MEMORY[0x277D2AA90]);
  return v11;
}

uint64_t sub_275404CD8(uint64_t a1)
{
  v2 = MEMORY[0x277D2A9E0];
  sub_275406650(0, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  sub_275404ED4(a1, &v15 - v8, &qword_2809DAF98, v2);
  v10 = sub_27546E280();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    sub_275404ED4(v9, v7, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
    v12 = *(v10 - 8);
    v13 = (*(v12 + 88))(v7, v10);
    if (v13 == *MEMORY[0x277D2A9C8])
    {
      v11 = 0;
      goto LABEL_9;
    }

    if (v13 == *MEMORY[0x277D2A9D0])
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (v13 == *MEMORY[0x277D2A9D8])
    {
      v11 = 2;
      goto LABEL_9;
    }

    (*(v12 + 8))(v7, v10);
  }

  v11 = 3;
LABEL_9:
  sub_275404F64(v9, &qword_2809DAF98, MEMORY[0x277D2A9E0]);
  return v11;
}

uint64_t sub_275404ED4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_275406650(0, a3, a4);
  OUTLINED_FUNCTION_0_9(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275404F64(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_275406650(0, a2, a3);
  OUTLINED_FUNCTION_0_9(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_275404FBC(uint64_t a1)
{
  v2 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27540506C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_275464C44(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_2754050D8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_2754050D8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27546E970();
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
        v6 = sub_27546E630();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_275405228(v7, v8, a1, v4);
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
    return sub_2754051CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2754051CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 1);
        if (v7 >= v10)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v10;
        *--v9 = v7;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      ++v5;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_275405228(unsigned __int8 **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + v8);
        v10 = *(*a3 + v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + v11++) >= v12);
          v12 = *(*a3 + v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + v16);
                *(v17 + v16) = *(v17 + v15);
                *(v17 + v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = (*a3 + v8);
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *(v25 - 1);
                if (v23 >= v26)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v26;
                *--v25 = v23;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              ++v21;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = v7[2];
        sub_2754310F8();
        v7 = v71;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_2754310F8();
        v7 = v72;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v6;
      v31[1] = v8;
      v76 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_56:
            if (v38)
            {
              goto LABEL_96;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_99;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_104;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v29 < 2)
          {
            goto LABEL_98;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_71:
          if (v53)
          {
            goto LABEL_101;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_103;
          }

          if (v60 < v52)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v32 - 1 >= v29)
          {
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
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v64 = &v30[2 * v32 - 2];
          v65 = *v64;
          v66 = &v30[2 * v32];
          v67 = v66[1];
          sub_2754057F4((*a3 + *v64), (*a3 + *v66), (*a3 + v67), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v67 < v65)
          {
            goto LABEL_91;
          }

          v68 = v7;
          v69 = v7[2];
          if (v32 > v69)
          {
            goto LABEL_92;
          }

          *v64 = v65;
          v64[1] = v67;
          if (v32 >= v69)
          {
            goto LABEL_93;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v66 + 2, 16 * (v69 - 1 - v32));
          v68[2] = v69 - 1;
          v19 = v69 > 2;
          v7 = v68;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_94;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_95;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_97;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_100;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_2754056C8(&v78, *a1, a3);
LABEL_89:
}

uint64_t sub_2754056C8(uint64_t *a1, unsigned __int8 *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_2754647E4(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_2754057F4((*a3 + *v9), (*a3 + *v11), (*a3 + v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_2754057F4(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (a2 - a1 < a3 - a2)
  {
    sub_275444334(a1);
    v10 = &a4[v8];
    while (1)
    {
      v11 = a4 >= v10 || v6 >= v5;
      if (v11)
      {
        v6 = v7;
        goto LABEL_42;
      }

      v12 = *v6;
      v13 = *a4;
      if (v12 >= v13)
      {
        v11 = v7 >= a4++;
        v15 = !v11 || v7 >= a4;
        LOBYTE(v12) = v13;
        if (v15)
        {
LABEL_18:
          *v7 = v12;
        }
      }

      else
      {
        v11 = v7 >= v6++;
        if (!v11 || v7 >= v6)
        {
          goto LABEL_18;
        }
      }

      ++v7;
    }
  }

  sub_275444334(a2);
  v10 = &a4[v9];
LABEL_21:
  v16 = v6 - 1;
  --v5;
  while (v10 > a4 && v6 > v7)
  {
    v18 = *(v10 - 1);
    v19 = *v16;
    if (v18 < v19)
    {
      v21 = v5 + 1 < v6 || v5 >= v6;
      --v6;
      if (v21)
      {
        *v5 = v19;
        v6 = v16;
      }

      goto LABEL_21;
    }

    if ((v5 + 1) < v10 || v5 >= v10)
    {
      *v5 = v18;
    }

    --v5;
    --v10;
  }

LABEL_42:
  if (v6 != a4 || v6 >= v10)
  {
    memmove(v6, a4, v10 - a4);
  }

  return 1;
}

uint64_t sub_275405954(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v13 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_275463328(0, v6, v8);
    v9 = sub_275405BAC(v8, v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_275405B1C(v12, v6, a2, a1);

    MEMORY[0x277C78090](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_275405B1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_275405BAC(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_275405BAC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v37 = 0;
    v21 = 0;
    v22 = 1 << *(a3 + 32);
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v24 = v23 & *(a3 + 56);
    v25 = (v22 + 63) >> 6;
LABEL_24:
    while (v24)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_31:
      v36 = v26 | (v21 << 6);
      v29 = *(*(a3 + 48) + v36);
      v30 = *(a4 + 40);
      sub_27546EA90();
      MEMORY[0x277C77BF0](v29);
      result = sub_27546EAC0();
      v31 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v32 = result & v31;
        if (((*(a4 + 56 + (((result & v31) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v31)) & 1) == 0)
        {
          break;
        }

        result = v32 + 1;
        if (*(*(a4 + 48) + v32) == v29)
        {
          *(v34 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
          v20 = __OFADD__(v37++, 1);
          if (!v20)
          {
            goto LABEL_24;
          }

          __break(1u);
          goto LABEL_37;
        }
      }
    }

    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {
LABEL_37:

        return sub_275405E84(v34, a2, v37, a3);
      }

      v28 = *(a3 + 56 + 8 * v21);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_31;
      }
    }
  }

  else
  {
    v37 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v35 = (v9 - 1) & v9;
LABEL_13:
      v14 = *(*(a4 + 48) + (v11 | (v6 << 6)));
      v15 = *(a3 + 40);
      sub_27546EA90();
      MEMORY[0x277C77BF0](v14);
      result = sub_27546EAC0();
      v16 = ~(-1 << *(a3 + 32));
      do
      {
        v17 = result & v16;
        v18 = (result & v16) >> 6;
        v19 = 1 << (result & v16);
        if ((v19 & *(a3 + 56 + 8 * v18)) == 0)
        {
          v9 = v35;
          goto LABEL_6;
        }

        result = v17 + 1;
      }

      while (*(*(a3 + 48) + v17) != v14);
      v34[v18] |= v19;
      v20 = __OFADD__(v37++, 1);
      v9 = v35;
      if (v20)
      {
        goto LABEL_40;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_37;
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_275405E84(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2754066AC();
  result = sub_27546E740();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_27546EA90();
    MEMORY[0x277C77BF0](v16);
    result = sub_27546EAC0();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_275406078(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_27546E490();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v42 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v17 = *v4;
  result = sub_275406428(a1, a2, *v4);
  if (!v3)
  {
    v47 = a2;
    v48 = v16;
    v52 = v7;
    if (v19)
    {
      return *(v17 + 16);
    }

    else
    {
      v42 = v4;
      v54 = result;
      v20 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v55 = 0;
        v21 = v51;
        v22 = v52;
        v50 = v51 + 16;
        v45 = v14;
        v46 = (v51 + 8);
        v43 = (v51 + 40);
        v44 = v11;
        v23 = v48;
        while (1)
        {
          v24 = *(v17 + 16);
          if (v20 == v24)
          {
            return v54;
          }

          if (v20 >= v24)
          {
            break;
          }

          v25 = v17;
          v49 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v26 = v17 + v49;
          v27 = *(v21 + 72);
          v56 = v20;
          v28 = *(v21 + 16);
          v53 = v27 * v20;
          v28(v23, v17 + v49 + v27 * v20, v22);
          v29 = v55;
          v30 = a1;
          v31 = a1(v23);
          v55 = v29;
          if (v29)
          {
            return (*v46)(v23, v22);
          }

          v32 = v31;
          result = (*v46)(v23, v22);
          if (v32)
          {
            a1 = v30;
            v21 = v51;
            v22 = v52;
            v23 = v48;
            v17 = v25;
            v33 = v56;
          }

          else
          {
            v33 = v56;
            if (v56 == v54)
            {
              a1 = v30;
              v21 = v51;
              v22 = v52;
              v23 = v48;
            }

            else
            {
              if ((v54 & 0x8000000000000000) != 0)
              {
                goto LABEL_26;
              }

              v34 = *(v25 + 16);
              if (v54 >= v34)
              {
                goto LABEL_27;
              }

              v35 = v27 * v54;
              v36 = v52;
              result = (v28)(v45, v26 + v35, v52);
              if (v56 >= v34)
              {
                goto LABEL_28;
              }

              v37 = v26 + v53;
              v38 = v44;
              v28(v44, v37, v36);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_27540663C(v25);
                v25 = v41;
              }

              a1 = v30;
              v39 = v25 + v49;
              v40 = *v43;
              v22 = v52;
              result = (*v43)(v25 + v49 + v35, v38, v52);
              v23 = v48;
              if (v56 >= *(v25 + 16))
              {
                goto LABEL_29;
              }

              result = v40(v39 + v53, v45, v22);
              v33 = v56;
              *v42 = v25;
              v21 = v51;
            }

            v17 = v25;
            ++v54;
          }

          v20 = v33 + 1;
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_275406428(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_27546E490() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_27540650C(uint64_t result, uint64_t a2)
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

  sub_275459430(result, 1);
  v8 = *v2;
  v9 = *(sub_27546E490() - 8);
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

  result = sub_275440F08(v10 + v11 * a2, v13 - a2, v12);
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

void sub_275406650(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27546E6F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2754066AC()
{
  if (!qword_2809DAFC8)
  {
    sub_275406708();
    v0 = sub_27546E750();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DAFC8);
    }
  }
}

unint64_t sub_275406708()
{
  result = qword_2809DAFD0;
  if (!qword_2809DAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DAFD0);
  }

  return result;
}

_BYTE *_s22MusicKitStructuredSongV30TransitionComplexityConfidenceOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275406828);
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

uint64_t sub_275406874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_275406910(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

void sub_275406990()
{
  type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  if (v0 <= 0x3F)
  {
    sub_275406C8C(319, &qword_2809DAFF0, &type metadata for Transition.Complexity, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_275406C8C(319, &qword_2809DAFF8, &_s9GenreTreeVN, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_275406C8C(319, &qword_2809DB000, &_s23SpatialTimeAlignmentMapVN, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_275406C8C(319, &qword_2809DB008, &_s13SongStructureVN, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_275406C8C(319, &qword_2809DB010, &_s16VocalActivityMapVN, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_275406C8C(319, &qword_2809DB018, &_s11LoudnessMapVN, MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_275406C8C(319, &qword_2809DB020, &_s11TonalityMapVN, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_275406C8C(319, &qword_2809DB028, &_s15AcousticnessMapVN, MEMORY[0x277D83D88]);
                  if (v8 <= 0x3F)
                  {
                    sub_275406C8C(319, &qword_2809DB030, &_s15DanceabilityMapVN, MEMORY[0x277D83D88]);
                    if (v9 <= 0x3F)
                    {
                      sub_275406C8C(319, &qword_2809DB038, &_s14MelodicnessMapVN, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
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

void sub_275406C8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_275406CE0()
{
  result = qword_2809DB040;
  if (!qword_2809DB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB040);
  }

  return result;
}

uint64_t sub_275406D34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_275406C8C(0, a3, a4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_0_9(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
}

double sub_275406F00@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  return sub_275406F3C(a1);
}

double sub_275406F3C@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double sub_275406F58@<D0>(_OWORD *a1@<X8>)
{
  j__OUTLINED_FUNCTION_0_13(v5);
  v2 = v5[1];
  *a1 = v5[0];
  a1[1] = v2;
  result = *&v6;
  v4 = v7;
  a1[2] = v6;
  a1[3] = v4;
  return result;
}

double sub_275407014@<D0>(uint64_t a1@<X8>)
{
  sub_275407058(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_275407058@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 256;
  return result;
}

double OUTLINED_FUNCTION_0_13@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_2754070A0(uint64_t a1)
{
  if ((sub_27540719C(a1) & 1) != 0 && sub_275407758(a1))
  {
    return 1;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v3 = sub_27546E3E0();
  __swift_project_value_buffer(v3, qword_2809F3C00);
  v4 = sub_27546E3C0();
  v5 = sub_27546E6E0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2753EC000, v4, v5, "Placement constraints: Not satisfied.", v6, 2u);
    MEMORY[0x277C78090](v6, -1, -1);
  }

  return 0;
}

uint64_t sub_27540719C(uint64_t a1)
{
  sub_2754097E0(v65);
  sub_2753F12B8(v65, __src);
  if (v67)
  {
    sub_2753F122C(v65);
    v3 = __src;
  }

  else
  {
    memcpy(__dst, __src, sizeof(__dst));
    v3 = v57;
    sub_275409C88();
    sub_2753F1398(__dst);
    sub_2753F122C(v65);
  }

  v4 = *v3;
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  (*(v6 + 24))(__src, v5, v6);
  if (v4 >= *__src)
  {
    sub_2754097E0(v65);
    sub_2753F12B8(v65, __src);
    if (v67)
    {
      v21 = &__src[8];
    }

    else
    {
      v21 = &v57[8];
      memcpy(__dst, __src, sizeof(__dst));
      sub_275409C88();
      sub_2753F1398(__dst);
    }

    sub_2753F122C(v65);
    v22 = *v21;
    v23 = v1[3];
    v24 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v23);
    (*(v24 + 32))(__src, v23, v24);
    if (v22 >= *__src)
    {
      return 1;
    }

    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v25 = sub_27546E3E0();
    __swift_project_value_buffer(v25, qword_2809F3C00);
    sub_2753F2548(a1, v65);
    sub_275407A94(v1, v62);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v61 = v11;
      *v10 = 136315394;
      sub_2754097E0(__src);
      sub_2753F12B8(__src, __dst);
      if (v59)
      {
        v26 = sub_2753F122C(__src);
        v34 = __dst;
      }

      else
      {
        memcpy(v57, __dst, 0x51uLL);
        v34 = v60;
        sub_275409C88();
        sub_2753F1398(v57);
        v26 = sub_2753F122C(__src);
      }

      v47 = sub_2753F1314(*v34, v34[1], v26, v27, v28, v29, v30, v31, v32, v33);
      v49 = v48;
      sub_2753F25A4(v65);
      v50 = sub_275446968(v47, v49, &v61);

      *(v10 + 4) = v50;
      *(v10 + 12) = 2080;
      v51 = v63;
      v52 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v52 + 32))(__src, v51, v52);
      v53 = sub_27546E540();
      v55 = v54;
      sub_275407ACC(v62);
      v56 = sub_275446968(v53, v55, &v61);

      *(v10 + 14) = v56;
      v46 = "Outgoing placement constraints: Not satisfied. Outgoing region = %s. Minimum outgoing region end time = %s.";
      goto LABEL_25;
    }
  }

  else
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v7 = sub_27546E3E0();
    __swift_project_value_buffer(v7, qword_2809F3C00);
    sub_2753F2548(a1, v65);
    sub_275407A94(v1, v62);
    v8 = sub_27546E3C0();
    v9 = sub_27546E6E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v61 = v11;
      *v10 = 136315394;
      sub_2754097E0(__src);
      sub_2753F12B8(__src, __dst);
      if (v59)
      {
        v12 = sub_2753F122C(__src);
        v20 = __dst;
      }

      else
      {
        memcpy(v57, __dst, 0x51uLL);
        v20 = v60;
        sub_275409C88();
        sub_2753F1398(v57);
        v12 = sub_2753F122C(__src);
      }

      v36 = sub_2753F1314(*v20, v20[1], v12, v13, v14, v15, v16, v17, v18, v19);
      v38 = v37;
      sub_2753F25A4(v65);
      v39 = sub_275446968(v36, v38, &v61);

      *(v10 + 4) = v39;
      *(v10 + 12) = 2080;
      v40 = v63;
      v41 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      (*(v41 + 24))(__src, v40, v41);
      v42 = sub_27546E540();
      v44 = v43;
      sub_275407ACC(v62);
      v45 = sub_275446968(v42, v44, &v61);

      *(v10 + 14) = v45;
      v46 = "Outgoing placement constraints: Not satisfied. Outgoing region = %s. Minimum outgoing region start time = %s.";
LABEL_25:
      _os_log_impl(&dword_2753EC000, v8, v9, v46, v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v11, -1, -1);
      MEMORY[0x277C78090](v10, -1, -1);

      return 0;
    }
  }

  sub_2753F25A4(v65);
  sub_275407ACC(v62);
  return 0;
}

BOOL sub_275407758(uint64_t a1)
{
  sub_275409858(v41);
  sub_2753F12B8(v41, __src);
  if (v43)
  {
    v3 = &__src[8];
  }

  else
  {
    v3 = &v33[8];
    memcpy(__dst, __src, 0x51uLL);
    sub_275409C88();
    sub_2753F1398(__dst);
  }

  sub_2753F122C(v41);
  v4 = *v3;
  v5 = v1[8];
  v6 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v5);
  (*(v6 + 40))(__src, v5, v6);
  v7 = *__src;
  if (*__src < v4)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v8 = sub_27546E3E0();
    __swift_project_value_buffer(v8, qword_2809F3C00);
    sub_2753F2548(a1, v41);
    sub_275407A94(v1, v37);
    v9 = sub_27546E3C0();
    v10 = sub_27546E6E0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v36 = v12;
      *v11 = 136315394;
      sub_275409858(__src);
      sub_2753F12B8(__src, __dst);
      if (__dst[81])
      {
        v13 = sub_2753F122C(__src);
        v21 = __dst;
      }

      else
      {
        memcpy(v33, __dst, 0x51uLL);
        v21 = &v35;
        sub_275409C88();
        sub_2753F1398(v33);
        v13 = sub_2753F122C(__src);
      }

      v22 = sub_2753F1314(*v21, v21[1], v13, v14, v15, v16, v17, v18, v19, v20);
      v24 = v23;
      sub_2753F25A4(v41);
      v25 = sub_275446968(v22, v24, &v36);

      *(v11 + 4) = v25;
      *(v11 + 12) = 2080;
      v26 = v39;
      v27 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      (*(v27 + 40))(__src, v26, v27);
      v28 = sub_27546E540();
      v30 = v29;
      sub_275407ACC(v37);
      v31 = sub_275446968(v28, v30, &v36);

      *(v11 + 14) = v31;
      _os_log_impl(&dword_2753EC000, v9, v10, "Incoming placement constraints: Not satisfied. Incoming region = %s. Maximum incoming region end time = %s.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v12, -1, -1);
      MEMORY[0x277C78090](v11, -1, -1);
    }

    else
    {

      sub_2753F25A4(v41);
      sub_275407ACC(v37);
    }
  }

  return v7 >= v4;
}

uint64_t sub_275407B1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a4;
  *&v85 = a2;
  v83 = a5;
  v8 = type metadata accessor for TransitionPlanner.Song();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = (v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = (v69 - v13);
  *&v84 = *a3;
  v15 = *(a3 + 8);
  v17 = *(a3 + 16);
  v16 = *(a3 + 24);
  v18 = *(a3 + 32);
  v19 = *(a3 + 33);
  v20 = sub_275408140(a1);
  if (v5)
  {
    OUTLINED_FUNCTION_3_6(v99);
    v25 = v24;
    sub_275408F38(v85, v24);
    return sub_275408F38(a1, v25);
  }

  else
  {
    v26 = v22;
    v27 = v23;
    v75 = v14;
    v76 = v21;
    v77 = v20;
    v78 = v12;
    v79 = v18;
    v80 = v16;
    v81 = v17;
    v82 = v15;
    v28 = v85;
    v29 = sub_275408140(v85);
    v32 = v31;
    v34 = v33;
    v72 = v35;
    v73 = v29;
    v74 = v19;
    if (qword_2809DACB0 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v36 = sub_27546E3E0();
    v37 = __swift_project_value_buffer(v36, qword_2809F3C00);
    OUTLINED_FUNCTION_4_4();
    v71 = a1;
    v38 = v75;
    sub_275408ED0(a1, v75, v39);
    v40 = sub_27546E3C0();
    v70 = sub_27546E6E0();
    v41 = os_log_type_enabled(v40, v70);
    v42 = v78;
    if (v41)
    {
      v43 = swift_slowAlloc();
      v69[1] = v37;
      v44 = v43;
      v45 = swift_slowAlloc();
      __src[0] = v45;
      *v44 = 136315138;
      v47 = *v38;
      v46 = v38[1];

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v38, v48);
      v49 = sub_275446968(v47, v46, __src);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_2753EC000, v40, v70, "Styling context: Outgoing song ID = %s.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    else
    {

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v38, v50);
    }

    v51 = v71;
    sub_2754084B4(v71, v77, v76 & 1, &v98, v26, v27);
    OUTLINED_FUNCTION_4_4();
    sub_275408ED0(v28, v42, v52);
    v53 = sub_27546E3C0();
    v54 = sub_27546E6E0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      __src[0] = v56;
      *v55 = 136315138;
      v57 = v42[1];
      v77 = *v42;

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v42, v58);
      v59 = sub_275446968(v77, v57, __src);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2753EC000, v53, v54, "Styling context: Incoming song ID = %s.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v56);
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
      OUTLINED_FUNCTION_5_4();
      MEMORY[0x277C78090]();
    }

    else
    {

      OUTLINED_FUNCTION_1_8();
      sub_275408F38(v42, v60);
    }

    v61 = v83;
    v62 = v84;
    v63 = v82;
    v64 = v81;
    v65 = v80;
    sub_2754084B4(v28, v73, v72 & 1, &v97, v32, v34);
    sub_2753F161C(&v98, __src);
    sub_2753F161C(&v97, &__src[5]);
    v86 = v62;
    v87 = v63;
    v88 = v64;
    v89 = v65;
    v90 = v79;
    v91 = v74;
    sub_2753F1B68(&v86, v92, v26, v32);
    v66 = v99;
    sub_275408F38(v28, type metadata accessor for TransitionPlanner.Song);
    sub_275408F38(v51, type metadata accessor for TransitionPlanner.Song);
    __swift_destroy_boxed_opaque_existential_1(&v97);
    __swift_destroy_boxed_opaque_existential_1(&v98);
    v67 = v92[0];
    v68 = v95;
    v85 = v93;
    v84 = v94;
    memcpy(v61, __src, 0x50uLL);
    *(v61 + 80) = v67;
    *(v61 + 88) = v85;
    *(v61 + 104) = v84;
    *(v61 + 120) = v68;
    return sub_2753F16E0(v66, v61 + 128);
  }
}

uint64_t sub_275408140(uint64_t a1)
{
  v2 = type metadata accessor for TransitionPlanner.Song();
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275408DDC();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 32);
  v16 = *(a1 + 16);
  v17 = *(a1 + 24);
  sub_275408ED0(a1 + v15, v14, sub_275408DDC);
  v18 = type metadata accessor for TransitionPlanner.Song.Analysis();
  if (__swift_getEnumTagSinglePayload(v14, 1, v18) == 1 || swift_getEnumCaseMultiPayload() == 1)
  {
    if ((v17 & 1) == 0)
    {
      return v16;
    }
  }

  else
  {
    sub_275408E6C(v14, v10);
    v26 = *(v10 + 1);
    v27 = v10[16];
    sub_275408F38(v10, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
    if (v27 != 1)
    {
      return v16;
    }
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v19 = sub_27546E3E0();
  __swift_project_value_buffer(v19, qword_2809F3C00);
  sub_275408ED0(a1, v6, type metadata accessor for TransitionPlanner.Song);
  v20 = sub_27546E3C0();
  v16 = sub_27546E6D0();
  if (os_log_type_enabled(v20, v16))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v31 = v22;
    *v21 = 136315138;
    v23 = *v6;
    v24 = v6[1];

    sub_275408F38(v6, type metadata accessor for TransitionPlanner.Song);
    v25 = sub_275446968(v23, v24, &v31);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2753EC000, v20, v16, "Duration map not available. Song ID = %s.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x277C78090](v22, -1, -1);
    MEMORY[0x277C78090](v21, -1, -1);
  }

  else
  {

    sub_275408F38(v6, type metadata accessor for TransitionPlanner.Song);
  }

  sub_275408F98();
  swift_allocError();
  *v28 = 13;
  swift_willThrow();
  return v16;
}

uint64_t sub_2754084B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = v32 - v17;
  sub_275408DDC();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TransitionPlanner.Song();
  sub_275408ED0(a1 + *(v23 + 24), v22, sub_275408DDC);
  v24 = type metadata accessor for TransitionPlanner.Song.Analysis();
  if (__swift_getEnumTagSinglePayload(v22, 1, v24) == 1)
  {
    v26 = *a1;
    v25 = a1[1];
    a4[3] = &_s16UnstructuredSongVN;
    a4[4] = &off_288413E48;
LABEL_5:
    v27 = swift_allocObject();
    *a4 = v27;
    *(v27 + 16) = v26;
    *(v27 + 24) = v25;
    *(v27 + 32) = a5;
    *(v27 + 40) = a6;
    *(v27 + 48) = a2;
    *(v27 + 56) = a3 & 1;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *a1;
    v25 = a1[1];
    a4[3] = &_s27AdaptiveMusicStructuredSongVN;
    a4[4] = &off_288413B98;
    goto LABEL_5;
  }

  sub_275408E6C(v22, v18);
  v29 = *a1;
  v30 = a1[1];
  v32[0] = v29;
  v32[1] = v30;
  sub_275408ED0(v18, v16, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
  a4[3] = _s22MusicKitStructuredSongVMa();
  a4[4] = &off_288413CB8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);

  sub_2753FE0CC(v32, a2, a3 & 1, v16, boxed_opaque_existential_1, a5);
  return sub_275408F38(v18, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
}

uint64_t sub_275408728(unsigned __int8 *a1)
{
  v2 = v1;
  if (*(v1 + 120) >= *a1)
  {
    v14 = *(v1 + 32);
    __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
    v15 = OUTLINED_FUNCTION_2_6();
    v17 = *(v16(v15) + 16);

    if (v17)
    {
      v18 = v2[3];
      __swift_project_boxed_opaque_existential_1(v2, v18);
      v19 = OUTLINED_FUNCTION_2_6();
      v21 = v20(v19);
      OUTLINED_FUNCTION_8_2(v21);
      if ((v18 & 1) == 0)
      {
        if (qword_2809DACB0 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        v36 = sub_27546E3E0();
        __swift_project_value_buffer(v36, qword_2809F3C00);
        sub_275408FEC(v2, v62);
        v37 = sub_27546E3C0();
        v38 = sub_27546E6E0();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v39 = 136315394;
          v40 = OUTLINED_FUNCTION_7_2();
          v42 = sub_275446968(v40, v41, &v61);

          *(v39 + 4) = v42;
          *(v39 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v62, v62[3]);
          v43 = OUTLINED_FUNCTION_6_4();
          v44(v43);
          v45 = MEMORY[0x277C77770]();
          v47 = v46;

          sub_275409024(v62);
          v48 = sub_275446968(v45, v47, &v61);

          *(v39 + 14) = v48;
          v49 = "Transition complexity: Outgoing song has timing accuracy issues. Transition complexity for algorithm incompatible with reduced complexities for song. Algorithm complexity = %s. Outgoing song complexities = %s.";
LABEL_30:
          _os_log_impl(&dword_2753EC000, v37, v38, v49, v39, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_5_4();
          MEMORY[0x277C78090]();
          OUTLINED_FUNCTION_5_4();
          MEMORY[0x277C78090]();

          return 0;
        }

LABEL_31:

        goto LABEL_32;
      }

      v22 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
      v23 = OUTLINED_FUNCTION_2_6();
      v25 = *(v24(v23) + 16);

      if (v25)
      {
        v26 = v2[8];
        __swift_project_boxed_opaque_existential_1(v2 + 5, v26);
        v27 = OUTLINED_FUNCTION_2_6();
        v29 = v28(v27);
        OUTLINED_FUNCTION_8_2(v29);
        if (v26)
        {
          return 1;
        }

        if (qword_2809DACB0 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        v51 = sub_27546E3E0();
        __swift_project_value_buffer(v51, qword_2809F3C00);
        sub_275408FEC(v2, v62);
        v37 = sub_27546E3C0();
        v38 = sub_27546E6E0();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          *v39 = 136315394;
          v52 = OUTLINED_FUNCTION_7_2();
          v54 = sub_275446968(v52, v53, &v61);

          *(v39 + 4) = v54;
          *(v39 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v63, v63[3]);
          v55 = OUTLINED_FUNCTION_6_4();
          v56(v55);
          v57 = MEMORY[0x277C77770]();
          v59 = v58;

          sub_275409024(v62);
          v60 = sub_275446968(v57, v59, &v61);

          *(v39 + 14) = v60;
          v49 = "Transition complexity: Incoming song has timing accuracy issues. Transition complexity for algorithm incompatible with reduced complexities for song. Algorithm complexity = %s. Incoming song complexities = %s.";
          goto LABEL_30;
        }

        goto LABEL_31;
      }

      if (qword_2809DACB0 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v50 = sub_27546E3E0();
      __swift_project_value_buffer(v50, qword_2809F3C00);
      v32 = sub_27546E3C0();
      v33 = sub_27546E6E0();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_25:

        return 0;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Transition complexity: Incoming song has timing accuracy issues. No transitions allowed.";
    }

    else
    {
      if (qword_2809DACB0 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      v31 = sub_27546E3E0();
      __swift_project_value_buffer(v31, qword_2809F3C00);
      v32 = sub_27546E3C0();
      v33 = sub_27546E6E0();
      if (!os_log_type_enabled(v32, v33))
      {
        goto LABEL_25;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = "Transition complexity: Outgoing song has timing accuracy issues. No transitions allowed.";
    }

    _os_log_impl(&dword_2753EC000, v32, v33, v35, v34, 2u);
    OUTLINED_FUNCTION_5_4();
    MEMORY[0x277C78090]();
    goto LABEL_25;
  }

  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_14();
    swift_once();
  }

  v3 = sub_27546E3E0();
  __swift_project_value_buffer(v3, qword_2809F3C00);
  sub_275408FEC(v1, v62);
  v4 = sub_27546E3C0();
  v5 = sub_27546E6E0();
  if (!os_log_type_enabled(v4, v5))
  {

LABEL_32:
    sub_275409024(v62);
    return 0;
  }

  v6 = swift_slowAlloc();
  v61 = swift_slowAlloc();
  *v6 = 136315394;
  v7 = OUTLINED_FUNCTION_7_2();
  v9 = sub_275446968(v7, v8, &v61);

  *(v6 + 4) = v9;
  *(v6 + 12) = 2080;
  v10 = OUTLINED_FUNCTION_7_2();
  v12 = v11;
  sub_275409024(v62);
  v13 = sub_275446968(v10, v12, &v61);

  *(v6 + 14) = v13;
  _os_log_impl(&dword_2753EC000, v4, v5, "Transition complexity: Transition complexity for algorithm incompatible with maximum complexity specified in criteria. Algorithm complexity = %s. Maximum complexity = %s.", v6, 0x16u);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x277C78090]();
  OUTLINED_FUNCTION_5_4();
  MEMORY[0x277C78090]();

  return 0;
}

BOOL sub_275408DAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_275408DDC()
{
  if (!qword_2809DB048)
  {
    type metadata accessor for TransitionPlanner.Song.Analysis();
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB048);
    }
  }
}

uint64_t sub_275408E34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_275408E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275408ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275408F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_275408F98()
{
  result = qword_2809DB050;
  if (!qword_2809DB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB050);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_27546E540();
}

uint64_t OUTLINED_FUNCTION_8_2(uint64_t a1)
{
  sub_275408DAC(v1, a1);
}

void sub_27540914C(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x277D84F90];
  v19 = *(a1 + 16);
  if (v19)
  {
    v3 = 0;
    v4 = *(a2 + 16);
    v16 = a2 + 32;
    v5 = MEMORY[0x277D84F90];
    v17 = v4;
    v18 = a1 + 32;
    while (1)
    {
      sub_2753F1440(v18 + 88 * v3, v22);
      if (v4)
      {
        v21 = v2;
        sub_275441874(0, v4, 0);
        v6 = v21;
        v7 = v16;
        do
        {
          sub_2753F1440(v22, __src);
          sub_2753F1440(v7, &__src[88]);
          __src[169] = 1;
          v21 = v6;
          v9 = *(v6 + 16);
          v8 = *(v6 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_275441874(v8 > 1, v9 + 1, 1);
            v6 = v21;
          }

          *(v6 + 16) = v9 + 1;
          memcpy((v6 + 176 * v9 + 32), __src, 0xAAuLL);
          v7 += 88;
          --v4;
        }

        while (v4);
        v2 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = v2;
      }

      sub_2753F1398(v22);
      v10 = *(v6 + 16);
      v11 = *(v5 + 16);
      if (__OFADD__(v11, v10))
      {
        break;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v11 + v10 > *(v5 + 24) >> 1)
      {
        sub_2754318C4();
        v5 = v12;
      }

      v4 = v17;
      if (*(v6 + 16))
      {
        if ((*(v5 + 24) >> 1) - *(v5 + 16) < v10)
        {
          goto LABEL_25;
        }

        swift_arrayInitWithCopy();

        if (v10)
        {
          v13 = *(v5 + 16);
          v14 = __OFADD__(v13, v10);
          v15 = v13 + v10;
          if (v14)
          {
            goto LABEL_26;
          }

          *(v5 + 16) = v15;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_24;
        }
      }

      if (++v3 == v19)
      {
        return;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_275409368(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_27540914C(a1, a2);
    v16 = v15;
    v17 = *(v15 + 16);
    if (v17)
    {
      OUTLINED_FUNCTION_0_15(MEMORY[0x277D84F90]);
      v6 = v26;
      v18 = v16 + 32;
      do
      {
        sub_275409520(v18, __src);
        __src[170] = 0;
        v26 = v6;
        v20 = *(v6 + 16);
        v19 = *(v6 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2754418C4(v19 > 1, v20 + 1, 1);
          v6 = v26;
        }

        *(v6 + 16) = v20 + 1;
        memcpy((v6 + 176 * v20 + 32), __src, 0xABuLL);
        v18 += 176;
        --v17;
      }

      while (v17);
      goto LABEL_13;
    }

LABEL_14:

    return MEMORY[0x277D84F90];
  }

  sub_2754095A0(a1, a2);
  v4 = v3;
  v5 = *(v3 + 16);
  if (!v5)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_0_15(MEMORY[0x277D84F90]);
  v6 = v26;
  v7 = *(v26 + 16);
  v8 = 176 * v7 + 202;
  v9 = (v4 + 48);
  do
  {
    v10 = *(v9 - 1);
    v11 = *v9;
    v25 = 1;
    v26 = v6;
    v12 = *(v6 + 24);
    v13 = v7 + 1;
    if (v7 >= v12 >> 1)
    {
      v22 = v11;
      v23 = v10;
      sub_2754418C4(v12 > 1, v7 + 1, 1);
      v11 = v22;
      v10 = v23;
      v6 = v26;
    }

    *(v6 + 16) = v13;
    v14 = (v6 + v8);
    *(v14 - 170) = v10;
    *(v14 - 154) = v11;
    memcpy((v6 + v8 - 138), __src, 0x8AuLL);
    *v14 = v25;
    v8 += 176;
    v9 += 2;
    v7 = v13;
    --v5;
  }

  while (v5);
LABEL_13:

  return v6;
}

void OUTLINED_FUNCTION_0_15(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;

  sub_2754418C4(0, v1, 0);
}

void sub_2754095A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = *(a2 + 16);
    v27 = (a2 + 32);
    v28 = a1 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v5)
      {
        v29 = *(v28 + 16 * v4);
        sub_2754418A4(0, v5, 0);
        v7 = v29;
        v8 = v3;
        v9 = *(v3 + 16);
        v10 = 32 * v9;
        v11 = v27;
        v12 = v5;
        do
        {
          v13 = *v11;
          v14 = *(v3 + 24);
          if (v9++ >= v14 >> 1)
          {
            v26 = *v11;
            sub_2754418A4((v14 > 1), v9, 1);
            v13 = v26;
            v7 = v29;
          }

          *(v3 + 16) = v9;
          v16 = v3 + v10;
          *(v16 + 32) = v7;
          *(v16 + 48) = v13;
          v10 += 32;
          ++v11;
          --v12;
        }

        while (v12);
      }

      else
      {
        v9 = *(v3 + 16);
        v8 = v3;
      }

      v17 = *(v6 + 16);
      v18 = v17 + v9;
      if (__OFADD__(v17, v9))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v18 > *(v6 + 24) >> 1)
      {
        if (v17 <= v18)
        {
          v20 = v17 + v9;
        }

        else
        {
          v20 = v17;
        }

        sub_275431984(isUniquelyReferenced_nonNull_native, v20, 1, v6);
        v6 = v21;
      }

      if (*(v8 + 16))
      {
        v22 = *(v6 + 16);
        if ((*(v6 + 24) >> 1) - v22 < v9)
        {
          goto LABEL_28;
        }

        memcpy((v6 + 32 * v22 + 32), (v8 + 32), 32 * v9);

        if (v9)
        {
          v23 = *(v6 + 16);
          v24 = __OFADD__(v23, v9);
          v25 = v23 + v9;
          if (v24)
          {
            goto LABEL_29;
          }

          *(v6 + 16) = v25;
        }
      }

      else
      {

        if (v9)
        {
          goto LABEL_27;
        }
      }

      if (++v4 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_2754097E0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2753EF3C8(v1, __src);
  v4 = v7;
  if (v7)
  {
    *a1 = *__src;
  }

  else
  {
    memcpy(v5, __src, 0xAAuLL);
    sub_2753F1440(v5, a1);
    result = sub_2753F13EC(v5);
  }

  *(a1 + 81) = v4;
  return result;
}

uint64_t sub_275409858@<X0>(uint64_t a1@<X8>)
{
  result = sub_2753EF3C8(v1, __src);
  v4 = v7;
  if (v7)
  {
    *a1 = *&__src[16];
  }

  else
  {
    memcpy(v5, __src, 0xAAuLL);
    sub_2753F1440(&v5[88], a1);
    result = sub_2753F13EC(v5);
  }

  *(a1 + 81) = v4;
  return result;
}

uint64_t sub_2754098D4(uint64_t a1, uint64_t a2)
{
  sub_2753EF3C8(a1, v10);
  sub_2753EF3C8(a2, v11);
  if ((v10[170] & 1) == 0)
  {
    sub_2753EF3C8(v10, v8);
    if ((v12 & 1) == 0)
    {
      memcpy(v7, v11, 0xAAuLL);
      if (sub_27540AABC(v8, v7) & 1) != 0 && (sub_27540AABC(v9, &v7[88]))
      {
        v4 = v9[81];
        v5 = v7[169];
        sub_2753F13EC(v7);
        if (v4 == v5)
        {
          sub_2753F13EC(v8);
          sub_275409AE4(v10);
          v3 = 1;
          return v3 & 1;
        }
      }

      else
      {
        sub_2753F13EC(v7);
      }

      sub_2753F13EC(v8);
      sub_275409AE4(v10);
LABEL_13:
      v3 = 0;
      return v3 & 1;
    }

    sub_2753F13EC(v8);
LABEL_6:
    sub_275409A2C(v10);
    goto LABEL_13;
  }

  sub_2753EF3C8(v10, v8);
  if (v12 != 1)
  {
    goto LABEL_6;
  }

  v3 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(vsubq_f64(*v11, v8[0])), vceqzq_f64(vsubq_f64(*&v11[16], v8[1])))))) ^ 1;
  sub_275409AE4(v10);
  return v3 & 1;
}

uint64_t sub_275409A2C(uint64_t a1)
{
  sub_275409A88();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_275409A88()
{
  if (!qword_2809DB058)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB058);
    }
  }
}

uint64_t sub_275409B1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 171))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 170);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_275409B58(unsigned int *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    v5 = a2 - 255;
    bzero(a1, 0xABuLL);
    *a1 = v5;
    if (a3 >= 0xFF)
    {
      *(a1 + 171) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(a1 + 171) = 0;
    }

    if (a2)
    {
      *(a1 + 170) = -a2;
    }
  }
}

void sub_275409BCC(unsigned int *a1, unsigned int a2)
{
  if (a2 > 1)
  {
    v3 = a2 - 2;
    bzero(a1, 0xAAuLL);
    *a1 = v3;
    LOBYTE(a2) = 2;
  }

  *(a1 + 170) = a2;
}

uint64_t sub_275409C20(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
  if (v2.i32[0] & v2.i32[1])
  {
    v3 = vmovn_s64(vceqzq_f64(vsubq_f64(a2[1], a1[1])));
    v4 = v3.i8[0] & v3.i8[4];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_275409C88()
{
  v1 = OUTLINED_FUNCTION_11_1();
  LODWORD(result) = sub_27540AA84(v1, v23);
  if ((v23[80] & 1) == 0)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_12_1(result, v3, v4, v5, v6, v7, v8, v9, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]);
  sub_27540A364();
  v10 = v24[0];
  sub_27540A458();
  result = sub_2753F15A4(v13);
  v11 = *&v12;
  if (*&v12 < v10)
  {
    __break(1u);
LABEL_4:
    OUTLINED_FUNCTION_12_1(result, v3, v4, v5, v6, v7, v8, v9, v12, v13[0], v14, v15, v16, v17, v18, v19, v20, v21, v22, v23[0]);
    sub_27540A5DC(v24);
    result = sub_2753EDF40(v13);
    v10 = v24[0];
    v11 = v24[1];
  }

  *v0 = v10;
  v0[1] = v11;
  return result;
}

void *sub_275409D20()
{
  v1 = OUTLINED_FUNCTION_11_1();
  sub_27540AA84(v1, __src);
  if ((__src[80] & 1) == 0)
  {
    return memcpy(v0, __src, 0x50uLL);
  }

  memcpy(__dst, __src, sizeof(__dst));
  sub_2753F1548(__dst, v13);
  v2 = v13[3];
  v3 = v13[4];
  OUTLINED_FUNCTION_5_5(v13);
  v0[3] = v2;
  v0[4] = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_0_16();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_8_3();
  v6();
  v7 = v14[3];
  v8 = v14[4];
  OUTLINED_FUNCTION_5_5(v14);
  v0[8] = v7;
  v0[9] = *(v8 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0 + 5);
  OUTLINED_FUNCTION_0_16();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_8_3();
  v11();
  sub_2753F15A4(__dst);
  return sub_2753F15A4(v13);
}

void *sub_275409E34()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = sub_27540AA84(v1, __src);
  if (__src[80])
  {
    return memcpy(v0, __src, 0x50uLL);
  }

  OUTLINED_FUNCTION_12_1(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12[0], v13, v14, v15, v16, v17, v18, v19, v20, v21, __src[0]);
  sub_27540A8A0(v12, v0);
  return sub_2753EDF40(v12);
}

uint64_t sub_275409E98@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v2[4];
  v6 = __swift_project_boxed_opaque_existential_1(v2, v4);
  v18 = v4;
  v19 = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  v8 = v18;
  v9 = v19;
  v10 = __swift_project_boxed_opaque_existential_1(v17, v18);
  v21 = v8;
  v22 = *(v9 + 8);
  v11 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(v8 - 8) + 16))(v11, v10, v8);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v12 = v21;
  v13 = v22;
  v14 = __swift_project_boxed_opaque_existential_1(v20, v21);
  a1[3] = v12;
  a1[4] = *(v13 + 8);
  v15 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v12 - 8) + 16))(v15, v14, v12);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_275409FE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[8];
  v4 = v1[9];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v17 = v3;
  v18 = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  v7 = v17;
  v8 = v18;
  v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
  v20 = v7;
  v21 = *(v8 + 8);
  v10 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v11 = v20;
  v12 = v21;
  v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
  a1[3] = v11;
  a1[4] = *(v12 + 8);
  v14 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v11 - 8) + 16))(v14, v13, v11);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_27540A12C()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 24);
  v3 = v1[4];
  OUTLINED_FUNCTION_5_5(v1);
  v12 = v2;
  v13 = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1(v11);
  OUTLINED_FUNCTION_0_16();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_8_3();
  v6();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_0_16();
  v8 = *(v7 + 16);
  OUTLINED_FUNCTION_8_3();
  v9();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_27540A1E0()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, *(v0 + 24));
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_0_16();
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_8_3();

  return v5();
}

uint64_t sub_27540A24C()
{
  OUTLINED_FUNCTION_9_2();
  v10 = v0;
  v11 = *(v1 + 8);
  __swift_allocate_boxed_opaque_existential_1(v9);
  OUTLINED_FUNCTION_1_9();
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_10_2();
  v4();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_4_5();
  OUTLINED_FUNCTION_0_16();
  v6 = *(v5 + 16);
  OUTLINED_FUNCTION_8_3();
  v7();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_27540A2F4()
{
  OUTLINED_FUNCTION_9_2();
  v0[3] = v1;
  v0[4] = *(v2 + 8);
  __swift_allocate_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_1_9();
  v4 = *(v3 + 16);
  OUTLINED_FUNCTION_10_2();

  return v5();
}

uint64_t sub_27540A364()
{
  v1 = OUTLINED_FUNCTION_11_1();
  v2 = *(v0 + 24);
  v3 = v1[4];
  OUTLINED_FUNCTION_5_5(v1);
  v22 = v2;
  v23 = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_0_16();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_8_3();
  v6();
  v7 = __swift_project_boxed_opaque_existential_1(v21, v22);
  OUTLINED_FUNCTION_6_5(v7, v8, v9, v10, v11, v12, v13, v14, v21[0], v21[1], v21[2], v22, v23, v24[0], v24[1], v24[2], v24[3], v24[4]);
  OUTLINED_FUNCTION_1_9();
  v16 = *(v15 + 16);
  OUTLINED_FUNCTION_10_2();
  v17();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v18 = OUTLINED_FUNCTION_2_7();
  v19(v18);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_27540A458()
{
  OUTLINED_FUNCTION_9_2();
  v20 = v0;
  v21 = *(v1 + 8);
  __swift_allocate_boxed_opaque_existential_1(v19);
  OUTLINED_FUNCTION_1_9();
  v3 = *(v2 + 16);
  OUTLINED_FUNCTION_10_2();
  v4();
  v5 = __swift_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_6_5(v5, v6, v7, v8, v9, v10, v11, v12, v19[0], v19[1], v19[2], v20, v21, v22[0], v22[1], v22[2], v22[3], v22[4]);
  OUTLINED_FUNCTION_1_9();
  v14 = *(v13 + 16);
  OUTLINED_FUNCTION_10_2();
  v15();
  __swift_destroy_boxed_opaque_existential_1(v19);
  v16 = OUTLINED_FUNCTION_2_7();
  v17(v16);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_27540A53C(void (*a1)(uint64_t *__return_ptr))
{
  a1(v15);
  v1 = __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_6_5(v1, v2, v3, v4, v5, v6, v7, v8, v15[0], v15[1], v15[2], v16, v17, v18[0], v18[1], v18[2], v18[3], v18[4]);
  OUTLINED_FUNCTION_1_9();
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_10_2();
  v11();
  __swift_destroy_boxed_opaque_existential_1(v15);
  v12 = OUTLINED_FUNCTION_2_7();
  v13(v12);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_27540A5DC@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = v1[4];
  v6 = __swift_project_boxed_opaque_existential_1(v1, v4);
  v19 = v4;
  v7 = *(v5 + 8);
  v20 = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  (*(v7 + 8))(&v21, v4, v7);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v9 = v21;
  v10 = v2[8];
  v11 = v2[9];
  v12 = __swift_project_boxed_opaque_existential_1(v2 + 5, v10);
  v19 = v10;
  v20 = *(v11 + 8);
  v13 = v20;
  v14 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v10 - 8) + 16))(v14, v12, v10);
  (*(v13 + 8))(&v17, v10, v13);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  v16 = v17;
  if (v17 < v9)
  {
    __break(1u);
  }

  else
  {
    *a1 = v9;
    a1[1] = v16;
  }

  return result;
}

double sub_27540A748()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  v4 = __swift_project_boxed_opaque_existential_1(v0, v2);
  v14 = v2;
  v5 = *(v3 + 8);
  v15 = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  (*(v5 + 8))(&v16, v2, v5);
  __swift_destroy_boxed_opaque_existential_1(v13);
  v7 = v16;
  v9 = v1[8];
  v8 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v9);
  v14 = v9;
  v15 = *(v8 + 8);
  v10 = v15;
  __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v9 - 8) + 16))();
  (*(v10 + 8))(&v12, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v12 - v7;
}

double sub_27540A8A0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2753F161C(a1, v11);
  sub_2753F1680(0, &qword_2809DADD8);
  sub_2753F1680(0, &qword_2809DADD0);
  if (swift_dynamicCast())
  {
    sub_2753F16E0(v9, v12);
    sub_2753F161C(a1 + 40, v9);
    if (swift_dynamicCast())
    {
      sub_2753F16E0(v7, v11);
      sub_2753F16E0(v12, a2);
      sub_2753F16E0(v11, a2 + 40);
      return result;
    }

    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    OUTLINED_FUNCTION_3_7();
    v6 = v7;
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    OUTLINED_FUNCTION_3_7();
    v6 = v9;
  }

  sub_27540AE20(v6, v5);
  result = 0.0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  return result;
}

double sub_27540A9DC()
{
  sub_27540AA84(v0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  if (__src[80])
  {
    sub_27540A364();
    sub_27540A458();
    sub_2753F15A4(__dst);
    return v3 - v4;
  }

  else
  {
    v1 = sub_27540A748();
    sub_2753EDF40(__dst);
  }

  return v1;
}

uint64_t sub_27540AABC(uint64_t a1, uint64_t a2)
{
  sub_27540AA84(a1, v63);
  sub_27540AA84(a2, &v64);
  if (v63[80])
  {
    v4 = sub_27540AA84(v63, v57);
    if (v65 == 1)
    {
      OUTLINED_FUNCTION_13_1(v4, v5, v6, v7, v8, v9, v10, v11, v51, v52[0]);
      v12 = v58;
      v13 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      OUTLINED_FUNCTION_0_0(v13);
      v15 = v14(v12, v13);
      v16 = v61;
      v17 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      OUTLINED_FUNCTION_0_0(v17);
      result = v18(v16, v17);
      if (result >= v15)
      {
        v20 = result;
        v21 = v53;
        v22 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        OUTLINED_FUNCTION_0_0(v22);
        v24 = v23(v21, v22);
        v25 = v55;
        v26 = v56;
        __swift_project_boxed_opaque_existential_1((v2 + 40), v55);
        OUTLINED_FUNCTION_0_0(v26);
        result = v27(v25, v26);
        if (result >= v24)
        {
          if (v15 == v24)
          {
            v28 = result;
            sub_2753F15A4(v52);
            sub_2753F15A4(v57);
            goto LABEL_15;
          }

          sub_2753F15A4(v52);
          sub_2753F15A4(v57);
          goto LABEL_19;
        }

        goto LABEL_24;
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2753F15A4(v57);
  }

  else
  {
    v29 = sub_27540AA84(v63, v57);
    if ((v65 & 1) == 0)
    {
      OUTLINED_FUNCTION_13_1(v29, v30, v31, v32, v33, v34, v35, v36, v51, v52[0]);
      v37 = v58;
      v38 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      OUTLINED_FUNCTION_0_0(v38);
      v40 = v39(v37, v38);
      v41 = v61;
      v42 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      OUTLINED_FUNCTION_0_0(v42);
      result = v43(v41, v42);
      if (result >= v40)
      {
        v20 = result;
        v44 = v53;
        v45 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        OUTLINED_FUNCTION_0_0(v45);
        v47 = v46(v44, v45);
        v48 = v55;
        v49 = v56;
        __swift_project_boxed_opaque_existential_1((v2 + 40), v55);
        OUTLINED_FUNCTION_0_0(v49);
        result = v50(v48, v49);
        if (result >= v47)
        {
          if (v40 == v47)
          {
            v28 = result;
            sub_2753EDF40(v52);
            sub_2753EDF40(v57);
LABEL_15:
            if (v20 == v28)
            {
              sub_27540AEDC(v63);
              return 1;
            }

            goto LABEL_19;
          }

          sub_2753EDF40(v52);
          sub_2753EDF40(v57);
LABEL_19:
          sub_27540AEDC(v63);
          return 0;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      goto LABEL_23;
    }

    sub_2753EDF40(v57);
  }

  sub_27540AE20(v63, sub_27540AE80);
  return 0;
}