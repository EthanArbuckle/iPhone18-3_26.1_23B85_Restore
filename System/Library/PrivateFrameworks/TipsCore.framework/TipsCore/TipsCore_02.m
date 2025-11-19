uint64_t sub_1C0120F78(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v143 = sub_1C014BD40();
  v10 = *(*(v143 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v143);
  v142 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v141 = &v128 - v15;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_1C010685C(v18);
      v18 = result;
    }

    v149 = v18;
    v124 = *(v18 + 2);
    if (v124 >= 2)
    {
      while (*a3)
      {
        v125 = *&v18[16 * v124];
        v126 = *&v18[16 * v124 + 24];
        sub_1C0121AD4((*a3 + 24 * v125), (*a3 + 24 * *&v18[16 * v124 + 16]), (*a3 + 24 * v126), v5);
        if (v6)
        {
        }

        if (v126 < v125)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C010685C(v18);
        }

        if (v124 - 2 >= *(v18 + 2))
        {
          goto LABEL_115;
        }

        v127 = &v18[16 * v124];
        *v127 = v125;
        *(v127 + 1) = v126;
        v149 = v18;
        result = sub_1C01067D0(v124 - 1);
        v18 = v149;
        v124 = *(v149 + 2);
        if (v124 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v128 = a4;
  v17 = 0;
  v140 = (v14 + 16);
  v139 = (v14 + 8);
  v18 = MEMORY[0x1E69E7CC0];
  v129 = a3;
  v131 = a1;
  while (1)
  {
    v19 = v17;
    v132 = v17;
    if (v17 + 1 >= v16)
    {
      v36 = v17 + 1;
    }

    else
    {
      v137 = v16;
      v130 = v18;
      v20 = *a3;
      v21 = *a3 + 24 * (v17 + 1);
      v22 = *(v21 + 16);
      v146 = *(v21 + 8);
      v133 = 24 * v17;
      v23 = v20 + 24 * v17;
      v24 = *(v23 + 16);
      v147 = *(v23 + 8);
      v148 = v23;
      v25 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v26 = *v140;
      v27 = v141;
      v5 = v143;
      (*v140)(v141, &v22[v25], v143);
      v28 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
      swift_beginAccess();
      v29 = &v24[v28];
      v30 = v142;
      v135 = v26;
      (v26)(v142, v29, v5);

      v31 = v22;

      v32 = v24;
      v138 = sub_1C014BD10();
      v33 = *v139;
      (*v139)(v30, v5);
      v134 = v33;
      (v33)(v27, v5);

      v34 = v132 + 2;
      v35 = (v148 + 64);
      while (1)
      {
        v36 = v137;
        if (v137 == v34)
        {
          break;
        }

        LODWORD(v147) = v138 == 1;
        v37 = *v35;
        v145 = *(v35 - 1);
        v38 = *(v35 - 3);
        v146 = *(v35 - 4);
        v39 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        v148 = v34;
        swift_beginAccess();
        v40 = v141;
        v136 = v6;
        v41 = v143;
        v42 = v135;
        (v135)(v141, &v37[v39], v143);
        v43 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v44 = v142;
        v42(v142, &v38[v43], v41);
        v5 = v145;

        v144 = v37;

        v45 = v38;
        v46 = sub_1C014BD10();
        v47 = v134;
        (v134)(v44, v41);
        v48 = v41;
        v6 = v136;
        v47(v40, v48);

        v34 = v148 + 1;
        v35 += 3;
        if (((v147 ^ (v46 != 1)) & 1) == 0)
        {
          v36 = v148;
          break;
        }
      }

      a3 = v129;
      v18 = v130;
      a1 = v131;
      v19 = v132;
      v49 = v133;
      if (v138 == 1)
      {
        if (v36 < v132)
        {
          goto LABEL_118;
        }

        if (v132 < v36)
        {
          v50 = 0;
          v51 = 24 * v36;
          v52 = v132;
          do
          {
            if (v52 != v36 + v50 - 1)
            {
              v58 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v53 = (v58 + v49);
              v54 = v58 + v51;
              v55 = *v53;
              v56 = *(v53 + 1);
              v57 = *(v54 - 24);
              v53[2] = *(v54 - 8);
              *v53 = v57;
              *(v54 - 24) = v55;
              *(v54 - 16) = v56;
            }

            ++v52;
            --v50;
            v51 -= 24;
            v49 += 24;
          }

          while (v52 < v36 + v50);
        }
      }
    }

    v59 = a3[1];
    if (v36 < v59)
    {
      if (__OFSUB__(v36, v19))
      {
        goto LABEL_117;
      }

      if (v36 - v19 < v128)
      {
        if (__OFADD__(v19, v128))
        {
          goto LABEL_119;
        }

        if (v19 + v128 >= v59)
        {
          v60 = a3[1];
        }

        else
        {
          v60 = v19 + v128;
        }

        if (v60 < v19)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v36 != v60)
        {
          break;
        }
      }
    }

    v17 = v36;
    if (v36 < v19)
    {
      goto LABEL_116;
    }

LABEL_29:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C00FE794(0, *(v18 + 2) + 1, 1, v18);
      v18 = result;
    }

    v62 = *(v18 + 2);
    v61 = *(v18 + 3);
    v63 = v62 + 1;
    if (v62 >= v61 >> 1)
    {
      result = sub_1C00FE794((v61 > 1), v62 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = v63;
    v64 = &v18[16 * v62];
    *(v64 + 4) = v132;
    *(v64 + 5) = v17;
    v65 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if (v62)
    {
      while (1)
      {
        v5 = v63 - 1;
        if (v63 >= 4)
        {
          break;
        }

        if (v63 == 3)
        {
          v66 = *(v18 + 4);
          v67 = *(v18 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_48:
          if (v69)
          {
            goto LABEL_105;
          }

          v82 = &v18[16 * v63];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_108;
          }

          v88 = &v18[16 * v5 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_112;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v5 = v63 - 2;
            }

            goto LABEL_69;
          }

          goto LABEL_62;
        }

        v92 = &v18[16 * v63];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_62:
        if (v87)
        {
          goto LABEL_107;
        }

        v95 = &v18[16 * v5];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_110;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_69:
        v103 = v5 - 1;
        if (v5 - 1 >= v63)
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

        v104 = *&v18[16 * v103 + 32];
        v105 = *&v18[16 * v5 + 40];
        sub_1C0121AD4((*a3 + 24 * v104), (*a3 + 24 * *&v18[16 * v5 + 32]), (*a3 + 24 * v105), v65);
        if (v6)
        {
        }

        if (v105 < v104)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1C010685C(v18);
        }

        if (v103 >= *(v18 + 2))
        {
          goto LABEL_102;
        }

        v106 = &v18[16 * v103];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        v149 = v18;
        result = sub_1C01067D0(v5);
        v18 = v149;
        v63 = *(v149 + 2);
        if (v63 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v18[16 * v63 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_103;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_104;
      }

      v77 = &v18[16 * v63];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_106;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_109;
      }

      if (v81 >= v73)
      {
        v99 = &v18[16 * v5 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_113;
        }

        if (v68 < v102)
        {
          v5 = v63 - 2;
        }

        goto LABEL_69;
      }

      goto LABEL_48;
    }

LABEL_3:
    v16 = a3[1];
    a1 = v131;
    if (v17 >= v16)
    {
      goto LABEL_89;
    }
  }

  v130 = v18;
  v136 = v6;
  v138 = *a3;
  v107 = (v138 + 24 * v36);
  v108 = (v19 - v36);
  v133 = v60;
LABEL_80:
  v137 = v36;
  v109 = v138 + 24 * v36;
  v110 = *(v109 + 8);
  v111 = *(v109 + 16);
  v134 = v108;
  v135 = v107;
  while (1)
  {
    v147 = v110;
    v144 = v108;
    v112 = *(v107 - 1);
    v148 = *(v107 - 2);
    v113 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
    swift_beginAccess();
    v114 = *v140;
    v115 = v141;
    v116 = v143;
    (*v140)(v141, &v111[v113], v143);
    v117 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
    swift_beginAccess();
    v118 = v142;
    v114(v142, &v112[v117], v116);

    v146 = v111;

    v145 = v112;
    v119 = sub_1C014BD10();
    v5 = v139;
    v120 = *v139;
    (*v139)(v118, v116);
    v120(v115, v116);

    if (v119 != 1)
    {
LABEL_79:
      v36 = v137 + 1;
      v107 = v135 + 24;
      v108 = v134 - 1;
      v17 = v133;
      if (v137 + 1 != v133)
      {
        goto LABEL_80;
      }

      v6 = v136;
      a3 = v129;
      v18 = v130;
      a1 = v131;
      if (v133 < v132)
      {
        goto LABEL_116;
      }

      goto LABEL_29;
    }

    v121 = v144;
    if (!v138)
    {
      break;
    }

    v122 = *v107;
    v110 = *(v107 + 1);
    v111 = *(v107 + 2);
    *v107 = *(v107 - 24);
    *(v107 + 2) = *(v107 - 1);
    *(v107 - 2) = v110;
    *(v107 - 1) = v111;
    *(v107 - 3) = v122;
    v107 -= 24;
    v123 = __CFADD__(v121, 1);
    v108 = v121 + 1;
    if (v123)
    {
      goto LABEL_79;
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

uint64_t sub_1C0121AD4(char *a1, char *a2, char *a3, char *a4)
{
  v64 = sub_1C014BD40();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v64);
  v63 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v56 - v12;
  v13 = (a2 - a1) / 24;
  v14 = (a3 - a2) / 24;
  if (v13 >= v14)
  {
    v65 = a1;
    if (a4 != a2 || &a2[24 * v14] <= a4)
    {
      memmove(a4, a2, 24 * v14);
    }

    v15 = &a4[24 * v14];
    if (a3 - a2 >= 24 && a2 > v65)
    {
      v57 = (v8 + 8);
      v58 = (v8 + 16);
      v67 = a4;
      v31 = v64;
LABEL_22:
      v32 = a3 - 24;
      v69 = a2;
      do
      {
        v66 = v15;
        v68 = v32;
        v34 = *(v15 - 2);
        v33 = *(v15 - 1);
        v35 = *(a2 - 2);
        v36 = *(a2 - 1);
        v60 = v35;
        v61 = v32 + 24;
        v37 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v38 = *v58;
        v39 = v62;
        (*v58)(v62, &v33[v37], v31);
        v40 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v41 = v63;
        (v38)(v63, &v36[v40], v31);

        v59 = v33;

        v42 = v36;
        v43 = sub_1C014BD10();
        v44 = *v57;
        (*v57)(v41, v31);
        v44(v39, v31);

        if (v43 == 1)
        {
          v49 = v65;
          v50 = v66;
          v51 = v69;
          v52 = v69 - 24;
          a3 = v68;
          if (v61 != v69)
          {
            v53 = *v52;
            *(v68 + 2) = *(v69 - 1);
            *a3 = v53;
          }

          a4 = v67;
          v15 = v50;
          if (v50 <= v67 || (a2 = v51 - 24, v52 <= v49))
          {
            a2 = v51 - 24;
            goto LABEL_33;
          }

          goto LABEL_22;
        }

        v45 = v66;
        v46 = v66 - 24;
        v47 = v68;
        if (v61 != v66)
        {
          v48 = *v46;
          *(v68 + 2) = *(v66 - 1);
          *v47 = v48;
        }

        v32 = v47 - 24;
        v15 = v45 - 24;
        a4 = v67;
        a2 = v69;
      }

      while (v46 > v67);
      v15 = v45 - 24;
    }
  }

  else
  {
    if (a4 != a1 || &a1[24 * v13] <= a4)
    {
      memmove(a4, a1, 24 * v13);
    }

    v15 = &a4[24 * v13];
    if (a2 - a1 >= 24 && a2 < a3)
    {
      v58 = (v8 + 8);
      v59 = (v8 + 16);
      v68 = a3;
      v66 = &a4[24 * v13];
      v16 = v62;
      while (1)
      {
        v69 = a2;
        v65 = a1;
        v17 = *(a2 + 2);
        v61 = *(a2 + 1);
        v67 = a4;
        v18 = *(a4 + 1);
        v19 = *(a4 + 2);
        v20 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v21 = *v59;
        v22 = v64;
        (*v59)(v16, &v17[v20], v64);
        v23 = OBJC_IVAR___TPSSavedTipEntry_savedDate;
        swift_beginAccess();
        v24 = v63;
        v21(v63, &v19[v23], v22);

        v60 = v17;

        v25 = v19;
        v26 = sub_1C014BD10();
        v27 = *v58;
        (*v58)(v24, v22);
        v27(v16, v22);

        if (v26 != 1)
        {
          break;
        }

        v28 = v69;
        a2 = v69 + 24;
        v29 = v65;
        a4 = v67;
        if (v65 != v69)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 = v29 + 24;
        v15 = v66;
        if (a4 >= v66 || a2 >= v68)
        {
          goto LABEL_15;
        }
      }

      v28 = v67;
      a4 = v67 + 24;
      v29 = v65;
      a2 = v69;
      if (v65 == v67)
      {
        goto LABEL_13;
      }

LABEL_12:
      v30 = *v28;
      *(v29 + 2) = *(v28 + 2);
      *v29 = v30;
      goto LABEL_13;
    }

LABEL_15:
    a2 = a1;
  }

LABEL_33:
  v54 = (v15 - a4) / 24;
  if (a2 != a4 || a2 >= &a4[24 * v54])
  {
    memmove(a2, a4, 24 * v54);
  }

  return 1;
}

void sub_1C0122054(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
LABEL_25:
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v23 = a1;
    v22 = a2;
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 64);
    v15 = (v12 + 63) >> 6;
    while (2)
    {
      v24 = v10;
      do
      {
        if (!v14)
        {
          v17 = v11;
          while (1)
          {
            v11 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v11 >= v15)
            {
              goto LABEL_23;
            }

            v18 = *(a3 + 64 + 8 * v11);
            ++v17;
            if (v18)
            {
              v16 = __clz(__rbit64(v18));
              v14 = (v18 - 1) & v18;
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_25;
        }

        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_15:
        v19 = v16 | (v11 << 6);
        v20 = (*(*(a3 + 56) + 8 * v19) + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier);
        swift_beginAccess();
        v21 = *v20 == a4 && v20[1] == a5;
      }

      while (!v21 && (sub_1C014C9F0() & 1) == 0);
      *(v23 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v10 = v24 + 1;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      break;
    }

    __break(1u);
LABEL_23:

    sub_1C01222A8(v23, v22, v24, a3);
    swift_bridgeObjectRelease_n();
  }
}

void *sub_1C0122218(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1C01237B8(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C01222A8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06478, &unk_1C01571F0);
  result = sub_1C014C910();
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
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    sub_1C014CAE0();

    v34 = v21;
    sub_1C014C2E0();
    result = sub_1C014CB10();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C01224E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1C014C380();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1C0122A74();
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
      result = sub_1C014C850();
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

uint64_t sub_1C0122A74()
{
  v0 = sub_1C014C390();
  v4 = sub_1C0122AF4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C0122AF4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1C014C2D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_1C014C650();
  if (!v9)
  {
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_1C0120B80(v9, 0);
  v12 = sub_1C0122C4C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_1C014C2D0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_1C014C850();
LABEL_4:

  return sub_1C014C2D0();
}

unint64_t sub_1C0122C4C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1C0145A18(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C014C340();
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
          result = sub_1C014C850();
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

    result = sub_1C0145A18(v12, a6, a7);
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

    result = sub_1C014C320();
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

void *sub_1C0122E6C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C0122EFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0122F94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0122FD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C0123044()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = &v0[v3];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *&v0[v4];
  v12 = *&v0[v4 + 8];

  sub_1C011EEA0(v5, v6, v7, &v0[v2], v9, v10, v11, v12);
}

uint64_t sub_1C0123124()
{
  result = sub_1C014BF40();
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

uint64_t sub_1C012348C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06688, &qword_1C0156730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C01234FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  swift_bridgeObjectRetain_n();
  if (v9 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v26 = swift_slowAlloc();

      sub_1C0122054(v26, v10, a1, a2, a3);
      v23 = v27;
      MEMORY[0x1C68D7F30](v26, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_22;
    }
  }

  v29 = v10;
  v30 = v4;
  v28[1] = v28;
  MEMORY[0x1EEE9AC00]();
  v31 = v28 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v31, v11);
  v12 = 0;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v11 = v15 & *(a1 + 64);
  v4 = (v14 + 63) >> 6;
  while (2)
  {
    v32 = v12;
    do
    {
      if (!v11)
      {
        v17 = v13;
        while (1)
        {
          v13 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v13 >= v4)
          {
            goto LABEL_21;
          }

          v18 = *(a1 + 64 + 8 * v13);
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v11 = (v18 - 1) & v18;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_13:
      v19 = v16 | (v13 << 6);
      v10 = *(*(a1 + 56) + 8 * v19) + OBJC_IVAR___TPSSavedTipEntry_tipIdentifier;
      swift_beginAccess();
      v20 = *v10 == a2 && *(v10 + 8) == a3;
    }

    while (!v20 && (sub_1C014C9F0() & 1) == 0);
    v21 = v32;
    *&v31[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
    v22 = __OFADD__(v21, 1);
    v12 = v21 + 1;
    if (!v22)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:

  v23 = sub_1C01222A8(v31, v29, v32, a1);

  swift_bridgeObjectRelease_n();
LABEL_22:
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

void sub_1C01237B8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C01222A8(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C0123928(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_1C0122218(v10, v6, v4, a2);
      MEMORY[0x1C68D7F30](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1C01237B8(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1C0123AD0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR___TPSSavedTipsManager__isCurrentTipSaved;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_1C0123BAC(char a1)
{
  result = 0x6369766544535054;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000028;
      break;
    case 2:
    case 23:
    case 37:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD00000000000002CLL;
      break;
    case 4:
      v3 = 17;
      goto LABEL_16;
    case 5:
      v3 = 5;
LABEL_16:
      result = v3 | 0xD000000000000022;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
    case 31:
      result = 0xD000000000000012;
      break;
    case 8:
      return result;
    case 9:
    case 11:
    case 42:
      result = 0xD00000000000001BLL;
      break;
    case 10:
    case 21:
      result = 0xD00000000000001CLL;
      break;
    case 12:
    case 36:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0x726F6E6749535054;
      break;
    case 14:
    case 25:
    case 26:
    case 28:
      result = 0xD000000000000024;
      break;
    case 16:
    case 34:
      result = 0xD000000000000020;
      break;
    case 17:
      result = 0xD000000000000022;
      break;
    case 18:
      result = 0xD00000000000002ALL;
      break;
    case 19:
      result = 0xD000000000000022;
      break;
    case 20:
    case 29:
    case 38:
      result = 0xD00000000000001FLL;
      break;
    case 22:
      result = 0xD000000000000013;
      break;
    case 24:
    case 30:
      result = 0xD000000000000023;
      break;
    case 27:
    case 43:
      result = 0xD000000000000021;
      break;
    case 33:
      result = 0xD000000000000022;
      break;
    case 35:
      result = 0xD000000000000015;
      break;
    case 39:
      result = 0xD000000000000022;
      break;
    case 40:
      result = 0xD000000000000031;
      break;
    case 41:
      result = 0x5472657355535054;
      break;
    case 44:
      result = 0xD000000000000019;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1C0123FF8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C0123BAC(*a1);
  v5 = v4;
  if (v3 == sub_1C0123BAC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C014C9F0();
  }

  return v8 & 1;
}

uint64_t sub_1C0124080()
{
  v1 = *v0;
  sub_1C014CAE0();
  sub_1C0123BAC(v1);
  sub_1C014C2E0();

  return sub_1C014CB10();
}

uint64_t sub_1C01240E4()
{
  sub_1C0123BAC(*v0);
  sub_1C014C2E0();
}

uint64_t sub_1C0124138()
{
  v1 = *v0;
  sub_1C014CAE0();
  sub_1C0123BAC(v1);
  sub_1C014C2E0();

  return sub_1C014CB10();
}

uint64_t sub_1C0124198@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C0125880();
  *a2 = result;
  return result;
}

unint64_t sub_1C01241C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C0123BAC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0124244()
{
  sub_1C01254E8(6, &v2);
  v0 = v3;
  sub_1C00FC158(&v2);
  if (v0)
  {
    return sub_1C01258D4(6);
  }

  else
  {
    return sub_1C014B910();
  }
}

uint64_t sub_1C01242A4()
{
  sub_1C01254E8(17, &v2);
  v0 = v3;
  sub_1C00FC158(&v2);
  if (v0)
  {
    return sub_1C01258D4(17);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C012437C()
{
  result = sub_1C01243A0();
  byte_1EDD44C08 = result & 1;
  return result;
}

uint64_t sub_1C01243A0()
{
  v0 = [objc_opt_self() clientBundleIdentifier];
  if (v0)
  {
    v1 = v0;
    sub_1C014C230();

    sub_1C014C2B0();
  }

  v2 = os_variant_allows_internal_security_policies();
  swift_unknownObjectRelease();
  if (!v2)
  {
    return 0;
  }

  v3 = [objc_opt_self() standardUserDefaults];
  v4 = sub_1C014C200();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_1C014C6E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_1C00FC158(v14);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDD44C58;
  sub_1C014C800();

  *&v14[0] = 0xD00000000000002ELL;
  *(&v14[0] + 1) = 0x80000001C015CE70;
  if (v11)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v11)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1C68D6B10](v8, v9);

  v10 = v14[0];
  *&v14[0] = v7;
  TipsLog.log(_:)(v10);

  return v11;
}

uint64_t static TipsDefaultsManager.isInternalDevice.getter()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return byte_1EDD44C08;
}

uint64_t static TipsDefaultsManager.isInternalDevice.setter(char a1)
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_1EDD44C08 = a1 & 1;
  return result;
}

uint64_t (*static TipsDefaultsManager.isInternalDevice.modify())()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C0124858@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  *a1 = byte_1EDD44C08;
  return result;
}

uint64_t sub_1C01248D4(char *a1)
{
  v1 = *a1;
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  byte_1EDD44C08 = v1;
  return result;
}

id sub_1C0124B04(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C01254E8(a3, &v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      v3 = sub_1C014C200();

      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C00FC158(&v6);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

uint64_t sub_1C0124BA8(char a1)
{
  sub_1C01254E8(a1, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(&v3);
    return 0;
  }
}

double sub_1C0124DFC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C01254E8(a3, &v5);
  if (v6)
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1C00FC158(&v5);
  }

  return 0.0;
}

double sub_1C0124E70(char a1)
{
  sub_1C01254E8(a1, &v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    sub_1C00FC158(&v3);
  }

  return 0.0;
}

uint64_t sub_1C0124ED8()
{
  sub_1C01254E8(34, &v2);
  v0 = v3;
  sub_1C00FC158(&v2);
  if (v0)
  {
    *&result = sub_1C01258D4(34) / 100.0;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1C01250FC@<X0>(uint64_t a1@<X8>)
{
  sub_1C01254E8(16, &v6);
  if (v7)
  {
    v2 = sub_1C014BD40();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_1C00FC158(&v6);
    v5 = sub_1C014BD40();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

id sub_1C01251F4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1C01254E8(a3, &v6);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
    if (swift_dynamicCast())
    {
      v3 = sub_1C014C3B0();

      v4 = v3;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C00FC158(&v6);
  }

  v4 = 0;
LABEL_6:

  return v4;
}

uint64_t sub_1C01252B0(char a1)
{
  sub_1C01254E8(a1, &v3);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1C00FC158(&v3);
    return 0;
  }
}

id sub_1C012532C(char a1)
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = 0;
  if (byte_1EDD44C08 == 1)
  {
    sub_1C01254E8(a1, &v7);
    if (v8)
    {
      sub_1C00F9954(&v7, v9);
      sub_1C00FC1C0(v9, &v7);
      sub_1C010074C(0, &qword_1EBE05C58, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return v6;
      }

      sub_1C00FC1C0(v9, &v7);
      if (swift_dynamicCast())
      {
        v3 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
        v4 = sub_1C014C200();

        v5 = [v3 numberFromString_];

        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        return v5;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v9);
    }

    else
    {
      sub_1C00FC158(&v7);
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C01254E8@<X0>(char a1@<W0>, Swift::String *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (byte_1EDD44C08 == 1)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    sub_1C0123BAC(a1);
    v6 = sub_1C014C200();

    v7 = [v5 objectForKey_];

    if (v7)
    {
      sub_1C014C6E0();
      swift_unknownObjectRelease();
      sub_1C00FC158(a2);
    }

    else
    {
      sub_1C00FC158(a2);
      v16 = 0;
      v17 = 0;
    }

    v8 = v17;
    *a2 = v16;
    a2[1] = v8;
    sub_1C011C8B0(a2, &v16);
    if (v17._object)
    {
      sub_1C010074C(0, &qword_1EBE05C50, 0x1E69E58C0);
      result = swift_dynamicCast();
      if (result)
      {
        if (qword_1EDD44C50 != -1)
        {
          swift_once();
        }

        v9 = qword_1EDD44C58;
        v16._countAndFlagsBits = 0;
        v16._object = 0xE000000000000000;
        sub_1C014C800();
        MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
        sub_1C014C8B0();
        MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
        v10 = [v15 description];
        v11 = sub_1C014C230();
        v13 = v12;

        MEMORY[0x1C68D6B10](v11, v13);

        v14 = v16;
        v16._countAndFlagsBits = v9;
        TipsLog.log(_:)(v14);
      }
    }

    else
    {
      return sub_1C00FC158(&v16);
    }
  }

  return result;
}

id TipsDefaultsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipsDefaultsManager.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsDefaultsManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipsDefaultsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TipsDefaultsManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0125880()
{
  v0 = sub_1C014CA10();

  if (v0 >= 0x2D)
  {
    return 45;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C01258D4(char a1)
{
  v2 = sub_1C014B910();
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 == 1)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    sub_1C0123BAC(a1);
    v4 = sub_1C014C200();

    v2 = [v3 integerForKey_];

    if (v2 >= 1)
    {
      if (qword_1EDD44C50 != -1)
      {
        swift_once();
      }

      sub_1C014C800();
      MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
      sub_1C014C8B0();
      MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
      v5 = sub_1C014C9C0();
      MEMORY[0x1C68D6B10](v5);

      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      TipsLog.log(_:)(v6);
    }
  }

  return v2;
}

uint64_t sub_1C0125AD4()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0125CBC()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0125EA4()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126090()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126278()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126460()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126648()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C012682C()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126A14()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t sub_1C0126BFC()
{
  if (qword_1EDD44C00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1EDD44C08 != 1)
  {
    return 0;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1C014C200();
  v2 = [v0 BOOLForKey_];

  if (!v2)
  {
    return 0;
  }

  if (qword_1EDD44C50 != -1)
  {
    swift_once();
  }

  sub_1C014C800();
  MEMORY[0x1C68D6B10](0x20746C7561666544, 0xE800000000000000);
  sub_1C014C8B0();
  MEMORY[0x1C68D6B10](0xD000000000000015, 0x80000001C015CE50);
  MEMORY[0x1C68D6B10](1702195828, 0xE400000000000000);
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  TipsLog.log(_:)(v3);

  return 1;
}

uint64_t getEnumTagSinglePayload for TipsDefaultsManager.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD4)
  {
    goto LABEL_17;
  }

  if (a2 + 44 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 44) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 44;
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

      return (*a1 | (v4 << 8)) - 44;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 44;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2D;
  v8 = v6 - 45;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TipsDefaultsManager.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 44 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 44) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD4)
  {
    v4 = 0;
  }

  if (a2 > 0xD3)
  {
    v5 = ((a2 - 212) >> 8) + 1;
    *result = a2 + 44;
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
    *result = a2 + 44;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C012732C()
{
  result = qword_1EBE069B0;
  if (!qword_1EBE069B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE069B0);
  }

  return result;
}

id TPSAssetsInfo.__allocating_init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = objc_allocWithZone(v6);
  v10 = &v9[OBJC_IVAR___TPSAssetsInfo_videoIdentifier];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  v12 = sub_1C014BC50();
  v13 = *(*(v12 - 8) + 56);
  v13(&v9[v11], 1, 1, v12);
  v14 = &v9[OBJC_IVAR___TPSAssetsInfo_imageIdentifier];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  v13(&v9[OBJC_IVAR___TPSAssetsInfo_imageURL], 1, 1, v12);
  swift_beginAccess();
  *v10 = a1;
  *(v10 + 1) = a2;
  swift_beginAccess();
  sub_1C01276F4(a3, &v9[v11]);
  swift_endAccess();
  swift_beginAccess();
  v16 = *(v14 + 1);
  *v14 = a4;
  *(v14 + 1) = a5;

  swift_beginAccess();
  sub_1C01276F4(a6, &v9[v15]);
  swift_endAccess();
  v24.receiver = v9;
  v24.super_class = v23;
  v17 = objc_msgSendSuper2(&v24, sel_init);
  sub_1C00FCBD4(a6);
  sub_1C00FCBD4(a3);
  return v17;
}

id TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v9 = &v6[OBJC_IVAR___TPSAssetsInfo_videoIdentifier];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  v11 = sub_1C014BC50();
  v12 = *(*(v11 - 8) + 56);
  v12(&v6[v10], 1, 1, v11);
  v13 = &v6[OBJC_IVAR___TPSAssetsInfo_imageIdentifier];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  v12(&v6[OBJC_IVAR___TPSAssetsInfo_imageURL], 1, 1, v11);
  swift_beginAccess();
  *v9 = a1;
  *(v9 + 1) = a2;
  swift_beginAccess();
  sub_1C01276F4(a3, &v6[v10]);
  swift_endAccess();
  swift_beginAccess();
  v15 = *(v13 + 1);
  *v13 = a4;
  *(v13 + 1) = a5;

  swift_beginAccess();
  sub_1C01276F4(a6, &v6[v14]);
  swift_endAccess();
  v23.receiver = v6;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, sel_init);
  sub_1C00FCBD4(a6);
  sub_1C00FCBD4(a3);
  return v16;
}

uint64_t sub_1C01276F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0127A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0127A9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1C0127C08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a3;
  swift_beginAccess();
  sub_1C0127A14(a1 + v9, v8);
  v10 = sub_1C014BC50();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_1C014BBB0();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_1C0127D50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1C0127A14(v2 + v4, a2);
}

void sub_1C0127DB0(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  if (a3)
  {
    sub_1C014BBC0();
    v11 = sub_1C014BC50();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = sub_1C014BC50();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  v13 = *a4;
  swift_beginAccess();
  v14 = a1;
  sub_1C0127A9C(v10, a1 + v13);
  swift_endAccess();
}

uint64_t sub_1C0127EFC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1C0127A9C(a1, v2 + v4);
  return swift_endAccess();
}

id TPSAssetsInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSAssetsInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TPSAssetsInfo.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-v9];
  v11 = (v2 + OBJC_IVAR___TPSAssetsInfo_videoIdentifier);
  swift_beginAccess();
  if (v11[1])
  {
    v12 = *v11;

    v13 = sub_1C014C200();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  swift_beginAccess();
  sub_1C0127A14(v2 + v15, v10);
  v16 = sub_1C014BC50();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = 0;
  if (v18(v10, 1, v16) != 1)
  {
    v19 = sub_1C014BBB0();
    (*(v17 + 8))(v10, v16);
  }

  v20 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];
  swift_unknownObjectRelease();

  v21 = (v2 + OBJC_IVAR___TPSAssetsInfo_imageIdentifier);
  swift_beginAccess();
  if (v21[1])
  {
    v22 = *v21;

    v23 = sub_1C014C200();
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v23 forKey:v24];
  swift_unknownObjectRelease();

  v25 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  swift_beginAccess();
  sub_1C0127A14(v2 + v25, v8);
  v26 = 0;
  if (v18(v8, 1, v16) != 1)
  {
    v26 = sub_1C014BBB0();
    (*(v17 + 8))(v8, v16);
  }

  v27 = sub_1C014C200();
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();
}

id TPSAssetsInfo.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TPSAssetsInfo.init(coder:)(void *a1)
{
  v2 = sub_1C0128960();

  return v2;
}

uint64_t TPSAssetsInfo.description.getter()
{
  v1 = v0;
  v2 = sub_1C014BC50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = 0xE000000000000000;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1C014C800();
  v32 = v30;
  v33 = v31;
  MEMORY[0x1C68D6B10](0xD000000000000012, 0x80000001C015CEC0);
  v8 = (v0 + OBJC_IVAR___TPSAssetsInfo_videoIdentifier);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    v11 = *v8;
  }

  else
  {
    v11 = 0;
  }

  if (v9)
  {
    v12 = v8[1];
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v11, v12);

  MEMORY[0x1C68D6B10](0x556F65646976202CLL, 0xEC000000203A4C52);
  v13 = OBJC_IVAR___TPSAssetsInfo_videoURL;
  swift_beginAccess();
  v14 = *(v3 + 48);
  if (v14(v1 + v13, 1, v2))
  {
    v15 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    (*(v3 + 16))(v6, v1 + v13, v2);
    v17 = sub_1C014BBA0();
    v16 = v18;
    (*(v3 + 8))(v6, v2);
    v15 = v17;
  }

  MEMORY[0x1C68D6B10](v15, v16);

  MEMORY[0x1C68D6B10](0xD000000000000013, 0x80000001C015CEE0);
  v19 = (v1 + OBJC_IVAR___TPSAssetsInfo_imageIdentifier);
  swift_beginAccess();
  v21 = *v19;
  v20 = v19[1];
  if (v20)
  {
    v22 = *v19;
  }

  else
  {
    v22 = 0;
  }

  if (v20)
  {
    v23 = v19[1];
  }

  else
  {
    v23 = 0xE000000000000000;
  }

  MEMORY[0x1C68D6B10](v22, v23);

  MEMORY[0x1C68D6B10](0x556567616D69202CLL, 0xEC000000203A4C52);
  v24 = OBJC_IVAR___TPSAssetsInfo_imageURL;
  swift_beginAccess();
  if (v14(v1 + v24, 1, v2))
  {
    v25 = 0;
  }

  else
  {
    (*(v3 + 16))(v6, v1 + v24, v2);
    v26 = sub_1C014BBA0();
    v7 = v27;
    (*(v3 + 8))(v6, v2);
    v25 = v26;
  }

  MEMORY[0x1C68D6B10](v25, v7);

  return v32;
}

id sub_1C0128960()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v34 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v37 = &v34 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  sub_1C010074C(0, &qword_1EDD44B60, 0x1E696AEC0);
  v35 = sub_1C014C5E0();
  sub_1C010074C(0, &qword_1EBE069C8, 0x1E695DFF8);
  v18 = sub_1C014C5E0();
  if (v18)
  {
    v19 = v18;
    sub_1C014BBC0();

    v20 = sub_1C014BC50();
    (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
  }

  else
  {
    v21 = sub_1C014BC50();
    (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  }

  sub_1C0128F0C(v15, v17);
  v22 = sub_1C014C5E0();
  v23 = sub_1C014C5E0();
  if (v23)
  {
    v24 = v23;
    sub_1C014BBC0();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = sub_1C014BC50();
  v27 = *(v26 - 8);
  (*(v27 + 56))(v10, v25, 1, v26);
  sub_1C0128F0C(v10, v37);
  sub_1C0127A14(v17, v7);
  v28 = *(v27 + 48);
  v29 = 0;
  if (v28(v7, 1, v26) != 1)
  {
    v29 = sub_1C014BBB0();
    (*(v27 + 8))(v7, v26);
  }

  sub_1C0127A14(v37, v4);
  if (v28(v4, 1, v26) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_1C014BBB0();
    (*(v27 + 8))(v4, v26);
  }

  v31 = v35;
  v32 = [v36 initWithVideoIdentifier:v35 videoURL:v29 imageIdentifier:v22 imageURL:v30];

  sub_1C00FCBD4(v37);
  sub_1C00FCBD4(v17);
  return v32;
}

uint64_t type metadata accessor for TPSAssetsInfo()
{
  result = qword_1EDD44C38;
  if (!qword_1EDD44C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C0128DE8()
{
  sub_1C0128EB4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1C0128EB4()
{
  if (!qword_1EDD44C78)
  {
    sub_1C014BC50();
    v0 = sub_1C014C640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD44C78);
    }
  }
}

uint64_t sub_1C0128F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *TipsAnalyticsEvent.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v15 = a2;
  v13 = sub_1C014C5A0();
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00]();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_1C014C580() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v8 = *(*(sub_1C014C0D0() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v12[1] = sub_1C010074C(0, &qword_1EDD44B68, 0x1E69E9610);
  sub_1C014C0C0();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EDD44B70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C0129820(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014C700();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v13);
  v9 = sub_1C014C5D0();
  v10 = v15;
  v2[2] = v14;
  v2[3] = v10;
  v2[4] = v9;
  return v2;
}

uint64_t TipsAnalyticsEvent.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_1C012921C()
{
  v1 = sub_1C014C0A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C014C0D0();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 32);
  aBlock[4] = sub_1C01297B8;
  v16 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_5;
  v10 = _Block_copy(aBlock);

  sub_1C014C0B0();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EBE05D10, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C0129820(&qword_1EBE05C68, &qword_1EBE066C0, &unk_1C01576F0);
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t TipsAnalyticsEvent.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TipsAnalyticsEvent.init(identifier:)(a1, a2);
  return v4;
}

void sub_1C0129568(void *a1)
{
  if (qword_1EDD44C28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDD44C30;
  sub_1C014C800();

  aBlock = 0xD000000000000018;
  v15 = 0x80000001C015CFE0;
  swift_beginAccess();
  v3 = a1[2];
  v4 = a1[3];

  MEMORY[0x1C68D6B10](v3, v4);

  v5 = MEMORY[0x1C68D6B10](0x206874697720, 0xE600000000000000);
  (*(*a1 + 128))(v5);
  sub_1C010074C(0, &qword_1EBE05C50, 0x1E69E58C0);
  v6 = sub_1C014C180();
  v8 = v7;

  MEMORY[0x1C68D6B10](v6, v8);

  v9._countAndFlagsBits = 0xD000000000000018;
  aBlock = v2;
  v9._object = 0x80000001C015CFE0;
  TipsLog.debug(_:)(v9);

  v10 = a1[2];
  v11 = a1[3];

  v12 = sub_1C014C200();

  v18 = sub_1C0129A54;
  v19 = a1;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v16 = sub_1C0129874;
  v17 = &block_descriptor_5;
  v13 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v13);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C01297D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C0129820(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C0129874(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1C010074C(0, &qword_1EBE05C50, 0x1E69E58C0);
    v5 = sub_1C014C160();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t TipsAnalyticsEvent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

BOOL static NetworkMonitor.isNetworkError(_:)(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1C014C230();
  v5 = v4;

  v6 = *MEMORY[0x1E696A978];
  if (v3 == sub_1C014C230() && v5 == v7)
  {

    return [a1 code] == -1009;
  }

  v9 = sub_1C014C9F0();

  result = 0;
  if (v9)
  {
    return [a1 code] == -1009;
  }

  return result;
}

uint64_t sub_1C0129B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1C00F99B0(a3, v24 - v10, &qword_1EBE066B8, &qword_1C0156FE0);
  v12 = sub_1C014C490();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C00F98F4(v11, &qword_1EBE066B8, &qword_1C0156FE0);
  }

  else
  {
    sub_1C014C480();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1C014C420();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1C014C2B0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C00F98F4(a3, &qword_1EBE066B8, &qword_1C0156FE0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

unint64_t sub_1C0129DFC()
{
  v0 = type metadata accessor for NetworkMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  v4 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  v5 = sub_1C014C090();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
  result = sub_1C00F9450(MEMORY[0x1E69E7CC0]);
  *(v3 + v6) = result;
  qword_1EDD44A70 = v3;
  return result;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_1EDD44A68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C0129EFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066B8, &qword_1C0156FE0);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v11 - v4;
  if (!*(v0 + 112))
  {
    v6 = sub_1C014C490();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v7;
    v9 = sub_1C0129B50(0, 0, v5, &unk_1C0157380, v8);
    v10 = *(v0 + 112);
    *(v0 + 112) = v9;
  }

  return result;
}

uint64_t sub_1C012A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_1C014C090();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v9 = sub_1C014C000();
  v4[21] = v9;
  v10 = *(v9 - 8);
  v4[22] = v10;
  v11 = *(v10 + 64) + 15;
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012A190, 0, 0);
}

uint64_t sub_1C012A190()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = sub_1C014C020();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1C014C010();
  sub_1C014BFE0();
  swift_beginAccess();
  swift_beginAccess();
  v6 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78]);
  v7 = *(MEMORY[0x1E69E85A8] + 4);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_1C012A2C8;
  v9 = v0[23];
  v10 = v0[20];
  v11 = v0[21];

  return MEMORY[0x1EEE6D8C8](v10, v11, v6);
}

uint64_t sub_1C012A2C8()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1C012A768;
  }

  else
  {
    v3 = sub_1C012A3DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C012A3F8()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[15];
    (*(v0[22] + 8))(v0[23], v0[21]);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[26] = Strong;
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_1C012ACF8;
LABEL_4:

      return MEMORY[0x1EEE6DFA0](v7, v6, 0);
    }

    v12 = v0[23];
    v13 = v0[19];
    v14 = v0[20];
    v15 = v0[18];

    v16 = v0[1];
    goto LABEL_14;
  }

  v8 = v0[15];
  (*(v3 + 32))(v0[18], v1, v2);
  v9 = swift_weakLoadStrong();
  v0[27] = v9;
  if (v9)
  {
    v10 = swift_task_alloc();
    v0[28] = v10;
    *v10 = v0;
    v10[1] = sub_1C012A7F4;
    v11 = v0[18];

    return sub_1C012DC24(v11);
  }

  else
  {
    v17 = v0[25];
    sub_1C014C4C0();
    if (v17)
    {
      v19 = v0[22];
      v18 = v0[23];
      v21 = v0[20];
      v20 = v0[21];
      v22 = v0[19];
      (*(v0[17] + 8))(v0[18], v0[16]);
      (*(v19 + 8))(v18, v20);

      v16 = v0[1];
LABEL_14:

      return v16();
    }

    v23 = v0[15];
    v24 = swift_weakLoadStrong();
    v0[29] = v24;
    if (v24)
    {
      v6 = v24;
      v7 = sub_1C012AB14;
      goto LABEL_4;
    }

    (*(v0[17] + 8))(v0[18], v0[16]);
    v25 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78]);
    v26 = *(MEMORY[0x1E69E85A8] + 4);
    v27 = swift_task_alloc();
    v0[24] = v27;
    *v27 = v0;
    v27[1] = sub_1C012A2C8;
    v28 = v0[23];
    v29 = v0[20];
    v30 = v0[21];

    return MEMORY[0x1EEE6D8C8](v29, v30, v25);
  }
}

