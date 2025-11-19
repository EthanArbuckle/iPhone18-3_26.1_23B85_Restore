uint64_t sub_22F24417C(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v84 = a2;
  v74 = sub_22F73F690();
  v8 = *(v74 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v74);
  v73 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v72 = v64 - v12;
  v83 = sub_22F73F090();
  v78 = *(v83 - 8);
  v13 = v78[8];
  v14 = MEMORY[0x28223BE20](v83);
  v71 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v70 = v64 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v77 = v64 - v19;
  MEMORY[0x28223BE20](v18);
  v85 = v64 - v20;
  v21 = a1[1];
  result = sub_22F742000();
  if (result < v21)
  {
    if (v21 >= -1)
    {
      v23 = result;
      v24 = v21 / 2;
      if (v21 <= 1)
      {
        v25 = MEMORY[0x277D84F90];
      }

      else
      {
        a4(a3);
        v25 = sub_22F741200();
        *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) = v24;
      }

      v63 = v25 & 0xFFFFFFFFFFFFFF8;
      v86[0] = (v25 & 0xFFFFFFFFFFFFFF8) + 32;
      v86[1] = v24;
      sub_22F244F70(v86, v87, a1, v23, v84);
      *(v63 + 16) = 0;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v21 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  if (v21 >= 2)
  {
    v64[1] = v4;
    v80 = v78 + 4;
    v81 = v78 + 2;
    v26 = *a1;
    v69 = (v8 + 8);
    v76 = (v78 + 1);
    v27 = -1;
    v28 = 1;
    v79 = v26;
    v65 = v21;
    do
    {
      v67 = v28;
      v68 = v27;
      v29 = v79[v28];
      v30 = v27;
      v66 = v26;
      do
      {
        v31 = *v84;
        if (!*(*v84 + 16))
        {
          break;
        }

        v32 = *v26;
        v33 = *(v29 + 24);
        v34 = *(v29 + 32);

        v35 = sub_22F1229E8(v33, v34);
        v37 = v36;

        if ((v37 & 1) == 0)
        {

          break;
        }

        v82 = v30;
        v39 = v77;
        v38 = v78;
        v40 = v78[9];
        v41 = *(v31 + 56) + v40 * v35;
        v42 = v78[2];
        v43 = v83;
        v42(v77, v41, v83);
        v44 = v38[4];
        v44(v85, v39, v43);
        v45 = *v84;
        if (*(*v84 + 16) && (v46 = *(v32 + 24), v47 = *(v32 + 32), , v75 = sub_22F1229E8(v46, v47), v49 = v48, , (v49 & 1) != 0))
        {
          v50 = *(v45 + 56) + v75 * v40;
          v51 = v71;
          v52 = v83;
          v42(v71, v50, v83);
          v53 = v70;
          v44(v70, v51, v52);
          v54 = v72;
          sub_22F73F060();
          v55 = v73;
          sub_22F73F060();
          LODWORD(v75) = sub_22F73F5D0();
          v56 = *v69;
          v57 = v55;
          v58 = v74;
          (*v69)(v57, v74);
          v56(v54, v58);
          v59 = *v76;
          (*v76)(v53, v52);
          v59(v85, v52);

          v60 = v82;
          if ((v75 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          (*v76)(v85, v83);

          v60 = v82;
        }

        if (!v79)
        {
          goto LABEL_27;
        }

        v61 = *v26;
        v29 = v26[1];
        *v26 = v29;
        v26[1] = v61;
        --v26;
        v62 = __CFADD__(v60, 1);
        v30 = v60 + 1;
      }

      while (!v62);
      v28 = v67 + 1;
      v26 = v66 + 1;
      v27 = v68 - 1;
    }

    while (v67 + 1 != v65);
  }

  return result;
}

uint64_t sub_22F2446DC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v114 = a1;
  v123 = sub_22F73F690();
  v9 = *(*(v123 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v123);
  v122 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v121 = &v108 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v114;
    if (!*v114)
    {
      goto LABEL_127;
    }

    a4 = v17;
    v18 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_22F3F5F98(a4);
    }

    v124 = result;
    v104 = *(result + 16);
    if (v104 >= 2)
    {
      while (*v18)
      {
        a4 = *(result + 16 * v104);
        v105 = result;
        v106 = *(result + 16 * (v104 - 1) + 40);
        sub_22F245D24((*v18 + 8 * a4), (*v18 + 8 * *(result + 16 * (v104 - 1) + 32)), (*v18 + 8 * v106), v5);
        if (v6)
        {
        }

        if (v106 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_22F3F5F98(v105);
        }

        if (v104 - 2 >= *(v105 + 2))
        {
          goto LABEL_115;
        }

        v107 = &v105[16 * v104];
        *v107 = a4;
        v107[1] = v106;
        v124 = v105;
        sub_22F3F5F0C(v104 - 1);
        result = v124;
        v104 = *(v124 + 16);
        if (v104 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v16 = 0;
  v120 = (v13 + 8);
  v17 = MEMORY[0x277D84F90];
  v113 = a4;
  v109 = a3;
  while (1)
  {
    v18 = v16++;
    if (v16 < v15)
    {
      v118 = v15;
      v111 = v17;
      v112 = v6;
      v19 = *a3;
      v20 = *(*a3 + 8 * v16);
      v117 = 8 * v18;
      v21 = (v19 + 8 * v18);
      v22 = *v21;
      v5 = (v21 + 2);
      v23 = *(v20 + 16);

      v24 = [v23 universalStartDate];
      v25 = v121;
      sub_22F73F640();

      v26 = [*(v22 + 16) universalStartDate];
      v27 = v122;
      sub_22F73F640();

      LODWORD(v119) = sub_22F73F5D0();
      v28 = *v120;
      v29 = v123;
      (*v120)(v27, v123);
      v28(v25, v29);

      v110 = v18;
      v30 = (v18 + 2);
      while (1)
      {
        v16 = v118;
        if (v118 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *(*v5 + 16);

        v33 = [v32 universalStartDate];
        v34 = v121;
        sub_22F73F640();

        v35 = [*(v31 + 16) universalStartDate];
        v36 = v122;
        sub_22F73F640();

        LODWORD(v35) = sub_22F73F5D0() & 1;
        v37 = v36;
        v38 = v123;
        v28(v37, v123);
        v28(v34, v38);

        ++v30;
        v5 += 8;
        if ((v119 & 1) != v35)
        {
          v16 = (v30 - 1);
          break;
        }
      }

      v17 = v111;
      v6 = v112;
      a4 = v113;
      v18 = v110;
      v39 = v117;
      if (v119)
      {
        if (v16 < v110)
        {
          goto LABEL_118;
        }

        a3 = v109;
        if (v110 < v16)
        {
          v40 = 8 * v16 - 8;
          v41 = v16;
          v42 = v110;
          do
          {
            if (v42 != --v41)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v43 = *(v44 + v39);
              *(v44 + v39) = *(v44 + v40);
              *(v44 + v40) = v43;
            }

            v42 = (v42 + 1);
            v40 -= 8;
            v39 += 8;
          }

          while (v42 < v41);
        }
      }

      else
      {
        a3 = v109;
      }
    }

    v45 = a3[1];
    if (v16 < v45)
    {
      if (__OFSUB__(v16, v18))
      {
        goto LABEL_117;
      }

      if (v16 - v18 < a4)
      {
        v46 = (v18 + a4);
        if (__OFADD__(v18, a4))
        {
          goto LABEL_119;
        }

        if (v46 >= v45)
        {
          v46 = a3[1];
        }

        if (v46 < v18)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v16 != v46)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v16 < v18)
    {
      goto LABEL_116;
    }

    v60 = v17;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v17 = v60;
    }

    else
    {
      result = sub_22F13D970(0, *(v60 + 16) + 1, 1, v60);
      v17 = result;
    }

    a4 = *(v17 + 16);
    v61 = *(v17 + 24);
    v5 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      result = sub_22F13D970((v61 > 1), a4 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 16) = v5;
    v62 = v17 + 16 * a4;
    *(v62 + 32) = v18;
    *(v62 + 40) = v16;
    v63 = *v114;
    if (!*v114)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v64 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v65 = *(v17 + 32);
          v66 = *(v17 + 40);
          v75 = __OFSUB__(v66, v65);
          v67 = v66 - v65;
          v68 = v75;
LABEL_56:
          if (v68)
          {
            goto LABEL_105;
          }

          v81 = (v17 + 16 * v5);
          v83 = *v81;
          v82 = v81[1];
          v84 = __OFSUB__(v82, v83);
          v85 = v82 - v83;
          v86 = v84;
          if (v84)
          {
            goto LABEL_108;
          }

          v87 = (v17 + 32 + 16 * v64);
          v89 = *v87;
          v88 = v87[1];
          v75 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v75)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v85, v90))
          {
            goto LABEL_112;
          }

          if (v85 + v90 >= v67)
          {
            if (v67 < v90)
            {
              v64 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v91 = (v17 + 16 * v5);
        v93 = *v91;
        v92 = v91[1];
        v75 = __OFSUB__(v92, v93);
        v85 = v92 - v93;
        v86 = v75;
LABEL_70:
        if (v86)
        {
          goto LABEL_107;
        }

        v94 = v17 + 16 * v64;
        v96 = *(v94 + 32);
        v95 = *(v94 + 40);
        v75 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v75)
        {
          goto LABEL_110;
        }

        if (v97 < v85)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v64 - 1;
        if (v64 - 1 >= v5)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v102 = v17;
        v5 = *(v17 + 32 + 16 * a4);
        v18 = *(v17 + 32 + 16 * v64 + 8);
        sub_22F245D24((*a3 + 8 * v5), (*a3 + 8 * *(v17 + 32 + 16 * v64)), (*a3 + 8 * v18), v63);
        if (v6)
        {
        }

        if (v18 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_22F3F5F98(v102);
        }

        if (a4 >= *(v102 + 2))
        {
          goto LABEL_102;
        }

        v103 = &v102[16 * a4];
        *(v103 + 4) = v5;
        *(v103 + 5) = v18;
        v124 = v102;
        a4 = &v124;
        result = sub_22F3F5F0C(v64);
        v17 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v69 = v17 + 32 + 16 * v5;
      v70 = *(v69 - 64);
      v71 = *(v69 - 56);
      v75 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      if (v75)
      {
        goto LABEL_103;
      }

      v74 = *(v69 - 48);
      v73 = *(v69 - 40);
      v75 = __OFSUB__(v73, v74);
      v67 = v73 - v74;
      v68 = v75;
      if (v75)
      {
        goto LABEL_104;
      }

      v76 = (v17 + 16 * v5);
      v78 = *v76;
      v77 = v76[1];
      v75 = __OFSUB__(v77, v78);
      v79 = v77 - v78;
      if (v75)
      {
        goto LABEL_106;
      }

      v75 = __OFADD__(v67, v79);
      v80 = v67 + v79;
      if (v75)
      {
        goto LABEL_109;
      }

      if (v80 >= v72)
      {
        v98 = (v17 + 32 + 16 * v64);
        v100 = *v98;
        v99 = v98[1];
        v75 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v75)
        {
          goto LABEL_113;
        }

        if (v67 < v101)
        {
          v64 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v15 = a3[1];
    a4 = v113;
    if (v16 >= v15)
    {
      goto LABEL_88;
    }
  }

  v111 = v17;
  v112 = v6;
  v119 = *a3;
  v47 = v119 + 8 * v16 - 8;
  v110 = v18;
  a4 = v18 - v16;
  v115 = v46;
LABEL_29:
  v117 = v47;
  v118 = v16;
  v5 = *(v119 + 8 * v16);
  v116 = a4;
  v48 = v47;
  while (1)
  {
    v49 = *v48;
    v50 = *(v5 + 16);

    v51 = [v50 universalStartDate];
    v52 = v121;
    sub_22F73F640();

    v53 = [*(v49 + 16) universalStartDate];
    v54 = v122;
    sub_22F73F640();

    LOBYTE(v53) = sub_22F73F5D0();
    v55 = *v120;
    v56 = v54;
    v57 = v123;
    (*v120)(v56, v123);
    v55(v52, v57);

    if ((v53 & 1) == 0)
    {
LABEL_28:
      v16 = v118 + 1;
      v47 = v117 + 8;
      a4 = v116 - 1;
      if ((v118 + 1) != v115)
      {
        goto LABEL_29;
      }

      v16 = v115;
      v17 = v111;
      v6 = v112;
      a3 = v109;
      v18 = v110;
      goto LABEL_36;
    }

    if (!v119)
    {
      break;
    }

    v58 = *v48;
    v5 = v48[1];
    *v48 = v5;
    v48[1] = v58;
    --v48;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
  return result;
}

uint64_t sub_22F244F70(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v199 = a5;
  v171 = a4;
  v172 = a1;
  v184 = sub_22F73F690();
  v8 = *(v184 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v184);
  v183 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v182 = &v169 - v12;
  v198 = sub_22F73F090();
  v13 = *(*(v198 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v198);
  v180 = &v169 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v189 = &v169 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v196 = &v169 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v170 = &v169 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v169 = &v169 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v173 = &v169 - v27;
  result = MEMORY[0x28223BE20](v26);
  v175 = &v169 - v30;
  v186 = a3;
  v31 = a3[1];
  if (v31 < 1)
  {
    v33 = MEMORY[0x277D84F90];
LABEL_111:
    v34 = *v172;
    if (!*v172)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_113:
      v165 = v6;
      v200 = v33;
      v166 = *(v33 + 2);
      if (v166 >= 2)
      {
        while (*v186)
        {
          v167 = *&v33[16 * v166];
          v6 = *&v33[16 * v166 + 24];
          sub_22F2461C4((*v186 + 8 * v167), (*v186 + 8 * *&v33[16 * v166 + 16]), (*v186 + 8 * v6), v34, v199);
          if (v165)
          {
          }

          if (v6 < v167)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_22F3F5F98(v33);
          }

          if (v166 - 2 >= *(v33 + 2))
          {
            goto LABEL_138;
          }

          v168 = &v33[16 * v166];
          *v168 = v167;
          *(v168 + 1) = v6;
          v200 = v33;
          result = sub_22F3F5F0C(v166 - 1);
          v33 = v200;
          v166 = *(v200 + 2);
          if (v166 <= 1)
          {
          }
        }

        goto LABEL_148;
      }
    }

LABEL_144:
    result = sub_22F3F5F98(v33);
    v33 = result;
    goto LABEL_113;
  }

  v32 = 0;
  v194 = v29 + 32;
  v195 = v29 + 16;
  v181 = (v8 + 8);
  v190 = (v29 + 8);
  v33 = MEMORY[0x277D84F90];
  v191 = v29;
  while (2)
  {
    v34 = v32 + 1;
    v192 = v33;
    v176 = v32;
    if (v32 + 1 >= v31)
    {
LABEL_18:
      v71 = v171;
      goto LABEL_33;
    }

    v35 = *v186;
    v36 = *(*v186 + 8 * v34);
    v37 = *(*v186 + 8 * v32);

    LODWORD(v188) = sub_22F242558(v36, v37, v199);
    if (v6)
    {
    }

    v34 = v32 + 2;
    if (v32 + 2 >= v31)
    {
      v71 = v171;
      if (v188)
      {
LABEL_20:
        if (v34 < v32)
        {
          goto LABEL_141;
        }

LABEL_26:
        if (v32 < v34)
        {
          v72 = 8 * v34 - 8;
          v73 = 8 * v32;
          v74 = v34;
          v75 = v32;
          do
          {
            if (v75 != --v74)
            {
              v77 = *v186;
              if (!*v186)
              {
                goto LABEL_147;
              }

              v76 = *(v77 + v73);
              *(v77 + v73) = *(v77 + v72);
              *(v77 + v72) = v76;
            }

            ++v75;
            v72 -= 8;
            v73 += 8;
          }

          while (v75 < v74);
        }
      }

      goto LABEL_33;
    }

    v38 = v35 + 8 * v32 + 16;
    v39 = v188;
    v174 = 0;
    v197 = v31;
    do
    {
      v40 = *v199;
      if (!*(*v199 + 16))
      {
        goto LABEL_9;
      }

      v185 = v34;
      v41 = *(v38 - 8);
      v42 = *v38;
      v44 = *(*v38 + 24);
      v43 = *(*v38 + 32);

      v45 = sub_22F1229E8(v44, v43);
      v47 = v46;

      if ((v47 & 1) == 0)
      {

        v34 = v185;
        v31 = v197;
        v6 = v174;
LABEL_9:
        if (v39)
        {
          v71 = v171;
          v32 = v176;
          if (v34 < v176)
          {
            goto LABEL_141;
          }

          goto LABEL_26;
        }

        goto LABEL_10;
      }

      v193 = v42;
      v48 = *(v40 + 56);
      v49 = v191;
      v50 = *(v191 + 72);
      v51 = *(v191 + 16);
      v52 = v173;
      v53 = v198;
      v51(v173, v48 + v50 * v45, v198);
      v54 = *(v49 + 32);
      v54(v175, v52, v53);
      v55 = *v199;
      if (*(*v199 + 16) && (v57 = *(v41 + 24), v56 = *(v41 + 32), , v58 = sub_22F1229E8(v57, v56), v60 = v59, , (v60 & 1) != 0))
      {
        v61 = v170;
        v62 = v198;
        v51(v170, *(v55 + 56) + v58 * v50, v198);
        v63 = v169;
        v54(v169, v61, v62);
        v64 = v182;
        v65 = v175;
        sub_22F73F060();
        v66 = v183;
        sub_22F73F060();
        LODWORD(v187) = sub_22F73F5D0();
        v67 = *v181;
        v68 = v66;
        v69 = v184;
        (*v181)(v68, v184);
        v67(v64, v69);
        v70 = *v190;
        (*v190)(v63, v62);
        v70(v65, v62);

        v39 = v188;
        v6 = v174;
        v33 = v192;
        v34 = v185;
        v31 = v197;
        if ((v188 ^ v187))
        {
          goto LABEL_23;
        }
      }

      else
      {
        (*v190)(v175, v198);

        v6 = v174;
        v33 = v192;
        v34 = v185;
        v39 = v188;
        v31 = v197;
        if ((v188 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_10:
      ++v34;
      v38 += 8;
    }

    while (v31 != v34);
    v34 = v31;
LABEL_23:
    v71 = v171;
    v32 = v176;
    if (v39)
    {
      goto LABEL_20;
    }

LABEL_33:
    v78 = v186[1];
    if (v34 >= v78)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v34, v176))
    {
      goto LABEL_140;
    }

    if (v34 - v176 >= v71)
    {
LABEL_58:
      v80 = v176;
LABEL_59:
      if (v34 < v80)
      {
        goto LABEL_139;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v32 = v34;
      if ((result & 1) == 0)
      {
        result = sub_22F13D970(0, *(v33 + 2) + 1, 1, v33);
        v33 = result;
      }

      v120 = *(v33 + 2);
      v119 = *(v33 + 3);
      v121 = v120 + 1;
      if (v120 >= v119 >> 1)
      {
        result = sub_22F13D970((v119 > 1), v120 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 2) = v121;
      v122 = &v33[16 * v120];
      *(v122 + 4) = v176;
      *(v122 + 5) = v32;
      v123 = *v172;
      if (!*v172)
      {
        goto LABEL_149;
      }

      if (!v120)
      {
LABEL_3:
        v31 = v186[1];
        if (v32 >= v31)
        {
          goto LABEL_111;
        }

        continue;
      }

      while (1)
      {
        v34 = v121 - 1;
        if (v121 >= 4)
        {
          break;
        }

        if (v121 == 3)
        {
          v124 = *(v33 + 4);
          v125 = *(v33 + 5);
          v134 = __OFSUB__(v125, v124);
          v126 = v125 - v124;
          v127 = v134;
LABEL_79:
          if (v127)
          {
            goto LABEL_128;
          }

          v140 = &v33[16 * v121];
          v142 = *v140;
          v141 = *(v140 + 1);
          v143 = __OFSUB__(v141, v142);
          v144 = v141 - v142;
          v145 = v143;
          if (v143)
          {
            goto LABEL_131;
          }

          v146 = &v33[16 * v34 + 32];
          v148 = *v146;
          v147 = *(v146 + 1);
          v134 = __OFSUB__(v147, v148);
          v149 = v147 - v148;
          if (v134)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v144, v149))
          {
            goto LABEL_135;
          }

          if (v144 + v149 >= v126)
          {
            if (v126 < v149)
            {
              v34 = v121 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v150 = &v33[16 * v121];
        v152 = *v150;
        v151 = *(v150 + 1);
        v134 = __OFSUB__(v151, v152);
        v144 = v151 - v152;
        v145 = v134;
LABEL_93:
        if (v145)
        {
          goto LABEL_130;
        }

        v153 = &v33[16 * v34];
        v155 = *(v153 + 4);
        v154 = *(v153 + 5);
        v134 = __OFSUB__(v154, v155);
        v156 = v154 - v155;
        if (v134)
        {
          goto LABEL_133;
        }

        if (v156 < v144)
        {
          goto LABEL_3;
        }

LABEL_100:
        v161 = v34 - 1;
        if (v34 - 1 >= v121)
        {
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
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v186)
        {
          goto LABEL_146;
        }

        v162 = *&v33[16 * v161 + 32];
        v163 = *&v33[16 * v34 + 40];
        sub_22F2461C4((*v186 + 8 * v162), (*v186 + 8 * *&v33[16 * v34 + 32]), (*v186 + 8 * v163), v123, v199);
        if (v6)
        {
        }

        if (v163 < v162)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_22F3F5F98(v33);
        }

        if (v161 >= *(v33 + 2))
        {
          goto LABEL_125;
        }

        v164 = &v33[16 * v161];
        *(v164 + 4) = v162;
        *(v164 + 5) = v163;
        v200 = v33;
        result = sub_22F3F5F0C(v34);
        v33 = v200;
        v121 = *(v200 + 2);
        if (v121 <= 1)
        {
          goto LABEL_3;
        }
      }

      v128 = &v33[16 * v121 + 32];
      v129 = *(v128 - 64);
      v130 = *(v128 - 56);
      v134 = __OFSUB__(v130, v129);
      v131 = v130 - v129;
      if (v134)
      {
        goto LABEL_126;
      }

      v133 = *(v128 - 48);
      v132 = *(v128 - 40);
      v134 = __OFSUB__(v132, v133);
      v126 = v132 - v133;
      v127 = v134;
      if (v134)
      {
        goto LABEL_127;
      }

      v135 = &v33[16 * v121];
      v137 = *v135;
      v136 = *(v135 + 1);
      v134 = __OFSUB__(v136, v137);
      v138 = v136 - v137;
      if (v134)
      {
        goto LABEL_129;
      }

      v134 = __OFADD__(v126, v138);
      v139 = v126 + v138;
      if (v134)
      {
        goto LABEL_132;
      }

      if (v139 >= v131)
      {
        v157 = &v33[16 * v34 + 32];
        v159 = *v157;
        v158 = *(v157 + 1);
        v134 = __OFSUB__(v158, v159);
        v160 = v158 - v159;
        if (v134)
        {
          goto LABEL_136;
        }

        if (v126 < v160)
        {
          v34 = v121 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

    break;
  }

  if (__OFADD__(v176, v71))
  {
    goto LABEL_142;
  }

  if (v176 + v71 >= v78)
  {
    v79 = v186[1];
  }

  else
  {
    v79 = v176 + v71;
  }

  if (v79 < v176)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v80 = v176;
  if (v34 == v79)
  {
    goto LABEL_59;
  }

  v174 = v6;
  v193 = *v186;
  v81 = (v193 + 8 * v34 - 8);
  v82 = v176 - v34;
  v188 = v79;
LABEL_45:
  v185 = v34;
  v83 = v82;
  v84 = *(v193 + 8 * v34);
  v177 = v82;
  v178 = v81;
  while (1)
  {
    v85 = *v199;
    if (!*(*v199 + 16))
    {
      goto LABEL_44;
    }

    v197 = v83;
    v86 = *v81;
    v87 = *(v84 + 24);
    v88 = *(v84 + 32);

    v89 = sub_22F1229E8(v87, v88);
    v91 = v90;

    if ((v91 & 1) == 0)
    {

LABEL_44:
      v34 = v185 + 1;
      v81 = v178 + 1;
      v82 = v177 - 1;
      if (v185 + 1 == v79)
      {
        v34 = v79;
        v6 = v174;
        goto LABEL_58;
      }

      goto LABEL_45;
    }

    v92 = v191;
    v93 = *(v191 + 72);
    v94 = *(v85 + 56) + v93 * v89;
    v95 = *(v191 + 16);
    v96 = v189;
    v97 = v198;
    v95(v189, v94, v198);
    v98 = *(v92 + 32);
    v98(v196, v96, v97);
    v99 = *v199;
    if (!*(*v199 + 16))
    {
      goto LABEL_52;
    }

    v100 = *(v86 + 24);
    v101 = *(v86 + 32);

    v187 = sub_22F1229E8(v100, v101);
    v103 = v102;

    if (v103)
    {
      v104 = *(v99 + 56) + v187 * v93;
      v105 = v180;
      v106 = v198;
      v95(v180, v104, v198);
      v107 = v179;
      v98(v179, v105, v106);
      v108 = v182;
      v109 = v196;
      sub_22F73F060();
      v110 = v183;
      sub_22F73F060();
      LODWORD(v187) = sub_22F73F5D0();
      v111 = *v181;
      v112 = v110;
      v113 = v184;
      (*v181)(v112, v184);
      v111(v108, v113);
      v114 = *v190;
      v115 = v198;
      (*v190)(v107, v198);
      v114(v109, v115);

      v33 = v192;
      v79 = v188;
      if ((v187 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
LABEL_52:
      (*v190)(v196, v198);

      v33 = v192;
      v79 = v188;
    }

    v116 = v197;
    if (!v193)
    {
      break;
    }

    v117 = *v81;
    v84 = v81[1];
    *v81 = v84;
    v81[1] = v117;
    --v81;
    v118 = __CFADD__(v116, 1);
    v83 = v116 + 1;
    if (v118)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_22F245D24(char *a1, char *a2, char *a3, char *a4)
{
  v53 = sub_22F73F690();
  v8 = *(v53 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v47 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v54 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v56 = &a4[8 * v16];
    if (a3 - a2 >= 8 && a2 > v54)
    {
      v48 = a4;
      v49 = (v8 + 8);
LABEL_27:
      v47 = a1;
      v30 = a1 - 8;
      v31 = a3 - 8;
      v32 = v56;
      v50 = a1 - 8;
      do
      {
        v55 = v31;
        v33 = v31 + 8;
        v34 = *(v32 - 1);
        v32 -= 8;
        v35 = *v30;
        v36 = *(v34 + 16);

        v37 = [v36 universalStartDate];
        v38 = v51;
        sub_22F73F640();

        v39 = [*(v35 + 16) universalStartDate];
        v40 = v52;
        sub_22F73F640();

        LOBYTE(v39) = sub_22F73F5D0();
        v41 = *v49;
        v42 = v40;
        v43 = v53;
        (*v49)(v42, v53);
        v41(v38, v43);

        if (v39)
        {
          a4 = v48;
          a3 = v55;
          v45 = v50;
          if (v33 != v47)
          {
            *v55 = *v50;
          }

          if (v56 <= a4 || (a1 = v45, v45 <= v54))
          {
            a1 = v45;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v48;
        v44 = v55;
        if (v33 != v56)
        {
          *v55 = *v32;
        }

        v31 = v44 - 8;
        v56 = v32;
        v30 = v50;
      }

      while (v32 > a4);
      v56 = v32;
      a1 = v47;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v56 = &a4[8 * v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v55 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v54 = a1;
        v18 = *a4;
        v19 = *(*a2 + 16);

        v20 = [v19 universalStartDate];
        v21 = v51;
        sub_22F73F640();

        v22 = [*(v18 + 16) universalStartDate];
        v23 = v52;
        sub_22F73F640();

        LOBYTE(v22) = sub_22F73F5D0();
        v24 = *v17;
        v25 = v23;
        v26 = v53;
        (*v17)(v25, v53);
        v24(v21, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v27 = a2;
        v28 = v54;
        v29 = v54 == a2;
        a2 += 8;
        if (!v29)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v28 + 8;
        if (a4 >= v56 || a2 >= v55)
        {
          goto LABEL_39;
        }
      }

      v27 = a4;
      v28 = v54;
      v29 = v54 == a4;
      a4 += 8;
      if (v29)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v28 = *v27;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v56 - a4 + (v56 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v56 - a4) / 8));
  }

  return 1;
}

uint64_t sub_22F2461C4(char *a1, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v129 = a5;
  v116 = sub_22F73F690();
  v9 = *(v116 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v116);
  v115 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v114 = &v107[-v13];
  v126 = sub_22F73F090();
  v122 = *(v126 - 8);
  v14 = v122[8];
  v15 = MEMORY[0x28223BE20](v126);
  v112 = &v107[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v111 = &v107[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v113 = &v107[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v121 = &v107[-v22];
  v23 = MEMORY[0x28223BE20](v21);
  v110 = &v107[-v24];
  v25 = MEMORY[0x28223BE20](v23);
  v109 = &v107[-v26];
  v27 = MEMORY[0x28223BE20](v25);
  v118 = &v107[-v28];
  MEMORY[0x28223BE20](v27);
  v127 = &v107[-v29];
  v30 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v30 = a2 - a1;
  }

  v31 = v30 >> 3;
  v32 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v32 = a3 - a2;
  }

  v33 = v32 >> 3;
  if (v31 < v32 >> 3)
  {
    v34 = a1;
    if (a4 != a1 || &a1[8 * v31] <= a4)
    {
      memmove(a4, a1, 8 * v31);
    }

    v35 = &a4[8 * v31];
    if (a2 - a1 < 8)
    {
      goto LABEL_50;
    }

    v36 = a2;
    if (a2 >= a3)
    {
      goto LABEL_50;
    }

    v121 = v122 + 2;
    v119 = v122 + 4;
    v112 = (v9 + 8);
    v117 = v122 + 1;
    v125 = a3;
    v128 = &a4[8 * v31];
    while (1)
    {
      v37 = *v129;
      if (!*(*v129 + 16))
      {
        goto LABEL_19;
      }

      v38 = *a4;
      v39 = *(*v36 + 24);
      v40 = *(*v36 + 32);

      v41 = sub_22F1229E8(v39, v40);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        break;
      }

      v123 = a4;
      v124 = v34;
      v120 = v36;
      v44 = v122;
      v45 = v122[9];
      v46 = *(v37 + 56) + v45 * v41;
      v47 = v122[2];
      v48 = v118;
      v49 = v126;
      v47(v118, v46, v126);
      v50 = v44[4];
      v50(v127, v48, v49);
      v51 = *v129;
      if (*(*v129 + 16) && (v52 = *(v38 + 24), v53 = *(v38 + 32), , v54 = sub_22F1229E8(v52, v53), v56 = v55, , (v56 & 1) != 0))
      {
        v57 = *(v51 + 56) + v54 * v45;
        v58 = v110;
        v59 = v126;
        v47(v110, v57, v126);
        v60 = v109;
        v50(v109, v58, v59);
        v61 = v114;
        v62 = v127;
        sub_22F73F060();
        v63 = v115;
        sub_22F73F060();
        LODWORD(v113) = sub_22F73F5D0();
        v64 = *v112;
        v65 = v63;
        v66 = v116;
        (*v112)(v65, v116);
        v64(v61, v66);
        v67 = *v117;
        (*v117)(v60, v59);
        v67(v62, v59);

        a4 = v123;
        v34 = v124;
        v36 = v120;
        a3 = v125;
        v35 = v128;
        if ((v113 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        (*v117)(v127, v126);

        a4 = v123;
        v34 = v124;
        v36 = v120;
        a3 = v125;
        v35 = v128;
      }

      v68 = v36;
      v69 = v34 == v36;
      v36 += 8;
      if (!v69)
      {
        goto LABEL_20;
      }

LABEL_21:
      v34 += 8;
      if (a4 >= v35 || v36 >= a3)
      {
        goto LABEL_50;
      }
    }

    a3 = v125;
    v35 = v128;
LABEL_19:
    v68 = a4;
    v69 = v34 == a4;
    a4 += 8;
    if (v69)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v34 = *v68;
    goto LABEL_21;
  }

  v124 = a1;
  if (a4 != a2 || &a2[8 * v33] <= a4)
  {
    memmove(a4, a2, 8 * v33);
  }

  v35 = &a4[8 * v33];
  if (a3 - a2 < 8)
  {
    v70 = a2;
    goto LABEL_53;
  }

  v70 = a2;
  if (a2 > v124)
  {
    v118 = (v122 + 4);
    v119 = v122 + 2;
    v108 = (v9 + 8);
    v109 = v122 + 1;
    v123 = a4;
    while (1)
    {
      v120 = v70;
      v34 = v70 - 8;
      a3 -= 8;
      v71 = v35;
      v110 = v70 - 8;
      while (1)
      {
        v73 = *(v71 - 1);
        v71 -= 8;
        v72 = v73;
        v74 = *v129;
        if (!*(*v129 + 16))
        {
          goto LABEL_43;
        }

        v128 = v35;
        v75 = *v34;
        v76 = *(v72 + 24);
        v77 = *(v72 + 32);

        v127 = v75;

        v78 = sub_22F1229E8(v76, v77);
        v80 = v79;

        if ((v80 & 1) == 0)
        {

          v35 = v128;
          goto LABEL_43;
        }

        v125 = a3;
        v81 = v122;
        v82 = v122[9];
        v83 = *(v74 + 56) + v82 * v78;
        v84 = v122[2];
        v85 = v113;
        v86 = v126;
        v84(v113, v83, v126);
        v87 = v81[4];
        v87(v121, v85, v86);
        v88 = *v129;
        if (!*(*v129 + 16))
        {
          break;
        }

        v89 = *(v127 + 3);
        v90 = *(v127 + 4);

        v91 = sub_22F1229E8(v89, v90);
        v93 = v92;

        if ((v93 & 1) == 0)
        {
          break;
        }

        v94 = *(v88 + 56) + v91 * v82;
        v95 = v112;
        v96 = v126;
        v84(v112, v94, v126);
        v97 = v111;
        v87(v111, v95, v96);
        v98 = v114;
        v99 = v121;
        sub_22F73F060();
        v100 = v115;
        sub_22F73F060();
        LODWORD(v117) = sub_22F73F5D0();
        v101 = *v108;
        v102 = v100;
        v103 = v116;
        (*v108)(v102, v116);
        v101(v98, v103);
        v104 = *v109;
        (*v109)(v97, v96);
        v104(v99, v96);

        a4 = v123;
        v105 = v124;
        a3 = v125;
        v35 = v128;
        v34 = v110;
        if (v117)
        {
          goto LABEL_46;
        }

LABEL_43:
        if (a3 + 8 != v35)
        {
          *a3 = *v71;
        }

        a3 -= 8;
        v35 = v71;
        if (v71 <= a4)
        {
          v35 = v71;
          v70 = v120;
          goto LABEL_53;
        }
      }

      (*v109)(v121, v126);

      a4 = v123;
      v105 = v124;
      a3 = v125;
      v35 = v128;
      v34 = v110;
LABEL_46:
      if (a3 + 8 != v120)
      {
        *a3 = *v34;
      }

      if (v35 > a4)
      {
        v70 = v34;
        if (v34 > v105)
        {
          continue;
        }
      }

LABEL_50:
      v70 = v34;
      break;
    }
  }

LABEL_53:
  if (v70 != a4 || v70 >= &a4[(v35 - a4 + (v35 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v70, a4, 8 * ((v35 - a4) / 8));
  }

  return 1;
}

uint64_t sub_22F246AE8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) localIdentifier];
  v4 = sub_22F740E20();
  v6 = v5;

  v7 = [*(a2 + 16) localIdentifier];
  v8 = sub_22F740E20();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22F742040();
  }

  return v12 & 1;
}

uint64_t sub_22F246BB0(unint64_t a1, uint64_t *a2)
{
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v18 = a1;
    v2 = sub_22F741A00();
    a1 = v18;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v19 = a1;
      v3 = 0;
      v21 = a1 & 0xFFFFFFFFFFFFFF8;
      v22 = a1 & 0xC000000000000001;
      v20 = a1 + 32;
      while (1)
      {
        if (v22)
        {
          v5 = MEMORY[0x2319016F0](v3, v19);
          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
LABEL_23:
            __break(1u);
            return v24;
          }
        }

        else
        {
          if (v3 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v5 = *(v20 + 8 * v3);

          v6 = __OFADD__(v3++, 1);
          if (v6)
          {
            goto LABEL_23;
          }
        }

        v7 = *a2;
        if (*(*a2 + 16))
        {
          v8 = *(v5 + 24);
          v9 = *(v5 + 32);
          v10 = *(v7 + 40);
          sub_22F742170();

          sub_22F740D60();
          v11 = sub_22F7421D0();
          v12 = -1 << *(v7 + 32);
          v13 = v11 & ~v12;
          if ((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
          {
            v14 = ~v12;
            while (1)
            {
              v15 = (*(v7 + 48) + 16 * v13);
              v16 = *v15 == v8 && v15[1] == v9;
              if (v16 || (sub_22F742040() & 1) != 0)
              {
                break;
              }

              v13 = (v13 + 1) & v14;
              if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_6;
          }

LABEL_4:
        }

        sub_22F741BA0();
        v4 = *(v24 + 16);
        sub_22F741BE0();
        sub_22F741BF0();
        a1 = sub_22F741BB0();
LABEL_6:
        if (v3 == v2)
        {
          return v24;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_22F246DE0(uint64_t a1, unint64_t a2, void (*a3)(double), uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v568 = sub_22F73F690();
  v10 = *(v568 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v568);
  *&v564 = &v518 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v518 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v542 = &v518 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v552 = &v518 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v551 = &v518 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v535 = &v518 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v534 = &v518 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v537 = &v518 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v536 = &v518 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v570 = &v518 - v32;
  MEMORY[0x28223BE20](v31);
  v578 = &v518 - v33;
  v571 = sub_22F73F090();
  v547 = *(v571 - 8);
  v34 = v547[8];
  v35 = MEMORY[0x28223BE20](v571);
  v540 = (&v518 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = MEMORY[0x28223BE20](v35);
  v549 = (&v518 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v548 = &v518 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v541 = &v518 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = (&v518 - v44);
  v46 = MEMORY[0x28223BE20](v43);
  v553 = &v518 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v538 = &v518 - v49;
  MEMORY[0x28223BE20](v48);
  v558 = &v518 - v50;
  v543 = sub_22F740B90();
  v544 = *(v543 - 8);
  v51 = *(v544 + 64);
  MEMORY[0x28223BE20](v543);
  v53 = (&v518 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = swift_slowAlloc();
  *v54 = 0;
  v561 = a4;
  v562 = a3;
  a3(0.0);
  v546 = v54;
  if (*v54 == 1)
  {
    v55 = MEMORY[0x277D84F90];

    return sub_22F14E740(v55);
  }

  v559 = v45;
  *&v528 = v10;
  v533 = v16;
  sub_22F740B80();
  swift_beginAccess();
  v57 = *(a1 + 24);
  v58 = v57 >> 62;
  if (!(v57 >> 62))
  {
    v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v59)
    {
      goto LABEL_7;
    }

LABEL_309:
    v480 = v53;
    v481 = sub_22F740B70();
    v482 = sub_22F7415D0();
    if (os_log_type_enabled(v481, v482))
    {
      v483 = swift_slowAlloc();
      *v483 = 0;
      _os_log_impl(&dword_22F0FC000, v481, v482, "No entities found in the container, returning...", v483, 2u);
      MEMORY[0x2319033A0](v483, -1, -1);
    }

    v53 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v544 + 8))(v480, v543);
    return v53;
  }

LABEL_308:
  v59 = sub_22F741A00();
  if (!v59)
  {
    goto LABEL_309;
  }

LABEL_7:
  v519 = v5;
  swift_bridgeObjectRetain_n();
  v60 = sub_22F740B70();
  v61 = sub_22F7415D0();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 134217984;
    if (v58)
    {
      v63 = sub_22F741A00();
    }

    else
    {
      v63 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v62 + 4) = v63;

    _os_log_impl(&dword_22F0FC000, v60, v61, "There are %ld potential entities.", v62, 0xCu);
    MEMORY[0x2319033A0](v62, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v64 = *(a1 + 40);

  v539 = sub_22F24198C(v526);
  v577 = *(a2 + 16);
  v65 = v577 / 2;
  if (v577 / 2 <= 1)
  {
    v65 = 1;
  }

  *&v530 = v65;
  v66 = MEMORY[0x277D84F90];
  v585 = MEMORY[0x277D84F90];
  v525 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v584 = v525;
  v67 = sub_22F14E214(v66);
  if (v58)
  {
    v68 = sub_22F741A00();
  }

  else
  {
    v68 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v560 = v67;
  v579 = v53;
  v573 = a1;
  v567 = a2;
  v572 = v57;
  if (v68)
  {
    v69 = 0.3 / v59;
    v5 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
    v575 = v57 & 0xC000000000000001;

    swift_beginAccess();
    v555 = v5;
    swift_beginAccess();
    a2 = 0;
    v576 = 0;
    v557 = v57 & 0xFFFFFFFFFFFFFF8;
    v554 = (v528 + 16);
    v565 = (v528 + 8);
    v529 = (v547 + 2);
    v545 = (v547 + 1);
    v70 = 0.0;
    v53 = MEMORY[0x277D84F98];
    *&v71 = 134218498;
    v556 = v71;
    *&v71 = 136315138;
    v527 = v71;
    *&v71 = 134219010;
    v520 = v71;
    *&v71 = 136315394;
    v518 = v71;
    v531 = MEMORY[0x277D84F90];
    v574 = v68;
    while (1)
    {
      if (v575)
      {
        v72 = MEMORY[0x2319016F0](a2, v57);
        v73 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_292;
        }
      }

      else
      {
        if (a2 >= *(v557 + 16))
        {
          goto LABEL_294;
        }

        v72 = *(v57 + 8 * a2 + 32);

        v73 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
          goto LABEL_308;
        }
      }

      v580 = v73;
      v74 = *(a1 + 32);
      v75 = *(v74 + 16);
      v581 = v53;
      if (!v75)
      {
        goto LABEL_38;
      }

      v76 = *(v72 + 24);
      v58 = *(v72 + 32);

      v77 = sub_22F1229E8(v76, v58);
      v79 = v78;

      if ((v79 & 1) == 0)
      {

        v81 = MEMORY[0x277D84F90];
        v53 = v581;
        goto LABEL_42;
      }

      v5 = *(*(v74 + 56) + 8 * v77);

      v80 = (v5 & 0xC000000000000001) != 0 ? sub_22F741A00() : *(v5 + 16);
      v53 = v581;
      if (!v80)
      {
        break;
      }

      if (v80 < 1)
      {
        v81 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        v81 = swift_allocObject();
        v82 = _swift_stdlib_malloc_size(v81);
        v83 = v82 - 32;
        if (v82 < 32)
        {
          v83 = v82 - 25;
        }

        *(v81 + 16) = v80;
        *(v81 + 24) = (2 * (v83 >> 3)) | 1;
      }

      v58 = sub_22F11A590(&v582, (v81 + 32), v80, v5);
      sub_22F0FF590();
      if (v58 != v80)
      {
        goto LABEL_301;
      }

LABEL_42:
      v84 = v578;
      if (v81 >> 62)
      {
        if (sub_22F741A00() < v577)
        {
LABEL_44:

          v86 = sub_22F740B70();
          v87 = sub_22F7415D0();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v582 = v89;
            *v88 = v556;
            *(v88 + 4) = v577;
            *(v88 + 12) = 2080;
            v91 = *(v72 + 24);
            v90 = *(v72 + 32);

            v92 = sub_22F145F20(v91, v90, &v582);

            *(v88 + 14) = v92;
            *(v88 + 22) = 2048;
            if (v81 >> 62)
            {
              v93 = sub_22F741A00();
            }

            else
            {
              v93 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v88 + 24) = v93;

            _os_log_impl(&dword_22F0FC000, v86, v87, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v88, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v89);
            MEMORY[0x2319033A0](v89, -1, -1);
            MEMORY[0x2319033A0](v88, -1, -1);

            a1 = v573;
            v57 = v572;
            v53 = v581;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v58 = *(v72 + 24);
          v5 = *(v72 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v582 = v53;
          v161 = sub_22F1229E8(v58, v5);
          v163 = v53;
          v164 = v53[2];
          v165 = (v162 & 1) == 0;
          v166 = __OFADD__(v164, v165);
          v167 = v164 + v165;
          if (v166)
          {
            goto LABEL_293;
          }

          v168 = v162;
          if (v163[3] < v167)
          {
            sub_22F1259D0(v167, isUniquelyReferenced_nonNull_native);
            v161 = sub_22F1229E8(v58, v5);
            if ((v168 & 1) != (v169 & 1))
            {
              goto LABEL_381;
            }

            goto LABEL_71;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_71:
            if ((v168 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v231 = v161;
            sub_22F134340();
            v161 = v231;
            if ((v168 & 1) == 0)
            {
LABEL_111:
              v53 = v582;
              *(v582 + 8 * (v161 >> 6) + 64) |= 1 << v161;
              v232 = (v53[6] + 16 * v161);
              *v232 = v58;
              v232[1] = v5;
              *(v53[7] + v161) = 4;

              v233 = v53[2];
              v166 = __OFADD__(v233, 1);
              v234 = v233 + 1;
              if (v166)
              {
                goto LABEL_298;
              }

LABEL_117:
              v53[2] = v234;
              goto LABEL_118;
            }
          }

          v170 = v161;

          v53 = v582;
          *(*(v582 + 56) + v170) = 4;
          goto LABEL_107;
        }

        v208 = sub_22F741A00();
        if (v208)
        {
          v209 = v208;
          v85 = sub_22F120B48(v208, 0);

          sub_22F3CC8CC((v85 + 4), v209, v81);
          v58 = v210;

          v289 = v58 == v209;
          v84 = v578;
          if (!v289)
          {
            goto LABEL_379;
          }
        }

        else
        {
          v85 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v85 = (v81 & 0xFFFFFFFFFFFFFF8);
        if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) < v577)
        {
          goto LABEL_44;
        }
      }

      v582 = v85;
      v94 = v576;
      sub_22F243D0C(&v582);
      v95 = &v586;
      v576 = v94;
      if (v94)
      {
        goto LABEL_382;
      }

      v96 = v582;
      if ((v582 & 0x8000000000000000) != 0 || (v582 & 0x4000000000000000) != 0)
      {
        v211 = v582;
        v5 = sub_22F741A00();
        v96 = v211;
        v84 = v578;
        if (!v5)
        {
LABEL_97:

          v212 = sub_22F740B70();
          v213 = sub_22F7415E0();
          if (os_log_type_enabled(v212, v213))
          {
            v214 = swift_slowAlloc();
            v215 = swift_slowAlloc();
            v582 = v215;
            *v214 = v527;
            v216 = *(v72 + 24);
            v217 = *(v72 + 32);

            v218 = sub_22F145F20(v216, v217, &v582);
            v57 = v572;

            *(v214 + 4) = v218;
            _os_log_impl(&dword_22F0FC000, v212, v213, "Unable to find first moment for entity with uuid %s", v214, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v215);
            v219 = v215;
            v53 = v581;
            MEMORY[0x2319033A0](v219, -1, -1);
            MEMORY[0x2319033A0](v214, -1, -1);
          }

          else
          {
          }

          v58 = *(v72 + 24);
          v5 = *(v72 + 32);

          v220 = swift_isUniquelyReferenced_nonNull_native();
          v582 = v53;
          v221 = sub_22F1229E8(v58, v5);
          v223 = v53;
          v224 = v53[2];
          v225 = (v222 & 1) == 0;
          v166 = __OFADD__(v224, v225);
          v226 = v224 + v225;
          if (v166)
          {
            goto LABEL_302;
          }

          v227 = v222;
          if (v223[3] < v226)
          {
            sub_22F1259D0(v226, v220);
            v221 = sub_22F1229E8(v58, v5);
            if ((v227 & 1) != (v228 & 1))
            {
              goto LABEL_381;
            }

            goto LABEL_105;
          }

          if (v220)
          {
LABEL_105:
            if ((v227 & 1) == 0)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v235 = v221;
            sub_22F134340();
            v221 = v235;
            if ((v227 & 1) == 0)
            {
LABEL_116:
              v53 = v582;
              *(v582 + 8 * (v221 >> 6) + 64) |= 1 << v221;
              v236 = (v53[6] + 16 * v221);
              *v236 = v58;
              v236[1] = v5;
              *(v53[7] + v221) = 3;

              v237 = v53[2];
              v166 = __OFADD__(v237, 1);
              v234 = v237 + 1;
              if (v166)
              {
                goto LABEL_306;
              }

              goto LABEL_117;
            }
          }

          v229 = v221;

          v53 = v582;
          *(*(v582 + 56) + v229) = 3;
LABEL_107:

          goto LABEL_118;
        }
      }

      else
      {
        v5 = *(v582 + 16);
        if (!v5)
        {
          goto LABEL_97;
        }
      }

      v566 = a2;
      if ((v96 & 0xC000000000000001) != 0)
      {
        v230 = v96;
        v569 = MEMORY[0x2319016F0](0);
        if (__OFSUB__(v5, 1))
        {
          goto LABEL_380;
        }

        v99 = MEMORY[0x2319016F0](v5 - 1, v230);

        v84 = v578;
      }

      else
      {
        v97 = *(v96 + 16);
        if (!v97)
        {
          goto LABEL_295;
        }

        v98 = v5 - 1;
        if (__OFSUB__(v5, 1))
        {
          goto LABEL_296;
        }

        if (v98 >= v97)
        {
          goto LABEL_297;
        }

        v99 = *(v96 + 32 + 8 * v98);
        v569 = *(v96 + 32);
      }

      v100 = [*(v99 + 16) universalStartDate];
      sub_22F73F640();

      v101 = v564;
      v102 = v84;
      v103 = v568;
      (*v554)(v564, a1 + v555, v568);
      v104 = v567;
      v105 = *v567;
      v106 = v570;
      sub_22F73F5E0();
      v107 = *v565;
      (*v565)(v101, v103);
      LOBYTE(v101) = sub_22F73F5D0();
      v107(v106, v103);
      v563 = v107;
      v107(v102, v103);
      if (v101)
      {

        swift_retain_n();

        v108 = sub_22F740B70();
        v109 = sub_22F7415D0();
        v110 = v99;
        if (os_log_type_enabled(v108, v109))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v582 = v112;
          *v111 = v556;
          *(v111 + 4) = v105 / 86400.0;
          *(v111 + 12) = 2080;
          v113 = *(v72 + 24);
          v114 = *(v72 + 32);

          v115 = sub_22F145F20(v113, v114, &v582);

          *(v111 + 14) = v115;
          *(v111 + 22) = 2080;
          v116 = [*(v110 + 16) universalStartDate];
          v117 = v578;
          sub_22F73F640();

          sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578]);
          v118 = v568;
          v119 = sub_22F742010();
          v121 = v120;

          v563(v117, v118);
          v122 = sub_22F145F20(v119, v121, &v582);

          *(v111 + 24) = v122;
          _os_log_impl(&dword_22F0FC000, v108, v109, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v111, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v112, -1, -1);
          MEMORY[0x2319033A0](v111, -1, -1);
        }

        else
        {
        }

        v57 = v572;
        a2 = v566;
        v5 = *(v72 + 24);
        v58 = *(v72 + 32);

        v171 = v581;
        v172 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v171;
        sub_22F1302A0(1, v5, v58, v172);

LABEL_80:
        v53 = v582;
        a1 = v573;
        goto LABEL_118;
      }

      v123 = [*(v569 + 16) universalStartDate];
      sub_22F73F640();

      v550 = v99;
      v124 = [*(v99 + 16) universalStartDate];
      sub_22F73F640();

      v125 = v559;
      sub_22F73F040();
      sub_22F73F080();
      v126 = v104[1];
      if (v127 < v126)
      {

        v128 = *v529;
        v129 = v541;
        v130 = v571;
        (*v529)(v541, v125, v571);
        v131 = v548;
        v128(v548, v125, v130);
        v132 = v549;
        v128(v549, v125, v130);

        v133 = sub_22F740B70();
        v134 = sub_22F7415D0();

        v135 = os_log_type_enabled(v133, v134);
        v136 = v545;
        v532 = v545 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v135)
        {
          v137 = swift_slowAlloc();
          v523 = v133;
          v138 = v137;
          v524 = swift_slowAlloc();
          v582 = v524;
          *v138 = v520;
          *(v138 + 4) = v126 / 86400.0;
          *(v138 + 12) = 2080;
          v139 = *(v72 + 24);
          v140 = *(v72 + 32);

          v141 = sub_22F145F20(v139, v140, &v582);

          *(v138 + 14) = v141;
          *(v138 + 22) = 2080;
          v142 = v578;
          sub_22F73F060();
          v521 = sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578]);
          v143 = v568;
          v144 = sub_22F742010();
          v145 = v129;
          v147 = v146;
          v522 = v134;
          v563(v142, v143);
          v148 = *v545;
          (*v545)(v145, v130);
          v149 = sub_22F145F20(v144, v147, &v582);

          *(v138 + 24) = v149;
          *(v138 + 32) = 2080;
          v150 = v548;
          sub_22F73F030();
          v151 = sub_22F742010();
          v153 = v152;
          v563(v142, v143);
          v148(v150, v130);
          v154 = sub_22F145F20(v151, v153, &v582);

          *(v138 + 34) = v154;
          *(v138 + 42) = 2048;
          v155 = v549;
          sub_22F73F080();
          v157 = v156;
          v148(v155, v130);
          *(v138 + 44) = v157 / 86400.0;
          v158 = v523;
          _os_log_impl(&dword_22F0FC000, v523, v522, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v138, 0x34u);
          v159 = v524;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v159, -1, -1);
          MEMORY[0x2319033A0](v138, -1, -1);
        }

        else
        {

          v148 = *v136;
          (*v136)(v132, v130);
          v148(v131, v130);
          v148(v129, v130);
        }

        v57 = v572;
        a2 = v566;
        v5 = *(v72 + 24);
        v58 = *(v72 + 32);

        v185 = v581;
        v186 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v185;
        sub_22F1302A0(2, v5, v58, v186);

        v148(v559, v130);
        goto LABEL_80;
      }

      v173 = sub_22F24198C(v81);

      sub_22F241D34(v539, v173, v530, v579, sub_22F250880);
      v175 = v174;

      v57 = v572;
      if (v175 > 1.0)
      {

        v176 = sub_22F740B70();
        v177 = sub_22F7415E0();
        v178 = os_log_type_enabled(v176, v177);
        v179 = v581;
        a1 = v573;
        if (v178)
        {
          v180 = swift_slowAlloc();
          v181 = swift_slowAlloc();
          v582 = v181;
          *v180 = v518;
          v182 = *(v72 + 24);
          v183 = *(v72 + 32);

          v184 = sub_22F145F20(v182, v183, &v582);
          a1 = v573;

          *(v180 + 4) = v184;
          v57 = v572;
          *(v180 + 12) = 2048;
          *(v180 + 14) = v175;
          _os_log_impl(&dword_22F0FC000, v176, v177, "Entity %s has invalid location presence %f!", v180, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v181);
          MEMORY[0x2319033A0](v181, -1, -1);
          MEMORY[0x2319033A0](v180, -1, -1);
        }

        else
        {
        }

        v5 = *(v72 + 24);
        v58 = *(v72 + 32);

        v195 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v179;
        sub_22F1302A0(7, v5, v58, v195);

        (*v545)(v559, v571);
        v53 = v582;
        v196 = v574;
        v197 = v580;
        a2 = v566;
        goto LABEL_119;
      }

      v187 = v567[3];
      v53 = v581;
      a1 = v573;
      a2 = v566;
      if (v175 >= v187)
      {
        v198 = *(v72 + 24);
        v199 = *(v72 + 32);
        v200 = v540;
        (*v529)(v540, v559, v571);

        v201 = v584;
        v202 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v201;
        sub_22F130088(v200, v198, v199, v202);

        v525 = v582;
        v584 = v582;
        v203 = *(v72 + 24);
        v58 = *(v72 + 32);

        v204 = v560;
        v205 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v204;
        sub_22F12FF10(v203, v58, v205, v175);

        v560 = v582;

        MEMORY[0x231900D00](v206);
        if (*((v585 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v585 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v238 = *((v585 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();
        v531 = v585;
        v70 = v69 + v70;
        v5 = v546;
        (v562)(v546, v70);
        if (*v5)
        {

          swift_bridgeObjectRelease_n();

          v53 = sub_22F14E740(MEMORY[0x277D84F90]);

          (*v545)(v559, v571);
          (*(v544 + 8))(v579, v543);

          return v53;
        }

        (*v545)(v559, v571);
      }

      else
      {

        v188 = sub_22F740B70();
        v189 = sub_22F7415D0();
        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          v582 = v191;
          *v190 = v556;
          *(v190 + 4) = v187;
          *(v190 + 12) = 2080;
          v192 = *(v72 + 24);
          v193 = *(v72 + 32);

          v194 = sub_22F145F20(v192, v193, &v582);
          a1 = v573;

          *(v190 + 14) = v194;
          v57 = v572;
          *(v190 + 22) = 2048;
          *(v190 + 24) = v175;
          _os_log_impl(&dword_22F0FC000, v188, v189, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v190, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v191);
          MEMORY[0x2319033A0](v191, -1, -1);
          MEMORY[0x2319033A0](v190, -1, -1);
        }

        else
        {
        }

        v5 = *(v72 + 24);
        v58 = *(v72 + 32);

        v207 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v53;
        sub_22F1302A0(5, v5, v58, v207);

        (*v545)(v559, v571);
        v53 = v582;
      }

LABEL_118:
      v196 = v574;
      v197 = v580;
LABEL_119:
      ++a2;
      if (v197 == v196)
      {

        v58 = v531;
        goto LABEL_122;
      }
    }

LABEL_38:
    v81 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v576 = 0;
  v58 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F98];
LABEL_122:

  v239 = sub_22F740B70();
  LOBYTE(v240) = sub_22F7415D0();
  v241 = os_log_type_enabled(v239, v240);
  a2 = v571;
  if (v241)
  {
    v242 = swift_slowAlloc();
    *v242 = 134217984;
    if (!(v58 >> 62))
    {
      v243 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_125;
    }

    goto LABEL_317;
  }

  v244 = v58;

  while (1)
  {
    v245 = v546;
    (v562)(v546, 0.3);
    if (*v245 == 1)
    {

      v53 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v544 + 8))(v579, v543);

LABEL_365:

      return v53;
    }

    v531 = v244;
    v582 = sub_22F36C3E4(v246);
    v247 = v576;
    sub_22F243E0C(&v582, &v584, sub_22F3F6724, v248, type metadata accessor for ImportantEntitiesChildrenProcessorEntity);
    v95 = &v562;
    v532 = v247;
    if (v247)
    {
      goto LABEL_382;
    }

    v249 = v582;
    v250 = 0.4;
    v251 = v546;
    (v562)(v546, 0.4);
    if (*v251)
    {

      v53 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v544 + 8))(v579, v543);
LABEL_364:

      goto LABEL_365;
    }

    if ((v249 & 0x8000000000000000) == 0 && (v249 & 0x4000000000000000) == 0)
    {
      v254 = *(v249 + 16);
      v255 = v254;
      v583 = MEMORY[0x277D84FA0];
      v529 = v254;
      v256 = v254;
      if (v254)
      {
        goto LABEL_135;
      }

LABEL_321:

      v398 = sub_22F246BB0(v531, &v583);

      v484 = v546;
      v485 = v562;
      (v562)(v546, 0.9);
      if ((*v484 & 1) == 0)
      {
        v430 = swift_slowAlloc();
        *v430 = 0;
        v485(0.0);
        v486 = *v430;
        v578 = (v398 >> 62);
        v581 = v398;
        if ((v486 & 1) == 0)
        {
          if (v578)
          {
            goto LABEL_374;
          }

          v580 = (v398 & 0xFFFFFFFFFFFFFF8);
          v487 = *((v398 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v488 = v487;
          goto LABEL_326;
        }

        goto LABEL_337;
      }

      v53 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v544 + 8))(v579, v543);
      goto LABEL_363;
    }

    while (1)
    {
      v529 = sub_22F741A00();
      v255 = v529;
      v583 = MEMORY[0x277D84FA0];
      v256 = sub_22F741A00();
      if (!v256)
      {
        goto LABEL_321;
      }

LABEL_135:
      v5 = 0;
      v576 = v249 & 0xC000000000000001;
      v569 = v249 + 32;
      v550 = v547 + 2;
      v559 = (v528 + 8);
      v540 = (v528 + 32);
      *&v253 = 136315138;
      v564 = v253;
      *&v253 = 136315394;
      v530 = v253;
      v549 = (v547 + 1);
      v257 = 0.5 / v255;
      *&v252 = 136315906;
      v528 = v252;
      v574 = v249;
      v565 = v256;
LABEL_139:
      if (v576)
      {
        v58 = MEMORY[0x2319016F0](v5, v249);
        v258 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      else
      {
        if (v5 >= *(v249 + 16))
        {
          goto LABEL_300;
        }

        v58 = *(v569 + 8 * v5);

        v258 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      v575 = v258;
      v259 = v584;
      v260 = *(v584 + 16);
      v580 = v58;
      if (!v260)
      {
        goto LABEL_200;
      }

      v261 = *(v58 + 24);
      v262 = *(v58 + 32);

      v563 = v261;
      v263 = sub_22F1229E8(v261, v262);
      if ((v264 & 1) == 0)
      {

LABEL_200:

        v342 = sub_22F740B70();
        v343 = sub_22F7415E0();
        if (os_log_type_enabled(v342, v343))
        {
          v344 = swift_slowAlloc();
          v345 = swift_slowAlloc();
          v582 = v345;
          *v344 = v564;
          v346 = v580[3];
          v347 = v53;
          v348 = v580[4];

          v349 = sub_22F145F20(v346, v348, &v582);
          v53 = v347;
          v249 = v574;

          *(v344 + 4) = v349;
          _os_log_impl(&dword_22F0FC000, v342, v343, "Unable to find lifespan for entity %s", v344, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v345);
          v350 = v345;
          v58 = v580;
          MEMORY[0x2319033A0](v350, -1, -1);
          MEMORY[0x2319033A0](v344, -1, -1);
        }

        else
        {
        }

        v351 = *(v58 + 24);
        v5 = *(v58 + 32);

        a2 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v53;
        v352 = sub_22F1229E8(v351, v5);
        v354 = v53[2];
        v355 = (v353 & 1) == 0;
        v166 = __OFADD__(v354, v355);
        v356 = v354 + v355;
        if (v166)
        {
          goto LABEL_304;
        }

        v58 = v353;
        if (v53[3] >= v356)
        {
          if ((a2 & 1) == 0)
          {
            v462 = v352;
            sub_22F134340();
            v352 = v462;
          }
        }

        else
        {
          sub_22F1259D0(v356, a2);
          v352 = sub_22F1229E8(v351, v5);
          if ((v58 & 1) != (v357 & 1))
          {
            goto LABEL_381;
          }
        }

        a2 = v571;
        if (v58)
        {
          v358 = v352;

          v53 = v582;
          *(*(v582 + 56) + v358) = 8;
          goto LABEL_211;
        }

        v53 = v582;
        *(v582 + 8 * (v352 >> 6) + 64) |= 1 << v352;
        v359 = (v53[6] + 16 * v352);
        *v359 = v351;
        v359[1] = v5;
        *(v53[7] + v352) = 8;

        v360 = v53[2];
        v166 = __OFADD__(v360, 1);
        v361 = v360 + 1;
        if (!v166)
        {
          v53[2] = v361;
          goto LABEL_138;
        }

        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:

        v53 = sub_22F14E740(MEMORY[0x277D84F90]);

        (*v549)(v558, a2);
        (*(v544 + 8))(v579, v543);

        goto LABEL_365;
      }

      v557 = v262;
      v265 = *(v259 + 56);
      v548 = v547[9];
      v545 = v547[2];
      (v545)(v558, v265 + v548 * v263, a2);
      if (*(v560 + 16))
      {
        v566 = v259;
        v266 = *(v58 + 32);
        v267 = v580[3];

        v268 = v267;
        v58 = v580;
        v269 = sub_22F1229E8(v268, v266);
        a2 = v270;

        if (a2)
        {
          break;
        }
      }

      v362 = sub_22F740B70();
      v363 = sub_22F7415E0();
      if (os_log_type_enabled(v362, v363))
      {
        v364 = swift_slowAlloc();
        v365 = swift_slowAlloc();
        v582 = v365;
        *v364 = v564;
        v366 = v580[3];
        v367 = v53;
        v368 = v580[4];

        v369 = sub_22F145F20(v366, v368, &v582);
        v53 = v367;
        v249 = v574;

        *(v364 + 4) = v369;
        _os_log_impl(&dword_22F0FC000, v362, v363, "Unable to find important location presence for entity %s", v364, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v365);
        v370 = v365;
        v58 = v580;
        MEMORY[0x2319033A0](v370, -1, -1);
        MEMORY[0x2319033A0](v364, -1, -1);
      }

      else
      {
      }

      v372 = *(v58 + 24);
      v371 = *(v58 + 32);

      a2 = swift_isUniquelyReferenced_nonNull_native();
      v582 = v53;
      v373 = sub_22F1229E8(v372, v371);
      v375 = v53[2];
      v376 = (v374 & 1) == 0;
      v166 = __OFADD__(v375, v376);
      v377 = v375 + v376;
      if (v166)
      {
        goto LABEL_314;
      }

      v58 = v374;
      if (v53[3] >= v377)
      {
        if ((a2 & 1) == 0)
        {
          v474 = v373;
          sub_22F134340();
          v373 = v474;
        }
      }

      else
      {
        sub_22F1259D0(v377, a2);
        v373 = sub_22F1229E8(v372, v371);
        if ((v58 & 1) != (v378 & 1))
        {
          goto LABEL_381;
        }
      }

      a2 = v571;
      v53 = v582;
      if (v58)
      {
        *(*(v582 + 56) + v373) = 9;

LABEL_137:
        (*v549)(v558, a2);
        goto LABEL_138;
      }

      *(v582 + 8 * (v373 >> 6) + 64) |= 1 << v373;
      v379 = (v53[6] + 16 * v373);
      *v379 = v372;
      v379[1] = v371;
      *(v53[7] + v373) = 9;
      v380 = v53[2];
      v166 = __OFADD__(v380, 1);
      v381 = v380 + 1;
      if (!v166)
      {
        v53[2] = v381;

        goto LABEL_137;
      }

      __break(1u);
LABEL_319:
      __break(1u);
    }

    v271 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      goto LABEL_319;
    }

    v272 = *(*(v560 + 56) + 8 * v269);
    v273 = v567;
    a2 = v570;
    if ((v271 & 0x8000000000000000) != 0)
    {
      goto LABEL_232;
    }

LABEL_152:
    v577 = v271;
    if (v576)
    {
      v275 = MEMORY[0x2319016F0]();
    }

    else
    {
      if (v271 >= *(v249 + 16))
      {
        goto LABEL_305;
      }

      v275 = *(v569 + 8 * v271);
    }

    v276 = v275[3];
    a1 = v275[4];
    v277 = v566;
    v278 = *(v566 + 16);

    if (!v278 || (v279 = sub_22F1229E8(v276, a1), (v280 & 1) == 0))
    {

      v306 = sub_22F740B70();
      v307 = sub_22F7415E0();

      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        v309 = swift_slowAlloc();
        v582 = v309;
        *v308 = v564;
        v310 = sub_22F145F20(v276, a1, &v582);

        *(v308 + 4) = v310;
        _os_log_impl(&dword_22F0FC000, v306, v307, "Unable to find lifespan for entity %s", v308, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v309);
        v311 = v309;
        v58 = v580;
        MEMORY[0x2319033A0](v311, -1, -1);
        MEMORY[0x2319033A0](v308, -1, -1);
      }

      else
      {
      }

      v312 = *(v58 + 24);
      v5 = *(v58 + 32);

      a2 = swift_isUniquelyReferenced_nonNull_native();
      v582 = v53;
      v313 = sub_22F1229E8(v312, v5);
      v315 = v53[2];
      v316 = (v314 & 1) == 0;
      v166 = __OFADD__(v315, v316);
      v317 = v315 + v316;
      if (v166)
      {
        goto LABEL_303;
      }

      a1 = v314;
      if (v53[3] >= v317)
      {
        if ((a2 & 1) == 0)
        {
          v340 = v313;
          sub_22F134340();
          v313 = v340;
          v58 = v580;
        }
      }

      else
      {
        sub_22F1259D0(v317, a2);
        v313 = sub_22F1229E8(v312, v5);
        if ((a1 & 1) != (v318 & 1))
        {
          goto LABEL_381;
        }
      }

      v273 = v567;
      a2 = v570;
      if (a1)
      {
        v274 = v313;

        v53 = v582;
        *(*(v582 + 56) + v274) = 8;
      }

      else
      {
        v53 = v582;
        *(v582 + 8 * (v313 >> 6) + 64) |= 1 << v313;
        v319 = (v53[6] + 16 * v313);
        *v319 = v312;
        v319[1] = v5;
        *(v53[7] + v313) = 8;

        v320 = v53[2];
        v166 = __OFADD__(v320, 1);
        v321 = v320 + 1;
        if (v166)
        {
          goto LABEL_307;
        }

        v53[2] = v321;
      }

      a1 = v573;
      v249 = v574;
      goto LABEL_151;
    }

    *&v556 = v276;
    v555 = a1;
    v554 = v275;
    v581 = v53;
    v281 = v553;
    (v545)(v553, *(v277 + 56) + v279 * v548, v571);
    v282 = v578;
    sub_22F73F030();
    sub_22F73F060();
    sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578]);
    v283 = v568;
    v284 = sub_22F740DB0();
    v285 = *v559;
    (*v559)(a2, v283);
    v285(v282, v283);
    if ((v284 & 1) == 0)
    {
      (*v549)(v281, v571);

      a1 = v573;
      v53 = v581;
      v249 = v574;
      v58 = v580;
      v273 = v567;
      goto LABEL_232;
    }

    sub_22F73F060();
    v286 = v542;
    sub_22F73F030();
    v287 = v533;
    sub_22F73F030();
    v288 = sub_22F740DB0();
    v289 = (v288 & 1) == 0;
    if (v288)
    {
      v290 = v286;
    }

    else
    {
      v290 = v287;
    }

    if (v289)
    {
      v291 = v286;
    }

    else
    {
      v291 = v287;
    }

    v285(v290, v283);
    (*v540)(v552, v291, v283);
    sub_22F73F590();
    v293 = v292;
    sub_22F73F080();
    v273 = v567;
    if (v294 * v567[4] >= v293)
    {

      v382 = v568;
      v285(v552, v568);
      v285(v551, v382);
      (*v549)(v553, v571);
      a1 = v573;
      a2 = v570;
      v57 = v572;
      v53 = v581;
      v249 = v574;
      v58 = v580;
      goto LABEL_232;
    }

    v295 = *(v560 + 16);
    v57 = v572;
    v249 = v574;
    v242 = v555;
    v541 = v285;
    if (v295)
    {
      v296 = sub_22F1229E8(v556, v555);
      if (v297)
      {
        break;
      }
    }

    v322 = sub_22F740B70();
    v323 = sub_22F7415E0();

    v324 = os_log_type_enabled(v322, v323);
    v325 = v581;
    if (v324)
    {
      v326 = swift_slowAlloc();
      v327 = swift_slowAlloc();
      v582 = v327;
      *v326 = v564;
      v328 = sub_22F145F20(v556, v242, &v582);

      *(v326 + 4) = v328;
      _os_log_impl(&dword_22F0FC000, v322, v323, "Unable to find important location presence for entity %s", v326, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v327);
      MEMORY[0x2319033A0](v327, -1, -1);
      MEMORY[0x2319033A0](v326, -1, -1);
    }

    else
    {
    }

    v58 = v580;
    v329 = v580[3];
    v239 = v580[4];

    a2 = swift_isUniquelyReferenced_nonNull_native();
    v582 = v325;
    LOBYTE(v240) = v325;
    v330 = sub_22F1229E8(v329, v239);
    v332 = *(v325 + 16);
    v333 = (v331 & 1) == 0;
    v166 = __OFADD__(v332, v333);
    v334 = v332 + v333;
    if (v166)
    {
      goto LABEL_313;
    }

    a1 = v331;
    if (*(v325 + 24) >= v334)
    {
      if ((a2 & 1) == 0)
      {
        v240 = &v582;
        v341 = v330;
        sub_22F134340();
        v330 = v341;
        v58 = v580;
      }
    }

    else
    {
      sub_22F1259D0(v334, a2);
      LOBYTE(v240) = v582;
      v330 = sub_22F1229E8(v329, v239);
      if ((a1 & 1) != (v335 & 1))
      {
        goto LABEL_381;
      }
    }

    v273 = v567;
    a2 = v570;
    v53 = v582;
    if (a1)
    {
      *(*(v582 + 56) + v330) = 9;

      goto LABEL_198;
    }

    *(v582 + 8 * (v330 >> 6) + 64) |= 1 << v330;
    v336 = (v53[6] + 16 * v330);
    *v336 = v329;
    v336[1] = v239;
    *(v53[7] + v330) = 9;
    v337 = v53[2];
    v166 = __OFADD__(v337, 1);
    v338 = v337 + 1;
    if (!v166)
    {
      v53[2] = v338;

LABEL_198:
      a1 = v573;
      v249 = v574;
      v5 = v568;
      v339 = v541;
      (v541)(v552, v568);
      v339(v551, v5);
      (*v549)(v553, v571);
LABEL_151:
      v271 = v577;
      if (v577 < 0)
      {
        goto LABEL_232;
      }

      goto LABEL_152;
    }

    __break(1u);
LABEL_317:
    v243 = sub_22F741A00();
LABEL_125:
    *(v242 + 4) = v243;
    v244 = v58;

    _os_log_impl(&dword_22F0FC000, v239, v240, "After filtering potential entities, there are %ld entities remaining.", v242, 0xCu);
    MEMORY[0x2319033A0](v242, -1, -1);
  }

  v298 = *(*(v560 + 56) + 8 * v296);
  v299 = v557;

  v300 = sub_22F740B70();
  v301 = sub_22F7415C0();

  v302 = v242;
  if (os_log_type_enabled(v300, v301))
  {
    v303 = swift_slowAlloc();
    v304 = swift_slowAlloc();
    v582 = v304;
    *v303 = v530;
    *(v303 + 4) = sub_22F145F20(v563, v299, &v582);
    *(v303 + 12) = 2080;
    *(v303 + 14) = sub_22F145F20(v556, v242, &v582);
    _os_log_impl(&dword_22F0FC000, v300, v301, "Entity %s's lifespan has significant overlap with %s's lifespan!", v303, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v304, -1, -1);
    v273 = v567;
    MEMORY[0x2319033A0](v303, -1, -1);
  }

  a2 = v570;
  v53 = v581;
  v58 = v580;
  if (v272 >= v298 * v273[5])
  {

    v5 = v568;
    v305 = v541;
    (v541)(v552, v568);
    v305(v551, v5);
    (*v549)(v553, v571);
    v271 = v577 - 1;
    a1 = v573;
    if (v577 - 1 < 0)
    {
      goto LABEL_232;
    }

    goto LABEL_152;
  }

  v383 = v557;

  v384 = v563;
  sub_22F10BBDC(&v582, v563, v383);

  v385 = sub_22F740B70();
  v386 = sub_22F7415D0();

  if (os_log_type_enabled(v385, v386))
  {
    v387 = swift_slowAlloc();
    v388 = swift_slowAlloc();
    v582 = v388;
    *v387 = v528;
    *(v387 + 4) = sub_22F145F20(v384, v383, &v582);
    *(v387 + 12) = 2048;
    *(v387 + 14) = v272;
    *(v387 + 22) = 2080;
    v389 = sub_22F145F20(v556, v302, &v582);

    *(v387 + 24) = v389;
    a2 = v570;
    v273 = v567;
    *(v387 + 32) = 2048;
    *(v387 + 34) = v298;
    _os_log_impl(&dword_22F0FC000, v385, v386, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v387, 0x2Au);
    swift_arrayDestroy();
    v390 = v388;
    v58 = v580;
    MEMORY[0x2319033A0](v390, -1, -1);
    v391 = v387;
    v53 = v581;
    MEMORY[0x2319033A0](v391, -1, -1);
  }

  else
  {

    v273 = v567;
  }

  v392 = *(v58 + 24);
  v393 = v580[4];

  v394 = swift_isUniquelyReferenced_nonNull_native();
  v582 = v53;
  sub_22F1302A0(6, v392, v393, v394);

  v58 = v580;

  v395 = v568;
  v396 = v541;
  (v541)(v552, v568);
  v396(v551, v395);
  (*v549)(v553, v571);
  v53 = v582;
  a1 = v573;
LABEL_232:
  if (sub_22F15E910(v563, v557, v583))
  {
    a2 = v571;
    (*v549)(v558, v571);

    goto LABEL_138;
  }

  if (v575 >= v529)
  {
LABEL_278:

    a2 = v571;
    goto LABEL_279;
  }

  v397 = v575;
  while (2)
  {
    *&v556 = v397;
    if (v576)
    {
      v398 = MEMORY[0x2319016F0]();
      goto LABEL_241;
    }

    if ((v397 & 0x8000000000000000) == 0)
    {
      if (v397 >= *(v249 + 16))
      {
        goto LABEL_376;
      }

      v398 = *(v569 + 8 * v397);

LABEL_241:
      v399 = v566;
      v400 = *(v398 + 24);
      v401 = *(v398 + 32);
      v402 = *(v566 + 16);

      v577 = v398;
      if (v402)
      {
        v403 = sub_22F1229E8(v400, v401);
        if (v404)
        {
          v555 = v400;
          v554 = v401;
          v405 = v538;
          (v545)(v538, *(v399 + 56) + v403 * v548, v571);
          v406 = v578;
          sub_22F73F030();
          sub_22F73F060();
          sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578]);
          v407 = v568;
          v408 = sub_22F740DB0();
          v409 = *v559;
          (*v559)(a2, v407);
          v409(v406, v407);
          if (v408)
          {
            v581 = v53;
            sub_22F73F060();
            v410 = v534;
            sub_22F73F030();
            v411 = v535;
            sub_22F73F030();
            v412 = sub_22F740DB0();
            v413 = (v412 & 1) == 0;
            if (v412)
            {
              v414 = v410;
            }

            else
            {
              v414 = v411;
            }

            if (v413)
            {
              v415 = v410;
            }

            else
            {
              v415 = v411;
            }

            v409(v414, v407);
            (*v540)(v537, v415, v407);
            sub_22F73F590();
            v417 = v416;
            sub_22F73F080();
            if (v418 * v273[4] < v417)
            {
              v57 = v572;
              v53 = v581;
              v58 = v580;
              v419 = v554;
              if (*(v560 + 16))
              {
                v420 = sub_22F1229E8(v555, v554);
                if (v421)
                {
                  v422 = *(*(v560 + 56) + 8 * v420);
                  v423 = v419;
                  v424 = v557;

                  v425 = sub_22F740B70();
                  v426 = sub_22F7415C0();

                  if (os_log_type_enabled(v425, v426))
                  {
                    v427 = swift_slowAlloc();
                    v428 = swift_slowAlloc();
                    v582 = v428;
                    *v427 = v530;
                    *(v427 + 4) = sub_22F145F20(v563, v424, &v582);
                    *(v427 + 12) = 2080;
                    *(v427 + 14) = sub_22F145F20(v555, v423, &v582);
                    _os_log_impl(&dword_22F0FC000, v425, v426, "Entity %s's lifespan has significant overlap with %s's lifespan!", v427, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x2319033A0](v428, -1, -1);
                    v273 = v567;
                    MEMORY[0x2319033A0](v427, -1, -1);
                  }

                  a2 = v570;
                  v249 = v574;
                  if (v272 >= v422 * v273[5])
                  {

                    v429 = v568;
                    v409(v537, v568);
                    v409(v536, v429);
                    (*v549)(v538, v571);
                    v397 = v556 + 1;
                    if (__OFADD__(v556, 1))
                    {
                      goto LABEL_378;
                    }

                    a1 = v573;
LABEL_277:
                    if (v397 >= v529)
                    {
                      goto LABEL_278;
                    }

                    continue;
                  }

                  v463 = v409;
                  v464 = v557;
                  v465 = v423;

                  v466 = v563;
                  sub_22F10BBDC(&v582, v563, v464);

                  v467 = sub_22F740B70();
                  v468 = sub_22F7415D0();
                  v469 = v465;

                  if (os_log_type_enabled(v467, v468))
                  {
                    v470 = swift_slowAlloc();
                    v471 = swift_slowAlloc();
                    v582 = v471;
                    *v470 = v528;
                    v472 = sub_22F145F20(v466, v464, &v582);

                    *(v470 + 4) = v472;
                    *(v470 + 12) = 2048;
                    *(v470 + 14) = v272;
                    *(v470 + 22) = 2080;
                    v473 = sub_22F145F20(v555, v469, &v582);

                    *(v470 + 24) = v473;
                    *(v470 + 32) = 2048;
                    *(v470 + 34) = v422;
                    _os_log_impl(&dword_22F0FC000, v467, v468, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v470, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x2319033A0](v471, -1, -1);
                    MEMORY[0x2319033A0](v470, -1, -1);
                  }

                  else
                  {
                  }

                  v58 = v580;
                  v475 = v580[3];
                  v476 = v580[4];

                  v477 = v581;
                  v478 = swift_isUniquelyReferenced_nonNull_native();
                  v582 = v477;
                  sub_22F1302A0(6, v475, v476, v478);

                  v479 = v568;
                  v463(v537, v568);
                  v463(v536, v479);
                  a2 = v571;
                  (*v549)(v538, v571);
                  v53 = v582;
                  a1 = v573;
                  v57 = v572;
                  v249 = v574;
LABEL_279:
                  v250 = v257 + v250;
                  v460 = v546;
                  (v562)(v546, v250);
                  if (*v460 == 1)
                  {
                    goto LABEL_315;
                  }

                  (*v549)(v558, a2);
LABEL_211:

LABEL_138:
                  v5 = v575;
                  if (v575 == v565)
                  {
                    goto LABEL_321;
                  }

                  goto LABEL_139;
                }
              }

              v450 = sub_22F740B70();
              v451 = sub_22F7415E0();

              if (os_log_type_enabled(v450, v451))
              {
                v452 = swift_slowAlloc();
                v453 = swift_slowAlloc();
                v582 = v453;
                *v452 = v564;
                v454 = sub_22F145F20(v555, v419, &v582);

                *(v452 + 4) = v454;
                v53 = v581;
                _os_log_impl(&dword_22F0FC000, v450, v451, "Unable to find important location presence for entity %s", v452, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v453);
                MEMORY[0x2319033A0](v453, -1, -1);
                MEMORY[0x2319033A0](v452, -1, -1);
              }

              else
              {
              }

              v249 = v574;
              v455 = *(v58 + 24);
              v456 = *(v58 + 32);

              v457 = swift_isUniquelyReferenced_nonNull_native();
              v582 = v53;
              sub_22F1302A0(9, v455, v456, v457);

              v458 = v568;
              v409(v537, v568);
              v409(v536, v458);
              (*v549)(v538, v571);
              v53 = v582;
              a1 = v573;
              v273 = v567;
              a2 = v570;
LABEL_276:
              v397 = v556;
              goto LABEL_277;
            }

            v461 = v568;
            v409(v537, v568);
            v409(v536, v461);
            a2 = v571;
            (*v549)(v538, v571);
            a1 = v573;
            v57 = v572;
            v53 = v581;
          }

          else
          {
            a2 = v571;
            (*v549)(v405, v571);

            a1 = v573;
            v57 = v572;
          }

          v249 = v574;
          v58 = v580;
          goto LABEL_279;
        }
      }

      v430 = v400;
      v431 = v53;

      v432 = sub_22F740B70();
      v433 = sub_22F7415E0();

      if (os_log_type_enabled(v432, v433))
      {
        v434 = swift_slowAlloc();
        v398 = swift_slowAlloc();
        v582 = v398;
        *v434 = v564;
        v435 = sub_22F145F20(v430, v401, &v582);

        *(v434 + 4) = v435;
        _os_log_impl(&dword_22F0FC000, v432, v433, "Unable to find lifespan for entity %s", v434, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v398);
        MEMORY[0x2319033A0](v398, -1, -1);
        MEMORY[0x2319033A0](v434, -1, -1);
      }

      else
      {
      }

      v53 = *(v58 + 24);
      v436 = *(v58 + 32);

      v437 = swift_isUniquelyReferenced_nonNull_native();
      v582 = v431;
      v438 = sub_22F1229E8(v53, v436);
      v440 = *(v431 + 16);
      v441 = (v439 & 1) == 0;
      v166 = __OFADD__(v440, v441);
      v442 = v440 + v441;
      a1 = v573;
      if (!v166)
      {
        v443 = v439;
        if (*(v431 + 24) >= v442)
        {
          if ((v437 & 1) == 0)
          {
            v459 = v438;
            sub_22F134340();
            v438 = v459;
            v58 = v580;
          }
        }

        else
        {
          sub_22F1259D0(v442, v437);
          v438 = sub_22F1229E8(v53, v436);
          if ((v443 & 1) != (v444 & 1))
          {
            goto LABEL_381;
          }
        }

        v273 = v567;
        a2 = v570;
        if (v443)
        {
          v445 = v438;

          v53 = v582;
          *(*(v582 + 56) + v445) = 8;
        }

        else
        {
          v446 = v582;
          *(v582 + 8 * (v438 >> 6) + 64) |= 1 << v438;
          v447 = (*(v446 + 48) + 16 * v438);
          *v447 = v53;
          v447[1] = v436;
          v53 = v446;
          *(*(v446 + 56) + v438) = 8;

          v448 = v53[2];
          v166 = __OFADD__(v448, 1);
          v449 = v448 + 1;
          if (v166)
          {
            goto LABEL_377;
          }

          v53[2] = v449;
        }

        v249 = v574;
        goto LABEL_276;
      }

      __break(1u);
LABEL_374:
      v580 = (v398 & 0xFFFFFFFFFFFFFF8);
      v488 = sub_22F741A00();
      v487 = sub_22F741A00();
LABEL_326:
      v489 = 0;
      v490 = a1 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode;
      v491 = v398 & 0xC000000000000001;
      v492 = 0.0;
      v493 = 1.0 / v488;
      while (v487 != v489)
      {
        if (v491)
        {
          v494 = MEMORY[0x2319016F0](v489, v398);
          if (__OFADD__(v489, 1))
          {
            goto LABEL_335;
          }
        }

        else
        {
          if (v489 >= v580[2])
          {
            goto LABEL_370;
          }

          v494 = *(v398 + 8 * v489 + 32);

          if (__OFADD__(v489, 1))
          {
LABEL_335:
            __break(1u);
            break;
          }
        }

        v495 = v53;
        v497 = *v490;
        v496 = *(v490 + 8);
        v498 = *(v494 + 16);
        v497();
        v53 = v495;
        v398 = v581;

        v492 = v493 + v492;
        (v562)(v430, v492);
        LOBYTE(v498) = *v430;

        ++v489;
        if (v498)
        {
          goto LABEL_337;
        }
      }

      (v562)(v430, 1.0);
LABEL_337:
      if (v578)
      {
        goto LABEL_372;
      }

      v499 = *((v398 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_339:
      v500 = v562;
      v501 = v579;
      if (!v499)
      {
LABEL_360:

        (v500)(v546, 1.0);
        if (v519)
        {
          sub_22F242910(v53);
        }

        (*(v544 + 8))(v501, v543);
LABEL_363:

        goto LABEL_364;
      }

      v502 = 0;
      v580 = (v398 & 0xC000000000000001);
      v578 = (v398 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v580)
        {
          v503 = v53;
          v53 = MEMORY[0x2319016F0](v502, v398);
          v504 = v502 + 1;
          if (__OFADD__(v502, 1))
          {
            goto LABEL_367;
          }
        }

        else
        {
          if (v502 >= *(v578 + 2))
          {
            goto LABEL_371;
          }

          v503 = v53;
          v53 = *(v398 + 8 * v502 + 32);

          v504 = v502 + 1;
          if (__OFADD__(v502, 1))
          {
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            v499 = sub_22F741A00();
            goto LABEL_339;
          }
        }

        v506 = v53[3];
        v505 = v53[4];

        v507 = swift_isUniquelyReferenced_nonNull_native();
        v582 = v503;
        v398 = sub_22F1229E8(v506, v505);
        v509 = *(v503 + 16);
        v510 = (v508 & 1) == 0;
        v511 = v509 + v510;
        if (__OFADD__(v509, v510))
        {
          goto LABEL_368;
        }

        v512 = v508;
        if (*(v503 + 24) >= v511)
        {

          if (v507)
          {
            if (v512)
            {
              goto LABEL_341;
            }
          }

          else
          {
            sub_22F134340();
            if (v512)
            {
              goto LABEL_341;
            }
          }
        }

        else
        {
          sub_22F1259D0(v511, v507);
          v513 = sub_22F1229E8(v506, v505);
          if ((v512 & 1) != (v514 & 1))
          {
            goto LABEL_381;
          }

          v398 = v513;

          if (v512)
          {
LABEL_341:

            v53 = v582;
            *(*(v582 + 56) + v398) = 0;
            goto LABEL_342;
          }
        }

        v53 = v582;
        *(v582 + 8 * (v398 >> 6) + 64) |= 1 << v398;
        v515 = (v53[6] + 16 * v398);
        *v515 = v506;
        v515[1] = v505;
        *(v53[7] + v398) = 0;
        v516 = v53[2];
        v166 = __OFADD__(v516, 1);
        v517 = v516 + 1;
        if (v166)
        {
          goto LABEL_369;
        }

        v53[2] = v517;
LABEL_342:
        ++v502;
        v501 = v579;
        v500 = v562;
        v398 = v581;
        if (v504 == v499)
        {
          goto LABEL_360;
        }
      }
    }

    break;
  }

  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  sub_22F7420C0();
  __break(1u);
LABEL_382:

  __break(1u);
  return result;
}

unint64_t sub_22F24B998(uint64_t a1, unint64_t a2, void (*a3)(double), uint64_t a4, int a5)
{
  v543 = a5;
  v577 = sub_22F73F690();
  v9 = *(v577 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v577);
  v568 = &v525 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v525 - v13;
  MEMORY[0x28223BE20](v15);
  v548 = &v525 - v16;
  MEMORY[0x28223BE20](v17);
  v559 = &v525 - v18;
  MEMORY[0x28223BE20](v19);
  v558 = &v525 - v20;
  MEMORY[0x28223BE20](v21);
  v539 = &v525 - v22;
  MEMORY[0x28223BE20](v23);
  v538 = &v525 - v24;
  MEMORY[0x28223BE20](v25);
  v541 = &v525 - v26;
  MEMORY[0x28223BE20](v27);
  v540 = &v525 - v28;
  MEMORY[0x28223BE20](v29);
  v572 = &v525 - v30;
  MEMORY[0x28223BE20](v31);
  v574 = &v525 - v32;
  isUniquelyReferenced_nonNull_native = sub_22F73F090();
  v552 = *(isUniquelyReferenced_nonNull_native - 8);
  v34 = v552[8];
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  *&v545 = &v525 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v554 = &v525 - v37;
  MEMORY[0x28223BE20](v38);
  v553 = &v525 - v39;
  MEMORY[0x28223BE20](v40);
  v547 = &v525 - v41;
  MEMORY[0x28223BE20](v42);
  v567 = &v525 - v43;
  MEMORY[0x28223BE20](v44);
  v560 = &v525 - v45;
  MEMORY[0x28223BE20](v46);
  v542 = &v525 - v47;
  MEMORY[0x28223BE20](v48);
  v50 = &v525 - v49;
  v549 = sub_22F740B90();
  v550 = *(v549 - 8);
  v51 = *(v550 + 64);
  MEMORY[0x28223BE20](v549);
  v53 = &v525 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_slowAlloc();
  *v54 = 0;
  v556 = a4;
  v557 = a3;
  a3(0.0);
  v551 = v54;
  if (*v54 == 1)
  {
    v55 = MEMORY[0x277D84F90];

    return sub_22F14E740(v55);
  }

  v533 = v9;
  v537 = v14;
  v585 = v53;
  sub_22F740B80();
  swift_beginAccess();
  v57 = *(a1 + 24);
  v58 = v57 >> 62;
  if (v57 >> 62)
  {
    goto LABEL_300;
  }

  v59 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v60 = a2;
  if (!v59)
  {
LABEL_301:
    v481 = v585;
    v482 = sub_22F740B70();
    v483 = sub_22F7415D0();
    if (os_log_type_enabled(v482, v483))
    {
      v484 = swift_slowAlloc();
      *v484 = 0;
      _os_log_impl(&dword_22F0FC000, v482, v483, "No entities found in the container, returning...", v484, 2u);
      MEMORY[0x2319033A0](v484, -1, -1);
    }

    v252 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v550 + 8))(v481, v549);
    return v252;
  }

LABEL_7:
  swift_bridgeObjectRetain_n();
  v61 = sub_22F740B70();
  v62 = sub_22F7415D0();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    if (v58)
    {
      v64 = sub_22F741A00();
    }

    else
    {
      v64 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v63 + 4) = v64;

    _os_log_impl(&dword_22F0FC000, v61, v62, "There are %ld potential entities.", v63, 0xCu);
    MEMORY[0x2319033A0](v63, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v65 = *(a1 + 40);

  v544 = sub_22F24198C(v530);
  v582 = *(v60 + 16);
  v66 = v582 / 2;
  if (v582 / 2 <= 1)
  {
    v66 = 1;
  }

  *&v535 = v66;
  v67 = MEMORY[0x277D84F90];
  v592 = MEMORY[0x277D84F90];
  v529 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v591 = v529;
  v68 = sub_22F14E214(v67);
  if (v58)
  {
    v69 = sub_22F741A00();
  }

  else
  {
    v69 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v565 = v68;
  v583 = a1;
  v570 = v60;
  v581 = isUniquelyReferenced_nonNull_native;
  v571 = v50;
  v576 = v57;
  if (v69)
  {
    v70 = 0.3 / v59;
    v71 = OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_latestMomentDatetime;
    v579 = v57 & 0xC000000000000001;

    swift_beginAccess();
    v562 = v71;
    swift_beginAccess();
    a2 = 0;
    v580 = 0;
    v564 = v57 & 0xFFFFFFFFFFFFFF8;
    v561 = (v533 + 16);
    *&v569 = v533 + 8;
    v534 = (v552 + 2);
    v546 = (v552 + 1);
    v58 = MEMORY[0x277D84F90];
    v72 = 0.0;
    v50 = MEMORY[0x277D84F98];
    *&v73 = 134218498;
    v563 = v73;
    *&v73 = 136315138;
    v532 = v73;
    *&v73 = 134219010;
    v526 = v73;
    *&v73 = 136315394;
    v525 = v73;
    v578 = v69;
    while (1)
    {
      v588 = v58;
      if (v579)
      {
        v74 = MEMORY[0x2319016F0](a2, v57);
        v75 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_284;
        }
      }

      else
      {
        if (a2 >= *(v564 + 16))
        {
          goto LABEL_286;
        }

        v74 = *(v57 + 8 * a2 + 32);

        v75 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_284:
          __break(1u);
LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          v59 = sub_22F741A00();
          v60 = a2;
          if (!v59)
          {
            goto LABEL_301;
          }

          goto LABEL_7;
        }
      }

      v586 = a2;
      v76 = *(a1 + 32);
      v77 = *(v76 + 16);
      v587 = v75;
      if (!v77)
      {
        goto LABEL_37;
      }

      v78 = *(v74 + 24);
      v58 = *(v74 + 32);

      v79 = sub_22F1229E8(v78, v58);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_36;
      }

      a2 = *(*(v76 + 56) + 8 * v79);

      if ((a2 & 0xC000000000000001) != 0)
      {
        v82 = sub_22F741A00();
        if (!v82)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v82 = *(a2 + 16);
        if (!v82)
        {
LABEL_36:

LABEL_37:
          isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
          v85 = MEMORY[0x277D84F90] >> 62;
          if (!(MEMORY[0x277D84F90] >> 62))
          {
            goto LABEL_38;
          }

          goto LABEL_80;
        }
      }

      if (v82 < 1)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        isUniquelyReferenced_nonNull_native = swift_allocObject();
        v83 = _swift_stdlib_malloc_size(isUniquelyReferenced_nonNull_native);
        v84 = v83 - 32;
        if (v83 < 32)
        {
          v84 = v83 - 25;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v82;
        *(isUniquelyReferenced_nonNull_native + 24) = (2 * (v84 >> 3)) | 1;
      }

      v58 = sub_22F11A590(&v589, (isUniquelyReferenced_nonNull_native + 32), v82, a2);
      sub_22F0FF590();
      if (v58 != v82)
      {
        goto LABEL_293;
      }

      v85 = isUniquelyReferenced_nonNull_native >> 62;
      if (!(isUniquelyReferenced_nonNull_native >> 62))
      {
LABEL_38:
        v86 = (isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8);
        if (*((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10) < v582)
        {
          goto LABEL_39;
        }

        goto LABEL_43;
      }

LABEL_80:
      if (sub_22F741A00() < v582)
      {
LABEL_39:

        v87 = sub_22F740B70();
        v88 = sub_22F7415D0();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v589 = v90;
          *v89 = v563;
          *(v89 + 4) = v582;
          *(v89 + 12) = 2080;
          v92 = *(v74 + 24);
          v91 = *(v74 + 32);

          v93 = sub_22F145F20(v92, v91, &v589);

          *(v89 + 14) = v93;
          *(v89 + 22) = 2048;
          if (v85)
          {
            v94 = sub_22F741A00();
          }

          else
          {
            v94 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v89 + 24) = v94;

          _os_log_impl(&dword_22F0FC000, v87, v88, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v89, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v90);
          MEMORY[0x2319033A0](v90, -1, -1);
          MEMORY[0x2319033A0](v89, -1, -1);

          a1 = v583;
          v57 = v576;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v58 = *(v74 + 24);
        a2 = *(v74 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v589 = v50;
        v162 = sub_22F1229E8(v58, a2);
        v164 = *(v50 + 16);
        v165 = (v163 & 1) == 0;
        v166 = __OFADD__(v164, v165);
        v167 = v164 + v165;
        if (v166)
        {
          goto LABEL_285;
        }

        v168 = v163;
        if (*(v50 + 24) >= v167)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v239 = v162;
            sub_22F134340();
            v162 = v239;
          }
        }

        else
        {
          sub_22F1259D0(v167, isUniquelyReferenced_nonNull_native);
          v162 = sub_22F1229E8(v58, a2);
          if ((v168 & 1) != (v169 & 1))
          {
            goto LABEL_375;
          }
        }

        isUniquelyReferenced_nonNull_native = v581;
        if ((v168 & 1) == 0)
        {
          v50 = v589;
          *(v589 + 8 * (v162 >> 6) + 64) |= 1 << v162;
          v171 = (*(v50 + 48) + 16 * v162);
          *v171 = v58;
          v171[1] = a2;
          *(*(v50 + 56) + v162) = 4;

          v172 = *(v50 + 16);
          v166 = __OFADD__(v172, 1);
          v173 = v172 + 1;
          if (v166)
          {
            goto LABEL_290;
          }

LABEL_113:
          *(v50 + 16) = v173;
          goto LABEL_114;
        }

        v170 = v162;

        v50 = v589;
        *(*(v589 + 56) + v170) = 4;
        goto LABEL_111;
      }

      v188 = sub_22F741A00();
      if (v188)
      {
        v189 = v188;
        v86 = sub_22F120B48(v188, 0);

        sub_22F3CC8CC((v86 + 4), v189, isUniquelyReferenced_nonNull_native);
        v58 = v190;

        if (v58 != v189)
        {
          goto LABEL_373;
        }
      }

      else
      {
        v86 = MEMORY[0x277D84F90];
      }

LABEL_43:
      v589 = v86;
      v85 = v580;
      sub_22F243D0C(&v589);
      if (v85)
      {
        goto LABEL_376;
      }

      v95 = v589;
      v580 = 0;
      if ((v589 & 0x8000000000000000) != 0 || (v589 & 0x4000000000000000) != 0)
      {
        v220 = v589;
        a2 = sub_22F741A00();
        v95 = v220;
        if (!a2)
        {
LABEL_100:

          v221 = sub_22F740B70();
          v222 = sub_22F7415E0();
          if (os_log_type_enabled(v221, v222))
          {
            v223 = swift_slowAlloc();
            v224 = swift_slowAlloc();
            v589 = v224;
            *v223 = v532;
            v225 = *(v74 + 24);
            v226 = *(v74 + 32);

            v227 = sub_22F145F20(v225, v226, &v589);
            v57 = v576;

            *(v223 + 4) = v227;
            _os_log_impl(&dword_22F0FC000, v221, v222, "Unable to find first moment for entity with uuid %s", v223, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v224);
            MEMORY[0x2319033A0](v224, -1, -1);
            MEMORY[0x2319033A0](v223, -1, -1);
          }

          else
          {
          }

          v58 = *(v74 + 24);
          a2 = *(v74 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v589 = v50;
          v228 = sub_22F1229E8(v58, a2);
          v230 = *(v50 + 16);
          v231 = (v229 & 1) == 0;
          v166 = __OFADD__(v230, v231);
          v232 = v230 + v231;
          if (v166)
          {
            goto LABEL_294;
          }

          v233 = v229;
          if (*(v50 + 24) >= v232)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v240 = v228;
              sub_22F134340();
              v228 = v240;
            }
          }

          else
          {
            sub_22F1259D0(v232, isUniquelyReferenced_nonNull_native);
            v228 = sub_22F1229E8(v58, a2);
            if ((v233 & 1) != (v234 & 1))
            {
              goto LABEL_375;
            }
          }

          isUniquelyReferenced_nonNull_native = v581;
          if ((v233 & 1) == 0)
          {
            v50 = v589;
            *(v589 + 8 * (v228 >> 6) + 64) |= 1 << v228;
            v236 = (*(v50 + 48) + 16 * v228);
            *v236 = v58;
            v236[1] = a2;
            *(*(v50 + 56) + v228) = 3;

            v237 = *(v50 + 16);
            v166 = __OFADD__(v237, 1);
            v173 = v237 + 1;
            if (v166)
            {
              goto LABEL_298;
            }

            goto LABEL_113;
          }

          v235 = v228;

          v50 = v589;
          *(*(v589 + 56) + v235) = 3;
LABEL_111:

          goto LABEL_114;
        }
      }

      else
      {
        a2 = *(v589 + 16);
        if (!a2)
        {
          goto LABEL_100;
        }
      }

      v584 = v50;
      v573 = v74;
      if ((v95 & 0xC000000000000001) != 0)
      {
        v238 = v95;
        v575 = MEMORY[0x2319016F0](0);
        a1 = 0x27889D000;
        if (__OFSUB__(a2, 1))
        {
          goto LABEL_374;
        }

        v98 = MEMORY[0x2319016F0](a2 - 1, v238);
      }

      else
      {
        v96 = *(v95 + 16);
        a1 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
        if (!v96)
        {
          goto LABEL_287;
        }

        v97 = a2 - 1;
        if (__OFSUB__(a2, 1))
        {
          goto LABEL_288;
        }

        if (v97 >= v96)
        {
          goto LABEL_289;
        }

        v98 = *(v95 + 32 + 8 * v97);
        v575 = *(v95 + 32);
      }

      v99 = [*(v98 + 16) *(a1 + 568)];
      v100 = v574;
      sub_22F73F640();

      v101 = v568;
      v102 = v577;
      (*v561)(v568, v562 + v583, v577);
      v103 = v570;
      v104 = *v570;
      v105 = v572;
      sub_22F73F5E0();
      v106 = *v569;
      (*v569)(v101, v102);
      LOBYTE(v101) = sub_22F73F5D0();
      (v106)(v105, v102);
      v566 = v106;
      (v106)(v100, v102);
      if (v101)
      {

        swift_retain_n();
        v107 = v573;

        v108 = sub_22F740B70();
        v109 = sub_22F7415D0();
        v110 = v98;
        if (os_log_type_enabled(v108, v109))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          v589 = v112;
          *v111 = v563;
          *(v111 + 4) = v104 / 86400.0;
          *(v111 + 12) = 2080;
          v113 = *(v107 + 24);
          v114 = *(v107 + 32);

          v115 = sub_22F145F20(v113, v114, &v589);

          *(v111 + 14) = v115;
          *(v111 + 22) = 2080;
          v116 = [*(v110 + 16) universalStartDate];
          v117 = v574;
          sub_22F73F640();

          sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578]);
          v118 = v577;
          v119 = sub_22F742010();
          v121 = v120;

          (v566)(v117, v118);
          v122 = sub_22F145F20(v119, v121, &v589);

          *(v111 + 24) = v122;
          _os_log_impl(&dword_22F0FC000, v108, v109, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v111, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v112, -1, -1);
          MEMORY[0x2319033A0](v111, -1, -1);
        }

        else
        {
        }

        v57 = v576;
        v174 = v584;
        v175 = *(v107 + 24);
        v176 = *(v107 + 32);

        v177 = swift_isUniquelyReferenced_nonNull_native();
        v589 = v174;
        sub_22F1302A0(1, v175, v176, v177);

        v50 = v589;
        a1 = v583;
        isUniquelyReferenced_nonNull_native = v581;
      }

      else
      {
        v123 = [*(v575 + 16) *(a1 + 568)];
        sub_22F73F640();

        v555 = v98;
        v124 = [*(v98 + 16) *(a1 + 568)];
        sub_22F73F640();

        v125 = v567;
        sub_22F73F040();
        sub_22F73F080();
        v126 = v103[1];
        v127 = v573;
        if (v128 >= v126)
        {
          v178 = sub_22F24198C(isUniquelyReferenced_nonNull_native);

          sub_22F241D34(v544, v178, v535, v585, sub_22F250800);
          v180 = v179;

          v57 = v576;
          v50 = v584;
          a1 = v583;
          if (v180 <= 1.0)
          {
            v196 = v570[3];
            isUniquelyReferenced_nonNull_native = v581;
            if (v180 >= v196)
            {
              v209 = *(v127 + 24);
              v210 = *(v127 + 32);
              v211 = v545;
              (*v534)(v545, v567, v581);

              v212 = v591;
              v213 = swift_isUniquelyReferenced_nonNull_native();
              v589 = v212;
              sub_22F130088(v211, v209, v210, v213);

              v529 = v589;
              v591 = v589;
              v214 = *(v127 + 24);
              v215 = *(v127 + 32);

              v216 = v565;
              v217 = swift_isUniquelyReferenced_nonNull_native();
              v589 = v216;
              sub_22F12FF10(v214, v215, v217, v180);

              v565 = v589;

              MEMORY[0x231900D00](v218);
              if (*((v592 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v592 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v241 = *((v592 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_22F7411C0();
              }

              sub_22F741220();
              v58 = v592;
              v72 = v70 + v72;
              v219 = v551;
              (v557)(v551, v72);
              if (*v219)
              {

                swift_bridgeObjectRelease_n();

                v252 = sub_22F14E740(MEMORY[0x277D84F90]);

                (*v546)(v567, isUniquelyReferenced_nonNull_native);
                (*(v550 + 8))(v585, v549);

                return v252;
              }

              (*v546)(v567, isUniquelyReferenced_nonNull_native);

              goto LABEL_115;
            }

            v197 = sub_22F740B70();
            v198 = sub_22F7415D0();
            if (os_log_type_enabled(v197, v198))
            {
              v199 = swift_slowAlloc();
              v200 = swift_slowAlloc();
              v589 = v200;
              *v199 = v563;
              *(v199 + 4) = v196;
              *(v199 + 12) = 2080;
              v201 = *(v127 + 24);
              v202 = *(v127 + 32);

              v203 = sub_22F145F20(v201, v202, &v589);
              a1 = v583;

              *(v199 + 14) = v203;
              v57 = v576;
              *(v199 + 22) = 2048;
              *(v199 + 24) = v180;
              _os_log_impl(&dword_22F0FC000, v197, v198, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v199, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v200);
              v204 = v200;
              isUniquelyReferenced_nonNull_native = v581;
              MEMORY[0x2319033A0](v204, -1, -1);
              MEMORY[0x2319033A0](v199, -1, -1);
            }

            else
            {
            }

            v205 = *(v127 + 24);
            v206 = *(v127 + 32);

            v207 = swift_isUniquelyReferenced_nonNull_native();
            v589 = v50;
            v208 = 5;
          }

          else
          {

            v181 = sub_22F740B70();
            v182 = sub_22F7415E0();
            if (os_log_type_enabled(v181, v182))
            {
              v183 = swift_slowAlloc();
              v184 = swift_slowAlloc();
              v589 = v184;
              *v183 = v525;
              v185 = *(v127 + 24);
              v186 = *(v127 + 32);

              v187 = sub_22F145F20(v185, v186, &v589);
              a1 = v583;

              *(v183 + 4) = v187;
              v57 = v576;
              *(v183 + 12) = 2048;
              *(v183 + 14) = v180;
              _os_log_impl(&dword_22F0FC000, v181, v182, "Entity %s has invalid location presence %f!", v183, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v184);
              MEMORY[0x2319033A0](v184, -1, -1);
              MEMORY[0x2319033A0](v183, -1, -1);
            }

            else
            {
            }

            isUniquelyReferenced_nonNull_native = v581;
            v205 = *(v127 + 24);
            v206 = *(v127 + 32);

            v207 = swift_isUniquelyReferenced_nonNull_native();
            v589 = v50;
            v208 = 7;
          }

          sub_22F1302A0(v208, v205, v206, v207);

          (*v546)(v567, isUniquelyReferenced_nonNull_native);
        }

        else
        {

          v129 = *v534;
          v130 = v547;
          isUniquelyReferenced_nonNull_native = v581;
          (*v534)(v547, v125, v581);
          v131 = v553;
          v129(v553, v125, isUniquelyReferenced_nonNull_native);
          v132 = v554;
          v129(v554, v125, isUniquelyReferenced_nonNull_native);

          v133 = sub_22F740B70();
          LODWORD(v129) = sub_22F7415D0();

          v531 = v129;
          v134 = os_log_type_enabled(v133, v129);
          v135 = v546;
          v536 = v546 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          a1 = v583;
          if (v134)
          {
            v136 = swift_slowAlloc();
            v528 = swift_slowAlloc();
            v589 = v528;
            *v136 = v526;
            *(v136 + 4) = v126 / 86400.0;
            *(v136 + 12) = 2080;
            v527 = v133;
            v137 = *(v127 + 24);
            v138 = *(v127 + 32);

            v139 = sub_22F145F20(v137, v138, &v589);

            *(v136 + 14) = v139;
            *(v136 + 22) = 2080;
            v140 = v574;
            sub_22F73F060();
            sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578]);
            v141 = v577;
            v142 = sub_22F742010();
            v143 = v130;
            v145 = v144;
            v146 = v566;
            (v566)(v140, v141);
            v147 = v143;
            v148 = *v546;
            (*v546)(v147, isUniquelyReferenced_nonNull_native);
            v149 = sub_22F145F20(v142, v145, &v589);

            *(v136 + 24) = v149;
            *(v136 + 32) = 2080;
            v150 = v553;
            sub_22F73F030();
            v151 = sub_22F742010();
            v153 = v152;
            v154 = v141;
            v125 = v567;
            v146(v140, v154);
            v127 = v573;
            v148(v150, isUniquelyReferenced_nonNull_native);
            v155 = sub_22F145F20(v151, v153, &v589);

            *(v136 + 34) = v155;
            *(v136 + 42) = 2048;
            v156 = v554;
            sub_22F73F080();
            v158 = v157;
            v148(v156, isUniquelyReferenced_nonNull_native);
            *(v136 + 44) = v158 / 86400.0;
            v159 = v527;
            _os_log_impl(&dword_22F0FC000, v527, v531, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v136, 0x34u);
            v160 = v528;
            swift_arrayDestroy();
            MEMORY[0x2319033A0](v160, -1, -1);
            v161 = v136;
            a1 = v583;
            MEMORY[0x2319033A0](v161, -1, -1);
          }

          else
          {

            v191 = v132;
            v148 = *v135;
            (*v135)(v191, isUniquelyReferenced_nonNull_native);
            v148(v131, isUniquelyReferenced_nonNull_native);
            v148(v130, isUniquelyReferenced_nonNull_native);
          }

          v57 = v576;
          v192 = v584;
          v193 = *(v127 + 24);
          v194 = *(v127 + 32);

          v195 = swift_isUniquelyReferenced_nonNull_native();
          v589 = v192;
          sub_22F1302A0(2, v193, v194, v195);

          v148(v125, isUniquelyReferenced_nonNull_native);
        }

        v50 = v589;
      }

LABEL_114:
      v58 = v588;
LABEL_115:
      a2 = v586 + 1;
      if (v587 == v578)
      {
        v242 = v58;

        v243 = v571;
        v244 = v580;
        goto LABEL_121;
      }
    }
  }

  v243 = v50;
  v244 = 0;
  v242 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F98];
LABEL_121:

  v245 = sub_22F740B70();
  v246 = sub_22F7415D0();
  v247 = os_log_type_enabled(v245, v246);
  v588 = v242;
  if (v247)
  {
    v248 = swift_slowAlloc();
    *v248 = 134217984;
    if (v242 >> 62)
    {
      v485 = v50;
      v486 = v248;
      v249 = sub_22F741A00();
      v248 = v486;
      v50 = v485;
    }

    else
    {
      v249 = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v248 + 4) = v249;
    v250 = v248;

    _os_log_impl(&dword_22F0FC000, v245, v246, "After filtering potential entities, there are %ld entities remaining.", v250, 0xCu);
    MEMORY[0x2319033A0](v250, -1, -1);
  }

  else
  {
  }

  v251 = v551;
  (v557)(v551, 0.3);
  if (*v251 == 1)
  {

    v252 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v550 + 8))(v585, v549);

    goto LABEL_360;
  }

  v589 = sub_22F36C410(v253);
  sub_22F243E0C(&v589, &v591, sub_22F3F6724, 0, type metadata accessor for ImportantEntitiesPetProcessorEntity);
  v254 = &v574;
  v546 = v244;
  if (v244)
  {
    goto LABEL_378;
  }

  v255 = v589;
  v256 = 0.4;
  v257 = v551;
  (v557)(v551, 0.4);
  v85 = v50;
  if (*v257)
  {

    v252 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v550 + 8))(v585, v549);
LABEL_359:

    goto LABEL_360;
  }

  v50 = v243;
  if (v255 < 0 || (v255 & 0x4000000000000000) != 0)
  {
    goto LABEL_310;
  }

  v58 = *(v255 + 16);
  v260 = v58;
  v590 = MEMORY[0x277D84FA0];
  v536 = v58;
  if (!v58)
  {
LABEL_311:
    v584 = v85;

    v487 = sub_22F246BB0(v588, &v590);

    v488 = v551;
    (v557)(v551, 0.9);
    if (*v488)
    {

      v252 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v550 + 8))(v585, v549);
LABEL_358:

      goto LABEL_359;
    }

    v489 = v487;
    v587 = v487 >> 62;
    if (v487 >> 62)
    {
      goto LABEL_367;
    }

    v490 = *((v487 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_315:
    v588 = v489;
    if (v490)
    {
      v491 = swift_slowAlloc();
      *v491 = 0;
      v557(0.0);
      v489 = v487;
      if (*v491 != 1)
      {
        v492 = v487 & 0xFFFFFFFFFFFFFF8;
        if (v587)
        {
          v493 = sub_22F741A00();
          v489 = v487;
          v487 = v493;
        }

        else
        {
          v487 = *((v487 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v494 = 0;
        v495 = 1.0 / v490;
        v496 = a1 + OBJC_IVAR____TtC11PhotosGraph29ImportantEntitiesPetContainer_processInferredPetNode;
        a1 = v489 & 0xC000000000000001;
        v497 = 0.0;
        while (v487 != v494)
        {
          if (a1)
          {
            v498 = MEMORY[0x2319016F0](v494, v489);
            if (__OFADD__(v494, 1))
            {
              goto LABEL_329;
            }
          }

          else
          {
            if (v494 >= *(v492 + 16))
            {
              goto LABEL_366;
            }

            v498 = *(v489 + 8 * v494 + 32);

            if (__OFADD__(v494, 1))
            {
LABEL_329:
              __break(1u);
              break;
            }
          }

          v500 = *v496;
          v499 = *(v496 + 8);
          v501 = *(v498 + 16);
          v500();

          v497 = v495 + v497;
          (v557)(v491, v497);
          LOBYTE(v501) = *v491;

          ++v494;
          v489 = v588;
          if (v501)
          {
            goto LABEL_331;
          }
        }

        v502 = v489;
        (v557)(v491, 1.0);
        v489 = v502;
      }
    }

LABEL_331:
    if (v587)
    {
      v503 = v489;
      v504 = sub_22F741A00();
      v489 = v503;
      v85 = v504;
    }

    else
    {
      v85 = *((v489 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v505 = v585;
    if (!v85)
    {
LABEL_355:

      (v557)(v551, 1.0);
      v252 = v584;
      if (v543)
      {
        sub_22F243228(v584);
      }

      (*(v550 + 8))(v505, v549);
      goto LABEL_358;
    }

    v487 = 0;
    v587 = v489 & 0xC000000000000001;
    v586 = v489 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v587)
      {
        v506 = MEMORY[0x2319016F0](v487);
        v507 = v487 + 1;
        if (__OFADD__(v487, 1))
        {
          goto LABEL_362;
        }
      }

      else
      {
        if (v487 >= *(v586 + 16))
        {
          goto LABEL_365;
        }

        v506 = *(v489 + 8 * v487 + 32);

        v507 = v487 + 1;
        if (__OFADD__(v487, 1))
        {
LABEL_362:
          __break(1u);
LABEL_363:
          __break(1u);
LABEL_364:
          __break(1u);
LABEL_365:
          __break(1u);
LABEL_366:
          __break(1u);
LABEL_367:
          v523 = sub_22F741A00();
          v489 = v487;
          v490 = v523;
          goto LABEL_315;
        }
      }

      v509 = *(v506 + 24);
      v508 = *(v506 + 32);

      v510 = v584;
      v511 = swift_isUniquelyReferenced_nonNull_native();
      v589 = v510;
      v513 = sub_22F1229E8(v509, v508);
      v514 = *(v510 + 16);
      v515 = (v512 & 1) == 0;
      v516 = v514 + v515;
      if (__OFADD__(v514, v515))
      {
        goto LABEL_363;
      }

      a1 = v512;
      if (*(v510 + 24) >= v516)
      {

        if (v511)
        {
          if (a1)
          {
            goto LABEL_336;
          }
        }

        else
        {
          sub_22F134340();
          if (a1)
          {
            goto LABEL_336;
          }
        }
      }

      else
      {
        sub_22F1259D0(v516, v511);
        v517 = sub_22F1229E8(v509, v508);
        if ((a1 & 1) != (v518 & 1))
        {
          goto LABEL_375;
        }

        v513 = v517;

        if (a1)
        {
LABEL_336:

          v584 = v589;
          *(*(v589 + 56) + v513) = 0;
          goto LABEL_337;
        }
      }

      v519 = v589;
      *(v589 + 8 * (v513 >> 6) + 64) |= 1 << v513;
      v520 = (v519[6] + 16 * v513);
      *v520 = v509;
      v520[1] = v508;
      *(v519[7] + v513) = 0;
      v521 = v519[2];
      v166 = __OFADD__(v521, 1);
      v522 = v521 + 1;
      if (v166)
      {
        goto LABEL_364;
      }

      v584 = v519;
      v519[2] = v522;
LABEL_337:
      ++v487;
      v505 = v585;
      v489 = v588;
      if (v507 == v85)
      {
        goto LABEL_355;
      }
    }
  }

LABEL_134:
  a2 = 0;
  v580 = v255 & 0xC000000000000001;
  v575 = v255 + 32;
  v562 = v552 + 2;
  v566 = (v533 + 8);
  v547 = (v533 + 32);
  *&v259 = 136315138;
  v569 = v259;
  *&v259 = 136315394;
  v545 = v259;
  v561 = (v552 + 1);
  v261 = 0.5 / v260;
  *&v258 = 136315906;
  v535 = v258;
  v578 = v255;
  v573 = v58;
  while (1)
  {
    if (v580)
    {
      v262 = MEMORY[0x2319016F0](a2, v255);
      v263 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_291;
      }
    }

    else
    {
      if (a2 >= *(v255 + 16))
      {
        goto LABEL_292;
      }

      v262 = *(v575 + 8 * a2);

      v263 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        goto LABEL_291;
      }
    }

    v579 = v263;
    v264 = v591;
    v265 = *(v591 + 16);
    v587 = v262;
    if (!v265)
    {
      goto LABEL_190;
    }

    a1 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = v57;
    v57 = v50;
    v267 = *(v262 + 24);
    v266 = *(v262 + 32);

    v568 = v267;
    v268 = sub_22F1229E8(v267, v266);
    if ((v269 & 1) == 0)
    {
      break;
    }

    v564 = v266;
    v584 = v85;
    v586 = v264;
    v270 = *(v264 + 56);
    v555 = v552[9];
    v50 = v57;
    v554 = v552[2];
    (v554)(v57, v270 + v555 * v268, a1);
    if (!*(v565 + 16) || (v271 = *(v587 + 24), v85 = *(v587 + 32), , v272 = sub_22F1229E8(v271, v85), LOBYTE(v271) = v273, , (v271 & 1) == 0))
    {

      v360 = v587;

      v361 = sub_22F740B70();
      v362 = sub_22F7415E0();
      v57 = isUniquelyReferenced_nonNull_native;
      if (os_log_type_enabled(v361, v362))
      {
        v363 = swift_slowAlloc();
        v364 = swift_slowAlloc();
        v589 = v364;
        *v363 = v569;
        v365 = *(v587 + 24);
        v366 = *(v587 + 32);

        v367 = sub_22F145F20(v365, v366, &v589);
        v255 = v578;

        *(v363 + 4) = v367;
        _os_log_impl(&dword_22F0FC000, v361, v362, "Unable to find important location presence for entity %s", v363, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v364);
        v368 = v364;
        v360 = v587;
        MEMORY[0x2319033A0](v368, -1, -1);
        MEMORY[0x2319033A0](v363, -1, -1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = a1;
      v58 = v573;
      v85 = *(v360 + 24);
      v369 = *(v360 + 32);

      v370 = v584;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      v589 = v370;
      v371 = sub_22F1229E8(v85, v369);
      v373 = *(v370 + 16);
      v374 = (v372 & 1) == 0;
      v166 = __OFADD__(v373, v374);
      v375 = v373 + v374;
      a1 = v583;
      if (v166)
      {
        goto LABEL_305;
      }

      v376 = v372;
      if (*(v370 + 24) >= v375)
      {
        if ((v50 & 1) == 0)
        {
          v474 = v371;
          sub_22F134340();
          v371 = v474;
        }
      }

      else
      {
        sub_22F1259D0(v375, v50);
        v371 = sub_22F1229E8(v85, v369);
        if ((v376 & 1) != (v377 & 1))
        {
          goto LABEL_375;
        }
      }

      v50 = v571;
      v378 = v589;
      if (v376)
      {
        *(*(v589 + 56) + v371) = 9;

        v85 = v378;
LABEL_136:
        (*v561)(v50, isUniquelyReferenced_nonNull_native);
        goto LABEL_137;
      }

      *(v589 + 8 * (v371 >> 6) + 64) |= 1 << v371;
      v379 = (v378[6] + 16 * v371);
      *v379 = v85;
      v379[1] = v369;
      *(v378[7] + v371) = 9;
      v380 = v378[2];
      v166 = __OFADD__(v380, 1);
      v381 = v380 + 1;
      if (!v166)
      {
        v85 = v378;
        v378[2] = v381;

        goto LABEL_136;
      }

      __break(1u);
LABEL_309:
      __break(1u);
LABEL_310:
      v536 = sub_22F741A00();
      v260 = v536;
      v590 = MEMORY[0x277D84FA0];
      v58 = sub_22F741A00();
      if (!v58)
      {
        goto LABEL_311;
      }

      goto LABEL_134;
    }

    v274 = a2 - 1;
    if (__OFSUB__(a2, 1))
    {
      goto LABEL_309;
    }

    v57 = isUniquelyReferenced_nonNull_native;
    v275 = *(*(v565 + 56) + 8 * v272);
    v85 = v577;
    v58 = v572;
    isUniquelyReferenced_nonNull_native = v574;
    v276 = v587;
    v277 = v586;
    a1 = v583;
    if ((v274 & 0x8000000000000000) != 0)
    {
      goto LABEL_220;
    }

    while (1)
    {
      while (1)
      {
        v582 = v274;
        if (v580)
        {
          v279 = MEMORY[0x2319016F0]();
        }

        else
        {
          if (v274 >= *(v255 + 16))
          {
            goto LABEL_297;
          }

          v279 = *(v575 + 8 * v274);
        }

        v280 = *(v279 + 24);
        a1 = *(v279 + 32);
        v281 = *(v277 + 16);

        if (v281)
        {
          v282 = sub_22F1229E8(v280, a1);
          if (v283)
          {
            break;
          }
        }

        v308 = sub_22F740B70();
        v309 = sub_22F7415E0();

        if (os_log_type_enabled(v308, v309))
        {
          v310 = swift_slowAlloc();
          v311 = swift_slowAlloc();
          v589 = v311;
          *v310 = v569;
          v312 = sub_22F145F20(v280, a1, &v589);

          *(v310 + 4) = v312;
          _os_log_impl(&dword_22F0FC000, v308, v309, "Unable to find lifespan for entity %s", v310, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v311);
          v313 = v311;
          v50 = v571;
          MEMORY[0x2319033A0](v313, -1, -1);
          v314 = v310;
          v276 = v587;
          MEMORY[0x2319033A0](v314, -1, -1);
        }

        else
        {
        }

        v85 = *(v276 + 24);
        a2 = *(v276 + 32);

        v315 = v584;
        v316 = swift_isUniquelyReferenced_nonNull_native();
        v589 = v315;
        v317 = sub_22F1229E8(v85, a2);
        v319 = *(v315 + 16);
        v320 = (v318 & 1) == 0;
        v166 = __OFADD__(v319, v320);
        v321 = v319 + v320;
        if (v166)
        {
          goto LABEL_295;
        }

        a1 = v318;
        if (*(v315 + 24) >= v321)
        {
          if ((v316 & 1) == 0)
          {
            v339 = v317;
            sub_22F134340();
            v317 = v339;
          }
        }

        else
        {
          sub_22F1259D0(v321, v316);
          v317 = sub_22F1229E8(v85, a2);
          if ((a1 & 1) != (v322 & 1))
          {
            goto LABEL_375;
          }
        }

        v276 = v587;
        if (a1)
        {
          v278 = v317;

          v584 = v589;
          *(*(v589 + 56) + v278) = 8;
        }

        else
        {
          v323 = v589;
          *(v589 + 8 * (v317 >> 6) + 64) |= 1 << v317;
          v324 = (v323[6] + 16 * v317);
          *v324 = v85;
          v324[1] = a2;
          *(v323[7] + v317) = 8;

          v325 = v323[2];
          v166 = __OFADD__(v325, 1);
          v326 = v325 + 1;
          if (v166)
          {
            goto LABEL_299;
          }

          v584 = v323;
          v323[2] = v326;
        }

        a1 = v583;
        v85 = v577;
LABEL_150:
        v255 = v578;
        v277 = v586;
        v274 = v582;
        if (v582 < 0)
        {
          goto LABEL_220;
        }
      }

      v567 = v280;
      *&v563 = v279;
      v284 = v560;
      (v554)(v560, *(v586 + 56) + v282 * v555, v581);
      sub_22F73F030();
      sub_22F73F060();
      sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578]);
      v285 = v577;
      v286 = sub_22F740DB0();
      v287 = *v566;
      (*v566)(v58, v285);
      v287(isUniquelyReferenced_nonNull_native, v285);
      if ((v286 & 1) == 0)
      {
        (*v561)(v284, v581);

        a1 = v583;
        v85 = v285;
LABEL_218:
        v57 = v576;
        v255 = v578;
        v276 = v587;
        goto LABEL_219;
      }

      sub_22F73F060();
      v288 = v548;
      sub_22F73F030();
      v289 = v537;
      sub_22F73F030();
      v290 = sub_22F740DB0();
      v291 = (v290 & 1) == 0;
      if (v290)
      {
        v292 = v288;
      }

      else
      {
        v292 = v289;
      }

      if (v291)
      {
        v293 = v288;
      }

      else
      {
        v293 = v289;
      }

      v50 = v571;
      v287(v292, v285);
      (*v547)(v559, v293, v285);
      sub_22F73F590();
      v295 = v294;
      sub_22F73F080();
      if (v296 * v570[4] >= v295)
      {

        v85 = v577;
        v287(v559, v577);
        v287(v558, v85);
        (*v561)(v560, v581);
        a1 = v583;
        goto LABEL_218;
      }

      v553 = v287;
      v58 = v572;
      isUniquelyReferenced_nonNull_native = v574;
      v57 = v576;
      v297 = v567;
      if (!*(v565 + 16) || (v298 = sub_22F1229E8(v567, a1), (v299 & 1) == 0))
      {

        v327 = sub_22F740B70();
        v328 = sub_22F7415E0();

        if (os_log_type_enabled(v327, v328))
        {
          v329 = swift_slowAlloc();
          v330 = swift_slowAlloc();
          v589 = v330;
          *v329 = v569;
          v331 = sub_22F145F20(v297, a1, &v589);

          *(v329 + 4) = v331;
          _os_log_impl(&dword_22F0FC000, v327, v328, "Unable to find important location presence for entity %s", v329, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v330);
          v332 = v330;
          v50 = v571;
          MEMORY[0x2319033A0](v332, -1, -1);
          MEMORY[0x2319033A0](v329, -1, -1);
        }

        else
        {
        }

        v276 = v587;
        v333 = *(v587 + 24);
        v334 = *(v587 + 32);

        v335 = v584;
        v336 = swift_isUniquelyReferenced_nonNull_native();
        v589 = v335;
        sub_22F1302A0(9, v333, v334, v336);

        v85 = v577;
        a2 = v566;
        v337 = v553;
        (v553)(v559, v577);
        v337(v558, v85);
        (*v561)(v560, v581);
        v584 = v589;
        a1 = v583;
        goto LABEL_150;
      }

      v300 = *(*(v565 + 56) + 8 * v298);
      v301 = v564;

      v302 = sub_22F740B70();
      v303 = sub_22F7415C0();

      if (os_log_type_enabled(v302, v303))
      {
        v304 = swift_slowAlloc();
        v305 = swift_slowAlloc();
        v589 = v305;
        *v304 = v545;
        *(v304 + 4) = sub_22F145F20(v568, v301, &v589);
        *(v304 + 12) = 2080;
        *(v304 + 14) = sub_22F145F20(v567, a1, &v589);
        _os_log_impl(&dword_22F0FC000, v302, v303, "Entity %s's lifespan has significant overlap with %s's lifespan!", v304, 0x16u);
        swift_arrayDestroy();
        v306 = v305;
        v50 = v571;
        v307 = v570;
        MEMORY[0x2319033A0](v306, -1, -1);
        MEMORY[0x2319033A0](v304, -1, -1);

        v276 = v587;
      }

      else
      {

        v276 = v587;
        v307 = v570;
      }

      if (v275 < v300 * v307[5])
      {
        break;
      }

      v85 = v577;
      a2 = v566;
      v338 = v553;
      (v553)(v559, v577);
      v338(v558, v85);
      (*v561)(v560, v581);
      v274 = v582 - 1;
      a1 = v583;
      v255 = v578;
      v277 = v586;
      if (v582 - 1 < 0)
      {
        goto LABEL_220;
      }
    }

    v382 = v564;

    v383 = v568;
    sub_22F10BBDC(&v589, v568, v382);

    v384 = sub_22F740B70();
    v385 = sub_22F7415D0();

    if (os_log_type_enabled(v384, v385))
    {
      v386 = swift_slowAlloc();
      v387 = swift_slowAlloc();
      v589 = v387;
      *v386 = v535;
      *(v386 + 4) = sub_22F145F20(v383, v382, &v589);
      *(v386 + 12) = 2048;
      *(v386 + 14) = v275;
      *(v386 + 22) = 2080;
      v388 = sub_22F145F20(v567, a1, &v589);

      *(v386 + 24) = v388;
      *(v386 + 32) = 2048;
      *(v386 + 34) = v300;
      _os_log_impl(&dword_22F0FC000, v384, v385, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v386, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v387, -1, -1);
      MEMORY[0x2319033A0](v386, -1, -1);
    }

    else
    {
    }

    v455 = v581;
    v456 = v560;
    v457 = v587;
    v458 = *(v587 + 24);
    v459 = *(v587 + 32);

    v460 = v584;
    v461 = swift_isUniquelyReferenced_nonNull_native();
    v589 = v460;
    sub_22F1302A0(6, v458, v459, v461);

    v85 = v577;
    v462 = v553;
    (v553)(v559, v577);
    v462(v558, v85);
    v463 = v455;
    v276 = v457;
    (*v561)(v456, v463);
    v584 = v589;
    a1 = v583;
    v255 = v578;
LABEL_219:
    v277 = v586;
LABEL_220:
    if (sub_22F15E910(v568, v564, v590))
    {
      isUniquelyReferenced_nonNull_native = v581;
      (*v561)(v50, v581);

      v85 = v584;
      v58 = v573;
      goto LABEL_137;
    }

    isUniquelyReferenced_nonNull_native = v581;
    v58 = v573;
    if (v579 >= v536)
    {
LABEL_268:

      v85 = v584;
      goto LABEL_269;
    }

    v389 = v579;
    while (2)
    {
      v582 = v389;
      if (v580)
      {
        v391 = MEMORY[0x2319016F0]();
      }

      else
      {
        if (v389 < 0)
        {
          goto LABEL_369;
        }

        if (v389 >= *(v255 + 16))
        {
          goto LABEL_370;
        }

        v391 = *(v575 + 8 * v389);
      }

      v393 = *(v391 + 24);
      v392 = *(v391 + 32);
      v394 = *(v277 + 16);

      if (!v394 || (v395 = sub_22F1229E8(v393, v392), (v396 & 1) == 0))
      {

        v422 = sub_22F740B70();
        v423 = sub_22F7415E0();

        if (os_log_type_enabled(v422, v423))
        {
          v424 = swift_slowAlloc();
          v425 = swift_slowAlloc();
          v589 = v425;
          *v424 = v569;
          v426 = sub_22F145F20(v393, v392, &v589);

          *(v424 + 4) = v426;
          _os_log_impl(&dword_22F0FC000, v422, v423, "Unable to find lifespan for entity %s", v424, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v425);
          v427 = v425;
          v276 = v587;
          MEMORY[0x2319033A0](v427, -1, -1);
          MEMORY[0x2319033A0](v424, -1, -1);
        }

        else
        {
        }

        a1 = v583;
        v85 = *(v276 + 24);
        v428 = *(v276 + 32);

        v429 = v584;
        v430 = swift_isUniquelyReferenced_nonNull_native();
        v589 = v429;
        v431 = sub_22F1229E8(v85, v428);
        v433 = *(v429 + 16);
        v434 = (v432 & 1) == 0;
        v166 = __OFADD__(v433, v434);
        v435 = v433 + v434;
        if (v166)
        {
          __break(1u);
LABEL_369:
          __break(1u);
LABEL_370:
          __break(1u);
LABEL_371:
          __break(1u);
LABEL_372:
          __break(1u);
LABEL_373:
          __break(1u);
LABEL_374:
          __break(1u);
LABEL_375:
          sub_22F7420C0();
          __break(1u);
LABEL_376:
          for (i = v85; ; i = *(v254 - 32))
          {

            __break(1u);
LABEL_378:
            ;
          }
        }

        v436 = v432;
        if (*(v429 + 24) >= v435)
        {
          if ((v430 & 1) == 0)
          {
            v453 = v431;
            sub_22F134340();
            v431 = v453;
          }
        }

        else
        {
          sub_22F1259D0(v435, v430);
          v431 = sub_22F1229E8(v85, v428);
          if ((v436 & 1) != (v437 & 1))
          {
            goto LABEL_375;
          }
        }

        v276 = v587;
        if (v436)
        {
          v390 = v431;

          v584 = v589;
          *(*(v589 + 56) + v390) = 8;
        }

        else
        {
          v438 = v589;
          *(v589 + 8 * (v431 >> 6) + 64) |= 1 << v431;
          v439 = (v438[6] + 16 * v431);
          *v439 = v85;
          v439[1] = v428;
          *(v438[7] + v431) = 8;

          v440 = v438[2];
          v166 = __OFADD__(v440, 1);
          v441 = v440 + 1;
          if (v166)
          {
            goto LABEL_371;
          }

          v584 = v438;
          v438[2] = v441;
        }

        v85 = v577;
        isUniquelyReferenced_nonNull_native = v581;
        v255 = v578;
        v389 = v582;
        v277 = v586;
        goto LABEL_228;
      }

      v567 = v393;
      *&v563 = v391;
      v397 = v542;
      (v554)(v542, *(v586 + 56) + v395 * v555, v581);
      v398 = v574;
      sub_22F73F030();
      v399 = v572;
      sub_22F73F060();
      sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578]);
      v400 = sub_22F740DB0();
      v401 = *v566;
      (*v566)(v399, v85);
      v401(v398, v85);
      if ((v400 & 1) == 0)
      {
        v464 = v581;
        (*v561)(v397, v581);

        isUniquelyReferenced_nonNull_native = v464;

LABEL_278:
        a1 = v583;
        v57 = v576;
        v85 = v584;
        v255 = v578;
        v58 = v573;
        goto LABEL_269;
      }

      sub_22F73F060();
      v402 = v538;
      sub_22F73F030();
      v403 = v539;
      sub_22F73F030();
      v404 = sub_22F740DB0();
      v405 = (v404 & 1) == 0;
      if (v404)
      {
        v406 = v402;
      }

      else
      {
        v406 = v403;
      }

      if (v405)
      {
        v407 = v402;
      }

      else
      {
        v407 = v403;
      }

      v401(v406, v85);
      (*v547)(v541, v407, v85);
      v50 = v571;
      sub_22F73F590();
      v409 = v408;
      sub_22F73F080();
      if (v410 * v570[4] >= v409)
      {

        v401(v541, v85);
        v401(v540, v85);
        isUniquelyReferenced_nonNull_native = v581;
        (*v561)(v542, v581);
        goto LABEL_278;
      }

      v553 = v401;
      v57 = v576;
      v58 = v573;
      v411 = v567;
      if (!*(v565 + 16) || (v412 = sub_22F1229E8(v567, v392), (v413 & 1) == 0))
      {

        v442 = sub_22F740B70();
        v443 = sub_22F7415E0();

        if (os_log_type_enabled(v442, v443))
        {
          v444 = swift_slowAlloc();
          v445 = swift_slowAlloc();
          v589 = v445;
          *v444 = v569;
          v446 = sub_22F145F20(v411, v392, &v589);

          *(v444 + 4) = v446;
          _os_log_impl(&dword_22F0FC000, v442, v443, "Unable to find important location presence for entity %s", v444, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v445);
          MEMORY[0x2319033A0](v445, -1, -1);
          MEMORY[0x2319033A0](v444, -1, -1);
        }

        else
        {
        }

        a1 = v583;
        v276 = v587;
        v447 = *(v587 + 24);
        v448 = *(v587 + 32);

        v449 = v584;
        v450 = swift_isUniquelyReferenced_nonNull_native();
        v589 = v449;
        sub_22F1302A0(9, v447, v448, v450);

        v85 = v577;
        v451 = v553;
        (v553)(v541, v577);
        v451(v540, v85);
        isUniquelyReferenced_nonNull_native = v581;
        (*v561)(v542, v581);
        v584 = v589;
        v255 = v578;
        v277 = v586;
        v389 = v582;
LABEL_228:
        if (v389 >= v536)
        {
          goto LABEL_268;
        }

        continue;
      }

      break;
    }

    v414 = *(*(v565 + 56) + 8 * v412);
    v415 = v564;

    v416 = sub_22F740B70();
    v417 = sub_22F7415C0();

    if (os_log_type_enabled(v416, v417))
    {
      v418 = swift_slowAlloc();
      v419 = swift_slowAlloc();
      v589 = v419;
      *v418 = v545;
      *(v418 + 4) = sub_22F145F20(v568, v415, &v589);
      *(v418 + 12) = 2080;
      v420 = v567;
      *(v418 + 14) = sub_22F145F20(v567, v392, &v589);
      _os_log_impl(&dword_22F0FC000, v416, v417, "Entity %s's lifespan has significant overlap with %s's lifespan!", v418, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v419, -1, -1);
      v421 = v418;
      v85 = v577;
      MEMORY[0x2319033A0](v421, -1, -1);

      v276 = v587;
      v277 = v586;
    }

    else
    {

      v276 = v587;
      v277 = v586;
      v420 = v567;
    }

    if (v275 >= v414 * v570[5])
    {

      v452 = v553;
      (v553)(v541, v85);
      v452(v540, v85);
      isUniquelyReferenced_nonNull_native = v581;
      (*v561)(v542, v581);
      v389 = v582 + 1;
      if (__OFADD__(v582, 1))
      {
        goto LABEL_372;
      }

      a1 = v583;
      v255 = v578;
      goto LABEL_228;
    }

    v466 = v564;

    v467 = v568;
    sub_22F10BBDC(&v589, v568, v466);

    v468 = sub_22F740B70();
    v469 = sub_22F7415D0();

    if (os_log_type_enabled(v468, v469))
    {
      v470 = swift_slowAlloc();
      v471 = swift_slowAlloc();
      v589 = v471;
      *v470 = v535;
      v472 = sub_22F145F20(v467, v466, &v589);

      *(v470 + 4) = v472;
      *(v470 + 12) = 2048;
      *(v470 + 14) = v275;
      *(v470 + 22) = 2080;
      v473 = sub_22F145F20(v420, v392, &v589);

      *(v470 + 24) = v473;
      *(v470 + 32) = 2048;
      *(v470 + 34) = v414;
      _os_log_impl(&dword_22F0FC000, v468, v469, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v470, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v471, -1, -1);
      MEMORY[0x2319033A0](v470, -1, -1);
    }

    else
    {
    }

    v475 = *(v587 + 24);
    v476 = *(v587 + 32);

    v477 = v584;
    v478 = swift_isUniquelyReferenced_nonNull_native();
    v589 = v477;
    sub_22F1302A0(6, v475, v476, v478);

    v479 = v577;
    v480 = v553;
    (v553)(v541, v577);
    v480(v540, v479);
    isUniquelyReferenced_nonNull_native = v581;
    (*v561)(v542, v581);
    v85 = v589;
    a1 = v583;
    v50 = v571;
    v57 = v576;
    v255 = v578;
    v58 = v573;
LABEL_269:
    v256 = v261 + v256;
    v454 = v551;
    (v557)(v551, v256);
    if (*v454 == 1)
    {
      goto LABEL_306;
    }

    (*v561)(v50, isUniquelyReferenced_nonNull_native);
LABEL_201:

LABEL_137:
    a2 = v579;
    if (v579 == v58)
    {
      goto LABEL_311;
    }
  }

  v57 = isUniquelyReferenced_nonNull_native;
  isUniquelyReferenced_nonNull_native = a1;
  a1 = v583;
LABEL_190:
  v58 = v85;

  v340 = sub_22F740B70();
  v341 = sub_22F7415E0();
  if (os_log_type_enabled(v340, v341))
  {
    v342 = swift_slowAlloc();
    v343 = swift_slowAlloc();
    v589 = v343;
    *v342 = v569;
    v344 = *(v587 + 24);
    v345 = *(v587 + 32);

    v346 = sub_22F145F20(v344, v345, &v589);
    v255 = v578;

    *(v342 + 4) = v346;
    _os_log_impl(&dword_22F0FC000, v340, v341, "Unable to find lifespan for entity %s", v342, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v343);
    v347 = v343;
    v262 = v587;
    MEMORY[0x2319033A0](v347, -1, -1);
    MEMORY[0x2319033A0](v342, -1, -1);
  }

  else
  {
  }

  v85 = *(v262 + 24);
  a2 = *(v262 + 32);

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v589 = v58;
  v348 = sub_22F1229E8(v85, a2);
  v350 = *(v58 + 16);
  v351 = (v349 & 1) == 0;
  v166 = __OFADD__(v350, v351);
  v352 = v350 + v351;
  if (v166)
  {
    goto LABEL_296;
  }

  v353 = v349;
  if (*(v58 + 24) >= v352)
  {
    v58 = v573;
    if ((v50 & 1) == 0)
    {
      v465 = v348;
      sub_22F134340();
      v348 = v465;
    }
  }

  else
  {
    sub_22F1259D0(v352, v50);
    v348 = sub_22F1229E8(v85, a2);
    v58 = v573;
    if ((v353 & 1) != (v354 & 1))
    {
      goto LABEL_375;
    }
  }

  v50 = v571;
  if (v353)
  {
    v355 = v348;

    v85 = v589;
    *(*(v589 + 56) + v355) = 8;
    goto LABEL_201;
  }

  v356 = v589;
  *(v589 + 8 * (v348 >> 6) + 64) |= 1 << v348;
  v357 = (*(v356 + 48) + 16 * v348);
  *v357 = v85;
  v357[1] = a2;
  v85 = v356;
  *(*(v356 + 56) + v348) = 8;

  v358 = *(v85 + 16);
  v166 = __OFADD__(v358, 1);
  v359 = v358 + 1;
  if (!v166)
  {
    *(v85 + 16) = v359;
    goto LABEL_137;
  }

  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:

  v252 = sub_22F14E740(MEMORY[0x277D84F90]);

  (*v561)(v50, isUniquelyReferenced_nonNull_native);
  (*(v550 + 8))(v585, v549);

LABEL_360:

  return v252;
}

uint64_t _s11PhotosGraph34ImportantEntitiesChildrenProcessorC011processUserE002inB013progressBlock35withProcessInferredChildNodeClosureySo7PGGraphC_ySd_Spy10ObjectiveC8ObjCBoolVGSgtXEySo0r6PersonP0CctFZ_0(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  [v10 usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears];
  v12 = v11 * 31557600.0;
  [v10 usersChildrenInferenceMinimumLifespanYears];
  *v20 = v12;
  *&v20[1] = v13 * 31557600.0;
  v20[2] = 15;
  v21 = xmmword_22F77CAC0;
  v22 = 0;
  v14 = type metadata accessor for ImportantEntitiesChildrenContainer();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  v17 = swift_allocObject();
  v18 = a1;

  sub_22F240428(v18, a2, a3, a4, a5);
  sub_22F246DE0(v17, v20, a2, a3, 1);
}

uint64_t sub_22F250680()
{
  result = sub_22F73F690();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22F2507B8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_22F250800(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_22F243B48(*a1) & 1;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
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

uint64_t sub_22F2508F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_22F25093C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_22F2509A0()
{
  v5[0] = 0;
  v5[1] = 0xE000000000000000;
  sub_22F741B00();

  strcpy(v6, "InputStream: ");
  HIWORD(v6[1]) = -4864;
  sub_22F15C30C((v0 + 6), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AD0, &qword_22F77CD48);
  v1 = sub_22F740E90();
  MEMORY[0x231900B10](v1);

  MEMORY[0x231900B10](0x7265737055202D20, 0xEC000000203A7374);
  v5[0] = *(*v0 + 16);
  v2 = sub_22F742010();
  MEMORY[0x231900B10](v2);

  MEMORY[0x231900B10](0x6574656C6544202CLL, 0xEB00000000203A73);
  v5[0] = *(v0[1] + 16);
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  return v6[0];
}

uint64_t sub_22F250B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22F250B6C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_22F250BC0()
{
  result = qword_27DAB2AD8;
  if (!qword_27DAB2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AD8);
  }

  return result;
}

void sub_22F250E20(uint64_t a1, uint64_t a2)
{
  v5 = sub_22F7416B0();
  v7 = v6;
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_2810A91C8;
  v9 = sub_22F740DF0();
  v10 = [v8 fetchSongWithUID_];

  if (v10)
  {
    sub_22F7416A0();
    if (!v2)
    {
      v37 = v8;
      v38 = v5;
      v12 = [v10 tagIDs];
      sub_22F741420();

      v39 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
      sub_22F16BC6C(&qword_2810A9250, &qword_27DAB1608, &unk_22F772BB0);
      sub_22F160DE4();
      v35 = sub_22F7410E0();
      v36 = v13;

      v14 = [v10 keywords];
      sub_22F741420();

      v34 = sub_22F7410E0();
      v16 = v15;

      v17 = [v10 weightedKeywords];
      sub_22F170D8C();
      sub_22F740CA0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AE8, &qword_22F77CE00);
      sub_22F16BC6C(&qword_27DAB2AF0, &qword_27DAB2AE8, &qword_22F77CE00);
      v18 = sub_22F7410E0();
      v20 = v19;

      sub_22F7416A0();
      sub_22F7416A0();
      sub_22F741B00();
      MEMORY[0x231900B10](0x203A646975, 0xE500000000000000);
      v21 = v18;
      v22 = [v10 uid];
      v23 = sub_22F740E20();
      v25 = v24;

      MEMORY[0x231900B10](v23, v25);

      MEMORY[0x231900B10](0x203A656D616E0ALL, 0xE700000000000000);
      v26 = [v10 songName];
      v27 = sub_22F740E20();
      v29 = v28;

      MEMORY[0x231900B10](v27, v29);

      MEMORY[0x231900B10](0x3A7473697472610ALL, 0xE900000000000020);
      v30 = [v10 artistName];
      v31 = sub_22F740E20();
      v33 = v32;

      MEMORY[0x231900B10](v31, v33);

      MEMORY[0x231900B10](0x203A736761740ALL, 0xE700000000000000);
      MEMORY[0x231900B10](v35, v36);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F792CA0);
      MEMORY[0x231900B10](v34, v16);

      MEMORY[0x231900B10](0xD000000000000013, 0x800000022F792CC0);
      MEMORY[0x231900B10](v21, v20);

      return;
    }
  }

  else
  {
    sub_22F2519BC();
    swift_allocError();
    *v11 = a1;
    v11[1] = a2;
    swift_willThrow();
  }
}

id sub_22F2513F0(void *a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v48 = a2;
    v9 = a1;
    [v8 suggestedMood];
    v10 = PHStringForMemoryMood();
    if (v10)
    {
      v11 = v10;
      v12 = sub_22F740E20();
      v14 = v13;

      if (sub_22F740F10() > 0)
      {
LABEL_6:
        v15 = [v8 moodKeywords];
        v55 = a3;
        if (v15)
        {
          v16 = v15;
          v17 = sub_22F741180();

          if (*(v17 + 16))
          {
            v50 = v17;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
            sub_22F16BC6C(&qword_2810A92E0, &qword_27DAB0E90, &qword_22F7714A0);
            v18 = sub_22F740DA0();
            v20 = v19;
          }

          else
          {

            v20 = 0xE200000000000000;
            v18 = 23899;
          }
        }

        else
        {
          v20 = 0xE100000000000000;
          v18 = 63;
        }

        result = [v9 photoLibrary];
        if (result)
        {
          v22 = result;
          v47 = v18;
          if (sub_22F742040())
          {
            v23 = type metadata accessor for MockFlexSongProvider();
          }

          else
          {
            v23 = type metadata accessor for FlexMusicKitSongProvider();
          }

          v53 = &type metadata for FlexMusicSongKeywordProvider;
          v54 = &protocol witness table for FlexMusicSongKeywordProvider;
          v52 = -1;
          v50 = _s11PhotosGraph16FlexMusicCuratorC06usableC5Songs4fromSayAA0cD12SongProtocol_pGAA0cdi8ProviderJ0_pSg_tFZ_0([objc_allocWithZone(v23) init]);
          v51 = 0;
          v24 = v22;
          v25 = sub_22F2E9C2C(v24, &v50, 0);
          if (v3)
          {

            swift_unknownObjectRelease();
          }

          else
          {
            v26 = v25;
            v46 = v12;

            swift_unknownObjectRelease();
            sub_22F2C780C(v8, v48, v26, v55);
            v28 = v27;
            sub_22F7416A0();
            v55 = 0;
            v50 = 0;
            v51 = 0xE000000000000000;
            sub_22F741B00();
            MEMORY[0x231900B10](0x203A64697575, 0xE600000000000000);
            v29 = [v9 uuid];
            if (v29)
            {
              v30 = v9;
              v31 = v29;
              v32 = sub_22F740E20();
              v34 = v33;

              v9 = v30;
            }

            else
            {
              v34 = 0xE300000000000000;
              v32 = 7104878;
            }

            MEMORY[0x231900B10](v32, v34);

            MEMORY[0x231900B10](0x203A656C7469740ALL, 0xE800000000000000);
            v49 = v9;
            v35 = [v9 title];
            v36 = sub_22F740E20();
            v38 = v37;

            MEMORY[0x231900B10](v36, v38);

            MEMORY[0x231900B10](0x6C7469746275730ALL, 0xEB00000000203A65);
            v39 = [v8 subtitle];
            if (v39)
            {
              v40 = v39;
              v41 = sub_22F740E20();
              v43 = v42;

              v44 = v47;
            }

            else
            {
              v43 = 0xE300000000000000;
              v44 = v47;
              v41 = 7104878;
            }

            MEMORY[0x231900B10](v41, v43);

            MEMORY[0x231900B10](0x4D79726F6D656D0ALL, 0xED0000203A646F6FLL);
            MEMORY[0x231900B10](v46, v14);

            MEMORY[0x231900B10](0x79654B646F6F6D0ALL, 0xEF203A7364726F77);
            MEMORY[0x231900B10](v44, v20);

            MEMORY[0x231900B10](0x657275746165660ALL, 0xEB00000000203A73);
            v45 = MusicCurationFeatures.description.getter();
            MEMORY[0x231900B10](v45);

            return v50;
          }
        }

        else
        {
          __break(1u);
        }

        return result;
      }
    }

    v14 = 0xE100000000000000;
    v12 = 63;
    goto LABEL_6;
  }

  result = sub_22F7416A0();
  if (!v3)
  {
    return 0xD000000000000060;
  }

  return result;
}

unint64_t sub_22F2519BC()
{
  result = qword_27DAB2AE0;
  if (!qword_27DAB2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AE0);
  }

  return result;
}

