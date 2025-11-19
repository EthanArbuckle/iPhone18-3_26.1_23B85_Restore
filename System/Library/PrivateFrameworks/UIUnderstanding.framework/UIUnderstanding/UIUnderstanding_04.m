void sub_27029D058(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_101:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v114 = *(v9 + 16);
      if (v114 >= 2)
      {
        do
        {
          v115 = *v6;
          if (!*v6)
          {
            goto LABEL_148;
          }

          v6 = (v114 - 1);
          v116 = *(v9 + 16 * v114);
          v117 = *(v9 + 16 * (v114 - 1) + 40);
          sub_27029F21C((v115 + 8 * v116), (v115 + 8 * *(v9 + 16 * (v114 - 1) + 32)), (v115 + 8 * v117), v8);
          if (v5)
          {
            break;
          }

          if (v117 < v116)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2702A6924(v9);
          }

          if (v114 - 2 >= *(v9 + 16))
          {
            goto LABEL_138;
          }

          v118 = (v9 + 16 * v114);
          *v118 = v116;
          v118[1] = v117;
          sub_2702A6898(v114 - 1);
          v114 = *(v9 + 16);
          v6 = a3;
        }

        while (v114 > 1);
      }

LABEL_111:

      return;
    }

LABEL_145:
    v9 = sub_2702A6924(v9);
    goto LABEL_103;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v131 = v7;
    if (v8 + 1 < v7)
    {
      v120 = v9;
      v124 = v5;
      v11 = *(*v6 + 8 * v10);
      v129 = 8 * v8;
      v12 = (*v6 + 8 * v8);
      v14 = *v12;
      v13 = (v12 + 2);
      v15 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v16 = *&v11[v15];
      v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v18 = *&v14[v17];
      v19 = v11;
      v20 = v14;
      v21 = v16;
      v22 = v18;
      sub_2702A7CF0(v21, v22);
      v133 = v23;

      v122 = v8;
      v24 = (v8 + 2);
      v9 = v131;
      while (v131 != v24)
      {
        v25 = *(v13 - 1);
        v8 = *v13;
        v26 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v27 = *(v8 + v26);
        v28 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v29 = *&v25[v28];
        v30 = &v27[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v35 = v8;
        v36 = v25;
        v5 = v27;
        v6 = v29;
        v136.origin.x = v31;
        v136.origin.y = v32;
        v136.size.width = v33;
        v136.size.height = v34;
        MinX = CGRectGetMinX(v136);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_118;
        }

        if (MinX <= -9.22337204e18)
        {
          goto LABEL_119;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_120;
        }

        v8 = v6 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        swift_beginAccess();
        v38 = CGRectGetMinX(*v8);

        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_121;
        }

        if (v38 <= -9.22337204e18)
        {
          goto LABEL_122;
        }

        if (v38 >= 9.22337204e18)
        {
          goto LABEL_123;
        }

        ++v24;
        ++v13;
        if (((v133 ^ (v38 < MinX)) & 1) == 0)
        {
          v9 = (v24 - 1);
          break;
        }
      }

      v8 = v122;
      v5 = v124;
      v6 = a3;
      v39 = v129;
      if ((v133 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v9 < v122)
      {
        goto LABEL_144;
      }

      if (v122 < v9)
      {
        v40 = 8 * v9 - 8;
        v41 = v9;
        v42 = v9;
        v43 = v122;
        v9 = v120;
        do
        {
          if (v43 != --v42)
          {
            v45 = *a3;
            if (!*a3)
            {
              goto LABEL_149;
            }

            v44 = *(v45 + v39);
            *(v45 + v39) = *(v45 + v40);
            *(v45 + v40) = v44;
          }

          ++v43;
          v40 -= 8;
          v39 += 8;
        }

        while (v43 < v42);
        v10 = v41;
      }

      else
      {
LABEL_24:
        v10 = v9;
        v9 = v120;
      }
    }

    v46 = v6[1];
    v134 = v10;
    if (v10 < v46)
    {
      v84 = __OFSUB__(v10, v8);
      v47 = v10 - v8;
      if (v84)
      {
        goto LABEL_141;
      }

      if (v47 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_142;
        }

        if (v8 + a4 >= v46)
        {
          v48 = v6[1];
        }

        else
        {
          v48 = (v8 + a4);
        }

        if (v48 < v8)
        {
          goto LABEL_143;
        }

        if (v134 != v48)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v134 < v8)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_270290DEC(0, *(v9 + 16) + 1, 1, v9);
    }

    v69 = *(v9 + 16);
    v68 = *(v9 + 24);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v9 = sub_270290DEC((v68 > 1), v69 + 1, 1, v9);
    }

    *(v9 + 16) = v70;
    v71 = v9 + 16 * v69;
    *(v71 + 32) = v8;
    *(v71 + 40) = v134;
    v72 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v9 + 32);
          v75 = *(v9 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_70:
          if (v77)
          {
            goto LABEL_129;
          }

          v90 = (v9 + 16 * v70);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_132;
          }

          v96 = (v9 + 32 + 16 * v73);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_136;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v100 = (v9 + 16 * v70);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_84:
        if (v95)
        {
          goto LABEL_131;
        }

        v103 = v9 + 16 * v73;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_134;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_91:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_147;
        }

        v112 = *(v9 + 32 + 16 * v111);
        v8 = *(v9 + 32 + 16 * v73 + 8);
        sub_27029F21C((*v6 + 8 * v112), (*v6 + 8 * *(v9 + 32 + 16 * v73)), (*v6 + 8 * v8), v72);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v8 < v112)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2702A6924(v9);
        }

        if (v111 >= *(v9 + 16))
        {
          goto LABEL_126;
        }

        v113 = v9 + 16 * v111;
        *(v113 + 32) = v112;
        *(v113 + 40) = v8;
        sub_2702A6898(v73);
        v70 = *(v9 + 16);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v9 + 32 + 16 * v70;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_127;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_128;
      }

      v85 = (v9 + 16 * v70);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_130;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_133;
      }

      if (v89 >= v81)
      {
        v107 = (v9 + 32 + 16 * v73);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_139;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v134;
    if (v134 >= v7)
    {
      goto LABEL_101;
    }
  }

  v121 = v9;
  v123 = v8;
  v125 = v5;
  v126 = v48;
  v49 = *v6;
  v5 = (*v6 + 8 * v134 - 8);
  v50 = (v8 - v134);
  v51 = v134;
LABEL_37:
  v132 = v5;
  v135 = v51;
  v52 = *(v49 + 8 * v51);
  v130 = v50;
  while (1)
  {
    v53 = *v5;
    v54 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v55 = *&v52[v54];
    v56 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v9 = *&v53[v56];
    v8 = &v55[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v57 = *v8;
    v58 = *(v8 + 8);
    v59 = *(v8 + 16);
    v60 = *(v8 + 24);
    v61 = v52;
    v62 = v53;
    v63 = v55;
    v6 = v9;
    v137.origin.x = v57;
    v137.origin.y = v58;
    v137.size.width = v59;
    v137.size.height = v60;
    v64 = CGRectGetMinX(v137);
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v64 <= -9.22337204e18)
    {
      goto LABEL_113;
    }

    if (v64 >= 9.22337204e18)
    {
      goto LABEL_114;
    }

    v8 = v6 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
    swift_beginAccess();
    v65 = CGRectGetMinX(*v8);
    v9 = *&v65;

    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_115;
    }

    if (v65 <= -9.22337204e18)
    {
      goto LABEL_116;
    }

    if (v65 >= 9.22337204e18)
    {
      goto LABEL_117;
    }

    if (v65 < v64)
    {
LABEL_36:
      v51 = v135 + 1;
      v5 = v132 + 1;
      v50 = v130 - 1;
      if (v135 + 1 == v126)
      {
        v134 = v126;
        v8 = v123;
        v5 = v125;
        v6 = a3;
        v9 = v121;
        goto LABEL_50;
      }

      goto LABEL_37;
    }

    if (!v49)
    {
      break;
    }

    v66 = *v5;
    v52 = v5[1];
    *v5 = v52;
    v5[1] = v66;
    --v5;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