uint64_t sub_1C012A768()
{
  *(v0 + 112) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1C012A7F4()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C012A90C, 0, 0);
}

uint64_t sub_1C012A90C()
{
  v1 = v0[25];
  sub_1C014C4C0();
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v3 + 8))(v2, v4);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[15];
    Strong = swift_weakLoadStrong();
    v0[29] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1C012AB14, Strong, 0);
    }

    else
    {
      (*(v0[17] + 8))(v0[18], v0[16]);
      v11 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78]);
      v12 = *(MEMORY[0x1E69E85A8] + 4);
      v13 = swift_task_alloc();
      v0[24] = v13;
      *v13 = v0;
      v13[1] = sub_1C012A2C8;
      v14 = v0[23];
      v15 = v0[20];
      v16 = v0[21];

      return MEMORY[0x1EEE6D8C8](v15, v16, v11);
    }
  }
}

uint64_t sub_1C012AB14()
{
  v1 = v0[29];
  if (*(v1 + 112))
  {
    (*(v0[17] + 16))(v0[19], v0[18], v0[16]);
    v2 = 0;
    v1 = v0[29];
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[19];
  (*(v0[17] + 56))(v3, v2, 1, v0[16]);
  v4 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C012AF98(v3, v1 + v4);
  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1C012AC08, 0, 0);
}