uint64_t sub_22F251A38(void *a1)
{
  if ([a1 type] != 7)
  {
    goto LABEL_10;
  }

  v3 = [a1 additionalInfo];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_22F740CA0();

  if (!*(v5 + 16) || (v6 = sub_22F1229E8(0x4E796164696C6F68, 0xEB00000000656D61), (v7 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_22F13A100(*(v5 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  if (v11 == (*(v1 + 80))() && v12 == v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F251BC0(unint64_t a1, uint64_t a2)
{
  v33 = [objc_allocWithZone(PGPhotosChallengeHolidayAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_22F741A00();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v30 = *(v32 + 80);
      v31 = a1 & 0xC000000000000001;
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F98];
      v29 = a1;
      while (1)
      {
        if (v31)
        {
          v8 = MEMORY[0x2319016F0](v4, a1);
        }

        else
        {
          if (v4 >= *(v28 + 16))
          {
            goto LABEL_27;
          }

          v8 = *(a1 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v30();
        v11 = sub_22F740DF0();

        v12 = [v9 entityIdentifier];
        if (!v12)
        {
          sub_22F740E20();
          v12 = sub_22F740DF0();
        }

        v13 = [v33 debugInformationForHolidayName:v11 assetUUID:{v12, v28}];

        v14 = sub_22F740CA0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v5;
        a1 = v5;
        v17 = sub_22F122A80(v9);
        v18 = v5[2];
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_25;
        }

        v21 = v16;
        if (v5[3] >= v20)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v34;
            if (v16)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a1 = &v34;
            sub_22F133A8C();
            v5 = v34;
            if (v21)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22F125140(v20, isUniquelyReferenced_nonNull_native);
          a1 = v34;
          v22 = sub_22F122A80(v9);
          if ((v21 & 1) != (v23 & 1))
          {
            sub_22F254B18();
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v17 = v22;
          v5 = v34;
          if (v21)
          {
LABEL_4:
            v6 = v5[7];
            v7 = *(v6 + 8 * v17);
            *(v6 + 8 * v17) = v14;

            goto LABEL_5;
          }
        }

        v5[(v17 >> 6) + 8] |= 1 << v17;
        *(v5[6] + 8 * v17) = v9;
        *(v5[7] + 8 * v17) = v14;
        v24 = v5[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_26;
        }

        v5[2] = v26;
LABEL_5:
        ++v4;
        a1 = v29;
        if (v10 == v3)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_30:

  return v5;
}

unint64_t sub_22F254B18()
{
  result = qword_27DAB0810;
  if (!qword_27DAB0810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DAB0810);
  }

  return result;
}

uint64_t sub_22F254B64(unint64_t a1, uint64_t a2)
{
  v31 = [objc_allocWithZone(PGPhotosChallengeHolidayAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_22F741A00();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v28 = *(v30 + 80);
      v29 = a1 & 0xC000000000000001;
      v26 = a1 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F98];
      v27 = a1;
      while (1)
      {
        if (v29)
        {
          v6 = MEMORY[0x2319016F0](v4, a1);
        }

        else
        {
          if (v4 >= *(v26 + 16))
          {
            goto LABEL_27;
          }

          v6 = *(a1 + 8 * v4 + 32);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v9 = [v6 entityIdentifier];
        v10 = v9;
        if (!v9)
        {
          sub_22F740E20();
          v10 = sub_22F740DF0();
        }

        v28(v9);
        v11 = sub_22F740DF0();

        v12 = [v31 predictedQuestionStateForAssetUUID:v10 holidayName:v11];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v5;
        a1 = v5;
        v15 = sub_22F122A80(v7);
        v16 = v5[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_25;
        }

        v19 = v14;
        if (v5[3] >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v32;
            if (v14)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a1 = &v32;
            sub_22F133930();
            v5 = v32;
            if (v19)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22F124EDC(v18, isUniquelyReferenced_nonNull_native);
          a1 = v32;
          v20 = sub_22F122A80(v7);
          if ((v19 & 1) != (v21 & 1))
          {
            sub_22F254B18();
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v15 = v20;
          v5 = v32;
          if (v19)
          {
LABEL_4:
            *(v5[7] + 2 * v15) = v12;

            goto LABEL_5;
          }
        }

        v5[(v15 >> 6) + 8] |= 1 << v15;
        *(v5[6] + 8 * v15) = v7;
        *(v5[7] + 2 * v15) = v12;
        v22 = v5[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_26;
        }

        v5[2] = v24;
LABEL_5:
        ++v4;
        a1 = v27;
        if (v8 == v3)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_30:

  return v5;
}

uint64_t sub_22F254E50()
{
  result = sub_22F3D9C54(&unk_2843DAAC8);
  qword_2810AA780 = result;
  return result;
}

uint64_t sub_22F254E78()
{
  result = sub_22F3D9C54(&unk_2843DAB48);
  qword_2810AA768 = result;
  return result;
}

id MusicForMomentElector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForMomentElector.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForMomentElector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F254FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v97 = sub_22F73F270();
  v114 = *(v97 - 8);
  v8 = *(v114 + 8);
  MEMORY[0x28223BE20](v97);
  v96 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_22F73F9B0();
  v113 = *(v95 - 8);
  v10 = *(v113 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v93 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2AF8, &qword_22F77F300);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v100 = v82 - v20;
  v112 = sub_22F73F690();
  v21 = *(v112 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v112);
  v85 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v107 = v82 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = v82 - v27;
  if (qword_2810A9B18 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    sub_22F1B560C("Music For Moment Elector", 24, 2u, 0, 1, qword_2810B4E18, v120);
    v119 = MEMORY[0x277D84FA0];
    v29 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_memoryCategory);
    if (qword_2810AA778 != -1)
    {
      swift_once();
    }

    if (!sub_22F15EA08(v29, qword_2810AA780))
    {
      if (qword_2810AA760 != -1)
      {
        swift_once();
      }

      if (sub_22F15EA08(v29, qword_2810AA768) || (*(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration + 8) & 1) != 0 || *(a1 + OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration) > 2629800.0)
      {
        sub_22F7416A0();
        if (v4)
        {
        }

        else
        {
          sub_22F1B2BBC(1);

          return MEMORY[0x277D84FA0];
        }
      }
    }

    v98 = v4;
    v84 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_cache);
    v4 = *(a1 + OBJC_IVAR___PGMusicCurationFeatures_curatorEvents);
    v30 = *(v4 + 16);
    v82[1] = a3;
    v31 = sub_22F741670();
    v32 = *(v4 + 16);

    v111 = v32;
    if (!v32)
    {
      break;
    }

    v83 = v28;
    v28 = 0;
    a1 = v4 + 32;
    a2 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v33 = v31;
    }

    else
    {
      v33 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v82[0] = v33;
    v109 = v31 & 0xC000000000000001;
    v105 = (v21 + 48);
    v104 = (v21 + 32);
    v91 = *MEMORY[0x277CC9988];
    v90 = *MEMORY[0x277CC9998];
    v89 = (v114 + 8);
    v88 = (v113 + 8);
    v99 = (v21 + 8);
    v110 = v31 >> 62;
    v87 = xmmword_22F770DF0;
    a3 = v100;
    v21 = v31;
    v108 = v31 & 0xFFFFFFFFFFFFFF8;
    v86 = v17;
    v92 = v31;
    v106 = v4;
    while (v28 < *(v4 + 16))
    {
      sub_22F15C30C(a1, &v115);
      if (v110)
      {
        if (v28 == sub_22F741A00())
        {
LABEL_42:

          __swift_destroy_boxed_opaque_existential_0(&v115);
          goto LABEL_43;
        }
      }

      else if (v28 == *(a2 + 16))
      {
        goto LABEL_42;
      }

      v113 = a1;
      if (v109)
      {
        v36 = MEMORY[0x2319016F0](v28, v21);
      }

      else
      {
        if (v28 >= *(a2 + 16))
        {
          goto LABEL_49;
        }

        v36 = *(v21 + 8 * v28 + 32);
      }

      v114 = v36;
      sub_22F162700(&v115, &v118);
      sub_22F162700(&v118, &v115);
      v37 = v116;
      v38 = v117;
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      v39 = (*(v38 + 24))(v37, v38);
      if (!v39)
      {

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        (*(*(v34 - 8) + 56))(a3, 1, 1, v34);
LABEL_11:
        v35 = v113;
        a2 = v108;
        __swift_destroy_boxed_opaque_existential_0(&v115);
        sub_22F120ADC(a3, &qword_27DAB2AF8, &qword_22F77F300);
        goto LABEL_12;
      }

      v40 = v39;
      v41 = v116;
      v42 = v117;
      __swift_project_boxed_opaque_existential_1(&v115, v116);
      (*(v42 + 8))(v41, v42);
      v43 = *v105;
      if ((*v105)(v17, 1, v112) == 1)
      {

        sub_22F120ADC(v17, &qword_27DAB0920, &qword_22F770B20);
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        (*(*(v44 - 8) + 56))(a3, 1, 1, v44);
LABEL_27:
        v4 = v106;
        goto LABEL_11;
      }

      v102 = v40;
      v103 = *v104;
      v103(v107, v17, v112);
      v45 = v94;
      sub_22F73F970();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
      v101 = v43;
      v46 = sub_22F73F990();
      v47 = *(v46 - 8);
      v48 = *(v47 + 72);
      v49 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v50 = swift_allocObject();
      *(v50 + 16) = v87;
      v51 = v50 + v49;
      v52 = *(v47 + 104);
      v52(v51, v91, v46);
      v52(v51 + v48, v90, v46);
      v53 = v93;
      sub_22F3D97CC(v50);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v54 = v96;
      v55 = v107;
      sub_22F73F860();

      sub_22F73F920();
      (*v89)(v54, v97);
      v56 = v112;
      (*v88)(v45, v95);
      v57 = *v99;
      (*v99)(v55, v56);
      if (v101(v53, 1, v56) == 1)
      {

        sub_22F120ADC(v53, &qword_27DAB0920, &qword_22F770B20);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        a3 = v100;
        (*(*(v58 - 8) + 56))(v100, 1, 1, v58);
        v59 = v103;
      }

      else
      {
        v59 = v103;
        v103(v85, v53, v112);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
        v101 = v57;
        v61 = *(v60 + 48);
        a3 = v100;
        v59(v100);
        *(a3 + v61) = v102;
        v57 = v101;
        (*(*(v60 - 8) + 56))(a3, 0, 1, v60);
      }

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B00, &qword_22F77F308);
      if ((*(*(v62 - 8) + 48))(a3, 1, v62) == 1)
      {

        v17 = v86;
        v21 = v92;
        goto LABEL_27;
      }

      v63 = *(a3 + *(v62 + 48));
      v64 = v83;
      (v59)(v83, a3, v112);
      type metadata accessor for Geohash();
      inited = swift_initStackObject();
      *(inited + 16) = 0;
      *(inited + 24) = 0;
      [v63 coordinate];
      v67 = v66;
      [v63 coordinate];
      v69 = sub_22F34AF8C(4, v67, v68);
      v71 = v70;
      swift_setDeallocating();
      v72 = *(inited + 16);

      v73 = *(inited + 24);

      v74 = v69;
      v75 = v114;
      v76 = v98;
      v77 = MusicCache.read(songSourceIdentifier:geohash:date:progressReporter:)(0x6D617A616873, 0xE600000000000000, v74, v71, v64, v114);
      v98 = v76;
      if (v76)
      {

        (v57)(v64, v112);

        return __swift_destroy_boxed_opaque_existential_0(&v115);
      }

      v78 = v77;

      v79 = sub_22F151734(v78);

      sub_22F2EA558(v79);

      (v57)(v64, v112);
      __swift_destroy_boxed_opaque_existential_0(&v115);
      v17 = v86;
      v21 = v92;
      v4 = v106;
      v35 = v113;
      a2 = v108;
LABEL_12:
      ++v28;
      a1 = v35 + 40;
      if (v111 == v28)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

LABEL_41:

LABEL_43:
  sub_22F1B2BBC(0);
  v81 = v98;
  sub_22F7416A0();

  result = v119;
  if (v81)
  {
  }

  return result;
}

id AppleMusicSongKeywordProvider.keywordsDataFrame.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (v2 == 255)
  {
    sub_22F255F20(*v0, 255);
    v3 = sub_22F1DE30C();
    *v0 = v3;
    *(v0 + 8) = 0;
    v5 = v3;
  }

  else
  {
    v3 = *v0;
    v4 = *(v0 + 8);
  }

  sub_22F256018(v1, v2);
  return v3;
}

void sub_22F255F20(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_22F21173C(a1);
  }
}

void AppleMusicSongKeywordProvider.keywordsDataFrame.setter(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  sub_22F255F20(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = v4;
}

uint64_t (*AppleMusicSongKeywordProvider.keywordsDataFrame.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = AppleMusicSongKeywordProvider.keywordsDataFrame.getter();
  v5 = v4;
  sub_22F255F20(*v1, *(v1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5 & 1;
  return sub_22F255FE4;
}

uint64_t sub_22F255FE4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

id sub_22F256018(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_22F256030(a1);
  }

  return a1;
}

uint64_t get_enum_tag_for_layout_string_s6ResultOySo11MADataFrameCs5Error_pGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22F256070(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_22F2560BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_22F256118(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_22F256160(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F256224()
{
  v1 = MEMORY[0x277D84FA0];
  v101 = MEMORY[0x277D84FA0];
  v102 = MEMORY[0x277D84FA0];
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = v0[6];

  sub_22F2EA740(v9);

  sub_22F2EA740(v10);

  sub_22F2EA740(v11);

  sub_22F2EA740(v12);

  sub_22F2EA740(v13);

  sub_22F2EA740(v14);

  sub_22F2EA740(v15);
  sub_22F2EA558(v101);
  v16 = v0[7];
  v17 = v0[8];
  v18 = v0[9];
  v19 = v0[10];
  v21 = v0[11];
  v20 = v0[12];
  v22 = v0[13];

  sub_22F2EA740(v23);

  sub_22F2EA740(v24);

  sub_22F2EA740(v25);

  sub_22F2EA740(v26);

  sub_22F2EA740(v27);

  sub_22F2EA740(v28);

  sub_22F2EA740(v29);
  sub_22F2EA558(v1);
  v30 = v0[14];
  v31 = v0[15];
  v32 = v0[16];
  v33 = v0[17];
  v35 = v0[18];
  v34 = v0[19];
  v36 = v0[20];

  sub_22F2EA740(v37);

  sub_22F2EA740(v38);

  sub_22F2EA740(v39);

  sub_22F2EA740(v40);

  sub_22F2EA740(v41);

  sub_22F2EA740(v42);

  sub_22F2EA740(v43);
  sub_22F2EA558(v1);
  v44 = v0[21];
  v45 = v0[22];
  v46 = v0[23];
  v47 = v0[24];
  v49 = v0[25];
  v48 = v0[26];
  v50 = v0[27];

  sub_22F2EA740(v51);

  sub_22F2EA740(v52);

  sub_22F2EA740(v53);

  sub_22F2EA740(v54);

  sub_22F2EA740(v55);

  sub_22F2EA740(v56);

  sub_22F2EA740(v57);
  sub_22F2EA558(v1);
  v58 = v0[28];
  v59 = v0[29];
  v60 = v0[30];
  v61 = v0[31];
  v63 = v0[32];
  v62 = v0[33];
  v64 = v0[34];

  sub_22F2EA740(v65);

  sub_22F2EA740(v66);

  sub_22F2EA740(v67);

  sub_22F2EA740(v68);

  sub_22F2EA740(v69);

  sub_22F2EA740(v70);

  sub_22F2EA740(v71);
  sub_22F2EA558(v1);
  v72 = v0[35];
  v73 = v0[36];
  v74 = v0[37];
  v75 = v0[38];
  v77 = v0[39];
  v76 = v0[40];
  v78 = v0[41];

  sub_22F2EA740(v79);

  sub_22F2EA740(v80);

  sub_22F2EA740(v81);

  sub_22F2EA740(v82);

  sub_22F2EA740(v83);

  sub_22F2EA740(v84);

  sub_22F2EA740(v85);
  sub_22F2EA558(v1);
  v86 = v0[42];
  v87 = v0[43];
  v88 = v0[44];
  v89 = v0[45];
  v91 = v0[46];
  v90 = v0[47];
  v92 = v0[48];

  sub_22F2EA740(v93);

  sub_22F2EA740(v94);

  sub_22F2EA740(v95);

  sub_22F2EA740(v96);

  sub_22F2EA740(v97);

  sub_22F2EA740(v98);

  sub_22F2EA740(v99);
  sub_22F2EA558(v1);
  return v102;
}

uint64_t sub_22F25664C(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return sub_22F2567AC(v4, __dst) & 1;
}

uint64_t sub_22F2566A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_22F256700(v5, v7) & 1;
}

uint64_t sub_22F256700(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22F15BD14(*a1, *a2) & 1) == 0 || (sub_22F15BD14(a1[1], a2[1]) & 1) == 0 || (sub_22F15BD14(a1[2], a2[2]) & 1) == 0 || (sub_22F15BD14(a1[3], a2[3]) & 1) == 0 || (sub_22F15BD14(a1[4], a2[4]) & 1) == 0 || (sub_22F15BD14(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[6];
  v5 = a2[6];

  return sub_22F15BD14(v4, v5);
}

uint64_t sub_22F2567AC(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v9 = *(a2 + 8);
  v8 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v28 = *(a2 + 40);
  v29 = *(a1 + 40);
  v26 = *(a2 + 48);
  v27 = *(a1 + 48);
  if ((sub_22F15BD14(*a1, *a2) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_22F15BD14(v5, v9) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_22F15BD14(v4, v8) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_22F15BD14(v7, v11) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_22F15BD14(v6, v10) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_22F15BD14(v29, v28) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((sub_22F15BD14(v27, v26) & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(a1 + 72);
  v52[0] = *(a1 + 56);
  v52[1] = v12;
  v52[2] = *(a1 + 88);
  v53 = *(a1 + 104);
  v13 = *(a2 + 72);
  v50[0] = *(a2 + 56);
  v50[1] = v13;
  v50[2] = *(a2 + 88);
  v51 = *(a2 + 104);
  if ((sub_22F256700(v52, v50) & 1) == 0)
  {
    goto LABEL_14;
  }

  v14 = *(a1 + 128);
  v48[0] = *(a1 + 112);
  v48[1] = v14;
  v48[2] = *(a1 + 144);
  v49 = *(a1 + 160);
  v15 = *(a2 + 128);
  v46[0] = *(a2 + 112);
  v46[1] = v15;
  v46[2] = *(a2 + 144);
  v47 = *(a2 + 160);
  if ((sub_22F256700(v48, v46) & 1) == 0)
  {
    goto LABEL_14;
  }

  v16 = *(a1 + 184);
  v44[0] = *(a1 + 168);
  v44[1] = v16;
  v44[2] = *(a1 + 200);
  v45 = *(a1 + 216);
  v17 = *(a2 + 184);
  v42[0] = *(a2 + 168);
  v42[1] = v17;
  v42[2] = *(a2 + 200);
  v43 = *(a2 + 216);
  if ((sub_22F256700(v44, v42) & 1) == 0)
  {
    goto LABEL_14;
  }

  v18 = *(a1 + 240);
  v40[0] = *(a1 + 224);
  v40[1] = v18;
  v40[2] = *(a1 + 256);
  v41 = *(a1 + 272);
  v19 = *(a2 + 240);
  v38[0] = *(a2 + 224);
  v38[1] = v19;
  v38[2] = *(a2 + 256);
  v39 = *(a2 + 272);
  if ((sub_22F256700(v40, v38) & 1) == 0)
  {
    goto LABEL_14;
  }

  v37 = *(a1 + 328);
  v20 = *(a1 + 296);
  v36[0] = *(a1 + 280);
  v36[1] = v20;
  v36[2] = *(a1 + 312);
  v35 = *(a2 + 328);
  v21 = *(a2 + 296);
  v34[0] = *(a2 + 280);
  v34[1] = v21;
  v34[2] = *(a2 + 312);
  if (sub_22F256700(v36, v34))
  {
    v22 = *(a1 + 352);
    v32[0] = *(a1 + 336);
    v32[1] = v22;
    v32[2] = *(a1 + 368);
    v33 = *(a1 + 384);
    v23 = *(a2 + 352);
    v30[0] = *(a2 + 336);
    v30[1] = v23;
    v30[2] = *(a2 + 368);
    v31 = *(a2 + 384);
    v24 = sub_22F256700(v32, v30);
  }

  else
  {
LABEL_14:
    v24 = 0;
  }

  return v24 & 1;
}

unint64_t sub_22F256A2C()
{
  v1 = 0x756C61566E696167;
  v2 = 0x65536E49656D6974;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6C426F5465646166;
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

uint64_t sub_22F256AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F25A704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F256AEC(uint64_t a1)
{
  v2 = sub_22F25963C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F256B28(uint64_t a1)
{
  v2 = sub_22F25963C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.ExitPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B08, &qword_22F77F648);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  v9 = *v1;
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  v15 = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F25963C();

  sub_22F742210();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0);
  sub_22F741FE0();

  if (!v2)
  {
    v13 = v15;
    LOBYTE(v17) = 1;
    sub_22F741FB0();
    LOBYTE(v17) = 2;
    sub_22F741FB0();
    v17 = v13;
    v16 = 3;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FlexMLAnalysis.ExitPoint.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 16);
  sub_22F25925C(a1, *v1);
  sub_22F7421B0();
  sub_22F7421B0();

  return sub_22F25925C(a1, v5);
}

uint64_t FlexMLAnalysis.ExitPoint.hashValue.getter()
{
  v1 = v0[2];
  v3[9] = *v0;
  v3[10] = v0[1];
  v3[11] = v1;
  sub_22F742170();
  FlexMLAnalysis.ExitPoint.hash(into:)(v3);
  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.ExitPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B10, &qword_22F77F650);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F25963C();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v18 = 0;
  sub_22F259690(&qword_2810A92B0);
  sub_22F741F10();
  v17 = v19;
  LOBYTE(v19) = 1;
  sub_22F741EE0();
  v12 = v11;
  LOBYTE(v19) = 2;
  sub_22F741EE0();
  v15 = v14;
  v18 = 3;
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v16 = v19;
  *a2 = v17;
  *(a2 + 8) = v12;
  *(a2 + 12) = v15;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F257150()
{
  v1 = v0[2];
  v3[9] = *v0;
  v3[10] = v0[1];
  v3[11] = v1;
  sub_22F742170();
  FlexMLAnalysis.ExitPoint.hash(into:)(v3);
  return sub_22F7421D0();
}

uint64_t sub_22F2571B0()
{
  v1 = v0[2];
  v3[9] = *v0;
  v3[10] = v0[1];
  v3[11] = v1;
  sub_22F742170();
  FlexMLAnalysis.ExitPoint.hash(into:)(v3);
  return sub_22F7421D0();
}

uint64_t static FlexMLAnalysis.EntryPoint.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v5 = a1[2];
  result = *(a1 + 2);
  v7 = a2[2];
  v8 = *(a2 + 2);
  if (v4)
  {
    v9 = v2 == v3;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
LABEL_10:
    if (v5 == v7)
    {
      return sub_22F17AA10(result, v8);
    }

    return 0;
  }

  v10 = (v2 + 32);
  v11 = (v3 + 32);
  while (v4)
  {
    if (*v10 != *v11)
    {
      return 0;
    }

    ++v10;
    ++v11;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2572CC(uint64_t a1)
{
  v2 = sub_22F2596FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F257308(uint64_t a1)
{
  v2 = sub_22F2596FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.EntryPoint.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B18, &qword_22F77F658);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v15 = v1[2];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2596FC();

  sub_22F742210();
  v17 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0);
  sub_22F741FE0();

  if (!v2)
  {
    v12 = v15;
    LOBYTE(v17) = 1;
    sub_22F741FB0();
    v17 = v12;
    v16 = 2;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FlexMLAnalysis.EntryPoint.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_22F25925C(a1, *v1);
  sub_22F7421B0();

  return sub_22F25925C(a1, v4);
}

uint64_t FlexMLAnalysis.EntryPoint.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22F742170();
  sub_22F25925C(v5, v1);
  sub_22F7421B0();
  sub_22F25925C(v5, v3);
  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.EntryPoint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B20, &qword_22F77F660);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2596FC();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v17 = 0;
  sub_22F259690(&qword_2810A92B0);
  sub_22F741F10();
  v16 = v18;
  LOBYTE(v18) = 1;
  sub_22F741EE0();
  v12 = v11;
  v17 = 2;
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v14 = v18;
  *a2 = v16;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F2578F8(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_22F25925C(a1, *v1);
  sub_22F7421B0();

  return sub_22F25925C(a1, v4);
}

uint64_t sub_22F257968()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_22F742170();
  sub_22F25925C(v5, v1);
  sub_22F7421B0();
  sub_22F25925C(v5, v3);
  return sub_22F7421D0();
}

uint64_t static FlexMLAnalysis.VideoEvents.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  result = a1[1];
  v6 = a2[1];
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return sub_22F17AA10(result, v6);
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      return sub_22F17AA10(result, v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F257A90(uint64_t a1)
{
  v2 = sub_22F259750();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F257ACC(uint64_t a1)
{
  v2 = sub_22F259750();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.VideoEvents.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B28, &qword_22F77F668);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259750();

  sub_22F742210();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0);
  sub_22F741FE0();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    sub_22F741FE0();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FlexMLAnalysis.VideoEvents.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_22F25925C(a1, v3);

  return sub_22F25925C(a1, v4);
}

uint64_t FlexMLAnalysis.VideoEvents.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F25925C(v4, v2);
  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.VideoEvents.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B30, &qword_22F77F670);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259750();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v16 = 0;
  sub_22F259690(&qword_2810A92B0);
  sub_22F741F10();
  v11 = v17;
  v16 = 1;
  sub_22F741F10();
  (*(v6 + 8))(v9, v5);
  v12 = v17;
  v13 = v15;
  *v15 = v11;
  v13[1] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F257FC4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F25925C(v4, v2);
  return sub_22F7421D0();
}

uint64_t sub_22F258018(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_22F25925C(a1, v3);

  return sub_22F25925C(a1, v4);
}

uint64_t sub_22F258058()
{
  v1 = *v0;
  v2 = v0[1];
  sub_22F742170();
  sub_22F25925C(v4, v1);
  sub_22F25925C(v4, v2);
  return sub_22F7421D0();
}

uint64_t sub_22F258104(uint64_t a1)
{
  v2 = sub_22F2597A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F258140(uint64_t a1)
{
  v2 = sub_22F2597A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.VisualTempo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B38, &qword_22F77F678);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v14 = *(v1 + 2);
  v13 = *(v1 + 12);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2597A4();

  sub_22F742210();
  v18 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  sub_22F259690(&qword_2810A92C0);
  sub_22F741FE0();

  if (!v2)
  {
    v16 = 1;
    v15 = v13;
    sub_22F741F50();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FlexMLAnalysis.VisualTempo.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  sub_22F25925C(a1, v2);
  if (v4 == 1)
  {
    return sub_22F742190();
  }

  sub_22F742190();
  return sub_22F7421B0();
}

uint64_t FlexMLAnalysis.VisualTempo.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 12);
  sub_22F742170();
  sub_22F25925C(v5, v1);
  sub_22F742190();
  if (v3 != 1)
  {
    sub_22F7421B0();
  }

  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.VisualTempo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B40, &qword_22F77F680);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2597A4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
  v14[15] = 0;
  sub_22F259690(&qword_2810A92B0);
  sub_22F741F10();
  v11 = v15;
  v14[14] = 1;
  v12 = sub_22F741E80();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 12) = BYTE4(v12) & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F258690()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 12);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_22F742170();
  FlexMLAnalysis.VisualTempo.hash(into:)(v4);
  return sub_22F7421D0();
}

uint64_t sub_22F2586F0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 12);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_22F742170();
  FlexMLAnalysis.VisualTempo.hash(into:)(v4);
  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.videoEvents.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_22F13BB74(v2);
}

uint64_t FlexMLAnalysis.visualTempo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 44);
  *a1 = *(v1 + 32);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_22F2587B4()
{
  v1 = 0x6E696F5074697865;
  v2 = 0x6576456F65646976;
  if (*v0 != 2)
  {
    v2 = 0x65546C6175736976;
  }

  if (*v0)
  {
    v1 = 0x696F507972746E65;
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

uint64_t sub_22F25884C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F25A884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F258874(uint64_t a1)
{
  v2 = sub_22F259AB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2588B0(uint64_t a1)
{
  v2 = sub_22F259AB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FlexMLAnalysis.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B48, &qword_22F77F688);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v11 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v9;
  v12 = *(v1 + 32);
  v18 = *(v1 + 44);
  v19 = v12;
  v20 = *(v1 + 40);
  v21 = v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259AB4();

  sub_22F742210();
  v24 = v10;
  v26 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B50, &qword_22F77F690);
  sub_22F259CD0(&qword_2810A9368, sub_22F259B08);
  sub_22F741F70();
  if (!v2)
  {
    v15 = v21;
    v14 = v22;
    v16 = v20;

    v24 = v23;
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B58, &qword_22F77F698);
    sub_22F259B5C(&qword_2810A9378, sub_22F259BD4);
    sub_22F741F70();
    v24 = v14;
    v25 = v15;
    v26 = 2;
    sub_22F13BB74(v14);
    sub_22F259C28();
    sub_22F741F70();
    sub_22F18B0F4(v24);
    v24 = v19;
    BYTE4(v25) = (v16 | (v18 << 32)) >> 32;
    LODWORD(v25) = v16;
    v26 = 3;
    sub_22F259C7C();

    sub_22F741F70();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t FlexMLAnalysis.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 44);
  v10 = *(v2 + 40);
  if (*v2)
  {
    sub_22F742190();
    sub_22F2593BC(a1, v5);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_22F742190();
    if (v4)
    {
LABEL_3:
      sub_22F742190();
      sub_22F2592C4(a1, v4);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_22F742190();
      if (!v8)
      {
        return sub_22F742190();
      }

      goto LABEL_9;
    }
  }

  sub_22F742190();
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_22F742190();
  sub_22F25925C(a1, v7);
  sub_22F25925C(a1, v6);
  if (!v8)
  {
    return sub_22F742190();
  }

LABEL_9:
  sub_22F742190();
  sub_22F25925C(a1, v8);
  if (((v10 | (v9 << 32)) & 0x100000000) == 0)
  {
    sub_22F742190();
    return sub_22F7421B0();
  }

  return sub_22F742190();
}