uint64_t sub_27029D998(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v120 = result;
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_124:
    v4 = *v120;
    if (*v120)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if (v5 + 1 < v4)
    {
      v132 = v6;
      v9 = *(*a3 + 8 * v8);
      v10 = 8 * v5;
      v11 = (*a3 + 8 * v5);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v15 = *(*(v9 + v14) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
      v16 = OBJC_IVAR___UIObjectCompat_detection;
      result = swift_beginAccess();
      v17 = *(*(v13 + v16) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
      v18 = (v7 + 2);
      while (v4 != v18)
      {
        v20 = *(v12 - 1);
        v19 = *v12;
        v21 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v22 = *(*(v19 + v21) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
        v23 = OBJC_IVAR___UIObjectCompat_detection;
        result = swift_beginAccess();
        ++v18;
        ++v12;
        if (v17 < v15 == *(*(v20 + v23) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v22)
        {
          v4 = (v18 - 1);
          break;
        }
      }

      v6 = v132;
      if (v17 < v15)
      {
        if (v4 < v7)
        {
          goto LABEL_153;
        }

        if (v7 < v4)
        {
          v24 = 8 * v4 - 8;
          v25 = v4;
          v26 = v7;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_159;
              }

              v28 = *(v27 + v10);
              *(v27 + v10) = *(v27 + v24);
              *(v27 + v24) = v28;
            }

            ++v26;
            v24 -= 8;
            v10 += 8;
          }

          while (v26 < v25);
        }
      }

      v8 = v4;
    }

    v29 = a3[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_152;
      }

      if (v8 - v7 < a4)
      {
        v30 = (v7 + a4);
        if (__OFADD__(v7, a4))
        {
          goto LABEL_154;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v7)
        {
          goto LABEL_155;
        }

        if (v8 != v30)
        {
          v130 = v7;
          v133 = v6;
          v31 = *a3;
          v6 = (*a3 + 8 * v8 - 8);
          v32 = v7 - v8;
          v135 = v30;
          do
          {
            v123 = v8;
            v33 = *(v31 + 8 * v8);
            v34 = v32;
            v35 = v6;
            do
            {
              v36 = *v35;
              v4 = &OBJC_IVAR___UIObjectCompat_detection;
              v37 = OBJC_IVAR___UIObjectCompat_detection;
              swift_beginAccess();
              v38 = *(*(v33 + v37) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
              v39 = OBJC_IVAR___UIObjectCompat_detection;
              swift_beginAccess();
              if (*(*(v36 + v39) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v38)
              {
                break;
              }

              if (!v31)
              {
                goto LABEL_156;
              }

              v40 = *v35;
              v33 = *(v35 + 1);
              *v35 = v33;
              *(v35 + 1) = v40;
              v35 -= 8;
            }

            while (!__CFADD__(v34++, 1));
            v8 = v123 + 1;
            v6 += 8;
            --v32;
          }

          while ((v123 + 1) != v135);
          v8 = v135;
          v7 = v130;
          v6 = v133;
        }
      }
    }

    if (v8 < v7)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v124 = v8;
    if ((result & 1) == 0)
    {
      result = sub_270290DEC(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
    }

    v43 = *(v6 + 2);
    v42 = *(v6 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_270290DEC((v42 > 1), v43 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v44;
    v45 = &v6[16 * v43];
    *(v45 + 4) = v7;
    *(v45 + 5) = v124;
    v46 = *v120;
    if (!*v120)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v43)
    {
      break;
    }

LABEL_3:
    v4 = a3[1];
    v5 = v124;
    if (v124 >= v4)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    if (v44 >= 4)
    {
      v52 = &v6[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_138;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_139;
      }

      v59 = &v6[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_141;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_144;
      }

      if (v63 >= v55)
      {
        v81 = &v6[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_148;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

    if (v44 == 3)
    {
      v48 = *(v6 + 4);
      v49 = *(v6 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_55:
      if (v51)
      {
        goto LABEL_140;
      }

      v64 = &v6[16 * v44];
      v66 = *v64;
      v65 = *(v64 + 1);
      v67 = __OFSUB__(v65, v66);
      v68 = v65 - v66;
      v69 = v67;
      if (v67)
      {
        goto LABEL_143;
      }

      v70 = &v6[16 * v47 + 32];
      v72 = *v70;
      v71 = *(v70 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v68, v73))
      {
        goto LABEL_147;
      }

      if (v68 + v73 >= v50)
      {
        if (v50 < v73)
        {
          v47 = v44 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_69;
    }

    v74 = &v6[16 * v44];
    v76 = *v74;
    v75 = *(v74 + 1);
    v58 = __OFSUB__(v75, v76);
    v68 = v75 - v76;
    v69 = v58;
LABEL_69:
    if (v69)
    {
      goto LABEL_142;
    }

    v77 = &v6[16 * v47];
    v79 = *(v77 + 4);
    v78 = *(v77 + 5);
    v58 = __OFSUB__(v78, v79);
    v80 = v78 - v79;
    if (v58)
    {
      goto LABEL_145;
    }

    if (v80 < v68)
    {
      goto LABEL_3;
    }

LABEL_76:
    if (v47 - 1 >= v44)
    {
      break;
    }

    v85 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v131 = v47;
    v134 = v6;
    v127 = v47 - 1;
    v86 = *&v6[16 * v47 + 16];
    v87 = *&v6[16 * v47 + 32];
    v128 = *&v6[16 * v47 + 40];
    v129 = v86;
    v88 = 8 * v86;
    v89 = (v85 + 8 * v86);
    v90 = 8 * v87;
    v91 = (v85 + 8 * v87);
    v92 = (v85 + 8 * v128);
    v93 = 8 * v87 - 8 * v86;
    v94 = 8 * v128 - 8 * v87;
    if (v93 >= v94)
    {
      v102 = (v85 + 8 * v87);
      if (v91 != v46 || v92 <= v46)
      {
        memmove(v46, (v85 + 8 * v87), 8 * v128 - 8 * v87);
      }

      v136 = &v46[v94];
      if (v94 < 1 || v90 <= v88)
      {
        v6 = v46;
        v112 = v91;
      }

      else
      {
        v122 = v89;
        do
        {
          __dst = v102;
          v103 = v102 - 8;
          v92 -= 8;
          v104 = v136;
          while (1)
          {
            v105 = v92 + 8;
            v106 = *(v104 - 1);
            v104 -= 8;
            v107 = v103;
            v108 = *v103;
            v109 = OBJC_IVAR___UIObjectCompat_detection;
            swift_beginAccess();
            v110 = *(*(v106 + v109) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
            v111 = OBJC_IVAR___UIObjectCompat_detection;
            swift_beginAccess();
            if (*(*(v108 + v111) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) < v110)
            {
              break;
            }

            if (v105 != v136)
            {
              *v92 = *v104;
            }

            v92 -= 8;
            v136 = v104;
            v103 = v107;
            if (v104 <= v46)
            {
              v136 = v104;
              v6 = v46;
              v112 = __dst;
              goto LABEL_114;
            }
          }

          v112 = v107;
          if (v105 != __dst)
          {
            *v92 = *v107;
          }

          v6 = v46;
          if (v136 <= v46)
          {
            break;
          }

          v102 = v107;
        }

        while (v122 < v107);
      }
    }

    else
    {
      if (v89 != v46 || v91 <= v46)
      {
        memmove(v46, (v85 + 8 * v86), 8 * v87 - 8 * v86);
      }

      v136 = &v46[v93];
      if (v93 >= 1 && 8 * v128 > v90)
      {
        v6 = v46;
        while (1)
        {
          v95 = *v91;
          v96 = *v6;
          v97 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          v98 = *(*(v95 + v97) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
          v99 = OBJC_IVAR___UIObjectCompat_detection;
          swift_beginAccess();
          if (*(*(v96 + v99) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v98)
          {
            break;
          }

          v100 = v91;
          v101 = v89 == v91;
          v91 += 8;
          if (!v101)
          {
            goto LABEL_90;
          }

LABEL_91:
          v89 += 8;
          if (v6 >= v136 || v91 >= v92)
          {
            goto LABEL_111;
          }
        }

        v100 = v6;
        v101 = v89 == v6;
        v6 += 8;
        if (v101)
        {
          goto LABEL_91;
        }

LABEL_90:
        *v89 = *v100;
        goto LABEL_91;
      }

      v6 = v46;
LABEL_111:
      v112 = v89;
    }

LABEL_114:
    if (v112 != v6 || v112 >= &v6[(v136 - v6 + (v136 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v112, v6, 8 * ((v136 - v6) / 8));
    }

    v4 = v129;
    if (v128 < v129)
    {
      goto LABEL_136;
    }

    v113 = v134;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v113 = sub_2702A6924(v134);
    }

    if (v131 > *(v113 + 2))
    {
      goto LABEL_137;
    }

    v114 = &v113[16 * v127];
    *(v114 + 4) = v129;
    *(v114 + 5) = v128;
    result = sub_2702A6898(v131);
    v6 = v113;
    v44 = *(v113 + 2);
    if (v44 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_156:
  __break(1u);
LABEL_157:
  result = sub_2702A6924(v6);
  v6 = result;
LABEL_126:
  v115 = *(v6 + 2);
  if (v115 < 2)
  {
  }

  while (*a3)
  {
    v116 = *&v6[16 * v115];
    v117 = *&v6[16 * v115 + 24];
    sub_27029F798((*a3 + 8 * v116), (*a3 + 8 * *&v6[16 * v115 + 16]), (*a3 + 8 * v117), v4);
    if (v121)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2702A6924(v6);
    }

    if (v115 - 2 >= *(v6 + 2))
    {
      goto LABEL_151;
    }

    v118 = &v6[16 * v115];
    *v118 = v116;
    *(v118 + 1) = v117;
    result = sub_2702A6898(v115 - 1);
    v115 = *(v6 + 2);
    if (v115 <= 1)
    {
    }
  }

LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_27029E2F4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2702A6924(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_27029FAB0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v11 < v10) ^ (v13 >= v14);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_270290DEC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_270290DEC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_27029FAB0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (*v26 >= v24)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

void sub_27029E840(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_129:
    v8 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_178;
      }

      goto LABEL_131;
    }

    goto LABEL_187;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    if ((v8 + 1) >= v7)
    {
      v32 = (v8 + 1);
      goto LABEL_42;
    }

    v11 = *a3;
    v12 = *(*a3 + 8 * v10);
    v121 = *(*a3 + 8 * v8);
    v122 = v12;
    sub_27029C2A0(&v122, &v121, a5);
    v117 = v13;
    if (v5)
    {
      goto LABEL_139;
    }

    v14 = v8;
    v8 += 2;
    v111 = v14;
    if (v8 < v7)
    {
      break;
    }

    v32 = v8;
LABEL_32:
    v8 = v111;
    if (v117)
    {
      if (v32 < v111)
      {
        goto LABEL_181;
      }

LABEL_34:
      if (v8 <= v10)
      {
        v33 = v32 - 1;
        v34 = v8;
        do
        {
          if (v34 != v33)
          {
            v37 = *a3;
            if (!*a3)
            {
              goto LABEL_185;
            }

            v35 = *(v37 + 8 * v34);
            *(v37 + 8 * v34) = *(v37 + 8 * v33);
            *(v37 + 8 * v33) = v35;
          }
        }

        while (++v34 < v33--);
      }
    }

LABEL_42:
    v38 = a3[1];
    if (v32 >= v38)
    {
      goto LABEL_50;
    }

    if (__OFSUB__(v32, v8))
    {
      goto LABEL_177;
    }

    if (v32 - v8 >= a4)
    {
      goto LABEL_50;
    }

    if (__OFADD__(v8, a4))
    {
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
      goto LABEL_184;
    }

    if (&v8[a4] < v38)
    {
      v38 = &v8[a4];
    }

    if (v38 < v8)
    {
      goto LABEL_180;
    }

    if (v32 == v38)
    {
LABEL_50:
      v39 = v32;
      if (v32 < v8)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v119 = v38;
      v86 = *a3;
      v87 = (*a3 + 8 * v32 - 8);
      v112 = v8;
      v8 -= v32;
      do
      {
        v115 = v87;
        v116 = v32;
        v88 = *(v86 + 8 * v32);
        v114 = v8;
        do
        {
          v89 = *v87;
          v90 = *a5;
          if ((*a5 & 0xC000000000000001) != 0)
          {
            v91 = MEMORY[0x27439C0F0](v88);
          }

          else
          {
            if ((v88 & 0x8000000000000000) != 0)
            {
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
              goto LABEL_154;
            }

            if (v88 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_141;
            }

            v91 = *(v90 + 8 * v88 + 32);
          }

          v92 = v91;
          v93 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v94 = *&v92[v93];

          v95 = *a5;
          if ((*a5 & 0xC000000000000001) != 0)
          {
            v96 = MEMORY[0x27439C0F0](v89);
          }

          else
          {
            if ((v89 & 0x8000000000000000) != 0)
            {
              goto LABEL_142;
            }

            if (v89 >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_144;
            }

            v96 = *(v95 + 8 * v89 + 32);
          }

          v97 = v96;
          v98 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v99 = *&v97[v98];

          v100 = &v94[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          MinX = CGRectGetMinX(*v100);
          if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_143;
          }

          if (MinX <= -9.22337204e18)
          {
            goto LABEL_145;
          }

          if (MinX >= 9.22337204e18)
          {
            goto LABEL_146;
          }

          v102 = &v99[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v103 = CGRectGetMinX(*v102);

          if ((*&v103 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_147;
          }

          if (v103 <= -9.22337204e18)
          {
            goto LABEL_148;
          }

          if (v103 >= 9.22337204e18)
          {
            goto LABEL_149;
          }

          if (v103 < MinX)
          {
            break;
          }

          if (!v86)
          {
            goto LABEL_182;
          }

          v104 = *v87;
          v88 = v87[1];
          *v87 = v88;
          v87[1] = v104;
          --v87;
        }

        while (!__CFADD__(v8++, 1));
        v32 = v116 + 1;
        v87 = v115 + 1;
        v8 = v114 - 1;
      }

      while ((v116 + 1) != v119);
      v8 = v112;
      v39 = v119;
      if (v119 < v112)
      {
        goto LABEL_176;
      }
    }

    v118 = v39;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_270290DEC(0, *(v9 + 2) + 1, 1, v9);
    }

    v41 = *(v9 + 2);
    v40 = *(v9 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v9 = sub_270290DEC((v40 > 1), v41 + 1, 1, v9);
    }

    *(v9 + 2) = v42;
    v43 = &v9[16 * v41];
    *(v43 + 4) = v8;
    *(v43 + 5) = v118;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_186;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v9 + 4);
          v47 = *(v9 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_70:
          if (v49)
          {
            goto LABEL_165;
          }

          v62 = &v9[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_168;
          }

          v68 = &v9[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_171;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_172;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v72 = &v9[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_84:
        if (v67)
        {
          goto LABEL_167;
        }

        v75 = &v9[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_170;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_91:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          goto LABEL_150;
        }

        if (!*a3)
        {
          goto LABEL_183;
        }

        v8 = *&v9[16 * v83 + 32];
        v84 = *&v9[16 * v45 + 40];
        sub_27029FCA4((*a3 + 8 * v8), (*a3 + 8 * *&v9[16 * v45 + 32]), (*a3 + 8 * v84), v44, a5);
        if (v5)
        {
          goto LABEL_139;
        }

        if (v84 < v8)
        {
          goto LABEL_151;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2702A6924(v9);
        }

        if (v83 >= *(v9 + 2))
        {
          goto LABEL_152;
        }

        v85 = &v9[16 * v83];
        *(v85 + 4) = v8;
        *(v85 + 5) = v84;
        v123 = v9;
        sub_2702A6898(v45);
        v9 = v123;
        v42 = *(v123 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v9[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_163;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_164;
      }

      v57 = &v9[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_166;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_169;
      }

      if (v61 >= v53)
      {
        v79 = &v9[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_175;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v8 = v118;
    v7 = a3[1];
    if (v118 >= v7)
    {
      goto LABEL_129;
    }
  }

  v15 = (v11 + 8 * v14 + 16);
  while (1)
  {
    v17 = *(v15 - 1);
    v16 = *v15;
    v18 = *a5;
    if ((*a5 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = MEMORY[0x27439C0F0](v16);
LABEL_14:
    v20 = v19;
    v21 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v22 = *&v20[v21];

    v23 = *a5;
    if ((*a5 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x27439C0F0](v17);
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_155;
      }

      if (v17 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_157;
      }

      v24 = *(v23 + 8 * v17 + 32);
    }

    v25 = v24;
    v26 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v27 = *&v25[v26];

    v28 = &v22[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v29 = CGRectGetMinX(*v28);
    if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_156;
    }

    if (v29 <= -9.22337204e18)
    {
      goto LABEL_158;
    }

    if (v29 >= 9.22337204e18)
    {
      goto LABEL_159;
    }

    v30 = &v27[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v31 = CGRectGetMinX(*v30);

    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_160;
    }

    if (v31 <= -9.22337204e18)
    {
      goto LABEL_161;
    }

    if (v31 >= 9.22337204e18)
    {
      goto LABEL_162;
    }

    v32 = v7;
    if (v31 < v29)
    {
      if (v117)
      {
        v10 = v8 - 1;
        v32 = v8;
        v8 = v111;
        if (v32 < v111)
        {
          goto LABEL_181;
        }

        goto LABEL_34;
      }
    }

    else if ((v117 & 1) == 0)
    {
      v32 = v8;
      v8 = v111;
      goto LABEL_42;
    }

    ++v15;
    if (v7 == ++v8)
    {
      v10 = v8 - 1;
      goto LABEL_32;
    }
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_153;
  }

  if (v16 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v18 + 8 * v16 + 32);
    goto LABEL_14;
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
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
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  v9 = sub_2702A6924(v9);
LABEL_131:
  v123 = v9;
  v106 = *(v9 + 2);
  if (v106 < 2)
  {
LABEL_139:

    return;
  }

  while (*a3)
  {
    v107 = *&v9[16 * v106];
    v108 = *&v9[16 * v106 + 24];
    sub_27029FCA4((*a3 + 8 * v107), (*a3 + 8 * *&v9[16 * v106 + 16]), (*a3 + 8 * v108), v8, a5);
    if (v5)
    {
      goto LABEL_139;
    }

    if (v108 < v107)
    {
      goto LABEL_173;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2702A6924(v9);
    }

    if (v106 - 2 >= *(v9 + 2))
    {
      goto LABEL_174;
    }

    v109 = &v9[16 * v106];
    *v109 = v107;
    *(v109 + 1) = v108;
    v123 = v9;
    sub_2702A6898(v106 - 1);
    v9 = v123;
    v106 = *(v123 + 2);
    if (v106 <= 1)
    {
      goto LABEL_139;
    }
  }

LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
}

void sub_27029F21C(void **__src, void **a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      v13 = __src;
      memmove(a4, __src, 8 * v8);
      __src = v13;
    }

    v64 = &v4[v8];
    if (v6 >= 8)
    {
      v14 = v12;
      if (v12 < v5)
      {
        __dst = v5;
        while (1)
        {
          v15 = __src;
          v16 = v14;
          v17 = *v14;
          v18 = v4;
          v19 = *v4;
          v20 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v21 = *&v17[v20];
          v22 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v23 = *&v19[v22];
          v24 = &v21[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v25 = *v24;
          v26 = v24[1];
          v27 = v24[2];
          v28 = v24[3];
          v29 = v17;
          v30 = v19;
          v31 = v21;
          v32 = v23;
          v65.origin.x = v25;
          v65.origin.y = v26;
          v65.size.width = v27;
          v65.size.height = v28;
          MinX = CGRectGetMinX(v65);
          if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
            goto LABEL_53;
          }

          if (MinX <= -9.22337204e18)
          {
            goto LABEL_54;
          }

          if (MinX >= 9.22337204e18)
          {
            goto LABEL_56;
          }

          v34 = &v32[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
          swift_beginAccess();
          v35 = CGRectGetMinX(*v34);

          if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_58;
          }

          if (v35 <= -9.22337204e18)
          {
            goto LABEL_61;
          }

          if (v35 >= 9.22337204e18)
          {
            goto LABEL_63;
          }

          if (v35 >= MinX)
          {
            break;
          }

          v36 = v18;
          v4 = v18 + 1;
          v37 = v15;
          v14 = v16;
          if (v15 != v18)
          {
            goto LABEL_22;
          }

LABEL_23:
          __src = (v37 + 8);
          if (v4 >= v64 || v14 >= __dst)
          {
            goto LABEL_48;
          }
        }

        v36 = v16;
        v14 = v16 + 1;
        v37 = v15;
        v4 = v18;
        if (v15 == v16)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v37 = *v36;
        goto LABEL_23;
      }
    }

    goto LABEL_48;
  }

  v61 = __src;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    v38 = a2;
    memmove(a4, a2, 8 * v11);
    a2 = v38;
  }

  __src = a2;
  v64 = &v4[v11];
  if (v9 < 8 || a2 <= v61)
  {
LABEL_48:
    if (__src != v4 || __src >= (v4 + ((v64 - v4 + (v64 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(__src, v4, 8 * (v64 - v4));
    }

    return;
  }

LABEL_31:
  __dsta = __src;
  v39 = __src - 1;
  --v5;
  v40 = v64;
  while (1)
  {
    v41 = v4;
    v42 = *--v40;
    v43 = v39;
    v44 = *v39;
    v45 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v46 = *&v42[v45];
    v47 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v48 = *&v44[v47];
    v49 = &v46[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v50 = *v49;
    v51 = v49[1];
    v52 = v49[2];
    v53 = v49[3];
    v54 = v42;
    v55 = v44;
    v56 = v46;
    v57 = v48;
    v66.origin.x = v50;
    v66.origin.y = v51;
    v66.size.width = v52;
    v66.size.height = v53;
    v58 = CGRectGetMinX(v66);
    if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v58 <= -9.22337204e18)
    {
      goto LABEL_55;
    }

    if (v58 >= 9.22337204e18)
    {
      goto LABEL_57;
    }

    v59 = &v57[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v60 = CGRectGetMinX(*v59);

    if ((*&v60 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    if (v60 <= -9.22337204e18)
    {
      goto LABEL_60;
    }

    if (v60 >= 9.22337204e18)
    {
      goto LABEL_62;
    }

    if (v60 >= v58)
    {
      v4 = v41;
      if (v5 + 1 != __dsta)
      {
        *v5 = *v43;
      }

      if (v64 <= v41 || (__src = v43, v43 <= v61))
      {
        __src = v43;
        goto LABEL_48;
      }

      goto LABEL_31;
    }

    v4 = v41;
    if (v5 + 1 != v64)
    {
      *v5 = *v40;
    }

    --v5;
    v64 = v40;
    v39 = v43;
    if (v40 <= v41)
    {
      v64 = v40;
      __src = __dsta;
      goto LABEL_48;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

uint64_t sub_27029F798(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v23 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v23 > v6)
    {
      v37 = v6;
LABEL_27:
      v38 = v23;
      v24 = v23 - 8;
      v25 = v5 - 8;
      v26 = v14;
      do
      {
        v27 = v14;
        v28 = v25;
        v29 = v25 + 8;
        v30 = *(v26 - 1);
        v26 -= 8;
        v31 = v24;
        v32 = *v24;
        v33 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v34 = *(*(v30 + v33) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
        v35 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*(v32 + v35) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) < v34)
        {
          v5 = v28;
          if (v29 != v38)
          {
            *v28 = *v31;
          }

          v14 = v27;
          if (v27 <= v4 || (v23 = v31, v31 <= v37))
          {
            v23 = v31;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v29 != v27)
        {
          *v28 = *v26;
        }

        v25 = v28 - 8;
        v14 = v26;
        v24 = v31;
      }

      while (v26 > v4);
      v14 = v26;
      v23 = v38;
    }
  }

  else
  {
    v13 = __src;
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = v5;
        v16 = *v13;
        v17 = *v4;
        v18 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v19 = *(*(v16 + v18) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence);
        v20 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*(v17 + v20) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence) >= v19)
        {
          break;
        }

        v21 = v13;
        v22 = v6 == v13;
        v13 += 8;
        if (!v22)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 8;
        if (v4 < v14)
        {
          v5 = v15;
          if (v13 < v15)
          {
            continue;
          }
        }

        goto LABEL_19;
      }

      v21 = v4;
      v22 = v6 == v4;
      v4 += 8;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v21;
      goto LABEL_17;
    }

LABEL_19:
    v23 = v6;
  }

LABEL_38:
  if (v23 != v4 || v23 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_27029FAB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*v17 < v21)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void sub_27029FCA4(char *__dst, char *__src, char *a3, char *a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[8 * v11];
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
LABEL_67:
      if (v7 != v5 || v7 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(v7, v5, 8 * ((v15 - v5) / 8));
      }

      return;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = *v7;
      v19 = *v5;
      v20 = *a5;
      if ((*a5 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x27439C0F0](v18);
      }

      else
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_72;
        }

        if (v18 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v21 = *(v20 + 8 * v18 + 32);
      }

      v22 = v21;
      v23 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v24 = *&v22[v23];

      v25 = *a5;
      if ((*a5 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x27439C0F0](v19);
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_76;
        }

        if (v19 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v26 = *(v25 + 8 * v19 + 32);
      }

      v27 = v26;
      v28 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v29 = *&v27[v28];

      v30 = &v24[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      MinX = CGRectGetMinX(*v30);
      if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_78;
      }

      if (MinX <= -9.22337204e18)
      {
        goto LABEL_82;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_84;
      }

      v32 = &v29[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v33 = CGRectGetMinX(*v32);

      if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_85;
      }

      if (v33 <= -9.22337204e18)
      {
        goto LABEL_87;
      }

      if (v33 >= 9.22337204e18)
      {
        goto LABEL_90;
      }

      if (v33 >= MinX)
      {
        break;
      }

      v16 = v5;
      v17 = v8 == v5;
      v5 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 8;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v7;
    v17 = v8 == v7;
    v7 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v16;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v14] <= a4)
  {
    memmove(a4, __src, 8 * v14);
  }

  v15 = &v5[8 * v14];
  if (v12 < 8 || v7 <= v8)
  {
    goto LABEL_67;
  }

LABEL_40:
  v34 = (v7 - 8);
  v6 -= 8;
  v35 = v15;
  v53 = v7 - 8;
  while (1)
  {
    v37 = *(v35 - 1);
    v35 -= 8;
    v36 = v37;
    v38 = *v34;
    v39 = *a5;
    if ((*a5 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x27439C0F0](v36);
      goto LABEL_46;
    }

    if ((v36 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v36 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_73;
    }

    v40 = *(v39 + 8 * v36 + 32);
LABEL_46:
    v41 = v40;
    v42 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v43 = *&v41[v42];

    v44 = *a5;
    if ((*a5 & 0xC000000000000001) != 0)
    {
      v45 = MEMORY[0x27439C0F0](v38);
    }

    else
    {
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      if (v38 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_80;
      }

      v45 = *(v44 + 8 * v38 + 32);
    }

    v46 = v45;
    v47 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v48 = *&v46[v47];

    v49 = &v43[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v50 = CGRectGetMinX(*v49);
    if ((*&v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_77;
    }

    if (v50 <= -9.22337204e18)
    {
      goto LABEL_81;
    }

    if (v50 >= 9.22337204e18)
    {
      goto LABEL_83;
    }

    v51 = &v48[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v52 = CGRectGetMinX(*v51);

    if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_86;
    }

    if (v52 <= -9.22337204e18)
    {
      goto LABEL_88;
    }

    if (v52 >= 9.22337204e18)
    {
      goto LABEL_89;
    }

    if (v52 >= v50)
    {
      if (v6 + 8 != v7)
      {
        *v6 = *v53;
      }

      if (v15 <= v5 || (v7 -= 8, v53 <= v8))
      {
        v7 = v53;
        goto LABEL_67;
      }

      goto LABEL_40;
    }

    v34 = (v7 - 8);
    if (v6 + 8 != v15)
    {
      *v6 = *v35;
    }

    v6 -= 8;
    v15 = v35;
    if (v35 <= v5)
    {
      v15 = v35;
      goto LABEL_67;
    }
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
}

uint64_t sub_2702A02A4(uint64_t a1)
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

  sub_2702B45FC();
LABEL_9:
  result = sub_2702B44FC();
  *v1 = result;
  return result;
}

uint64_t sub_2702A039C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_2702B45FC();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2702A046C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2702B45FC();
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
      result = sub_2702B45FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270259914(&qword_2807C8BF0, &qword_2807C8BE8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8BE8);
            v9 = sub_2702B2CB0(v13, i, a3);
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
        type metadata accessor for CenterNetPrediction();
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

uint64_t sub_2702A0610(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2702B45FC();
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
      result = sub_2702B45FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270259914(&qword_2807C8720, &qword_2807C8718);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8718);
            v9 = sub_2702B2D30(v13, i, a3);
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
        type metadata accessor for UIObject();
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

uint64_t sub_2702A07B4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2702B45FC();
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
      result = sub_2702B45FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270259914(&qword_2807C8C28, &qword_2807C8C20);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8C20);
            v9 = sub_2702B2D30(v13, i, a3);
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
        type metadata accessor for UIFingerprintingDetectionInfo();
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

uint64_t sub_2702A0958(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2702B45FC();
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
      result = sub_2702B45FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270259914(&qword_2807C8C18, &qword_2807C8770);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8770);
            v9 = sub_2702B2DB0(v13, i, a3);
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
        type metadata accessor for DedupeElement();
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

uint64_t sub_2702A0AFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2702B45FC();
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
      result = sub_2702B45FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270259914(&qword_2807C8C10, &qword_2807C8C08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8C08);
            v9 = sub_2702B2E38(v13, i, a3);
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
        type metadata accessor for UIUnderstandingModel();
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

uint64_t sub_2702A0CA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2702B45FC();
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
      result = sub_2702B45FC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_270259914(&qword_2807C8C00, &qword_2807C8BF8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8BF8);
            v9 = sub_2702B2CB0(v13, i, a3);
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
        type metadata accessor for OCRDetection();
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

uint64_t _s15UIUnderstanding10UIUGrouperC17removeTextInIcons10detectionsSayAA8UIObjectCGAH_tF_0(unint64_t a1)
{
  v2 = a1;
  if (a1 >> 62)
  {
    v36 = sub_2702B45FC();
    if (v36 < 0)
    {
      __break(1u);
    }

    v3 = v36;
    v105 = v2;
    if (v36)
    {
      goto LABEL_3;
    }

LABEL_43:

    v35 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v105 = a1;
  if (!v3)
  {
    goto LABEL_43;
  }

LABEL_3:
  v4 = v2;
  v5 = v2 & 0xC000000000000001;
  if (v5)
  {

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v10 = MEMORY[0x27439C0F0](v6, v105);
      v11 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v12 = *(v10 + v11);
      swift_unknownObjectRelease();
      v13 = *&v12[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];

      if (v13 == 4)
      {
        v14 = v7;
        v108 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27029C420(0, *(v7 + 16) + 1, 1);
          v14 = v108;
        }

        v9 = *(v14 + 16);
        v8 = *(v14 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_27029C420((v8 > 1), v9 + 1, 1);
          v14 = v108;
        }

        *(v14 + 16) = v9 + 1;
        v7 = v14;
        *(v14 + 8 * v9 + 32) = v6;
      }

      ++v6;
    }

    while (v3 != v6);
  }

  else
  {
    v15 = v4 + 32;

    v16 = 0;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v19 = *(v15 + 8 * v16);
      v20 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*(v19 + v20) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 4)
      {
        v21 = v7;
        v108 = v7;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27029C420(0, *(v7 + 16) + 1, 1);
          v21 = v108;
        }

        v18 = *(v21 + 16);
        v17 = *(v21 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_27029C420((v17 > 1), v18 + 1, 1);
          v21 = v108;
        }

        *(v21 + 16) = v18 + 1;
        v7 = v21;
        *(v21 + 8 * v18 + 32) = v16;
      }

      ++v16;
    }

    while (v3 != v16);
  }

  if (v5)
  {
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = v23;
      v25 = MEMORY[0x27439C0F0](v22, v105);
      v26 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v1 = *(v25 + v26);
      swift_unknownObjectRelease();
      v27 = *&v1[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];

      if (v27 == 10)
      {
        v23 = v24;
        v108 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27029C420(0, *(v24 + 16) + 1, 1);
          v23 = v108;
        }

        v29 = *(v23 + 16);
        v28 = *(v23 + 24);
        v1 = (v29 + 1);
        if (v29 >= v28 >> 1)
        {
          sub_27029C420((v28 > 1), v29 + 1, 1);
          v23 = v108;
        }

        *(v23 + 16) = v1;
        *(v23 + 8 * v29 + 32) = v22;
      }

      else
      {
        v23 = v24;
      }

      ++v22;
    }

    while (v3 != v22);
  }

  else
  {
    v30 = 0;
    v23 = MEMORY[0x277D84F90];
    do
    {
      v31 = v23;
      v32 = *(v105 + 32 + 8 * v30);
      v1 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      if (*(*&v1[v32] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
      {
        v23 = v31;
        v108 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27029C420(0, *(v31 + 16) + 1, 1);
          v23 = v108;
        }

        v34 = *(v23 + 16);
        v33 = *(v23 + 24);
        v1 = (v34 + 1);
        if (v34 >= v33 >> 1)
        {
          sub_27029C420((v33 > 1), v34 + 1, 1);
          v23 = v108;
        }

        *(v23 + 16) = v1;
        *(v23 + 8 * v34 + 32) = v30;
      }

      else
      {
        v23 = v31;
      }

      ++v30;
    }

    while (v3 != v30);
  }

  v2 = v105;
  v35 = v7;
LABEL_44:
  v109 = MEMORY[0x277D84FA0];
  v98 = *(v23 + 16);
  if (v98)
  {
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    v39 = *(v35 + 16);
    v99 = v39;
    v100 = v23 + 32;
    v106 = v2 & 0xC000000000000001;
    v102 = v2 + 32;
    v103 = v2 & 0xFFFFFFFFFFFFFF8;
    v96 = (v35 + 32);
    v97 = v23;
    while (v37 < *(v23 + 16))
    {
      v40 = *(v100 + 8 * v37);
      v101 = v37;
      v104 = v40;
      if (v106)
      {
        v41 = MEMORY[0x27439C0F0]();
      }

      else
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        if (v40 >= *(v103 + 16))
        {
          goto LABEL_127;
        }

        v41 = *(v102 + 8 * v40);
      }

      v42 = v41;
      v108 = v38;
      if (v39)
      {
        v43 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v44 = v96;
        while (1)
        {
          v46 = *v44++;
          v45 = v46;
          if (v106)
          {
            v47 = MEMORY[0x27439C0F0](v45, v105);
          }

          else
          {
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_114;
            }

            if (v45 >= *(v103 + 16))
            {
              goto LABEL_115;
            }

            v47 = *(v102 + 8 * v45);
          }

          v48 = v47;
          v49 = *&v42[v43];
          v50 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v51 = *&v48[v50];
          v52 = v49;
          v53 = v51;
          v54 = sub_270298280(v53, 0.7);

          if (v54)
          {
            sub_2702AE344(v107, v104);
          }

          v55 = *&v42[v43];
          v56 = *&v48[v50];
          v1 = v55;
          v57 = sub_270298280(v1, 0.7);

          if (v57)
          {
            v1 = v48;
            MEMORY[0x27439BDA0]();
            if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2702B41CC();
            }

            sub_2702B41EC();

            v38 = v108;
            if (!--v39)
            {
              break;
            }
          }

          else
          {

            if (!--v39)
            {
              break;
            }
          }
        }
      }

      if (v38 >> 62)
      {
        v58 = sub_2702B45FC();
        v39 = v99;
        if (v58)
        {
LABEL_69:
          if (v58 < 1)
          {
            goto LABEL_125;
          }

          v59 = 0;
          v60 = 0.0;
          while (1)
          {
            v61 = (v38 & 0xC000000000000001) != 0 ? MEMORY[0x27439C0F0](v59, v38) : *(v38 + 8 * v59 + 32);
            v62 = v61;
            v63 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v64 = *&v62[v63];
            v65 = &v64[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
            swift_beginAccess();
            x = v65->origin.x;
            y = v65->origin.y;
            width = v65->size.width;
            height = v65->size.height;
            v1 = v64;
            v110.origin.x = x;
            v110.origin.y = y;
            v110.size.width = width;
            v110.size.height = height;
            v70 = CGRectGetWidth(v110);
            if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v70 <= -9.22337204e18)
            {
              goto LABEL_108;
            }

            if (v70 >= 9.22337204e18)
            {
              goto LABEL_109;
            }

            v71 = CGRectGetHeight(*v65);

            if ((*&v71 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_110;
            }

            if (v71 <= -9.22337204e18)
            {
              goto LABEL_111;
            }

            if (v71 >= 9.22337204e18)
            {
              goto LABEL_112;
            }

            v72 = v70 * v71;
            if ((v70 * v71) >> 64 != v72 >> 63)
            {
              goto LABEL_113;
            }

            ++v59;
            v60 = v60 + v72;
            if (v58 == v59)
            {
              goto LABEL_85;
            }
          }

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
          goto LABEL_116;
        }
      }

      else
      {
        v58 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v39 = v99;
        if (v58)
        {
          goto LABEL_69;
        }
      }

      v60 = 0.0;
LABEL_85:

      v73 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v74 = *&v42[v73];
      v75 = &v74[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      swift_beginAccess();
      v76 = v75->origin.x;
      v77 = v75->origin.y;
      v78 = v75->size.width;
      v79 = v75->size.height;
      v1 = v74;
      v111.origin.x = v76;
      v111.origin.y = v77;
      v111.size.width = v78;
      v111.size.height = v79;
      v80 = CGRectGetWidth(v111);
      if ((*&v80 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_118;
      }

      if (v80 <= -9.22337204e18)
      {
        goto LABEL_119;
      }

      if (v80 >= 9.22337204e18)
      {
        goto LABEL_120;
      }

      v81 = CGRectGetHeight(*v75);

      if ((*&v81 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_121;
      }

      if (v81 <= -9.22337204e18)
      {
        goto LABEL_122;
      }

      if (v81 >= 9.22337204e18)
      {
        goto LABEL_123;
      }

      v82 = v80 * v81;
      if ((v80 * v81) >> 64 != v82 >> 63)
      {
        goto LABEL_124;
      }

      if (v60 > v82)
      {
        sub_2702AE344(v107, v104);
      }

      v38 = MEMORY[0x277D84F90];
      v37 = v101 + 1;
      v2 = v105;
      v23 = v97;
      if (v101 + 1 == v98)
      {
        goto LABEL_94;
      }
    }

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
    goto LABEL_128;
  }

LABEL_94:

  v83 = v109;
  v84 = *(v109 + 16);
  if (!v84)
  {
    v1 = MEMORY[0x277D84F90];
    goto LABEL_98;
  }

  v1 = sub_27027390C(*(v109 + 16), 0);
  v85 = sub_270273A9C(&v108, v1 + 4, v84, v83);

  sub_27027494C();
  if (v85 == v84)
  {
    v2 = v105;
LABEL_98:
    v108 = v1;
    sub_27029C7AC(&v108);

    v86 = *(v108 + 16);
    if (!v86)
    {
LABEL_106:

      return v2;
    }

    v1 = (v108 + 32);
    while (1)
    {
      v88 = *v1;
      v1 += 8;
      v87 = v88;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
      {
        v2 = sub_27029C8E0(v2);
      }

      v89 = v2 & 0xFFFFFFFFFFFFFF8;
      v90 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v87 >= v90)
      {
        break;
      }

      v91 = v2;
      v92 = v90 - 1;
      v93 = v89 + 8 * v87;
      v94 = *(v93 + 32);
      memmove((v93 + 32), (v93 + 40), 8 * (v90 - 1 - v87));
      *(v89 + 16) = v92;
      v2 = v91;

      if (!--v86)
      {
        goto LABEL_106;
      }
    }

LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_128:
  __break(1u);

  __break(1u);
  return result;
}

void sub_2702A1930(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v86 = a2;
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = a2 & 0xC000000000000001;
    v93 = a2 + 32;
    v95 = a2 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v6 = (a1 + 32);
    v7 = *(a1 + 16);
    do
    {
      v11 = *v6++;
      v10 = v11;
      if (v4)
      {
        v12 = MEMORY[0x27439C0F0](v10, v86);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        if (v10 >= *(v95 + 16))
        {
          goto LABEL_64;
        }

        v12 = *(v93 + 8 * v10);
      }

      v13 = v12;
      v14 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v15 = *&v13[v14];

      v16 = *&v15[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];
      if (v16 == 4)
      {
        v17 = v5;
        v97 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_27029C420(0, *(v5 + 16) + 1, 1);
          v17 = v5;
        }

        v9 = *(v17 + 16);
        v8 = *(v17 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_27029C420((v8 > 1), v9 + 1, 1);
          v17 = v97;
        }

        *(v17 + 16) = v9 + 1;
        *(v17 + 8 * v9 + 32) = v10;
        v5 = v17;
      }

      --v7;
    }

    while (v7);
    v18 = v5;
    v19 = MEMORY[0x277D84F90];
    do
    {
      while (1)
      {
        v21 = *v3++;
        v20 = v21;
        if (v4)
        {
          v22 = v19;
          v23 = MEMORY[0x27439C0F0](v20, v86);
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_65;
          }

          if (v20 >= *(v95 + 16))
          {
            goto LABEL_66;
          }

          v22 = v19;
          v23 = *(v93 + 8 * v20);
        }

        v24 = v23;
        v25 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        v26 = *&v24[v25];

        v27 = *&v26[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label];
        if (v27 == 10)
        {
          break;
        }

        v19 = v22;
        if (!--v2)
        {
          goto LABEL_28;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27029C420(0, *(v22 + 16) + 1, 1);
        v19 = v22;
      }

      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_27029C420((v29 > 1), v30 + 1, 1);
        v19 = v22;
      }

      *(v19 + 16) = v30 + 1;
      *(v19 + 8 * v30 + 32) = v20;
      --v2;
    }

    while (v2);
LABEL_28:
    v77 = v19;
    a2 = v86;
    v31 = v18;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
    v77 = MEMORY[0x277D84F90];
  }

  v80 = *(v31 + 16);
  if (v80)
  {
    v32 = 0;
    v81 = *(v77 + 16);
    v88 = a2 & 0xC000000000000001;
    v85 = a2 & 0xFFFFFFFFFFFFFF8;
    v78 = v31 + 32;
    v83 = a2 + 32;
    v84 = MEMORY[0x277D84F90];
    v79 = v31;
    while (1)
    {
      if (v32 >= *(v31 + 16))
      {
        goto LABEL_60;
      }

      v82 = v32;
      if (v81)
      {
        break;
      }

LABEL_32:
      v32 = v82 + 1;
      v31 = v79;
      if (v82 + 1 == v80)
      {
        goto LABEL_57;
      }
    }

    v33 = *(v78 + 8 * v32);
    if (v88)
    {
      goto LABEL_38;
    }

    if ((v33 & 0x8000000000000000) != 0)
    {
      goto LABEL_61;
    }

    if (v33 < *(v85 + 16))
    {
LABEL_38:
      v34 = (v77 + 32);
      v35 = v81;
      v87 = v33;
      while (1)
      {
        v36 = *v34;
        v96 = v34 + 1;
        if (v88)
        {
          v37 = MEMORY[0x27439C0F0]();
          v38 = MEMORY[0x27439C0F0](v36, v86);
        }

        else
        {
          if ((v36 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
            break;
          }

          if (v36 >= *(v85 + 16))
          {
            goto LABEL_59;
          }

          v39 = *(v83 + 8 * v36);
          v37 = *(v83 + 8 * v33);
          v38 = v39;
        }

        v40 = v38;
        v41 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v42 = *&v40[v41];
        v43 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v44 = *&v37[v43];
        v45 = &v42[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v46 = *v45;
        v47 = v45[1];
        v48 = v45[2];
        v49 = v45[3];
        v50 = &v44[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v51 = *v50;
        v52 = v50[1];
        v53 = v50[2];
        v54 = v50[3];
        v55 = v42;
        v56 = v44;
        r2_24 = v47;
        v94 = v46;
        v98.origin.x = v46;
        v98.origin.y = v47;
        r2_8 = v49;
        r2_16 = v48;
        v98.size.width = v48;
        v98.size.height = v49;
        r2 = v51;
        v104.origin.x = v51;
        v104.origin.y = v52;
        v104.size.width = v53;
        v104.size.height = v54;
        v99 = CGRectUnion(v98, v104);
        x = v99.origin.x;
        y = v99.origin.y;
        width = v99.size.width;
        height = v99.size.height;
        v61 = CGRectGetHeight(v99);
        v100.origin.x = x;
        v100.origin.y = y;
        v100.size.width = width;
        v100.size.height = height;
        v62 = v61 * CGRectGetWidth(v100);
        if (v62 == 0.0)
        {
        }

        else
        {
          v101.origin.y = r2_24;
          v101.origin.x = v94;
          v101.size.height = r2_8;
          v101.size.width = r2_16;
          v105.origin.x = r2;
          v105.origin.y = v52;
          v105.size.width = v53;
          v105.size.height = v54;
          v102 = CGRectIntersection(v101, v105);
          v63 = v102.origin.x;
          v64 = v102.origin.y;
          v65 = v102.size.width;
          v66 = v102.size.height;
          v67 = CGRectGetHeight(v102);
          v103.origin.x = v63;
          v103.origin.y = v64;
          v103.size.width = v65;
          v103.size.height = v66;
          v68 = CGRectGetWidth(v103);

          v69 = v67 * v68 / v62;
          if (v69 > 0.0)
          {
            v70 = *&v37[v43];
            v71 = *&v40[v41];
            v72 = v70;
            v73 = sub_270298280(v72, 0.7);

            if (v73)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v74 = v84;
              }

              else
              {
                v74 = sub_270290FF4(0, *(v84 + 2) + 1, 1, v84);
              }

              v76 = *(v74 + 2);
              v75 = *(v74 + 3);
              v84 = v74;
              if (v76 >= v75 >> 1)
              {
                v84 = sub_270290FF4((v75 > 1), v76 + 1, 1, v74);
              }

              *(v84 + 2) = v76 + 1;
              *&v84[8 * v76 + 32] = v36;
              goto LABEL_54;
            }
          }
        }

LABEL_54:
        v33 = v87;
        v34 = v96;
        if (!--v35)
        {
          goto LABEL_32;
        }
      }
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
  }

  else
  {
LABEL_57:
  }
}

char *sub_2702A1FA4(unint64_t a1, uint64_t a2)
{
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_34:
    v4 = sub_2702B45FC();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x27439C0F0](v6, a1);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          goto LABEL_33;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v11 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v12 = *&v9[v11];
      if (*(v12 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == a2 && (v13 = v12 + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text, swift_beginAccess(), *(v13 + 8)))
      {
        sub_2702B454C();
        sub_2702B457C();
        v7 = a1 & 0xFFFFFFFFFFFFFF8;
        sub_2702B458C();
        sub_2702B455C();
      }

      else
      {
      }

      ++v6;
    }

    while (v10 != v4);
    v14 = v29;
    v5 = MEMORY[0x277D84F90];
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_18:
  if ((v14 & 0x4000000000000000) != 0)
  {
LABEL_35:
    v15 = sub_2702B45FC();
    if (!v15)
    {
      goto LABEL_36;
    }

    goto LABEL_20;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_36:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C86B8);
    sub_270259914(&qword_2807C86C0, &qword_2807C86B8);
    v28 = sub_2702B3FBC();

    return v28;
  }

LABEL_20:
  result = sub_27029C440(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v17 = 0;
    v18 = v5;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x27439C0F0](v17, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = OBJC_IVAR___UIObjectCompat_detection;
      swift_beginAccess();
      v22 = (*&v20[v21] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text);
      swift_beginAccess();
      v23 = v22[1];
      if (v23)
      {
        v24 = *v22;
      }

      else
      {
        v24 = 0;
        v23 = 0xE000000000000000;
      }

      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_27029C440((v25 > 1), v26 + 1, 1);
      }

      ++v17;
      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
    }

    while (v15 != v17);
    goto LABEL_36;
  }

  __break(1u);
  return result;
}

void sub_2702A233C(unint64_t a1)
{
  v1 = _s15UIUnderstanding9UIUSorterC25getXCutSegmentationPoints10detectionsSDySdSayAA8UIObjectCGGAH_tFZ_0(a1);
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v7;
LABEL_11:
    v7 = (v10 - 1) & v10;
    if (*(v2 + 16))
    {
      sub_27025E694(*(*(v2 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v10))))));
      if (v12)
      {

        v14 = sub_2702A1FA4(v13, 10);
        v16 = v15;
        v62 = v14;
        if (!sub_2702B40CC())
        {

          v62 = sub_2702A1FA4(v13, 4);
          v16 = v17;
        }

        v60 = v7;
        v18 = v13;
        v19 = (v13 >> 62);
        if (v13 >> 62)
        {
          v58 = sub_2702B45FC();
          v19 = (v13 >> 62);
          v18 = v13;
          v20 = v58;
        }

        else
        {
          v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v68 = v18;
        v61 = v16;
        if (v20)
        {
          v65 = v19;
          v72 = v3;
          sub_2702B456C();
          if (v20 < 0)
          {
            goto LABEL_48;
          }

          v21 = 0;
          v18 = v13;
          v22 = v13 & 0xC000000000000001;
          v23 = v20;
          do
          {
            if (v22)
            {
              v24 = MEMORY[0x27439C0F0](v21);
            }

            else
            {
              v24 = *(v18 + 8 * v21 + 32);
            }

            v25 = v24;
            ++v21;
            v26 = OBJC_IVAR___UIObjectCompat_boundingBox;
            swift_beginAccess();
            v27 = *&v25[v26];

            sub_2702B454C();
            sub_2702B457C();
            sub_2702B458C();
            sub_2702B455C();
            v18 = v68;
          }

          while (v23 != v21);
          v59 = v72;
          v28 = v68 & 0xFFFFFFFFFFFFFF8;
          if (!v65)
          {
LABEL_25:
            v29 = *(v28 + 16);
            if (v29)
            {
              goto LABEL_29;
            }

            goto LABEL_39;
          }
        }

        else
        {
          v59 = v3;
          v28 = v18 & 0xFFFFFFFFFFFFFF8;
          if (!v19)
          {
            goto LABEL_25;
          }
        }

        v30 = v18;
        v31 = sub_2702B45FC();
        v18 = v30;
        v29 = v31;
        if (v31)
        {
LABEL_29:
          v32 = 0;
          v63 = v18 & 0xFFFFFFFFFFFFFF8;
          v66 = (v18 & 0xC000000000000001);
          do
          {
            if (v66)
            {
              v33 = MEMORY[0x27439C0F0](v32);
            }

            else
            {
              if (v32 >= *(v63 + 16))
              {
                goto LABEL_47;
              }

              v33 = *(v18 + 8 * v32 + 32);
            }

            v34 = v33;
            v35 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_46;
            }

            v36 = OBJC_IVAR___UIObjectCompat_focusDetection;
            swift_beginAccess();
            v37 = *&v34[v36];
            v38 = v37;

            if (v37)
            {
              v39 = v38[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused];

              if (v39 == 1)
              {
                v64 = 1;
                goto LABEL_40;
              }
            }

            ++v32;
            v18 = v68;
          }

          while (v35 != v29);
        }

LABEL_39:
        v64 = 0;
LABEL_40:
        _s15UIUnderstanding11BoundingBoxC09getMergedbC0yACSayACGFZ_0(v59);
        v41 = v40;

        v67 = objc_allocWithZone(type metadata accessor for UIObject());
        v42 = type metadata accessor for UIDetection();
        v43 = objc_allocWithZone(v42);
        v44 = &v43[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_text];
        *v44 = 0;
        v44[1] = 0;
        *&v43[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_vfeature] = 0;
        *&v43[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label] = 14;
        *&v43[OBJC_IVAR____TtC15UIUnderstanding11UIDetection_confidence] = 0x3FF0000000000000;
        swift_beginAccess();
        *v44 = v62;
        v44[1] = v61;
        v71.receiver = v43;
        v71.super_class = v42;
        v45 = v41;
        v46 = objc_msgSendSuper2(&v71, sel_init);
        v47 = type metadata accessor for ClickabilityDetection();
        v48 = objc_allocWithZone(v47);
        v48[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickable] = 0;
        *&v48[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_clickType] = -1;
        *&v48[OBJC_IVAR____TtC15UIUnderstanding21ClickabilityDetection_confidence] = 0;
        v70.receiver = v48;
        v70.super_class = v47;
        v49 = objc_msgSendSuper2(&v70, sel_init);
        v50 = type metadata accessor for FocusDetection();
        v51 = objc_allocWithZone(v50);
        v51[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_focused] = v64;
        *&v51[OBJC_IVAR____TtC15UIUnderstanding14FocusDetection_confidence] = 0;
        v69.receiver = v51;
        v69.super_class = v50;
        v52 = objc_msgSendSuper2(&v69, sel_init);
        v53 = v49;
        v54 = sub_2702B41AC();

        v55 = v46;
        v56 = [v67 initWithDetection:v46 clickable:v53 focused:v52 icon:0 boundingBox:v45 children:v54];

        v57 = v56;
        MEMORY[0x27439BDA0]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2702B41CC();
        }

        sub_2702B41EC();

        v3 = MEMORY[0x277D84F90];
        v7 = v60;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v10 = *(v4 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_2702A28E0(uint64_t a1, CGRect *a2, uint64_t *a3)
{

  v101[0] = sub_2702A039C(v9, sub_270274D50, sub_2702A0610);
  i = 0;
  sub_27029C4E0(v101);
  v11 = v101[0];
  v12 = (v101[0] >> 62) & 1;
  if ((v101[0] & 0x8000000000000000) != 0)
  {
    LODWORD(v12) = 1;
  }

  v93 = v12;
  if (v12)
  {
    goto LABEL_135;
  }

  v3 = *(v101[0] + 16);
LABEL_5:
  v4 = a2;
  v5 = a3;
  v98 = v11;
  v94 = v3;
  if (v3)
  {
    v92 = a1;
    i = 0;
    a1 = 0;
    v97 = v11 & 0xC000000000000001;
    v13 = &OBJC_IVAR___UIObjectCompat_boundingBox;
    while (1)
    {
      v24 = v97 ? MEMORY[0x27439C0F0](a1, v11) : *(v11 + 8 * a1 + 32);
      v25 = v24;
      v3 = *v13;
      swift_beginAccess();
      a2 = (*&v25[v3] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      MinY = CGRectGetMinY(*a2);
      if ((*&MinY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (MinY <= -9.22337204e18)
      {
        goto LABEL_98;
      }

      if (MinY >= 9.22337204e18)
      {
        goto LABEL_99;
      }

      if (a3 >= MinY)
      {
        a3 = MinY;
      }

      v27 = *&v25[v3];
      sub_270297DA0();
      v11 = v28;

      if (v11 > i)
      {
        i = v11;
      }

      a2 = (*&v25[v3] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      MinX = CGRectGetMinX(*a2);
      if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_100;
      }

      if (MinX <= -9.22337204e18)
      {
        goto LABEL_101;
      }

      if (MinX >= 9.22337204e18)
      {
        goto LABEL_102;
      }

      v30 = MinX - 20;
      if (__OFSUB__(MinX, 20))
      {
        goto LABEL_103;
      }

      a2 = (*&v25[v3] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v31 = CGRectGetMinY(*a2);
      if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_104;
      }

      if (v31 <= -9.22337204e18)
      {
        goto LABEL_105;
      }

      if (v31 >= 9.22337204e18)
      {
        goto LABEL_106;
      }

      v95 = a3;
      v96 = i;
      a3 = v13;
      v32 = v31 - 20;
      if (__OFSUB__(v31, 20))
      {
        goto LABEL_107;
      }

      i = a1;
      a2 = *&v25[v3];
      sub_270297D74();
      v11 = v33;

      a1 = v11 + 20;
      if (__OFADD__(v11, 20))
      {
        goto LABEL_108;
      }

      a2 = *&v25[v3];
      sub_270297DA0();
      v11 = v34;

      v35 = v11 + 20;
      if (__OFADD__(v11, 20))
      {
        goto LABEL_109;
      }

      v3 = a1 - v30;
      if (__OFSUB__(a1, v30))
      {
        goto LABEL_110;
      }

      v11 = v35 - v32;
      if (__OFSUB__(v35, v32))
      {
        goto LABEL_111;
      }

      if (v97)
      {
        v14 = MEMORY[0x27439C0F0](i, v98);
      }

      else
      {
        v14 = *(v98 + 8 * i + 32);
      }

      a2 = v14;
      v15 = v11;
      v16 = type metadata accessor for BoundingBox();
      v17 = objc_allocWithZone(v16);
      v18 = &v17[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      *v18 = v30;
      v18[1] = v32;
      v18[2] = v3;
      v18[3] = v15;
      v19 = &v17[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      *v19 = v4;
      v19[1] = v5;
      v100.receiver = v17;
      v100.super_class = v16;
      v20 = objc_msgSendSuper2(&v100, sel_init);

      v13 = a3;
      v21 = *a3;
      swift_beginAccess();
      v22 = *(&a2->origin.x + v21);
      *(&a2->origin.x + v21) = v20;

      a1 = i + 1;
      v3 = v94;
      a3 = v95;
      v23 = v94 == i + 1;
      v11 = v98;
      i = v96;
      if (v23)
      {
        a1 = v92;
        if ((v92 & 0x8000000000000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_137;
      }
    }

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
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  i = 0;
  if ((a1 & 0x8000000000000000) == 0)
  {
LABEL_36:
    if ((a1 & 0x4000000000000000) == 0)
    {
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
      {
        goto LABEL_138;
      }

      goto LABEL_38;
    }
  }

  while (1)
  {
LABEL_137:
    if (sub_2702B45FC() <= 1)
    {
LABEL_138:

      return a1;
    }

LABEL_38:
    if (!v3)
    {
      return v11;
    }

    v36 = (i + 20);
    if (__OFADD__(i, 20))
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);

      __break(1u);
LABEL_144:
      v3 = v90;
      goto LABEL_5;
    }

    v37 = __OFSUB__(v36, a3);
    v38 = v36 - a3;
    if (v37)
    {
      goto LABEL_143;
    }

    a1 = 0;
    v39 = a3;
    v40 = v38;
    v41 = v11 & 0xC000000000000001;
    for (i = v11 + 40; ; i += 8)
    {
      v50 = v41 ? MEMORY[0x27439C0F0](a1, v11) : *(i - 8);
      a3 = v50;
      v51 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v52 = *(a3 + v51);
      sub_270297D74();

      a2 = (*(a3 + v51) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v53 = CGRectGetMinX(*a2);
      if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v53 <= -9.22337204e18)
      {
        goto LABEL_113;
      }

      if (v53 >= 9.22337204e18)
      {
        goto LABEL_114;
      }

      v54 = (a1 + 1);
      if (a1)
      {
        if (v93)
        {
          v55 = sub_2702B45FC();
        }

        else
        {
          v55 = *(v11 + 16);
        }

        v59 = v55 - 1;
        if (__OFSUB__(v55, 1))
        {
          goto LABEL_116;
        }

        v60 = (a1 - 1);
        if (a1 == v59)
        {
          if (v41)
          {
            v61 = MEMORY[0x27439C0F0](v60, v11);
          }

          else
          {
            if (v60 >= *(v11 + 16))
            {
              __break(1u);
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v61 = *(i - 16);
          }

          v72 = v61;
          v3 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v73 = *&v72[v3];

          sub_270297D74();
          v71 = v74;

          v75 = *(a3 + v51);
          sub_270297D74();
          a2 = v76;

          v11 = *(a3 + v51) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
          swift_beginAccess();
          v77 = CGRectGetMinX(*v11);
          if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_126;
          }

          if (v77 <= -9.22337204e18)
          {
            goto LABEL_129;
          }

          if (v77 >= 9.22337204e18)
          {
            goto LABEL_131;
          }

          v78 = v77 - v71;
          if (__OFSUB__(v77, v71))
          {
            goto LABEL_133;
          }

          v3 = a2 + v78;
          if (__OFADD__(a2, v78))
          {
            goto LABEL_134;
          }
        }

        else
        {
          if (v41)
          {
            v62 = MEMORY[0x27439C0F0](v60, v11);
          }

          else
          {
            if (v60 >= *(v11 + 16))
            {
              goto LABEL_141;
            }

            v62 = *(i - 16);
          }

          v79 = v62;
          v80 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v81 = *&v79[v80];

          sub_270297D74();
          v71 = v82;

          v83 = *(a3 + v51);
          sub_270297D74();
          a2 = v84;

          if (v41)
          {
            v85 = MEMORY[0x27439C0F0](a1 + 1, v98);
          }

          else
          {
            v85 = *i;
          }

          v86 = v85;
          v87 = OBJC_IVAR___UIObjectCompat_boundingBox;
          swift_beginAccess();
          v88 = *&v86[v87];

          v11 = v88 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
          swift_beginAccess();
          v89 = CGRectGetMinX(*v11);
          v3 = *&v89;

          if ((*&v89 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_127;
          }

          if (v89 <= -9.22337204e18)
          {
            goto LABEL_128;
          }

          if (v89 >= 9.22337204e18)
          {
            goto LABEL_130;
          }

          if (__OFADD__(a2, v89))
          {
            goto LABEL_132;
          }

          v3 = (a2 + v89) / 2;
        }
      }

      else
      {
        v56 = *(a3 + v51);
        sub_270297D74();
        a2 = v57;

        if (v41)
        {
          v58 = MEMORY[0x27439C0F0](1, v11);
        }

        else
        {
          v58 = *i;
        }

        v63 = v58;
        v64 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v11 = *&v63[v64];

        v65 = (v11 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v66 = CGRectGetMinX(*v65);
        v3 = *&v66;

        if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_117;
        }

        if (v66 <= -9.22337204e18)
        {
          goto LABEL_118;
        }

        if (v66 >= 9.22337204e18)
        {
          goto LABEL_119;
        }

        v3 = a2 + v66;
        if (__OFADD__(a2, v66))
        {
          goto LABEL_120;
        }

        a2 = (*(a3 + v51) + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
        swift_beginAccess();
        v67 = CGRectGetMinX(*a2);
        if ((*&v67 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_121;
        }

        if (v67 <= -9.22337204e18)
        {
          goto LABEL_122;
        }

        if (v67 >= 9.22337204e18)
        {
          goto LABEL_123;
        }

        v3 /= 2;
        a2 = *(a3 + v51);
        sub_270297D74();
        v69 = v68;

        v70 = v3 - v69;
        if (__OFSUB__(v3, v69))
        {
          goto LABEL_124;
        }

        v71 = v67 - v70;
        if (__OFSUB__(v67, v70))
        {
          goto LABEL_125;
        }
      }

      v37 = __OFSUB__(v3, v71);
      v3 -= v71;
      v11 = v98;
      if (v37)
      {
        goto LABEL_115;
      }

      if (v41)
      {
        v42 = MEMORY[0x27439C0F0](a1, v98);
      }

      else
      {
        v42 = *(i - 8);
      }

      v43 = v42;
      v44 = type metadata accessor for BoundingBox();
      v45 = objc_allocWithZone(v44);
      v46 = &v45[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
      *v46 = v71;
      v46[1] = v39;
      v46[2] = v3;
      v46[3] = v40;
      v47 = &v45[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_imageSize];
      *v47 = v4;
      v47[1] = v5;
      v99.receiver = v45;
      v99.super_class = v44;
      v48 = objc_msgSendSuper2(&v99, sel_init);

      v3 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v49 = *&v43[v3];
      *&v43[v3] = v48;

      a1 = v54;
      if (v94 == v54)
      {
        return v11;
      }
    }

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
    v90 = sub_2702B45FC();
    if ((v90 & 0x8000000000000000) == 0)
    {
      goto LABEL_144;
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UIUDetector.preloadIconModel()()
{
  v2 = OBJC_IVAR___UIUDetectorCompat_iconDetector;
  if (!*(v0 + OBJC_IVAR___UIUDetectorCompat_iconDetector))
  {
    v3 = v0;
    if (qword_2807C8270 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_2807C8A70;
    v5 = sub_27028DEC8(0);

    if (!v1)
    {
      *(v3 + v2) = v5;
    }
  }
}

Swift::Void __swiftcall UIUDetector.addIconRecognitionResults(to:in:)(Swift::OpaquePointer to, CGImageRef in)
{
  v36 = MEMORY[0x27439C730]();
  v39 = MEMORY[0x277D84F90];
  if (to._rawValue >> 62)
  {
LABEL_17:
    v3 = sub_2702B45FC();
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = to._rawValue & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((to._rawValue & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x27439C0F0](v4, to._rawValue);
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            goto LABEL_16;
          }

          v6 = *(to._rawValue + v4 + 4);
        }

        v7 = v6;
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        v9 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*&v7[v9] + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 4)
        {
          sub_2702B454C();
          sub_2702B457C();
          v5 = to._rawValue & 0xFFFFFFFFFFFFFF8;
          sub_2702B458C();
          sub_2702B455C();
        }

        else
        {
        }

        ++v4;
      }

      while (v8 != v3);
      v10 = v39;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v3 = *((to._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  v10 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
  {
LABEL_19:
    if ((v10 & 0x4000000000000000) == 0)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        goto LABEL_21;
      }

      goto LABEL_35;
    }
  }

LABEL_34:
  while (1)
  {
    v11 = sub_2702B45FC();
    if (!v11)
    {
      break;
    }

LABEL_21:
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x27439C0F0](v12, v10);
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_33;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v17 = (*&v14[v16] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      x = v17->origin.x;
      MinY = CGRectGetMinY(*v17);
      v20 = (*&v14[v16] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      Width = CGRectGetWidth(*v20);
      v22 = (*&v14[v16] + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect);
      swift_beginAccess();
      v40.size.height = CGRectGetHeight(*v22);
      v40.origin.x = x;
      v40.origin.y = MinY;
      v40.size.width = Width;
      v23 = CGImageCreateWithImageInRect(in, v40);
      if (v23)
      {
        v24 = v23;
        UIUDetector.getIconRecognitionResult(_:)(v23);
        v26 = v25;
        v28 = v27;

        v29 = v28;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_2702B74D0;
        *(v30 + 56) = MEMORY[0x277D837D0];
        *(v30 + 32) = 0xD000000000000018;
        *(v30 + 40) = 0x80000002702BB4B0;
        sub_2702B485C();

        v29 = 0.0;
        v26 = 75;
      }

      v31 = type metadata accessor for IconDetection();
      v32 = objc_allocWithZone(v31);
      *&v32[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_label] = v26;
      *&v32[OBJC_IVAR____TtC15UIUnderstanding13IconDetection_confidence] = v29;
      v38.receiver = v32;
      v38.super_class = v31;
      v33 = objc_msgSendSuper2(&v38, sel_init, v36);
      v34 = OBJC_IVAR___UIObjectCompat_iconDetection;
      swift_beginAccess();
      v35 = *&v14[v34];
      *&v14[v34] = v33;

      ++v12;
      if (v15 == v11)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_35:

  objc_autoreleasePoolPop(v36);
}

float UIUDetector.getIconRecognitionResult(_:at:)(CGImage *a1, double a2, double a3, double a4, double a5)
{
  v5 = CGImageCreateWithImageInRect(a1, *&a2);
  if (v5)
  {
    v6 = v5;
    UIUDetector.getIconRecognitionResult(_:)(v5);
    v8 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8710);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2702B74D0;
    *(v9 + 56) = MEMORY[0x277D837D0];
    *(v9 + 32) = 0xD000000000000018;
    *(v9 + 40) = 0x80000002702BB4B0;
    sub_2702B485C();

    return 0.0;
  }

  return v8;
}

void UIUDetector.getIconRecognitionResult(_:)(void *a1)
{
  v44[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C83C0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - v6;
  v8 = OBJC_IVAR___UIUDetectorCompat_iconDetector;
  v9 = *(v1 + OBJC_IVAR___UIUDetectorCompat_iconDetector);
  if (!v9)
  {
    v37 = v1;
    if (qword_2807C8270 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v38 = qword_2807C8A70;
    v39 = sub_27028DEC8(0);

    if (v2)
    {
      return;
    }

    *(v37 + v8) = v39;

    v9 = *(v37 + v8);
    if (!v9)
    {
      return;
    }
  }

  v10 = objc_opt_self();
  v44[0] = 0;
  v11 = a1;

  v12 = [v10 featureValueWithCGImage:v11 pixelsWide:256 pixelsHigh:256 pixelFormatType:32 options:0 error:v44];
  if (!v12)
  {
    v40 = v44[0];

    sub_2702B3C0C();
    swift_willThrow();
LABEL_25:

    return;
  }

  v13 = v12;
  v43 = v5;
  v14 = v44[0];

  v15 = [v13 imageBufferValue];
  if (!v15)
  {
    __break(1u);
    goto LABEL_30;
  }

  type metadata accessor for IconClassificationInput();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  v11 = [objc_allocWithZone(MEMORY[0x277CBFF68]) init];
  v17 = *(v9 + 16);
  v44[0] = 0;
  v18 = [v17 predictionFromFeatures:v16 options:v11 error:v44];
  v19 = v44[0];
  if (!v18)
  {
    v41 = v44[0];
    sub_2702B3C0C();

    swift_willThrow();

    goto LABEL_25;
  }

  v20 = v18;
  type metadata accessor for IconClassificationOutput();
  *(swift_initStackObject() + 16) = v20;
  v21 = v19;

  v22 = sub_2702B3FFC();
  v23 = [v20 featureValueForName_];

  if (!v23)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v24 = [v23 multiArrayValue];

  v25 = v43;
  if (!v24)
  {
LABEL_31:
    __break(1u);
    return;
  }

  sub_2702B3DDC();
  sub_27025C614();
  v26 = sub_2702B3E2C();
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = *(v26 + 32);
    v29 = v27 - 1;
    if (v29)
    {
      v30 = (v26 + 36);
      v31 = *(v26 + 32);
      do
      {
        v32 = *v30++;
        v33 = v32;
        if (v31 < v32)
        {
          v28 = v33;
          v31 = v33;
        }

        --v29;
      }

      while (v29);
    }

    v34 = sub_2702B3E2C();
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = 0;
      while (*(v34 + 4 * v36 + 32) != v28)
      {
        if (v35 == ++v36)
        {
          goto LABEL_17;
        }
      }

      (*(v25 + 8))(v7, v4);

      sub_2702B38A8(v36);
    }

    else
    {
LABEL_17:
      (*(v25 + 8))(v7, v4);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    (*(v25 + 8))(v7, v4);
    swift_unknownObjectRelease();
  }
}

unint64_t sub_2702A3FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 48);
  v5 = *(a3 + 56);
  if (v6 >> 62)
  {
    goto LABEL_83;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return 0;
  }

LABEL_3:
  v8 = 0;
  v108 = OBJC_IVAR___DedupeElementCompat_uiObject;
  v107 = OBJC_IVAR___ScreenShotCompat_groupingInfo;
  r1_8 = v6 & 0xC000000000000001;
  v115 = v6 & 0xFFFFFFFFFFFFFF8;
  v114 = v6 + 32;
  v9 = MEMORY[0x277D84F98];
  v116 = v7;
  v112 = v4;
  v105 = v5;
  v106 = v6;
  do
  {
    if (r1_8)
    {
      v10 = MEMORY[0x27439C0F0](v8, v6);
    }

    else
    {
      if (v8 >= *(v115 + 16))
      {
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        v104 = sub_2702B45FC();
        if (v104 < 0)
        {
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v104 = sub_2702B480C();
          __break(1u);
        }

        v7 = v104;
        if (!v104)
        {
          return 0;
        }

        goto LABEL_3;
      }

      v10 = *(v114 + 8 * v8);
    }

    v11 = v10;
    v12 = *&v10[OBJC_IVAR___DedupeElementCompat_screenID + 8];
    if (!v12)
    {
      v17 = sub_2702B3D6C();
      v31 = sub_2702B431C();
      if (!os_log_type_enabled(v17, v31))
      {
        goto LABEL_25;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = v31;
      v34 = v17;
      v35 = "Element added to knownScreenGroup with no screenID";
      goto LABEL_24;
    }

    if (!*(v5 + 16))
    {
      goto LABEL_22;
    }

    v13 = *&v10[OBJC_IVAR___DedupeElementCompat_screenID];

    r1_16 = v13;
    v14 = sub_27025E56C(v13, v12);
    if ((v15 & 1) == 0)
    {

LABEL_22:
      v17 = sub_2702B3D6C();
      v36 = sub_2702B431C();
      if (!os_log_type_enabled(v17, v36))
      {
        goto LABEL_25;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = v36;
      v34 = v17;
      v35 = "Unexpected scenario. ScreenID in knownScreenGroup, but no target object";
LABEL_24:
      _os_log_impl(&dword_270253000, v34, v33, v35, v32, 2u);
      MEMORY[0x27439CE00](v32, -1, -1);
      goto LABEL_25;
    }

    r1 = v12;
    v16 = v9[2];
    v17 = *(*(v5 + 56) + 8 * v14);
    r1_24 = v17;
    if (v16)
    {
      sub_27025E56C(v13, r1);
      if (v18)
      {
        goto LABEL_62;
      }
    }

    v19 = sub_27026EEAC(*(a2 + v108), *(a1 + v107));
    if (!v19)
    {
      goto LABEL_62;
    }

    v20 = v19;
    v4 = OBJC_IVAR___ScreenShotCompat_groupingInfo;
    v21 = *(&v17->isa + OBJC_IVAR___ScreenShotCompat_groupingInfo);

    v5 = sub_27026B760(v20, v21);

    v122 = v5;
    v125 = v20;
    if (v5)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = sub_27025E56C(v13, r1);
      v25 = v9[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_82;
      }

      v29 = v24;
      if (v9[3] >= v28)
      {
        v4 = v112;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v102 = v23;
          sub_2702B02C8();
          v23 = v102;
        }
      }

      else
      {
        sub_2702AF534(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_27025E56C(v13, r1);
        v4 = v112;
        if ((v29 & 1) != (v30 & 1))
        {
          goto LABEL_86;
        }
      }

      v17 = r1_24;
      v5 = v105;
      if (v29)
      {
        v63 = v9[7];
        v64 = *(v63 + 8 * v23);
        *(v63 + 8 * v23) = v122;
      }

      else
      {
        v9[(v23 >> 6) + 8] |= 1 << v23;
        v65 = (v9[6] + 16 * v23);
        *v65 = v13;
        v65[1] = r1;
        *(v9[7] + 8 * v23) = v122;
        v66 = v9[2];
        v27 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v27)
        {
          goto LABEL_85;
        }

        v9[2] = v67;
        v64 = v20;
      }

      v7 = v116;
LABEL_62:
      if (!v9[2])
      {
        goto LABEL_72;
      }

      goto LABEL_63;
    }

    v113 = v4;
    v5 = v6;
    v37 = OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_children;
    swift_beginAccess();
    v38 = *&v20[v37];
    v6 = v9;
    if (v38 >> 62)
    {
      v39 = sub_2702B45FC();
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = r1_24;
    v4 = v112;
    if (v39)
    {
      v118 = v39;
      v123 = v38 & 0xC000000000000001;
      v111 = v38 & 0xFFFFFFFFFFFFFF8;

      v40 = 0;
      v120 = v11;
      v117 = v38;
      while (1)
      {
        if (v123)
        {
          v42 = MEMORY[0x27439C0F0](v40, v38);
        }

        else
        {
          if (v40 >= *(v111 + 16))
          {
            goto LABEL_79;
          }

          v42 = *(v38 + 8 * v40 + 32);
        }

        v43 = v42;
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        v45 = *&v42[OBJC_IVAR____TtC15UIUnderstanding29UIFingerprintingDetectionInfo_detection];
        v46 = OBJC_IVAR___UIObjectCompat_detection;
        swift_beginAccess();
        if (*(*(v45 + v46) + OBJC_IVAR____TtC15UIUnderstanding11UIDetection_label) == 10)
        {
          break;
        }

LABEL_33:
        v17 = r1_24;
        v38 = v117;
        ++v40;
        v41 = v44 == v118;
        v11 = v120;
        if (v41)
        {

          goto LABEL_71;
        }
      }

      v47 = *&v113[r1_24];

      v48 = sub_27026B760(v43, v47);

      if (v48)
      {
        v4 = v48;
        v49 = v6;
        v6 = swift_isUniquelyReferenced_nonNull_native();
        v51 = sub_27025E56C(r1_16, r1);
        v52 = v49[2];
        v53 = (v50 & 1) == 0;
        v54 = v52 + v53;
        if (__OFADD__(v52, v53))
        {
          goto LABEL_80;
        }

        v55 = v50;
        if (v49[3] >= v54)
        {
          if (v6)
          {
            if ((v50 & 1) == 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            sub_2702B02C8();
            if ((v55 & 1) == 0)
            {
              goto LABEL_51;
            }
          }
        }

        else
        {
          sub_2702AF534(v54, v6);
          v56 = sub_27025E56C(r1_16, r1);
          if ((v55 & 1) != (v57 & 1))
          {
            goto LABEL_86;
          }

          v51 = v56;
          if ((v55 & 1) == 0)
          {
LABEL_51:
            v49[(v51 >> 6) + 8] |= 1 << v51;
            v60 = (v49[6] + 16 * v51);
            *v60 = r1_16;
            v60[1] = r1;
            *(v49[7] + 8 * v51) = v4;

            v61 = v49[2];
            v27 = __OFADD__(v61, 1);
            v62 = v61 + 1;
            if (v27)
            {
              goto LABEL_81;
            }

            v6 = v49;
            v49[2] = v62;
LABEL_53:
            v4 = v112;
LABEL_54:
            v7 = v116;
            goto LABEL_33;
          }
        }

        v6 = v49;
        v58 = v49[7];
        v59 = *(v58 + 8 * v51);
        *(v58 + 8 * v51) = v4;

        goto LABEL_53;
      }

      goto LABEL_54;
    }

LABEL_71:
    v9 = v6;
    v6 = v5;
    v5 = v105;
    if (!v9[2])
    {
LABEL_72:

      goto LABEL_25;
    }

LABEL_63:
    v68 = sub_27025E56C(r1_16, r1);
    v70 = v69;

    if ((v70 & 1) == 0)
    {
      goto LABEL_66;
    }

    r1_16a = v9;
    v71 = *(v9[7] + 8 * v68);
    v72 = v11;
    v73 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v74 = *&v71[v73];
    v75 = *&v11[OBJC_IVAR___DedupeElementCompat_uiObject];
    v76 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v77 = *(v75 + v76);
    v78 = &v74[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v79 = *v78;
    v80 = v78[1];
    v81 = v78[2];
    v82 = v78[3];
    v83 = &v77[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v84 = *v83;
    v85 = v83[1];
    v86 = v83[2];
    v87 = v83[3];
    v88 = v71;
    v17 = v74;
    v11 = v77;
    r1a = v79;
    v133.origin.x = v79;
    v124 = v81;
    v126 = v80;
    v133.origin.y = v80;
    v133.size.width = v81;
    v119 = v84;
    v121 = v82;
    v133.size.height = v82;
    v139.origin.x = v84;
    v139.origin.y = v85;
    v139.size.width = v86;
    v139.size.height = v87;
    v134 = CGRectUnion(v133, v139);
    x = v134.origin.x;
    y = v134.origin.y;
    width = v134.size.width;
    height = v134.size.height;
    v93 = CGRectGetHeight(v134);
    v135.origin.x = x;
    v135.origin.y = y;
    v135.size.width = width;
    v135.size.height = height;
    v94 = v93 * CGRectGetWidth(v135);
    if (v94 == 0.0)
    {

      v7 = v116;
      v9 = r1_16a;
LABEL_66:
      v6 = v106;
LABEL_25:

      goto LABEL_26;
    }

    v136.origin.x = r1a;
    v136.size.width = v124;
    v136.origin.y = v126;
    v140.origin.x = v119;
    v136.size.height = v121;
    v140.origin.y = v85;
    v140.size.width = v86;
    v140.size.height = v87;
    v137 = CGRectIntersection(v136, v140);
    v95 = v137.origin.x;
    v96 = v137.origin.y;
    v97 = v137.size.width;
    v98 = v137.size.height;
    v99 = CGRectGetHeight(v137);
    v138.origin.x = v95;
    v138.origin.y = v96;
    v138.size.width = v97;
    v138.size.height = v98;
    v100 = CGRectGetWidth(v138);

    v101 = v99 * v100 / v94;
    v6 = v106;
    if (v101 > 0.5)
    {

      return v8;
    }

    v7 = v116;
    v9 = r1_16a;
LABEL_26:
    ++v8;
  }

  while (v8 != v7);

  return 0;
}

void (*sub_2702A497C(uint64_t **a1, double a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_2702A7450(v4, a2);
  return sub_2702A49FC;
}

void sub_2702A49FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_2702A4A48(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_2702B3CEC();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_2702A7554(v4, v9);
  return sub_2702A4B60;
}

void sub_2702A4B60(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

char *sub_2702A4BFC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2702A4D14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C84B8);
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

char *sub_2702A4E18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B18);
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

char *sub_2702A4F1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8AF0);
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

char *sub_2702A5028(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B40);
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

size_t sub_2702A5134(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B38);
  v10 = *(sub_2702B3CEC() - 8);
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
  v15 = *(sub_2702B3CEC() - 8);
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

char *sub_2702A530C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2807C8B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2702A5444(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

uint64_t sub_2702A5540(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2702A7CA0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2702A56F0(v6);
  return sub_2702B455C();
}

uint64_t sub_2702A55BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2702A7CC8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_2702B473C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_2702B41DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2702A6148(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_2702A56F0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_2702B473C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UIObject();
        v6 = sub_2702B41DC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2702A57F4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_27029CB74(0, v2, 1, a1);
  }
}

void sub_2702A57F4(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_101:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v114 = *(v9 + 16);
      if (v114 >= 2)
      {
        do
        {
          v115 = *v6;
          if (!*v6)
          {
            goto LABEL_148;
          }

          v6 = (v114 - 1);
          v116 = *(v9 + 16 * v114);
          v117 = *(v9 + 16 * (v114 - 1) + 40);
          sub_27029F21C((v115 + 8 * v116), (v115 + 8 * *(v9 + 16 * (v114 - 1) + 32)), (v115 + 8 * v117), v8);
          if (v5)
          {
            break;
          }

          if (v117 < v116)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2702A6924(v9);
          }

          if (v114 - 2 >= *(v9 + 16))
          {
            goto LABEL_138;
          }

          v118 = (v9 + 16 * v114);
          *v118 = v116;
          v118[1] = v117;
          sub_2702A6898(v114 - 1);
          v114 = *(v9 + 16);
          v6 = a3;
        }

        while (v114 > 1);
      }

LABEL_111:

      return;
    }

LABEL_145:
    v9 = sub_2702A6924(v9);
    goto LABEL_103;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8 + 1;
    v131 = v7;
    if (v8 + 1 < v7)
    {
      v120 = v9;
      v124 = v5;
      v11 = *(*v6 + 8 * v10);
      v129 = 8 * v8;
      v12 = (*v6 + 8 * v8);
      v14 = *v12;
      v13 = (v12 + 2);
      v15 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v16 = *&v11[v15];
      v17 = OBJC_IVAR___UIObjectCompat_boundingBox;
      swift_beginAccess();
      v18 = *&v14[v17];
      v19 = v11;
      v20 = v14;
      v21 = v16;
      v22 = v18;
      sub_2702A7D08(v21, v22, MEMORY[0x277CBF378]);
      v133 = v23;

      v122 = v8;
      v24 = (v8 + 2);
      v9 = v131;
      while (v131 != v24)
      {
        v25 = *(v13 - 1);
        v8 = *v13;
        v26 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v27 = *(v8 + v26);
        v28 = OBJC_IVAR___UIObjectCompat_boundingBox;
        swift_beginAccess();
        v29 = *&v25[v28];
        v30 = &v27[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
        swift_beginAccess();
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[2];
        v34 = v30[3];
        v35 = v8;
        v36 = v25;
        v5 = v27;
        v6 = v29;
        v136.origin.x = v31;
        v136.origin.y = v32;
        v136.size.width = v33;
        v136.size.height = v34;
        MinX = CGRectGetMinX(v136);
        if ((*&MinX & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_118;
        }

        if (MinX <= -9.22337204e18)
        {
          goto LABEL_119;
        }

        if (MinX >= 9.22337204e18)
        {
          goto LABEL_120;
        }

        v8 = v6 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
        swift_beginAccess();
        v38 = CGRectGetMinX(*v8);

        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_121;
        }

        if (v38 <= -9.22337204e18)
        {
          goto LABEL_122;
        }

        if (v38 >= 9.22337204e18)
        {
          goto LABEL_123;
        }

        ++v24;
        ++v13;
        if (((v133 ^ (v38 < MinX)) & 1) == 0)
        {
          v9 = (v24 - 1);
          break;
        }
      }

      v8 = v122;
      v5 = v124;
      v6 = a3;
      v39 = v129;
      if ((v133 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (v9 < v122)
      {
        goto LABEL_144;
      }

      if (v122 < v9)
      {
        v40 = 8 * v9 - 8;
        v41 = v9;
        v42 = v9;
        v43 = v122;
        v9 = v120;
        do
        {
          if (v43 != --v42)
          {
            v45 = *a3;
            if (!*a3)
            {
              goto LABEL_149;
            }

            v44 = *(v45 + v39);
            *(v45 + v39) = *(v45 + v40);
            *(v45 + v40) = v44;
          }

          ++v43;
          v40 -= 8;
          v39 += 8;
        }

        while (v43 < v42);
        v10 = v41;
      }

      else
      {
LABEL_24:
        v10 = v9;
        v9 = v120;
      }
    }

    v46 = v6[1];
    v134 = v10;
    if (v10 < v46)
    {
      v84 = __OFSUB__(v10, v8);
      v47 = v10 - v8;
      if (v84)
      {
        goto LABEL_141;
      }

      if (v47 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_142;
        }

        if (v8 + a4 >= v46)
        {
          v48 = v6[1];
        }

        else
        {
          v48 = (v8 + a4);
        }

        if (v48 < v8)
        {
          goto LABEL_143;
        }

        if (v134 != v48)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v134 < v8)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_270290DEC(0, *(v9 + 16) + 1, 1, v9);
    }

    v69 = *(v9 + 16);
    v68 = *(v9 + 24);
    v70 = v69 + 1;
    if (v69 >= v68 >> 1)
    {
      v9 = sub_270290DEC((v68 > 1), v69 + 1, 1, v9);
    }

    *(v9 + 16) = v70;
    v71 = v9 + 16 * v69;
    *(v71 + 32) = v8;
    *(v71 + 40) = v134;
    v72 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v69)
    {
      while (1)
      {
        v73 = v70 - 1;
        if (v70 >= 4)
        {
          break;
        }

        if (v70 == 3)
        {
          v74 = *(v9 + 32);
          v75 = *(v9 + 40);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_70:
          if (v77)
          {
            goto LABEL_129;
          }

          v90 = (v9 + 16 * v70);
          v92 = *v90;
          v91 = v90[1];
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_132;
          }

          v96 = (v9 + 32 + 16 * v73);
          v98 = *v96;
          v97 = v96[1];
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_135;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_136;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v73 = v70 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v100 = (v9 + 16 * v70);
        v102 = *v100;
        v101 = v100[1];
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_84:
        if (v95)
        {
          goto LABEL_131;
        }

        v103 = v9 + 16 * v73;
        v105 = *(v103 + 32);
        v104 = *(v103 + 40);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_134;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_91:
        v111 = v73 - 1;
        if (v73 - 1 >= v70)
        {
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_147;
        }

        v112 = *(v9 + 32 + 16 * v111);
        v8 = *(v9 + 32 + 16 * v73 + 8);
        sub_27029F21C((*v6 + 8 * v112), (*v6 + 8 * *(v9 + 32 + 16 * v73)), (*v6 + 8 * v8), v72);
        if (v5)
        {
          goto LABEL_111;
        }

        if (v8 < v112)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2702A6924(v9);
        }

        if (v111 >= *(v9 + 16))
        {
          goto LABEL_126;
        }

        v113 = v9 + 16 * v111;
        *(v113 + 32) = v112;
        *(v113 + 40) = v8;
        sub_2702A6898(v73);
        v70 = *(v9 + 16);
        if (v70 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = v9 + 32 + 16 * v70;
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_127;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_128;
      }

      v85 = (v9 + 16 * v70);
      v87 = *v85;
      v86 = v85[1];
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_130;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_133;
      }

      if (v89 >= v81)
      {
        v107 = (v9 + 32 + 16 * v73);
        v109 = *v107;
        v108 = v107[1];
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_139;
        }

        if (v76 < v110)
        {
          v73 = v70 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v134;
    if (v134 >= v7)
    {
      goto LABEL_101;
    }
  }

  v121 = v9;
  v123 = v8;
  v125 = v5;
  v126 = v48;
  v49 = *v6;
  v5 = (*v6 + 8 * v134 - 8);
  v50 = (v8 - v134);
  v51 = v134;
LABEL_37:
  v132 = v5;
  v135 = v51;
  v52 = *(v49 + 8 * v51);
  v130 = v50;
  while (1)
  {
    v53 = *v5;
    v54 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v55 = *&v52[v54];
    v56 = OBJC_IVAR___UIObjectCompat_boundingBox;
    swift_beginAccess();
    v9 = *&v53[v56];
    v8 = &v55[OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect];
    swift_beginAccess();
    v57 = *v8;
    v58 = *(v8 + 8);
    v59 = *(v8 + 16);
    v60 = *(v8 + 24);
    v61 = v52;
    v62 = v53;
    v63 = v55;
    v6 = v9;
    v137.origin.x = v57;
    v137.origin.y = v58;
    v137.size.width = v59;
    v137.size.height = v60;
    v64 = CGRectGetMinX(v137);
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
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
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v64 <= -9.22337204e18)
    {
      goto LABEL_113;
    }

    if (v64 >= 9.22337204e18)
    {
      goto LABEL_114;
    }

    v8 = v6 + OBJC_IVAR____TtC15UIUnderstanding11BoundingBox_rect;
    swift_beginAccess();
    v65 = CGRectGetMinX(*v8);
    v9 = *&v65;

    if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_115;
    }

    if (v65 <= -9.22337204e18)
    {
      goto LABEL_116;
    }

    if (v65 >= 9.22337204e18)
    {
      goto LABEL_117;
    }

    if (v65 < v64)
    {
LABEL_36:
      v51 = v135 + 1;
      v5 = v132 + 1;
      v50 = v130 - 1;
      if (v135 + 1 == v126)
      {
        v134 = v126;
        v8 = v123;
        v5 = v125;
        v6 = a3;
        v9 = v121;
        goto LABEL_50;
      }

      goto LABEL_37;
    }

    if (!v49)
    {
      break;
    }

    v66 = *v5;
    v52 = v5[1];
    *v5 = v52;
    v5[1] = v66;
    --v5;
    if (__CFADD__(v50++, 1))
    {
      goto LABEL_36;
    }
  }

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
}

uint64_t sub_2702A6148(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2702A6924(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2702A66A4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_270290DEC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_270290DEC((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2702A66A4((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2702A66A4(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2702A6898(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2702A6924(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2702A6938(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2702B444C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_2702B486C();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2702A6AC0(int64_t a1, uint64_t a2)
{
  v4 = sub_2702B3CEC();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_2702B444C();
    v14 = v12;
    v37 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = *(v15 + 56);
    v35 = (v15 - 8);
    v36 = v16;
    do
    {
      v17 = v9;
      v18 = v38 * v11;
      v19 = v14;
      v20 = v15;
      v36(v8, *(a2 + 48) + v38 * v11, v4);
      sub_2702A87E8();
      v21 = sub_2702B3FAC();
      result = (*v35)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v37)
      {
        if (v22 >= v37 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v38 * a1;
          v26 = v25 + v18 + v38;
          v27 = v38 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v38 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v37 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2702A6D78(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_27025E694(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 < v14 || (a2 & 1) != 0)
    {
      sub_2702AF2B8(v14, a2 & 1);
      result = sub_27025E694(a3);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2702B480C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2702B016C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a3;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_2702A6ECC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27025E56C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2702AF548(v16, a4 & 1);
      v11 = sub_27025E56C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2702B480C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_2702B02DC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_2702A7044(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_27025E56C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2702AF7F8(v16, a4 & 1);
      v11 = sub_27025E56C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2702B480C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2702B044C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + (v11 << 6);

    return sub_2702A8840(a1, v22);
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  v25 = (v21[7] + (v11 << 6));
  v26 = *a1;
  v27 = a1[1];
  v28 = a1[3];
  v25[2] = a1[2];
  v25[3] = v28;
  *v25 = v26;
  v25[1] = v27;
  v29 = v21[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v30;
}

uint64_t sub_2702A71CC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_2702B3CEC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_27025E770(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2702B05EC();
      goto LABEL_7;
    }

    sub_2702AFB44(v17, a3 & 1);
    v22 = sub_27025E770(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_2702A7398(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_2702B480C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_2702A7398(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_2702B3CEC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void (*sub_2702A7450(uint64_t *a1, double a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_2702A7C44(v5);
  v5[9] = sub_2702A7728(v5 + 4, isUniquelyReferenced_nonNull_native, a2);
  return sub_2702A74F4;
}

void sub_2702A74F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2702A7554(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_2702B3CEC();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_2702A7C6C(v6);
  v6[12] = sub_2702A7994(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_2702A7690;
}

void sub_2702A7690(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_2702A7728(uint64_t *a1, char a2, double a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = v3;
  *(v8 + 8) = a3;
  v10 = *v3;
  v11 = sub_27025E694(a3);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = v11;
      sub_2702B016C();
      v11 = v19;
      goto LABEL_11;
    }

    sub_2702AF2B8(v16, a2 & 1);
    v11 = sub_27025E694(a3);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2702B480C();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_2702A7874;
}