uint64_t sub_1C012AC08()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = sub_1C0130B18(&qword_1EBE06A00, MEMORY[0x1E6977C78]);
  v2 = *(MEMORY[0x1E69E85A8] + 4);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1C012A2C8;
  v4 = v0[23];
  v5 = v0[20];
  v6 = v0[21];

  return MEMORY[0x1EEE6D8C8](v5, v6, v1);
}

uint64_t sub_1C012ACF8()
{
  v1 = v0[26];
  v2 = *(v1 + 112);
  *(v1 + 112) = 0;

  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = v0[18];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1C012AD9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C0103EAC;

  return sub_1C012A030(a1, v4, v5, v6);
}

uint64_t sub_1C012AE50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10 - v3;
  v5 = sub_1C014C090();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C012AF98(v4, v0 + v6);
  swift_endAccess();
  if (*(v0 + 112))
  {
    v7 = *(v0 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    sub_1C014C4A0();

    v8 = *(v0 + 112);
  }

  *(v0 + 112) = 0;
}

uint64_t sub_1C012AF98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

BOOL static NetworkMonitor.isContentError(_:)(void *a1)
{
  v2 = [a1 domain];
  v3 = sub_1C014C230();
  v5 = v4;

  if (v3 == sub_1C014C230() && v5 == v6)
  {

    return [a1 code] == 404;
  }

  v8 = sub_1C014C9F0();

  result = 0;
  if (v8)
  {
    return [a1 code] == 404;
  }

  return result;
}

