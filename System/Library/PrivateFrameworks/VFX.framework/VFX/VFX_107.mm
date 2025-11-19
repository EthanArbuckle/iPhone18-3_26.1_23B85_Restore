uint64_t sub_1AF940EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = (*(*a1 + 296))(1);
  v7 = *(**(v23 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

  v7(v24, v8);

  v9 = v24[0];
  v30 = v24[0];
  v29 = v24[1];
  sub_1AF949D48(&v29, &qword_1EB638968, &type metadata for TypeConstraint);
  v28 = v24[2];
  sub_1AF949D48(&v28, &qword_1EB638968, &type metadata for TypeConstraint);
  v27 = v24[3];
  sub_1AF91219C(&v27);
  v26 = v24[4];
  sub_1AF91219C(&v26);
  v25 = v24[5];
  sub_1AF949D48(&v25, &qword_1EB638978, &type metadata for AnyValue);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = v9 + 32;
LABEL_3:
    v22 = v12;
    v14 = v11;
    while (v14 != *(a2 + 16))
    {
      v15 = *(v13 + 8 * v14);
      v16 = *(a2 + 32 + 8 * v14);
      sub_1AF4410A8(v15);
      sub_1AF442064(v16);
      if (sub_1AF90F890(v16, 0xC000000000000068))
      {
        sub_1AF9403F8(v14, v23, a3, v15);
        if (v4)
        {
          sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF445BE4(v16);
          sub_1AF441114(v15);
        }

LABEL_18:
        sub_1AF445BE4(v16);
        sub_1AF441114(v15);
LABEL_23:
        v11 = v14 + 1;
        v12 = 1;
        if (v10 - 1 != v14)
        {
          goto LABEL_3;
        }

        sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
        return v23;
      }

      if (v15 >> 61 == 2)
      {
        if (*(a3 + 16) && (v17 = sub_1AF449CB8(*((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10)), (v18 & 1) != 0))
        {
          v19 = *(*(a3 + 56) + 8 * v17);
          sub_1AF442064(v19);
        }

        else
        {
          v19 = 0xF000000000000007;
        }

        if ((sub_1AF90F890(v19, v16) & 1) == 0)
        {
          sub_1AF948E48(v14, v23, v19);
          sub_1AF914F8C(v19);
          goto LABEL_18;
        }

        sub_1AF914F8C(v19);
      }

      else if ((sub_1AF9C4C80(v16, v15) & 1) == 0)
      {
        if (v15 >> 61 == 4)
        {
          v20 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          sub_1AF442064(v20);
        }

        else
        {
          v20 = 0xF000000000000007;
        }

        sub_1AF948E48(v14, v23, v20);
        sub_1AF914F8C(v20);
        sub_1AF441114(v15);
        sub_1AF445BE4(v16);
        goto LABEL_23;
      }

      ++v14;
      sub_1AF445BE4(v16);
      sub_1AF441114(v15);
      if (v10 == v14)
      {
        break;
      }
    }

    sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }

    return v23;
  }

  else
  {
    sub_1AF949D48(&v30, &qword_1EB638968, &type metadata for TypeConstraint);
LABEL_28:

    return 0;
  }
}