uint64_t static NetworkMonitor.isInternalVPNError(_:)(void *a1)
{
  v2 = sub_1C014BC50();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [a1 userInfo];
  v8 = sub_1C014C170();

  v9 = *MEMORY[0x1E696A980];
  v10 = sub_1C014C230();
  if (!*(v8 + 16))
  {

    goto LABEL_8;
  }

  v12 = sub_1C012EBF4(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_1C00FC1C0(*(v8 + 56) + 32 * v12, v27);

  if (swift_dynamicCast())
  {
    v15 = [a1 domain];
    v16 = sub_1C014C230();
    v18 = v17;

    v19 = *MEMORY[0x1E696A978];
    if (v16 == sub_1C014C230() && v18 == v20)
    {

      goto LABEL_12;
    }

    v23 = sub_1C014C9F0();

    if (v23)
    {
LABEL_12:
      if ([a1 code] == -1003)
      {
        v24 = [objc_opt_self() defaultHost];
        sub_1C014BBC0();

        sub_1C014BBA0();
        (*(v3 + 8))(v6, v2);
        v25 = sub_1C014C360();

        v21 = v25 ^ 1;
        return v21 & 1;
      }

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C012B3BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE068A0, &qword_1C0156FD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v22 - v12;
  sub_1C00F99B0(a1, &v22 - v12, &unk_1EBE068A0, &qword_1C0156FD8);
  v14 = sub_1C014BD80();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  if (v16(v13, 1, v14) == 1)
  {
    sub_1C014BD70();
    if (v16(v13, 1, v14) != 1)
    {
      sub_1C00F98F4(v13, &unk_1EBE068A0, &qword_1C0156FD8);
    }
  }

  else
  {
    (*(v15 + 32))(a4, v13, v14);
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
  swift_beginAccess();

  v19 = *(v5 + v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *(v5 + v18);
  *(v5 + v18) = 0x8000000000000000;
  sub_1C00F88D8(sub_1C012EC6C, v17, a4, isUniquelyReferenced_nonNull_native);
  *(v5 + v18) = v22;
  return swift_endAccess();
}

uint64_t sub_1C012B5C8(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = sub_1C012ECDC(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *(v2 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + v4);
    *(v2 + v4) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C012FC10();
    }

    v12 = *(v11 + 48);
    v13 = sub_1C014BD80();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(*(v11 + 56) + 16 * v8 + 8);

    sub_1C012EF24(v8, v11);
    *(v2 + v4) = v11;
  }

  return swift_endAccess();
}

uint64_t sub_1C012B6C8()
{
  v1[5] = v0;
  v2 = sub_1C014C070();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D8, &qword_1C0157398);
  v1[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = sub_1C014C000();
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069E0, qword_1C01573A0) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012B8B4, v0, 0);
}

uint64_t sub_1C012B8B4()
{
  v1 = v0[14];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[19] = v4;
  v5 = *(v4 - 8);
  v0[20] = v5;
  v6 = *(v5 + 48);
  v0[21] = v6;
  v0[22] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    v8 = v0[13];
    v9 = sub_1C014C020();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v12 = *(MEMORY[0x1E6977C70] + 4);
    v13 = swift_task_alloc();
    v0[23] = v13;
    *v13 = v0;
    v13[1] = sub_1C012BE60;
    v14 = v0[15];
    v15 = v0[13];

    return MEMORY[0x1EEDD2800](v14);
  }

  sub_1C00F99B0(v2 + v3, v0[15], &qword_1EBE069D0, &unk_1C0157388);
  v16 = v0[22];
  v17 = v0[19];
  v18 = v0[15];
  if ((v0[21])(v18, 1, v17) == 1)
  {
    sub_1C00F98F4(v18, &qword_1EBE069D0, &unk_1C0157388);
    v19 = 1;
  }

  else
  {
    v20 = v0[20];
    v21 = v0[18];
    sub_1C014C080();
    (*(v20 + 8))(v18, v17);
    v19 = 0;
  }

  v23 = v0[17];
  v22 = v0[18];
  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[6];
  v27 = v0[7];
  v28 = *(v27 + 56);
  v28(v22, v19, 1, v26);
  (*(v27 + 104))(v23, *MEMORY[0x1E6977D40], v26);
  v28(v23, 0, 1, v26);
  v29 = *(v25 + 48);
  sub_1C00F99B0(v22, v24, &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F99B0(v23, v24 + v29, &qword_1EBE069E0, qword_1C01573A0);
  v30 = *(v27 + 48);
  if (v30(v24, 1, v26) != 1)
  {
    v34 = v0[6];
    sub_1C00F99B0(v0[10], v0[16], &qword_1EBE069E0, qword_1C01573A0);
    v35 = v30(v24 + v29, 1, v34);
    v37 = v0[17];
    v36 = v0[18];
    v38 = v0[16];
    if (v35 != 1)
    {
      v55 = v0[10];
      v42 = v0[7];
      v41 = v0[8];
      v43 = v0[6];
      (*(v42 + 32))(v41, v24 + v29, v43);
      sub_1C0130B18(&qword_1EBE069E8, MEMORY[0x1E6977D48]);
      v33 = sub_1C014C1D0();
      v44 = *(v42 + 8);
      v44(v41, v43);
      sub_1C00F98F4(v37, &qword_1EBE069E0, qword_1C01573A0);
      sub_1C00F98F4(v36, &qword_1EBE069E0, qword_1C01573A0);
      v44(v38, v43);
      sub_1C00F98F4(v55, &qword_1EBE069E0, qword_1C01573A0);
      goto LABEL_15;
    }

    v39 = v0[6];
    v40 = v0[7];
    sub_1C00F98F4(v0[17], &qword_1EBE069E0, qword_1C01573A0);
    sub_1C00F98F4(v36, &qword_1EBE069E0, qword_1C01573A0);
    (*(v40 + 8))(v38, v39);
    goto LABEL_13;
  }

  v31 = v0[18];
  v32 = v0[6];
  sub_1C00F98F4(v0[17], &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F98F4(v31, &qword_1EBE069E0, qword_1C01573A0);
  if (v30(v24 + v29, 1, v32) != 1)
  {
LABEL_13:
    sub_1C00F98F4(v0[10], &qword_1EBE069D8, &qword_1C0157398);
    v33 = 0;
    goto LABEL_15;
  }

  sub_1C00F98F4(v0[10], &qword_1EBE069E0, qword_1C01573A0);
  v33 = 1;
LABEL_15:
  v46 = v0[17];
  v45 = v0[18];
  v48 = v0[15];
  v47 = v0[16];
  v50 = v0[13];
  v49 = v0[14];
  v51 = v0[10];
  v52 = v0[8];

  v53 = v0[1];

  return v53(v33 & 1);
}

uint64_t sub_1C012BE60()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C012BF70, v2, 0);
}

uint64_t sub_1C012BF70()
{
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 120);
  if ((*(v0 + 168))(v3, 1, v2) == 1)
  {
    sub_1C00F98F4(v3, &qword_1EBE069D0, &unk_1C0157388);
    v4 = 1;
  }

  else
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    sub_1C014C080();
    (*(v5 + 8))(v3, v2);
    v4 = 0;
  }

  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  v11 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v12 + 56);
  v13(v7, v4, 1, v11);
  (*(v12 + 104))(v8, *MEMORY[0x1E6977D40], v11);
  v13(v8, 0, 1, v11);
  v14 = *(v10 + 48);
  sub_1C00F99B0(v7, v9, &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F99B0(v8, v9 + v14, &qword_1EBE069E0, qword_1C01573A0);
  v15 = *(v12 + 48);
  if (v15(v9, 1, v11) == 1)
  {
    v16 = *(v0 + 144);
    v17 = *(v0 + 48);
    sub_1C00F98F4(*(v0 + 136), &qword_1EBE069E0, qword_1C01573A0);
    sub_1C00F98F4(v16, &qword_1EBE069E0, qword_1C01573A0);
    if (v15(v9 + v14, 1, v17) == 1)
    {
      sub_1C00F98F4(*(v0 + 80), &qword_1EBE069E0, qword_1C01573A0);
      v18 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v19 = *(v0 + 48);
  sub_1C00F99B0(*(v0 + 80), *(v0 + 128), &qword_1EBE069E0, qword_1C01573A0);
  v20 = v15(v9 + v14, 1, v19);
  v22 = *(v0 + 136);
  v21 = *(v0 + 144);
  v23 = *(v0 + 128);
  if (v20 == 1)
  {
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);
    sub_1C00F98F4(*(v0 + 136), &qword_1EBE069E0, qword_1C01573A0);
    sub_1C00F98F4(v21, &qword_1EBE069E0, qword_1C01573A0);
    (*(v25 + 8))(v23, v24);
LABEL_9:
    sub_1C00F98F4(*(v0 + 80), &qword_1EBE069D8, &qword_1C0157398);
    v18 = 0;
    goto LABEL_11;
  }

  v40 = *(v0 + 80);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  v28 = *(v0 + 48);
  (*(v27 + 32))(v26, v9 + v14, v28);
  sub_1C0130B18(&qword_1EBE069E8, MEMORY[0x1E6977D48]);
  v18 = sub_1C014C1D0();
  v29 = *(v27 + 8);
  v29(v26, v28);
  sub_1C00F98F4(v22, &qword_1EBE069E0, qword_1C01573A0);
  sub_1C00F98F4(v21, &qword_1EBE069E0, qword_1C01573A0);
  v29(v23, v28);
  sub_1C00F98F4(v40, &qword_1EBE069E0, qword_1C01573A0);
LABEL_11:
  v31 = *(v0 + 136);
  v30 = *(v0 + 144);
  v33 = *(v0 + 120);
  v32 = *(v0 + 128);
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);
  v36 = *(v0 + 80);
  v37 = *(v0 + 64);

  v38 = *(v0 + 8);

  return v38(v18 & 1);
}

uint64_t sub_1C012C3A4()
{
  v1[5] = v0;
  v2 = sub_1C014C000();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012C4A8, v0, 0);
}

uint64_t sub_1C012C4A8()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 48);
  v0[13] = v6;
  v0[14] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    v8 = v0[8];
    v9 = sub_1C014C020();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v12 = *(MEMORY[0x1E6977C70] + 4);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_1C012C720;
    v14 = v0[10];
    v15 = v0[8];

    return MEMORY[0x1EEDD2800](v14);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[10], &qword_1EBE069D0, &unk_1C0157388);
    v16 = v0[14];
    v18 = v0[10];
    v17 = v0[11];
    if ((v0[13])(v18, 1, v17) == 1)
    {
      sub_1C00F98F4(v18, &qword_1EBE069D0, &unk_1C0157388);
      v19 = 2;
    }

    else
    {
      v20 = v0[12];
      v21 = sub_1C014C040();
      (*(v20 + 8))(v18, v17);
      v19 = v21 & 1;
    }

    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];

    v25 = v0[1];

    return v25(v19);
  }
}

uint64_t sub_1C012C720()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C012C830, v2, 0);
}

uint64_t sub_1C012C830()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  if ((*(v0 + 104))(v3, 1, v2) == 1)
  {
    sub_1C00F98F4(v3, &qword_1EBE069D0, &unk_1C0157388);
    v4 = 2;
  }

  else
  {
    v5 = *(v0 + 96);
    v6 = sub_1C014C040();
    (*(v5 + 8))(v3, v2);
    v4 = v6 & 1;
  }

  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10(v4);
}

uint64_t sub_1C012C930()
{
  v1[5] = v0;
  v2 = sub_1C014C000();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012CA34, v0, 0);
}

uint64_t sub_1C012CA34()
{
  v1 = v0[9];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[11] = v4;
  v5 = *(v4 - 8);
  v0[12] = v5;
  v6 = *(v5 + 48);
  v0[13] = v6;
  v0[14] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    v8 = v0[8];
    v9 = sub_1C014C020();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v12 = *(MEMORY[0x1E6977C70] + 4);
    v13 = swift_task_alloc();
    v0[15] = v13;
    *v13 = v0;
    v13[1] = sub_1C012CCAC;
    v14 = v0[10];
    v15 = v0[8];

    return MEMORY[0x1EEDD2800](v14);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[10], &qword_1EBE069D0, &unk_1C0157388);
    v16 = v0[14];
    v18 = v0[10];
    v17 = v0[11];
    if ((v0[13])(v18, 1, v17) == 1)
    {
      sub_1C00F98F4(v18, &qword_1EBE069D0, &unk_1C0157388);
      v19 = 2;
    }

    else
    {
      v20 = v0[12];
      v21 = sub_1C014C030();
      (*(v20 + 8))(v18, v17);
      v19 = v21 & 1;
    }

    v23 = v0[9];
    v22 = v0[10];
    v24 = v0[8];

    v25 = v0[1];

    return v25(v19);
  }
}

uint64_t sub_1C012CCAC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C012CDBC, v2, 0);
}

uint64_t sub_1C012CDBC()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  if ((*(v0 + 104))(v3, 1, v2) == 1)
  {
    sub_1C00F98F4(v3, &qword_1EBE069D0, &unk_1C0157388);
    v4 = 2;
  }

  else
  {
    v5 = *(v0 + 96);
    v6 = sub_1C014C030();
    (*(v5 + 8))(v3, v2);
    v4 = v6 & 1;
  }

  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v0 + 64);

  v10 = *(v0 + 8);

  return v10(v4);
}

uint64_t sub_1C012CEBC()
{
  v1[5] = v0;
  v2 = sub_1C014BFD0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_1C014C000();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012D01C, v0, 0);
}

uint64_t sub_1C012D01C()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  v6 = *(v5 + 48);
  v0[16] = v6;
  v0[17] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    v8 = v0[11];
    v9 = sub_1C014C020();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v12 = *(MEMORY[0x1E6977C70] + 4);
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_1C012D2F8;
    v14 = v0[13];
    v15 = v0[11];

    return MEMORY[0x1EEDD2800](v14);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[13], &qword_1EBE069D0, &unk_1C0157388);
    v16 = v0[17];
    v18 = v0[13];
    v17 = v0[14];
    if ((v0[16])(v18, 1, v17) == 1)
    {
      sub_1C00F98F4(v18, &qword_1EBE069D0, &unk_1C0157388);
      v19 = 2;
    }

    else
    {
      v20 = v0[15];
      v22 = v0[7];
      v21 = v0[8];
      v23 = v0[6];
      (*(v22 + 104))(v21, *MEMORY[0x1E6977B50], v23);
      v24 = sub_1C014C050();
      (*(v22 + 8))(v21, v23);
      (*(v20 + 8))(v18, v17);
      v19 = v24 & 1;
    }

    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[11];
    v28 = v0[8];

    v29 = v0[1];

    return v29(v19);
  }
}

uint64_t sub_1C012D2F8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C012D408, v2, 0);
}

uint64_t sub_1C012D408()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  if ((*(v0 + 128))(v3, 1, v2) == 1)
  {
    sub_1C00F98F4(v3, &qword_1EBE069D0, &unk_1C0157388);
    v4 = 2;
  }

  else
  {
    v5 = *(v0 + 120);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    (*(v7 + 104))(v6, *MEMORY[0x1E6977B50], v8);
    v9 = sub_1C014C050();
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v3, v2);
    v4 = v9 & 1;
  }

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14(v4);
}

uint64_t sub_1C012D570()
{
  v1[5] = v0;
  v2 = sub_1C014BFD0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_1C014C000();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012D6D0, v0, 0);
}

uint64_t sub_1C012D6D0()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  v6 = *(v5 + 48);
  v0[16] = v6;
  v0[17] = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    v8 = v0[11];
    v9 = sub_1C014C020();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    swift_allocObject();
    sub_1C014C010();
    sub_1C014BFE0();
    v12 = *(MEMORY[0x1E6977C70] + 4);
    v13 = swift_task_alloc();
    v0[18] = v13;
    *v13 = v0;
    v13[1] = sub_1C012D9AC;
    v14 = v0[13];
    v15 = v0[11];

    return MEMORY[0x1EEDD2800](v14);
  }

  else
  {
    sub_1C00F99B0(v2 + v3, v0[13], &qword_1EBE069D0, &unk_1C0157388);
    v16 = v0[17];
    v18 = v0[13];
    v17 = v0[14];
    if ((v0[16])(v18, 1, v17) == 1)
    {
      sub_1C00F98F4(v18, &qword_1EBE069D0, &unk_1C0157388);
      v19 = 2;
    }

    else
    {
      v20 = v0[15];
      v22 = v0[7];
      v21 = v0[8];
      v23 = v0[6];
      (*(v22 + 104))(v21, *MEMORY[0x1E6977B40], v23);
      v24 = sub_1C014C050();
      (*(v22 + 8))(v21, v23);
      (*(v20 + 8))(v18, v17);
      v19 = v24 & 1;
    }

    v26 = v0[12];
    v25 = v0[13];
    v27 = v0[11];
    v28 = v0[8];

    v29 = v0[1];

    return v29(v19);
  }
}

uint64_t sub_1C012D9AC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1C012DABC, v2, 0);
}

uint64_t sub_1C012DABC()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v1 = *(v0 + 136);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  if ((*(v0 + 128))(v3, 1, v2) == 1)
  {
    sub_1C00F98F4(v3, &qword_1EBE069D0, &unk_1C0157388);
    v4 = 2;
  }

  else
  {
    v5 = *(v0 + 120);
    v7 = *(v0 + 56);
    v6 = *(v0 + 64);
    v8 = *(v0 + 48);
    (*(v7 + 104))(v6, *MEMORY[0x1E6977B40], v8);
    v9 = sub_1C014C050();
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v3, v2);
    v4 = v9 & 1;
  }

  v11 = *(v0 + 96);
  v10 = *(v0 + 104);
  v12 = *(v0 + 88);
  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14(v4);
}

uint64_t sub_1C012DC24(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069F0, &qword_1C0157480);
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_1C014BD80();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069F8, &unk_1C0157488) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v10 = sub_1C014C070();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069D0, &unk_1C0157388) - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C012DE48, v1, 0);
}

uint64_t sub_1C012DE48()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 88);
  v3 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath;
  swift_beginAccess();
  sub_1C00F99B0(v2 + v3, v1, &qword_1EBE069D0, &unk_1C0157388);
  v4 = sub_1C014C090();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  sub_1C00F98F4(v1, &qword_1EBE069D0, &unk_1C0157388);
  if (v7 == 1)
  {
    goto LABEL_4;
  }

  v8 = *(v0 + 208);
  sub_1C00F99B0(v2 + v3, v8, &qword_1EBE069D0, &unk_1C0157388);
  v9 = v6(v8, 1, v4);
  if (v9 == 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  v13 = *(v0 + 200);
  v12 = *(v0 + 208);
  v15 = *(v0 + 184);
  v14 = *(v0 + 192);
  v16 = *(v0 + 176);
  v17 = *(v0 + 80);
  sub_1C014C080();
  (*(v5 + 8))(v12, v4);
  sub_1C014C080();
  sub_1C0130B18(&qword_1EBE069E8, MEMORY[0x1E6977D48]);
  LOBYTE(v12) = sub_1C014C1D0();
  v18 = *(v15 + 8);
  v18(v14, v16);
  v18(v13, v16);
  if ((v12 & 1) == 0)
  {
LABEL_4:
    if (qword_1EDD44C50 != -1)
    {
      swift_once();
    }

    v19 = *(v0 + 200);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    v22 = *(v0 + 80);
    v23 = *(v0 + 88);
    sub_1C014C800();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x1C68D6B10](0xD000000000000020, 0x80000001C015D080);
    sub_1C014C080();
    sub_1C014C8B0();
    v24 = *(v21 + 8);
    *(v0 + 224) = v24;
    *(v0 + 232) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v19, v20);
    TipsLog.log(_:)(*(v0 + 64));

    v25 = OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers;
    swift_beginAccess();
    v26 = *(v23 + v25);
    *(v0 + 240) = v26;
    v27 = *(v26 + 32);
    *(v0 + 292) = v27;
    v28 = -1;
    v29 = -1 << v27;
    if (-(-1 << v27) < 64)
    {
      v28 = ~(-1 << -(-1 << v27));
    }

    v30 = v28 & *(v26 + 64);
    *(v0 + 288) = *MEMORY[0x1E6977D40];

    if (v30)
    {
      v31 = 0;
LABEL_13:
      v35 = *(v0 + 144);
      v34 = *(v0 + 152);
      v36 = *(v0 + 128);
      v37 = *(v0 + 136);
      v38 = *(v0 + 96);
      v73 = *(v0 + 104);
      v74 = (v30 - 1) & v30;
      v39 = __clz(__rbit64(v30)) | (v31 << 6);
      (*(v37 + 16))(v35, *(v26 + 48) + *(v37 + 72) * v39, v36);
      v40 = *(v26 + 56);
      v41 = *(v38 + 48);
      v75 = *(v40 + 16 * v39);
      (*(v37 + 32))(v34, v35, v36);
      *(v34 + v41) = v75;
      (*(v73 + 56))(v34, 0, 1, v38);

      v42 = v74;
      v33 = v31;
    }

    else
    {
      v32 = 0;
      v33 = ((63 - v29) >> 6) - 1;
      while (v33 != v32)
      {
        v31 = v32 + 1;
        v30 = *(v26 + 72 + 8 * v32++);
        if (v30)
        {
          goto LABEL_13;
        }
      }

      v72 = *(v0 + 96);
      (*(*(v0 + 104) + 56))(*(v0 + 152), 1, 1);
      v42 = 0;
    }

    *(v0 + 248) = v42;
    *(v0 + 256) = v33;
    v43 = *(v0 + 152);
    v44 = *(v0 + 96);
    v45 = 1;
    if ((*(*(v0 + 104) + 48))(v43, 1, v44) != 1)
    {
      v46 = *(v0 + 160);
      v47 = *(v0 + 128);
      v48 = *(v0 + 120);
      v49 = *(v44 + 48);
      v50 = *(*(v0 + 136) + 32);
      v50(v48, v43, v47);
      v51 = swift_allocObject();
      *(v51 + 16) = *(v43 + v49);
      v52 = (v46 + *(v44 + 48));
      v50(v46, v48, v47);
      v45 = 0;
      *v52 = sub_1C0130A84;
      v52[1] = v51;
      v44 = *(v0 + 96);
    }

    v54 = *(v0 + 160);
    v53 = *(v0 + 168);
    v55 = *(v0 + 112);
    (*(v55 + 56))(v54, v45, 1, v44);
    sub_1C0130A14(v54, v53);
    if ((*(v55 + 48))(v53, 1, v44) == 1)
    {
      v56 = *(v0 + 240);

      goto LABEL_18;
    }

    v68 = (*(v0 + 168) + *(*(v0 + 96) + 48));
    *(v0 + 264) = *v68;
    *(v0 + 272) = v68[1];
    sub_1C014C470();
    *(v0 + 280) = sub_1C014C460();
    v69 = sub_1C014C420();
    v71 = v70;
    v9 = sub_1C012E534;
    v10 = v69;
    v11 = v71;

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

LABEL_18:
  v58 = *(v0 + 208);
  v57 = *(v0 + 216);
  v60 = *(v0 + 192);
  v59 = *(v0 + 200);
  v62 = *(v0 + 160);
  v61 = *(v0 + 168);
  v64 = *(v0 + 144);
  v63 = *(v0 + 152);
  v65 = *(v0 + 120);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1C012E534()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  v10 = *(v0 + 80);
  v12 = *(v0 + 264);
  v13 = *(v0 + 88);

  sub_1C014C080();
  (*(v9 + 104))(v7, v3, v8);
  LOBYTE(v10) = sub_1C014C060();
  v4(v7, v8);
  v4(v6, v8);
  v12(v10 & 1);

  return MEMORY[0x1EEE6DFA0](sub_1C012E638, v13, 0);
}

uint64_t sub_1C012E638()
{
  v1 = *(v0 + 272);
  (*(*(v0 + 136) + 8))(*(v0 + 168), *(v0 + 128));

  v5 = *(v0 + 248);
  v6 = *(v0 + 256);
  if (!v5)
  {
    v8 = ((1 << *(v0 + 292)) + 63) >> 6;
    if (v8 <= (v6 + 1))
    {
      v9 = v6 + 1;
    }

    else
    {
      v9 = ((1 << *(v0 + 292)) + 63) >> 6;
    }

    v10 = v9 - 1;
    while (1)
    {
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        v50 = *(v0 + 96);
        (*(*(v0 + 104) + 56))(*(v0 + 152), 1, 1);
        v20 = 0;
        goto LABEL_12;
      }

      v7 = *(v0 + 240);
      v5 = *(v7 + 8 * v11 + 64);
      ++v6;
      if (v5)
      {
        v6 = v11;
        goto LABEL_11;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v7 = *(v0 + 240);
LABEL_11:
  v12 = *(v0 + 144);
  v13 = *(v0 + 152);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);
  v16 = *(v0 + 96);
  v51 = *(v0 + 104);
  v52 = (v5 - 1) & v5;
  v17 = __clz(__rbit64(v5)) | (v6 << 6);
  (*(v15 + 16))(v12, *(v7 + 48) + *(v15 + 72) * v17, v14);
  v18 = *(v7 + 56);
  v19 = *(v16 + 48);
  v53 = *(v18 + 16 * v17);
  (*(v15 + 32))(v13, v12, v14);
  *(v13 + v19) = v53;
  (*(v51 + 56))(v13, 0, 1, v16);

  v20 = v52;
  v10 = v6;
LABEL_12:
  *(v0 + 248) = v20;
  *(v0 + 256) = v10;
  v21 = *(v0 + 152);
  v22 = *(v0 + 96);
  v23 = 1;
  if ((*(*(v0 + 104) + 48))(v21, 1, v22) != 1)
  {
    v24 = *(v0 + 160);
    v25 = *(v0 + 128);
    v26 = *(v0 + 120);
    v27 = *(v22 + 48);
    v28 = *(*(v0 + 136) + 32);
    v28(v26, v21, v25);
    v29 = swift_allocObject();
    *(v29 + 16) = *(v21 + v27);
    v30 = (v24 + *(v22 + 48));
    v28(v24, v26, v25);
    v23 = 0;
    *v30 = sub_1C0130A84;
    v30[1] = v29;
    v22 = *(v0 + 96);
  }

  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v33 = *(v0 + 112);
  (*(v33 + 56))(v32, v23, 1, v22);
  sub_1C0130A14(v32, v31);
  if ((*(v33 + 48))(v31, 1, v22) != 1)
  {
    v46 = (*(v0 + 168) + *(*(v0 + 96) + 48));
    *(v0 + 264) = *v46;
    *(v0 + 272) = v46[1];
    sub_1C014C470();
    *(v0 + 280) = sub_1C014C460();
    v47 = sub_1C014C420();
    v49 = v48;
    v2 = sub_1C012E534;
    v3 = v47;
    v4 = v49;

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  v34 = *(v0 + 240);

  v36 = *(v0 + 208);
  v35 = *(v0 + 216);
  v38 = *(v0 + 192);
  v37 = *(v0 + 200);
  v40 = *(v0 + 160);
  v39 = *(v0 + 168);
  v42 = *(v0 + 144);
  v41 = *(v0 + 152);
  v43 = *(v0 + 120);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t NetworkMonitor.deinit()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    sub_1C014C4A0();

    v2 = *(v0 + 112);
  }

  sub_1C00F98F4(v0 + OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath, &qword_1EBE069D0, &unk_1C0157388);
  v3 = *(v0 + OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06808, &unk_1C0156A20);
    sub_1C014C4A0();

    v2 = *(v0 + 112);
  }

  sub_1C00F98F4(v0 + OBJC_IVAR____TtC8TipsCore14NetworkMonitor_lastNetworkPath, &qword_1EBE069D0, &unk_1C0157388);
  v3 = *(v0 + OBJC_IVAR____TtC8TipsCore14NetworkMonitor_observers);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1C012EBF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C014CAE0();
  sub_1C014C2E0();
  v6 = sub_1C014CB10();

  return sub_1C012F5B0(a1, a2, v6);
}

uint64_t sub_1C012EC6C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

unint64_t sub_1C012EC98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_1C014C780();

  return sub_1C012F668(a1, v5);
}