uint64_t sub_1AF941248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v166) = a3;
  v167 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v167, v8);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1AF42C370(MEMORY[0x1E69E7CC0]);
  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_40;
  }

  v162 = v10;
  v163 = v4;
  v12 = 0;
  v13 = a1 + 32;
  v14 = a2 + 32;
  v164 = a4;
  v165 = v11 - 1;
  v170 = a1 + 32;
  v171 = a2 + 32;
  v169 = v11;
  while (2)
  {
    v15 = v12;
    while (1)
    {
      if (v15 == *(a2 + 16))
      {
        goto LABEL_40;
      }

      v16 = *(v13 + 8 * v15);
      v17 = *(v14 + 8 * v15);
      sub_1AF442064(v16);
      sub_1AF4410A8(v17);
      sub_1AF9C503C(v17);
      if ((v18 & 1) == 0)
      {
        v19 = sub_1AF9C503C(v17);
        if ((sub_1AF90F890(v16, 0xC000000000000068) & 1) == 0)
        {
          break;
        }
      }

      sub_1AF441114(v17);
LABEL_5:
      ++v15;
      sub_1AF445BE4(v16);
      if (v11 == v15)
      {
        goto LABEL_40;
      }
    }

    v20 = sub_1AF9C4C80(v16, v17);
    v173 = v16;
    if ((v20 & 1) == 0)
    {
      v76 = sub_1AF9C5BB8(v19);
      v170 = v77;
      v171 = v76;
      v78 = v164;
      (*(**(v164 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v188);
      v215 = v189;
      v79 = sub_1AF970A64(v15, v189);
      v81 = v80;
      v214 = v188[0];
      sub_1AF949D48(&v214, &qword_1EB638968, &type metadata for TypeConstraint);
      v213 = v188[1];
      sub_1AF949D48(&v213, &qword_1EB638968, &type metadata for TypeConstraint);
      v212 = v188[2];
      sub_1AF949D48(&v212, &qword_1EB638968, &type metadata for TypeConstraint);
      sub_1AF91219C(&v215);
      v211 = v190;
      sub_1AF91219C(&v211);
      v210 = v191;
      sub_1AF949D48(&v210, &qword_1EB638978, &type metadata for AnyValue);
      v174 = 0;
      v175 = 0xE000000000000000;
      sub_1AFDFE218();

      v174 = 0x207475706E49;
      v175 = 0xE600000000000000;
      MEMORY[0x1B2718AE0](v79, v81);

      MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
      v82 = sub_1AF90D394(v16);
      MEMORY[0x1B2718AE0](v82);

      MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3B540);
      MEMORY[0x1B2718AE0](v171, v170);

      MEMORY[0x1B2718AE0](61, 0xE100000000000000);
      v83 = sub_1AF9C50D4(v17);
      MEMORY[0x1B2718AE0](v83);

      v169 = v174;
      v171 = v175;
      sub_1AF9371BC();
      v84 = v167;
      v168 = swift_allocError();
      v170 = v85;
      v86 = v162;
      v162[v84[8]] = 0;
      v87 = v78;
      *v86 = v78;
      v88 = v84[5];
      v166 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v89 = sub_1AFDFC318();
      v90 = *(v89 - 8);
      (*(v90 + 16))(&v86[v88], v87 + v166, v89);
      (*(v90 + 56))(&v86[v88], 0, 1, v89);
      v91 = &v86[v84[6]];
      *v91 = v15;
      v91[8] = 32;
      v92 = &v86[v84[7]];
      v93 = v170;
      v94 = v171;
      *v92 = v169;
      v92[1] = v94;
      sub_1AF94A0F8(v86, v93, type metadata accessor for GraphError);
      v95 = *(v163 + 24);
      v96 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v60 = *(v95 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v95 + v96) = v60;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v60 = sub_1AF420408(0, v60[2] + 1, 1, v60);
        *(v95 + v96) = v60;
      }

      v99 = v60[2];
      v98 = v60[3];
      if (v99 >= v98 >> 1)
      {
        v60 = sub_1AF420408(v98 > 1, v99 + 1, 1, v60);
      }

      v60[2] = v99 + 1;
      v100 = v168;
      v60[v99 + 4] = v168;
      *(v95 + v96) = v60;
      swift_willThrow();
      v101 = v100;
      v102 = v100;
      sub_1AF441114(v17);
      sub_1AF445BE4(v173);

      return v60;
    }

    v21 = a2;
    sub_1AF9C52FC(v16, v17);
    v23 = v22;
    v24 = v172;
    if (v172[2])
    {
      v25 = sub_1AF449CB8(v19);
      if (v26)
      {
        v27 = (v24[7] + 16 * v25);
        v28 = *v27;
        v16 = v27[1];
        sub_1AF442064(v16);
        sub_1AF442064(v16);
        v29 = sub_1AF90F890(v23, v16);
        sub_1AF445BE4(v16);
        if (v29)
        {
          sub_1AF445BE4(v23);
          sub_1AF441114(v17);
          sub_1AF445BE4(v173);
          a2 = v21;
          v11 = v169;
          v13 = v170;
          v14 = v171;
          goto LABEL_5;
        }

        v160 = v28;
        v161 = v23;
        if (v166)
        {
          type metadata accessor for CastNode(0);
          v42 = v161;
          if (sub_1AF98750C(v161, v16) == 1)
          {
            if (!sub_1AF9863CC(v42, v16) && sub_1AF9863CC(v16, v42))
            {
              sub_1AF445BE4(v16);
              sub_1AF442064(v42);
              v160 = v15;
              v16 = v42;
            }

            sub_1AF442064(v16);
            v43 = v172;
            v44 = swift_isUniquelyReferenced_nonNull_native();
            v174 = v43;
            v46 = sub_1AF449CB8(v19);
            v47 = v43[2] + ((v45 & 1) == 0);
            if (v43[3] >= v47)
            {
              v14 = v171;
              if (v44)
              {
                goto LABEL_33;
              }

              v49 = v45;
              sub_1AF84E8F8();
            }

            else
            {
              v48 = v44;
              v49 = v45;
              sub_1AF83F674(v47, v48);
              v50 = sub_1AF449CB8(v19);
              if ((v49 & 1) != (v51 & 1))
              {
LABEL_68:
                result = sub_1AFDFF1A8();
                __break(1u);
                return result;
              }

              v46 = v50;
            }

            v45 = v49;
            v14 = v171;
LABEL_33:
            v52 = v160;
            v53 = v174;
            v172 = v174;
            if (v45)
            {
              v54 = (*(v174 + 56) + 16 * v46);
              v55 = v54[1];
              *v54 = v160;
              v54[1] = v16;
              sub_1AF445BE4(v55);
              sub_1AF441114(v17);
              sub_1AF445BE4(v173);
              sub_1AF445BE4(v16);
              sub_1AF445BE4(v161);
            }

            else
            {
              *(v174 + 8 * (v46 >> 6) + 64) |= 1 << v46;
              *(v53[6] + 8 * v46) = v19;
              v56 = (v53[7] + 16 * v46);
              *v56 = v52;
              v56[1] = v16;
              sub_1AF441114(v17);
              sub_1AF445BE4(v173);
              sub_1AF445BE4(v16);
              sub_1AF445BE4(v161);
              ++v53[2];
            }

            a2 = v21;
            v11 = v169;
            v13 = v170;
            goto LABEL_37;
          }

          v113 = *(**(v164 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);
          v113(v180);
          v203 = v181;
          v171 = sub_1AF970A64(v15, v181);
          v169 = v114;
          v202 = v180[0];
          sub_1AF949D48(&v202, &qword_1EB638968, &type metadata for TypeConstraint);
          v201 = v180[1];
          sub_1AF949D48(&v201, &qword_1EB638968, &type metadata for TypeConstraint);
          v200 = v180[2];
          sub_1AF949D48(&v200, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v203);
          v199 = v182;
          sub_1AF91219C(&v199);
          v198 = v183;
          v115 = sub_1AF949D48(&v198, &qword_1EB638978, &type metadata for AnyValue);
          (v113)(v184, v115);
          v197 = v185;
          v170 = sub_1AF970A64(v160, v185);
          v117 = v116;
          v196 = v184[0];
          sub_1AF949D48(&v196, &qword_1EB638968, &type metadata for TypeConstraint);
          v195 = v184[1];
          sub_1AF949D48(&v195, &qword_1EB638968, &type metadata for TypeConstraint);
          v194 = v184[2];
          sub_1AF949D48(&v194, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v197);
          v193 = v186;
          sub_1AF91219C(&v193);
          v192 = v187;
          sub_1AF949D48(&v192, &qword_1EB638978, &type metadata for AnyValue);
          v174 = 0;
          v175 = 0xE000000000000000;
          sub_1AFDFE218();

          v174 = 0x207475706E49;
          v175 = 0xE600000000000000;
          MEMORY[0x1B2718AE0](v171, v169);

          MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
          v118 = sub_1AF90D394(v161);
          MEMORY[0x1B2718AE0](v118);

          MEMORY[0x1B2718AE0](0xD00000000000001FLL, 0x80000001AFF3B560);
          MEMORY[0x1B2718AE0](v170, v117);

          MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
          v119 = sub_1AF90D394(v16);
          MEMORY[0x1B2718AE0](v119);

          MEMORY[0x1B2718AE0](41, 0xE100000000000000);
          v169 = v174;
          v171 = v175;
          sub_1AF9371BC();
          v120 = v167;
          v168 = swift_allocError();
          v170 = v121;
          v122 = v162;
          v162[*(v120 + 32)] = 0;
          v123 = v164;
          *v122 = v164;
          v124 = *(v120 + 20);
          v166 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v125 = sub_1AFDFC318();
          v126 = *(v125 - 8);
          (*(v126 + 16))(&v122[v124], v123 + v166, v125);
          (*(v126 + 56))(&v122[v124], 0, 1, v125);
          v127 = v167;
          v128 = &v122[*(v167 + 24)];
          *v128 = v15;
          v128[8] = 32;
          v129 = &v122[*(v127 + 28)];
          v130 = v170;
          v131 = v171;
          *v129 = v169;
          v129[1] = v131;
          sub_1AF94A0F8(v122, v130, type metadata accessor for GraphError);
          v132 = *(v163 + 24);
          v133 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v60 = *(v132 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        }

        else
        {
          v103 = sub_1AF9C5BB8(v19);
          v105 = v104;
          v106 = v172;
          v107 = v172[2];
          v171 = v103;
          if (v107 && (v108 = sub_1AF449CB8(v19), (v109 & 1) != 0))
          {
            v110 = (v106[7] + 16 * v108);
            v111 = *v110;
            v112 = v110[1];
            sub_1AF442064(v112);
          }

          else
          {
            v111 = 0;
            v112 = 0xF000000000000007;
          }

          v134 = sub_1AF90D394(v112);
          v169 = v135;
          v170 = v134;
          v136 = sub_1AF949EC8(v111, v112);
          v137 = v164;
          (*(**(v164 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v176, v136);
          v209 = v177;
          v168 = sub_1AF970A64(v15, v177);
          v139 = v138;
          v208 = v176[0];
          sub_1AF949D48(&v208, &qword_1EB638968, &type metadata for TypeConstraint);
          v207 = v176[1];
          sub_1AF949D48(&v207, &qword_1EB638968, &type metadata for TypeConstraint);
          v206 = v176[2];
          sub_1AF949D48(&v206, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v209);
          v205 = v178;
          sub_1AF91219C(&v205);
          v204 = v179;
          sub_1AF949D48(&v204, &qword_1EB638978, &type metadata for AnyValue);
          v174 = 0;
          v175 = 0xE000000000000000;
          sub_1AFDFE218();

          v174 = 0x207475706E49;
          v175 = 0xE600000000000000;
          MEMORY[0x1B2718AE0](v168, v139);

          MEMORY[0x1B2718AE0](10272, 0xE200000000000000);
          v140 = sub_1AF90D394(v173);
          MEMORY[0x1B2718AE0](v140);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3B540);
          MEMORY[0x1B2718AE0](v171, v105);

          MEMORY[0x1B2718AE0](61, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v170, v169);

          v169 = v174;
          v171 = v175;
          sub_1AF9371BC();
          v141 = v167;
          v168 = swift_allocError();
          v170 = v142;
          v143 = v162;
          v162[*(v141 + 32)] = 0;
          v144 = v137;
          *v143 = v137;
          v145 = *(v141 + 20);
          v166 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v146 = sub_1AFDFC318();
          v147 = *(v146 - 8);
          (*(v147 + 16))(&v143[v145], v144 + v166, v146);
          (*(v147 + 56))(&v143[v145], 0, 1, v146);
          v148 = v167;
          v149 = &v143[*(v167 + 24)];
          *v149 = v15;
          v149[8] = 32;
          v150 = &v143[*(v148 + 28)];
          v151 = v170;
          v152 = v171;
          *v150 = v169;
          v150[1] = v152;
          sub_1AF94A0F8(v143, v151, type metadata accessor for GraphError);
          v132 = *(v163 + 24);
          v133 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v60 = *(v132 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);
        }

        v153 = swift_isUniquelyReferenced_nonNull_native();
        *(v132 + v133) = v60;
        if ((v153 & 1) == 0)
        {
          v60 = sub_1AF420408(0, v60[2] + 1, 1, v60);
          *(v132 + v133) = v60;
        }

        v155 = v60[2];
        v154 = v60[3];
        if (v155 >= v154 >> 1)
        {
          v60 = sub_1AF420408(v154 > 1, v155 + 1, 1, v60);
        }

        v60[2] = v155 + 1;
        v156 = &v60[v155];
        v157 = v168;
        v156[4] = v168;
        *(v132 + v133) = v60;
        swift_willThrow();
        v158 = v157;
        v159 = v157;
        sub_1AF445BE4(v161);
        sub_1AF441114(v17);
        sub_1AF445BE4(v173);
        sub_1AF445BE4(v16);

        return v60;
      }
    }

    v161 = v23;
    sub_1AF442064(v23);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v174 = v24;
    v31 = sub_1AF449CB8(v19);
    v33 = v32;
    v34 = v24[2] + ((v32 & 1) == 0);
    if (v24[3] >= v34)
    {
      if ((v30 & 1) == 0)
      {
        v57 = v31;
        sub_1AF84E8F8();
        v31 = v57;
      }
    }

    else
    {
      sub_1AF83F674(v34, v30);
      v31 = sub_1AF449CB8(v19);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_68;
      }
    }

    a2 = v21;
    v36 = v174;
    v11 = v169;
    v13 = v170;
    v172 = v174;
    if (v33)
    {
      v37 = (*(v174 + 56) + 16 * v31);
      v38 = v37[1];
      v39 = v161;
      *v37 = v15;
      v37[1] = v39;
      sub_1AF445BE4(v38);
      sub_1AF441114(v17);
      sub_1AF445BE4(v173);
      sub_1AF445BE4(v39);
    }

    else
    {
      *(v174 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      *(v36[6] + 8 * v31) = v19;
      v40 = (v36[7] + 16 * v31);
      v41 = v161;
      *v40 = v15;
      v40[1] = v41;
      sub_1AF441114(v17);
      sub_1AF445BE4(v173);
      sub_1AF445BE4(v41);
      ++v36[2];
    }

    v14 = v171;
LABEL_37:
    v12 = v15 + 1;
    if (v165 != v15)
    {
      continue;
    }

    break;
  }

LABEL_40:
  sub_1AF949EE0();
  v58 = v172;
  v59 = sub_1AFDFE598();
  v60 = v59;
  v61 = 0;
  v62 = 1 << *(v58 + 32);
  v63 = v58[8];
  v64 = -1;
  if (v62 < 64)
  {
    v64 = ~(-1 << v62);
  }

  v65 = v64 & v63;
  v66 = (v62 + 63) >> 6;
  v67 = v59 + 64;
  if ((v64 & v63) != 0)
  {
    do
    {
      v68 = __clz(__rbit64(v65));
      v65 &= v65 - 1;
      v69 = v68 | (v61 << 6);
LABEL_48:
      v73 = *(v58[6] + 8 * v69);
      v74 = *(v58[7] + 16 * v69 + 8);
      *(v67 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      *(v60[6] + 8 * v69) = v73;
      *(v60[7] + 8 * v69) = v74;
      ++v60[2];
      sub_1AF442064(v74);
    }

    while (v65);
  }

  v70 = v61 << 6;
  while (1)
  {
    v71 = v61 + 1;
    if (v61 + 1 >= v66)
    {
      break;
    }

    v72 = v58[v61 + 9];
    v70 += 64;
    ++v61;
    if (v72)
    {
      v65 = (v72 - 1) & v72;
      v69 = __clz(__rbit64(v72)) + v70;
      v61 = v71;
      goto LABEL_48;
    }
  }

  return v60;
}

uint64_t sub_1AF9423CC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v16 = MEMORY[0x1EEE9AC00](v12, v13);
  result = 0;
  if (*(v2 + 64) == 1)
  {
    v80 = v15;
    v81 = &v64 - v14;
    v18 = (*(*a1 + 296))(1, v16);
    v19 = *(**(v18 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152);

    v19(&v83, v20);

    v94[0] = v83;
    v21 = *(v83 + 16);
    if (!v21)
    {

      sub_1AF949D48(v94, &qword_1EB638968, &type metadata for TypeConstraint);
      v93 = v84;
      sub_1AF949D48(&v93, &qword_1EB638968, &type metadata for TypeConstraint);
      v92 = v85;
      sub_1AF949D48(&v92, &qword_1EB638968, &type metadata for TypeConstraint);
      v91 = v86;
      sub_1AF91219C(&v91);
      v90 = v87;
      sub_1AF91219C(&v90);
      v89 = v88;
      sub_1AF949D48(&v89, &qword_1EB638978, &type metadata for AnyValue);
      return 0;
    }

    v75 = v9;
    v79 = v5;
    v22 = 0;
    v23 = 0;
    v24 = a2 + 32;
    v25 = v83 + 32;
    v74 = (v6 + 56);
    v73 = (v6 + 48);
    v76 = (v6 + 32);
    v72 = (v6 + 24);
    v71 = v21 - 1;
    v82 = v18;
    v77 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
LABEL_4:
    LODWORD(v78) = v22;
    v26 = 16 * v23;
    v27 = v23;
    do
    {
      v31 = *(v25 + 8 * v27);
      if (v31 >> 61 == 2)
      {
        v31 = *(v85 + 8 * *((v31 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 32);
      }

      v28 = *(v24 + 8 * v27);
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      sub_1AF442064(v28);
      sub_1AF442064(v28);
      sub_1AF4410A8(v31);
      v30 = sub_1AF9C4A68(v29 | 0x8000000000000000, v31);

      if (((v30 >> 57) & 0xF8 | v30 & 7 | 0x10) != 0x7F)
      {
        type metadata accessor for CastNode(0);
        if (sub_1AF98750C(v28, v30) == 1)
        {
          type metadata accessor for AutoCastNode(0);
          v32 = swift_allocObject();
          v78 = v32;
          *&v32[OBJC_IVAR____TtC3VFX8CastNode_dstType] = v30;
          *(v32 + 4) = 0;
          *(v32 + 2) = MEMORY[0x1E69E7CC0];
          *(v32 + 3) = 0;
          v33 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          sub_1AF442064(v30);
          v67 = v33;
          sub_1AFDFC308();
          v34 = *(v82 + v77) + v26;
          v36 = *(v34 + 32);
          v35 = *(v34 + 40);
          v69 = v36;
          v66 = v35;
          (*v74)(v81, 1, 1, v79);
          type metadata accessor for AuthoringNode();
          v37 = swift_allocObject();
          v38 = v37 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          *v38 = 0;
          *(v38 + 8) = 0;
          *(v38 + 16) = 1;
          v39 = v37 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          *v39 = 0;
          *(v39 + 8) = 0;
          *(v39 + 16) = 1;
          v40 = v37 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v40 = 0;
          *(v40 + 8) = 1;
          v41 = (v37 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          *v41 = 0;
          v41[1] = 0;
          v70 = v37;
          *(v37 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v78;
          v93 = MEMORY[0x1E69E7CC0];

          sub_1AFC05D04(0, 1, 0);
          v42 = v93;
          v43 = *(v93 + 16);
          v65 = *(v93 + 24);
          v68 = v43 + 1;

          if (v43 >= v65 >> 1)
          {
            sub_1AFC05D04(v65 > 1, v68, 1);
            v42 = v93;
          }

          *(v42 + 16) = v68;
          v44 = v42 + 16 * v43;
          v45 = v66;
          *(v44 + 32) = v69;
          *(v44 + 40) = v45;

          *(v70 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v42;
          v46 = v80;
          sub_1AF487314(v81, v80);
          v69 = *v73;
          if (v69(v46, 1, v79) == 1)
          {
            v47 = v75;
            sub_1AFDFC308();
            sub_1AF949E6C(v81, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            if (v69(v80, 1, v79) != 1)
            {
              sub_1AF949E6C(v80, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            }
          }

          else
          {
            sub_1AF949E6C(v81, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            v47 = v75;
            (*v76)(v75, v80, v79);
          }

          v48 = v70;
          v49 = v47;
          v50 = v79;
          (*v76)((v70 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID), v49, v79);
          (*v72)(&v78[v67], v48 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v50);

          v51 = v48 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          *v51 = 0;
          *(v51 + 8) = 0;
          *(v51 + 16) = 1;
          v52 = v48 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          *v52 = 0;
          *(v52 + 8) = 0;
          *(v52 + 16) = 1;
          v53 = v48 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v53 = 0;
          *(v53 + 8) = 1;
          v54 = (v48 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          *v54 = 0;
          v54[1] = 0;

          v55 = v82;
          v78 = *(v82 + v77);

          v56 = v78;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = v77;
          *(v55 + v77) = v56;
          v59 = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v63 = sub_1AFC0DA6C(v56);
            *(v82 + v59) = v63;
          }

          v23 = v27 + 1;
          sub_1AF441114(v31);
          v60 = v70;

          sub_1AF91504C(v30);
          sub_1AF445BE4(v28);
          v61 = v82;
          v62 = *(v82 + v59) + v26;
          *(v62 + 32) = v60;
          *(v62 + 40) = 0;

          v22 = 1;
          if (v71 == v27)
          {
            sub_1AF949D48(v94, &qword_1EB638968, &type metadata for TypeConstraint);
            v93 = v84;
            sub_1AF949D48(&v93, &qword_1EB638968, &type metadata for TypeConstraint);
            v92 = v85;
            sub_1AF949D48(&v92, &qword_1EB638968, &type metadata for TypeConstraint);
            v91 = v86;
            sub_1AF91219C(&v91);
            v90 = v87;
            sub_1AF91219C(&v90);
            v89 = v88;
            sub_1AF949D48(&v89, &qword_1EB638978, &type metadata for AnyValue);
            return v61;
          }

          goto LABEL_4;
        }
      }

      ++v27;
      sub_1AF91504C(v30);
      sub_1AF441114(v31);
      sub_1AF445BE4(v28);
      v26 += 16;
    }

    while (v21 != v27);
    sub_1AF949D48(v94, &qword_1EB638968, &type metadata for TypeConstraint);
    v93 = v84;
    sub_1AF949D48(&v93, &qword_1EB638968, &type metadata for TypeConstraint);
    v92 = v85;
    sub_1AF949D48(&v92, &qword_1EB638968, &type metadata for TypeConstraint);
    v91 = v86;
    sub_1AF91219C(&v91);
    v90 = v87;
    sub_1AF91219C(&v90);
    v89 = v88;
    sub_1AF949D48(&v89, &qword_1EB638978, &type metadata for AnyValue);
    result = v82;
    if ((v78 & 1) == 0)
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_1AF942D74(unint64_t a1, uint64_t a2)
{
  *&v201 = a2;
  v199 = sub_1AFDFC318();
  v200 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199, v4);
  v6 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v181 - v9;
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v181 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v181 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v181 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v181 - v25;
  v198 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v198, v27);
  v197 = (&v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for DeclareVariableNode(0);
  if (swift_dynamicCastClass())
  {
    v29 = v202;
    v30 = sub_1AF9443F0(1, a1, v2);
    if (!v29)
    {
      v32 = v30;
      v33 = v31;
      v34 = *(v201 + 48);
      v35 = *(v2 + 56);
      v36 = *(v35 + 16);
      sub_1AF442064(v34);
      if (!v36)
      {
LABEL_38:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v203 = *(v2 + 56);
        *(v2 + 56) = 0x8000000000000000;
        sub_1AF8586B0(v34, v32, v33, isUniquelyReferenced_nonNull_native);

        a1 = 0;
        *(v2 + 56) = v203;
        return a1;
      }

      v37 = v2;

      v38 = sub_1AF419914(v32, v33);
      if ((v39 & 1) == 0)
      {

        goto LABEL_38;
      }

      v40 = *(*(v35 + 56) + 8 * v38);
      sub_1AF442064(v40);

      if (sub_1AF90F890(v40, v34))
      {
        sub_1AF445BE4(v40);
        goto LABEL_38;
      }

      v203 = 0;
      v204 = 0xE000000000000000;
      sub_1AFDFE218();

      v203 = 0xD000000000000018;
      v204 = 0x80000001AFF3B520;
      MEMORY[0x1B2718AE0](v32, v33);

      MEMORY[0x1B2718AE0](2629671, 0xE300000000000000);
      *&v201 = v34;
      v103 = sub_1AF90D394(v34);
      MEMORY[0x1B2718AE0](v103);

      MEMORY[0x1B2718AE0](0x202E737620, 0xE500000000000000);
      v196 = v40;
      v104 = sub_1AF90D394(v40);
      MEMORY[0x1B2718AE0](v104);

      MEMORY[0x1B2718AE0](41, 0xE100000000000000);
      v195 = v203;
      v105 = v204;
      sub_1AF9371BC();
      v106 = v198;
      *&v202 = swift_allocError();
      v108 = v107;
      v109 = v197;
      *(v197 + v106[8]) = 0;
      *v109 = a1;
      v110 = v106[5];
      v111 = v200;
      v112 = v199;
      (*(v200 + 16))(v109 + v110, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v199);
      (*(v111 + 56))(v109 + v110, 0, 1, v112);
      v113 = v109 + v106[6];
      *v113 = 2;
      v113[8] = 96;
      v114 = (v109 + v106[7]);
      *v114 = v195;
      v114[1] = v105;
      sub_1AF94A0F8(v109, v108, type metadata accessor for GraphError);
      v115 = *(v37 + 24);
      v116 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v117 = *(v115 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

      v118 = swift_isUniquelyReferenced_nonNull_native();
      *(v115 + v116) = v117;
      if ((v118 & 1) == 0)
      {
        v117 = sub_1AF420408(0, v117[2] + 1, 1, v117);
        *(v115 + v116) = v117;
      }

      v120 = v117[2];
      v119 = v117[3];
      v121 = v201;
      v122 = v196;
      if (v120 >= v119 >> 1)
      {
        v117 = sub_1AF420408(v119 > 1, v120 + 1, 1, v117);
      }

      v117[2] = v120 + 1;
      a1 = v202;
      v117[v120 + 4] = v202;
      *(v115 + v116) = v117;
      swift_willThrow();
      v123 = a1;
      sub_1AF445BE4(v122);
      sub_1AF445BE4(v121);
    }
  }

  else
  {
    v196 = v26;
    *&v201 = v18;
    v194 = v22;
    v192 = v14;
    v195 = v10;
    v193 = v6;
    v41 = v202;
    type metadata accessor for SetVariableValueNode(0);
    if (swift_dynamicCastClass())
    {
      v42 = sub_1AF9443F0(1, a1, v2);
      if (v41)
      {
        return a1;
      }

      *&v202 = 0;
      v44 = *(v2 + 56);
      if (*(v44 + 16))
      {
        *&v201 = v2;
        v45 = v42;
        v46 = v43;

        v47 = sub_1AF419914(v45, v46);
        v49 = v48;

        if (v49)
        {
          v50 = *(*(v44 + 56) + 8 * v47);
          sub_1AF442064(v50);

          type metadata accessor for SetResolvedVariableValueNode(0);
          v51 = swift_allocObject();
          *(v51 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type) = v50;
          v52 = MEMORY[0x1E69E7CC0];
          v51[3] = 0;
          v51[4] = 0;
          v51[2] = v52;
          v53 = OBJC_IVAR____TtC3VFX4Node_authoringID;
          v183 = v50;
          sub_1AF442064(v50);
          v197 = v53;
          sub_1AFDFC308();
          v54 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
          v55 = v200;
          v56 = v196;
          v57 = v199;
          (*(v200 + 16))(v196, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v199);
          (*(v55 + 56))(v56, 0, 1, v57);
          v58 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
          v193 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
          v192 = v58;
          LODWORD(v191) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
          v59 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
          v190 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
          v189 = v59;
          LODWORD(v188) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
          v187 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
          LODWORD(v186) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
          v60 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
          v184 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          type metadata accessor for AuthoringNode();
          a1 = swift_allocObject();
          *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v51;
          v61 = *(v54 + 16);
          sub_1AF97C5BC(v205);
          v62 = v205[0];
          v211 = v205[1];
          v212 = v205[0];
          v185 = v60;

          v198 = v51;

          sub_1AF949D48(&v211, &qword_1EB638968, &type metadata for TypeConstraint);
          v210 = v205[2];
          sub_1AF949D48(&v210, &qword_1EB638968, &type metadata for TypeConstraint);
          v209 = v205[3];
          sub_1AF91219C(&v209);
          v208 = v205[4];
          sub_1AF91219C(&v208);
          v207 = v205[5];
          sub_1AF949D48(&v207, &qword_1EB638978, &type metadata for AnyValue);
          v63 = *(v62 + 16);
          sub_1AF949D48(&v212, &qword_1EB638968, &type metadata for TypeConstraint);
          if (v63 <= v61)
          {
            v64 = v61;
          }

          else
          {
            v64 = v63;
          }

          if (v64)
          {
            v203 = MEMORY[0x1E69E7CC0];
            sub_1AFC05D04(0, v64, 0);
            v65 = 0;
            v66 = v203;
            v67 = v195;
            v68 = v194;
            v69 = v54;
            do
            {
              v70 = 0uLL;
              if (v65 < v61)
              {
                v201 = *(v69 + 16 * v65 + 32);

                v70 = v201;
              }

              v203 = v66;
              v72 = *(v66 + 16);
              v71 = *(v66 + 24);
              if (v72 >= v71 >> 1)
              {
                v182 = v69;
                v201 = v70;
                sub_1AFC05D04(v71 > 1, v72 + 1, 1);
                v70 = v201;
                v69 = v182;
                v66 = v203;
              }

              ++v65;
              *(v66 + 16) = v72 + 1;
              *(v66 + 16 * v72 + 32) = v70;
            }

            while (v64 != v65);

            v57 = v199;
          }

          else
          {

            v66 = MEMORY[0x1E69E7CC0];
            v67 = v195;
            v68 = v194;
          }

          v140 = v196;
          *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v66;
          sub_1AF487314(v140, v68);
          v141 = v200;
          v142 = *(v200 + 48);
          if (v142(v68, 1, v57) == 1)
          {
            sub_1AFDFC308();
            sub_1AF445BE4(v183);
            sub_1AF949E6C(v140, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            if (v142(v68, 1, v57) != 1)
            {
              sub_1AF949E6C(v68, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            }
          }

          else
          {
            sub_1AF445BE4(v183);
            sub_1AF949E6C(v140, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
            (*(v141 + 32))(v67, v68, v57);
          }

          (*(v141 + 32))(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v67, v57);
          (*(v141 + 24))(v197 + v198, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v57);

          v143 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
          v144 = v192;
          *v143 = v193;
          *(v143 + 8) = v144;
          *(v143 + 16) = v191;
          v145 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
          v146 = v189;
          *v145 = v190;
          *(v145 + 8) = v146;
          *(v145 + 16) = v188;
          v147 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
          *v147 = v187;
          *(v147 + 8) = v186;
          v148 = (a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
          v149 = v185;
          *v148 = v184;
          v148[1] = v149;
          return a1;
        }

        v2 = v201;
      }

      else
      {
      }

      *&v201 = 0x80000001AFF3B500;
      sub_1AF9371BC();
      v124 = v198;
      *&v202 = swift_allocError();
      v126 = v125;
      v127 = v197;
      *(v197 + v124[8]) = 0;
      *v127 = a1;
      v128 = v124[5];
      v129 = v200;
      v130 = v199;
      (*(v200 + 16))(v127 + v128, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v199);
      (*(v129 + 56))(v127 + v128, 0, 1, v130);
      v131 = v127 + v124[6];
      *v131 = 1;
      v131[8] = 96;
      v132 = (v127 + v124[7]);
      *v132 = 0xD00000000000001CLL;
      v132[1] = v201;
      sub_1AF94A0F8(v127, v126, type metadata accessor for GraphError);
      v133 = *(v2 + 24);
      v134 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
      v135 = *(v133 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

      v136 = swift_isUniquelyReferenced_nonNull_native();
      *(v133 + v134) = v135;
      if ((v136 & 1) == 0)
      {
        v135 = sub_1AF420408(0, v135[2] + 1, 1, v135);
        *(v133 + v134) = v135;
      }

      a1 = v135[2];
      v137 = v135[3];
      if (a1 >= v137 >> 1)
      {
        v135 = sub_1AF420408(v137 > 1, a1 + 1, 1, v135);
      }

      v135[2] = a1 + 1;
      v138 = v202;
      v135[a1 + 4] = v202;
      *(v133 + v134) = v135;
      swift_willThrow();
      v139 = v138;
    }

    else
    {
      type metadata accessor for GetVariableValueNode(0);
      if (!swift_dynamicCastClass())
      {
        return 0;
      }

      v73 = sub_1AF9443F0(0, a1, v2);
      if (!v41)
      {
        v75 = *(v2 + 56);
        if (*(v75 + 16))
        {
          v76 = v2;
          v77 = v73;
          v78 = v74;

          v79 = sub_1AF419914(v77, v78);
          v81 = v80;

          if (v81)
          {
            v82 = *(*(v75 + 56) + 8 * v79);
            sub_1AF442064(v82);

            type metadata accessor for GetResolvedVariableValueNode(0);
            v83 = swift_allocObject();
            *(v83 + OBJC_IVAR____TtC3VFX21_ResolvedVariableNode_type) = v82;
            v84 = MEMORY[0x1E69E7CC0];
            v83[3] = 0;
            v83[4] = 0;
            v83[2] = v84;
            v85 = OBJC_IVAR____TtC3VFX4Node_authoringID;
            v184 = v82;
            sub_1AF442064(v82);
            v197 = v85;
            sub_1AFDFC308();
            v86 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
            v87 = v200;
            v88 = v201;
            v89 = v199;
            (*(v200 + 16))(v201, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v199);
            (*(v87 + 56))(v88, 0, 1, v89);
            v90 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 8);
            v196 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position);
            v195 = v90;
            LODWORD(v194) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position + 16);
            v91 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 8);
            v191 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size);
            v190 = v91;
            LODWORD(v189) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size + 16);
            v188 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex);
            LODWORD(v187) = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex + 8);
            v92 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName + 8);
            v185 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
            type metadata accessor for AuthoringNode();
            a1 = swift_allocObject();
            *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v83;
            v93 = *(v86 + 16);
            sub_1AF97C7FC(v206);
            v94 = v206[0];
            v218 = v206[0];
            v217 = v206[1];
            v186 = v92;

            v198 = v83;

            sub_1AF949D48(&v217, &qword_1EB638968, &type metadata for TypeConstraint);
            v216 = v206[2];
            sub_1AF949D48(&v216, &qword_1EB638968, &type metadata for TypeConstraint);
            v215 = v206[3];
            sub_1AF91219C(&v215);
            v214 = v206[4];
            sub_1AF91219C(&v214);
            v213 = v206[5];
            sub_1AF949D48(&v213, &qword_1EB638978, &type metadata for AnyValue);
            v95 = *(v94 + 16);
            sub_1AF949D48(&v218, &qword_1EB638968, &type metadata for TypeConstraint);
            if (v95 <= v93)
            {
              v96 = v93;
            }

            else
            {
              v96 = v95;
            }

            if (v96)
            {
              v203 = MEMORY[0x1E69E7CC0];
              sub_1AFC05D04(0, v96, 0);
              v97 = 0;
              v98 = v203;
              do
              {
                v99 = 0uLL;
                if (v97 < v93)
                {
                  v202 = *(v86 + 16 * v97 + 32);

                  v99 = v202;
                }

                v203 = v98;
                v101 = *(v98 + 16);
                v100 = *(v98 + 24);
                if (v101 >= v100 >> 1)
                {
                  v202 = v99;
                  sub_1AFC05D04(v100 > 1, v101 + 1, 1);
                  v99 = v202;
                  v98 = v203;
                }

                ++v97;
                *(v98 + 16) = v101 + 1;
                *(v98 + 16 * v101 + 32) = v99;
              }

              while (v96 != v97);
            }

            else
            {

              v98 = MEMORY[0x1E69E7CC0];
            }

            *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v98;
            v167 = v201;
            v168 = v192;
            sub_1AF487314(v201, v192);
            v169 = v200;
            v170 = *(v200 + 48);
            v171 = v199;
            v172 = v170(v168, 1, v199);
            v173 = v193;
            if (v172 == 1)
            {
              sub_1AFDFC308();
              sub_1AF445BE4(v184);
              sub_1AF949E6C(v167, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              if (v170(v168, 1, v171) != 1)
              {
                sub_1AF949E6C(v168, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              }
            }

            else
            {
              sub_1AF445BE4(v184);
              sub_1AF949E6C(v167, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
              (*(v169 + 32))(v173, v168, v171);
            }

            (*(v169 + 32))(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v173, v171);
            (*(v169 + 24))(v197 + v198, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v171);

            v174 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
            v175 = v195;
            *v174 = v196;
            *(v174 + 8) = v175;
            *(v174 + 16) = v194;
            v176 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
            v177 = v190;
            *v176 = v191;
            *(v176 + 8) = v177;
            *(v176 + 16) = v189;
            v178 = a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
            *v178 = v188;
            *(v178 + 8) = v187;
            v179 = (a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
            v180 = v186;
            *v179 = v185;
            v179[1] = v180;
            return a1;
          }

          v2 = v76;
        }

        else
        {
        }

        sub_1AF9371BC();
        v150 = v198;
        *&v202 = swift_allocError();
        v152 = v151;
        v153 = v197;
        *(v197 + v150[8]) = 0;
        *v153 = a1;
        v154 = v150[5];
        v155 = v200;
        v156 = v199;
        (*(v200 + 16))(v153 + v154, a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v199);
        (*(v155 + 56))(v153 + v154, 0, 1, v156);
        v157 = v153 + v150[6];
        *v157 = 0;
        v157[8] = 96;
        v158 = (v153 + v150[7]);
        *v158 = 0xD00000000000001CLL;
        v158[1] = 0x80000001AFF3B500;
        sub_1AF94A0F8(v153, v152, type metadata accessor for GraphError);
        v159 = *(v2 + 24);
        v160 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
        v161 = *(v159 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

        v162 = swift_isUniquelyReferenced_nonNull_native();
        *(v159 + v160) = v161;
        if ((v162 & 1) == 0)
        {
          v161 = sub_1AF420408(0, v161[2] + 1, 1, v161);
          *(v159 + v160) = v161;
        }

        a1 = v161[2];
        v163 = v161[3];
        if (a1 >= v163 >> 1)
        {
          v161 = sub_1AF420408(v163 > 1, a1 + 1, 1, v161);
        }

        v161[2] = a1 + 1;
        v164 = v202;
        v161[a1 + 4] = v202;
        *(v159 + v160) = v161;
        swift_willThrow();
        v165 = v164;
      }
    }
  }

  return a1;
}

void *sub_1AF9443F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GraphError(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!*(*(a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16 * a1 + 32) || (, v10 = sub_1AF9A1B58(1, 0), v12 = v11, , !v12))
  {
    sub_1AF9371BC();
    v13 = swift_allocError();
    v29 = v14;
    *(v9 + v6[8]) = 0;
    *v9 = a2;
    v15 = v6[5];
    v16 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v17 = sub_1AFDFC318();
    v18 = a3;
    v19 = *(v17 - 8);
    (*(v19 + 16))(v9 + v15, a2 + v16, v17);
    (*(v19 + 56))(v9 + v15, 0, 1, v17);
    v20 = v9 + v6[6];
    *v20 = 2;
    v20[8] = -64;
    *(v9 + v6[7]) = xmmword_1AFE86250;
    sub_1AF94A0F8(v9, v29, type metadata accessor for GraphError);
    v21 = *(v18 + 24);
    v22 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v10 = *(v21 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v21 + v22) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1AF420408(0, v10[2] + 1, 1, v10);
      *(v21 + v22) = v10;
    }

    v25 = v10[2];
    v24 = v10[3];
    if (v25 >= v24 >> 1)
    {
      v10 = sub_1AF420408(v24 > 1, v25 + 1, 1, v10);
    }

    v10[2] = v25 + 1;
    v10[v25 + 4] = v13;
    *(v21 + v22) = v10;
    swift_willThrow();
    v26 = v13;
  }

  return v10;
}

unint64_t *sub_1AF94468C(uint64_t a1)
{
  v2 = v1;
  v239 = *v1;
  sub_1AF949DCC(0, &qword_1EB632708, type metadata accessor for GraphError);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v229 - v6);
  v8 = type metadata accessor for GraphError(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v229 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v229 - v15;
  v17 = type metadata accessor for AuthoringGraph();
  sub_1AF922E30(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    sub_1AF94A0F8(v7, v16, type metadata accessor for GraphError);
    sub_1AF9371BC();
    swift_allocError();
    sub_1AF92385C(v16, v26);
    swift_willThrow();
    sub_1AF94A160(v16, type metadata accessor for GraphError);
    return v17;
  }

  v237 = v8;
  v238 = v12;
  v18 = sub_1AF949E6C(v7, &qword_1EB632708, type metadata accessor for GraphError);
  v19 = *(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw);
  v20 = *(*v19 + 152);
  v21 = *v19 + 152;
  v20(&v247, v18);
  v22 = v242;
  v23 = sub_1AF93EFD4(a1);
  v24 = v22;
  if (v22)
  {
    v354 = v247;
    v17 = &qword_1EB638968;
    sub_1AF949D48(&v354, &qword_1EB638968, &type metadata for TypeConstraint);
    v353 = v248;
    sub_1AF949D48(&v353, &qword_1EB638968, &type metadata for TypeConstraint);
    v352 = v249;
    sub_1AF949D48(&v352, &qword_1EB638968, &type metadata for TypeConstraint);
    v351 = v250;
    sub_1AF91219C(&v351);
    v350 = v251;
    sub_1AF91219C(&v350);
    v349 = v252;
    v25 = &v349;
LABEL_4:
    sub_1AF949D48(v25, &qword_1EB638978, &type metadata for AnyValue);
    return v17;
  }

  v231 = v21;
  v232 = v20;
  v240 = v2;
  v28 = v23[2];
  v29 = MEMORY[0x1E69E7CC0];
  v236 = v23;
  if (v28)
  {
    v30 = v23;
    v233 = v19;
    v234 = a1;
    v235 = 0;
    v244 = MEMORY[0x1E69E7CC0];
    sub_1AFC078EC(0, v28, 0);
    v29 = v244;
    v348 = v247;
    v31 = (v247 + 32);
    v32 = v30 + 5;
    while (1)
    {
      v242 = v29;
      v33 = *(v32 - 1);
      v34 = *v32;
      v35 = *v31;
      v241 = v31 + 1;
      v36 = swift_allocObject();
      *(v36 + 16) = 0xC000000000000008;

      sub_1AF4410A8(v35);
      v37 = sub_1AF9C5694(v35, v36 | 0x8000000000000000);

      sub_1AF441114(v35);
      if (v37)
      {

        v38 = 0xC000000000000008;
      }

      else
      {
        v39 = sub_1AF93F510(v33);
        v40 = v39;
        if (v41)
        {
          v246 = v39;
          sub_1AF5C5358(0, &qword_1ED7268D0);
          swift_willThrowTypedImpl();
          goto LABEL_34;
        }

        (*(**(v33 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(&v253);
        v42 = v254;
        v346 = v253;
        v347 = v254;
        sub_1AF949D48(&v346, &qword_1EB638968, &type metadata for TypeConstraint);
        v345 = v255;
        sub_1AF949D48(&v345, &qword_1EB638968, &type metadata for TypeConstraint);
        v344 = v256;
        sub_1AF91219C(&v344);
        v343 = v257;
        sub_1AF91219C(&v343);
        v342 = v258;
        sub_1AF949D48(&v342, &qword_1EB638978, &type metadata for AnyValue);
        v43 = *(v42 + 16);
        sub_1AF949D48(&v347, &qword_1EB638968, &type metadata for TypeConstraint);
        if (v34 >= v43)
        {
          v241 = v40;
          sub_1AF9371BC();
          v56 = v237;
          v57 = swift_allocError();
          v239 = v58;
          v59 = v238;
          v238[v56[8]] = 0;
          v60 = v234;
          *v59 = v234;
          v61 = v56[5];
          v235 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v62 = sub_1AFDFC318();
          v63 = *(v62 - 8);
          (*(v63 + 16))(&v59[v61], v235 + v60, v62);
          (*(v63 + 56))(&v59[v61], 0, 1, v62);
          v64 = &v59[v56[6]];
          *v64 = 3;
          v64[8] = -64;
          *&v59[v56[7]] = xmmword_1AFE86260;
          sub_1AF94A0F8(v59, v239, type metadata accessor for GraphError);
          v65 = *(v240 + 24);
          v66 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v67 = *(v65 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v65 + v66) = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v67 = sub_1AF420408(0, v67[2] + 1, 1, v67);
            *(v65 + v66) = v67;
          }

          v70 = v67[2];
          v69 = v67[3];
          if (v70 >= v69 >> 1)
          {
            v67 = sub_1AF420408(v69 > 1, v70 + 1, 1, v67);
          }

          v67[2] = v70 + 1;
          v67[v70 + 4] = v57;
          *(v65 + v66) = v67;
          swift_willThrow();
          v71 = v57;
          sub_1AF85AA70(v241, 0);
LABEL_34:

          sub_1AF949D48(&v348, &qword_1EB638968, &type metadata for TypeConstraint);
          v341 = v248;
          v17 = &qword_1EB638968;
          sub_1AF949D48(&v341, &qword_1EB638968, &type metadata for TypeConstraint);
          v340 = v249;
          sub_1AF949D48(&v340, &qword_1EB638968, &type metadata for TypeConstraint);
          v339 = v250;
          sub_1AF91219C(&v339);
          v338 = v251;
          sub_1AF91219C(&v338);
          v337 = v252;
          sub_1AF949D48(&v337, &qword_1EB638978, &type metadata for AnyValue);

LABEL_35:

          return v17;
        }

        v44 = v40[3];
        v45 = v40[4] + 8 * v34;
        v46 = v40;
        v38 = *(v45 + 32);
        sub_1AF448650(v44);
        sub_1AF442064(v38);

        sub_1AF85AA70(v46, 0);
      }

      v29 = v242;
      v244 = v242;
      v48 = *(v242 + 16);
      v47 = *(v242 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1AFC078EC(v47 > 1, v48 + 1, 1);
        v29 = v244;
      }

      v32 += 2;
      *(v29 + 16) = v48 + 1;
      *(v29 + 8 * v48 + 32) = v38;
      --v28;
      v31 = v241;
      if (!v28)
      {
        a1 = v234;
        v24 = v235;
        v19 = v233;
        break;
      }
    }
  }

  type metadata accessor for _VariableNode(0);
  if (swift_dynamicCastClass())
  {
    v49 = sub_1AF942D74(a1, v29);
    if (v24)
    {

      v336 = v247;
      v17 = &qword_1EB638968;
      sub_1AF949D48(&v336, &qword_1EB638968, &type metadata for TypeConstraint);
      v335 = v248;
      sub_1AF949D48(&v335, &qword_1EB638968, &type metadata for TypeConstraint);
      v334 = v249;
      sub_1AF949D48(&v334, &qword_1EB638968, &type metadata for TypeConstraint);
      v333 = v250;
      sub_1AF91219C(&v333);
      v332 = v251;
      sub_1AF91219C(&v332);
      v331 = v252;
      v25 = &v331;
      goto LABEL_4;
    }

    v50 = v49;
    if (v49)
    {

      v268 = v247;
      sub_1AF949D48(&v268, &qword_1EB638968, &type metadata for TypeConstraint);
      v267 = v248;
      sub_1AF949D48(&v267, &qword_1EB638968, &type metadata for TypeConstraint);
      v266 = v249;
      sub_1AF949D48(&v266, &qword_1EB638968, &type metadata for TypeConstraint);
      v265 = v250;
      sub_1AF91219C(&v265);
      v264 = v251;
      sub_1AF91219C(&v264);
      v263 = v252;
      v51 = &v263;
LABEL_23:
      sub_1AF949D48(v51, &qword_1EB638978, &type metadata for AnyValue);

      v52 = v50;
      v17 = v240;
LABEL_26:
      v55 = sub_1AF94468C(v52);
      if (v24)
      {
        goto LABEL_35;
      }

      v17 = v55;

      return v17;
    }
  }

  v17 = v240;
  v53 = sub_1AF9423CC(a1, v29);
  if (v53)
  {
    v54 = v53;

    v274 = v247;
    sub_1AF949D48(&v274, &qword_1EB638968, &type metadata for TypeConstraint);
    v273 = v248;
    sub_1AF949D48(&v273, &qword_1EB638968, &type metadata for TypeConstraint);
    v272 = v249;
    sub_1AF949D48(&v272, &qword_1EB638968, &type metadata for TypeConstraint);
    v271 = v250;
    sub_1AF91219C(&v271);
    v270 = v251;
    sub_1AF91219C(&v270);
    v269 = v252;
    sub_1AF949D48(&v269, &qword_1EB638978, &type metadata for AnyValue);

    v52 = v54;
    goto LABEL_26;
  }

  v233 = v19;
  v234 = a1;
  v72 = v247;
  v73 = *(v29 + 16);

  if (v73)
  {
    for (i = 4; i - v73 != 4; ++i)
    {
      v75 = i - 4;
      if (i - 4 == *(v72 + 16))
      {
        break;
      }

      v76 = *(v29 + 8 * i);
      v77 = *(v72 + 8 * i);
      sub_1AF442064(v76);
      sub_1AF4410A8(v77);
      if ((sub_1AF9C4C80(v76, v77) & 1) == 0)
      {
        v78 = *(v240 + 64);
        v241 = v76;
        v230 = v77;
        if (v78 != 1)
        {
          swift_bridgeObjectRelease_n();

          v330 = v248;
          sub_1AF949D48(&v330, &qword_1EB638968, &type metadata for TypeConstraint);
          v329 = v249;
          sub_1AF949D48(&v329, &qword_1EB638968, &type metadata for TypeConstraint);
          v328 = v250;
          sub_1AF91219C(&v328);
          v327 = v251;
          sub_1AF91219C(&v327);
          v326 = v252;
          v85 = &v326;
          goto LABEL_52;
        }

        if (v77 >> 61 != 4)
        {
          swift_bridgeObjectRelease_n();

          v325 = v248;
          sub_1AF949D48(&v325, &qword_1EB638968, &type metadata for TypeConstraint);
          v324 = v249;
          sub_1AF949D48(&v324, &qword_1EB638968, &type metadata for TypeConstraint);
          v323 = v250;
          sub_1AF91219C(&v323);
          v322 = v251;
          sub_1AF91219C(&v322);
          v321 = v252;
          v85 = &v321;
          goto LABEL_52;
        }

        v79 = *((v77 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        type metadata accessor for CastNode(0);
        sub_1AF442064(v79);
        v235 = v24;
        v80 = v72;
        v81 = v241;
        v82 = sub_1AF98750C(v241, v79);
        v83 = v79;
        v76 = v81;
        v72 = v80;
        v75 = i - 4;
        v24 = v235;
        sub_1AF445BE4(v83);
        v84 = v82 == 1;
        v77 = v230;
        if (!v84)
        {
          swift_bridgeObjectRelease_n();

          v320 = v248;
          sub_1AF949D48(&v320, &qword_1EB638968, &type metadata for TypeConstraint);
          v319 = v249;
          sub_1AF949D48(&v319, &qword_1EB638968, &type metadata for TypeConstraint);
          v318 = v250;
          sub_1AF91219C(&v318);
          v317 = v251;
          sub_1AF91219C(&v317);
          v316 = v252;
          v85 = &v316;
LABEL_52:
          sub_1AF949D48(v85, &qword_1EB638978, &type metadata for AnyValue);
          v244 = 0;
          v245 = 0xE000000000000000;
          sub_1AFDFE218();

          v244 = 0x207475706E49;
          v245 = 0xE600000000000000;
          (v232)(v259, v89);
          v315 = v260;
          v90 = sub_1AF970A64(v75, v260);
          v92 = v91;
          v314 = v259[0];
          sub_1AF949D48(&v314, &qword_1EB638968, &type metadata for TypeConstraint);
          v313 = v259[1];
          sub_1AF949D48(&v313, &qword_1EB638968, &type metadata for TypeConstraint);
          v312 = v259[2];
          sub_1AF949D48(&v312, &qword_1EB638968, &type metadata for TypeConstraint);
          sub_1AF91219C(&v315);
          v311 = v261;
          sub_1AF91219C(&v311);
          v310 = v262;
          sub_1AF949D48(&v310, &qword_1EB638978, &type metadata for AnyValue);
          MEMORY[0x1B2718AE0](v90, v92);

          MEMORY[0x1B2718AE0](0x7374636570786520, 0xEE00206570797420);
          v93 = sub_1AF9C50D4(v230);
          MEMORY[0x1B2718AE0](v93);

          MEMORY[0x1B2718AE0](0x20746F6E202CLL, 0xE600000000000000);
          v94 = sub_1AF90D394(v241);
          MEMORY[0x1B2718AE0](v94);

          v242 = v244;
          v239 = v245;
          sub_1AF9371BC();
          v95 = v237;
          v235 = swift_allocError();
          v236 = v96;
          v97 = v238;
          v238[v95[8]] = 0;
          v98 = v234;
          *v97 = v234;
          v99 = v95[5];
          v233 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v100 = sub_1AFDFC318();
          v101 = *(v100 - 8);
          (*(v101 + 16))(&v97[v99], v233 + v98, v100);
          (*(v101 + 56))(&v97[v99], 0, 1, v100);
          v102 = &v97[v95[6]];
          *v102 = v75;
          v102[8] = 32;
          v103 = &v97[v95[7]];
          v104 = v239;
          *v103 = v242;
          v103[1] = v104;
          sub_1AF94A0F8(v97, v236, type metadata accessor for GraphError);
          v105 = *(v240 + 24);
          v106 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v17 = *(v105 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          v107 = swift_isUniquelyReferenced_nonNull_native();
          *(v105 + v106) = v17;
          if ((v107 & 1) == 0)
          {
            v17 = sub_1AF420408(0, v17[2] + 1, 1, v17);
            *(v105 + v106) = v17;
          }

          v109 = v17[2];
          v108 = v17[3];
          v110 = v235;
          if (v109 >= v108 >> 1)
          {
            v17 = sub_1AF420408(v108 > 1, v109 + 1, 1, v17);
          }

          v17[2] = v109 + 1;
          v17[v109 + 4] = v110;
          *(v105 + v106) = v17;
          swift_willThrow();
          v111 = v110;
          v112 = v110;
          sub_1AF445BE4(v241);
          sub_1AF441114(v230);
          goto LABEL_57;
        }
      }

      sub_1AF445BE4(v76);
      sub_1AF441114(v77);
    }
  }

  v86 = v234;
  v87 = sub_1AF941248(v29, v72, *(v240 + 64), v234);
  if (v24)
  {

    v309 = v248;
    v17 = &qword_1EB638968;
    sub_1AF949D48(&v309, &qword_1EB638968, &type metadata for TypeConstraint);
    v308 = v249;
    sub_1AF949D48(&v308, &qword_1EB638968, &type metadata for TypeConstraint);
    v307 = v250;
    sub_1AF91219C(&v307);
    v306 = v251;
    sub_1AF91219C(&v306);
    v305 = v252;
    v25 = &v305;
    goto LABEL_4;
  }

  v88 = v87;
  v24 = 0;
  v50 = sub_1AF940EA8(v86, v29, v87);
  v232 = v88;
  if (v50)
  {

    v279 = v248;
    sub_1AF949D48(&v279, &qword_1EB638968, &type metadata for TypeConstraint);
    v278 = v249;
    sub_1AF949D48(&v278, &qword_1EB638968, &type metadata for TypeConstraint);
    v277 = v250;
    sub_1AF91219C(&v277);
    v276 = v251;
    sub_1AF91219C(&v276);
    v275 = v252;
    v51 = &v275;
    goto LABEL_23;
  }

  v113 = 1 << v232[32];
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & *(v232 + 8);
  v116 = (v113 + 63) >> 6;

  v117 = 0;
  if (v115)
  {
    while (1)
    {
      v118 = v117;
      v119 = v232;
LABEL_65:
      v120 = (v118 << 9) | (8 * __clz(__rbit64(v115)));
      v121 = *(*(v119 + 48) + v120);
      v122 = *(*(v119 + 56) + v120);
      v284 = v249;
      v235 = v121;
      v123 = *(v249 + 8 * v121 + 32);
      sub_1AF442064(v122);
      sub_1AF4410A8(v123);
      v241 = v122;
      v231 = v123;
      if ((sub_1AF9C4C80(v122, v123) & 1) == 0)
      {
        break;
      }

      v115 &= v115 - 1;
      sub_1AF441114(v231);
      sub_1AF445BE4(v241);
      v117 = v118;
      v86 = v234;
      if (!v115)
      {
        goto LABEL_62;
      }
    }

    v283 = v248;
    sub_1AF949D48(&v283, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF949D48(&v284, &qword_1EB638968, &type metadata for TypeConstraint);
    v282 = v250;
    sub_1AF91219C(&v282);
    v281 = v251;
    sub_1AF91219C(&v281);
    v280 = v252;
    sub_1AF949D48(&v280, &qword_1EB638978, &type metadata for AnyValue);

    v172 = sub_1AF9C5BB8(v235);
    v174 = v173;
    v244 = 0;
    v245 = 0xE000000000000000;
    sub_1AFDFE218();

    v244 = 0x6465766C6F736552;
    v245 = 0xE900000000000020;
    MEMORY[0x1B2718AE0](v172, v174);

    MEMORY[0x1B2718AE0](61, 0xE100000000000000);
    v175 = sub_1AF90D394(v241);
    MEMORY[0x1B2718AE0](v175);

    MEMORY[0x1B2718AE0](0xD00000000000001DLL, 0x80000001AFF3B4A0);
    v176 = v231;
    v177 = sub_1AF9C50D4(v231);
    MEMORY[0x1B2718AE0](v177);

    v242 = v244;
    v239 = v245;
    sub_1AF9371BC();
    v178 = v237;
    v235 = swift_allocError();
    v236 = v179;
    v180 = v238;
    v238[v178[8]] = 0;
    v181 = v234;
    *v180 = v234;
    v182 = v181;
    v183 = v178[5];
    v184 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v185 = sub_1AFDFC318();
    v186 = *(v185 - 8);
    (*(v186 + 16))(&v180[v183], v182 + v184, v185);
    (*(v186 + 56))(&v180[v183], 0, 1, v185);
    v187 = &v180[v178[6]];
    *v187 = 0;
    v187[8] = 33;
    v188 = &v180[v178[7]];
    v189 = v239;
    *v188 = v242;
    v188[1] = v189;
    sub_1AF94A0F8(v180, v236, type metadata accessor for GraphError);
    v190 = *(v240 + 24);
    v191 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
    v17 = *(v190 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

    v192 = swift_isUniquelyReferenced_nonNull_native();
    *(v190 + v191) = v17;
    if ((v192 & 1) == 0)
    {
      v17 = sub_1AF420408(0, v17[2] + 1, 1, v17);
      *(v190 + v191) = v17;
    }

    v194 = v17[2];
    v193 = v17[3];
    if (v194 >= v193 >> 1)
    {
      v17 = sub_1AF420408(v193 > 1, v194 + 1, 1, v17);
    }

    v17[2] = v194 + 1;
    v110 = v235;
    v17[v194 + 4] = v235;
    *(v190 + v191) = v17;
    swift_willThrow();
    v195 = v110;

    v196 = v110;
    sub_1AF441114(v176);
    sub_1AF445BE4(v241);
LABEL_57:
  }

  else
  {
LABEL_62:
    v119 = v232;
    while (1)
    {
      v118 = v117 + 1;
      if (v117 + 1 >= v116)
      {
        break;
      }

      v115 = *&v232[8 * v117++ + 72];
      if (v115)
      {
        goto LABEL_65;
      }
    }

    v124 = v236[2];
    if (v124)
    {
      v235 = v72;
      v244 = MEMORY[0x1E69E7CC0];
      v125 = v236;
      sub_1AFC05E7C(0, v124, 0);
      v126 = 0;
      v241 = v244;
      v242 = v29;
      v127 = (v125 + 40);
      v231 = v124;
      do
      {
        v128 = *(v127 - 1);
        v129 = *v127;

        v130 = sub_1AF9498E8(v126, v128, v129, v240, v235);
        v132 = v131;

        v133 = v241;
        v244 = v241;
        v135 = v241[2];
        v134 = v241[3];
        if (v135 >= v134 >> 1)
        {
          sub_1AFC05E7C(v134 > 1, v135 + 1, 1);
          v133 = v244;
        }

        v127 += 2;
        ++v126;
        v133[2] = v135 + 1;
        v241 = v133;
        v136 = &v133[2 * v135];
        v136[4] = v130;
        v136[5] = v132;
        v86 = v234;
        v29 = v242;
      }

      while (v231 != v126);

      v137 = v240;
    }

    else
    {

      v241 = MEMORY[0x1E69E7CC0];
      v137 = v240;
    }

    v138 = v233;
    if (*v86 == _TtC3VFX21AuthoringSubGraphNode)
    {

      v289 = v248;
      sub_1AF949D48(&v289, &qword_1EB638968, &type metadata for TypeConstraint);
      v288 = v249;
      sub_1AF949D48(&v288, &qword_1EB638968, &type metadata for TypeConstraint);
      v287 = v250;
      sub_1AF91219C(&v287);
      v286 = v251;
      sub_1AF91219C(&v286);
      v285 = v252;
      sub_1AF949D48(&v285, &qword_1EB638978, &type metadata for AnyValue);
      v17 = sub_1AF93FB3C(v86, v29, v241);
    }

    else
    {
      type metadata accessor for CastNode(0);
      v139 = swift_dynamicCastClass();
      if (v139)
      {
        v140 = *(v29 + 32);
        v141 = OBJC_IVAR____TtC3VFX8CastNode_dstType;
        v236 = v139;
        v142 = *(v139 + OBJC_IVAR____TtC3VFX8CastNode_dstType);

        sub_1AF442064(v140);
        sub_1AF442064(v142);
        v143 = sub_1AF98750C(v140, v142);
        sub_1AF445BE4(v142);
        sub_1AF445BE4(v140);
        if (v143 == 2)
        {

          v294 = v248;
          sub_1AF949D48(&v294, &qword_1EB638968, &type metadata for TypeConstraint);
          v293 = v249;
          sub_1AF949D48(&v293, &qword_1EB638968, &type metadata for TypeConstraint);
          v292 = v250;
          sub_1AF91219C(&v292);
          v291 = v251;
          sub_1AF91219C(&v291);
          v290 = v252;
          sub_1AF949D48(&v290, &qword_1EB638978, &type metadata for AnyValue);

          v244 = 0;
          v245 = 0xE000000000000000;
          sub_1AFDFE218();

          v244 = 0xD000000000000014;
          v245 = 0x80000001AFF3B4E0;
          v144 = *(v29 + 32);
          sub_1AF442064(v144);

          v145 = sub_1AF90D394(v144);
          v147 = v146;
          sub_1AF445BE4(v144);
          MEMORY[0x1B2718AE0](v145, v147);

          MEMORY[0x1B2718AE0](0x209286E220, 0xA500000000000000);
          v148 = *(v236 + v141);
          sub_1AF442064(v148);
          v149 = sub_1AF90D394(v148);
          v151 = v150;
          sub_1AF445BE4(v148);
          MEMORY[0x1B2718AE0](v149, v151);

          MEMORY[0x1B2718AE0](41, 0xE100000000000000);
          v152 = v244;
          v242 = v245;
          sub_1AF9371BC();
          v153 = v237;
          v235 = swift_allocError();
          v241 = v154;
          v155 = v238;
          v238[v153[8]] = 0;
          v156 = v234;
          *v155 = v234;
          v157 = v153[5];
          v158 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v159 = sub_1AFDFC318();
          v160 = *(v159 - 8);
          (*(v160 + 16))(&v155[v157], v156 + v158, v159);
          (*(v160 + 56))(&v155[v157], 0, 1, v159);
          v161 = &v155[v153[6]];
          *v161 = 1;
          v161[8] = -64;
          v162 = &v155[v153[7]];
          v163 = v241;
          v164 = v242;
          *v162 = v152;
          v162[1] = v164;
          sub_1AF94A0F8(v155, v163, type metadata accessor for GraphError);
          v165 = *(v240 + 24);
          v166 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v17 = *(v165 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          v167 = swift_isUniquelyReferenced_nonNull_native();
          *(v165 + v166) = v17;
          if ((v167 & 1) == 0)
          {
            v17 = sub_1AF420408(0, v17[2] + 1, 1, v17);
            *(v165 + v166) = v17;
          }

          v169 = v17[2];
          v168 = v17[3];
          if (v169 >= v168 >> 1)
          {
            v17 = sub_1AF420408(v168 > 1, v169 + 1, 1, v17);
          }

          v17[2] = v169 + 1;
          v170 = v235;
          v17[v169 + 4] = v235;
          *(v165 + v166) = v17;
          swift_willThrow();
          v171 = v170;
          goto LABEL_35;
        }

        v138 = v233;

        v86 = v234;
        v137 = v240;
      }

      if (*v138 == _TtC3VFX17SubGraphEnterNode)
      {
        v197 = v86;

        v299 = v248;
        sub_1AF949D48(&v299, &qword_1EB638968, &type metadata for TypeConstraint);
        v298 = v249;
        sub_1AF949D48(&v298, &qword_1EB638968, &type metadata for TypeConstraint);
        v297 = v250;
        sub_1AF91219C(&v297);
        v296 = v251;
        sub_1AF91219C(&v296);
        v295 = v252;
        sub_1AF949D48(&v295, &qword_1EB638978, &type metadata for AnyValue);

        v198 = *(v137 + 48);
      }

      else
      {
        v242 = v29;

        v201 = v248;
        v304[0] = v248;
        v303 = v249;
        sub_1AF949D48(&v303, &qword_1EB638968, &type metadata for TypeConstraint);
        v302 = v250;
        sub_1AF91219C(&v302);
        v301 = v251;
        sub_1AF91219C(&v301);
        v300 = v252;
        sub_1AF949D48(&v300, &qword_1EB638978, &type metadata for AnyValue);
        v202 = *(v201 + 16);
        if (v202)
        {
          v235 = 0;
          v246 = MEMORY[0x1E69E7CC0];
          sub_1AFC078EC(0, v202, 0);
          v203 = 0;
          v198 = v246;
          v204 = v201 + 32;
          while (1)
          {
            v205 = *(v204 + 8 * v203);
            sub_1AF4410A8(v205);
            v206 = sub_1AF93FA18(v205, v232);
            if ((~v206 & 0xF000000000000007) == 0)
            {
              break;
            }

            v207 = v206;
            sub_1AF441114(v205);
            v246 = v198;
            v209 = *(v198 + 16);
            v208 = *(v198 + 24);
            if (v209 >= v208 >> 1)
            {
              sub_1AFC078EC(v208 > 1, v209 + 1, 1);
              v198 = v246;
            }

            ++v203;
            *(v198 + 16) = v209 + 1;
            *(v198 + 8 * v209 + 32) = v207;
            if (v202 == v203)
            {
              sub_1AF949D48(v304, &qword_1EB638968, &type metadata for TypeConstraint);

              goto LABEL_105;
            }
          }

          v244 = 0;
          v245 = 0xE000000000000000;
          sub_1AFDFE218();

          v244 = 0x2074757074754FLL;
          v245 = 0xE700000000000000;
          v243 = v203;
          v210 = sub_1AFDFEA08();
          MEMORY[0x1B2718AE0](v210);

          MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3B4C0);
          v239 = v244;
          v236 = v245;
          sub_1AF9371BC();
          v211 = v237;
          v235 = swift_allocError();
          v233 = v212;
          v213 = v238;
          v238[v211[8]] = 0;
          v214 = v234;
          *v213 = v234;
          v215 = v211[5];
          v231 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v216 = sub_1AFDFC318();
          v217 = *(v216 - 8);
          (*(v217 + 16))(&v213[v215], v214 + v231, v216);
          (*(v217 + 56))(&v213[v215], 0, 1, v216);
          v218 = &v213[v211[6]];
          *v218 = 5;
          v218[8] = -64;
          v219 = &v213[v211[7]];
          v220 = v236;
          *v219 = v239;
          *(v219 + 1) = v220;
          sub_1AF94A0F8(v213, v233, type metadata accessor for GraphError);
          v221 = *(v240 + 24);
          v222 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
          v17 = *(v221 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

          v223 = swift_isUniquelyReferenced_nonNull_native();
          *(v221 + v222) = v17;
          if ((v223 & 1) == 0)
          {
            v17 = sub_1AF420408(0, v17[2] + 1, 1, v17);
            *(v221 + v222) = v17;
          }

          v225 = v17[2];
          v224 = v17[3];
          if (v225 >= v224 >> 1)
          {
            v17 = sub_1AF420408(v224 > 1, v225 + 1, 1, v17);
          }

          v17[2] = v225 + 1;
          v226 = v235;
          v17[v225 + 4] = v235;
          *(v221 + v222) = v17;
          swift_willThrow();
          v227 = v226;

          sub_1AF949D48(v304, &qword_1EB638968, &type metadata for TypeConstraint);

          sub_1AF441114(v205);
          goto LABEL_35;
        }

        sub_1AF949D48(v304, &qword_1EB638968, &type metadata for TypeConstraint);

        v198 = MEMORY[0x1E69E7CC0];
LABEL_105:
        v197 = v234;
        v29 = v242;
      }

      MEMORY[0x1EEE9AC00](v199, v200);
      *(&v229 - 6) = v197;
      *(&v229 - 5) = v241;
      *(&v229 - 4) = v29;
      v228 = v239;
      *(&v229 - 3) = v198;
      *(&v229 - 2) = v228;
      v17 = sub_1AF96FE5C(sub_1AF949E40);
    }
  }

  return v17;
}

uint64_t sub_1AF9469F4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
  v11 = OBJC_IVAR____TtC3VFX4Node_authoringID;
  v12 = sub_1AFDFC318();
  v13 = *(*(v12 - 8) + 24);

  v13(&a1[v11], a2 + v10, v12);
  *(a1 + 2) = a3;

  v14 = *(a1 + 3);
  *(a1 + 3) = a4;
  *(a1 + 4) = a5;

  return sub_1AF919DAC(v14);
}

uint64_t sub_1AF946AE0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1AF946B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  (*(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(&v28);
  v39 = v28;
  if (*(v28 + 16) <= a2)
  {
    goto LABEL_6;
  }

  v6 = *(v28 + 8 * a2 + 32);
  if (v6 >> 61 == 4)
  {

    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    v38 = v29;
    sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v37 = v30;
    sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    v36 = v31;
    sub_1AF91219C(&v36);
    v35 = v32;
    sub_1AF91219C(&v35);
    v34 = v33;
    sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
    v7 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    sub_1AF442064(v7);
    sub_1AF441114(v6);
    return v7;
  }

  sub_1AF4410A8(v6);
  v9 = sub_1AF9C503C(v6);
  if (v10)
  {
    sub_1AF441114(v6);
LABEL_6:
    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    v38 = v29;
    sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v37 = v30;
    sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    v36 = v31;
    sub_1AF91219C(&v36);
    v35 = v32;
    sub_1AF91219C(&v35);
    v34 = v33;
    sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
    return 0xF000000000000007;
  }

  v11 = v9;
  v38 = v30;
  v12 = *(v30 + 8 * v9 + 32);
  if (v12 >> 61 != 4)
  {
    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
    v16 = v29;
    v36 = v31;
    v37 = v29;
    sub_1AF91219C(&v36);
    v35 = v32;
    sub_1AF91219C(&v35);
    v34 = v33;
    sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v16 + 32;
      do
      {
        v20 = *(v19 + 8 * v18);
        sub_1AF4410A8(v20);
        v21 = sub_1AF9C503C(v20);
        if ((v22 & 1) == 0 && v21 == v11 && (v23 = *(v3 + 48), *(v23 + 16)))
        {

          v24 = sub_1AF41B134(a1, v18);
          if (v25)
          {
            v26 = v24;
            sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
            v27 = *(*(v23 + 56) + 8 * v26);
            sub_1AF442064(v27);
            sub_1AF441114(v20);

            sub_1AF441114(v6);

            return v27;
          }

          sub_1AF441114(v20);
        }

        else
        {
          sub_1AF441114(v20);
        }

        ++v18;
      }

      while (v17 != v18);
    }

    sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
    sub_1AF441114(v6);
    return 0xF000000000000007;
  }

  sub_1AF441114(v6);
  sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
  v37 = v29;
  sub_1AF949D48(&v37, &qword_1EB638968, &type metadata for TypeConstraint);
  sub_1AF949D48(&v38, &qword_1EB638968, &type metadata for TypeConstraint);
  v36 = v31;
  sub_1AF91219C(&v36);
  v35 = v32;
  sub_1AF91219C(&v35);
  v34 = v33;
  sub_1AF949D48(&v34, &qword_1EB638978, &type metadata for AnyValue);
  v13 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  sub_1AF442064(v13);
  sub_1AF441114(v12);
  result = v13;
  if (!(v13 >> 61))
  {
    v14 = *(v13 + 16);
    v15 = result;
    sub_1AF442064(*(result + 16));
    sub_1AF445BE4(v15);
    return v14;
  }

  return result;
}

uint64_t sub_1AF946FF4()
{
  v1 = v0;

  MEMORY[0x1B2718E00](v2);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AFDFD458();
  }

  sub_1AFDFD4B8();
  v3 = v0[3];
  if (v3 >> 62)
  {
    result = sub_1AFDFE108();
    if (result)
    {
      goto LABEL_5;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      while (1)
      {
LABEL_5:
        v5 = v1[3];
        if (v5 >> 62 && (sub_1AFDFE108(), v5 = v1[3], v5 >> 62))
        {
          if (sub_1AFDFE108())
          {
LABEL_7:
            if ((v5 & 0xC000000000000001) != 0)
            {
              v6 = MEMORY[0x1B2719C70](0, v5);
            }

            else
            {
              v6 = *(v5 + 32);
            }

            goto LABEL_12;
          }
        }

        else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_7;
        }

        v6 = 0;
LABEL_12:
        v7 = v1[3];
        if (v7 >> 62)
        {
          v8 = sub_1AFDFE108();
          v7 = v1[3];
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v7 >> 62)
        {
          sub_1AFDFE108();
          v9 = sub_1AFDFE108();
          v7 = v1[3];
        }

        else
        {
          v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v9 - (v8 != 0);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v1[3] = v7;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
          if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
          {
LABEL_23:
            sub_1AFDFE108();
          }

LABEL_24:
          v1[3] = sub_1AFDFE268();
          goto LABEL_25;
        }

        if ((v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          goto LABEL_23;
        }

        if (v10 > *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

LABEL_25:
        sub_1AF64E7C4(0, v8 != 0, 0);
        v12 = v1[4];
        if (*(v12 + 16))
        {
          v13 = sub_1AFDFF278();
          v14 = -1 << *(v12 + 32);
          v15 = v13 & ~v14;
          if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
          {
            v16 = ~v14;
            while (*(*(v12 + 48) + 8 * v15) != v6)
            {
              v15 = (v15 + 1) & v16;
              if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            goto LABEL_81;
          }
        }

LABEL_30:
        sub_1AF70E5AC(&v85, v6);
        v76 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
        v17 = *(*(v6 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) + 16);
        v81 = OBJC_IVAR____TtC3VFX13AuthoringNode_raw;
        v77 = *(v6 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);

        v80 = v6;
        v82 = v17;
        if (v17)
        {
          v18 = 0;
          while (1)
          {
            v19 = (v77 + 32 + 16 * v18);
            v20 = *v19;
            v84 = v19[1];
            v21 = *(**(v6 + v81) + 152);

            v21(&v86, v22);
            v116[0] = v86;
            if (v18 >= *(v86 + 16))
            {
              sub_1AF949D48(v116, &qword_1EB638968, &type metadata for TypeConstraint);
              v115 = v87;
              sub_1AF949D48(&v115, &qword_1EB638968, &type metadata for TypeConstraint);
              v114 = v88;
              sub_1AF949D48(&v114, &qword_1EB638968, &type metadata for TypeConstraint);
              v113 = v89;
              sub_1AF91219C(&v113);
              v112 = v90;
              sub_1AF91219C(&v112);
              v111 = v91;
              sub_1AF949D48(&v111, &qword_1EB638978, &type metadata for AnyValue);

              goto LABEL_33;
            }

            v83 = v20;
            v23 = *(v86 + 8 * v18 + 32);
            if (v23 >> 61 == 4)
            {

              sub_1AF949D48(v116, &qword_1EB638968, &type metadata for TypeConstraint);
              v96 = v87;
              sub_1AF949D48(&v96, &qword_1EB638968, &type metadata for TypeConstraint);
              v95 = v88;
              sub_1AF949D48(&v95, &qword_1EB638968, &type metadata for TypeConstraint);
              v94 = v89;
              sub_1AF91219C(&v94);
              v93 = v90;
              sub_1AF91219C(&v93);
              v92 = v91;
              sub_1AF949D48(&v92, &qword_1EB638978, &type metadata for AnyValue);
              v24 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1AF442064(v24);
              sub_1AF441114(v23);
LABEL_37:
              v6 = v80;
              goto LABEL_38;
            }

            sub_1AF4410A8(*(v86 + 8 * v18 + 32));
            v32 = sub_1AF9C503C(v23);
            if (v33)
            {
              sub_1AF441114(v23);
              sub_1AF949D48(v116, &qword_1EB638968, &type metadata for TypeConstraint);
              v110 = v87;
              sub_1AF949D48(&v110, &qword_1EB638968, &type metadata for TypeConstraint);
              v109 = v88;
              sub_1AF949D48(&v109, &qword_1EB638968, &type metadata for TypeConstraint);
              v108 = v89;
              sub_1AF91219C(&v108);
              v107 = v90;
              sub_1AF91219C(&v107);
              v106 = v91;
              sub_1AF949D48(&v106, &qword_1EB638978, &type metadata for AnyValue);

              v6 = v80;
              goto LABEL_33;
            }

            v37 = v32;
            v79 = v23;
            v105 = v88;
            v38 = *(v88 + 8 * v32 + 32);
            if (v38 >> 61 == 4)
            {

              sub_1AF441114(v23);
              sub_1AF949D48(v116, &qword_1EB638968, &type metadata for TypeConstraint);
              v100 = v87;
              sub_1AF949D48(&v100, &qword_1EB638968, &type metadata for TypeConstraint);
              sub_1AF949D48(&v105, &qword_1EB638968, &type metadata for TypeConstraint);
              v99 = v89;
              sub_1AF91219C(&v99);
              v98 = v90;
              sub_1AF91219C(&v98);
              v97 = v91;
              sub_1AF949D48(&v97, &qword_1EB638978, &type metadata for AnyValue);
              v24 = *((v38 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
              sub_1AF442064(v24);
              sub_1AF441114(v38);
              if (!(v24 >> 61))
              {
                v39 = *(v24 + 16);
                sub_1AF442064(v39);
                sub_1AF445BE4(v24);
                v24 = v39;
              }

              goto LABEL_37;
            }

            sub_1AF949D48(v116, &qword_1EB638968, &type metadata for TypeConstraint);
            sub_1AF949D48(&v105, &qword_1EB638968, &type metadata for TypeConstraint);
            v40 = v87;
            v103 = v89;
            v104 = v87;
            sub_1AF91219C(&v103);
            v102 = v90;
            sub_1AF91219C(&v102);
            v101 = v91;
            sub_1AF949D48(&v101, &qword_1EB638978, &type metadata for AnyValue);
            v41 = *(v40 + 16);
            if (!v41)
            {
LABEL_58:
              sub_1AF949D48(&v104, &qword_1EB638968, &type metadata for TypeConstraint);
              sub_1AF441114(v79);

              v6 = v80;
              goto LABEL_33;
            }

            v42 = 0;
            v43 = v40 + 32;
            v78 = *(v40 + 16);
            while (1)
            {
              v44 = *(v43 + 8 * v42);
              sub_1AF4410A8(v44);
              v45 = sub_1AF9C503C(v44);
              if ((v46 & 1) == 0 && v45 == v37)
              {
                v47 = v1[6];
                if (*(v47 + 16))
                {
                  break;
                }
              }

              sub_1AF441114(v44);
LABEL_52:
              if (v41 == ++v42)
              {
                goto LABEL_58;
              }
            }

            v48 = v43;
            v49 = v37;
            v50 = v1;
            v6 = v80;

            v51 = sub_1AF41B134(v80, v42);
            if ((v52 & 1) == 0)
            {
              break;
            }

            v53 = v51;
            sub_1AF949D48(&v104, &qword_1EB638968, &type metadata for TypeConstraint);
            v24 = *(*(v47 + 56) + 8 * v53);
            sub_1AF442064(v24);
            sub_1AF441114(v44);

            sub_1AF441114(v79);

            v1 = v50;
LABEL_38:

            sub_1AF442064(v24);
            sub_1AF949DB8(v24);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v85 = v1[5];
            v26 = v85;
            v1[5] = 0x8000000000000000;
            v27 = sub_1AF41B134(v6, v18);
            v29 = v28;
            v30 = *(v26 + 16) + ((v28 & 1) == 0);
            if (*(v26 + 24) >= v30)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_44;
              }

              v54 = v27;
              sub_1AF84EA54();
              v27 = v54;
              v34 = v85;
              if ((v29 & 1) == 0)
              {
                goto LABEL_61;
              }

LABEL_45:
              v35 = v34[7];
              v36 = *(v35 + 8 * v27);
              *(v35 + 8 * v27) = v24;
              sub_1AF445BE4(v36);
            }

            else
            {
              sub_1AF83F8C4(v30, isUniquelyReferenced_nonNull_native);
              v27 = sub_1AF41B134(v6, v18);
              if ((v29 & 1) != (v31 & 1))
              {
                goto LABEL_91;
              }

LABEL_44:
              v34 = v85;
              if (v29)
              {
                goto LABEL_45;
              }

LABEL_61:
              v34[(v27 >> 6) + 8] |= 1 << v27;
              v55 = (v34[6] + 16 * v27);
              *v55 = v6;
              v55[1] = v18;
              *(v34[7] + 8 * v27) = v24;
              ++v34[2];
            }

            v1[5] = v34;

            if (v83)
            {
              v56 = swift_isUniquelyReferenced_nonNull_native();
              v85 = v1[6];
              v57 = v85;
              v1[6] = 0x8000000000000000;
              v58 = sub_1AF41B134(v83, v84);
              v60 = v59;
              v61 = *(v57 + 16) + ((v59 & 1) == 0);
              if (*(v57 + 24) >= v61)
              {
                if ((v56 & 1) == 0)
                {
                  v67 = v58;
                  sub_1AF84EA54();
                  v58 = v67;
                }
              }

              else
              {
                sub_1AF83F8C4(v61, v56);
                v58 = sub_1AF41B134(v83, v84);
                if ((v60 & 1) != (v62 & 1))
                {
LABEL_91:
                  result = sub_1AFDFF1A8();
                  __break(1u);
                  return result;
                }
              }

              v63 = v85;
              if (v60)
              {
                v64 = *(v85 + 56);
                v65 = *(v64 + 8 * v58);
                *(v64 + 8 * v58) = v24;
                sub_1AF445BE4(v65);

                sub_1AF445BE4(v24);
              }

              else
              {
                *(v85 + 8 * (v58 >> 6) + 64) |= 1 << v58;
                v66 = (v63[6] + 16 * v58);
                *v66 = v83;
                v66[1] = v84;
                *(v63[7] + 8 * v58) = v24;
                sub_1AF445BE4(v24);
                ++v63[2];
              }

              v1[6] = v63;
            }

            else
            {
              sub_1AF914F8C(v24);
              sub_1AF445BE4(v24);
            }

LABEL_33:
            if (++v18 == v82)
            {
              goto LABEL_73;
            }
          }

          sub_1AF441114(v44);

          v37 = v49;
          v43 = v48;
          v41 = v78;
          goto LABEL_52;
        }

LABEL_73:

        v68 = *(v6 + v76);
        v69 = MEMORY[0x1E69E7CC0];
        v85 = MEMORY[0x1E69E7CC0];
        v70 = *(v68 + 16);

        v71 = 0;
LABEL_74:
        v72 = 16 * v71 + 32;
        while (v70 + 1 != ++v71)
        {
          v73 = *(v68 + v72);
          v72 += 16;
          if (v73)
          {

            MEMORY[0x1B2718E00](v74);
            if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1AFDFD458();
            }

            sub_1AFDFD4B8();
            v69 = v85;
            goto LABEL_74;
          }
        }

        sub_1AF48F6CC(v69);
LABEL_81:

        v75 = v1[3];
        if (v75 >> 62)
        {
          result = sub_1AFDFE108();
          if (!result)
          {
            return result;
          }
        }

        else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1AF947BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AF947CA0();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1AFDFE108();
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B2719C70](i, v5);
    }

    else
    {
    }

    sub_1AF946FF4();
  }

LABEL_10:

  return sub_1AF946B64(a1, a2);
}

uint64_t sub_1AF947CA0()
{
  v1 = MEMORY[0x1E69E7CC0];
  v17 = sub_1AF42B0C8(MEMORY[0x1E69E7CC0]);
  v14 = 0x1000000000000000;
  v15 = &v17;
  v12[2] = sub_1AF949CAC;
  v12[3] = &v13;
  v16[0] = sub_1AF42B0F4(v1);
  v16[1] = v2;
  sub_1AF412AA8(sub_1AF439EA4, v12, 1, 0x1000000000000000uLL, 0, v1, v16);

  v3 = sub_1AF3D9910(v17);

  v4 = *(v0 + 24);
  v16[0] = v1;
  if (v4 >> 62)
  {
    v5 = sub_1AFDFE108();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v5)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B2719C70](i, v4);
      if (!*(v3 + 16))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);

      if (!*(v3 + 16))
      {
        goto LABEL_5;
      }
    }

    v8 = sub_1AF0D3F10(v7);
    if ((v9 & 1) == 0 || !*(*(*(v3 + 56) + 8 * v8) + 16))
    {
LABEL_5:
      sub_1AFDFE328();
      sub_1AFDFE398();
      sub_1AFDFE3A8();
      sub_1AFDFE348();
      continue;
    }
  }

  v10 = v16[0];
LABEL_16:

  return v10;
}

uint64_t sub_1AF947E8C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF947F08(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1;
  (*(**(a1 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v35);
  v5 = sub_1AF97228C();
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_34:
    v41 = v35[0];
    sub_1AF949D48(&v41, &qword_1EB638968, &type metadata for TypeConstraint);
    v40 = v35[1];
    sub_1AF949D48(&v40, &qword_1EB638968, &type metadata for TypeConstraint);
    v39 = v35[2];
    sub_1AF949D48(&v39, &qword_1EB638968, &type metadata for TypeConstraint);
    v38 = v35[3];
    sub_1AF91219C(&v38);
    v37 = v35[4];
    sub_1AF91219C(&v37);
    v36 = v35[5];
    sub_1AF949D48(&v36, &qword_1EB638978, &type metadata for AnyValue);
  }

  v7 = 0;
  v8 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v9 = (v5 + 40);
  v32 = *(v5 + 16);
  v33 = v4;
  while (1)
  {
    v10 = *(v9 - 1);
    if (!v10)
    {
      goto LABEL_4;
    }

    v11 = *v9;
    if (v7 >= *(v35[0] + 16))
    {
      v12 = 0xA000000000000000;
    }

    else
    {
      v12 = *(v35[0] + 8 * v7 + 32);
      sub_1AF4410A8(v12);
    }

    if (!v8)
    {
      v14 = sub_1AF9C5694(v12, a2);
      sub_1AF441114(v12);
      if (v14)
      {
        goto LABEL_16;
      }

      goto LABEL_3;
    }

    if (v8 != 1)
    {
      break;
    }

    v13 = sub_1AF9C5694(v12, a2 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v12);
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_3:

    v8 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
LABEL_4:
    ++v7;
    v9 += 2;
    if (v6 == v7)
    {
      goto LABEL_34;
    }
  }

  sub_1AF441114(v12);
LABEL_16:
  v15 = *a3;
  if (*(*a3 + 16) && (v16 = sub_1AF0D3F10(v10), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1AF41FB68(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_1AF41FB68(v19 > 1, v20 + 1, 1, v18);
  }

  v18[2] = v20 + 1;
  v21 = &v18[3 * v20];
  v21[4] = v4;
  v21[5] = v11;
  v21[6] = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *a3;
  v23 = v41;
  *a3 = 0x8000000000000000;
  v25 = sub_1AF0D3F10(v10);
  v26 = v24;
  v27 = v23[2] + ((v24 & 1) == 0);
  if (v23[3] >= v27)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v30 = v41;
      if (v24)
      {
        goto LABEL_30;
      }
    }

    else
    {
      sub_1AF843FA0();
      v30 = v41;
      if (v26)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v30[(v25 >> 6) + 8] |= 1 << v25;
    *(v30[6] + 8 * v25) = v10;
    *(v30[7] + 8 * v25) = v18;

    ++v30[2];
LABEL_31:
    v8 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
    *a3 = v30;

    v6 = v32;
    v4 = v33;
    goto LABEL_4;
  }

  sub_1AF82BEA8(v27, isUniquelyReferenced_nonNull_native);
  v28 = sub_1AF0D3F10(v10);
  if ((v26 & 1) == (v29 & 1))
  {
    v25 = v28;
    v30 = v41;
    if ((v26 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_30:
    *(v30[7] + 8 * v25) = v18;

    goto LABEL_31;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF9482F8(void *a1, unint64_t a2, void *a3)
{
  (*(*a1 + 152))(v45);
  v44 = a1;
  v5 = a1[2];
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v43 = a3;
  if (v6)
  {
    v51 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v6, 0);
    v8 = 0;
    v7 = v51;
    v9 = v51[2];
    v10 = 2 * v9;
    do
    {
      v12 = *(v5 + v8 * 8 + 32);
      v11 = *(v5 + v8 * 8 + 40);
      v51 = v7;
      v13 = v7[3];

      if (v9 >= v13 >> 1)
      {
        sub_1AFC05E2C(v13 > 1, v9 + 1, 1);
        v7 = v51;
      }

      v7[2] = v9 + 1;
      v14 = &v7[v10 + v8];
      v14[4] = v12;
      v14[5] = v11;
      v8 += 2;
      ++v9;
      --v6;
    }

    while (v6);

    a3 = v43;
  }

  v15 = v7[2];
  if (!v15)
  {
LABEL_40:
    v51 = v45[0];
    sub_1AF949D48(&v51, &qword_1EB638968, &type metadata for TypeConstraint);
    v50 = v45[1];
    sub_1AF949D48(&v50, &qword_1EB638968, &type metadata for TypeConstraint);
    v49 = v45[2];
    sub_1AF949D48(&v49, &qword_1EB638968, &type metadata for TypeConstraint);
    v48 = v45[3];
    sub_1AF91219C(&v48);
    v47 = v45[4];
    sub_1AF91219C(&v47);
    v46 = v45[5];
    sub_1AF949D48(&v46, &qword_1EB638978, &type metadata for AnyValue);
  }

  v16 = 0;
  v17 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v18 = v7 + 5;
  v41 = v7[2];
  while (1)
  {
    v19 = *(v18 - 1);
    if (!v19)
    {
      goto LABEL_10;
    }

    v20 = *v18;
    if (v16 >= *(v45[0] + 16))
    {
      v21 = 0xA000000000000000;
    }

    else
    {
      v21 = *(v45[0] + 8 * v16 + 32);
      sub_1AF4410A8(v21);
    }

    if (!v17)
    {
      v23 = sub_1AF9C5694(v21, a2);
      sub_1AF441114(v21);
      if (v23)
      {
        goto LABEL_22;
      }

      goto LABEL_9;
    }

    if (v17 != 1)
    {
      break;
    }

    v22 = sub_1AF9C5694(v21, a2 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v21);
    if (!v22)
    {
      goto LABEL_22;
    }

LABEL_9:

    v17 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
LABEL_10:
    ++v16;
    v18 += 2;
    if (v15 == v16)
    {
      goto LABEL_40;
    }
  }

  sub_1AF441114(v21);
LABEL_22:
  v24 = *a3;
  if (*(*a3 + 16) && (v25 = sub_1AF0D3F10(v19), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1AF420AC8(0, v27[2] + 1, 1, v27);
  }

  v29 = v27[2];
  v28 = v27[3];
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1AF420AC8(v28 > 1, v29 + 1, 1, v27);
  }

  v27[2] = v29 + 1;
  v30 = &v27[3 * v29];
  v30[4] = v44;
  v30[5] = v20;
  v30[6] = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v51 = *a3;
  v32 = v51;
  *a3 = 0x8000000000000000;
  v34 = sub_1AF0D3F10(v19);
  v35 = v33;
  v36 = v32[2] + ((v33 & 1) == 0);
  if (v32[3] >= v36)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v39 = v51;
      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1AF844B3C();
      v39 = v51;
      if (v35)
      {
        goto LABEL_36;
      }
    }

LABEL_33:
    v39[(v34 >> 6) + 8] |= 1 << v34;
    *(v39[6] + 8 * v34) = v19;
    *(v39[7] + 8 * v34) = v27;

    ++v39[2];
LABEL_37:
    v17 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
    a3 = v43;
    *v43 = v39;

    v15 = v41;
    goto LABEL_10;
  }

  sub_1AF82CE5C(v36, isUniquelyReferenced_nonNull_native);
  v37 = sub_1AF0D3F10(v19);
  if ((v35 & 1) == (v38 & 1))
  {
    v34 = v37;
    v39 = v51;
    if ((v35 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_36:
    *(v39[7] + 8 * v34) = v27;

    goto LABEL_37;
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

id sub_1AF948790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AF92371C();
  v5 = a1 + *(v4 + 48);
  sub_1AF94A008();
  v7 = a2 + *(v6 + 48);
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = sub_1AFDFC318();
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  *v7 = v8;
  *(v7 + 8) = v9;

  return sub_1AF85AA64(v8, v9);
}

double sub_1AF948848@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v25 = v1[2];
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = v14[1];
    v24 = *v14;
    sub_1AF4455CC(*(v3 + 56) + 88 * v13, &v26);
    v22 = v27;
    v23 = v26;
    v20 = v29;
    v21 = v28;
    v16 = v30;
    v17 = v31;
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v25;
    v1[3] = v8;
    v1[4] = v12;

    if (v15)
    {
      v18 = v1[5];
      *&v26 = v24;
      *(&v26 + 1) = v15;
      v27 = v23;
      v28 = v22;
      v29 = v21;
      v30 = v20;
      v31 = v16;
      v32 = v17;
      v18(&v26);
      sub_1AF94A160(&v26, sub_1AF7711B0);
      return result;
    }
  }

  else
  {
    v6 = v1[2];
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
      if (v5 + 1 >= v9)
      {
        break;
      }

      v7 = *(v4 + 8 + 8 * v5++);
      if (v7)
      {
        v25 = v1[2];
        goto LABEL_10;
      }
    }

    v1[3] = v11;
    v1[4] = 0;
  }

  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1AF9489BC@<X0>(uint64_t a1@<X8>)
{
  sub_1AF92371C();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1EB640728, sub_1AF92371C);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v46 - v17;
  v21 = *v1;
  v20 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v24 = v1[4];
  v50 = v23;
  v51 = v20;
  if (v24)
  {
    v48 = v14;
    v49 = a1;
    v25 = v22;
LABEL_10:
    v47 = (v24 - 1) & v24;
    v30 = __clz(__rbit64(v24)) | (v25 << 6);
    (*(v7 + 16))(v10, *(v21 + 48) + *(v7 + 72) * v30, v6, v18);
    v31 = *(v21 + 56) + 16 * v30;
    v32 = *v31;
    v33 = *(v31 + 8);
    v34 = v6;
    v35 = v53;
    v36 = &v19[*(v53 + 48)];
    (*(v7 + 32))(v19, v10, v34);
    *v36 = v32;
    v36[8] = v33;
    v37 = v52;
    (*(v52 + 56))(v19, 0, 1, v35);
    sub_1AF85AA64(v32, v33);
    v38 = v47;
    v14 = v48;
    v28 = v25;
    a1 = v49;
  }

  else
  {
    v26 = (v23 + 64) >> 6;
    if (v26 <= v22 + 1)
    {
      v27 = v22 + 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = v27 - 1;
    v29 = v20 + 8;
    while (1)
    {
      v25 = v22 + 1;
      if (v22 + 1 >= v26)
      {
        break;
      }

      v24 = *(v29 + 8 * v22++);
      if (v24)
      {
        v48 = v14;
        v49 = a1;
        goto LABEL_10;
      }
    }

    v37 = v52;
    v35 = v53;
    (*(v52 + 56))(&v46 - v17, 1, 1, v53, v18);
    v38 = 0;
  }

  v39 = v50;
  v40 = v51;
  *v1 = v21;
  v1[1] = v40;
  v1[2] = v39;
  v1[3] = v28;
  v1[4] = v38;
  v41 = v1[5];
  sub_1AF94A078(v19, v14);
  v42 = 1;
  if ((*(v37 + 48))(v14, 1, v35) != 1)
  {
    v43 = v46;
    sub_1AF94A0F8(v14, v46, sub_1AF92371C);
    v41(v43);
    sub_1AF94A160(v43, sub_1AF92371C);
    v42 = 0;
  }

  sub_1AF94A008();
  return (*(*(v44 - 8) + 56))(a1, v42, 1, v44);
}

uint64_t sub_1AF948DB4(uint64_t result, void *a2, uint64_t (*a3)(uint64_t *))
{
  v6 = *result;
  v3 = *(result + 8);
  v7 = v3;
  v8 = *(result + 24);
  if (!*a2)
  {
    v5 = v3;
    result = a3(&v6);
    if (result)
    {

      *a2 = v5;
    }
  }

  return result;
}

uint64_t sub_1AF948E48(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1AFDFC318();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v60 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v57 - v15;
  v65 = a2;
  v64 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;
  v17 = *(a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs);
  v66 = a1;
  v18 = v17 + 16 * a1;
  v20 = *(v18 + 32);
  v19 = *(v18 + 40);
  type metadata accessor for AutoCastNode(0);
  v21 = swift_allocObject();
  *&v21[OBJC_IVAR____TtC3VFX8CastNode_dstType] = a3;
  v22 = MEMORY[0x1E69E7CC0];
  *(v21 + 3) = 0;
  *(v21 + 4) = 0;
  *(v21 + 2) = v22;
  v23 = OBJC_IVAR____TtC3VFX4Node_authoringID;

  sub_1AF442064(a3);
  v59 = v23;
  sub_1AFDFC308();
  sub_1AF949CCC(0, &qword_1EB630A28, &qword_1EB6323D0, &type metadata for AuthoringNode.Port, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = v20;
  *(inited + 40) = v19;
  v25 = *(v7 + 56);
  v58 = v16;
  v63 = v6;
  v25(v16, 1, 1, v6);
  type metadata accessor for AuthoringNode();
  v26 = swift_allocObject();
  v27 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v27 = 0;
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v28 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  v29 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = (v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v30 = 0;
  v30[1] = 0;
  *(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) = v21;
  sub_1AF986554(v68);
  v31 = v68[0];
  v73 = v68[1];
  v74 = v68[0];
  v62 = v20;

  sub_1AF949D48(&v73, &qword_1EB638968, &type metadata for TypeConstraint);
  v72 = v68[2];
  sub_1AF949D48(&v72, &qword_1EB638968, &type metadata for TypeConstraint);
  v71 = v68[3];
  sub_1AF91219C(&v71);
  v70 = v68[4];
  sub_1AF91219C(&v70);
  v69 = v68[5];
  sub_1AF949D48(&v69, &qword_1EB638978, &type metadata for AnyValue);
  v32 = *(v31 + 16);
  sub_1AF949D48(&v74, &qword_1EB638968, &type metadata for TypeConstraint);
  v33 = v32 - 1;
  if (v32 <= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v32;
  }

  v67 = v22;
  sub_1AFC05D04(0, v34, 0);
  v35 = v67;
  v57 = *(inited + 32);
  v37 = *(v67 + 16);
  v36 = *(v67 + 24);

  if (v37 >= v36 >> 1)
  {
    sub_1AFC05D04(v36 > 1, v37 + 1, 1);
    v35 = v67;
  }

  *(v35 + 16) = v37 + 1;
  *(v35 + 16 * v37 + 32) = v57;
  if (v32 >= 2)
  {
    v43 = 16 * v37 + 48;
    v44 = v37 + 2;
    v38 = v63;
    do
    {
      v67 = v35;
      v45 = *(v35 + 24);
      if (v44 - 1 >= v45 >> 1)
      {
        sub_1AFC05D04(v45 > 1, v44, 1);
        v35 = v67;
      }

      *(v35 + 16) = v44;
      v46 = (v35 + v43);
      *v46 = 0;
      v46[1] = 0;
      v43 += 16;
      ++v44;
      --v33;
    }

    while (v33);
  }

  else
  {
    v38 = v63;
  }

  *(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_inputs) = v35;
  v39 = v58;
  v40 = v60;
  sub_1AF487314(v58, v60);
  v41 = *(v7 + 48);
  if (v41(v40, 1, v38) == 1)
  {
    v42 = v61;
    sub_1AFDFC308();
    sub_1AF949E6C(v39, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    if (v41(v40, 1, v38) != 1)
    {
      sub_1AF949E6C(v40, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    }
  }

  else
  {
    sub_1AF949E6C(v39, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    v42 = v61;
    (*(v7 + 32))(v61, v40, v38);
  }

  (*(v7 + 32))(v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v42, v38);
  (*(v7 + 24))(&v21[v59], v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v38);

  v47 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_position;
  *v47 = 0;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  v48 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_size;
  *v48 = 0;
  *(v48 + 8) = 0;
  *(v48 + 16) = 1;
  v49 = v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_zIndex;
  *v49 = 0;
  *(v49 + 8) = 1;
  v50 = (v26 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringName);
  *v50 = 0;
  v50[1] = 0;

  v51 = v65;
  v52 = v64;
  v53 = *(v65 + v64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v51 + v52) = v53;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    *(v51 + v52) = sub_1AFC0DA6C(v53);
  }

  v55 = *(v51 + v52) + 16 * v66;
  *(v55 + 32) = v26;
  *(v55 + 40) = 0;
}

uint64_t sub_1AF94951C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v63 = sub_1AFDFC318();
  v49 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v10);
  v12 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF949DCC(0, &qword_1EB640720, sub_1AF94A008);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v47 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v56 = a1;
  v57 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v58 = v18;
  v59 = 0;
  v60 = v21 & v19;
  v61 = a2;
  v62 = a3;

  v47[1] = a3;

  sub_1AF9489BC(v16);
  sub_1AF94A008();
  v23 = v22;
  v24 = *(v22 - 8);
  v25 = *(v24 + 48);
  v51 = v24 + 48;
  v52 = v25;
  if (v25(v16, 1, v22) == 1)
  {
LABEL_5:
    sub_1AF0FBB14();
  }

  v53 = *(v49 + 32);
  v54 = v49 + 32;
  v48 = (v49 + 8);
  v55 = v12;
  v50 = v23;
  while (1)
  {
    v29 = &v16[*(v23 + 48)];
    v53(v12, v16, v63);
    v30 = *v29;
    v31 = v29[8];
    v32 = *a5;
    v33 = sub_1AF419940(v12);
    v35 = v34;
    v36 = v32[2] + ((v34 & 1) == 0);
    if (v32[3] >= v36)
    {
      if ((a4 & 1) == 0)
      {
        sub_1AF8443C0();
      }

      goto LABEL_14;
    }

    sub_1AF82C288(v36, a4 & 1);
    v37 = sub_1AF419940(v12);
    if ((v35 & 1) != (v38 & 1))
    {
      break;
    }

    v33 = v37;
LABEL_14:
    v39 = a5;
    v40 = *a5;
    if (v35)
    {
      v41 = v40[7] + 16 * v33;
      v42 = *v41;
      v43 = *(v41 + 8);
      sub_1AF85AA64(*v41, v43);
      sub_1AF85AA70(v30, v31);
      (*v48)(v55, v63);
      v44 = v40[7] + 16 * v33;
      v45 = *v44;
      v46 = *(v44 + 8);
      *v44 = v42;
      *(v44 + 8) = v43;
      sub_1AF85AA70(v45, v46);
    }

    else
    {
      v40[(v33 >> 6) + 8] |= 1 << v33;
      v53((v40[6] + *(v49 + 72) * v33), v55, v63);
      v27 = v40[7] + 16 * v33;
      *v27 = v30;
      *(v27 + 8) = v31;
      ++v40[2];
    }

    sub_1AF9489BC(v16);
    a4 = 1;
    v23 = v50;
    v28 = v52(v16, 1, v50);
    a5 = v39;
    v12 = v55;
    if (v28 == 1)
    {
      goto LABEL_5;
    }
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

void *sub_1AF9498E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v9 = sub_1AFDFC318();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v29[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, a2 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v9, v12);
  v15 = *(a4 + 40);
  v16 = *(v15 + 16);

  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = sub_1AF419940(v14);
  if ((v18 & 1) == 0)
  {

LABEL_6:
    (*(v10 + 8))(v14, v9);
    goto LABEL_7;
  }

  v19 = *(*(v15 + 56) + v17);
  (*(v10 + 8))(v14, v9);

  if (v19)
  {
    goto LABEL_8;
  }

LABEL_7:
  v20 = *(a5 + 8 * a1 + 32);
  v21 = swift_allocObject();
  *(v21 + 16) = 0xC000000000000008;
  sub_1AF4410A8(v20);
  v22 = sub_1AF9C5694(v20, v21 | 0x8000000000000000);

  sub_1AF441114(v20);
  if (v22)
  {
LABEL_8:
    type metadata accessor for _PlaceholderNode(0);
    v23 = swift_allocObject();
    v29[3] = type metadata accessor for AuthoringNode();
    v29[4] = &off_1EE801558;
    v29[0] = a2;
    sub_1AF441194(v29, v23 + OBJC_IVAR____TtC3VFX16_PlaceholderNode_oldNode);
    v24 = MEMORY[0x1E69E7CC0];
    v23[3] = 0;
    v23[4] = 0;
    v23[2] = v24;
    sub_1AFDFC308();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v29);
    return v23;
  }

  v25 = sub_1AF93F510(a2);
  v23 = v25;
  if (v26)
  {
    v29[0] = v25;
    sub_1AF5C5358(0, &qword_1ED7268D0);
    swift_willThrowTypedImpl();
  }

  return v23;
}

id sub_1AF949B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID;
  v4 = sub_1AFDFC318();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID;
  v6 = MEMORY[0x1E69E7CC0];
  *&v1[v5] = sub_1AF42B7E0(MEMORY[0x1E69E7CC0]);
  v7 = OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics;
  *&v1[OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics] = v6;
  sub_1AF7D5A10(a1 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_graphID, &v1[v3]);
  *&v1[v5] = *(a1 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_rawNodesByID);

  *&v1[v7] = *(a1 + OBJC_IVAR____TtC3VFX16GraphDiagnostics_diagnostics);

  v9.receiver = v1;
  v9.super_class = type metadata accessor for GraphDiagnostics(0);
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_1AF949CCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1AF949F40(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF949D48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AF949F40(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF949DB8(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1AF442064(result);
  }

  return result;
}

void sub_1AF949DCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AF949E6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1AF949DCC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1AF949EC8(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1AF445BE4(a2);
  }

  return result;
}

void sub_1AF949EE0()
{
  if (!qword_1EB630B78)
  {
    v0 = sub_1AFDFE5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB630B78);
    }
  }
}

void sub_1AF949F40(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AF94A008()
{
  if (!qword_1EB632740)
  {
    sub_1AFDFC318();
    sub_1AF444718();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB632740);
    }
  }
}

uint64_t sub_1AF94A078(uint64_t a1, uint64_t a2)
{
  sub_1AF949DCC(0, &qword_1EB640728, sub_1AF92371C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AF94A0F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AF94A160(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for GraphError.Kind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7A && *(a1 + 9))
  {
    return (*a1 + 122);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x79)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for GraphError.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x79)
  {
    *(result + 8) = 0;
    *result = a2 - 122;
    if (a3 >= 0x7A)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7A)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1AF94A284(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1AF94A2B0(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = -64;
  }

  return result;
}

char *sub_1AF94A2EC(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a3[5];
    v9 = sub_1AFDFC318();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);

    if (v11(&a2[v8], 1, v9))
    {
      sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
      memcpy(&v7[v8], &a2[v8], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(v10 + 16))(&v7[v8], &a2[v8], v9);
      (*(v10 + 56))(&v7[v8], 0, 1, v9);
    }

    v13 = a3[6];
    v14 = a3[7];
    v15 = &v7[v13];
    v16 = &a2[v13];
    *v15 = *v16;
    v15[8] = v16[8];
    v17 = &v7[v14];
    v18 = &a2[v14];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v7[a3[8]] = a2[a3[8]];
  }

  return v7;
}

uint64_t sub_1AF94A4C8(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1AFDFC318();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }
}

char *sub_1AF94A594(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);

  if (v9(&a2[v6], 1, v7))
  {
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v11 = a3[6];
  v12 = a3[7];
  v13 = &a1[v11];
  v14 = &a2[v11];
  *v13 = *v14;
  v13[8] = v14[8];
  v15 = &a1[v12];
  v16 = &a2[v12];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  a1[a3[8]] = a2[a3[8]];

  return a1;
}

char *sub_1AF94A710(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = a3[6];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v16 = *v15;
  v14[8] = v15[8];
  *v14 = v16;
  v17 = a3[7];
  v18 = &a1[v17];
  v19 = &a2[v17];
  *v18 = *v19;
  *(v18 + 1) = *(v19 + 1);

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

char *sub_1AF94A908(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(&a2[v6], 1, v7))
  {
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(&a1[v6], &a2[v6], v7);
    (*(v8 + 56))(&a1[v6], 0, 1, v7);
  }

  v10 = a3[6];
  v11 = a3[7];
  v12 = &a1[v10];
  v13 = &a2[v10];
  *v12 = *v13;
  v12[8] = v13[8];
  *&a1[v11] = *&a2[v11];
  a1[a3[8]] = a2[a3[8]];
  return a1;
}

char *sub_1AF94AA60(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = sub_1AFDFC318();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF949DCC(0, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  v13 = a3[6];
  v14 = a3[7];
  v15 = &a1[v13];
  v16 = &a2[v13];
  *v15 = *v16;
  v15[8] = v16[8];
  v17 = &a1[v14];
  v18 = &a2[v14];
  v20 = *v18;
  v19 = *(v18 + 1);
  *v17 = v20;
  *(v17 + 1) = v19;

  a1[a3[8]] = a2[a3[8]];
  return a1;
}

void sub_1AF94AC64()
{
  sub_1AF949DCC(319, &qword_1ED72DF30, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t sub_1AF94AD50(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AF624828(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_1AF957AB0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1AF94ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  sub_1AF4471E8(0);
  v72 = v5;
  v66 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v62 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v65 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v70 = &v55 - v16;
  sub_1AF483618();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v69 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1AFDFC318();
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v68 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v21 + 56);
  v57 = v21 + 56;
  v58 = a3;
  v56 = v25;
  result = (v25)(a3, 1, 1, v20, v23);
  v27 = *(a2 + 16);
  if (v27)
  {
    v71 = (v21 + 8);
    v64 = (v21 + 32);
    v67 = (v21 + 48);
    v61 = (v21 + 16);
    v73 = sub_1AF4486E4();
    v28 = (a2 + 48);
    v29 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v30 = *(v28 - 2);
      v31 = *v28;
      v76 = *(v28 - 1);
      v77 = v31;
      v74 = 58;
      v75 = 0xE100000000000000;

      v32 = sub_1AFDFDE98();
      v34 = v32[4];
      v33 = v32[5];
      v35 = v34 == 0x5F64695F65646F6ELL && v33 == 0xED00006E69676562;
      if (v35 || (sub_1AFDFEE28() & 1) != 0)
      {
        if (v32[2] <= 1uLL)
        {
        }

        else
        {

          v36 = v69;
          sub_1AFDFC2A8();

          if ((*v67)(v36, 1, v20) == 1)
          {

            sub_1AF95BC54(v36, sub_1AF483618);
          }

          else
          {
            v39 = v68;
            (*v64)(v68, v36, v20);
            v40 = *(v72 + 48);
            v41 = v70;
            *v70 = v30;
            (*v61)(&v41[v40], v39, v20);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = sub_1AF426E30(0, v29[2] + 1, 1, v29);
            }

            v43 = v29[2];
            v42 = v29[3];
            if (v43 >= v42 >> 1)
            {
              v29 = sub_1AF426E30(v42 > 1, v43 + 1, 1, v29);
            }

            (*v71)(v68, v20);
            v29[2] = v43 + 1;
            sub_1AF95BCB4(v70, v29 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v43, sub_1AF4471E8);
          }
        }

        goto LABEL_4;
      }

      if (v34 == 0x5F64695F65646F6ELL && v33 == 0xEB00000000646E65)
      {
        break;
      }

      v38 = sub_1AFDFEE28();

      if (v38)
      {
        goto LABEL_25;
      }

LABEL_18:

LABEL_4:
      v28 += 3;
      if (!--v27)
      {
      }
    }

LABEL_25:
    v44 = v29[2];
    if (v44)
    {
      v45 = v65;
      v46 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v63 = *(v66 + 72);
      sub_1AF95BA60(v29 + v46 + v63 * (v44 - 1), v65, sub_1AF4471E8);
      v47 = v62;
      sub_1AF95BA60(v45, v62, sub_1AF4471E8);
      v48 = *v47;
      v49 = *v71;
      (*v71)(&v47[*(v72 + 48)], v20);

      if (v48 > v60 || v30 < v60)
      {
        sub_1AF95BC54(v65, sub_1AF4471E8);
      }

      else
      {
        v50 = v58;
        sub_1AF95BC54(v58, sub_1AF483618);
        v51 = v62;
        sub_1AF95BCB4(v65, v62, sub_1AF4471E8);
        (*v64)(v50, v51 + *(v72 + 48), v20);
        v56(v50, 0, 1, v20);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1AFC0DC60(v29);
      }

      v52 = v29[2] - 1;
      v53 = v29 + v46 + v52 * v63;
      v29[2] = v52;
      v54 = v59;
      sub_1AF95BCB4(v53, v59, sub_1AF4471E8);
      v49((v54 + *(v72 + 48)), v20);
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1AF94B4E8(uint64_t a1, unint64_t a2)
{
  if (a1 || (a2 & 0xE000000000000000) != 0x2000000000000000)
  {
    return sub_1AF94B594(a1, a2);
  }

  if (*((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) >> 61 == 1)
  {
    return 0x74616D5F646D6973;
  }

  v3 = sub_1AF94B594(0, a2);
  MEMORY[0x1B2718AE0](v3);

  return 0x5F656B616DLL;
}

uint64_t sub_1AF94B594(uint64_t a1, unint64_t a2)
{
  if (a1 < 2u)
  {
    v3 = a2 >> 61;
    if (a2 >> 61 == 6)
    {
      v4 = __ROR8__(a2 + 0x3FFFFFFFFFFFFFF0, 3);
      if (v4 <= 4)
      {
        switch(v4)
        {
          case 0:
            return 1819242338;
          case 1:
            return 0x2A64696F76;
          case 4:
            return 0x745F3233746E69;
        }
      }

      else
      {
        if (v4 <= 6)
        {
          if (v4 == 5)
          {
            return 0x745F3233746E6975;
          }

          else
          {
            return 0x745F3436746E69;
          }
        }

        if (v4 == 7)
        {
          return 0x745F3436746E6975;
        }

        if (v4 == 9)
        {
          return 0x74616F6C66;
        }
      }
    }

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1AFE4C420;
    v22 = sub_1AF90F890(v21 | 0x2000000000000000, a2);

    if (v22)
    {
      return 0x3274616F6C66;
    }

    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AFE4C430;
    v24 = sub_1AF90F890(v23 | 0x2000000000000000, a2);

    if (v24)
    {
      return 0x3374616F6C66;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1AFE4C440;
    v26 = sub_1AF90F890(v25 | 0x2000000000000000, a2);

    if (v26)
    {
      return 0x3474616F6C66;
    }

    v29 = swift_allocObject();
    *(v29 + 16) = 2;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1AFE4C420;
    *(v29 + 24) = v30 | 0x2000000000000000;
    v31 = sub_1AF90F890(v29 | 0x2000000000000000, a2);

    if (v31)
    {
      return 0x6F6C665F646D6973;
    }

    v32 = swift_allocObject();
    *(v32 + 16) = 3;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1AFE4C430;
    *(v32 + 24) = v33 | 0x2000000000000000;
    v34 = sub_1AF90F890(v32 | 0x2000000000000000, a2);

    if (v34)
    {
      return 0x6F6C665F646D6973;
    }

    v35 = swift_allocObject();
    *(v35 + 16) = 4;
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1AFE4C440;
    *(v35 + 24) = v36 | 0x2000000000000000;
    v37 = sub_1AF90F890(v35 | 0x2000000000000000, a2);

    if (v37)
    {
      return 0x6F6C665F646D6973;
    }

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1AFE85120;
    v46 = sub_1AF90F890(v45 | 0x2000000000000000, a2);

    if ((v46 & 1) == 0)
    {
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1AFE85130;
      v48 = sub_1AF90F890(v47 | 0x2000000000000000, a2);

      if (v48)
      {
        return 0x33746E6975;
      }

      if (v3 <= 3)
      {
        switch(v3)
        {
          case 2:
            v54 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
            sub_1AFDFE218();

            v55 = sub_1AF94B594(a1, v54);
            MEMORY[0x1B2718AE0](v55);

            MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
            goto LABEL_59;
          case 3:
            return 0xD000000000000011;
          case 0:
LABEL_100:
            result = sub_1AFDFE518();
            __break(1u);
            return result;
        }

LABEL_99:
        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
        sub_1AFDFE458();
        goto LABEL_100;
      }

      if (v3 != 4)
      {
        if (v3 == 6)
        {
          if (a2 <= 0xC0000000000000B7)
          {
            switch(a2)
            {
              case 0xC000000000000070:
                return 0x68632074736E6F63;
              case 0xC000000000000060:
                goto LABEL_100;
              case 0xC000000000000068:
                sub_1AFDFE218();
                sub_1AFDFE458();
                MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF3BA40);
                goto LABEL_100;
            }
          }

          else
          {
            if (a2 == 0xC0000000000000B8)
            {
              return 0xD00000000000001BLL;
            }

            if (a2 == 0xC0000000000000F8)
            {
              return 0xD000000000000013;
            }
          }
        }

        goto LABEL_99;
      }

      return 0x2A64696F76;
    }

    return 846491241;
  }

  if (a1 == 2)
  {
    v6 = a2 >> 61;
    if (a2 >> 61 == 6)
    {
      if (a2 == 0xC000000000000018)
      {
        return 0x7620646165726874;
      }

      if (a2 == 0xC000000000000050)
      {
        return 1718378856;
      }
    }

    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1AFE85140;
    v8 = sub_1AF90F890(v7 | 0x2000000000000000, a2);

    if (v8)
    {
      return 0x32666C6168;
    }

    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1AFE85150;
    v19 = sub_1AF90F890(v18 | 0x2000000000000000, a2);

    if (v19)
    {
      return 0x33666C6168;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1AFE85160;
    v28 = sub_1AF90F890(v27 | 0x2000000000000000, a2);

    if (v28)
    {
      return 0x34666C6168;
    }

    if (v6 == 2)
    {
      v42 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1AFDFE218();

      v43 = sub_1AF94B594(2, v42);
      MEMORY[0x1B2718AE0](v43);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
LABEL_59:
      v44 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v44);

      MEMORY[0x1B2718AE0](62, 0xE100000000000000);
      return 0xD000000000000011;
    }

    if (v6 == 4)
    {
      result = 0x706D61735F786676;
      v41 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (v41 && v41 != 2 && v41 != 1)
      {
        goto LABEL_99;
      }
    }

    else if (v6 == 6 && a2 == 0xC0000000000000B0)
    {
      return 0x656C636974726170;
    }

    else
    {
      return sub_1AF94B594(0, a2);
    }
  }

  else
  {
    if (a2 == 0xC000000000000058)
    {
      return 0x74616F6C66;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1AFE4C420;
    v10 = sub_1AF90F890(v9 | 0x2000000000000000, a2);

    if (v10)
    {
      return 0x3274616F6C66;
    }

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1AFE4C430;
    v12 = sub_1AF90F890(v11 | 0x2000000000000000, a2);

    if (v12)
    {
      return 0x3374616F6C66;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AFE4C440;
    v14 = sub_1AF90F890(v13 | 0x2000000000000000, a2);

    if (v14)
    {
      return 0x3474616F6C66;
    }

    v15 = swift_allocObject();
    *(v15 + 16) = 2;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1AFE4C420;
    *(v15 + 24) = v16 | 0x2000000000000000;
    v17 = sub_1AF90F890(v15 | 0x2000000000000000, a2);

    if (v17)
    {
      return 0x783278697274616DLL;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = 3;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AFE4C430;
    *(v38 + 24) = v39 | 0x2000000000000000;
    v40 = sub_1AF90F890(v38 | 0x2000000000000000, a2);

    if (v40)
    {
      return 0x783378697274616DLL;
    }

    v49 = swift_allocObject();
    *(v49 + 16) = 4;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1AFE4C440;
    *(v49 + 24) = v50 | 0x2000000000000000;
    v51 = sub_1AF90F890(v49 | 0x2000000000000000, a2);

    if (v51)
    {
      return 0x783478697274616DLL;
    }

    if ((a2 & 0xE000000000000000) == 0xC000000000000000 && __ROR8__(a2 + 0x3FFFFFFFFFFFFFD0, 3) < 4uLL)
    {
      return 7630441;
    }

    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1AFE85120;
    v53 = sub_1AF90F890(v52 | 0x2000000000000000, a2);

    if (v53)
    {
      return 846491241;
    }

    if ((a2 & 0xE000000000000000) != 0xC000000000000000 || (result = 7630441, a2 != 0xC000000000000018) && a2 != 0xC0000000000000B8)
    {
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0xD000000000000015, 0x80000001AFF3B9D0);
      sub_1AFDFE458();
      goto LABEL_100;
    }
  }

  return result;
}

uint64_t sub_1AF94C3BC()
{
}

uint64_t sub_1AF94C3EC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF94C454()
{
}

uint64_t sub_1AF94C484()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AF94C4E4(uint64_t a1, char a2, char a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v7 = MEMORY[0x1E69E7CD0];
  *(v3 + 32) = MEMORY[0x1E69E7CD0];
  *(v3 + 40) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v3 + 64) = MEMORY[0x1E69E7CC0];
  *(v3 + 72) = v8;
  *(v3 + 80) = sub_1AF43F3FC(v8);
  *(v3 + 88) = 0;
  *(v3 + 96) = sub_1AF43F52C(v8);
  *(v3 + 104) = v7;
  *(v3 + 112) = sub_1AF43F634(v8);
  *(v3 + 120) = sub_1AF43F7A8(v8);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 57) = a3;
  return v3;
}

uint64_t sub_1AF94C57C()
{
  v0 = sub_1AFDFBCE8();
  sub_1AF75A958(v0, qword_1EB640730);
  sub_1AF477C68(v0, qword_1EB640730);
  sub_1AFDFBCD8();
  return sub_1AFDFBCA8();
}

uint64_t sub_1AF94C5EC()
{
  result = sub_1AF94C60C();
  qword_1EB640748 = result;
  return result;
}

uint64_t sub_1AF94C60C()
{
  v0 = sub_1AF910F70();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = v0 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      v6 = v3;
      while (1)
      {
        v7 = *(v4 + 8 * v6);
        v3 = v6 + 1;
        sub_1AF442064(v7);
        if (sub_1AF90DD74(0, v7))
        {
          break;
        }

        sub_1AF445BE4(v7);
        ++v6;
        if (v1 == v3)
        {
          goto LABEL_14;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1AFC078EC(0, *(v5 + 16) + 1, 1);
      }

      v9 = *(v5 + 16);
      v8 = *(v5 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1AFC078EC(v8 > 1, v9 + 1, 1);
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + 8 * v9 + 32) = v7;
    }

    while (v1 - 1 != v6);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

LABEL_14:

  v10 = *(v5 + 16);
  if (v10)
  {
    sub_1AFC05CE4(0, v10, 0);
    v11 = 32;
    do
    {
      v12 = *(v5 + v11);
      sub_1AF442064(v12);
      v13 = sub_1AF937FF8(0, v12);
      if ((~v13 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v12);
        v13 = v12;
      }

      v14 = sub_1AF94B594(0, v13);
      v16 = v15;
      sub_1AF445BE4(v13);
      sub_1AF445BE4(v12);
      v18 = *(v2 + 16);
      v17 = *(v2 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC05CE4(v17 > 1, v18 + 1, 1);
      }

      *(v2 + 16) = v18 + 1;
      v19 = v2 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v11 += 8;
      --v10;
    }

    while (v10);
  }

  else
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1AF0D20CC(v2);

  return v20;
}

uint64_t sub_1AF94C850(unint64_t a1)
{
  if (*(v1 + 56) == 3)
  {
    sub_1AFDFE218();

    v68 = 0x617261705F786676;
    v69 = 0xEF5B73726574656DLL;
    v70 = *(v1 + 88);
    v2 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v2);

    MEMORY[0x1B2718AE0](93, 0xE100000000000000);
    return 0x617261705F786676;
  }

  v70 = 0;
  v71 = 0xE000000000000000;
  v4 = 24;
  v5 = 16;
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 1uLL:
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v68);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = v69;
        ObjectType = swift_getObjectType();
        v47 = *(v45 + 8);

        v48 = v47(ObjectType, v45);
        v50 = v49;
        swift_unknownObjectRelease();
        if (v50)
        {
LABEL_54:
          v53 = sub_1AF95A008(v48, v50);
          v55 = v54;

          v56 = sub_1AFAF7C88();
          v58 = sub_1AF95A008(v56, v57);
          v60 = v59;

          v66 = v53;
          v67 = v55;
          MEMORY[0x1B2718AE0](95, 0xE100000000000000);
          MEMORY[0x1B2718AE0](v58, v60);

          sub_1AF4459C8(&v68);
          v70 = v53;
          v71 = v55;
          goto LABEL_59;
        }
      }

      else
      {
      }

      v48 = 0x7463656A626FLL;

      v50 = 0xE600000000000000;
      goto LABEL_54;
    case 2uLL:
      sub_1AF44596C((a1 & 0xFFFFFFFFFFFFFFBLL) + 16, &v68);
      if (!swift_unknownObjectWeakLoadStrong() || (v37 = v69, v38 = swift_getObjectType(), v39 = (*(v37 + 8))(v38, v37), v41 = v40, swift_unknownObjectRelease(), !v41))
      {
        v39 = 0x7463656A626FLL;

        v41 = 0xE600000000000000;
      }

      v42 = sub_1AF95A008(v39, v41);
      v44 = v43;

      sub_1AF4459C8(&v68);
      v70 = v42;
      v71 = v44;
      goto LABEL_59;
    case 3uLL:
      v33 = 0x797469746E65;
      v34 = 0xE600000000000000;
      goto LABEL_58;
    case 4uLL:
    case 5uLL:
      v4 = 32;
      v5 = 24;
      goto LABEL_5;
    case 6uLL:
      v33 = 7500912;
      v34 = 0xE300000000000000;
      goto LABEL_58;
    case 7uLL:
      v70 = sub_1AF95A008(*((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x20));
      v71 = v36;
      goto LABEL_59;
    case 8uLL:
      v35 = 0x656C706D6173;
      goto LABEL_47;
    case 9uLL:
      v35 = 0x657474696D65;
LABEL_47:
      v33 = v35 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
      goto LABEL_48;
    case 0xAuLL:
    case 0xBuLL:
LABEL_5:
      v6 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + v5);
      v7 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + v4);

      sub_1AFDFDFD8();
      v8 = sub_1AFDFF4B8();
      v10 = sub_1AF95A008(v8, v9);
      v12 = v11;

      MEMORY[0x1B2718AE0](v10, v12);
      v13 = sub_1AFDFDFD8();
      v14 = swift_conformsToProtocol2();
      if (v14)
      {
        v16 = v13 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v64 = v10;
        v65 = v6;
        v63[1] = v63;
        v18 = *(v13 - 8);
        MEMORY[0x1EEE9AC00](v14, v15);
        v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22 = *(v21 + 8);
        sub_1AF6461F4(v13, v22);
        v23 = (*(v22 + 24))(v13, v22);
        (*(v18 + 8))(v20, v13);
        if (v23 >> 62)
        {
          v17 = sub_1AFDFE108();
        }

        else
        {
          v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v64;
        v6 = v65;
      }

      v24 = sub_1AFDFDFD8();
      v25 = swift_conformsToProtocol2();
      if (v25)
      {
        v26 = v24 == 0;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        if (v17 == 1)
        {
LABEL_28:

LABEL_36:

          goto LABEL_26;
        }
      }

      else
      {
        v32 = *((*(v25 + 16))(v24, v25) + 16);

        if (v32 + v17 == 1)
        {
          goto LABEL_28;
        }
      }

      v27 = sub_1AF95A008(v6, v7);
      v29 = v28;

      if (v27 == v10 && v29 == v12)
      {
        goto LABEL_36;
      }

      v31 = sub_1AFDFEE28();

      if ((v31 & 1) == 0)
      {
        v68 = 95;
        v69 = 0xE100000000000000;
        MEMORY[0x1B2718AE0](v27, v29);

        MEMORY[0x1B2718AE0](v68, v69);
      }

LABEL_26:

      goto LABEL_59;
    case 0xCuLL:
    case 0xDuLL:
      v33 = 1684366707;
      v34 = 0xE400000000000000;
      goto LABEL_58;
    case 0xEuLL:
      result = sub_1AFDFE518();
      __break(1u);
      return result;
    case 0xFuLL:
      v52 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v51 = *((a1 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
      v70 = v52;
      v71 = v51;

      goto LABEL_59;
    case 0x10uLL:
      if (a1 == 0x8000000000000000)
      {
        v33 = 0x635F747069726373;
        v61 = 0x747865746E6FLL;
LABEL_57:
        v34 = v61 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_58;
      }

      if (a1 != 0x8000000000000008)
      {
        v33 = 0x656C636974726170;
        v61 = 0x7865646E695FLL;
        goto LABEL_57;
      }

      v33 = 0x64696C61766E69;
LABEL_48:
      v34 = 0xE700000000000000;
LABEL_58:
      v70 = v33;
      v71 = v34;
LABEL_59:
      v62 = sub_1AF94D4F0(v70, v71);

      return v62;
    default:
      if (*(a1 + 16))
      {
        v33 = 1701669236;
        v34 = 0xE400000000000000;
      }

      else
      {
        v33 = 29796;
        v34 = 0xE200000000000000;
      }

      goto LABEL_58;
  }
}

uint64_t sub_1AF94CFE0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(v2 + 80);
  v6 = *(v5 + 16);
  sub_1AF443EE0(*a1);
  if (v6)
  {

    v7 = sub_1AF41AF3C(v4);
    if (v8)
    {
      v9 = *(*(v5 + 56) + 32 * v7);

      *a2 = v4;
      *(a2 + 8) = v9;
      *(a2 + 16) = xmmword_1AFE4C460;
      *(a2 + 32) = 1;
      return result;
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF94D150(unint64_t a1)
{
  v3 = *(v1 + 80);
  if (*(v3 + 16))
  {

    v4 = sub_1AF41AF3C(a1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 32 * v4 + 8);

      return v6;
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
  sub_1AFDFE458();
  MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

char *sub_1AF94D290(uint64_t a1, uint64_t *a2)
{
  v22 = *(a1 + 16);
  if (v22)
  {
    v2 = 0;
    v21 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v4 = v21 + 40 * v2;
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 32);
      v28 = *v4;
      v29 = v6;
      v24 = *(v4 + 16);
      v30 = v24;
      v31 = v7;
      v8 = *a2;
      if (*(*a2 + 16))
      {
        sub_1AFDFF288();
        sub_1AF443EE0(v5);
        sub_1AF444224(v24);
        sub_1AFAA0C08(v25, v5);
        v9 = sub_1AFDFF2F8();
        v10 = -1 << *(v8 + 32);
        v11 = v9 & ~v10;
        if ((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
        {
          v12 = ~v10;
          while (1)
          {
            v13 = *(*(v8 + 48) + 8 * v11);
            sub_1AF443EE0(v13);
            v14 = sub_1AFAB5FF0(v13, v5);
            sub_1AF443F24(v13);
            if (v14)
            {
              break;
            }

            v11 = (v11 + 1) & v12;
            if (((*(v8 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
            {
              goto LABEL_12;
            }
          }

          sub_1AF443F24(v5);
          sub_1AF444AF4(v24);
          goto LABEL_4;
        }
      }

      else
      {
        sub_1AF443EE0(v5);
        sub_1AF444224(v24);
      }

LABEL_12:
      sub_1AF443EE0(v5);
      sub_1AF70E690(v25, v5);
      sub_1AF443F24(v25[0]);
      sub_1AF94CFE0(&v28, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1AF420C34(0, *(v3 + 2) + 1, 1, v3);
      }

      v16 = *(v3 + 2);
      v15 = *(v3 + 3);
      if (v16 >= v15 >> 1)
      {
        v3 = sub_1AF420C34(v15 > 1, v16 + 1, 1, v3);
      }

      sub_1AF443F24(v5);
      sub_1AF444AF4(v24);
      *(v3 + 2) = v16 + 1;
      v17 = &v3[40 * v16];
      v18 = v26[0];
      v19 = v26[1];
      v17[64] = v27;
      *(v17 + 2) = v18;
      *(v17 + 3) = v19;
LABEL_4:
      if (++v2 == v22)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AF94D4F0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1AF9939C8(a1, a2);
  if (v6 && (v7 = sub_1AFDFCD58(), , (v7 & 1) != 0))
  {
    v8 = 0xE100000000000000;
    v9 = 95;
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = *(v2 + 120);
  if (!*(v10 + 16))
  {
    goto LABEL_9;
  }

  v11 = sub_1AF419914(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v3 + 120);
    *(v3 + 120) = 0x8000000000000000;
    sub_1AF8578B0(1, a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 120) = v20;

    v19 = a1;

    MEMORY[0x1B2718AE0](v9, v8);

    MEMORY[0x1B2718AE0](48, 0xE100000000000000);
    return v19;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 120);
  *(v3 + 120) = 0x8000000000000000;
  sub_1AF8578B0(v13 + 1, a1, a2, v14);
  *(v3 + 120) = v18;

  v19 = a1;

  MEMORY[0x1B2718AE0](v9, v8);

  v15 = sub_1AFDFEA08();
  MEMORY[0x1B2718AE0](v15);

  return v19;
}

uint64_t sub_1AF94D6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {

    v6 = (a3 + 40 * v4 + 8);
    v7 = v4;
    do
    {
      v8 = v7 - 1;

      v9 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v9);

      sub_1AF4486E4();
      v10 = sub_1AFDFDF18();

      if ((v10 & 1) != 0 && v7 <= v4)
      {
        v11 = *(v6 - 2);
        v12 = *v6;
        v15 = *v6;
        sub_1AF443EE0(v11);
        sub_1AF444224(v12);
        sub_1AF94D150(v11);
        v13 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v13);

        a1 = sub_1AFDFDEB8();
        sub_1AF443F24(v11);
        sub_1AF444AF4(v15);
      }

      v6 -= 5;
      --v7;
    }

    while (v8);
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1AF94D8F4(void *a1, uint64_t a2)
{
  sub_1AF458F48(0);
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v74 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1AFDFC3F8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95BB40();
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v64 - v21;
  sub_1AF0D8108(0, &qword_1EB638FC0);

  sub_1AFDFC408();
  sub_1AFDFC3E8();
  sub_1AFDFC458();
  (*(v9 + 8))(v12, v8);
  v23 = *(v15 + 8);
  v67 = v15 + 8;
  v65 = v23;
  v23(v18, v14);
  v24 = sub_1AF432980(MEMORY[0x1E69E7CC0]);
  v69 = a1;
  v82 = a1;
  v83 = a2;
  sub_1AF770DF0();
  sub_1AF95BBAC(&qword_1EB640798, sub_1AF95BB40);
  v66 = v22;
  v68 = v14;
  v25 = sub_1AFDFCD78();
  v70 = a2;

  v26 = *(v25 + 16);
  if (v26)
  {
    v73 = *(v76 + 16);
    v27 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v64[1] = v25;
    v28 = v25 + v27;
    v29 = *(v76 + 72);
    v71 = (v76 + 8);
    v72 = v29;
    v76 += 16;
    do
    {
      v33 = v74;
      v32 = v75;
      v73(v74, v28, v75);
      sub_1AFDFC498();
      (*v71)(v33, v32);

      v34 = MEMORY[0x1B27189E0](v84, v85, v86, v87);
      v36 = v35;

      if (v24[2] && (v37 = sub_1AF419914(v34, v36), (v38 & 1) != 0))
      {
        v39 = (v24[7] + 16 * v37);
        v40 = *v39;
        v77 = v39[1];
      }

      else
      {
        v40 = sub_1AF94D4F0(v34, v36);
        v77 = v41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v24;
      v44 = sub_1AF419914(v34, v36);
      v45 = v43;
      v46 = v24[2] + ((v43 & 1) == 0);
      if (v24[3] >= v46)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v49 = v77;
          if (v43)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1AF849704();
          v49 = v77;
          if (v45)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1AF8357A0(v46, isUniquelyReferenced_nonNull_native);
        v47 = sub_1AF419914(v34, v36);
        if ((v45 & 1) != (v48 & 1))
        {
          sub_1AFDFF1A8();
          __break(1u);

          __break(1u);
          return result;
        }

        v44 = v47;
        v49 = v77;
        if (v45)
        {
LABEL_15:

          v24 = v82;
          v50 = (v82[7] + 16 * v44);
          *v50 = v40;
          v50[1] = v49;

          goto LABEL_4;
        }
      }

      v24 = v82;
      v82[(v44 >> 6) + 8] |= 1 << v44;
      v30 = (v24[6] + 16 * v44);
      *v30 = v34;
      v30[1] = v36;
      v31 = (v24[7] + 16 * v44);
      *v31 = v40;
      v31[1] = v49;
      ++v24[2];
LABEL_4:
      v28 += v72;
      --v26;
    }

    while (v26);
  }

  v51 = v24[2];
  v52 = v69;
  if (v51)
  {
    v53 = sub_1AFC860F0(v24[2], 0);
    sub_1AFC875DC(&v82, v53 + 4, v51, v24);

    sub_1AF0FBB14();
  }

  else
  {
    v53 = MEMORY[0x1E69E7CC0];
  }

  v82 = v53;
  sub_1AF94AD50(&v82);
  v54 = v82;
  v55 = v82[2];
  if (v55)
  {

    v56 = v70;
    v77 = v54;
    v57 = v54 + 7;
    do
    {
      v58 = *(v57 - 3);
      v59 = *(v57 - 2);
      v60 = *(v57 - 1);
      v61 = *v57;
      v82 = v52;
      v83 = v56;
      v80 = 36;
      v81 = 0xE100000000000000;

      MEMORY[0x1B2718AE0](v58, v59);

      v78 = v60;
      v79 = v61;
      sub_1AF4486E4();
      v52 = sub_1AFDFDEB8();
      v56 = v62;

      v57 += 4;
      --v55;
    }

    while (v55);
  }

  else
  {
  }

  v65(v66, v68);

  return v52;
}

uint64_t sub_1AF94E038(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6)
{
  v112 = a6;
  v111 = a5;
  v110 = a3;
  v127 = a1;
  v119 = sub_1AFDFC3A8();
  v114 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119, v8);
  v118 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1AFDFC3B8();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v10);
  v116 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95BB0C(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v120 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95A7B4(0);
  v125 = v15;
  v123 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v122 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v124 = &v110 - v20;
  v121 = a4;
  v126 = a4[2];

  v21 = 0;
  do
  {
    v22 = v21;
    if (v126 == v21)
    {
      break;
    }

    ++v21;
    v132[0] = v127;
    v132[1] = a2;
    v130 = 29221;
    v131 = 0xE200000000000000;
    v128 = v22;

    v23 = sub_1AFDFEA08();
    MEMORY[0x1B2718AE0](v23);

    sub_1AF4486E4();
    v24 = sub_1AFDFDF18();
  }

  while ((v24 & 1) == 0);
  v25 = v126;
  if (v126)
  {
    v26 = 0;
    v27 = 0;
    v28 = v121 + 4;
    do
    {
      v29 = sub_1AF90F890(v28[v27++], 0xC000000000000008);
      v26 += (v29 & 1) == 0;
    }

    while (v25 != v27);
    v30 = v25 == v22;
    v31 = v127;
    v32 = v120;
    v33 = v122;
    if (v30 && v26 == 1)
    {
      v34 = HIBYTE(a2) & 0xF;
      if ((a2 & 0x2000000000000000) == 0)
      {
        v34 = v127 & 0xFFFFFFFFFFFFLL;
      }

      if (v34)
      {
        v132[0] = v127;
        v132[1] = a2;
        v130 = 10;
        v131 = 0xE100000000000000;
        sub_1AF4486E4();
        v35 = *(sub_1AFDFDE98() + 16);

        if (v35 == 1)
        {
          v132[0] = v31;
          v132[1] = a2;
          v130 = 35;
          v131 = 0xE100000000000000;
          sub_1AF770DF0();
          sub_1AF770E44();
          if ((sub_1AFDFCD68() & 1) == 0)
          {
            v36 = *v28;
            v37 = *(v113 + 56);
            sub_1AF442064(v36);
            v38 = sub_1AF937FF8(v37, v36);
            if ((~v38 & 0xF000000000000007) == 0)
            {
              sub_1AF442064(v36);
              v38 = v36;
            }

            if (v37 == 3)
            {
              strcpy(v132, "const %r0 = ");
              BYTE5(v132[1]) = 0;
              HIWORD(v132[1]) = -5120;
              MEMORY[0x1B2718AE0](v31, a2);
              MEMORY[0x1B2718AE0](59, 0xE100000000000000);

              sub_1AF445BE4(v38);
              sub_1AF445BE4(v36);
              a2 = v132[1];
              v127 = v132[0];
            }

            else
            {
              v132[0] = 0;
              v132[1] = 0xE000000000000000;
              v42 = sub_1AF937FF8(v37, v38);
              if ((~v42 & 0xF000000000000007) == 0)
              {
                sub_1AF442064(v38);
                v42 = v38;
              }

              v43 = sub_1AF94B594(v37, v42);
              v45 = v44;
              sub_1AF445BE4(v42);
              MEMORY[0x1B2718AE0](v43, v45);

              MEMORY[0x1B2718AE0](32, 0xE100000000000000);
              MEMORY[0x1B2718AE0](3174949, 0xE300000000000000);
              MEMORY[0x1B2718AE0](2112800, 0xE300000000000000);
              MEMORY[0x1B2718AE0](v31, a2);
              MEMORY[0x1B2718AE0](59, 0xE100000000000000);

              sub_1AF445BE4(v38);
              sub_1AF445BE4(v36);
              a2 = v132[1];
              v127 = v132[0];
              v25 = v126;
              v33 = v122;
            }
          }
        }
      }
    }

    v121 = sub_1AF42C2A4(MEMORY[0x1E69E7CC0]);
    v46 = 0;
    ++v123;
    ++v114;
    ++v115;
    do
    {
      v132[0] = 0;
      v132[1] = 0xE000000000000000;
      sub_1AFDFE218();

      v132[0] = 29219;
      v132[1] = 0xE200000000000000;
      v130 = v46;
      v47 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v47);

      MEMORY[0x1B2718AE0](0x2A5D6E5C5E5B283DLL, 0xEE003F296E5C2829);
      sub_1AFDFC4A8();
      v48 = v125;
      sub_1AFDFC468();
      v49 = *v123;
      (*v123)(v33, v48);
      sub_1AFDFC418();
      sub_1AF95A804(0);
      v51 = v50;
      v52 = *(v50 - 8);
      if ((*(v52 + 48))(v32, 1, v50) == 1)
      {
        v49(v124, v125);
        sub_1AF95BC54(v32, sub_1AF95BB0C);
        v33 = v122;
      }

      else
      {
        v53 = v116;
        sub_1AFDFC498();
        (*(v52 + 8))(v32, v51);
        v54 = v118;
        sub_1AFDFC3C8();
        (*v115)(v53, v117);
        v55 = sub_1AFDFC398();
        v57 = v56;
        v59 = v58;
        v61 = v60;
        (*v114)(v54, v119);
        if (v61)
        {
          v62 = MEMORY[0x1B27189E0](v55, v57, v59, v61);
          v64 = v63;

          v65 = v121;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v132[0] = v65;
          sub_1AF858818(v62, v64, v46, isUniquelyReferenced_nonNull_native);
          v121 = v132[0];
          v130 = v127;
          v131 = a2;
          v128 = 0;
          v129 = 0xE000000000000000;
          sub_1AF95A690();
          sub_1AF95A6E4();
          sub_1AF95BBAC(&qword_1ED722BD8, sub_1AF95A7B4);
          v67 = v124;
          v68 = v125;
          sub_1AFDFD978();

          v49(v67, v68);
          a2 = v132[1];
          v127 = v132[0];
        }

        else
        {
          v49(v124, v125);
        }

        v25 = v126;
        v32 = v120;
        v33 = v122;
      }

      ++v46;
    }

    while (v25 != v46);
    v125 = sub_1AF94D4F0(v111, v112);
    v70 = v69;
    v130 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v25, 0);
    v71 = 0;
    v41 = v130;
    v40 = v121;
    do
    {
      if (v40[2] && (v72 = sub_1AF449CB8(v71), (v73 & 1) != 0))
      {
        v74 = (v40[7] + 16 * v72);
        v76 = *v74;
        v75 = v74[1];
      }

      else if (v25 == 1)
      {

        v76 = v125;
        v75 = v70;
      }

      else
      {
        v132[0] = 95;
        v132[1] = 0xE100000000000000;
        v128 = v71;
        v77 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v77);

        v78 = v132[0];
        v79 = v132[1];
        v132[0] = v125;
        v132[1] = v70;

        MEMORY[0x1B2718AE0](v78, v79);

        v76 = v132[0];
        v75 = v132[1];
      }

      v130 = v41;
      v81 = v41[2];
      v80 = v41[3];
      if (v81 >= v80 >> 1)
      {
        sub_1AFC05CE4(v80 > 1, v81 + 1, 1);
        v41 = v130;
      }

      ++v71;
      v41[2] = v81 + 1;
      v82 = &v41[2 * v81];
      v82[4] = v76;
      v82[5] = v75;
      v25 = v126;
    }

    while (v126 != v71);
    v125 = 0;
  }

  else
  {
    v125 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = sub_1AF42C2A4(MEMORY[0x1E69E7CC0]);
    sub_1AF94D4F0(v111, v112);
    v41 = v39;
  }

  v83 = v41[2];
  v126 = v41;
  if (v83)
  {
    v121 = v40;
    v84 = 0;
    v85 = v41 + 5;
    v86 = v127;
    do
    {
      v87 = *(v85 - 1);
      v88 = *v85;
      v89 = v84 + 1;
      v132[0] = v86;
      v132[1] = a2;
      v130 = 29221;
      v131 = 0xE200000000000000;
      v128 = v84;
      v90 = v83;

      v91 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v91);

      v128 = v87;
      v129 = v88;
      sub_1AF4486E4();
      v86 = sub_1AFDFDEB8();
      v93 = v92;

      swift_bridgeObjectRelease_n();
      v83 = v90;
      a2 = v93;
      v85 += 2;
      v84 = v89;
    }

    while (v90 != v89);
    v94 = 0;
    v95 = v126 + 40;
    v96 = v110;
    v97 = (v110 + 40);
    v98 = (v90 - 1);
    v99 = v86;
    do
    {
      v100 = (v95 + 16 * v94);
      v101 = &v97[16 * v94];
      v102 = v94;
      while (1)
      {
        if (v96)
        {
          if ((v102 & 0x8000000000000000) == 0 && v102 < *(v96 + 16))
          {
            v103 = *v101;
            if (*v101)
            {
              break;
            }
          }
        }

        ++v102;
        v100 += 2;
        v101 += 16;
        if (v83 == v102)
        {
          goto LABEL_56;
        }
      }

      v104 = v99;
      v105 = *(v100 - 1);
      v106 = *v100;
      v122 = *(v101 - 1);
      v123 = v98;
      v132[0] = v104;
      v132[1] = a2;
      v130 = 37;
      v131 = 0xE100000000000000;
      v127 = v95;
      v124 = v97;

      MEMORY[0x1B2718AE0](v122, v103);

      v128 = v105;
      v129 = v106;
      v99 = sub_1AFDFDEB8();
      v108 = v107;

      swift_bridgeObjectRelease_n();
      v98 = v123;
      v97 = v124;
      v95 = v127;
      v83 = v90;
      v94 = v102 + 1;
      a2 = v108;
    }

    while (v123 != v102);
  }

  else
  {
    v99 = v127;
  }

LABEL_56:

  return v99;
}

uint64_t sub_1AF94EDE0(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v5 = *v3;
  v41 = a2;
  v42 = v5;
  v6 = sub_1AFDFC318();
  v46 = *(v6 - 8);
  v47 = v6;
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*a1 + 152))(v50, v8);
  v10 = a1[3];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v48 = MEMORY[0x1E69E7CC0];

    sub_1AFC078EC(0, v11, 0);
    v13 = 32;
    v12 = v48;
    do
    {
      v14 = *(v10 + v13);
      sub_1AF442064(v14);
      v15 = sub_1AF937FF8(0, v14);
      if ((~v15 & 0xF000000000000007) != 0)
      {
        v16 = v15;
        sub_1AF445BE4(v14);
        v14 = v16;
      }

      v48 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1AFC078EC(v17 > 1, v18 + 1, 1);
        v12 = v48;
      }

      *(v12 + 16) = v18 + 1;
      *(v12 + 8 * v18 + 32) = v14;
      v13 += 8;
      --v11;
    }

    while (v11);
  }

  v19 = a1[4];
  v20 = *(v19 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v48 = MEMORY[0x1E69E7CC0];

    sub_1AFC078EC(0, v20, 0);
    v22 = 32;
    v21 = v48;
    do
    {
      v23 = *(v19 + v22);
      sub_1AF442064(v23);
      v24 = sub_1AF937FF8(0, v23);
      if ((~v24 & 0xF000000000000007) != 0)
      {
        v25 = v24;
        sub_1AF445BE4(v23);
        v23 = v25;
      }

      v48 = v21;
      v27 = *(v21 + 16);
      v26 = *(v21 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1AFC078EC(v26 > 1, v27 + 1, 1);
        v21 = v48;
      }

      *(v21 + 16) = v27 + 1;
      *(v21 + 8 * v27 + 32) = v23;
      v22 += 8;
      --v20;
    }

    while (v20);
  }

  v28 = v45;
  v29 = v46;
  v30 = (*(v46 + 16))(v45, a1 + OBJC_IVAR____TtC3VFX4Node_authoringID, v47);
  MEMORY[0x1EEE9AC00](v30, v31);
  v32 = v41;
  *(&v41 - 8) = v28;
  *(&v41 - 7) = v32;
  *(&v41 - 6) = v50;
  v33 = v44;
  *(&v41 - 5) = v43;
  *(&v41 - 4) = v12;
  *(&v41 - 3) = v33;
  *(&v41 - 2) = v21;
  *(&v41 - 1) = v42;
  v35 = sub_1AFA55F38(0xD00000000000001ELL, v34 | 0x8000000000000000, 0, sub_1AF95BAF8);
  v37 = v36;
  v56 = v50[0];
  v38 = MEMORY[0x1E69E62F8];
  sub_1AF957840(&v56, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
  v55 = v50[1];
  sub_1AF957840(&v55, &qword_1EB638968, &type metadata for TypeConstraint, v38);
  v54 = v50[2];
  sub_1AF957840(&v54, &qword_1EB638968, &type metadata for TypeConstraint, v38);
  v53 = v50[3];
  sub_1AF95BC54(&v53, sub_1AF445C2C);
  v52 = v50[4];
  sub_1AF95BC54(&v52, sub_1AF445C2C);
  v51 = v50[5];
  sub_1AF957840(&v51, &qword_1EB638978, &type metadata for AnyValue, v38);

  v48 = v35;
  v49 = v37;

  MEMORY[0x1B2718AE0](59, 0xE100000000000000);

  v39 = v48;
  (*(v29 + 8))(v28, v47);
  return v39;
}

uint64_t sub_1AF94F270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AFDFE218();

  sub_1AF95B98C(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1AFE4C620;
  v12 = sub_1AFDFC2E8();
  v13 = MEMORY[0x1E69E7360];
  v14 = MEMORY[0x1E69E73D8];
  *(v11 + 56) = MEMORY[0x1E69E7360];
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  sub_1AFDFC2E8();
  *(v11 + 96) = v13;
  *(v11 + 104) = v14;
  *(v11 + 72) = v15;
  v16 = sub_1AFDFCF38();
  MEMORY[0x1B2718AE0](v16);

  MEMORY[0x1B2718AE0](32032, 0xE200000000000000);
  sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001AFF3BD80;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  v95 = inited;
  v18 = sub_1AFDFEA08();
  v20 = v19;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_1AFE431C0;
  *(v21 + 32) = v18;
  *(v21 + 40) = v20;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0;
  v94 = v21;
  v22 = sub_1AF42A658(a5, a2);
  v23 = sub_1AF3C4820(v22);

  v24 = *(v23 + 16);
  v93 = a4;
  if (v24)
  {
    v101 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v24, 0);
    v25 = 0;
    v26 = *(a3 + 24);
    v97 = *(v26 + 16);
    v99 = v24;
    v96 = *(a4 + 56);
    v27 = (v26 + 40);
    v28 = (v23 + 48);
    do
    {
      v29 = *(v28 - 2);
      v30 = *(v28 - 1);
      v31 = *v28;
      if (v25 < v97 && *v27)
      {
        sub_1AF442064(v29);
        sub_1AF4486E4();

        v32 = sub_1AFDFDF18();
      }

      else
      {
        sub_1AF442064(*(v28 - 2));

        v32 = 0;
      }

      v33 = sub_1AF937FF8(v96, v29);
      if ((~v33 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v29);
        v33 = v29;
      }

      v34 = sub_1AF90F890(v33, 0xC000000000000018);
      sub_1AF445BE4(v33);
      v35 = (v34 & 1) == 0;
      if (v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = 38;
      }

      if (v35)
      {
        v37 = 0xE100000000000000;
      }

      else
      {
        v37 = 0xE000000000000000;
      }

      if (v32 & 1) != 0 || (sub_1AF90F890(v29, 0xC000000000000008))
      {

        v38 = 0xE400000000000000;
        v39 = 1280070990;
      }

      else
      {
        v103 = v37;
        MEMORY[0x1B2718AE0](v30, v31);
        v39 = v36;
        v38 = v103;
      }

      sub_1AF9102F8(v29);
      v40 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v40);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v39, v38);

      MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
      sub_1AF445BE4(v29);

      v42 = *(v101 + 16);
      v41 = *(v101 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_1AFC05CE4(v41 > 1, v42 + 1, 1);
      }

      ++v25;
      *(v101 + 16) = v42 + 1;
      v43 = v101 + 16 * v42;
      *(v43 + 32) = 8315;
      *(v43 + 40) = 0xE200000000000000;
      v27 += 2;
      v28 += 3;
    }

    while (v99 != v25);
  }

  v44 = MEMORY[0x1E69E62F8];
  sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  sub_1AFDFCD98();

  v45 = sub_1AFAF888C();
  v47 = v46;

  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_1AFE431C0;
  *(v48 + 32) = v45;
  *(v48 + 40) = v47;
  sub_1AF441DD8();
  *(v48 + 48) = 0;
  *(v48 + 56) = 0;
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1AFE4C680;
  *(v49 + 32) = &unk_1F2504E38;
  *(v49 + 40) = v48;
  *(v49 + 48) = &unk_1F2504E78;
  v50 = sub_1AFA56CA0();
  swift_setDeallocating();
  sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, v44);
  swift_arrayDestroy();
  v51 = sub_1AFA5413C(v50);
  v53 = v52;

  v54 = swift_initStackObject();
  *(v54 + 16) = xmmword_1AFE431C0;
  *(v54 + 32) = v51;
  *(v54 + 40) = v53;
  *(v54 + 48) = 0;
  *(v54 + 56) = 0;
  v98 = v54;
  v55 = sub_1AFDFEA08();
  v57 = v56;
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1AFE431C0;
  *(v58 + 32) = v55;
  *(v58 + 40) = v57;
  *(v58 + 48) = 0;
  *(v58 + 56) = 0;
  v90 = v58;
  v59 = sub_1AF42A658(a7, a6);
  v60 = sub_1AF3C4820(v59);

  v61 = *(v60 + 16);
  if (v61)
  {
    v100 = MEMORY[0x1E69E7CC0];
    sub_1AFC05CE4(0, v61, 0);
    v62 = *(v93 + 56);
    v63 = (v60 + 48);
    do
    {
      v64 = *(v63 - 2);
      v65 = *(v63 - 1);
      v66 = *v63;

      sub_1AF442064(v64);
      v67 = sub_1AF937FF8(v62, v64);
      if ((~v67 & 0xF000000000000007) == 0)
      {
        sub_1AF442064(v64);
        v67 = v64;
      }

      v68 = sub_1AF90F890(v67, 0xC000000000000018);
      sub_1AF445BE4(v67);
      if (v68)
      {
        v69 = 0xE000000000000000;
      }

      else
      {
        v69 = 0xE100000000000000;
      }

      if (sub_1AF90F890(v64, 0xC000000000000008))
      {

        v70 = 0xE400000000000000;
        v71 = 1280070990;
      }

      else
      {
        v72 = 38;
        if (v68)
        {
          v72 = 0;
        }

        v102 = v72;
        MEMORY[0x1B2718AE0](v65, v66);
        v71 = v102;
        v70 = v69;
      }

      sub_1AF9102F8(v64);
      v73 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v73);

      MEMORY[0x1B2718AE0](8236, 0xE200000000000000);
      MEMORY[0x1B2718AE0](v71, v70);

      MEMORY[0x1B2718AE0](2915616, 0xE300000000000000);
      sub_1AF445BE4(v64);

      v75 = *(v100 + 16);
      v74 = *(v100 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1AFC05CE4(v74 > 1, v75 + 1, 1);
      }

      *(v100 + 16) = v75 + 1;
      v76 = v100 + 16 * v75;
      *(v76 + 32) = 8315;
      *(v76 + 40) = 0xE200000000000000;
      v63 += 3;
      --v61;
    }

    while (v61);
  }

  sub_1AFDFCD98();

  v77 = sub_1AFAF888C();
  v79 = v78;

  v80 = swift_initStackObject();
  *(v80 + 16) = xmmword_1AFE431C0;
  *(v80 + 32) = v77;
  *(v80 + 40) = v79;
  *(v80 + 48) = 0;
  *(v80 + 56) = 0;
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_1AFE4C680;
  *(v81 + 32) = &unk_1F2504EB8;
  *(v81 + 40) = v80;
  *(v81 + 48) = &unk_1F2504EF8;
  v82 = sub_1AFA56CA0();
  swift_setDeallocating();
  swift_arrayDestroy();
  v83 = sub_1AFA5413C(v82);
  v85 = v84;

  v86 = swift_initStackObject();
  *(v86 + 16) = xmmword_1AFE431C0;
  *(v86 + 32) = v83;
  *(v86 + 40) = v85;
  *(v86 + 48) = 0;
  *(v86 + 56) = 0;
  v87 = swift_initStackObject();
  *(v87 + 32) = &unk_1F2504DF8;
  *(v87 + 16) = xmmword_1AFE86410;
  *(v87 + 40) = v95;
  *(v87 + 48) = v94;
  *(v87 + 56) = v98;
  *(v87 + 64) = v90;
  *(v87 + 72) = v86;
  v88 = sub_1AFA56CA0();
  swift_setDeallocating();
  swift_arrayDestroy();
  return v88;
}

void sub_1AF94FCAC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t *__return_ptr, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v327 = a4;
  v328 = a1;
  *&v326 = a3;
  v9 = sub_1AFDFC318();
  v324 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v310 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF95B314(0, &qword_1ED722BC8, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
  v14 = v13;
  v15 = *(v13 - 1);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v310 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v310 - v21;
  sub_1AF95B958(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v310 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a2 + 16);
  v325 = a5;
  if (!v27)
  {
    v329 = v18;
    v321 = v22;
    v323 = v15;
    v331 = v14;
    v317 = v26;
    v28 = v328;
    if (!sub_1AF7025B4(v328, *(v6 + 104)))
    {
      v313 = v12;
      v314 = v9;
      v45 = swift_conformsToProtocol2();
      v46 = v45;
      if (v45)
      {
        v47 = v28;
      }

      else
      {
        v47 = 0;
      }

      v48 = *v47;
      v49 = *(v45 + 8);

      v49(v48, v46);
      v330 = *(v6 + 56);
      v50 = *(v46 + 48);
      v315 = v47;
      v318 = v48;
      v319 = v46;
      v320 = v50(v48, v46);
      v51 = *(v320 + 16);
      v333 = v6;
      v52 = v331;
      if (v51)
      {
        v53 = (v320 + 48);
        while (1)
        {
          v56 = *(v53 - 2);
          LODWORD(v334) = *(v53 - 8);
          v57 = *v53;
          v335 = *v53;
          if (((v56 >> 59) & 0x1E | (v56 >> 2) & 1) == 2)
          {
            sub_1AF95BA60((v56 & 0xFFFFFFFFFFFFFFBLL) + 16, &v345, sub_1AF95BAC8);
            sub_1AF443EE0(v56);
            sub_1AF443EE0(v56);
            sub_1AF444224(v57);
            sub_1AF4459C8(&v345);
          }

          else
          {
            sub_1AF443EE0(v56);
            sub_1AF443EE0(v56);
            sub_1AF444224(v57);
          }

          v58 = *(v6 + 80);
          if (!*(v58 + 16))
          {
            goto LABEL_22;
          }

          v59 = sub_1AF41AF3C(v56);
          if ((v60 & 1) == 0)
          {
            break;
          }

          v61 = *(v58 + 56) + 32 * v59;
          v62 = *v61;
          v64 = *(v61 + 8);
          v63 = *(v61 + 16);
          v332 = *(v61 + 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v6;
          v67 = isUniquelyReferenced_nonNull_native;
          v345 = *(v66 + 80);
          v68 = v345;
          *(v66 + 80) = 0x8000000000000000;
          v69 = sub_1AF41AF3C(v56);
          v71 = v70;
          v72 = *(v68 + 16) + ((v70 & 1) == 0);
          if (*(v68 + 24) >= v72)
          {
            if ((v67 & 1) == 0)
            {
              v91 = v69;
              sub_1AF84EBBC();
              v69 = v91;
            }
          }

          else
          {
            sub_1AF83FC34(v72, v67);
            v69 = sub_1AF41AF3C(v56);
            if ((v71 & 1) != (v73 & 1))
            {
              goto LABEL_153;
            }
          }

          v6 = v333;
          v87 = v62 | v334;
          v88 = v345;
          if (v71)
          {
            v89 = *(v345 + 56) + 32 * v69;
            *v89 = v87;
            *(v89 + 8) = v64;
            *(v89 + 16) = v63;
            *(v89 + 24) = v332;

            sub_1AF443F24(v56);
          }

          else
          {
            *(v345 + 8 * (v69 >> 6) + 64) |= 1 << v69;
            *(v88[6] + 8 * v69) = v56;
            v90 = v88[7] + 32 * v69;
            *v90 = v87;
            *(v90 + 8) = v64;
            *(v90 + 16) = v63;
            *(v90 + 24) = v332;
            ++v88[2];
          }

          *(v6 + 80) = v88;
LABEL_12:
          sub_1AF443F24(v56);
          sub_1AF444AF4(v335);
          v52 = v331;
          v53 += 5;
          if (!--v51)
          {
            goto LABEL_37;
          }
        }

LABEL_22:
        v74 = sub_1AF94C850(v56);
        v76 = v75;
        v332 = *(v6 + 88);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v345 = *(v6 + 80);
        v78 = v345;
        *(v6 + 80) = 0x8000000000000000;
        v80 = sub_1AF41AF3C(v56);
        v81 = v79;
        v82 = *(v78 + 16) + ((v79 & 1) == 0);
        if (*(v78 + 24) < v82)
        {
          sub_1AF83FC34(v82, v77);
          v83 = sub_1AF41AF3C(v56);
          if ((v81 & 1) != (v84 & 1))
          {
LABEL_153:
            sub_1AFDFF1A8();
            __break(1u);
LABEL_154:

LABEL_155:
            v345 = 0;
            v346 = 0xE000000000000000;
            sub_1AFDFE218();
            MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF3BC00);
            v344[0] = v56;
            sub_1AFDFE458();
            MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF3BC20);
            while (1)
            {
              sub_1AFDFE518();
              __break(1u);
LABEL_157:
              v345 = 0;
              v346 = 0xE000000000000000;
              sub_1AFDFE218();
              v307 = sub_1AF9703D8();
              v309 = v308;

              v345 = v307;
              v346 = v309;
              MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF3BD10);
            }
          }

          v80 = v83;
          v85 = v345;
          if (v81)
          {
            goto LABEL_28;
          }

LABEL_10:
          v85[(v80 >> 6) + 8] |= 1 << v80;
          *(v85[6] + 8 * v80) = v56;
          v54 = v85[7] + 32 * v80;
          *v54 = v334;
          *(v54 + 8) = v74;
          *(v54 + 16) = v76;
          *(v54 + 24) = v332;
          ++v85[2];
LABEL_11:
          v6 = v333;
          v55 = *(v333 + 88) + 1;
          *(v333 + 80) = v85;
          *(v6 + 88) = v55;
          goto LABEL_12;
        }

        if (v77)
        {
          v85 = v345;
          if ((v79 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1AF84EBBC();
          v85 = v345;
          if ((v81 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

LABEL_28:
        v86 = v85[7] + 32 * v80;
        *v86 = v334;
        *(v86 + 8) = v74;
        *(v86 + 16) = v76;
        *(v86 + 24) = v332;

        sub_1AF443F24(v56);
        goto LABEL_11;
      }

LABEL_37:
      v92 = v328;
      v93 = 0;
      v94 = 0;
      v343 = 0;
      v95 = 0;
      v96 = 0;
      if (*v328 == _TtC3VFX12SubGraphNode)
      {
        v97 = v329;
        if (v328)
        {
          v98 = *(v328 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph);
          if (v98)
          {
            if (*(v6 + 24))
            {
              v99 = *(v6 + 16);
              v100 = *(v6 + 24);
            }

            else
            {
              v99 = 0;
              v100 = 0xE000000000000000;
            }

            v345 = 0x5F6E66627573;
            v346 = 0xE600000000000000;
            v312 = v98;

            MEMORY[0x1B2718AE0](v99, v100);

            v102 = v345;
            v101 = v346;
            type metadata accessor for CastNode(0);
            v103 = swift_dynamicCastClass();
            if (v103)
            {
              v104 = *(v103 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
              v105 = v103;
              sub_1AF442064(v104);
              v106 = sub_1AF90D394(v104);
              v108 = v107;
              sub_1AF445BE4(v104);
              v345 = v106;
              v346 = v108;
              MEMORY[0x1B2718AE0](0x5F6D6F72665FLL, 0xE600000000000000);
              v109 = *(*(v105 + 24) + 32);
              sub_1AF448650(*(v105 + 24));
              sub_1AF442064(v109);

              v110 = sub_1AF90D394(v109);
              v112 = v111;
              sub_1AF445BE4(v109);
              MEMORY[0x1B2718AE0](v110, v112);

              v113 = sub_1AF95A008(v345, v346);
              v115 = v114;
            }

            else
            {
              v116 = (*(*v92 + 128))();
              v118 = v117;
              v345 = v116;
              v346 = v117;
              v349 = 0x746963696C706D49;
              v350 = 0xE800000000000000;
              v119 = sub_1AFDFC328();
              v120 = v317;
              (*(*(v119 - 8) + 56))(v317, 1, 1, v119);
              sub_1AF4486E4();
              v121 = sub_1AFDFDEF8();
              v123 = v122;
              v125 = v124;
              sub_1AF95BC54(v120, sub_1AF95B958);
              if ((v125 & 1) == 0)
              {
                v116 = sub_1AF9AADA8(v121, v123, 0, 0xE000000000000000, v116, v118);
                v127 = v126;

                v118 = v127;
              }

              v113 = sub_1AF95A008(v116, v118);
              v115 = v128;
              v92 = v328;
              v97 = v329;
            }

            v129 = sub_1AF94D4F0(v113, v115);
            v131 = v130;

            v345 = v102;
            v346 = v101;

            MEMORY[0x1B2718AE0](v129, v131);

            v132 = v333;

            v94 = v345;
            v322 = v346;
            v349 = MEMORY[0x1E69E7CD0];
            v133 = sub_1AF94D290(v320, &v349);

            v134 = *(v133 + 2);
            if (v134)
            {
              v316 = v94;
              v348[0] = MEMORY[0x1E69E7CC0];
              sub_1AFC079DC(0, v134, 0);
              v135 = v348[0];
              v311 = v133;
              v136 = (v133 + 64);
              do
              {
                v137 = v135;
                v56 = *(v136 - 4);
                v138 = *(v136 - 24);
                v139 = *(v136 - 2);
                v140 = *(v136 - 1);
                LODWORD(v335) = *v136;
                v141 = *(v132 + 80);
                v142 = *(v141 + 16);
                sub_1AF443EE0(v56);
                sub_1AF444224(v139);
                sub_1AF443EE0(v56);
                sub_1AF444224(v139);
                if (!v142)
                {
                  goto LABEL_155;
                }

                v143 = sub_1AF41AF3C(v56);
                if ((v144 & 1) == 0)
                {
                  goto LABEL_154;
                }

                v145 = *(v141 + 56) + 32 * v143;
                v146 = *(v145 + 16);
                v334 = *(v145 + 8);
                v332 = v146;

                sub_1AF443F24(v56);
                sub_1AF444AF4(v139);
                v135 = v137;
                v348[0] = v137;
                v148 = v137[2];
                v147 = v137[3];
                if (v148 >= v147 >> 1)
                {
                  sub_1AFC079DC(v147 > 1, v148 + 1, 1);
                  v135 = v348[0];
                }

                v135[2] = v148 + 1;
                v149 = &v135[7 * v148];
                v149[4] = v56;
                *(v149 + 40) = v138;
                v149[6] = v139;
                v149[7] = v140;
                *(v149 + 64) = v335;
                v132 = v333;
                v150 = v332;
                v149[9] = v334;
                v149[10] = v150;
                v136 += 40;
                --v134;
              }

              while (v134);

              v92 = v328;
              v97 = v329;
              v94 = v316;
              v52 = v331;
            }

            else
            {

              v135 = MEMORY[0x1E69E7CC0];
            }

            v151 = swift_isUniquelyReferenced_nonNull_native();
            v152 = v312;
            if ((v151 & 1) == 0)
            {
              v135 = sub_1AFC0DC88(v135);
            }

            v153 = v135[2];
            v154 = v135;
            v345 = (v135 + 4);
            v346 = v153;
            sub_1AF957B98(&v345);
            sub_1AF952600(v152);
            v156 = v155;

            if (!*(*(v132 + 32) + 16))
            {
              v157 = *(v156 + 16);
              if (!v157)
              {
LABEL_67:

                v93 = 0;
                goto LABEL_68;
              }

              v158 = 128;
              while ((*(v156 + v158) & 1) == 0)
              {
                v158 += 120;
                if (!--v157)
                {
                  goto LABEL_67;
                }
              }
            }

            v93 = 1;
LABEL_68:
            v96 = sub_1AF3C4990(v154);

            v343 = v93;
            v95 = v322;
            goto LABEL_69;
          }

          v94 = 0;
          v95 = 0;
          v96 = 0;
          v93 = 0;
        }
      }

      else
      {
        v97 = v329;
      }

LABEL_69:
      LOBYTE(v372) = v330;
      v373 = v92;
      v374 = v94;
      v375 = v95;
      v376 = v96;
      v377 = v93;
      v159 = v319;
      v160 = *(v319 + 40);
      v161 = v95;

      v316 = v94;
      v322 = v161;
      v312 = v96;
      sub_1AF487F80(v94, v161);
      v349 = v160(&v372, v318, v159);
      v350 = v162;
      sub_1AFDFC408();
      v163 = v97;
      v164 = v321;
      sub_1AFDFC478();
      v165 = *(v323 + 8);
      v165(v163, v52);
      v348[0] = 0;
      v348[1] = 0xE000000000000000;
      sub_1AF95A690();
      sub_1AF95A6E4();
      sub_1AF95A738();
      sub_1AFDFD978();
      v165(v164, v52);
      v166 = v328;

      v311 = v345;
      v321 = v346;
      v349 = 0x5367736D5F786676;
      v350 = 0xEB00000000646E65;
      v167 = sub_1AF4486E4();
      if ((sub_1AFDFDF18() & 1) != 0 && ((*(v319 + 24))(v318) & 1) == 0)
      {
        goto LABEL_157;
      }

      v168 = *(v166 + 16);
      v169 = *(v168 + 16);
      if (v169 >= 2 && (type metadata accessor for PartialComposeNode(0), (v170 = swift_dynamicCastClass()) != 0))
      {
        v171 = v170;
        v168 = *(v170 + 16);
        v169 = *(v168 + 16);
      }

      else
      {
        v171 = v328;
      }

      v323 = v167;
      v332 = v171;
      if (v169)
      {
        v349 = MEMORY[0x1E69E7CC0];

        sub_1AFC05CE4(0, v169, 0);
        v335 = v349;
        v310 = v168;
        v172 = (v168 + 40);
        v173 = (*v171 + 152);
        v331 = *v173;
        v329 = v173;
        v174 = 32;
        do
        {
          v175 = *(v172 - 1);
          v334 = *v172;

          v331(v344, v176);
          v177 = v344[0];
          v370 = v344[1];
          v371 = v344[0];
          v178 = MEMORY[0x1E69E62F8];
          sub_1AF957840(&v370, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
          v369 = v344[2];
          sub_1AF957840(&v369, &qword_1EB638968, &type metadata for TypeConstraint, v178);
          v368 = v344[3];
          sub_1AF95BC54(&v368, sub_1AF445C2C);
          v367 = v344[4];
          sub_1AF95BC54(&v367, sub_1AF445C2C);
          v366 = v344[5];
          sub_1AF957840(&v366, &qword_1EB638978, &type metadata for AnyValue, v178);
          v179 = *(v177 + v174);
          sub_1AF4410A8(v179);
          sub_1AF957840(&v371, &qword_1EB638968, &type metadata for TypeConstraint, v178);
          v180 = swift_allocObject();
          *(v180 + 16) = 0xC000000000000008;
          LOBYTE(v177) = sub_1AF9C5694(v179, v180 | 0x8000000000000000);

          sub_1AF441114(v179);
          if (v177)
          {
            v181 = 0xE600000000000000;
            v182 = 0x3E776F6C663CLL;
          }

          else
          {
            (v326)(&v345, v175);
            if (v345)
            {
              v183 = v347;
              v355 = v347;
              v184 = MEMORY[0x1E69E62F8];
              v185 = MEMORY[0x1E69E6158];
              sub_1AF95B9F0(&v355, v348, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
              sub_1AF957840(&v345, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
              v186 = v183 + 16 * v334;
              v182 = *(v186 + 32);
              v181 = *(v186 + 40);

              sub_1AF957840(&v355, &qword_1ED726C70, v185, v184);
            }

            else
            {
              v182 = 0x736E6972746E693CLL;
              v181 = 0xEB000000003E6369;
            }
          }

          v187 = v335;
          v349 = v335;
          v189 = *(v335 + 16);
          v188 = *(v335 + 24);
          if (v189 >= v188 >> 1)
          {
            sub_1AFC05CE4(v188 > 1, v189 + 1, 1);
            v187 = v349;
          }

          v172 += 2;
          *(v187 + 16) = v189 + 1;
          v335 = v187;
          v190 = v187 + 16 * v189;
          *(v190 + 32) = v182;
          *(v190 + 40) = v181;
          v174 += 8;
          --v169;
        }

        while (v169);
      }

      else
      {

        v335 = MEMORY[0x1E69E7CC0];
      }

      v191 = v328[4];
      v192 = *(v191 + 16);
      v193 = MEMORY[0x1E69E7CC0];
      if (v192)
      {
        v349 = MEMORY[0x1E69E7CC0];

        sub_1AFC078EC(0, v192, 0);
        v194 = 32;
        v193 = v349;
        do
        {
          v195 = *(v191 + v194);
          sub_1AF442064(v195);
          v196 = sub_1AF937FF8(v330, v195);
          if ((~v196 & 0xF000000000000007) != 0)
          {
            v197 = v196;
            sub_1AF445BE4(v195);
            v195 = v197;
          }

          v349 = v193;
          v199 = v193[2];
          v198 = v193[3];
          if (v199 >= v198 >> 1)
          {
            sub_1AFC078EC(v198 > 1, v199 + 1, 1);
            v193 = v349;
          }

          v193[2] = v199 + 1;
          v193[v199 + 4] = v195;
          v194 += 8;
          --v192;
        }

        while (v192);
      }

      v200 = sub_1AF94D8F4(v311, v321);
      v202 = v201;

      v349 = v200;
      v350 = v202;
      strcpy(v348, "%node_id_hash");
      HIWORD(v348[1]) = -4864;
      v203 = sub_1AFDFDF18();
      if (v203)
      {
        v334 = v200;
        v204 = v202;
        v205 = v324;
        v206 = v328;
        v208 = v313;
        v207 = v314;
        (*(v324 + 16))(v313, v328 + OBJC_IVAR____TtC3VFX4Node_authoringID, v314);
        v209 = sub_1AFDFC2F8();
        (*(v205 + 8))(v208, v207);
        sub_1AF95B98C(0, &qword_1ED730B50, sub_1AF0D5CF0, MEMORY[0x1E69E6F90]);
        v210 = swift_allocObject();
        v211 = MEMORY[0x1E69E7668];
        *(v210 + 16) = xmmword_1AFE431C0;
        v212 = MEMORY[0x1E69E76D0];
        *(v210 + 56) = v211;
        *(v210 + 64) = v212;
        *(v210 + 32) = v209;
        v213 = sub_1AFDFCF38();
        v349 = v334;
        v350 = v204;
        strcpy(v348, "%node_id_hash");
        HIWORD(v348[1]) = -4864;
        v341 = v213;
        v342 = v214;
        v215 = sub_1AFDFDEB8();
        v202 = v216;
        v200 = v215;
      }

      else
      {
        v206 = v328;
      }

      v217 = (*v206 + 152);
      v327 = *v217;
      v329 = v217;
      v327(v348, v203);
      v218 = v348[3];
      v365 = v348[0];

      v219 = MEMORY[0x1E69E62F8];
      sub_1AF957840(&v365, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v364 = v348[1];
      sub_1AF957840(&v364, &qword_1EB638968, &type metadata for TypeConstraint, v219);
      v363 = v348[2];
      sub_1AF957840(&v363, &qword_1EB638968, &type metadata for TypeConstraint, v219);

      v362 = v348[4];
      sub_1AF95BC54(&v362, sub_1AF445C2C);
      v361 = v348[5];
      sub_1AF957840(&v361, &qword_1EB638978, &type metadata for AnyValue, v219);
      v220 = sub_1AF95A88C(v200, v202, v218, v335);
      v222 = v221;

      v331 = sub_1AF94D6BC(v220, v222, v320);
      v334 = v223;

      v327(&v349, v224);
      v225 = v353;
      v360 = v349;

      sub_1AF957840(&v360, &qword_1EB638968, &type metadata for TypeConstraint, v219);
      v359 = v350;
      sub_1AF957840(&v359, &qword_1EB638968, &type metadata for TypeConstraint, v219);
      v358 = v351;
      sub_1AF957840(&v358, &qword_1EB638968, &type metadata for TypeConstraint, v219);
      v357 = v352;
      sub_1AF95BC54(&v357, sub_1AF445C2C);

      v356 = v354;
      sub_1AF957840(&v356, &qword_1EB638978, &type metadata for AnyValue, v219);
      type metadata accessor for CastNode(0);
      v226 = swift_dynamicCastClass();
      if (v226)
      {
        v227 = *(v226 + OBJC_IVAR____TtC3VFX8CastNode_dstType);
        v228 = v226;
        sub_1AF442064(v227);
        v229 = sub_1AF90D394(v227);
        v231 = v230;
        sub_1AF445BE4(v227);
        v341 = v229;
        v342 = v231;
        MEMORY[0x1B2718AE0](0x5F6D6F72665FLL, 0xE600000000000000);
        v232 = *(*(v228 + 24) + 32);
        sub_1AF448650(*(v228 + 24));
        sub_1AF442064(v232);

        v233 = sub_1AF90D394(v232);
        v235 = v234;
        sub_1AF445BE4(v232);
        MEMORY[0x1B2718AE0](v233, v235);

        v236 = sub_1AF95A008(v341, v342);
        v238 = v237;
        v239 = v334;
      }

      else
      {
        v240 = (*(*v206 + 128))(0);
        v242 = v241;
        v341 = v240;
        v342 = v241;
        v339 = 0x746963696C706D49;
        v340 = 0xE800000000000000;
        v243 = sub_1AFDFC328();
        v244 = v317;
        (*(*(v243 - 8) + 56))(v317, 1, 1, v243);
        v245 = sub_1AFDFDEF8();
        v247 = v246;
        v249 = v248;
        sub_1AF95BC54(v244, sub_1AF95B958);
        if ((v249 & 1) == 0)
        {
          v240 = sub_1AF9AADA8(v245, v247, 0, 0xE000000000000000, v240, v242);
          v251 = v250;

          v242 = v251;
        }

        v239 = v334;
        v236 = sub_1AF95A008(v240, v242);
        v238 = v252;
      }

      v253 = sub_1AF94E038(v331, v239, v225, v193, v236, v238);
      v255 = v254;
      v334 = v256;

      v341 = v253;
      v342 = v255;
      v339 = v253;
      v340 = v255;
      v337 = 0x776F6C6625;
      v338 = 0xE500000000000000;
      if ((sub_1AFDFDF18() & 1) == 0)
      {
        v257 = HIBYTE(v255) & 0xF;
        if ((v255 & 0x2000000000000000) == 0)
        {
          v257 = v253 & 0xFFFFFFFFFFFFLL;
        }

        if (v257)
        {
          v339 = v253;
          v340 = v255;
          v337 = 59;
          v338 = 0xE100000000000000;
          if ((sub_1AFDFDF18() & 1) == 0)
          {
            MEMORY[0x1B2718AE0](59, 0xE100000000000000);
          }
        }
      }

      v258 = v328;
      if (*v328 == _TtC3VFX17SubGraphEnterNode && v328)
      {
        v259 = sub_1AF61FD18(v193, (v193 + 4), v193[2] != 0, (2 * v193[2]) | 1);

        v260 = *(v259 + 16);

        v261 = MEMORY[0x1E69E7CC0];
        if (v260)
        {
          v337 = MEMORY[0x1E69E7CC0];
          sub_1AFC05CE4(0, v260, 0);
          v262 = 0;
          v261 = v337;
          do
          {
            v339 = 0x6E69627573;
            v340 = 0xE500000000000000;
            v336[0] = v262;
            v263 = sub_1AFDFEA08();
            MEMORY[0x1B2718AE0](v263);

            v264 = v339;
            v265 = v340;
            v337 = v261;
            v267 = *(v261 + 16);
            v266 = *(v261 + 24);
            if (v267 >= v266 >> 1)
            {
              sub_1AFC05CE4(v266 > 1, v267 + 1, 1);
              v261 = v337;
            }

            ++v262;
            *(v261 + 16) = v267 + 1;
            v268 = v261 + 16 * v267;
            *(v268 + 32) = v264;
            *(v268 + 40) = v265;
          }

          while (v260 != v262);
        }

        v339 = &unk_1F2506650;
        sub_1AF48FAF8(v261);

        v334 = v339;
        v269 = v328;
      }

      else
      {

        v269 = v258;
      }

      v271 = v341;
      v270 = v342;
      v339 = v341;
      v340 = v342;
      v337 = 0x5F74706972637325;
      v338 = 0xEF747865746E6F63;
      LODWORD(v272) = sub_1AFDFDF18();
      if (v272)
      {
        v339 = v271;
        v340 = v270;
        v337 = 0x5F74706972637325;
        v338 = 0xEF747865746E6F63;
        strcpy(v336, "script_context");
        HIBYTE(v336[1]) = -18;
        v271 = sub_1AFDFDEB8();
      }

      else
      {
      }

      v273 = v333;

      v274 = sub_1AF95AAA8(v271);
      v276 = v275;
      v329 = v277;
      v327 = v278;
      swift_bridgeObjectRelease_n();
      v341 = v274;
      v342 = v276;
      v333 = v276;
      v331 = v274;
      if (v330 == 2)
      {
        if (*(v273 + 40) != 1)
        {
          goto LABEL_139;
        }

        v279 = v332;
        if (*(v273 + 41))
        {
LABEL_130:

          goto LABEL_141;
        }

        v280 = 0;
      }

      else
      {
        v281 = *(v273 + 32);
        v282 = v324;
        v284 = v313;
        v283 = v314;
        (*(v324 + 16))(v313, v269 + OBJC_IVAR____TtC3VFX4Node_authoringID, v314);

        v280 = sub_1AF70292C(v284, v281);

        (*(v282 + 8))(v284, v283);
        if ((*(v273 + 40) & 1) == 0)
        {
          v279 = v332;
          if (v280)
          {
            v285 = 0;
            goto LABEL_136;
          }

          goto LABEL_139;
        }

        v279 = v332;
        if (*(v273 + 41))
        {
          goto LABEL_129;
        }
      }

      if ((*(v319 + 16))(v318))
      {
LABEL_129:
        if ((v280 & 1) == 0)
        {
          goto LABEL_130;
        }

        goto LABEL_135;
      }

      if (v280)
      {
LABEL_135:
        v285 = 1;
LABEL_136:

        if (v279 == v269)
        {
          sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
          v287 = swift_allocObject();
          v326 = xmmword_1AFE431C0;
          *(v287 + 16) = xmmword_1AFE431C0;
          v330 = v272;
          v272 = v333;
          *(v287 + 32) = v331;
          *(v287 + 40) = v272;
          *(v287 + 48) = 0;
          *(v287 + 56) = 0;

          v288 = sub_1AF94EDE0(v269, v335, v334);
          v290 = v289;

          v291 = swift_allocObject();
          *(v291 + 16) = v326;
          *(v291 + 32) = v288;
          *(v291 + 40) = v290;
          sub_1AF441DD8();
          *(v291 + 48) = 0;
          *(v291 + 56) = 0;
          v292 = swift_allocObject();
          *(v292 + 16) = xmmword_1AFE4C620;
          *(v292 + 32) = v287;
          *(v292 + 40) = v291;
          v293 = sub_1AFA56CA0(v292);
          swift_setDeallocating();
          sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v331 = sub_1AFA5413C(v293);
          v295 = v294;
          LOBYTE(v272) = v330;

          v333 = v295;
          if ((v285 & 1) == 0)
          {
            goto LABEL_142;
          }
        }

        else
        {

          if ((v285 & 1) == 0)
          {
LABEL_142:
            v339 = (*(*v269 + 128))(v286);
            v340 = v299;
            v300 = v269[3];
            v301 = v269[4];

            v302 = sub_1AF970608(v300, v301);
            v304 = v303;

            v305 = HIBYTE(v304) & 0xF;
            if ((v304 & 0x2000000000000000) == 0)
            {
              v305 = v302 & 0xFFFFFFFFFFFFLL;
            }

            if (v305)
            {
              v337 = 32;
              v338 = 0xE100000000000000;
              MEMORY[0x1B2718AE0](v302, v304);

              MEMORY[0x1B2718AE0](v337, v338);
            }

            if (v272)
            {
              v306 = 1;
            }

            else
            {
              if (!v322)
              {
                v335 = 0;
                goto LABEL_151;
              }

              v306 = v343;
            }

            v335 = v306;
LABEL_151:
            v40 = v339;
            v41 = v340;
            v30 = v372;
            v31 = v373;
            v32 = v374;
            v33 = v375;
            v34 = v376;
            v43 = v377;
            LODWORD(v332) = v343;
            v29 = v328;

            sub_1AF487074(v316, v322);
            v37 = v333;
            v35 = v334;
            v38 = v329;
            v39 = v327;
            v36 = v331;
            v42 = v335;
            goto LABEL_4;
          }
        }

LABEL_141:
        v296 = sub_1AF95ADC4(v269, v331, v333);
        v331 = sub_1AFA5413C(v296);
        v298 = v297;

        v333 = v298;
        goto LABEL_142;
      }

LABEL_139:

      goto LABEL_142;
    }
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
LABEL_4:
  v44 = v325;
  *v325 = v29;
  v44[1] = v30;
  v44[2] = v31;
  v44[3] = v32;
  v44[4] = v33;
  v44[5] = v34;
  v44[6] = v43;
  v44[7] = v35;
  v44[8] = v36;
  v44[9] = v37;
  v44[10] = v38;
  v44[11] = v39;
  v44[12] = v42;
  v44[13] = v40;
  v44[14] = v41;
}

uint64_t sub_1AF951E44()
{
  if (qword_1EB6325E8 != -1)
  {
    swift_once();
  }

  v1 = byte_1EB6C2888;
  v2 = qword_1EB6C2890;
  v3 = byte_1EB6C2898;
  v4 = MEMORY[0x1E69E7CC0];
  v25 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
  v26 = v5;
  sub_1AF414A20(sub_1AF95B364, v0, v1, v2, v3, v4, &v25);
  v6 = v25;

  v7 = sub_1AF932728();
  if (v7 >> 62)
  {
    v8 = sub_1AFDFE108();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = sub_1AF932728();
  v10 = v9;
  v11 = v9 >> 62;
  if (v8 != 1)
  {
    if (v11)
    {
      v17 = sub_1AFDFE108();
      if (v17)
      {
LABEL_16:
        v24 = v4;
        sub_1AFDFE368();
        v18 = 0;
        do
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x1B2719C70](v18, v10);
            if (!*(v6 + 16))
            {
              goto LABEL_32;
            }
          }

          else
          {
            v19 = *(v10 + 8 * v18 + 32);

            if (!*(v6 + 16))
            {
              goto LABEL_32;
            }
          }

          v20 = sub_1AF0D3F10(v19);
          if ((v21 & 1) == 0 || !*(*(v6 + 56) + 8 * v20))
          {
            goto LABEL_32;
          }

          ++v18;

          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
        }

        while (v17 != v18);

        v22 = v24;
        goto LABEL_30;
      }
    }

    else
    {
      v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_16;
      }
    }

    v22 = MEMORY[0x1E69E7CC0];
LABEL_30:
    type metadata accessor for GraphCodeGen.CFGMultiProcedure();
    result = swift_allocObject();
    *(result + 16) = v22;
    return result;
  }

  if (v11)
  {
    if (sub_1AFDFE108())
    {
      goto LABEL_8;
    }

LABEL_27:

    goto LABEL_33;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1B2719C70](0, v10);
  }

  else
  {
    v12 = *(v10 + 32);
  }

  if (!*(v6 + 16) || (v13 = sub_1AF0D3F10(v12), (v14 & 1) == 0) || (v15 = *(*(v6 + 56) + 8 * v13)) == 0)
  {
    while (1)
    {
LABEL_32:
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_1AFDFE218();
      MEMORY[0x1B2718AE0](0x6C616E696D726574, 0xEE002065646F6E20);
      v23 = sub_1AF9703D8();
      MEMORY[0x1B2718AE0](v23);

      MEMORY[0x1B2718AE0](0xD00000000000002CLL, 0x80000001AFF3BC80);
LABEL_33:
      sub_1AFDFE518();
      __break(1u);
    }
  }

  return v15;
}

uint64_t sub_1AF9522D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 24);

  v5 = sub_1AF95B380(v3, v4);

  *a2 = v5;
  return result;
}

uint64_t sub_1AF952338(uint64_t result)
{
  if (!*(*(result + 16) + 16))
  {
    v24[9] = v1;
    v24[10] = v2;
    v3 = *(result + 8);
    (*(*v3 + 152))(&v15);
    v4 = *(v3[2] + 16);
    if (v4)
    {
      v5 = 0;
      v24[0] = v18;
      v6 = *(v18 + 16);
      v7 = (v18 + 40);
      v8 = 32;
      do
      {
        if (v5 < v6)
        {
          v9 = *v7;
          if (*v7)
          {
            v14[0] = *(v7 - 1);
            v14[1] = v9;
            v13[0] = 0x736E6972746E6923;
            v13[1] = 0xEA00000000006369;
            sub_1AF4486E4();
            if (sub_1AFDFDF18())
            {
              sub_1AF70E5AC(v14, *(v3[2] + v8));
            }
          }
        }

        ++v5;
        v7 += 2;
        v8 += 16;
      }

      while (v4 != v5);
      v14[0] = v15;
      v10 = MEMORY[0x1E69E62F8];
      sub_1AF957840(v14, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v13[0] = v16;
      sub_1AF957840(v13, &qword_1EB638968, &type metadata for TypeConstraint, v10);
      v23 = v17;
      sub_1AF957840(&v23, &qword_1EB638968, &type metadata for TypeConstraint, v10);
      v11 = v24;
    }

    else
    {
      v14[0] = v15;
      v12 = MEMORY[0x1E69E62F8];
      sub_1AF957840(v14, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v13[0] = v16;
      sub_1AF957840(v13, &qword_1EB638968, &type metadata for TypeConstraint, v12);
      v24[0] = v17;
      sub_1AF957840(v24, &qword_1EB638968, &type metadata for TypeConstraint, v12);
      v23 = v18;
      v11 = &v23;
    }

    sub_1AF95BC54(v11, sub_1AF445C2C);
    v22 = v19;
    sub_1AF95BC54(&v22, sub_1AF445C2C);
    v21 = v20;
    return sub_1AF957840(&v21, &qword_1EB638978, &type metadata for AnyValue, MEMORY[0x1E69E62F8]);
  }

  return result;
}

uint64_t sub_1AF952600(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *(v2 + 96);
  if (*(v5 + 16) && (a1 = sub_1AF0D3F10(a1), (a2 & 1) != 0))
  {
    v6 = *(*(v5 + 56) + 16 * a1);
  }

  else
  {
    v47[0] = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](a1, a2);
    v43 = v47;
    MEMORY[0x1EEE9AC00](v7, v8);
    v41[2] = sub_1AF95C27C;
    v41[3] = v9;
    v10 = MEMORY[0x1E69E7CC0];
    *&v48 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    *(&v48 + 1) = v11;
    sub_1AF412D4C(sub_1AF449DD8, v41, 1, 0x1000000000000000uLL, 0, v10, &v48);

    sub_1AF967C6C(v47[0]);
    v12 = sub_1AF951E44();
    v45 = v12;
    v56 = v10;
    if (qword_1EB6325F0 != -1)
    {
      v12 = swift_once();
    }

    v14 = byte_1EB6C28A0;
    v15 = qword_1EB6C28A8;
    v16 = byte_1EB6C28B0;
    MEMORY[0x1EEE9AC00](v12, v13);
    v43 = v3;
    v44 = &v56;
    v17 = MEMORY[0x1E69E7CC0];
    *&v48 = sub_1AF4417E8(MEMORY[0x1E69E7CC0]);
    *(&v48 + 1) = v18;
    v46 = v4;
    sub_1AF416014(sub_1AF95A870, &v42, v14, v15, v16, v17, &v48);

    v19 = v56;
    v20 = v56[2];
    if (v20)
    {
      v21 = v56 + 4;

      do
      {
        v29 = *(v21 + 2);
        v30 = *(v21 + 3);
        v31 = *(v21 + 1);
        v48 = *v21;
        v50 = v29;
        v51 = v30;
        v49 = v31;
        v32 = *(v21 + 4);
        v33 = *(v21 + 5);
        v34 = *(v21 + 6);
        v55 = v21[14];
        v53 = v33;
        v54 = v34;
        v52 = v32;
        if (*v48 == _TtC3VFX12SubGraphNode)
        {
          v35 = *(v3 + 64);
          sub_1AF95A838(&v48, v47);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v3 + 64) = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v35 = sub_1AF426008(0, *(v35 + 2) + 1, 1, v35);
            *(v3 + 64) = v35;
          }

          v38 = *(v35 + 2);
          v37 = *(v35 + 3);
          if (v38 >= v37 >> 1)
          {
            v35 = sub_1AF426008(v37 > 1, v38 + 1, 1, v35);
          }

          *(v35 + 2) = v38 + 1;
          v22 = &v35[120 * v38];
          v23 = v48;
          v24 = v49;
          v25 = v51;
          *(v22 + 4) = v50;
          *(v22 + 5) = v25;
          *(v22 + 2) = v23;
          *(v22 + 3) = v24;
          v26 = v52;
          v27 = v53;
          v28 = v54;
          *(v22 + 18) = v55;
          *(v22 + 7) = v27;
          *(v22 + 8) = v28;
          *(v22 + 6) = v26;
          *(v3 + 64) = v35;
        }

        v21 += 15;
        --v20;
      }

      while (v20);
    }

    else
    {
    }

    v6 = v45;

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&v48 = *(v3 + 96);
    *(v3 + 96) = 0x8000000000000000;
    sub_1AF8571B0(v6, v19, v46, v39);
    *(v3 + 96) = v48;
  }

  return v6;
}

double sub_1AF9529E4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[2];
  if (*(v5 + 16))
  {
    *(a4 + 112) = 0;
    result = 0.0;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  else
  {
    v9 = a1[3];
    v10 = a1[4];
    v11 = a1[1];

    sub_1AF95B0CC(v11, v5, a2, v9, v10, v33);

    v12 = *v33;
    if (*v33)
    {
      v38 = *&v33[72];
      v39 = *&v33[88];
      v40 = *&v33[104];
      v34 = *&v33[8];
      v35 = *&v33[24];
      v36 = *&v33[40];
      v37 = *&v33[56];
      v13 = *a3;
      v31[1] = *&v33[16];
      v31[2] = *&v33[32];
      v31[0] = *v33;
      v32 = *&v33[112];
      v31[5] = *&v33[80];
      v31[6] = *&v33[96];
      v31[3] = *&v33[48];
      v31[4] = *&v33[64];
      sub_1AF95A838(v31, &v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1AF426008(0, *(v13 + 2) + 1, 1, v13);
        *a3 = v13;
      }

      v15 = *(v13 + 2);
      v16 = *(v13 + 3);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v27 = v13;
        v28 = *(v13 + 2);
        v29 = sub_1AF426008(v16 > 1, v15 + 1, 1, v27);
        v15 = v28;
        v13 = v29;
        *a3 = v29;
      }

      *(v13 + 2) = v17;
      v18 = &v13[120 * v15];
      *(v18 + 4) = v12;
      v19 = v34;
      v20 = v35;
      *(v18 + 72) = v36;
      *(v18 + 56) = v20;
      *(v18 + 40) = v19;
      v21 = v37;
      v22 = v38;
      v23 = v39;
      *(v18 + 136) = v40;
      *(v18 + 120) = v23;
      *(v18 + 104) = v22;
      *(v18 + 88) = v21;
    }

    v24 = *&v33[80];
    *(a4 + 64) = *&v33[64];
    *(a4 + 80) = v24;
    *(a4 + 96) = *&v33[96];
    *(a4 + 112) = *&v33[112];
    v25 = *&v33[16];
    *a4 = *v33;
    *(a4 + 16) = v25;
    result = *&v33[32];
    v26 = *&v33[48];
    *(a4 + 32) = *&v33[32];
    *(a4 + 48) = v26;
  }

  return result;
}

uint64_t sub_1AF952C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(a2 + 56);
    v5 = 0x20646165726874;
    if (v4 != 2)
    {
      v5 = 0;
    }

    v40 = v5;
    v6 = 0xE700000000000000;
    if (v4 != 2)
    {
      v6 = 0xE000000000000000;
    }

    v39 = v6;
    v7 = (a1 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v44 = *(a2 + 56);
    while (1)
    {
      v47 = v2;
      v48 = v8;
      v9 = *(v7 - 1);
      v10 = *v7;
      v11 = v7[1];
      v12 = v7[4];
      v45 = v7[3];
      v46 = v9;
      if (v4 != 3)
      {
        break;
      }

      sub_1AF441DD8();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AFE431C0;
      *(inited + 32) = v3;
      swift_bridgeObjectRetain_n();
      sub_1AF442064(v9);

      v14 = v11;
      v15 = v10;
      v16 = sub_1AFA56CA0(inited);
      v17 = v12;
      swift_setDeallocating();
      sub_1AF957840(inited + 32, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
LABEL_26:
      sub_1AF95B314(0, &qword_1EB638390, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E6F90]);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_1AFE431C0;
      *(v29 + 32) = v15;
      *(v29 + 40) = v14;
      *(v29 + 48) = v45;
      *(v29 + 56) = v17;
      sub_1AF441DD8();
      v30 = swift_initStackObject();
      *(v30 + 16) = xmmword_1AFE4C620;
      *(v30 + 32) = v16;
      *(v30 + 40) = v29;

      v31 = sub_1AFA56CA0(v30);
      swift_setDeallocating();
      sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
      swift_arrayDestroy();
      v8 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1AF426BC8(0, v48[2] + 1, 1, v48);
      }

      v33 = v8[2];
      v32 = v8[3];
      if (v33 >= v32 >> 1)
      {
        v8 = sub_1AF426BC8(v32 > 1, v33 + 1, 1, v8);
      }

      v7 += 6;
      sub_1AF445BE4(v46);

      v8[2] = v33 + 1;
      v8[v33 + 4] = v31;
      v2 = v47 - 1;
      v3 = MEMORY[0x1E69E7CC0];
      v4 = v44;
      if (v47 == 1)
      {
        goto LABEL_33;
      }
    }

    v42 = *(v7 + 16);

    sub_1AF442064(v9);

    v18 = sub_1AF937FF8(v4, v9);
    if ((~v18 & 0xF000000000000007) == 0)
    {
      sub_1AF442064(v9);
      v18 = v9;
    }

    v43 = v18;
    v19 = sub_1AF94B594(v4, v18);
    v21 = v20;
    if (v10 == 0x635F747069726373 && v11 == 0xEE00747865746E6FLL)
    {
      if (v4 != 2)
      {
LABEL_18:
        v41 = v3;
        v25 = v3;
        goto LABEL_19;
      }
    }

    else
    {
      v22 = sub_1AFDFEE28();
      if (v4 != 2 || (v22 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_1AF441DD8();
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_1AFE431C0;
    *(v23 + 32) = v3;
    v24 = v23 + 32;
    v41 = sub_1AFA56CA0(v23);
    swift_setDeallocating();
    sub_1AF957840(v24, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    v19 = 0x6F635F656D617266;
    v21 = 0xEF73746E6174736ELL;
    v25 = v3;
LABEL_19:
    MEMORY[0x1B2718AE0](v19, v21);

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    if (v42)
    {
      v26 = 38;
    }

    else
    {
      v26 = 0;
    }

    if (v42)
    {
      v27 = 0xE100000000000000;
    }

    else
    {
      v27 = 0xE000000000000000;
    }

    MEMORY[0x1B2718AE0](v26, v27);

    MEMORY[0x1B2718AE0](v10, v11);

    v15 = v40;
    v14 = v39;
    sub_1AF441DD8();
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_1AFE4C620;
    *(v28 + 32) = v41;
    *(v28 + 40) = v25;
    v16 = sub_1AFA56CA0(v28);
    sub_1AF445BE4(v43);
    swift_setDeallocating();
    sub_1AF95B314(0, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
    swift_arrayDestroy();
    v17 = v12;
    goto LABEL_26;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v34 = sub_1AFA56CA0(v8);

  sub_1AF441DD8();
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1AFE431C0;
  *(v35 + 32) = v34;
  v36 = v35 + 32;
  v37 = sub_1AFA56CA0(v35);
  swift_setDeallocating();
  sub_1AF957840(v36, &unk_1ED723290, &type metadata for CodeEmitter.Code, MEMORY[0x1E69E62F8]);
  return v37;
}

uint64_t sub_1AF9531DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v8 = a1;
  v9 = *(v5 + 57);
  v17 = a1;
  if ((v9 & 1) == 0 || !a4)
  {

    if ((v9 & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_1AF4486E4();
  v12 = sub_1AFDFDE98();
  MEMORY[0x1B2718AE0](a3, a4);
  if ((v9 & 2) != 0)
  {
    v13 = *(v12 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 >= *(v12 + 24) >> 1)
    {
      sub_1AF420554(isUniquelyReferenced_nonNull_native, v13 + 1, 1, v12);
    }

    sub_1AF64DF78(0, 0, 1, 2109231, 0xE300000000000000);
  }

  else
  {
    MEMORY[0x1B2718AE0](2109231, 0xE300000000000000);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1AFC0D97C(v12);
    }

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  v8 = sub_1AFDFCD98();
  a2 = v15;

  v17 = v8;
  if ((v9 & 2) != 0)
  {
LABEL_14:
    if ((*a5 & 1) == 0)
    {
      MEMORY[0x1B2718AE0](v8, a2);

      v17 = 10;
    }
  }

LABEL_16:
  *a5 = 0;
  if ((sub_1AFDFD188() & 1) == 0)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
  }

  return v17;
}

uint64_t sub_1AF953428(uint64_t a1)
{
  v27 = 0;
  v28 = 0xE000000000000000;
  v26 = 0;
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 72);
    v23 = MEMORY[0x1E69E7CC0];
    do
    {
      v3 = v2[4];
      if (v3)
      {
        v4 = v2[3];
        v5 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v5 = v4 & 0xFFFFFFFFFFFFLL;
        }

        if (v5)
        {
          v6 = *(v2 - 2);
          v7 = v2[6];
          v24 = v2[5];
          v8 = v2[9];
          v21 = *(v2 - 1);
          v22 = v2[8];

          v9 = v7;
          sub_1AF487F80(v6, v21);

          swift_bridgeObjectRetain_n();

          v10 = sub_1AF9531DC(v4, v3, v22, v8, &v26);
          v12 = v11;

          MEMORY[0x1B2718AE0](v10, v12);

          if (v7)
          {
            v13 = v24;
            swift_bridgeObjectRetain_n();
            v14 = sub_1AFDFD188();

            v15 = v9;
            if ((v14 & 1) == 0)
            {
              MEMORY[0x1B2718AE0](10, 0xE100000000000000);
              v13 = v24;
              v15 = v9;
            }

            v25 = v13;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1AF420554(0, *(v23 + 2) + 1, 1, v23);
            }

            v17 = *(v23 + 2);
            v16 = *(v23 + 3);
            if (v17 >= v16 >> 1)
            {
              v23 = sub_1AF420554(v16 > 1, v17 + 1, 1, v23);
            }

            sub_1AF487074(v6, v21);

            *(v23 + 2) = v17 + 1;
            v18 = &v23[16 * v17];
            *(v18 + 4) = v25;
            *(v18 + 5) = v15;
          }

          else
          {

            sub_1AF487074(v6, v21);
          }
        }
      }

      v2 += 15;
      --v1;
    }

    while (v1);
    v19 = v27;
  }

  else
  {
    v19 = 0;
  }

  sub_1AF95B314(0, &qword_1ED726C70, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1AF488088();
  sub_1AFDFCD98();

  return v19;
}

unint64_t sub_1AF953774(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = sub_1AF7025B4(a1, *(a2 + 104));
  if ((result & 1) == 0)
  {
    result = sub_1AF7025B4(a1, *a3);
    if ((result & 1) == 0)
    {
      sub_1AF70E5AC(&v33, a1);
      v8 = *(*(a1 + 16) + 16);
      v30 = *(a1 + 16);

      if (v8)
      {
        v9 = v30 + 32;
        v10 = 32;
        do
        {
          v11 = *(a1 + 24);
          v12 = *(v11 + v10);

          sub_1AF448650(v11);
          sub_1AF442064(v12);

          LOBYTE(v11) = sub_1AF90F890(v12, 0xC000000000000008);
          sub_1AF445BE4(v12);
          if ((v11 & 1) == 0)
          {

            sub_1AF953774(v13, a2, a3, a4);
          }

          v9 += 16;
          v10 += 8;
          --v8;
        }

        while (v8);
      }

      v14 = *(a2 + 112);
      if (*(v14 + 16) && (result = sub_1AF0D3F10(a1), (v15 & 1) != 0))
      {
        v16 = *(v14 + 56) + 120 * result;
        v17 = *v16;
        v18 = *(v16 + 56);
        v19 = *(v16 + 88);
        v45 = *(v16 + 72);
        v46 = v19;
        v47 = *(v16 + 104);
        v20 = *(v16 + 24);
        v41 = *(v16 + 8);
        v42 = v20;
        v43 = *(v16 + 40);
        v44 = v18;
        v48 = v41;
        v49 = v20;
        v53 = v19;
        v54 = v47;
        v51 = v18;
        v52 = v45;
        v50 = v43;
        if (v17)
        {
          v37 = v44;
          v38 = v45;
          v39 = v46;
          v40 = v47;
          v34 = v41;
          v35 = v42;
          v21 = *(a4 + 16);
          v33 = v17;
          v36 = v43;
          sub_1AF95A838(&v33, v32);
          result = swift_isUniquelyReferenced_nonNull_native();
          *(a4 + 16) = v21;
          if ((result & 1) == 0)
          {
            result = sub_1AF426008(0, *(v21 + 16) + 1, 1, v21);
            v21 = result;
            *(a4 + 16) = result;
          }

          v23 = *(v21 + 16);
          v22 = *(v21 + 24);
          if (v23 >= v22 >> 1)
          {
            result = sub_1AF426008(v22 > 1, v23 + 1, 1, v21);
            v21 = result;
          }

          *(v21 + 16) = v23 + 1;
          v24 = v21 + 120 * v23;
          *(v24 + 32) = v17;
          v25 = v48;
          v26 = v49;
          *(v24 + 72) = v50;
          *(v24 + 56) = v26;
          *(v24 + 40) = v25;
          v27 = v51;
          v28 = v52;
          v29 = v53;
          *(v24 + 136) = v54;
          *(v24 + 120) = v29;
          *(v24 + 104) = v28;
          *(v24 + 88) = v27;
          *(a4 + 16) = v21;
        }
      }

      else
      {
        result = sub_1AFDFE518();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1AF953A58@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v22 = a3;
  v5 = sub_1AFDFC3A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1AFDFC3B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    sub_1AF95A804(0);
    sub_1AFDFC498();
    sub_1AFDFC3C8();
    (*(v11 + 8))(v14, v10);
    sub_1AFDFC398();
    v17 = v16;
    (*(v6 + 8))(v9, v5);
    if (v17)
    {
      sub_1AFDFDE08();
    }
  }

  result = sub_1AFAF888C();
  v19 = v22;
  *v22 = result;
  v19[1] = v20;
  return result;
}

uint64_t sub_1AF953C6C(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for GraphCodeGen.CFGNoop();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for GraphCodeGen.CFGInvalid();
  if (swift_dynamicCastClass())
  {
    return 0;
  }

  type metadata accessor for GraphCodeGen.CFGProcedure();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = *(v5 + 16);
    v7 = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    sub_1AF953774(v6, v2, a2, v8);
    v9 = *(v8 + 16);

    v10 = sub_1AF953428(v9);
    v12 = v11;

    v79 = v10;
    v80 = v12;
    v13 = *(v7 + 24);
    if (!v13)
    {
      return v10;
    }

    v84[0] = *a2;

    v14 = sub_1AF953C6C(v13, v84);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v85 = v14;
    v86 = v16;

    MEMORY[0x1B2718AE0](v18, v20);

    MEMORY[0x1B2718AE0](v85, v86);

    return v79;
  }

  type metadata accessor for GraphCodeGen.CFGMultiProcedure();
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v85 = 0;
    v86 = 0xE000000000000000;
    v84[0] = 0;
    v84[1] = 0xE000000000000000;
    v22 = *(v21 + 16);
    if (v22 >> 62)
    {
      v69 = v21;
      v77 = sub_1AFDFE108();
      v22 = *(v69 + 16);
      if (v22 >> 62)
      {
        v70 = *(v69 + 16);
        v71 = sub_1AFDFE108();
        v22 = v70;
        v23 = v71;
        if (v71)
        {
LABEL_11:
          v24 = 0;
          v25 = *a2;
          v75 = v22 & 0xC000000000000001;
          v76 = v22;
          do
          {
            if (v75)
            {
              v26 = MEMORY[0x1B2719C70](v24);
            }

            else
            {
              v26 = *(v22 + 8 * v24 + 32);
            }

            v83 = v25;

            v27 = v2;
            v28 = sub_1AF953C6C(v26, &v83);
            v30 = v29;
            v32 = v31;
            v34 = v33;

            v79 = v28;
            v80 = v30;
            v81 = v32;
            v82 = v34;
            if (v77 >= 2)
            {
              v28 = sub_1AFA54564(&v79);
              v36 = v35;

              v32 = sub_1AFA54A60(&v79);
              v38 = v37;

              v34 = v38;
              v30 = v36;
            }

            ++v24;
            MEMORY[0x1B2718AE0](v28, v30);
            MEMORY[0x1B2718AE0](v32, v34);

            v2 = v27;
            v22 = v76;
          }

          while (v23 != v24);
          return v85;
        }

        return 0;
      }
    }

    else
    {
      v77 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_11;
    }

    return 0;
  }

  type metadata accessor for GraphCodeGen.CFGCustomFlow();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v40 = v39;
    v41 = *(v39 + 16);
    v42 = swift_allocObject();
    v43 = MEMORY[0x1E69E7CC0];
    *(v42 + 16) = MEMORY[0x1E69E7CC0];
    sub_1AF953774(v41, v2, a2, v42);
    v44 = *(v42 + 16);

    v45 = sub_1AF953428(v44);
    v47 = v46;

    v48 = *(v40 + 24);
    v49 = *(v48 + 16);
    if (v49)
    {
      v72 = v45;
      v73 = v47;
      v74 = a2;
      v50 = (v48 + 48);
      v51 = v43;

      do
      {
        v52 = *v50;
        v78 = *(v50 - 1);

        v53 = swift_retain_n();
        v54 = sub_1AF953C6C(v53, &v85);
        v56 = v55;
        v58 = v57;
        v79 = v54;
        v80 = v59;

        MEMORY[0x1B2718AE0](v56, v58);

        v60 = v79;
        v61 = v80;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1AF420554(0, *(v43 + 2) + 1, 1, v43);
        }

        v63 = *(v43 + 2);
        v62 = *(v43 + 3);
        if (v63 >= v62 >> 1)
        {
          v43 = sub_1AF420554(v62 > 1, v63 + 1, 1, v43);
        }

        *(v43 + 2) = v63 + 1;
        v64 = &v43[16 * v63];
        *(v64 + 4) = v60;
        *(v64 + 5) = v61;
        v65 = v85;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_1AF426370(0, *(v51 + 2) + 1, 1, v51);
        }

        v67 = *(v51 + 2);
        v66 = *(v51 + 3);
        if (v67 >= v66 >> 1)
        {
          v51 = sub_1AF426370(v66 > 1, v67 + 1, 1, v51);
        }

        *(v51 + 2) = v67 + 1;
        *&v51[8 * v67 + 32] = v65;
        if (v52 < 2 || v78 >= 2)
        {
        }

        else
        {

          *v74 = v65;
        }

        v50 += 24;
        --v49;
      }

      while (v49);

      v45 = v72;
      v47 = v73;
    }

    v68 = sub_1AF959B3C(v45, v47, v43);

    return v68;
  }

  else
  {
    sub_1AFDFE218();
    MEMORY[0x1B2718AE0](0xD000000000000011, 0x80000001AFF2E910);
    type metadata accessor for GraphCodeGen.CFGNode();
    sub_1AFDFE458();
    result = sub_1AFDFE518();
    __break(1u);
  }

  return result;
}

uint64_t sub_1AF954348(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;

  sub_1AF915C68(v4, v5, &v96);
  v79 = v3;

  v77 = sub_1AF952600(v6, v7);
  v9 = v8;

  v10 = sub_1AF95558C(v9);

  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v78 = v2;
  if (v11)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_1AFC07778(0, v11, 0);
    v13 = (v10 + 112);
    do
    {
      v14 = *(v13 - 10);
      v15 = *(v13 - 8);
      v16 = *(v13 - 5);
      v17 = *(v13 - 4);
      v18 = *(v13 - 3);
      v90 = *(v13 - 16);
      v19 = *v13;
      v87 = *(v13 - 1);
      sub_1AF443EE0(v14);
      sub_1AF444224(v15);
      sub_1AF442064(v16);

      sub_1AF443F24(v14);
      sub_1AF444AF4(v15);
      v21 = *(v95 + 16);
      v20 = *(v95 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1AFC07778(v20 > 1, v21 + 1, 1);
      }

      v13 += 11;
      *(v95 + 16) = v21 + 1;
      v22 = v95 + 48 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v17;
      *(v22 + 48) = v18;
      *(v22 + 56) = v90;
      *(v22 + 64) = v87;
      *(v22 + 72) = v19;
      --v11;
    }

    while (v11);
    v75 = v95;

    v2 = v78;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v75 = MEMORY[0x1E69E7CC0];
  }

  v23 = *(v79 + 24);

  sub_1AF448650(v23);

  v24 = *(v23 + 16);
  if (v24)
  {
    v92 = v12;
    sub_1AFC07778(0, v24, 0);
    v25 = 0;
    v88 = v23;
    v91 = v92;
    v83 = *(v2 + 56);
    v81 = v99;
    v26 = (v99 + 40);
    v85 = v24;
    do
    {
      v27 = *(v23 + 8 * v25 + 32);
      sub_1AF442064(v27);
      v28 = sub_1AFDFEA08();
      MEMORY[0x1B2718AE0](v28);

      if (v25 < *(v81 + 16) && *v26)
      {
        sub_1AF4486E4();
        v29 = sub_1AFDFDE98();
        v31 = *(v29 + 32);
        v30 = *(v29 + 40);
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v32 = sub_1AF937FF8(v83, v27);
      if ((~v32 & 0xF000000000000007) != 0)
      {
        v33 = v32;
        sub_1AF445BE4(v27);
        v27 = v33;
      }

      v34 = v91;
      v36 = *(v91 + 16);
      v35 = *(v91 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1AFC07778(v35 > 1, v36 + 1, 1);
        v34 = v91;
      }

      ++v25;
      *(v34 + 16) = v36 + 1;
      v91 = v34;
      v37 = v34 + 48 * v36;
      *(v37 + 32) = v27;
      *(v37 + 40) = 0x6E69627573;
      *(v37 + 48) = 0xE500000000000000;
      *(v37 + 56) = 0;
      *(v37 + 64) = v31;
      *(v37 + 72) = v30;
      v26 += 2;
      v23 = v88;
    }

    while (v85 != v25);

    v2 = v78;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v91 = MEMORY[0x1E69E7CC0];
  }

  v86 = *(v2 + 56);
  if (v86 == 3)
  {

    v107[0] = v96;
    v38 = MEMORY[0x1E69E62F8];
    sub_1AF957840(v107, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
    v106 = v97;
    sub_1AF957840(&v106, &qword_1EB638968, &type metadata for TypeConstraint, v38);
    v105 = v98;
    sub_1AF957840(&v105, &qword_1EB638968, &type metadata for TypeConstraint, v38);
    v104 = v99;
    sub_1AF95BC54(&v104, sub_1AF445C2C);
    v103 = v100;
    sub_1AF95BC54(&v103, sub_1AF445C2C);
    v102 = v101;
    sub_1AF957840(&v102, &qword_1EB638978, &type metadata for AnyValue, v38);
    v39 = &unk_1F2504768;
  }

  else
  {
    v40 = *(v79 + 32);
    sub_1AF448650(*(v79 + 24));

    v41 = *(v40 + 16);
    if (v41)
    {
      sub_1AFC07778(0, v41, 0);
      v42 = 0;
      v39 = v12;
      v107[0] = v100;
      v80 = v100;
      v82 = v41;
      v43 = (v100 + 40);
      v84 = v40;
      do
      {
        v44 = *(v40 + 8 * v42 + 32);
        sub_1AF442064(v44);
        v45 = sub_1AFDFEA08();
        MEMORY[0x1B2718AE0](v45);

        if (v42 < *(v80 + 16) && *v43)
        {
          sub_1AF4486E4();
          v46 = sub_1AFDFDE98();
          v48 = *(v46 + 32);
          v47 = *(v46 + 40);
        }

        else
        {
          v48 = 0;
          v47 = 0;
        }

        v49 = sub_1AF937FF8(v86, v44);
        if ((~v49 & 0xF000000000000007) != 0)
        {
          v50 = v49;
          sub_1AF445BE4(v44);
          v44 = v50;
        }

        v52 = v12[2];
        v51 = v12[3];
        if (v52 >= v51 >> 1)
        {
          sub_1AFC07778(v51 > 1, v52 + 1, 1);
        }

        ++v42;
        v12[2] = v52 + 1;
        v53 = &v12[6 * v52];
        v53[4] = v44;
        v53[5] = 0x74756F627573;
        v53[6] = 0xE600000000000000;
        *(v53 + 56) = 1;
        v53[8] = v48;
        v53[9] = v47;
        v43 += 2;
        v40 = v84;
      }

      while (v82 != v42);

      v106 = v96;
      v54 = MEMORY[0x1E69E62F8];
      sub_1AF957840(&v106, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v105 = v97;
      sub_1AF957840(&v105, &qword_1EB638968, &type metadata for TypeConstraint, v54);
      v104 = v98;
      sub_1AF957840(&v104, &qword_1EB638968, &type metadata for TypeConstraint, v54);
      v103 = v99;
      sub_1AF95BC54(&v103, sub_1AF445C2C);
      sub_1AF95BC54(v107, sub_1AF445C2C);
      v102 = v101;
      sub_1AF957840(&v102, &qword_1EB638978, &type metadata for AnyValue, v54);
      v2 = v78;
    }

    else
    {

      v107[0] = v96;
      v55 = MEMORY[0x1E69E62F8];
      sub_1AF957840(v107, &qword_1EB638968, &type metadata for TypeConstraint, MEMORY[0x1E69E62F8]);
      v106 = v97;
      sub_1AF957840(&v106, &qword_1EB638968, &type metadata for TypeConstraint, v55);
      v105 = v98;
      sub_1AF957840(&v105, &qword_1EB638968, &type metadata for TypeConstraint, v55);
      v104 = v99;
      sub_1AF95BC54(&v104, sub_1AF445C2C);
      v103 = v100;
      sub_1AF95BC54(&v103, sub_1AF445C2C);
      v102 = v101;
      sub_1AF957840(&v102, &qword_1EB638978, &type metadata for AnyValue, v55);
      v39 = MEMORY[0x1E69E7CC0];
    }
  }

  sub_1AF4909A0(v91);
  sub_1AF4909A0(v39);
  v56 = a1[3];
  v57 = a1[4];
  v89 = v56;
  if (v86 == 3)
  {
    v93 = 0x6E6F6974636E7566;
    v94 = 0xE900000000000020;
  }

  else
  {

    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
    MEMORY[0x1B2718AE0](0x636974617473, 0xE600000000000000);

    v93 = 1684631414;
    v94 = 0xE400000000000000;
    MEMORY[0x1B2718AE0](32, 0xE100000000000000);
  }

  MEMORY[0x1B2718AE0](v56, v57);
  MEMORY[0x1B2718AE0](40, 0xE100000000000000);
  MEMORY[0x1B2718AE0](v93, v94);

  v58 = sub_1AF952C10(v75, v2);
  v59 = *(v58 + 16);
  if (v59)
  {
    MEMORY[0x1B2718AE0](10, 0xE100000000000000);
    v60 = 0;
    v61 = (v58 + 56);
    do
    {
      v66 = *(v61 - 1);
      v65 = *v61;
      v67 = *(v58 + 16) - 1;

      swift_bridgeObjectRetain_n();
      if (v60 != v67)
      {
        MEMORY[0x1B2718AE0](44, 0xE100000000000000);
      }

      if (v65)
      {
        MEMORY[0x1B2718AE0](v66, v65);

        MEMORY[0x1B2718AE0](539963168, 0xE400000000000000);
      }

      ++v60;
      v61 += 4;
      MEMORY[0x1B2718AE0](10, 0xE100000000000000);
      v62 = sub_1AFAF888C();
      v64 = v63;

      MEMORY[0x1B2718AE0](v62, v64);
    }

    while (v59 != v60);
  }

  MEMORY[0x1B2718AE0](41, 0xE100000000000000);

  v68 = *(v78 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v78 + 72) = v68;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v68 = sub_1AF420554(0, *(v68 + 2) + 1, 1, v68);
    *(v78 + 72) = v68;
  }

  v71 = *(v68 + 2);
  v70 = *(v68 + 3);
  if (v71 >= v70 >> 1)
  {
    v68 = sub_1AF420554(v70 > 1, v71 + 1, 1, v68);
  }

  *(v68 + 2) = v71 + 1;
  v72 = &v68[16 * v71];
  *(v72 + 4) = 0;
  *(v72 + 5) = 0xE000000000000000;
  *(v78 + 72) = v68;
  v73 = sub_1AF954ED4(v89, v57, v75, v77);

  return v73;
}