unint64_t sub_1C012ECDC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1C014BD80();
  sub_1C0130B18(&qword_1EBE05D20, MEMORY[0x1E69695A8]);
  v5 = sub_1C014C1A0();

  return sub_1C012F730(a1, v5);
}

uint64_t sub_1C012ED74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C014C720() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1C014CAE0();

      sub_1C014C2E0();
      v14 = sub_1C014CB10();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C012EF24(int64_t a1, uint64_t a2)
{
  v43 = sub_1C014BD80();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_1C014C720();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1C0130B18(&qword_1EBE05D20, MEMORY[0x1E69695A8]);
      v26 = sub_1C014C1A0();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_1C012F244(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C014C720() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1C014CAE0();

      sub_1C014C2E0();
      v15 = sub_1C014CB10();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1C012F400(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1C014C720() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1C014CAE0();

      sub_1C014C2E0();
      v13 = sub_1C014CB10();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1C012F5B0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C014C9F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C012F668(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C0130ABC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1C68D6FA0](v9, a1);
      sub_1C00FC104(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C012F730(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1C014BD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1C0130B18(&qword_1EBE05D18, MEMORY[0x1E69695A8]);
      v16 = sub_1C014C1D0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_1C012F904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06498, &qword_1C0155FA8);
  v2 = *v0;
  v3 = sub_1C014C8F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C00FC1C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C00F9954(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1C012FAA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE063E8, &qword_1C0155F58);
  v2 = *v0;
  v3 = sub_1C014C8F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1C012FC10()
{
  v1 = v0;
  v31 = sub_1C014BD80();
  v33 = *(v31 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06488, &qword_1C0155F98);
  v4 = *v0;
  v5 = sub_1C014C8F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v29 = v33 + 16;
    v27 = v4 + 64;
    for (i = v33 + 32; v13; result = )
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v33;
      v20 = *(v33 + 72) * v18;
      v21 = v30;
      v22 = v31;
      (*(v33 + 16))(v30, *(v4 + 48) + v20, v31);
      v18 *= 16;
      v23 = v32;
      v24 = *(v32 + 48);
      v25 = *(v19 + 32);
      v34 = *(*(v4 + 56) + v18);
      v25(v24 + v20, v21, v22);
      *(*(v23 + 56) + v18) = v34;
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

        v1 = v26;
        v6 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_1EDD44A48;
  if (!qword_1EDD44A48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C012FEE4()
{
  sub_1C0130690();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of NetworkMonitor.isNetworkReachable.getter()
{
  v2 = *(*v0 + 224);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C013014C;

  return v6();
}

uint64_t sub_1C013014C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of NetworkMonitor.isNetworkConstrained.getter()
{
  v2 = *(*v0 + 232);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C013014C;

  return v6();
}

uint64_t dispatch thunk of NetworkMonitor.isNetworkExpensive.getter()
{
  v2 = *(*v0 + 240);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0130B60;

  return v6();
}

uint64_t dispatch thunk of NetworkMonitor.usesCellularConnection.getter()
{
  v2 = *(*v0 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0130B60;

  return v6();
}

uint64_t dispatch thunk of NetworkMonitor.usesWifiConnection.getter()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C0130B60;

  return v6();
}

void sub_1C0130690()
{
  if (!qword_1EDD44AD8)
  {
    sub_1C014C090();
    v0 = sub_1C014C640();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD44AD8);
    }
  }
}

void *sub_1C01306FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06468, &qword_1C0155F78);
  v2 = *v0;
  v3 = sub_1C014C8F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1C0107D00(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C00F98DC(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1C01308B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1C014C8F0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1C0130A14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE069F8, &unk_1C0157488);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0130A84(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1C0130B18(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1C0130D58(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C014C200();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1C014BB70();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1C0130E34(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t AssistantSupportClient.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C014CAE0();
  MEMORY[0x1C68D7300](v1);
  return sub_1C014CB10();
}

uint64_t AssistantSupportClient.__allocating_init()()
{
  v0 = swift_allocObject();
  AssistantSupportClient.init()();
  return v0;
}

uint64_t AssistantSupportClient.init()()
{
  v1 = v0;
  v2 = sub_1C014C580();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v4 = sub_1C014C0D0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1C014C5A0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0111504();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  sub_1C014C0B0();
  v17[1] = MEMORY[0x1E69E7CC0];
  sub_1C0111550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C01115A8();
  sub_1C014C700();
  *(v0 + 16) = sub_1C014C5D0();
  v11 = objc_allocWithZone(TPSServiceConnection);
  v12 = sub_1C014C200();
  v13 = [v11 initWithServiceName_];

  *(v1 + 24) = v13;
  v14 = v13;
  v15 = _sSo14NSXPCInterfaceC8TipsCoreE25assistantSupportInterfaceABvgZ_0();
  [v14 setRemoteInterfaceInstance_];

  return v1;
}

uint64_t AssistantSupportClient.findMatchingResultId(from:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C013120C, 0, 0);
}

uint64_t sub_1C013120C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = sub_1C01333F0;
  v4[4] = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A08, &qword_1C01574A0);
  *v6 = v0;
  v6[1] = sub_1C013133C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001C015D0F0, sub_1C01333F8, v4, v7);
}

uint64_t sub_1C013133C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C01314B0, 0, 0);
  }

  else
  {
    v5 = v4[6];
    v7 = v4[2];
    v6 = v4[3];

    v8 = v4[1];

    return v8(v7, v6);
  }
}

uint64_t sub_1C01314B0()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_1C0131514(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  type metadata accessor for ResultContext();
  v9 = sub_1C014C3B0();
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1C0133814;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0131770;
  aBlock[3] = &block_descriptor_56;
  v12 = _Block_copy(aBlock);

  [a1 findMatchingResultIdFromContexts:v9 reply:v12];
  _Block_release(v12);
}

uint64_t sub_1C01316E8(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
    return sub_1C014C430();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
    return sub_1C014C440();
  }
}

uint64_t sub_1C0131770(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1C014C230();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_1C0131828()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  v2[2] = v1;
  v2[3] = sub_1C0131ABC;
  v2[4] = 0;
  v3 = *(MEMORY[0x1E69E8920] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE067C0, &qword_1C0157160);
  *v4 = v0;
  v4[1] = sub_1C0131944;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001FLL, 0x80000001C015D110, sub_1C0133404, v2, v5);
}

uint64_t sub_1C0131944()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C0131AA4, 0, 0);
  }

  else
  {
    v5 = v4[2];
    v6 = v4[1];

    return v6(v5);
  }
}

void sub_1C0131ABC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_1C0133700;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C013A22C;
  aBlock[3] = &block_descriptor_44;
  v11 = _Block_copy(aBlock);

  [a1 availableUserGuideIdentifiersWithReply_];
  _Block_release(v11);
}

uint64_t sub_1C0131C6C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);
  return sub_1C014C440();
}

uint64_t AssistantSupportClient.fetchDocument(identifier:)(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C0131CE0, 0, 0);
}

uint64_t sub_1C0131CE0()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v2;
  v5[3] = sub_1C0133410;
  v5[4] = v4;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A10, &qword_1C01574C0);
  *v7 = v0;
  v7[1] = sub_1C0131E1C;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD00000000000001ALL, 0x80000001C015D130, sub_1C0133418, v5, v8);
}

uint64_t sub_1C0131E1C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C01314B0, 0, 0);
  }

  else
  {
    v5 = v4[6];
    v6 = v4[2];

    v7 = v4[1];

    return v7(v6);
  }
}

void sub_1C0131F8C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  v9 = sub_1C014C200();
  (*(v5 + 16))(v8, a2, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_1C013362C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C01321E0;
  aBlock[3] = &block_descriptor_32;
  v12 = _Block_copy(aBlock);

  [a1 fetchDocumentWithIdentifier:v9 reply:v12];
  _Block_release(v12);
}

uint64_t sub_1C013215C(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
    return sub_1C014C430();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
    return sub_1C014C440();
  }
}

void sub_1C01321E0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t AssistantSupportClient.resolveContext(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C013228C, 0, 0);
}

uint64_t sub_1C013228C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v2;
  v4[3] = sub_1C0133424;
  v4[4] = v3;
  v5 = *(MEMORY[0x1E69E8920] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A18, &qword_1C01574D0);
  *v6 = v0;
  v6[1] = sub_1C01323BC;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000012, 0x80000001C015D150, sub_1C013342C, v4, v7);
}

uint64_t sub_1C01323BC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[8] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C013252C, 0, 0);
  }

  else
  {
    v5 = v4[5];
    v6 = v4[2];

    v7 = v4[1];

    return v7(v6);
  }
}

uint64_t sub_1C013252C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_1C0132590(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a2, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1C0133570;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C01327F4;
  aBlock[3] = &block_descriptor_20;
  v13 = _Block_copy(aBlock);

  [a1 resolveContextForKeys:a3 reply:v13];
  _Block_release(v13);
}

uint64_t sub_1C0132748(uint64_t a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
    return sub_1C014C430();
  }

  else
  {
    if (!a1)
    {
      sub_1C00F930C(MEMORY[0x1E69E7CC0]);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
    return sub_1C014C440();
  }
}

uint64_t sub_1C01327F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_1C014C170();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t AssistantSupportClient.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1C0132904(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = [*(a2 + 24) connection];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1C013377C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_50;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v19[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v16 = swift_allocError();
    *v17 = 1;
    v20[0] = v16;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C0132BA8(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = [*(a2 + 24) connection];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1C01336EC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_38;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v19[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v16 = swift_allocError();
    *v17 = 1;
    v20[0] = v16;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C0132E4C(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A40, &qword_1C01575F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = [*(a2 + 24) connection];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1C0133598;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_26;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v19[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v16 = swift_allocError();
    *v17 = 1;
    v20[0] = v16;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C01330F0(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A28, &unk_1C01575D8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = [*(a2 + 24) connection];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_1C01334F0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0130E34;
  aBlock[3] = &block_descriptor_6;
  v14 = _Block_copy(aBlock);

  v15 = [v11 remoteObjectProxyWithErrorHandler_];
  _Block_release(v14);

  sub_1C014C6E0();
  swift_unknownObjectRelease();
  sub_1C00FC1C0(aBlock, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A30, &qword_1C01575E8);
  if (swift_dynamicCast())
  {
    a3(v19[1], a1);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C013351C();
    v16 = swift_allocError();
    *v17 = 1;
    v20[0] = v16;
    sub_1C014C430();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
}

uint64_t sub_1C0133394(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1C014C430();
}

void sub_1C0133410(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1C0131F8C(a1, a2);
}

unint64_t sub_1C013343C()
{
  result = qword_1EBE06A20;
  if (!qword_1EBE06A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06A20);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C013351C()
{
  result = qword_1EBE06A38;
  if (!qword_1EBE06A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE06A38);
  }

  return result;
}

uint64_t sub_1C0133654(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_1C0133700()
{
  v0 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A48, &qword_1C01575F8) - 8) + 80);

  return sub_1C0131C6C();
}

uint64_t objectdestroyTm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t sub_1C0133814(int a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A50, &qword_1C0157600) - 8) + 80);

  return sub_1C01316E8(a1, a2, a3);
}

uint64_t sub_1C013395C()
{
  v1 = (v0 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C0133A20(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C0133C84()
{
  v1 = sub_1C014BD80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + OBJC_IVAR___TPSUserGuideTopic_topicId);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
  }

  else
  {
    sub_1C014BD70();
    v7 = sub_1C014BD50();
    (*(v2 + 8))(v5, v1);
  }

  return v7;
}

BOOL static UserGuideTopic.isValidIdentifier(_:)(char *a1)
{
  objc_allocWithZone(type metadata accessor for UserGuideTopic());

  v2 = UserGuideTopic.init(searchableItemUniqueIdentifier:)(a1);
  v3 = v2;
  if (v2)
  {
  }

  return v3 != 0;
}

uint64_t sub_1C0133FEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v54 = &v47 - v8;
  v49 = sub_1C014B9A0();
  v51 = *(v49 - 8);
  v9 = v51;
  v10 = *(v51 + 64);
  v11 = MEMORY[0x1EEE9AC00](v49);
  v50 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = sub_1C014BA60();
  v52 = *(v15 - 8);
  v53 = v15;
  v16 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C014BA50();
  sub_1C014BA30();
  v55 = a1;
  v56 = a2;

  MEMORY[0x1C68D6B10](46, 0xE100000000000000);
  v19 = v55;
  v20 = v56;
  v21 = (v2 + OBJC_IVAR___TPSUserGuideTopic_productId);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  v55 = v19;
  v56 = v20;

  MEMORY[0x1C68D6B10](v23, v22);

  MEMORY[0x1C68D6220](v55, v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065F0, &qword_1C01563D8);
  v24 = v9;
  v25 = v51;
  v26 = *(v24 + 72);
  v27 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  *(swift_allocObject() + 16) = xmmword_1C0156330;
  v28 = (v3 + OBJC_IVAR___TPSUserGuideTopic_topicId);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];

  sub_1C014B970();

  sub_1C014B9D0();
  v31 = (v3 + OBJC_IVAR___TPSUserGuideTopic_version);
  swift_beginAccess();
  if (v31[1])
  {
    v32 = *v31;

    sub_1C014B970();

    v34 = sub_1C014B9B0();
    if (*v33)
    {
      v35 = v33;
      v36 = *(v25 + 16);
      v37 = v49;
      v48 = v14;
      v36(v50, v14, v49);
      v38 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1C00FE568(0, v38[2] + 1, 1, v38);
        *v35 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1C00FE568(v40 > 1, v41 + 1, 1, v38);
        *v35 = v38;
      }

      v38[2] = v41 + 1;
      (*(v25 + 32))(v38 + v27 + v41 * v26, v50, v37);
      v34(&v55, 0);
      v14 = v48;
    }

    else
    {
      v34(&v55, 0);
      v37 = v49;
    }

    (*(v25 + 8))(v14, v37);
  }

  v42 = v54;
  sub_1C014B9F0();
  v43 = sub_1C014BC50();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v42, 1, v43) == 1)
  {
    (*(v52 + 8))(v18, v53);
    sub_1C00F98F4(v42, &qword_1EBE06970, &qword_1C0156340);
    return 0;
  }

  else
  {
    v46 = sub_1C014BBA0();
    (*(v52 + 8))(v18, v53);
    (*(v44 + 8))(v42, v43);
    return v46;
  }
}

id UserGuideTopic.__allocating_init(productIdentifier:topicIdentifier:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR___TPSUserGuideTopic_topicId];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v13[OBJC_IVAR___TPSUserGuideTopic_version];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[OBJC_IVAR___TPSUserGuideTopic_title];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v13[OBJC_IVAR___TPSUserGuideTopic_body];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v13[OBJC_IVAR___TPSUserGuideTopic_productId];
  *v18 = a1;
  *(v18 + 1) = a2;
  swift_beginAccess();
  *v14 = a3;
  *(v14 + 1) = a4;
  swift_beginAccess();
  *v15 = a5;
  *(v15 + 1) = a6;
  v20.receiver = v13;
  v20.super_class = v6;
  return objc_msgSendSuper2(&v20, sel_init);
}

id UserGuideTopic.init(productIdentifier:topicIdentifier:version:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = &v6[OBJC_IVAR___TPSUserGuideTopic_topicId];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[OBJC_IVAR___TPSUserGuideTopic_version];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v6[OBJC_IVAR___TPSUserGuideTopic_title];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[OBJC_IVAR___TPSUserGuideTopic_body];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[OBJC_IVAR___TPSUserGuideTopic_productId];
  *v15 = a1;
  *(v15 + 1) = a2;
  swift_beginAccess();
  *v11 = a3;
  *(v11 + 1) = a4;
  swift_beginAccess();
  *v12 = a5;
  *(v12 + 1) = a6;
  v17.receiver = v6;
  v17.super_class = type metadata accessor for UserGuideTopic();
  return objc_msgSendSuper2(&v17, sel_init);
}

id UserGuideTopic.init(searchableItemUniqueIdentifier:)(char *a1)
{
  v2 = v1;
  v66 = a1;
  v67 = sub_1C014B9A0();
  v65 = *(v67 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065E0, &unk_1C0157A70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v60 - v7;
  v9 = sub_1C014BA60();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v2[OBJC_IVAR___TPSUserGuideTopic_topicId];
  *v14 = 0;
  v14[1] = 0;
  v15 = v14;
  v16 = &v2[OBJC_IVAR___TPSUserGuideTopic_version];
  *v16 = 0;
  v16[1] = 0;
  v17 = v16;
  v18 = &v2[OBJC_IVAR___TPSUserGuideTopic_title];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v2;
  v20 = &v2[OBJC_IVAR___TPSUserGuideTopic_body];
  *v20 = 0;
  *(v20 + 1) = 0;
  sub_1C014BA40();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C00F98F4(v8, &qword_1EBE065E0, &unk_1C0157A70);
    v21 = v17;
    v22 = v15;
LABEL_30:
    v54 = v22[1];

    v55 = v21[1];

    v56 = *(v18 + 1);

    v57 = *(v20 + 1);

    type metadata accessor for UserGuideTopic();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v63 = v10;
  (*(v10 + 32))(v13, v8, v9);
  v66 = v13;
  v23 = sub_1C014BA20();
  v25 = v9;
  v21 = v17;
  v26 = v64;
  v22 = v15;
  if (!v24)
  {
LABEL_9:
    (*(v63 + 8))(v66, v9);
    goto LABEL_30;
  }

  if (v23 == 0x32766470682D78 && v24 == 0xE700000000000000)
  {
  }

  else
  {
    v28 = sub_1C014C9F0();

    if ((v28 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v29 = v66;
  v30 = sub_1C014BA00();
  if (!v31)
  {
    (*(v63 + 8))(v29, v25);
    goto LABEL_30;
  }

  v70 = v30;
  v71 = v31;
  v68 = 46;
  v69 = 0xE100000000000000;
  sub_1C00FCDA8();
  v32 = sub_1C014C690();

  if (v32[2] <= 1uLL)
  {
    (*(v63 + 8))(v29, v25);

    goto LABEL_30;
  }

  v33 = v32[6];
  v34 = v32[7];

  v35 = &v19[OBJC_IVAR___TPSUserGuideTopic_productId];
  *v35 = v33;
  *(v35 + 1) = v34;
  v36 = sub_1C014B9C0();
  if (v36)
  {
    v60 = v25;
    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = v65;
      v39 = v36 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
      swift_beginAccess();
      swift_beginAccess();
      v40 = *(v38 + 16);
      v38 += 16;
      v61 = *(v38 + 56);
      v62 = v40;
      v65 = v38;
      v41 = (v38 - 8);
      do
      {
        v62(v26, v39, v67);
        v43 = sub_1C014B980();
        v44 = v42;
        if (v43 == 0x64496369706F74 && v42 == 0xE700000000000000 || (sub_1C014C9F0() & 1) != 0)
        {

          v45 = sub_1C014B990();
          v47 = v46;
          (*v41)(v26, v67);
          v48 = v22[1];
          *v22 = v45;
          v22[1] = v47;
        }

        else
        {
          if (v43 == 0x6E6F6973726576 && v44 == 0xE700000000000000)
          {
          }

          else
          {
            v49 = sub_1C014C9F0();

            if ((v49 & 1) == 0)
            {
              (*v41)(v26, v67);
              goto LABEL_21;
            }
          }

          v50 = sub_1C014B990();
          v52 = v51;
          (*v41)(v26, v67);
          v53 = v21[1];
          *v21 = v50;
          v21[1] = v52;
        }

LABEL_21:
        v39 += v61;
        --v37;
      }

      while (v37);
    }

    v25 = v60;
    v29 = v66;
  }

  (*(v63 + 8))(v29, v25);
  v59 = type metadata accessor for UserGuideTopic();
  v72.receiver = v19;
  v72.super_class = v59;
  return objc_msgSendSuper2(&v72, sel_init);
}

id UserGuideTopic.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserGuideTopic.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserGuideTopic();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UserGuideTopic.supportSiteURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1C014BB90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v25 - v11;
  sub_1C00FCF48();
  sub_1C014BC10();

  v13 = sub_1C014BC50();
  v14 = *(v13 - 8);
  v28 = *(v14 + 48);
  if (v28(v12, 1, v13) == 1)
  {
    sub_1C00F98F4(v12, &qword_1EBE06970, &qword_1C0156340);
    v15 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE065A8, &qword_1C0156720);
    v16 = swift_allocObject();
    v27 = a1;
    v17 = v16;
    *(v16 + 16) = xmmword_1C0156390;
    *(v16 + 32) = 0x6564697567;
    *(v16 + 40) = 0xE500000000000000;
    v18 = (v1 + OBJC_IVAR___TPSUserGuideTopic_productId);
    swift_beginAccess();
    v19 = *v18;
    v20 = v18[1];
    *(v17 + 48) = v19;
    *(v17 + 56) = v20;
    (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
    sub_1C00FCDA8();
    v26 = v5;

    v5 = v26;
    sub_1C014BC20();
    a1 = v27;

    (*(v5 + 8))(v8, v4);
    (*(v14 + 8))(v12, v13);
    v15 = 0;
  }

  (*(v14 + 56))(a1, v15, 1, v13);
  v21 = (v2 + OBJC_IVAR___TPSUserGuideTopic_topicId);
  result = swift_beginAccess();
  v23 = v21[1];
  if (v23)
  {
    v24 = *v21;
    result = (v28)(a1, 1, v13);
    if (!result)
    {
      v29 = v24;
      v30 = v23;
      (*(v5 + 104))(v8, *MEMORY[0x1E6968F70], v4);
      sub_1C00FCDA8();

      sub_1C014BBF0();
      (*(v5 + 8))(v8, v4);
    }
  }

  return result;
}

id sub_1C013576C()
{
  result = [objc_allocWithZone(type metadata accessor for SearchQueryManager()) init];
  qword_1EBE06A80 = result;
  return result;
}

id SearchQueryManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SearchQueryManager.shared.getter()
{
  if (qword_1EBE06380 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBE06A80;

  return v1;
}

id SearchQueryManager.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v15 = sub_1C014C5A0();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C014C580();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1C014C0D0();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v14 = OBJC_IVAR___TPSSearchQueryManager_syncQueue;
  v10 = sub_1C0111504();
  v13[0] = "ortSiteURL";
  v13[1] = v10;
  sub_1C014C0B0();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EDD44B70, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE067E0, &qword_1C01568E0);
  sub_1C0129820(&qword_1EDD44B90, &qword_1EBE067E0, &qword_1C01568E0);
  sub_1C014C700();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v15);
  *&v0[v14] = sub_1C014C5D0();
  v11 = OBJC_IVAR___TPSSearchQueryManager_pendingQueries;
  *&v1[v11] = sub_1C00F964C(MEMORY[0x1E69E7CC0]);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_1C0135B48(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24[0] = a2;
  v7 = sub_1C014C0A0();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C014C0D0();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &a1[OBJC_IVAR___TPSSearchQuery_identifier];
  swift_beginAccess();
  v17 = *v15;
  v16 = *(v15 + 1);
  v24[1] = *(v4 + OBJC_IVAR___TPSSearchQueryManager_syncQueue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = v17;
  v20 = v24[0];
  v19[4] = v16;
  v19[5] = v20;
  v19[6] = a3;
  v19[7] = a1;
  aBlock[4] = sub_1C0136A10;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_14_0;
  v21 = _Block_copy(aBlock);

  v22 = a1;
  sub_1C014C0B0();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EBE05D10, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C0129820(&qword_1EBE05C68, &qword_1EBE066C0, &unk_1C01576F0);
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v14, v10, v21);
  _Block_release(v21);
  (*(v26 + 8))(v10, v7);
  (*(v11 + 8))(v14, v25);
}

uint64_t sub_1C0135E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    swift_beginAccess();
    sub_1C0136914(a2, a3, &v31);
    swift_endAccess();
    if (v32)
    {
      sub_1C00F98DC(&v31, v34);
      v13 = v35;
      v14 = v36;
      __swift_project_boxed_opaque_existential_0(v34, v35);
      (*(v14 + 16))(v13, v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
    }

    else
    {
      sub_1C0136A20(&v31);
    }

    v15 = swift_allocObject();
    *(v15 + 2) = v12;
    *(v15 + 3) = a2;
    *(v15 + 4) = a3;
    *(v15 + 5) = a4;
    *(v15 + 6) = a5;
    v16 = OBJC_IVAR___TPSSearchQuery_contentTypeFilter;
    swift_beginAccess();
    v17 = *&v12[OBJC_IVAR___TPSSearchQueryManager_syncQueue];
    if (*&a6[v16] == 1)
    {
      v18 = type metadata accessor for PegasusKitQuery();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_proxyTask] = 0;
      *&v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_searchQuery] = a6;
      v20 = &v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_completion];
      *v20 = sub_1C0136A88;
      v20[1] = v15;
      *&v19[OBJC_IVAR____TtC8TipsCore15PegasusKitQuery_queue] = v17;
      v30.receiver = v19;
      v30.super_class = v18;
      v21 = v12;

      v22 = v17;

      v23 = a6;
      v24 = objc_msgSendSuper2(&v30, sel_init);
      v25 = &off_1F3F2D0A8;
    }

    else
    {
      v18 = type metadata accessor for CoreSpotlightQuery();
      v26 = objc_allocWithZone(v18);
      v27 = v12;

      v24 = sub_1C013A29C(a6, v17, sub_1C0136A88, v15);
      v25 = &off_1F3F2E298;
    }

    v32 = v18;
    v33 = v25;
    *&v31 = v24;
    sub_1C00F98DC(&v31, v34);
    sub_1C0107D00(v34, &v31);
    swift_beginAccess();

    sub_1C00F8004(&v31, a2, a3);
    swift_endAccess();
    v28 = v35;
    v29 = v36;
    __swift_project_boxed_opaque_existential_0(v34, v35);
    (*(v29 + 8))(v28, v29);

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return result;
}

uint64_t sub_1C01361A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  if (a1)
  {
    v10 = a1;
    (a6)(a1, 0);
  }

  else
  {
    a6();
  }

  swift_beginAccess();
  sub_1C0136914(a4, a5, v12);
  swift_endAccess();
  return sub_1C0136A20(v12);
}

void sub_1C0136300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1C014BB60();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1C0136370(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1C014C0A0();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C014C0D0();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + OBJC_IVAR___TPSSearchQueryManager_syncQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_1C01369E4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C011431C;
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);

  sub_1C014C0B0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1C01297D8(&qword_1EBE05D10, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE066C0, &unk_1C01576F0);
  sub_1C0129820(&qword_1EBE05C68, &qword_1EBE066C0, &unk_1C01576F0);
  sub_1C014C700();
  MEMORY[0x1C68D6DD0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_1C013667C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR___TPSSearchQueryManager_pendingQueries;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (*(v8 + 16) && (v9 = sub_1C012EBF4(a2, a3), (v10 & 1) != 0))
    {
      sub_1C0107D00(*(v8 + 56) + 40 * v9, v13);
      sub_1C00F98DC(v13, v14);
      swift_endAccess();
      v11 = v15;
      v12 = v16;
      __swift_project_boxed_opaque_existential_0(v14, v15);
      (*(v12 + 16))(v11, v12);

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }

    else
    {
      swift_endAccess();
    }
  }
}

id SearchQueryManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C0136870@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C012EBF4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C012F904();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1C00F9954((*(v12 + 56) + 32 * v9), a3);
    sub_1C012ED74(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1C0136914@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1C012EBF4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C01306FC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1C00F98DC((*(v12 + 56) + 40 * v9), a3);
    sub_1C012F244(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0136A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06458, &qword_1C0157670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C0136BA8()
{
  result = qword_1EDD44928;
  if (!qword_1EDD44928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE06A98, &qword_1C0157678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD44928);
  }

  return result;
}

uint64_t sub_1C0136CA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = *a1;
  a6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE06900, &qword_1C0157710);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C0156330;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06A98, &qword_1C0157678);
  *(v8 + 64) = sub_1C0136BA8();
  *(v8 + 32) = a5;

  sub_1C014BFB0();
}

id sub_1C0137084(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id sub_1C013710C(void *a1, void **a2)
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

id TPSLogger.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TPSLogger.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSLogger();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TPSLogger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TPSLogger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C013726C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = OBJC_IVAR___TPSSearchResultItem_relevance;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v5 != v7)
  {
    v19 = v7 < v5;
    return v19 & 1;
  }

  v8 = (v2 + OBJC_IVAR___TPSSearchResultItem_title);
  swift_beginAccess();
  v9 = v8[1];
  if (!v9 || (v10 = *v8, v11 = (v3 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v12 = v11[1]) == 0))
  {
    v14 = (v2 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    v17 = (v3 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
    swift_beginAccess();
    if (*v17 != v15 || v17[1] != v16)
    {
      goto LABEL_13;
    }

LABEL_15:
    v19 = 0;
    return v19 & 1;
  }

  if (v10 == *v11 && v9 == v12)
  {
    goto LABEL_15;
  }

LABEL_13:
  v19 = sub_1C014C9F0();
  return v19 & 1;
}

uint64_t sub_1C0137488(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C0106990(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v34 = v2 + 32;
  v40[0] = v2 + 32;
  v40[1] = v4;
  v5 = sub_1C014C9B0();
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return sub_1C014C870();
    }

    v9 = -1;
    v10 = 1;
    v11 = (v2 + 32);
    v33 = v4;
LABEL_9:
    v36 = v10;
    v37 = v9;
    v12 = *(v34 + 8 * v10);
    v35 = v11;
    v13 = v11;
    while (1)
    {
      v16 = *v13;
      v17 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v18 = *(v12 + v17);
      v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v20 = *(v16 + v19);
      if (v18 == v20)
      {
        v21 = (v12 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v22 = v21[1];
        if (v22 && (v23 = *v21, v24 = (v16 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v25 = v24[1]) != 0))
        {
          if (v23 == *v24 && v22 == v25)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v27 = (v12 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v28 = *v27;
          v29 = v27[1];
          v30 = (v16 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          if (*v30 == v28 && v30[1] == v29)
          {
LABEL_8:
            v10 = v36 + 1;
            v11 = v35 + 1;
            v9 = v37 - 1;
            if (v36 + 1 == v33)
            {
              return sub_1C014C870();
            }

            goto LABEL_9;
          }
        }

        if ((sub_1C014C9F0() & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v20 >= v18)
      {
        goto LABEL_8;
      }

      v14 = *v13;
      v12 = v13[1];
      *v13 = v12;
      v13[1] = v14;
      --v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v6 = v5;
  v7 = v4 >> 1;
  if (v4 >= 2)
  {
    type metadata accessor for SearchResult.Item();
    v8 = sub_1C014C3F0();
    *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v39[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  v39[1] = v7;
  sub_1C0137738(v39, v38, v40, v6);
  *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return sub_1C014C870();
}

uint64_t sub_1C0137738(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v119 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_125:
    v5 = v10;
    v10 = *v119;
    if (!*v119)
    {
      goto LABEL_163;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_127;
    }

    goto LABEL_157;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v124 = v12;
      goto LABEL_41;
    }

    v13 = *v7;
    v14 = *(*v7 + 8 * v12);
    v126 = *(*v7 + 8 * v11);
    v127 = v14;
    result = sub_1C013726C(&v127, &v126);
    v122 = result;
    if (v6)
    {
    }

    v124 = v11 + 2;
    if (v11 + 2 >= v8)
    {
      goto LABEL_32;
    }

    v114 = v11;
    v116 = v10;
    v15 = (v13 + 8 * v11 + 16);
    do
    {
      v17 = *(v15 - 1);
      v18 = *v15;
      v5 = &OBJC_IVAR___TPSSearchResultItem_relevance;
      v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v20 = *(v18 + v19);
      v21 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v22 = *(v17 + v21);
      if (v20 != v22)
      {
        result = v22 < v20;
LABEL_24:
        v16 = v124;
        goto LABEL_25;
      }

      v23 = (v18 + OBJC_IVAR___TPSSearchResultItem_title);
      swift_beginAccess();
      v5 = v23[1];
      if (!v5 || (v24 = *v23, v25 = (v17 + OBJC_IVAR___TPSSearchResultItem_title), result = swift_beginAccess(), (v26 = v25[1]) == 0))
      {
        v28 = (v18 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
        swift_beginAccess();
        v5 = *v28;
        v29 = v28[1];
        v30 = (v17 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
        swift_beginAccess();
        result = *v30;
        if (*v30 == v5 && v30[1] == v29)
        {
          v7 = a3;
          v16 = v124;
          if (v122)
          {
            goto LABEL_29;
          }

          goto LABEL_26;
        }

        result = sub_1C014C9F0();
        v7 = a3;
        goto LABEL_24;
      }

      v27 = v24 == *v25 && v5 == v26;
      v16 = v124;
      if (v27)
      {
        v7 = a3;
        if (v122)
        {
LABEL_29:
          v11 = v114;
          v10 = v116;
          goto LABEL_33;
        }

        goto LABEL_26;
      }

      result = sub_1C014C9F0();
      v7 = a3;
LABEL_25:
      if ((v122 ^ result))
      {
        goto LABEL_31;
      }

LABEL_26:
      ++v15;
      v124 = v16 + 1;
    }

    while (v8 != v16 + 1);
    v124 = v8;
LABEL_31:
    v11 = v114;
    v10 = v116;
LABEL_32:
    if (v122)
    {
LABEL_33:
      v32 = v124;
      if (v124 < v11)
      {
        goto LABEL_154;
      }

      if (v11 < v124)
      {
        v33 = 8 * v124 - 8;
        v34 = 8 * v11;
        v35 = v11;
        do
        {
          if (v35 != --v32)
          {
            v37 = *v7;
            if (!*v7)
            {
              goto LABEL_160;
            }

            v36 = *(v37 + v34);
            *(v37 + v34) = *(v37 + v33);
            *(v37 + v33) = v36;
          }

          ++v35;
          v33 -= 8;
          v34 += 8;
        }

        while (v35 < v32);
      }
    }

LABEL_41:
    v38 = v7[1];
    if (v124 >= v38)
    {
      goto LABEL_73;
    }

    if (__OFSUB__(v124, v11))
    {
      goto LABEL_153;
    }

    if (v124 - v11 >= a4)
    {
LABEL_73:
      if (v124 < v11)
      {
        goto LABEL_152;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1C00FE794(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v63 = *(v10 + 2);
      v62 = *(v10 + 3);
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        result = sub_1C00FE794((v62 > 1), v63 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v64;
      v65 = &v10[16 * v63];
      *(v65 + 4) = v11;
      *(v65 + 5) = v124;
      v66 = *v119;
      if (!*v119)
      {
        goto LABEL_162;
      }

      if (!v63)
      {
LABEL_3:
        v8 = v7[1];
        v9 = v124;
        if (v124 >= v8)
        {
          goto LABEL_125;
        }

        continue;
      }

      while (1)
      {
        v5 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v10 + 4);
          v68 = *(v10 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_93:
          if (v70)
          {
            goto LABEL_141;
          }

          v83 = &v10[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_144;
          }

          v89 = &v10[16 * v5 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_147;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_148;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v5 = v64 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v93 = &v10[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_107:
        if (v88)
        {
          goto LABEL_143;
        }

        v96 = &v10[16 * v5];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_146;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_114:
        v104 = v5 - 1;
        if (v5 - 1 >= v64)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
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
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        if (!*v7)
        {
          goto LABEL_159;
        }

        v105 = *&v10[16 * v104 + 32];
        v106 = *&v10[16 * v5 + 40];
        sub_1C0137FB4((*v7 + 8 * v105), (*v7 + 8 * *&v10[16 * v5 + 32]), (*v7 + 8 * v106), v66);
        if (v6)
        {
        }

        if (v106 < v105)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C010685C(v10);
        }

        if (v104 >= *(v10 + 2))
        {
          goto LABEL_138;
        }

        v107 = &v10[16 * v104];
        *(v107 + 4) = v105;
        *(v107 + 5) = v106;
        v128 = v10;
        result = sub_1C01067D0(v5);
        v10 = v128;
        v64 = *(v128 + 16);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v10[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_139;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_140;
      }

      v78 = &v10[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_142;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_145;
      }

      if (v82 >= v74)
      {
        v100 = &v10[16 * v5 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_149;
        }

        if (v69 < v103)
        {
          v5 = v64 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

    break;
  }

  if (__OFADD__(v11, a4))
  {
    goto LABEL_155;
  }

  if (v11 + a4 >= v38)
  {
    v39 = v7[1];
  }

  else
  {
    v39 = v11 + a4;
  }

  if (v39 < v11)
  {
LABEL_156:
    __break(1u);
LABEL_157:
    result = sub_1C010685C(v5);
    v5 = result;
LABEL_127:
    v108 = v6;
    v128 = v5;
    v109 = *(v5 + 16);
    if (v109 >= 2)
    {
      while (*v7)
      {
        v6 = v109 - 1;
        v110 = *(v5 + 16 * v109);
        v111 = *(v5 + 16 * (v109 - 1) + 40);
        sub_1C0137FB4((*v7 + 8 * v110), (*v7 + 8 * *(v5 + 16 * (v109 - 1) + 32)), (*v7 + 8 * v111), v10);
        if (v108)
        {
        }

        if (v111 < v110)
        {
          goto LABEL_150;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1C010685C(v5);
        }

        if (v109 - 2 >= *(v5 + 16))
        {
          goto LABEL_151;
        }

        v112 = (v5 + 16 * v109);
        *v112 = v110;
        v112[1] = v111;
        v128 = v5;
        result = sub_1C01067D0(v109 - 1);
        v5 = v128;
        v109 = *(v128 + 16);
        if (v109 <= 1)
        {
        }
      }

      goto LABEL_161;
    }
  }

  if (v124 == v39)
  {
    goto LABEL_73;
  }

  v115 = v11;
  v117 = v10;
  v113 = v6;
  v40 = *v7;
  v41 = (v40 + 8 * v124 - 8);
  v42 = v11 - v124;
  v43 = v124;
  v121 = v39;
LABEL_52:
  v123 = v41;
  v125 = v43;
  v44 = *(v40 + 8 * v43);
  v45 = v42;
  while (1)
  {
    v46 = *v41;
    v5 = &OBJC_IVAR___TPSSearchResultItem_relevance;
    v47 = OBJC_IVAR___TPSSearchResultItem_relevance;
    swift_beginAccess();
    v48 = *(v44 + v47);
    v49 = OBJC_IVAR___TPSSearchResultItem_relevance;
    result = swift_beginAccess();
    v50 = *(v46 + v49);
    if (v48 == v50)
    {
      v51 = (v44 + OBJC_IVAR___TPSSearchResultItem_title);
      swift_beginAccess();
      v52 = v51[1];
      if (v52)
      {
        v5 = *v51;
        v53 = (v46 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v54 = v53[1];
        if (v54)
        {
          if (v5 == *v53 && v52 == v54)
          {
            goto LABEL_51;
          }

LABEL_65:
          result = sub_1C014C9F0();
          if ((result & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_68;
        }
      }

      v56 = (v44 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
      swift_beginAccess();
      v57 = *v56;
      v5 = v56[1];
      v58 = (v46 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
      swift_beginAccess();
      if (*v58 != v57 || v58[1] != v5)
      {
        goto LABEL_65;
      }

LABEL_51:
      v43 = v125 + 1;
      v41 = v123 + 1;
      --v42;
      if (v125 + 1 == v121)
      {
        v124 = v121;
        v6 = v113;
        v11 = v115;
        v7 = a3;
        v10 = v117;
        goto LABEL_73;
      }

      goto LABEL_52;
    }

    if (v50 >= v48)
    {
      goto LABEL_51;
    }

LABEL_68:
    if (!v40)
    {
      break;
    }

    v60 = *v41;
    v44 = v41[1];
    *v41 = v44;
    v41[1] = v60;
    --v41;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
  return result;
}

uint64_t sub_1C0137FB4(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      v13 = __dst;
      memmove(a4, __src, 8 * v9);
      __dst = v13;
    }

    v58 = &v4[8 * v9];
    if (v7 < 8 || __dst >= v5)
    {
      __dst = v6;
      goto LABEL_66;
    }

    v14 = &v4[8 * v9];
    while (1)
    {
      v60 = __dst;
      v15 = *__dst;
      v16 = *v4;
      v17 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v18 = *(v15 + v17);
      v19 = OBJC_IVAR___TPSSearchResultItem_relevance;
      swift_beginAccess();
      v20 = *(v16 + v19);
      if (v18 == v20)
      {
        v21 = (v15 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v22 = v21[1];
        if (v22 && (v23 = *v21, v24 = (v16 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v25 = v24[1]) != 0))
        {
          v26 = v23 == *v24 && v22 == v25;
          v14 = v58;
          if (v26)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v27 = (v15 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v28 = *v27;
          v29 = v27[1];
          v30 = (v16 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v31 = *v30 == v28 && v30[1] == v29;
          v14 = v58;
          if (v31)
          {
LABEL_25:
            v32 = v4;
            v26 = v6 == v4;
            v4 += 8;
            __dst = v60;
            if (v26)
            {
              goto LABEL_27;
            }

LABEL_26:
            *v6 = *v32;
            goto LABEL_27;
          }
        }

        if ((sub_1C014C9F0() & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (v20 >= v18)
      {
        goto LABEL_25;
      }

      v32 = v60;
      __dst = v60 + 8;
      if (v6 != v60)
      {
        goto LABEL_26;
      }

LABEL_27:
      v6 += 8;
      if (v4 >= v14 || __dst >= v5)
      {
        __dst = v6;
        goto LABEL_66;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    v33 = __dst;
    memmove(a4, __dst, 8 * v12);
    __dst = v33;
  }

  v58 = &v4[8 * v12];
  if (v10 >= 8 && __dst > v6)
  {
    v57 = v4;
    while (1)
    {
      v34 = (__dst - 8);
      v5 -= 8;
      v35 = v58;
      v36 = v58;
      v59 = __dst - 8;
      v61 = __dst;
      while (1)
      {
        v38 = *(v36 - 1);
        v36 -= 8;
        v37 = v38;
        v39 = *v34;
        v40 = OBJC_IVAR___TPSSearchResultItem_relevance;
        swift_beginAccess();
        v41 = *(v38 + v40);
        v42 = OBJC_IVAR___TPSSearchResultItem_relevance;
        swift_beginAccess();
        v43 = *(v39 + v42);
        if (v41 != v43)
        {
          break;
        }

        v44 = v35;
        v45 = (v37 + OBJC_IVAR___TPSSearchResultItem_title);
        swift_beginAccess();
        v46 = v45[1];
        if (v46 && (v47 = *v45, v48 = (v39 + OBJC_IVAR___TPSSearchResultItem_title), swift_beginAccess(), (v49 = v48[1]) != 0))
        {
          v50 = v47 == *v48 && v46 == v49;
          v35 = v44;
          v4 = v57;
          if (v50)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v51 = (v37 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v52 = *v51;
          v53 = v51[1];
          v54 = (v39 + OBJC_IVAR___TPSSearchResultItem_documentIdentifier);
          swift_beginAccess();
          v55 = *v54 == v52 && v54[1] == v53;
          v35 = v44;
          v4 = v57;
          if (v55)
          {
            goto LABEL_56;
          }
        }

        if (sub_1C014C9F0())
        {
          goto LABEL_58;
        }

LABEL_56:
        if (v5 + 8 != v35)
        {
          *v5 = *v36;
        }

        v5 -= 8;
        v35 = v36;
        v34 = v59;
        if (v36 <= v4)
        {
          v58 = v36;
          __dst = v61;
          goto LABEL_66;
        }
      }

      if (v43 >= v41)
      {
        goto LABEL_56;
      }

LABEL_58:
      if (v5 + 8 != v61)
      {
        *v5 = *v59;
      }

      v58 = v35;
      if (v35 > v4)
      {
        __dst = v59;
        if (v59 > v6)
        {
          continue;
        }
      }

      __dst = v59;
      break;
    }
  }

LABEL_66:
  if (__dst != v4 || __dst >= &v4[(v58 - v4 + (v58 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(__dst, v4, 8 * ((v58 - v4) / 8));
  }

  return 1;
}