BOOL sub_1000D0B54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  sub_10005346C(a2, &v11);
  v5 = *(a3 + *(type metadata accessor for AssessmentPayload() + 60));
  v9[0] = v10[0];
  v9[1] = v4;
  v8[2] = v9;

  v6 = sub_100098534(sub_100058E30, v8, v5);
  sub_100076FB8(v10, &qword_1006CC908);
  return v6;
}

BOOL sub_1000D0C0C(uint64_t a1, uint64_t a2)
{
  v195 = a2;
  v182 = sub_1000443DC(&qword_1006CC8F0);
  v3 = sub_1000774D8(v182);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v190 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000443DC(&qword_1006CA2B0);
  v8 = sub_100077674(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v184 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000474F8();
  __chkstk_darwin(v12);
  v187 = &v174 - v13;
  sub_1000474F8();
  __chkstk_darwin(v14);
  v186 = &v174 - v15;
  v191 = type metadata accessor for Date();
  v16 = *(*(v191 - 8) + 64);
  __chkstk_darwin(v191);
  v180 = &v174 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000474F8();
  __chkstk_darwin(v18);
  v189 = &v174 - v19;
  sub_1000474F8();
  __chkstk_darwin(v20);
  v188 = &v174 - v22;
  v23 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a1 + 64);
  v27 = (v24 + 63) >> 6;
  v185 = (v21 + 32);
  v181 = (v21 + 16);
  v183 = (v21 + 8);
  v194 = a1;

  v28 = 0;
  v179 = 0;
  v29 = &type metadata for Float;
  if (!v26)
  {
LABEL_5:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        v26 = 0;
        v205 = 0u;
        v206 = 0u;
        v204 = 0u;
        goto LABEL_10;
      }

      v26 = *(v23 + 8 * v30);
      ++v28;
      if (v26)
      {
        v28 = v30;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_111:

LABEL_112:
    v36 = v192;

    v142 = Logger.logObject.getter();
    v152 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v142, v152))
    {
      goto LABEL_120;
    }

    sub_100053F78();
    v153 = sub_1000488E0();
    sub_1000D2A58(v153);
    sub_1000D2A3C(4.8751e-34);
    sub_1000D2B00();
    *(v36 + 4) = v26;
    v154 = "value mismatch for key = %{public}s";
    v155 = v152;
    goto LABEL_119;
  }

  while (1)
  {
    v30 = v28;
LABEL_9:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v30 << 6);
    v33 = (*(v194 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    sub_10005346C(*(v194 + 56) + 32 * v32, &v201);
    *&v204 = v35;
    *(&v204 + 1) = v34;
    sub_1000534C8(&v201, &v205);

LABEL_10:
    v207 = v204;
    v208[0] = v205;
    v208[1] = v206;
    v36 = *(&v204 + 1);
    if (!*(&v204 + 1))
    {

      return v36 == 0;
    }

    v37 = v207;
    sub_1000534C8(v208, v203);
    v193 = v37;
    sub_1000CAAD8();
    ODIBindingsDict.subscript.getter();
    if (!v202)
    {
      sub_100076FB8(&v201, &qword_1006CAD98);

      v147 = Logger.logObject.getter();
      static os_log_type_t.debug.getter();
      sub_1000D2AB4();
      if (sub_1000D2ACC())
      {
        sub_100053F78();
        *&v204 = sub_1000488E0();
        *v36 = 136446210;
        v148 = sub_100052F7C();

        *(v36 + 4) = v148;
        sub_1000D2A10(&_mh_execute_header, v149, v150, "value to compare for key = %{public}s doesn't exist");
        sub_1000D29DC();
        sub_1000488AC();
      }

      else
      {
      }

      v151 = v203;
      goto LABEL_123;
    }

    v38 = v29;
    sub_10007B298(&v201, &v204);
    sub_10005346C(v203, v200);
    sub_1000D2A64();
    if (swift_dynamicCast())
    {
      v39 = v198;
      sub_1000D2A9C();
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      if (!swift_dynamicCast() || *&v39 != v197)
      {
        goto LABEL_102;
      }

      goto LABEL_15;
    }

    sub_1000D2A64();
    if (swift_dynamicCast())
    {
      v40 = *&v198;
      sub_1000D2A9C();
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      if (!swift_dynamicCast() || v40 != *&v197)
      {
        goto LABEL_102;
      }

LABEL_20:

      sub_1000D2A70();
      goto LABEL_21;
    }

    sub_1000D2A64();
    if (swift_dynamicCast())
    {
      v41 = v198;
      sub_1000D2A9C();
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      if (!swift_dynamicCast() || v41 != *&v197)
      {
LABEL_102:

        v142 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1000D2AB4();
        if (!sub_1000D2ACC())
        {
          goto LABEL_120;
        }

        sub_100053F78();
        v143 = sub_1000488E0();
        sub_1000D2A58(v143);
        *v36 = 136446210;
        v144 = sub_100052F7C();

        *(v36 + 4) = v144;
        sub_1000D2A10(&_mh_execute_header, v145, v146, "value mismatch for key = %{public}s");
        sub_1000D29DC();
        goto LABEL_104;
      }

      goto LABEL_20;
    }

    v192 = v36;
    sub_1000D2A64();
    if (!swift_dynamicCast())
    {
      break;
    }

    v43 = v198;
    v42 = v199;
    sub_1000D2A9C();
    sub_1000443DC(&qword_1006CAD30);
    sub_1000D29CC();
    if (!swift_dynamicCast())
    {
      goto LABEL_111;
    }

    v44 = *&v43 == v197 && v42 == *(&v197 + 1);
    if (v44)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_15:

LABEL_16:
    sub_1000D2A70();
    v29 = v38;
LABEL_21:
    sub_100044850(v200);
    if (!v26)
    {
      goto LABEL_5;
    }
  }

  v46 = v188;
  v47 = v191;
  if (swift_dynamicCast())
  {
    v177 = *v185;
    v177(v189, v46, v47);
    v48 = *v181;
    v49 = v186;
    v50 = sub_1000D2B24();
    v51(v50);
    sub_1000D2B30();
    sub_1000D2A9C();
    sub_1000443DC(&qword_1006CAD30);
    v52 = v187;
    v53 = swift_dynamicCast();
    sub_1000485F8(v52, v53 ^ 1u, 1, v47);
    v54 = *(v182 + 48);
    v55 = v190;
    sub_100087764(v49, v190, &qword_1006CA2B0);
    v178 = v54;
    sub_100087764(v52, v55 + v54, &qword_1006CA2B0);
    v56 = v191;
    if (sub_100046EA4(v55, 1, v191) == 1)
    {
      sub_100076FB8(v186, &qword_1006CA2B0);
      v57 = v190;
      v44 = sub_100046EA4(v190 + v178, 1, v56) == 1;
      v58 = v57;
      if (!v44)
      {
        goto LABEL_126;
      }

      sub_100076FB8(v57, &qword_1006CA2B0);
      sub_100076FB8(v187, &qword_1006CA2B0);
      v59 = v191;
      v60 = v183;
    }

    else
    {
      v62 = v190;
      sub_100087764(v190, v184, &qword_1006CA2B0);
      v63 = v178;
      if (sub_100046EA4(v62 + v178, 1, v56) == 1)
      {
        sub_100076FB8(v186, &qword_1006CA2B0);
        (*v183)(v184, v56);
        v58 = v190;
LABEL_126:
        sub_100076FB8(v58, &qword_1006CC8F0);
        sub_100076FB8(v187, &qword_1006CA2B0);
        v36 = v192;
LABEL_127:

        v159 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1000D2AB4();
        if (sub_1000D2ACC())
        {
          sub_100053F78();
          v160 = sub_1000488E0();
          sub_1000D2A58(v160);
          sub_1000D2A3C(4.8751e-34);
          sub_1000D2B00();
          *(v36 + 4) = v26;
          sub_1000D2A10(&_mh_execute_header, v161, v162, "value mismatch for key = %{public}s");
          sub_1000D29DC();
          v36 = v192;
          sub_1000488AC();
        }

        else
        {
        }

        (*v183)(v189, v191);
        goto LABEL_122;
      }

      v64 = v180;
      v177(v180, (v190 + v63), v56);
      sub_1000D22E8();
      LODWORD(v178) = dispatch thunk of static Equatable.== infix(_:_:)();
      v60 = v183;
      v65 = *v183;
      (*v183)(v64, v56);
      sub_100076FB8(v186, &qword_1006CA2B0);
      v65(v184, v56);
      v59 = v56;
      sub_100076FB8(v190, &qword_1006CA2B0);
      sub_100076FB8(v187, &qword_1006CA2B0);
      v36 = v192;
      if ((v178 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    (*v60)(v189, v59);
    goto LABEL_16;
  }

  sub_1000D2A64();
  if (!swift_dynamicCast())
  {
    sub_1000D2A64();
    v66 = swift_dynamicCast();
    v36 = v192;
    if (v66)
    {
      v67 = *&v198;
      v68 = v199;
      sub_1000D2A9C();
      v178 = v67;
      v69 = v67;
      v70 = v68;
      sub_100046D38(v69, v68);
      sub_1000443DC(&qword_1006CAD30);
      sub_1000D29CC();
      v71 = swift_dynamicCast();
      v72 = v71 == 0;
      if (v71)
      {
        v73 = v197;
      }

      else
      {
        v73 = 0;
      }

      if (v72)
      {
        v74 = 0xF000000000000000;
      }

      else
      {
        v74 = *(&v197 + 1);
      }

      if (v68 >> 60 == 15)
      {
        if (v74 >> 60 != 15)
        {
          goto LABEL_131;
        }

        v75 = v178;
        sub_1000448B0(v178, v68);
        sub_10004489C(v75, v68);
        goto LABEL_101;
      }

      if (v74 >> 60 == 15)
      {
LABEL_131:
        v163 = v73;
        v164 = v74;
        sub_10004489C(v178, v70);
        v165 = v163;
        v166 = v164;
LABEL_133:
        sub_10004489C(v165, v166);
LABEL_134:
        v167 = v70;

        v168 = Logger.logObject.getter();
        static os_log_type_t.debug.getter();
        sub_1000D2AB4();
        if (sub_1000D2ACC())
        {
          sub_100053F78();
          v169 = sub_1000488E0();
          sub_1000D2A58(v169);
          sub_1000D2A3C(4.8751e-34);
          sub_1000D2B00();
          *(v36 + 4) = v26;
          sub_1000D2A10(&_mh_execute_header, v170, v171, "value mismatch for key = %{public}s");
          sub_1000D29DC();
          v36 = v192;
          sub_1000488AC();

          sub_1000448B0(v178, v167);
        }

        else
        {

          sub_1000448B0(v178, v167);
        }

        goto LABEL_122;
      }

      v76 = v68 >> 62;
      if (v74 >> 60 == 14)
      {
        v78 = 0;
        if (!v178 && v68 == 0xC000000000000000 && v74 >> 62 == 3)
        {
          v78 = 0;
          if (!v73 && v74 == 0xC000000000000000)
          {
            v73 = 0;
            v74 = 0xC000000000000000;
LABEL_90:
            sub_10004489C(v73, v74);
            v101 = sub_1000981E8();
            sub_10004489C(v101, v102);
            goto LABEL_100;
          }
        }
      }

      else
      {
        v78 = 0;
        switch(v76)
        {
          case 0uLL:
            v78 = BYTE6(v68);
            break;
          case 1uLL:
            LODWORD(v78) = HIDWORD(v178) - v178;
            if (__OFSUB__(HIDWORD(v178), v178))
            {
              goto LABEL_139;
            }

            v78 = v78;
            break;
          case 2uLL:
            v80 = *(v178 + 16);
            v79 = *(v178 + 24);
            v81 = __OFSUB__(v79, v80);
            v78 = v79 - v80;
            if (!v81)
            {
              break;
            }

LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            return result;
          case 3uLL:
            break;
          default:
            JUMPOUT(0);
        }
      }

      switch(v74 >> 62)
      {
        case 1uLL:
          LODWORD(v82) = HIDWORD(v73) - v73;
          if (__OFSUB__(HIDWORD(v73), v73))
          {
            goto LABEL_137;
          }

          v82 = v82;
LABEL_85:
          if (v78 != v82)
          {
LABEL_132:
            sub_10004489C(v73, v74);
            v165 = sub_1000981E8();
            goto LABEL_133;
          }

          if (v78 < 1)
          {
            goto LABEL_90;
          }

          break;
        case 2uLL:
          v84 = *(v73 + 16);
          v83 = *(v73 + 24);
          v81 = __OFSUB__(v83, v84);
          v82 = v83 - v84;
          if (!v81)
          {
            goto LABEL_85;
          }

          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        case 3uLL:
          if (v78)
          {
            goto LABEL_132;
          }

          goto LABEL_90;
        default:
          v82 = BYTE6(v74);
          goto LABEL_85;
      }

      switch(v76)
      {
        case 1:
          v175 = v178 >> 32;
          if (v178 >> 32 < v178)
          {
            goto LABEL_140;
          }

          v174 = v178;
          v176 = v73;
          v126 = v74;
          sub_1000D22D4(v73, v74);
          sub_1000D22D4(v176, v126);
          v127 = sub_1000981E8();
          sub_100046D38(v127, v128);
          sub_1000D22D4(v176, v126);
          sub_1000D22D4(v176, v126);
          v129 = v179;
          LODWORD(v175) = sub_1000D1FCC(v174, v175, v70 & 0x3FFFFFFFFFFFFFFFLL, v176, v126);
          v179 = v129;
          v130 = sub_1000CAAD8();
          sub_10004489C(v130, v131);
          v132 = sub_1000CAAD8();
          sub_10004489C(v132, v133);
          if (v179)
          {
            goto LABEL_144;
          }

          v134 = sub_1000CAAD8();
          sub_10004489C(v134, v135);
          v118 = sub_1000CAAD8();
LABEL_98:
          sub_10004489C(v118, v119);
          v136 = sub_1000981E8();
          sub_1000448B0(v136, v137);
          v36 = v192;
          goto LABEL_99;
        case 2:
          v103 = *(v178 + 24);
          v174 = *(v178 + 16);
          v175 = v103;
          v104 = v73;
          v177 = v74;
          sub_1000D22D4(v73, v74);
          v105 = sub_1000D2B18();
          sub_1000D22D4(v105, v106);
          v107 = sub_1000981E8();
          sub_100046D38(v107, v108);
          v109 = v177;
          sub_1000D22D4(v104, v177);
          v110 = sub_1000D2A30();
          sub_1000D22D4(v110, v111);
          v112 = v109;
          v113 = v179;
          LODWORD(v175) = sub_1000D1FCC(v174, v175, v70 & 0x3FFFFFFFFFFFFFFFLL, v104, v112);
          v179 = v113;
          sub_10004489C(v104, v177);
          v114 = sub_1000D2A30();
          sub_10004489C(v114, v115);
          if (v179)
          {
            goto LABEL_144;
          }

          v116 = sub_1000D2A30();
          sub_10004489C(v116, v117);
          v118 = sub_1000D2A30();
          goto LABEL_98;
        case 3:
          *(&v197 + 6) = 0;
          *&v197 = 0;
          v176 = v73;
          v177 = v74;
          sub_1000D22D4(v73, v74);
          v120 = sub_1000981E8();
          sub_100046D38(v120, v121);
          sub_1000D22D4(v176, v177);
          sub_1000D22D4(v176, v177);
          v122 = v179;
          sub_1000D1E50(&v197, v176, v177, v196);
          v179 = v122;
          v123 = v176;
          sub_10004489C(v176, v177);
          if (!v179)
          {
            sub_1000448B0(v178, v70);
            v124 = v123;
            v125 = v177;
            sub_10004489C(v124, v177);
            sub_10004489C(v176, v125);
            sub_1000448B0(v176, v125);
            LODWORD(v175) = v196[0];
LABEL_99:
            v138 = sub_1000981E8();
            sub_10004489C(v138, v139);
            if ((v175 & 1) == 0)
            {
              goto LABEL_134;
            }

LABEL_100:

            v140 = sub_1000981E8();
            sub_1000448B0(v140, v141);
            goto LABEL_101;
          }

          v172 = v123;
          v173 = v177;
          break;
        default:
          *&v197 = v178;
          WORD4(v197) = v68;
          BYTE10(v197) = BYTE2(v68);
          BYTE11(v197) = BYTE3(v68);
          BYTE12(v197) = BYTE4(v68);
          BYTE13(v197) = BYTE5(v68);
          v175 = &v197 + BYTE6(v68);
          v85 = v73;
          v177 = v74;
          sub_1000D22D4(v73, v74);
          v86 = sub_1000981E8();
          sub_100046D38(v86, v87);
          v88 = sub_1000D2B18();
          sub_1000D22D4(v88, v89);
          v90 = sub_1000D2B18();
          sub_1000D22D4(v90, v91);
          v92 = v179;
          sub_1000D1E50(&v197, v85, v177, v196);
          v179 = v92;
          v93 = sub_1000D2B18();
          sub_10004489C(v93, v94);
          if (!v179)
          {
            sub_1000448B0(v178, v70);
            v95 = sub_1000D2A30();
            sub_10004489C(v95, v96);
            v97 = sub_1000D2A30();
            sub_10004489C(v97, v98);
            v99 = sub_1000D2A30();
            sub_1000448B0(v99, v100);
            LODWORD(v175) = v196[0];
            v36 = v192;
            goto LABEL_99;
          }

          v172 = sub_1000D2A30();
          break;
      }

      sub_10004489C(v172, v173);
LABEL_144:

      __break(1u);
      JUMPOUT(0x1000D1E00);
    }

    v142 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    sub_1000D2AB4();
    if (!sub_1000D2ACC())
    {
      goto LABEL_120;
    }

    sub_100053F78();
    v157 = sub_1000488E0();
    sub_1000D2A58(v157);
    sub_1000D2A3C(4.8751e-34);
    sub_1000D2B00();
    *(v36 + 4) = v26;
    v154 = "value is of unknown type for key = %{public}s";
LABEL_118:
    v155 = v47;
LABEL_119:
    _os_log_impl(&_mh_execute_header, v142, v155, v154, v36, 0xCu);
    sub_1000D29DC();
    v36 = v192;
LABEL_104:
    sub_1000488AC();
    goto LABEL_121;
  }

  LODWORD(v47) = LOBYTE(v198);
  sub_1000D2A9C();
  sub_1000443DC(&qword_1006CAD30);
  sub_1000D29CC();
  v61 = swift_dynamicCast();
  v36 = v192;
  if (v61 && v197 == v47)
  {

LABEL_101:
    sub_1000D2A70();
    goto LABEL_21;
  }

  v142 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  sub_1000D2AB4();
  if (sub_1000D2ACC())
  {
    sub_100053F78();
    v156 = sub_1000488E0();
    sub_1000D2A58(v156);
    sub_1000D2A3C(4.8751e-34);
    sub_1000D2B00();
    *(v36 + 4) = v26;
    v154 = "value mismatch for key = %{public}s";
    goto LABEL_118;
  }

LABEL_120:

LABEL_121:

LABEL_122:
  sub_1000D2A70();
  v151 = v200;
LABEL_123:
  sub_100044850(v151);
  return v36 == 0;
}

uint64_t sub_1000D1E50@<X0>(char *__s1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  switch(a3 >> 62)
  {
    case 1uLL:
      v9 = a2 >> 32;
      if (a2 >> 32 < a2)
      {
        __break(1u);
      }

      v8 = a2;
      goto LABEL_9;
    case 2uLL:
      v8 = *(a2 + 16);
      v9 = *(a2 + 24);
LABEL_9:
      result = sub_1000D2098(v8, v9, a3 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v4)
      {
        break;
      }

      goto LABEL_14;
    case 3uLL:
      if (!__s1)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
        JUMPOUT(0x1000D1FBCLL);
      }

      result = 1;
      break;
    default:
      __s2 = a2;
      v11 = a3;
      v12 = BYTE2(a3);
      v13 = BYTE3(a3);
      v14 = BYTE4(a3);
      v15 = BYTE5(a3);
      if (!__s1)
      {
        goto LABEL_13;
      }

      result = memcmp(__s1, &__s2, BYTE6(a3)) == 0;
      break;
  }

  *a4 = result & 1;
  return result;
}

uint64_t sub_1000D1FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_1000D1E50(v11, a4, a5, &v13);
  sub_1000448B0(a4, a5);
  if (!v5)
  {
    v12 = v13;
  }

  return v12 & 1;
}

uint64_t sub_1000D2098(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = __DataStorage._length.getter();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

void *sub_1000D2150(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a2 = sub_1000D24C8(v12, v8, a3, v6);

      return a2;
    }
  }

  __chkstk_darwin(a1);
  v9 = &v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_10009F228(0, v8, v9);
  v10 = sub_1000D2340(v9, v8, a3, v6);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a2;
}

uint64_t sub_1000D22D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100046D38(a1, a2);
  }

  return a1;
}

unint64_t sub_1000D22E8()
{
  result = qword_1006CC8F8;
  if (!qword_1006CC8F8)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC8F8);
  }

  return result;
}

uint64_t sub_1000D2340(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
{
  v22 = 0;
  v21 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(v26 + 56);
    v16 = (*(v26 + 48) + 16 * v14);
    v17 = v16[1];
    v25[0] = *v16;
    v25[1] = v17;
    sub_10005346C(v15 + 32 * v14, v24);

    v18 = a4(v25, v24);
    sub_100044850(v24);

    if (v4)
    {
      return result;
    }

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1000D278C(v21, a2, v22, v26);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1000D278C(v21, a2, v22, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1000D24C8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t *))
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

    v8 = sub_1000D2340(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000D2558(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000443DC(&qword_1006CC910);
  result = static _DictionaryStorage.allocate(capacity:)();
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
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
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
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D278C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1000443DC(&qword_1006CC900);
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v32 = v4;
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
    sub_10005346C(v17 + 32 * v16, v34);
    sub_1000534C8(v34, v33);
    v21 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1000534C8(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000D29DC()
{
  sub_100044850(v0);
}

void sub_1000D2A10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000D2A3C(float a1)
{
  *v2 = a1;
  v5 = *(v1 + 152);
  v4 = *(v1 + 160);

  return sub_100052F7C();
}

uint64_t sub_1000D2A70()
{
  sub_100044850((v0 - 224));

  return sub_100044850((v0 - 256));
}

uint64_t sub_1000D2A9C()
{

  return sub_1000446C4(v1 - 224, v0 + 264);
}

uint64_t sub_1000D2AB4()
{
}

BOOL sub_1000D2ACC()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000D2AE4()
{

  return sub_100046EA4(v1, 1, v0);
}

uint64_t sub_1000D2B00()
{
  v2 = *(v0 + 152);
}

uint64_t sub_1000D2B18()
{
  result = v1;
  v3 = *(v0 + 24);
  return result;
}

uint64_t sub_1000D2B30()
{

  return sub_1000485F8(v0, 0, 1, v1);
}

id sub_1000D2B50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100062458(a1, a2, a3, 0);
}

uint64_t sub_1000D2B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[38] = a6;
  v7[39] = v6;
  v7[36] = a4;
  v7[37] = a5;
  v7[34] = a2;
  v7[35] = a3;
  v7[33] = a1;
  v8 = type metadata accessor for URLRequest();
  v7[40] = v8;
  sub_1000474C0(v8);
  v7[41] = v9;
  v11 = *(v10 + 64);
  v7[42] = sub_100065948();
  v12 = type metadata accessor for RavioliRequestFactory();
  v7[43] = v12;
  sub_100077674(v12);
  v14 = *(v13 + 64);
  v7[44] = sub_100065948();
  v15 = sub_1000443DC(&qword_1006C9C48);
  sub_100077674(v15);
  v17 = *(v16 + 64);
  v7[45] = sub_100065948();
  v18 = type metadata accessor for URL();
  v7[46] = v18;
  sub_1000474C0(v18);
  v7[47] = v19;
  v21 = *(v20 + 64);
  v7[48] = sub_100065948();
  v22 = type metadata accessor for Logger();
  v7[49] = v22;
  sub_1000474C0(v22);
  v7[50] = v23;
  v25 = *(v24 + 64);
  v7[51] = sub_100065948();
  sub_1000658F8();

  return _swift_task_switch(v26, v27, v28);
}

uint64_t sub_1000D2D00()
{
  v1 = [*(v0 + 272) configuration];
  v2 = [v1 _appleIDContext];

  if (v2)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *(v0 + 408);
    sub_1000D5458();
    Logger.init(subsystem:category:)();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 400);
    v7 = *(v0 + 408);
    v9 = *(v0 + 392);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "_appleIDContext not set on URL Session - ravioli request likely to fail", v10, 2u);
      sub_1000488AC();
    }

    (*(v8 + 8))(v7, v9);
  }

  v11 = *(v0 + 312);
  v12 = *(v0 + 272);
  v13 = *(v11 + 48);
  v14 = *(v11 + 52);
  *(v0 + 416) = swift_allocObject();
  sub_1000D4FFC(v12);
  if (qword_1006C9818 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v15 = static ASDConfigurationManager.shared;
  sub_1000B05E4((v0 + 112));

  if (*(v0 + 152) == 1)
  {
    goto LABEL_20;
  }

  *(v0 + 240) = *(v0 + 192);
  sub_1000961E8(v0 + 240, v0 + 248);
  sub_10007C9CC(v0 + 112, &qword_1006CAC08);
  v16 = *(v0 + 240);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = *(v0 + 264);
  v18 = UUID.uuidString.getter();
  sub_1000555DC(v18, v19, v16);
  v21 = v20;
  sub_10007C9CC(v0 + 240, &qword_1006CB6F0);

  if (!v21)
  {
    goto LABEL_20;
  }

  v23 = *(v0 + 360);
  v22 = *(v0 + 368);
  URL.init(string:)();

  if (sub_100046EA4(v23, 1, v22) == 1)
  {
    sub_10007C9CC(*(v0 + 360), &qword_1006C9C48);
LABEL_20:
    type metadata accessor for RavioliFetcher.FetchError(0);
    sub_1000D53F4();
    sub_1000D51CC(v54, v55);
    sub_1000D5488();
    v57 = v56;
    v58 = type metadata accessor for HTTPStatusCode();
    sub_1000485F8(v57, 7, 7, v58);
    swift_willThrow();

    sub_1000D54F4();

    sub_10006574C();

    return v59();
  }

  (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 360), *(v0 + 368));
  v24 = static ASDConfigurationManager.shared;
  sub_1000B05E4((v0 + 16));

  if (*(v0 + 56) == 1)
  {
    goto LABEL_19;
  }

  *(v0 + 232) = *(v0 + 96);
  sub_1000961E8(v0 + 232, v0 + 256);
  sub_10007C9CC(v0 + 16, &qword_1006CAC08);
  v25 = *(v0 + 232);
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = *(v0 + 264);
  v27 = UUID.uuidString.getter();
  v29 = sub_1000555DC(v27, v28, v25);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  sub_10007C9CC(v0 + 232, &qword_1006CB6F0);

  if (!v31)
  {
LABEL_19:
    (*(*(v0 + 376) + 8))(*(v0 + 384), *(v0 + 368));
    goto LABEL_20;
  }

  v37 = *(v0 + 344);
  v36 = *(v0 + 352);
  v39 = *(v0 + 296);
  v38 = *(v0 + 304);
  (*(*(v0 + 376) + 16))(v36, *(v0 + 384), *(v0 + 368));
  v40 = type metadata accessor for DeviceInformation();
  v41 = static DeviceInformation.shared.getter();
  v42 = (v36 + v37[5]);
  v42[3] = v40;
  v42[4] = &protocol witness table for DeviceInformation;
  *v42 = v41;
  v43 = type metadata accessor for ODIiCloudAccountManager();
  v44 = static ODIiCloudAccountManager.shared.getter();
  v45 = (v36 + v37[6]);
  v45[3] = v43;
  v45[4] = &protocol witness table for ODIiCloudAccountManager;
  *v45 = v44;
  v46 = (v36 + v37[7]);
  *v46 = v39;
  v46[1] = v38;
  v47 = v36 + v37[8];
  *v47 = v29;
  *(v47 + 8) = v31;
  *(v47 + 16) = v33;
  *(v47 + 24) = v35 & 1;
  *(v47 + 25) = BYTE1(v35);
  *(v47 + 26) = BYTE2(v35);
  *(v47 + 27) = HIBYTE(v35);

  v48 = swift_task_alloc();
  *(v0 + 424) = v48;
  *v48 = v0;
  v48[1] = sub_1000D3244;
  v49 = *(v0 + 352);
  v50 = *(v0 + 336);
  v51 = *(v0 + 280);
  v52 = *(v0 + 288);

  return sub_10007E2A0(v50, v51, v52);
}

uint64_t sub_1000D3244()
{
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 424);
  v7 = *v1;
  sub_1000655F4();
  *v8 = v7;
  v3[54] = v0;

  if (v0)
  {
    sub_1000658F8();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v3[55] = v12;
    *v12 = v7;
    v12[1] = sub_1000D33A4;
    v13 = v3[52];
    v14 = v3[42];

    return sub_1000D3764(v14, 1);
  }
}

uint64_t sub_1000D33A4(uint64_t a1, uint64_t a2)
{
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v10 = *(v9 + 440);
  v11 = *v3;
  sub_1000655F4();
  *v12 = v11;
  v7[56] = v2;

  if (!v2)
  {
    v7[57] = a2;
    v7[58] = a1;
  }

  sub_1000658F8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000D34C0()
{
  v2 = v0[51];
  v1 = v0[52];
  v4 = v0[47];
  v3 = v0[48];
  v6 = v0[45];
  v5 = v0[46];
  v7 = v0[44];
  v9 = v0[41];
  v8 = v0[42];
  v10 = v0[40];

  (*(v9 + 8))(v8, v10);
  (*(v4 + 8))(v3, v5);
  sub_1000D540C();
  sub_1000D53A0(v7, v11);

  v12 = v0[1];
  v14 = v0[57];
  v13 = v0[58];

  return v12(v13, v14);
}

uint64_t sub_1000D35C0()
{
  v1 = v0[52];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[44];

  v6 = sub_1000D554C();
  v7(v6);
  sub_1000D540C();
  sub_1000D53A0(v5, v8);
  v9 = v0[54];
  sub_1000D54F4();

  sub_10006574C();

  return v10();
}

uint64_t sub_1000D367C()
{
  sub_10006ECA0();
  v1 = v0[52];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v8 = v0[40];

  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v2, v4);
  sub_1000D540C();
  sub_1000D53A0(v5, v9);
  v10 = v0[56];
  sub_1000D54F4();

  sub_10006574C();

  return v11();
}

uint64_t sub_1000D3764(uint64_t a1, char a2)
{
  *(v3 + 224) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for HTTPStatusCode();
  *(v3 + 32) = v4;
  sub_1000474C0(v4);
  *(v3 + 40) = v5;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  v8 = sub_1000443DC(&qword_1006C9C48);
  sub_100077674(v8);
  v10 = *(v9 + 64);
  *(v3 + 80) = sub_100065948();
  v11 = type metadata accessor for URLRequest();
  *(v3 + 88) = v11;
  sub_1000474C0(v11);
  *(v3 + 96) = v12;
  v14 = *(v13 + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  sub_1000658F8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_1000D38D0()
{
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[2];
  v6 = v0[3];
  v0[16] = OBJC_IVAR____TtC3asd14RavioliFetcher_logger;
  v51 = *(v4 + 16);
  v51(v2, v5, v3);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  v9 = sub_1000D5578(v8);
  v10 = v0[15];
  if (v9)
  {
    v11 = v0[10];
    sub_100053F78();
    v12 = sub_1000BBA6C();
    *v1 = 136315138;
    URLRequest.url.getter();
    v13 = type metadata accessor for URL();
    v14 = sub_100046EA4(v11, 1, v13);
    v15 = v0[10];
    if (v14 == 1)
    {
      sub_10007C9CC(v0[10], &qword_1006C9C48);
    }

    else
    {
      v19 = v0[10];
      URL.absoluteString.getter();
      (*(*(v13 - 8) + 8))(v15, v13);
    }

    (*(v0[12] + 8))(v0[15], v0[11]);
    v20 = sub_100052F7C();

    *(v1 + 4) = v20;
    sub_100097C54(&_mh_execute_header, v21, v22, "Requesting ravioli: %s");
    sub_100044850(v12);
    sub_1000488AC();
    sub_10007756C();
  }

  else
  {
    v16 = v0[11];
    v17 = v0[12];

    v18 = *(v17 + 8);
    v1 = v17 + 8;
    v18(v10, v16);
  }

  v51(v0[14], v0[2], v0[11]);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = sub_1000D5578(v24);
  v26 = v0[14];
  v27 = v0[11];
  v28 = v0[12];
  if (v25)
  {
    sub_100053F78();
    v52 = sub_1000BBA6C();
    *v1 = 136315138;
    URLRequest.debugDescription.getter();
    v29 = sub_1000D5594();
    v28(v29);
    v30 = sub_100052F7C();

    *(v1 + 4) = v30;
    sub_100097C54(&_mh_execute_header, v31, v32, "Request: %s");
    sub_100044850(v52);
    sub_1000488AC();
    sub_10007756C();
  }

  else
  {

    v33 = sub_1000D5594();
    v28(v33);
  }

  v51(v0[13], v0[2], v0[11]);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = sub_1000D5578(v35);
  v37 = v0[13];
  if (v36)
  {
    sub_100053F78();
    v38 = sub_1000BBA6C();
    *v1 = 136315138;
    if (URLRequest.allHTTPHeaderFields.getter())
    {
      Dictionary.debugDescription.getter();
    }

    v41 = v0[12] + 8;
    (v28)(v0[13], v0[11]);
    v42 = sub_100052F7C();

    *(v1 + 4) = v42;
    sub_100097C54(&_mh_execute_header, v43, v44, "Request: %s");
    sub_100044850(v38);
    sub_1000488AC();
    sub_10007756C();
  }

  else
  {
    v39 = v0[11];
    v40 = v0[12];

    (v28)(v37, v39);
  }

  v45 = *(v0[3] + 16);
  v46 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v47 = swift_task_alloc();
  v0[17] = v47;
  *v47 = v0;
  v47[1] = sub_1000D3D3C;
  v48 = v0[2];
  sub_1000D555C();

  return NSURLSession.data(for:delegate:)();
}

uint64_t sub_1000D3D3C()
{
  sub_10006ECA0();
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 136);
  *v4 = *v1;
  v3[18] = v7;
  v3[19] = v8;
  v3[20] = v9;

  if (v0)
  {
    v11 = v3[14];
    v10 = v3[15];
    v12 = v3[13];
    v14 = v3[9];
    v13 = v3[10];
    v16 = v3[7];
    v15 = v3[8];
    v17 = v3[6];

    sub_10006574C();
    sub_1000980C8();

    __asm { BRAA            X1, X16 }
  }

  sub_1000658F8();
  sub_1000980C8();

  return _swift_task_switch(v20, v21, v22);
}

void sub_1000D3EC0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 24);
  v3 = *(v0 + 160);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = sub_100053F78();
    v115 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = [v6 debugDescription];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_100052F7C();

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Response: %s", v7, 0xCu);
    sub_100044850(v115);
    sub_10007756C();
    sub_1000488AC();
  }

  v10 = *(v0 + 160);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v12 = *(v0 + 160);
  if (v11)
  {
    v13 = v11;
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 32);
    v17 = *(v0 + 40);
    v18 = v12;
    sub_1000A93F4([v13 statusCode], v14);
    v19 = *(v17 + 16);
    v19(v15, v14, v16);
    v20 = (*(v17 + 88))(v15, v16);
    if (v20 == enum case for HTTPStatusCode.httpSuccess(_:))
    {
      v21 = *(v0 + 24) + *(v0 + 128);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = *(v0 + 160);
        v25 = swift_slowAlloc();
        *v25 = 0;
        v114 = v22;
        _os_log_impl(&_mh_execute_header, v22, v23, "Requesting ravioli - data received", v25, 2u);
LABEL_7:
        sub_1000488AC();

        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v20 == enum case for HTTPStatusCode.httpUnauthorized(_:))
    {
      if (*(v0 + 224) == 1)
      {
        v34 = *(v0 + 24) + *(v0 + 128);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Requesting ravioli - Authorisation error will renew and retry only one retry will be attempted", v37, 2u);
          sub_1000488AC();
        }

        type metadata accessor for ODIiCloudAccountManager();
        *(v0 + 168) = static ODIiCloudAccountManager.shared.getter();
        v38 = *(&async function pointer to dispatch thunk of ODIiCloudAccountManager.renewToken() + 1);
        v39 = swift_task_alloc();
        *(v0 + 176) = v39;
        *v39 = v0;
        v39[1] = sub_1000D481C;
        sub_1000D555C();

        __asm { BR              X0 }
      }

      v62 = *(v0 + 24);
      v19(*(v0 + 56), *(v0 + 72), *(v0 + 32));
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.error.getter();
      v65 = os_log_type_enabled(v63, v64);
      v66 = *(v0 + 56);
      v68 = *(v0 + 32);
      v67 = *(v0 + 40);
      if (v65)
      {
        sub_100053F78();
        v116 = sub_1000BBA6C();
        *v64 = 136315138;
        sub_1000D5440();
        sub_1000D51CC(v69, v70);
        dispatch thunk of CustomStringConvertible.description.getter();
        v71 = sub_1000D5514();
        v72(v71);
        v73 = sub_100052F7C();

        *(v64 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v63, v64, "Authorisation error not retrying or have already retried: %s", v64, 0xCu);
        sub_100044850(v116);
        sub_1000488AC();
        sub_10007756C();
      }

      else
      {

        v87 = sub_1000D5514();
        v88(v87);
      }

      v89 = *(v0 + 152);
      v90 = *(v0 + 160);
      v91 = *(v0 + 144);
      v92 = *(v0 + 72);
      v93 = *(v0 + 32);
      type metadata accessor for RavioliFetcher.FetchError(0);
      sub_1000D53F4();
      sub_1000D51CC(v94, v95);
      sub_1000D5488();
      v19(v96, v92, v93);
      sub_1000D55C8();
      sub_1000448B0(v91, v89);

      v113(v92, v93);
    }

    else
    {
      if (v20 == enum case for HTTPStatusCode.httpAuthKitReprovision(_:) || v20 == enum case for HTTPStatusCode.httpAuthKitResync(_:))
      {
        v55 = *(v0 + 128);
        v56 = *(v0 + 24);
        v57 = *(v0 + 160);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.fault.getter();
        v60 = os_log_type_enabled(v58, v59);
        v24 = *(v0 + 160);
        if (v60)
        {
          v61 = sub_100053F78();
          *v61 = 134217984;
          *(v61 + 4) = [v13 statusCode];

          v114 = v58;
          _os_log_impl(&_mh_execute_header, v58, v59, "Expected %ld to be handled by the AKAppleIDSession", v61, 0xCu);
          goto LABEL_7;
        }

LABEL_20:
        v114 = *(v0 + 160);
LABEL_21:
        buf = *(v0 + 144);
        v111 = *(v0 + 152);
        v42 = *(v0 + 160);
        v44 = *(v0 + 112);
        v43 = *(v0 + 120);
        v45 = *(v0 + 104);
        v47 = *(v0 + 72);
        v46 = *(v0 + 80);
        v48 = *(v0 + 64);
        v49 = *(v0 + 40);
        v106 = *(v0 + 56);
        v107 = *(v0 + 48);
        v50 = *(v0 + 32);

        (*(v49 + 8))(v47, v50);

        v51 = *(v0 + 8);
        sub_1000D555C();

        __asm { BRAA            X3, X16 }
      }

      v74 = *(v0 + 128);
      v75 = *(v0 + 24);
      v19(*(v0 + 48), *(v0 + 72), *(v0 + 32));
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();
      v78 = os_log_type_enabled(v76, v77);
      v79 = *(v0 + 40);
      v80 = *(v0 + 48);
      v81 = *(v0 + 32);
      if (v78)
      {
        bufa = sub_100053F78();
        v117 = swift_slowAlloc();
        *bufa = 136315138;
        sub_1000D5440();
        sub_1000D51CC(v82, v83);
        dispatch thunk of CustomStringConvertible.description.getter();
        v84 = sub_1000D5530();
        v85(v84);
        v86 = sub_100052F7C();

        *(bufa + 4) = v86;
        _os_log_impl(&_mh_execute_header, v76, v77, "FetchRavioli Failed - Response: %s", bufa, 0xCu);
        sub_100044850(v117);
        sub_1000488AC();
        sub_1000488AC();
      }

      else
      {

        v97 = sub_1000D5530();
        v98(v97);
      }

      v99 = *(v0 + 160);
      v100 = *(v0 + 144);
      v101 = *(v0 + 72);
      bufb = *(v0 + 152);
      v112 = *(v0 + 64);
      v102 = *(v0 + 32);
      type metadata accessor for RavioliFetcher.FetchError(0);
      sub_1000D53F4();
      sub_1000D51CC(v103, v104);
      sub_1000D5488();
      v19(v105, v101, v102);
      sub_1000D55C8();
      sub_1000448B0(v100, bufb);

      v113(v101, v102);
      v113(v112, v102);
    }
  }

  else
  {
    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v28 = *(v0 + 32);
    type metadata accessor for RavioliFetcher.FetchError(0);
    sub_1000D53F4();
    sub_1000D51CC(v29, v30);
    sub_1000D5488();
    sub_1000485F8(v31, 6, 7, v28);
    swift_willThrow();

    sub_1000448B0(v27, v26);
  }

  sub_1000D54D0();

  sub_10006574C();
  sub_1000D555C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000D481C()
{
  sub_1000657F8();
  v3 = v2;
  sub_10006564C();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *(v5 + 168);
  v8 = *v1;
  sub_1000655F4();
  *v9 = v8;
  v3[23] = v0;

  if (v0)
  {
    sub_1000658F8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = swift_task_alloc();
    v3[24] = v13;
    *v13 = v8;
    v13[1] = sub_1000D49A0;
    v14 = v3[3];
    v15 = v3[2];

    return sub_1000D3764(v15, 0);
  }
}

uint64_t sub_1000D49A0(uint64_t a1, uint64_t a2)
{
  sub_1000657F8();
  v7 = v6;
  sub_10006564C();
  *v8 = v7;
  v10 = *(v9 + 192);
  v11 = *v3;
  sub_1000655F4();
  *v12 = v11;
  v7[25] = v2;

  if (!v2)
  {
    v7[26] = a2;
    v7[27] = a1;
  }

  sub_1000658F8();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_1000D4ABC()
{
  sub_1000448B0(v0[18], v0[19]);
  v14 = v0[26];
  v15 = v0[27];
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  v12 = v0[7];
  v13 = v0[6];
  v9 = v0[4];

  (*(v8 + 8))(v6, v9);

  v10 = v0[1];

  return v10(v15, v14);
}

void sub_1000D4BCC()
{
  sub_10006ECA0();
  sub_1000D55A8();

  v2 = sub_1000D554C();
  v3(v2);
  v4 = *(v1 + 184);
  sub_1000D54D0();

  sub_10006574C();
  sub_1000980C8();

  __asm { BRAA            X1, X16 }
}

void sub_1000D4C88()
{
  sub_10006ECA0();
  sub_1000D55A8();

  v2 = sub_1000D554C();
  v3(v2);
  v4 = *(v1 + 200);
  sub_1000D54D0();

  sub_10006574C();
  sub_1000980C8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000D4D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPStatusCode();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10004EAF4();
  v9 = v8 - v7;
  Error = type metadata accessor for RavioliFetcher.FetchError(0);
  v11 = sub_100077674(Error);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10004EAF4();
  v16 = v15 - v14;
  v17 = sub_1000443DC(&qword_1006CCA90);
  v18 = sub_100077674(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10004EAF4();
  v23 = v22 - v21;
  v25 = *(v24 + 56);
  sub_1000D533C(a1, v22 - v21);
  sub_1000D533C(a2, v23 + v25);
  switch(sub_100046EA4(v23, 7, v4))
  {
    case 1u:
      if (sub_1000D5424() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_1000D5424() != 2)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 3u:
      if (sub_1000D5424() != 3)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 4u:
      if (sub_1000D5424() == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 5u:
      if (sub_1000D5424() != 5)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 6u:
      if (sub_1000D5424() != 6)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    case 7u:
      if (sub_1000D5424() != 7)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_1000D54A8();
      v26 = 1;
      break;
    default:
      sub_1000D533C(v23, v16);
      if (sub_1000D5424())
      {
        (*(v5 + 8))(v16, v4);
LABEL_7:
        sub_10007C9CC(v23, &qword_1006CCA90);
        v26 = 0;
      }

      else
      {
        (*(v5 + 32))(v9, v23 + v25, v4);
        v26 = static HTTPStatusCode.== infix(_:_:)();
        v28 = *(v5 + 8);
        v28(v9, v4);
        v28(v16, v4);
        sub_1000D54A8();
      }

      break;
  }

  return v26 & 1;
}

uint64_t sub_1000D4FFC(uint64_t a1)
{
  sub_1000D5458();
  Logger.init(subsystem:category:)();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1000D504C()
{
  v1 = OBJC_IVAR____TtC3asd14RavioliFetcher_logger;
  v2 = type metadata accessor for Logger();
  sub_10007CB0C(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_1000D510C()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1000D51CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D5228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HTTPStatusCode();
  v5 = sub_100046EA4(a1, a2, v4);
  if (v5 >= 8)
  {
    return v5 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D5284(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 7);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for HTTPStatusCode();

  return sub_1000485F8(a1, v5, a3, v6);
}

uint64_t sub_1000D52E4()
{
  v0 = type metadata accessor for HTTPStatusCode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1000D533C(uint64_t a1, uint64_t a2)
{
  Error = type metadata accessor for RavioliFetcher.FetchError(0);
  (*(*(Error - 8) + 16))(a2, a1, Error);
  return a2;
}

uint64_t sub_1000D53A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10007CB0C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000D5424()
{

  return sub_100046EA4(v0 + v2, 7, v1);
}

uint64_t sub_1000D5488()
{

  return swift_allocError();
}

uint64_t sub_1000D54A8()
{

  return sub_1000D53A0(v0, type metadata accessor for RavioliFetcher.FetchError);
}

uint64_t sub_1000D54D0()
{
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[9];
  v5 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v9 = v0[6];
}

uint64_t sub_1000D54F4()
{
  v2 = v0[51];
  v3 = v0[48];
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[42];
}

uint64_t sub_1000D5530()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

BOOL sub_1000D5578(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000D55A8()
{
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[18];
  v5 = v0[9];
  v6 = v0[4];
  v7 = v0[5];

  return sub_1000448B0(v4, v2);
}

uint64_t sub_1000D55C8()
{
  sub_1000485F8(v0, 0, 7, v1);

  return swift_willThrow();
}

uint64_t sub_1000D5600()
{
  sub_1000657D4();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v5 = type metadata accessor for ODIBindingsDict();
  v1[11] = v5;
  sub_1000474C0(v5);
  v1[12] = v6;
  v8 = *(v7 + 64);
  v1[13] = sub_100065948();
  v9 = type metadata accessor for ODIClientGUID();
  v1[14] = v9;
  sub_1000474C0(v9);
  v1[15] = v10;
  v12 = *(v11 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v13 = type metadata accessor for DsidType();
  v1[18] = v13;
  sub_1000474C0(v13);
  v1[19] = v14;
  v16 = *(v15 + 64);
  v1[20] = sub_100065948();
  v17 = type metadata accessor for DIPClientGUIDFactory();
  v1[21] = v17;
  sub_1000474C0(v17);
  v1[22] = v18;
  v20 = *(v19 + 64);
  v1[23] = sub_100065948();
  sub_1000658F8();

  return _swift_task_switch(v21, v22, v23);
}

uint64_t sub_1000D57A4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v4 = v0[7];
  v5 = type metadata accessor for ProfileContent();
  (*(v2 + 16))(v1, v4 + *(v5 + 36), v3);
  v6 = async function pointer to DIPClientGUIDFactory.init(primaryDSIDBehavior:)[1];
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_1000D587C;
  v8 = v0[23];
  v9 = v0[20];

  return DIPClientGUIDFactory.init(primaryDSIDBehavior:)(v8, v9);
}

uint64_t sub_1000D587C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_1000773D4();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D5978()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  DIPClientGUIDFactory.createNewAssessmentGUID(serverTime:)();
  v7 = v1;
  v8 = *(v0 + 184);
  if (v7)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
LABEL_7:
    v30 = *(v0 + 184);
    v31 = *(v0 + 160);
    v33 = *(v0 + 128);
    v32 = *(v0 + 136);
    v34 = *(v0 + 104);

    sub_10006574C();
LABEL_8:

    return v35();
  }

  v10 = *(v0 + 128);
  v9 = *(v0 + 136);
  *(v0 + 208) = ODIClientGUID.asString.getter();
  *(v0 + 216) = v11;
  DIPClientGUIDFactory.createNewTrainingGUID(serverTime:)();
  v12 = *(v0 + 128);
  *(v0 + 224) = ODIClientGUID.asString.getter();
  *(v0 + 232) = v13;
  type metadata accessor for DIPODNHelper();
  *(v0 + 240) = static DIPODNHelper.convertAssessmentGUIDToData(_:)();
  *(v0 + 248) = v14;
  v15 = *(v0 + 80);
  if (v14 >> 60 == 15)
  {

    v16 = v15 + *(type metadata accessor for AssessmentPayloadCacher() + 28);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (sub_10009D6D8(v18))
    {
      sub_100097B40();
      *swift_slowAlloc() = 0;
      sub_10007FD74(&_mh_execute_header, v19, v20, "unable to convert assessment nonce to data");
      sub_100097AB8();
    }

    v21 = *(v0 + 176);
    v90 = *(v0 + 184);
    v22 = *(v0 + 168);
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v26 = *(v0 + 112);
    v25 = *(v0 + 120);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    sub_1000D9688(v27, 1);
    swift_willThrow();
    v28 = *(v25 + 8);
    v29 = sub_1000D959C();
    v28(v29);
    (v28)(v23, v26);
    (*(v21 + 8))(v90, v22);
    goto LABEL_7;
  }

  v37 = *(v0 + 72);
  *(v0 + 304) = *(type metadata accessor for AssessmentPayloadCacher() + 28);

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();
  v40 = sub_10009D6D8(v39);
  v41 = *(v0 + 72);
  if (v40)
  {
    v42 = swift_slowAlloc();
    *v42 = 134349056;
    *(v42 + 4) = *(v41 + 16);

    _os_log_impl(&_mh_execute_header, v38, v15, "Trying to pregenerate %{public}ld assessments", v42, 0xCu);
    sub_100097AB8();
  }

  else
  {
    v43 = *(v0 + 72);
  }

  v44 = *(v0 + 72);
  if (*(v44 + 16) >= 2uLL)
  {
    v45 = *(v0 + 56);
    sub_100080C18();
    v44 = *(v0 + 72);
  }

  v93 = v44;

  sub_1000D8C70();
  *(v0 + 256) = v93;
  v46 = *(v93 + 16);
  *(v0 + 264) = v46;
  if (!v46)
  {
    v83 = *(v0 + 240);
    v85 = *(v0 + 248);
    v63 = *(v0 + 232);
    v64 = *(v0 + 216);
    v65 = *(v0 + 176);
    v66 = *(v0 + 184);
    v87 = *(v0 + 168);
    v89 = *(v0 + 160);
    v67 = *(v0 + 128);
    v68 = *(v0 + 136);
    v69 = *(v0 + 112);
    v70 = *(v0 + 120);
    v92 = *(v0 + 104);

    sub_10004489C(v83, v85);
    v71 = *(v70 + 8);
    v71(v67, v69);
    v71(v68, v69);
    (*(v65 + 8))(v66, v87);

    sub_10006574C();
    goto LABEL_8;
  }

  v47 = *(v0 + 96);
  v48 = *(v0 + 64);
  result = type metadata accessor for ODIDeviceInfo();
  *(v0 + 272) = result;
  v49 = *(v47 + 80);
  *(v0 + 308) = v49;
  *(v0 + 280) = 0;
  if (!*(v93 + 16))
  {
    __break(1u);
    return result;
  }

  (*(v47 + 16))(*(v0 + 104), v93 + ((v49 + 32) & ~v49), *(v0 + 88));
  v50 = static ODIDeviceInfo.isDeviceLocked()();
  if (v48 == 1 && (v50 & 1) != 0)
  {
    sub_1000D9658();

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      sub_100097B40();
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "PGA mismatched DataProtectionClass", v53, 2u);
      sub_100097AB8();
    }

    v54 = *(v0 + 240);
    v55 = *(v0 + 176);
    v88 = *(v0 + 168);
    v91 = *(v0 + 184);
    v86 = *(v0 + 136);
    v82 = *(v0 + 248);
    v84 = *(v0 + 128);
    v57 = *(v0 + 112);
    v56 = *(v0 + 120);
    v59 = *(v0 + 96);
    v58 = *(v0 + 104);
    v60 = *(v0 + 88);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    *v61 = 0;
    swift_willThrow();
    sub_10004489C(v54, v82);
    (*(v59 + 8))(v58, v60);
    v62 = *(v56 + 8);
    v62(v84, v57);
    v62(v86, v57);
    (*(v55 + 8))(v91, v88);
    goto LABEL_7;
  }

  v72 = *(v0 + 104);
  sub_1000D95F8();
  v73 = swift_task_alloc();
  *(v0 + 288) = v73;
  *v73 = v0;
  v74 = sub_1000D94FC(v73);

  return sub_1000D6CA8(v74, v75, v76, v77, v78, v79, v80, v81);
}

uint64_t sub_1000D6030()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = *(v5 + 288);
  v7 = *v1;
  sub_1000773D4();
  *v8 = v7;
  v3[37] = v0;

  if (v0)
  {
    v9 = v3[32];
    v10 = v3[29];
    v11 = v3[27];
  }

  sub_1000658F8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000D6150()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 280) + 1;
  result = (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  if (v2 == v1)
  {
    v4 = *(v0 + 256);
    v6 = *(v0 + 232);
    v5 = *(v0 + 240);
    v7 = *(v0 + 216);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v46 = *(v0 + 248);
    v48 = *(v0 + 168);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v50 = *(v0 + 160);
    v52 = *(v0 + 104);

    sub_10004489C(v5, v46);
    v14 = *(v12 + 8);
    v14(v11, v13);
    v14(v10, v13);
    (*(v9 + 8))(v8, v48);

    sub_10006574C();
LABEL_9:

    return v15();
  }

  v16 = *(v0 + 280) + 1;
  *(v0 + 280) = v16;
  v17 = *(v0 + 256);
  if (v16 >= *(v17 + 16))
  {
    __break(1u);
    return result;
  }

  v18 = *(v0 + 272);
  v19 = *(v0 + 64);
  (*(*(v0 + 96) + 16))(*(v0 + 104), v17 + ((*(v0 + 308) + 32) & ~*(v0 + 308)) + *(*(v0 + 96) + 72) * v16, *(v0 + 88));
  v20 = static ODIDeviceInfo.isDeviceLocked()();
  if (v19 == 1 && (v20 & 1) != 0)
  {
    sub_1000D9658();

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (sub_10009D6D8(v22))
    {
      sub_100097B40();
      *swift_slowAlloc() = 0;
      sub_10007FD74(&_mh_execute_header, v23, v24, "PGA mismatched DataProtectionClass");
      sub_100097AB8();
    }

    v25 = *(v0 + 240);
    v26 = *(v0 + 176);
    v51 = *(v0 + 168);
    v53 = *(v0 + 184);
    v49 = *(v0 + 136);
    v45 = *(v0 + 248);
    v47 = *(v0 + 128);
    v28 = *(v0 + 112);
    v27 = *(v0 + 120);
    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v31 = *(v0 + 88);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    sub_10004489C(v25, v45);
    (*(v30 + 8))(v29, v31);
    v33 = *(v27 + 8);
    v33(v47, v28);
    v33(v49, v28);
    (*(v26 + 8))(v53, v51);
    sub_1000D95D8();

    sub_10006574C();
    goto LABEL_9;
  }

  v34 = *(v0 + 104);
  sub_1000D95F8();
  v35 = swift_task_alloc();
  *(v0 + 288) = v35;
  *v35 = v0;
  sub_1000D94FC();
  sub_100097FD0();

  return sub_1000D6CA8(v36, v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1000D64C8()
{
  v1 = *(v0 + 200);
  sub_1000D95D8();

  sub_10006574C();

  return v2();
}

uint64_t sub_1000D6554()
{
  v1 = v0[22];
  v14 = v0[23];
  v2 = v0[21];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  v8 = v0[13];
  v9 = v0[11];
  sub_10004489C(v0[30], v0[31]);
  (*(v7 + 8))(v8, v9);
  v10 = *(v6 + 8);
  v10(v4, v5);
  v10(v3, v5);
  (*(v1 + 8))(v14, v2);
  v11 = v0[37];
  sub_1000D95D8();

  sub_10006574C();

  return v12();
}

uint64_t sub_1000D6670()
{
  sub_1000657D4();
  v0[23] = v1;
  v0[24] = v2;
  v3 = type metadata accessor for ODIBindingsDict();
  v0[25] = v3;
  sub_1000474C0(v3);
  v0[26] = v4;
  v6 = *(v5 + 64);
  v0[27] = sub_100065948();
  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000D6718()
{
  v0[28] = sub_1000D876C(0x10uLL);
  v0[29] = v1;
  v3 = v0[26];
  v2 = v0[27];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v7 = [objc_allocWithZone(ASPrecomputationRunner) init];
  v0[30] = v7;
  (*(v3 + 16))(v2, v5, v4);
  ODIBindingsDict.subscript.setter();
  v8 = *v6;
  sub_100080E58();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[31] = isa;
  v10 = v6[1];
  v11 = v6[2];
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v0[32] = v12;
  v13 = ODIBindingsDict.contents.getter();
  sub_1000A34A0(v13);

  v14 = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[33] = v14;

  v15 = Array._bridgeToObjectiveC()().super.isa;
  v0[34] = v15;
  sub_1000D967C();
  v16 = Data._bridgeToObjectiveC()().super.isa;
  v0[35] = v16;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000D69E8;
  v17 = swift_continuation_init();
  v0[17] = sub_1000443DC(&qword_1006CCA98);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000D8684;
  v0[13] = &unk_100695268;
  v0[14] = v17;
  [v7 runPrecomputationWithProfiles:isa profileInfo:v12 bindings:v14 externalDataArray:v15 nonce:v16 completion:?];

  return _swift_continuation_await(v0 + 2, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_1000D69E8()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 288) = *(v3 + 48);
  sub_1000658F8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D6AE4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[30];
  v6 = v0[31];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[25];
  sub_1000448B0(v0[28], v0[29]);

  (*(v8 + 8))(v7, v9);
  v10 = v0[20];
  v11 = v0[21];
  sub_1000448B0(v0[18], v0[19]);
  sub_1000448B0(v10, v11);

  sub_10006574C();

  return v12();
}

void sub_1000D6BC8()
{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v14 = v0[33];
  v15 = v0[32];
  v16 = v0[31];
  v4 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[25];
  v9 = v0[26];
  swift_willThrow();
  sub_1000448B0(v6, v4);

  (*(v9 + 8))(v7, v8);
  v10 = v0[36];
  v11 = v0[27];

  sub_10006574C();
  sub_100097FD0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000D6CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 352) = v35;
  *(v9 + 360) = v8;
  *(v9 + 260) = v36;
  *(v9 + 336) = a8;
  *(v9 + 344) = v34;
  *(v9 + 320) = a6;
  *(v9 + 328) = a7;
  *(v9 + 304) = a4;
  *(v9 + 312) = a5;
  *(v9 + 288) = a2;
  *(v9 + 296) = a3;
  *(v9 + 280) = a1;
  v10 = type metadata accessor for AssessmentPayload();
  *(v9 + 368) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v9 + 376) = swift_task_alloc();
  v12 = type metadata accessor for ODIClientGUIDSeeds();
  *(v9 + 384) = v12;
  v13 = *(v12 - 8);
  *(v9 + 392) = v13;
  v14 = *(v13 + 64) + 15;
  *(v9 + 400) = swift_task_alloc();
  *(v9 + 408) = swift_task_alloc();
  v15 = type metadata accessor for AssessmentPayloadCacher();
  *(v9 + 416) = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  *(v9 + 424) = swift_task_alloc();
  v17 = type metadata accessor for DUATaskType();
  *(v9 + 432) = v17;
  v18 = *(v17 - 8);
  *(v9 + 440) = v18;
  v19 = *(v18 + 64) + 15;
  *(v9 + 448) = swift_task_alloc();
  v20 = type metadata accessor for DispatchTime();
  *(v9 + 456) = v20;
  v21 = *(v20 - 8);
  *(v9 + 464) = v21;
  v22 = *(v21 + 64) + 15;
  *(v9 + 472) = swift_task_alloc();
  v23 = type metadata accessor for String.Encoding();
  *(v9 + 480) = v23;
  v24 = *(v23 - 8);
  *(v9 + 488) = v24;
  v25 = *(v24 + 64) + 15;
  *(v9 + 496) = swift_task_alloc();
  v26 = type metadata accessor for TSID();
  *(v9 + 504) = v26;
  v27 = *(v26 - 8);
  *(v9 + 512) = v27;
  v28 = *(v27 + 64) + 15;
  *(v9 + 520) = swift_task_alloc();
  v29 = type metadata accessor for UUID();
  *(v9 + 528) = v29;
  v30 = *(v29 - 8);
  *(v9 + 536) = v30;
  v31 = *(v30 + 64) + 15;
  *(v9 + 544) = swift_task_alloc();

  return _swift_task_switch(sub_1000D6FC4, 0, 0);
}

uint64_t sub_1000D6FC4()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 504);
  v7 = *(v0 + 328);
  v6 = *(v0 + 336);
  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  *(v0 + 552) = v8;
  *(v0 + 560) = v9;
  (*(v2 + 8))(v1, v3);
  swift_bridgeObjectRetain_n();

  TSID.init(tsid:session_id:ts_nonce:)();
  v11 = type metadata accessor for JSONEncoder();
  *(v0 + 568) = v11;
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000D8F70(&qword_1006CCAA8, &type metadata accessor for TSID);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 576) = v14;
  *(v0 + 584) = v15;
  v16 = v14;
  v17 = v15;
  v19 = *(v0 + 312);
  v18 = *(v0 + 320);
  v20 = *(v0 + 288);

  type metadata accessor for ODNAssessmentGUIDManager();
  v21 = type metadata accessor for ProfileContent();
  *(v0 + 592) = v21;
  v22 = (v20 + *(v21 + 40));
  v23 = *v22;
  v24 = v22[1];
  v25 = static ODNAssessmentGUIDManager.getECv3SHEncryptedContainers(tsidEncryptionCertString:tsid:assessmentGUID:)();
  *(v0 + 600) = 0;
  *(v0 + 608) = v25;
  *(v0 + 616) = v26;
  if (!v25 || !v26)
  {
    v91 = *(v0 + 520);
    v42 = *(v0 + 504);
    v41 = *(v0 + 512);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    sub_1000D9688(v43, 2);
    swift_willThrow();
    sub_1000448B0(v16, v17);

    (*(v41 + 8))(v91, v42);
    v27 = *(v0 + 544);
    v28 = *(v0 + 520);
    sub_1000D9630();

    sub_10006574C();
    sub_100097FD0();

    __asm { BRAA            X1, X16 }
  }

  sub_1000443DC(&qword_1006CCAB0);
  inited = swift_initStackObject();
  *(v0 + 624) = inited;
  *(inited + 16) = xmmword_1005CC380;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  sub_100046D38(v16, v17);
  v32 = EncryptedDataContainer.data.getter();
  if (v33)
  {
    v34 = v32;
    v36 = *(v0 + 488);
    v35 = *(v0 + 496);
    v37 = *(v0 + 480);
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    sub_1000D96A8();

    v38 = *(v36 + 8);
    v39 = sub_1000D959C();
    v40(v39);
  }

  else
  {
    v34 = 0;
    v10 = 0xF000000000000000;
  }

  *(inited + 48) = v34;
  *(inited + 56) = v10;
  v44 = EncryptedDataContainer.data.getter();
  if (v45)
  {
    v46 = v44;
    v48 = *(v0 + 488);
    v47 = *(v0 + 496);
    v49 = *(v0 + 480);
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    sub_1000D96A8();

    (*(v48 + 8))(v47, v49);
  }

  else
  {
    v46 = 0;
    v10 = 0xF000000000000000;
  }

  v51 = *(v0 + 464);
  v50 = *(v0 + 472);
  v52 = *(v0 + 456);
  v53 = *(v0 + 280);
  v54 = *(v0 + 288);
  *(inited + 64) = v46;
  *(inited + 72) = v10;
  v90 = [objc_allocWithZone(ASPrecomputationRunner) init];
  *(v0 + 632) = v90;
  static DispatchTime.now()();
  *(v0 + 640) = DispatchTime.uptimeNanoseconds.getter();
  *(v0 + 648) = *(v51 + 8);
  *(v0 + 656) = (v51 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v55 = sub_1000D967C();
  v56(v55);
  v57 = *v54;
  sub_100080E58();
  v58.super.isa = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 664) = v58;
  v59 = v54[1];
  v60 = v54[2];
  v89.super.isa = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 672) = v89;
  v61 = ODIBindingsDict.contents.getter();
  sub_1000A34A0(v61);

  v62.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *(v0 + 680) = v62;

  v71 = 0;
  v72 = _swiftEmptyArrayStorage;
LABEL_15:
  v73 = v71 - 1;
  v74 = 16 * v71 + 40;
  while (v73 != 2)
  {
    if (++v73 > 2)
    {
      __break(1u);
      return _swift_continuation_await(isUniquelyReferenced_nonNull_native, v64, v65, v66, v67, v68, v69, v70);
    }

    v75 = v74 + 16;
    v76 = *(inited + v74);
    v74 += 16;
    if (v76 >> 60 != 15)
    {
      isa = v62.super.isa;
      v77 = *(inited + v75 - 24);
      sub_100046D38(v77, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v58.super.isa;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v81 = v72[2];
        sub_100062C84();
        v72 = isUniquelyReferenced_nonNull_native;
      }

      v79 = v72[2];
      if (v79 >= v72[3] >> 1)
      {
        sub_100062C84();
        v72 = isUniquelyReferenced_nonNull_native;
      }

      v71 = v73 + 1;
      v72[2] = (v79 + 1);
      v80 = &v72[2 * v79];
      v80[4] = v77;
      v80[5] = v76;
      v58.super.isa = v78;
      v62.super.isa = isa;
      goto LABEL_15;
    }
  }

  v83 = *(v0 + 296);
  v82 = *(v0 + 304);

  v84 = Array._bridgeToObjectiveC()().super.isa;
  *(v0 + 688) = v84;

  v85 = Data._bridgeToObjectiveC()().super.isa;
  *(v0 + 696) = v85;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 224;
  *(v0 + 24) = sub_1000D76B4;
  v86 = swift_continuation_init();
  *(v0 + 216) = sub_1000443DC(&qword_1006CCA98);
  *(v0 + 160) = _NSConcreteStackBlock;
  *(v0 + 168) = 1107296256;
  *(v0 + 176) = sub_1000D8684;
  *(v0 + 184) = &unk_100695290;
  *(v0 + 192) = v86;
  [v90 runPrecomputationWithProfiles:v58.super.isa profileInfo:v89.super.isa bindings:v62.super.isa externalDataArray:v84 nonce:v85 completion:v0 + 160];
  sub_100097FD0();

  return _swift_continuation_await(isUniquelyReferenced_nonNull_native, v64, v65, v66, v67, v68, v69, v70);
}

uint64_t sub_1000D76B4()
{
  sub_1000657D4();
  v1 = *v0;
  sub_10007CAE0();
  *v3 = v2;
  *v3 = *v0;
  v5 = *(v4 + 48);
  *(v2 + 704) = v5;
  if (v5)
  {
    v6 = *(v2 + 560);
  }

  sub_1000658F8();

  return _swift_task_switch(v7, v8, v9);
}

void sub_1000D77BC()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5 = *(v0 + 664);
  v6 = *(v0 + 648);
  v120 = *(v0 + 656);
  v123 = *(v0 + 640);
  v7 = *(v0 + 472);
  v8 = *(v0 + 456);
  v9 = *(v0 + 232);
  *(v0 + 712) = *(v0 + 224);
  *(v0 + 720) = v9;
  v116 = *(v0 + 248);
  v117 = *(v0 + 240);
  *(v0 + 728) = v117;
  *(v0 + 736) = v116;
  v114 = *(v0 + 256);

  static DispatchTime.now()();
  v10 = DispatchTime.uptimeNanoseconds.getter();
  v6(v7, v8);
  type metadata accessor for DIPODNHelper();
  if (v10 < v123)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v13 = *(v0 + 432);
  v14 = *(v0 + 260);
  (*(v12 + 104))(v11, enum case for DUATaskType.background(_:), v13);
  v15 = sub_1000D959C();
  sub_100046D38(v15, v16);
  sub_1000D959C();
  v17 = static DIPODNHelper.generateDUAData(tData:duration:computationTaskType:isDeviceLocked:)();
  v19 = v18;
  v20 = sub_1000D959C();
  sub_1000448B0(v20, v21);
  (*(v12 + 8))(v11, v13);
  if (!v19)
  {
    v31 = *(v0 + 632);
    v32 = *(v0 + 616);
    v33 = *(v0 + 608);
    v115 = *(v0 + 584);
    v34 = *(v0 + 576);
    v35 = *(v0 + 560);
    v36 = *(v0 + 512);
    v121 = *(v0 + 504);
    v124 = *(v0 + 520);

    sub_1000D8A4C();
    sub_1000D9624();
    swift_allocError();
    sub_1000D9688(v37, 3);
    swift_willThrow();

    sub_1000448B0(v117, v116);

    v38 = sub_1000D959C();
    sub_1000448B0(v38, v39);
    sub_1000448B0(v34, v115);
    (*(v36 + 8))(v124, v121);
LABEL_14:
    sub_1000D95A8();

    sub_10006574C();

    v70();
    return;
  }

  v113 = v17;
  v22 = *(*(v0 + 416) + 28);
  sub_1000D8F0C(*(v0 + 360), *(v0 + 424));
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 424);
  if (v25)
  {
    v27 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *v27 = 136446210;
    v29 = *v26;
    v28 = v26[1];

    sub_1000D954C();
    v30 = sub_100052F7C();

    *(v27 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Successfully pre-generated an assessment for workflow ID %{public}s", v27, 0xCu);
    sub_100044850(v125);
    sub_100097AB8();

    sub_100097AB8();
  }

  else
  {

    sub_1000D954C();
  }

  if (v114 < 0)
  {
    goto LABEL_20;
  }

  v40 = *(v0 + 288);
  v41 = *(v40 + 32);
  if (v41 < 0xFFFFFFFF80000000)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v41 > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v110 = *(v40 + 32);
  v42 = *(v0 + 360);
  v43 = *v42;
  v111 = v42[1];
  v112 = *(v40 + 24);
  v44 = *(v0 + 600);
  v45 = *(v0 + 592);
  v46 = *(v0 + 568);
  v47 = *(v0 + 408);
  v48 = *(v0 + 384);
  v49 = *(v0 + 344);
  v107 = *(v40 + v45[11]);
  v50 = (v40 + v45[12]);
  v108 = *v50;
  v109 = v50[1];
  v105 = v45[13];
  v106 = v43;
  v118 = *(v0 + 288);
  v51 = Data.base64EncodedString(options:)(0);
  v52 = *(v46 + 48);
  v53 = *(v46 + 52);
  swift_allocObject();
  v54 = JSONEncoder.init()();
  *(v0 + 744) = v54;
  ODIClientGUID.seeds.getter();
  v55 = sub_1000D8F70(&qword_1006CCAB8, &type metadata accessor for ODIClientGUIDSeeds);
  v56 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v44)
  {
    v58 = *(v0 + 560);
    (*(*(v0 + 392) + 8))(*(v0 + 408), *(v0 + 384));

    v64 = *(v0 + 736);
    v65 = *(v0 + 728);
    v66 = *(v0 + 720);
    v67 = *(v0 + 712);
    v68 = *(v0 + 632);
    sub_1000D9694();
    v69 = *(v0 + 512);
    v119 = *(v0 + 504);
    v122 = *(v0 + 520);

    sub_1000448B0(v65, v64);

    sub_1000448B0(v67, v66);
    sub_1000448B0(v48, v51._countAndFlagsBits);
    (*(v69 + 8))(v122, v119);
    goto LABEL_14;
  }

  v59 = v56;
  v60 = v57;
  v61 = *(v0 + 400);
  v62 = *(v0 + 352);
  v104 = *(*(v0 + 392) + 8);
  v104(*(v0 + 408), *(v0 + 384));
  v63 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v59, v60);
  ODIClientGUID.seeds.getter();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000D96A8();
  v71 = *(v0 + 608);
  v104(*(v0 + 400), *(v0 + 384));
  v72 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v54, v55);
  *(v0 + 264) = v71;
  sub_1000443DC(&qword_1006CCAC0);
  sub_1000D8FB8(&qword_1006CCAC8, &qword_1006CCAC0);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  sub_1000D96A8();
  v73 = *(v0 + 616);
  v74 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v54, v55);
  *(v0 + 272) = v73;
  sub_1000443DC(&qword_1006CCAD0);
  sub_1000D8FB8(&qword_1006CCAD8, &qword_1006CCAD0);
  v75 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v77 = v76;
  v101 = *(v0 + 552);
  v78 = *(v0 + 368);
  v79 = *(v0 + 376);
  v80 = *(v0 + 352);
  v102 = *(v0 + 560);
  v103 = *(v0 + 360);
  v81 = *(v0 + 344);
  v100 = *(v0 + 280);
  v82 = Data.base64EncodedString(options:)(0);
  sub_1000448B0(v75, v77);
  v83 = &v79[v78[5]];
  Date.init()();
  v84 = ODIClientGUID.asString.getter();
  v86 = v85;
  v87 = ODIClientGUID.asString.getter();
  v89 = v88;
  v90 = v78[14];
  v91 = type metadata accessor for ODIBindingsDict();
  (*(*(v91 - 8) + 16))(&v79[v90], v100, v91);
  sub_1000446C4(v118 + v105, &v79[v78[21]]);
  *v79 = v106;
  *(v79 + 1) = v111;
  *&v79[v78[6]] = v51;
  v92 = &v79[v78[7]];
  *v92 = v113;
  v92[1] = v19;
  v93 = &v79[v78[8]];
  *v93 = v84;
  v93[1] = v86;
  *&v79[v78[9]] = v63;
  v94 = &v79[v78[10]];
  *v94 = v87;
  v94[1] = v89;
  *&v79[v78[11]] = v72;
  v95 = &v79[v78[12]];
  *v95 = v101;
  *(v95 + 1) = v102;
  *&v79[v78[13]] = v114;
  *&v79[v78[15]] = v112;
  *&v79[v78[16]] = v110;
  *&v79[v78[17]] = v74;
  *&v79[v78[18]] = v82;
  v79[v78[19]] = v107;
  v96 = &v79[v78[20]];
  *v96 = v108;
  *(v96 + 1) = v109;
  v97 = *(v103 + 16);

  v98 = swift_task_alloc();
  *(v0 + 752) = v98;
  *v98 = v0;
  v98[1] = sub_1000D8168;
  v99 = *(v0 + 376);

  sub_1000BCBFC(v99);
}

uint64_t sub_1000D8168()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v3 = v2;
  v5 = *(v4 + 752);
  v6 = *v1;
  sub_1000773D4();
  *v7 = v6;
  *(v8 + 760) = v0;

  sub_1000658F8();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D8264()
{
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[89];
  v5 = v0[79];
  v6 = v0[77];
  v7 = v0[76];
  v14 = v0[73];
  v15 = v0[90];
  v13 = v0[72];
  v8 = v0[65];
  v9 = v0[64];
  v16 = v0[63];
  v17 = v0[68];
  v18 = v0[62];
  v19 = v0[59];
  v20 = v0[56];
  v21 = v0[53];
  v22 = v0[51];
  v23 = v0[50];
  v10 = v0[47];

  sub_1000D9574();

  sub_1000448B0(v3, v2);

  sub_1000448B0(v4, v15);
  sub_1000448B0(v13, v14);
  (*(v9 + 8))(v8, v16);

  sub_10006574C();

  return v11();
}

uint64_t sub_1000D83DC()
{
  v3 = v0[93];
  v4 = v0[47];

  sub_1000D9574();
  v5 = v0[95];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[79];
  sub_1000D9694();
  v15 = v0[65];
  v11 = v0[64];
  v14 = v0[63];

  sub_1000448B0(v7, v6);

  sub_1000448B0(v9, v8);
  sub_1000448B0(v2, v1);
  (*(v11 + 8))(v15, v14);
  sub_1000D95A8();

  sub_10006574C();

  return v12();
}

uint64_t sub_1000D851C()
{
  v1 = v0[88];
  v15 = v0[87];
  v16 = v0[86];
  v17 = v0[85];
  v18 = v0[84];
  v19 = v0[83];
  v2 = v0[79];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[65];
  v8 = v0[63];
  v9 = v0[64];
  swift_willThrow();

  sub_1000448B0(v6, v5);
  (*(v9 + 8))(v7, v8);

  v10 = v0[88];
  v11 = v0[68];
  v12 = v0[65];
  sub_1000D9630();

  sub_10006574C();

  return v13();
}

uint64_t sub_1000D8684(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v10 = a5;

    return sub_1000C4464(v9, v10);
  }

  else
  {
    v12 = a2;
    v13 = a3;
    v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20[0] = v14;
    v20[1] = v16;
    v20[2] = v17;
    v20[3] = v19;
    v21 = a4;
    return sub_1000C1B3C(v9, v20);
  }
}

uint64_t sub_1000D876C(size_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D8990(0, a1);
  v8 = v7[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100062778();
    v7 = v9;
  }

  v10 = sub_1000D967C();
  if (!SecRandomCopyBytes(v10, v11, v12))
  {
    return sub_1000450F0(v7);
  }

  Logger.init(subsystem:category:)();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    sub_100097B40();
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to generate nonce", v15, 2u);
    sub_100097AB8();
  }

  sub_100080D18();
  sub_1000D9624();
  swift_allocError();
  sub_1000D9688(v16, 1);
  swift_willThrow();
  return (*(v3 + 8))(v6, v2);
}

id *sub_1000D8990(id *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = a2;
    memset((v4 + 32), v3, a2);
    return v4;
  }

  return result;
}

uint64_t type metadata accessor for AssessmentPayloadCacher()
{
  result = qword_1006CCB38;
  if (!qword_1006CCB38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000D8A4C()
{
  result = qword_1006CCAA0;
  if (!qword_1006CCAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCAA0);
  }

  return result;
}

void sub_1000D8AA0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      __src[0] = 0;
      swift_stdlib_random();
      v5 = (__src[0] * v2) >> 64;
      if (v2 > __src[0] * v2)
      {
        v6 = -v2 % v2;
        if (v6 > __src[0] * v2)
        {
          do
          {
            __src[0] = 0;
            swift_stdlib_random();
          }

          while (v6 > __src[0] * v2);
          v5 = (__src[0] * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        memcpy(__dst, (v1 + 32 + 104 * v4), sizeof(__dst));
        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        memcpy(__src, (v1 + 32 + 104 * v7), sizeof(__src));
        sub_10007606C(__dst, v13);
        sub_10007606C(__src, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000875FC(v1);
          v1 = v9;
        }

        if (v4 >= *(v1 + 16))
        {
          goto LABEL_22;
        }

        v10 = v1 + 32;
        memcpy(v12, (v1 + 32 + 104 * v4), sizeof(v12));
        memcpy((v1 + 32 + 104 * v4), __src, 0x68uLL);
        sub_1000760C8(v12);
        if (v7 >= *(v1 + 16))
        {
          goto LABEL_23;
        }

        memcpy(v13, (v10 + 104 * v7), sizeof(v13));
        memcpy((v10 + 104 * v7), __dst, 0x68uLL);
        sub_1000760C8(v13);
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

void sub_1000D8C70()
{
  v1 = type metadata accessor for ODIBindingsDict();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  v3 = __chkstk_darwin(v1);
  v30 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v23 - v5;
  v26 = v0;
  v6 = *v0;
  v7 = *(*v0 + 16);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v23 = v7 - 2;
    v24 = (v27 + 40);
    v25 = v27 + 16;
    while (1)
    {
      v32 = 0;
      swift_stdlib_random();
      v10 = (v32 * v7) >> 64;
      if (v7 > v32 * v7)
      {
        v11 = -v7 % v7;
        if (v11 > v32 * v7)
        {
          do
          {
            v32 = 0;
            swift_stdlib_random();
          }

          while (v11 > v32 * v7);
          v10 = (v32 * v7) >> 64;
        }
      }

      v12 = v9 + v10;
      if (__OFADD__(v9, v10))
      {
        break;
      }

      if (v9 != v12)
      {
        v13 = *(v6 + 16);
        if (v9 >= v13)
        {
          goto LABEL_20;
        }

        v14 = v1;
        v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
        v15 = v6 + v29;
        v16 = *(v27 + 72);
        v17 = *(v27 + 16);
        v28 = v16 * v9;
        v17(v31, v6 + v29 + v16 * v9, v14);
        if (v12 >= v13)
        {
          goto LABEL_21;
        }

        v18 = v16 * v12;
        v17(v30, v15 + v16 * v12, v14);
        v1 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100087610(v6);
          v6 = v19;
        }

        if (v9 >= *(v6 + 16))
        {
          goto LABEL_22;
        }

        v20 = v6 + v29;
        v21 = *v24;
        (*v24)(v6 + v29 + v28, v30, v14);
        if (v12 >= *(v6 + 16))
        {
          goto LABEL_23;
        }

        v21(v20 + v18, v31, v14);
        *v26 = v6;
        v8 = v23;
      }

      --v7;
      if (v9++ == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_1000D8F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayloadCacher();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D8F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D8FB8(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D9008(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AssessmentPayloadError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1000D9134);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ProfileEvaluationCacherError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000D9238);
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

uint64_t sub_1000D9284(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Logger();
    v9 = a1 + *(a3 + 28);

    return sub_100046EA4(v9, a2, v8);
  }
}

uint64_t sub_1000D9320(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = v5 + *(a4 + 28);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000D93A0()
{
  result = type metadata accessor for AssessmentPayloadStore();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000D9438()
{
  result = qword_1006CCB78;
  if (!qword_1006CCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCB78);
  }

  return result;
}

unint64_t sub_1000D9490()
{
  result = qword_1006CCB80;
  if (!qword_1006CCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCB80);
  }

  return result;
}

uint64_t sub_1000D94FC(uint64_t a1)
{
  *(a1 + 8) = sub_1000D6030;
  v4 = v2[30];
  v5 = v2[31];
  v6 = v2[28];
  v7 = v2[29];
  v8 = v2[26];
  v9 = v2[27];
  v11 = v2[16];
  v10 = v2[17];
  v12 = v2[13];
  v13 = v2[10];
  v14 = v2[7];
  *(v3 + 32) = v1 & 1;
  *(v3 + 16) = v10;
  *(v3 + 24) = v11;
  return v12;
}

uint64_t sub_1000D954C()
{

  return sub_1000D9008(v0, type metadata accessor for AssessmentPayloadCacher);
}

uint64_t sub_1000D9574()
{

  return sub_1000D9008(v0, type metadata accessor for AssessmentPayload);
}

uint64_t sub_1000D95A8()
{
  v2 = v0[68];
  v3 = v0[65];
  v4 = v0[62];
  v5 = v0[59];
  v6 = v0[56];
  v7 = v0[53];
  v9 = v0[50];
  v8 = v0[51];
  v10 = v0[47];
}

uint64_t sub_1000D95D8()
{
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
}

uint64_t sub_1000D95F8()
{
  v2[5] = v0;
  v2[6] = v1;
  v2[2] = 2;

  return ODIBindingsDict.subscript.setter();
}

uint64_t sub_1000D9630()
{
  v2 = v0[62];
  v3 = v0[59];
  v4 = v0[56];
  v5 = v0[53];
  v7 = v0[50];
  v6 = v0[51];
  v8 = v0[47];
}

uint64_t sub_1000D9658()
{
  v2 = *(v0 + 256);
  v3 = *(v0 + 304);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v6 = *(v0 + 80);
}

uint64_t sub_1000D9694()
{
  v1 = v0[77];
  result = v0[76];
  v3 = v0[73];
  v4 = v0[72];
  return result;
}

void sub_1000D96B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for XPCStreamListener();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = v2 + *(__chkstk_darwin(v6 - 8) + 28);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Registering listener for Buddy Flow completion", v12, 2u);
  }

  v13 = *v3;
  sub_10007DE54(v3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_10007E1C4(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = (v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a1;
  v16[1] = a2;
  aBlock[4] = sub_1000D9B00;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004788C;
  aBlock[3] = &unk_100695400;
  v17 = _Block_copy(aBlock);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v13, v17);
  _Block_release(v17);
}

uint64_t type metadata accessor for XPCStreamListener()
{
  result = qword_1006CCBE0;
  if (!qword_1006CCBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

const char *sub_1000D991C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = xpc_dictionary_get_string(a1, _xpc_event_key_name);
  if (result)
  {
    result = strcmp(result, "Buddy Setup Done");
    if (!result)
    {
      v6 = a2 + *(type metadata accessor for XPCStreamListener() + 20);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Buddy Flow complete notification received. Triggering handler.", v9, 2u);
      }

      return a3();
    }
  }

  return result;
}

uint64_t sub_1000D9A00()
{
  v1 = (type metadata accessor for XPCStreamListener() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = type metadata accessor for Logger();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

const char *sub_1000D9B00(void *a1)
{
  v3 = *(type metadata accessor for XPCStreamListener() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_1000D991C(a1, v1 + v4, v6);
}

uint64_t sub_1000D9BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D9BCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Logger();
    v9 = a1 + *(a3 + 20);

    return sub_100046EA4(v9, a2, v8);
  }
}

void *sub_1000D9C68(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Logger();
    v8 = v5 + *(a4 + 20);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000D9CE8()
{
  result = sub_10007DD5C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000D9D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20[0] = a1;
  v20[1] = a2;
  v6 = type metadata accessor for LocalFeatureToggle();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = _swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v25 = _swiftEmptyArrayStorage;
  sub_1000BDFC4(0, v11, 0);
  v12 = v25;
  for (i = (a3 + 40); ; i += 6)
  {
    v14 = *i;
    v15 = *(i + 8);
    v16 = *(i + 32);
    v21[0] = *(i - 1);
    v21[1] = v14;
    v22 = v15;
    v23 = *(i + 1);
    v24 = v16;

    (v20[0])(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v25 = v12;
    v18 = v12[2];
    v17 = v12[3];
    if (v18 >= v17 >> 1)
    {
      sub_1000BDFC4(v17 > 1, v18 + 1, 1);
      v12 = v25;
    }

    v12[2] = (v18 + 1);
    sub_1000DC714(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18);
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D9F4C()
{
  v91 = type metadata accessor for Date();
  v2 = sub_10004EAE0(v91);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10004EAF4();
  v9 = v8 - v7;
  v90 = type metadata accessor for LocalFeatureToggle();
  v10 = sub_10004EAE0(v90);
  v92 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100047544();
  v85 = v14;
  sub_1000474F8();
  __chkstk_darwin(v15);
  v88 = &v83 - v16;
  sub_1000474F8();
  __chkstk_darwin(v17);
  sub_1000DD164();
  __chkstk_darwin(v18);
  v86 = (&v83 - v19);
  sub_1000474F8();
  __chkstk_darwin(v20);
  v22 = &v83 - v21;
  v23 = v0[4];
  v24 = v0[5];
  v87 = v0;
  sub_100044728(v0 + 1, v23);
  v25 = *(v24 + 16);
  v26 = sub_10004ECC8();
  v28 = v27(v26);
  v29 = 0;
  v89 = *(v28 + 16);
  v30 = (v4 + 8);
  v31 = _swiftEmptyArrayStorage;
  while (v89 != v29)
  {
    if (v29 >= *(v28 + 16))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v32 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v33 = *(v92 + 72);
    sub_1000DC654(v28 + v32 + v33 * v29, v22);
    v34 = *(v90 + 36);
    static Date.now.getter();
    LOBYTE(v34) = static Date.> infix(_:_:)();
    (*v30)(v9, v91);
    if (v34)
    {
      sub_1000DC714(v22, v86);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000DD0E4(v31[2]);
        v31 = v93;
      }

      v37 = v31[2];
      v36 = v31[3];
      v38 = (v37 + 1);
      if (v37 >= v36 >> 1)
      {
        v39 = sub_1000DD148(v36);
        v84 = v40;
        sub_1000BDFC4(v39, v40, 1);
        v38 = v84;
        v31 = v93;
      }

      v29 = (v29 + 1);
      v31[2] = v38;
      sub_1000DC714(v86, v31 + v32 + v37 * v33);
    }

    else
    {
      sub_1000DC6B8(v22);
      v29 = (v29 + 1);
    }
  }

  v41 = v87;
  v42 = *v87;
  v86 = sub_1000DBBBC(v31, *v87);

  __chkstk_darwin(v43);
  *(&v83 - 2) = v41;
  v44 = sub_1000D9D6C(sub_1000DC778, (&v83 - 4), v42);
  v45 = 0;
  v46 = *(v44 + 16);
  v47 = _swiftEmptyArrayStorage;
  while (v46 != v45)
  {
    if (v45 >= *(v44 + 16))
    {
      goto LABEL_40;
    }

    v48 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v49 = *(v92 + 72);
    sub_1000DC654(v44 + v48 + v49 * v45, v1);
    v50 = *(v90 + 36);
    static Date.now.getter();
    LOBYTE(v50) = static Date.> infix(_:_:)();
    (*v30)(v9, v91);
    if (v50)
    {
      sub_1000DC714(v1, v85);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v47;
      if ((v51 & 1) == 0)
      {
        sub_1000DD0E4(v47[2]);
        v47 = v93;
      }

      v53 = v47[2];
      v52 = v47[3];
      v54 = (v53 + 1);
      if (v53 >= v52 >> 1)
      {
        v55 = sub_1000DD148(v52);
        v89 = v56;
        sub_1000BDFC4(v55, v56, 1);
        v54 = v89;
        v47 = v93;
      }

      ++v45;
      v47[2] = v54;
      sub_1000DC714(v85, v47 + v48 + v53 * v49);
    }

    else
    {
      sub_1000DC6B8(v1);
      ++v45;
    }
  }

  v57 = v86;
  v58 = sub_1000DBD9C(v86, v47);

  v59 = v87[4];
  v60 = v87[5];
  sub_100044728(v87 + 1, v59);
  (*(v60 + 8))(v58, 0x746165662E647361, 0xEC00000073657275, v59, v60);

  v61 = sub_1000DBD9C(v57, v44);

  v91 = v61[2];
  if (v91)
  {
    v62 = 0;
    v90 = v61 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v63 = _swiftEmptyDictionarySingleton;
    v64 = v88;
    v89 = v61;
    while (v62 < v61[2])
    {
      sub_1000DC654(v90 + *(v92 + 72) * v62, v64);
      if (*(v64 + 40) == 1)
      {
        v65 = *(v64 + 16);
      }

      else
      {
        v65 = 0;
      }

      v67 = *v64;
      v66 = *(v64 + 8);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v63;
      v69 = sub_1000BFB60(v67, v66);
      v71 = v63[2];
      v72 = (v70 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_42;
      }

      v74 = v69;
      v75 = v70;
      sub_1000443DC(&qword_1006CCC58);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v68, v73))
      {
        v76 = sub_1000BFB60(v67, v66);
        if ((v75 & 1) != (v77 & 1))
        {
          goto LABEL_44;
        }

        v74 = v76;
      }

      v63 = v93;
      if (v75)
      {
        *(v93[7] + v74) = v65;
      }

      else
      {
        v93[(v74 >> 6) + 8] = (v93[(v74 >> 6) + 8] | (1 << v74));
        v78 = (v63[6] + 16 * v74);
        *v78 = v67;
        v78[1] = v66;
        *(v63[7] + v74) = v65;
        v79 = v63[2];
        v80 = __OFADD__(v79, 1);
        v81 = v79 + 1;
        if (v80)
        {
          goto LABEL_43;
        }

        v63[2] = v81;
      }

      ++v62;
      v64 = v88;
      sub_1000DC6B8(v88);
      v61 = v89;
      if (v91 == v62)
      {
        goto LABEL_38;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v63 = _swiftEmptyDictionarySingleton;
LABEL_38:

  return v63;
}

uint64_t sub_1000DA5F4()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CCC18);
  sub_100046E6C(v0, qword_1006CCC18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DA678(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 7107700 && a2 == 0xE300000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6374754F65636964 && a2 == 0xEB00000000656D6FLL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x797269707865 && a2 == 0xE600000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000DA86C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C62616E457369;
      break;
    case 2:
      result = 0x6F69746172;
      break;
    case 3:
      result = 7107700;
      break;
    case 4:
      result = 0x6374754F65636964;
      break;
    case 5:
      result = 0x797269707865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DA92C(void *a1)
{
  v3 = v1;
  v5 = sub_1000443DC(&qword_1006CCD28);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v11 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000DCB50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  sub_10004EC80();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v14 = *(v3 + 16);
    sub_10004EC80();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[3];
    sub_1000443DC(&qword_1006CCD18);
    sub_1000DCBA4(&qword_1006CCD30);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v3[4];
    sub_10004EC80();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + 40);
    sub_10004EC80();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(type metadata accessor for LocalFeatureToggle() + 36);
    type metadata accessor for Date();
    sub_1000DD0CC();
    sub_1000DCC08(v18, v19);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v20 = *(v8 + 8);
  v21 = sub_10004ECC8();
  return v22(v21);
}

uint64_t sub_1000DAB88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = sub_10004EAE0(v4);
  v26 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_10004EAF4();
  v11 = v10 - v9;
  v28 = sub_1000443DC(&qword_1006CCD08);
  v12 = sub_10004EAE0(v28);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10004EAF4();
  v15 = type metadata accessor for LocalFeatureToggle();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  sub_10004EAF4();
  v29 = v18 - v17;
  v19 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000DCB50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  sub_1000DD158();
  *v29 = KeyedDecodingContainer.decode(_:forKey:)();
  *(v29 + 8) = v20;
  sub_1000DD158();
  *(v29 + 16) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_1000443DC(&qword_1006CCD18);
  sub_1000DD104(&qword_1006CCD20);
  sub_1000DD178();
  sub_1000DD158();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v29 + 24) = v30;
  sub_1000DD158();
  *(v29 + 32) = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000DD158();
  *(v29 + 40) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_1000DD0CC();
  sub_1000DCC08(v21, v22);
  sub_1000DD158();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = sub_1000DD0BC();
  v24(v23);
  (*(v26 + 32))(v29 + *(v15 + 36), v11, v4);
  sub_1000DC654(v29, a2);
  sub_100044850(a1);
  return sub_1000DC6B8(v29);
}

uint64_t sub_1000DAFA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C62616E457369 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7107700 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1000DB10C(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x656C62616E457369;
      break;
    case 2:
      result = 0x6F69746172;
      break;
    case 3:
      result = 7107700;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000DB190@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CCD38);
  v6 = sub_10004EAE0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004EAF4();
  v13 = v12 - v11;
  v14 = a1[4];
  sub_100044728(a1, a1[3]);
  sub_1000DCC50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  sub_1000BB9D4();
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  sub_1000BB9D4();
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_1000443DC(&qword_1006CCD18);
  sub_1000DD104(&qword_1006CCD20);
  sub_1000DD178();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000BB9D4();
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v13;
  v21 = v20;
  (*(v8 + 8))(v19, v5);
  result = sub_100044850(a1);
  *a2 = v15;
  *(a2 + 8) = v17;
  *(a2 + 16) = v24 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = v18;
  *(a2 + 40) = v21 & 1;
  return result;
}

uint64_t sub_1000DB3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DA678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DB424@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DA864();
  *a1 = result;
  return result;
}

uint64_t sub_1000DB44C(uint64_t a1)
{
  v2 = sub_1000DCB50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB488(uint64_t a1)
{
  v2 = sub_1000DCB50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000DB4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DAFA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DB524@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000DB104();
  *a1 = result;
  return result;
}

uint64_t sub_1000DB54C(uint64_t a1)
{
  v2 = sub_1000DCC50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DB588(uint64_t a1)
{
  v2 = sub_1000DCC50();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000DB5C4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000DB190(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

id *sub_1000DB608()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = type metadata accessor for JSONDecoder();
      v4 = *(v3 + 48);
      v5 = *(v3 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000443DC(&qword_1006CCC30);
      sub_1000DC5C0(&qword_1006CCC38, &qword_1006CCC40);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      sub_1000448B0(v12, v13);

      return *&v16[0];
    }
  }

  else
  {
    sub_1000DBB5C(v16);
  }

  if (qword_1006C9848 != -1)
  {
    sub_1000DD128();
  }

  v6 = type metadata accessor for Logger();
  sub_100046E6C(v6, qword_1006CCC18);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v16[0] = v10;
    *v9 = 136315138;
    sub_10004ECC8();
    *(v9 + 4) = sub_100052F7C();
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not decode featureToggles from defaults for key: %s", v9, 0xCu);
    sub_100044850(v10);
    sub_1000488AC();
    sub_1000488AC();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000DB894()
{
  v1 = v0;
  v2 = type metadata accessor for JSONEncoder();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000443DC(&qword_1006CCC30);
  sub_1000DC5C0(&qword_1006CCC48, &qword_1006CCC50);
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10004ECC8();
  v9 = String._bridgeToObjectiveC()();
  [v1 setObject:isa forKey:v9];

  return sub_1000448B0(v5, v7);
}

uint64_t sub_1000DBB5C(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006CA130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id *sub_1000DBBBC(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for LocalFeatureToggle();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_100047544();
  v25 = v6;
  sub_1000474F8();
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  while (v11 != v10)
  {
    v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v14 = *(v4 + 72);
    v15 = sub_1000DC654(a1 + v13 + v14 * v10, v9);
    __chkstk_darwin(v15);
    *(&v23 - 2) = v9;
    if (sub_1000985D8(sub_1000DC798, (&v23 - 4), v26))
    {
      sub_1000DC6B8(v9);
      ++v10;
    }

    else
    {
      sub_1000DC714(v9, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000DD0E4(v12[2]);
        v12 = v27;
      }

      v18 = v12[2];
      v17 = v12[3];
      v19 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        v20 = sub_1000DD148(v17);
        v24 = v21;
        sub_1000BDFC4(v20, v21, 1);
        v19 = v24;
        v12 = v27;
      }

      ++v10;
      v12[2] = v19;
      sub_1000DC714(v25, v12 + v13 + v18 * v14);
    }
  }

  return v12;
}

id *sub_1000DBD9C(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v4 = type metadata accessor for LocalFeatureToggle();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100047544();
  v41 = v7;
  sub_1000474F8();
  __chkstk_darwin(v8);
  sub_1000DD164();
  __chkstk_darwin(v9);
  v11 = (&v40 - v10);
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  v42 = v5;
  v40 = a1;
  if (v12)
  {
    v46 = _swiftEmptyArrayStorage;
    sub_1000BDEA4(0, v12, 0);
    v13 = v46;
    v14 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_1000DC654(v14, v11);
      v16 = *v11;
      v17 = v11[1];

      sub_1000DC6B8(v11);
      v46 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        sub_1000BDEA4((v18 > 1), v19 + 1, 1);
        v13 = v46;
      }

      v13[2] = (v19 + 1);
      v20 = &v13[2 * v19];
      v20[4] = v16;
      v20[5] = v17;
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  v21 = sub_10009D890(v13);
  v22 = 0;
  v43 = *(v44 + 16);
  v23 = _swiftEmptyArrayStorage;
LABEL_7:
  while (v22 != v43)
  {
    v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v25 = *(v42 + 72);
    v45 = v22 + 1;
    sub_1000DC654(v44 + v24 + v25 * v22, v2);
    if (*(v21 + 16))
    {
      v26 = *v2;
      v27 = v2[1];
      v28 = *(v21 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v29 = Hasher._finalize()();
      v30 = ~(-1 << *(v21 + 32));
      while (1)
      {
        v31 = v29 & v30;
        if (((*(v21 + 56 + (((v29 & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v29 & v30)) & 1) == 0)
        {
          break;
        }

        v32 = (*(v21 + 48) + 16 * v31);
        if (*v32 != v26 || v32[1] != v27)
        {
          v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v29 = v31 + 1;
          if ((v34 & 1) == 0)
          {
            continue;
          }
        }

        sub_1000DC6B8(v2);
        v22 = v45;
        goto LABEL_7;
      }
    }

    sub_1000DC714(v2, v41);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000DD0E4(v23[2]);
      v23 = v47;
    }

    v37 = v23[2];
    v36 = v23[3];
    if (v37 >= v36 >> 1)
    {
      v38 = sub_1000DD148(v36);
      sub_1000BDFC4(v38, v37 + 1, 1);
      v23 = v47;
    }

    v23[2] = (v37 + 1);
    sub_1000DC714(v41, v23 + v24 + v37 * v25);
    v22 = v45;
  }

  v46 = v40;

  sub_1000CEFC0(v23);
  return v46;
}

uint64_t sub_1000DC0C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v34 = type metadata accessor for Date();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v34);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v31 - v11;
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = a1[1];
  v32 = *a1;
  v35 = v15;
  v33 = *(a1 + 16);
  v16 = a1[3];
  v17 = a1[4];
  v18 = *(a1 + 40);
  sub_1000446C4(v31 + 48, v36);
  sub_100044728(v36, v36[3]);
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = &off_100691558;
  }

  sub_1000DC3E0(v19);
  v21 = v20;

  sub_10009CD54(0.0, 1.0);
  v23 = v22;
  sub_100044850(v36);
  if (v18 == 1)
  {
    static Date.distantPast.getter();
    v17 = 0;
    v24 = v34;
  }

  else
  {
    static Date.now.getter();
    static Date.+ infix(_:_:)();
    v25 = v9;
    v24 = v34;
    (*(v5 + 8))(v25, v34);
  }

  v26 = *(v5 + 32);
  v26(v14, v12, v24);
  v27 = &off_100691580;
  v28 = v35;
  *a3 = v32;
  *(a3 + 8) = v28;
  if (v16)
  {
    v27 = v16;
  }

  *(a3 + 16) = v33;
  *(a3 + 24) = v27;
  *(a3 + 32) = v17;
  *(a3 + 40) = v23 < v21;
  v29 = type metadata accessor for LocalFeatureToggle();
  v26((a3 + *(v29 + 36)), v14, v24);
}

BOOL sub_1000DC334(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v7 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v8 & 1) != 0))
  {
    v10 = v3 != *(a2 + 16) || v4 == 0;
    return v10 || v6 & 1 | ((sub_1000DC518(v4, *(a2 + 24)) & 1) == 0) || v5 != *(a2 + 32);
  }

  return result;
}

uint64_t sub_1000DC3E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 32);
  }

  result = sub_1000846FC(2, a1);
  v7 = (v6 >> 1) - v5;
  if (v6 >> 1 == v5)
  {
    return swift_unknownObjectRelease();
  }

  if ((v6 >> 1) > v5)
  {
    v8 = 0;
    v9 = (v4 + 8 * v5);
    while (1)
    {
      v10 = *v9++;
      v11 = __OFADD__(v8, v10);
      v8 += v10;
      if (v11)
      {
        break;
      }

      if (!--v7)
      {
        return swift_unknownObjectRelease();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DC48C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000DC518(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for LocalFeatureToggle()
{
  result = qword_1006CCCB8;
  if (!qword_1006CCCB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000DC5C0(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CCC30);
    sub_1000DCC08(a2, type metadata accessor for LocalFeatureToggle);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DC654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFeatureToggle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC6B8(uint64_t a1)
{
  v2 = type metadata accessor for LocalFeatureToggle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DC714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalFeatureToggle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DC7DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = a1 + *(a3 + 36);

    return sub_100046EA4(v9, a2, v8);
  }
}

uint64_t sub_1000DC878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = v5 + *(a4 + 36);

    return sub_1000485F8(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000DC8F8()
{
  sub_1000DC9A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000DC9A4()
{
  if (!qword_1006CCCC8)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006CCCC8);
    }
  }
}

uint64_t sub_1000DC9FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000DCA3C(uint64_t result, int a2, int a3)
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

__n128 sub_1000DCAA0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DCAB4(uint64_t a1, int a2)
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

uint64_t sub_1000DCAF4(uint64_t result, int a2, int a3)
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

unint64_t sub_1000DCB50()
{
  result = qword_1006CCD10;
  if (!qword_1006CCD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD10);
  }

  return result;
}

uint64_t sub_1000DCBA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000471A4(&qword_1006CCD18);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000DCC08(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000DCC50()
{
  result = qword_1006CCD40;
  if (!qword_1006CCD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RemoteFeatureToggle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x1000DCD70);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalFeatureToggle.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x1000DCE74);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000DCEB0()
{
  result = qword_1006CCD48;
  if (!qword_1006CCD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD48);
  }

  return result;
}

unint64_t sub_1000DCF08()
{
  result = qword_1006CCD50;
  if (!qword_1006CCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD50);
  }

  return result;
}

unint64_t sub_1000DCF60()
{
  result = qword_1006CCD58;
  if (!qword_1006CCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD58);
  }

  return result;
}

unint64_t sub_1000DCFB8()
{
  result = qword_1006CCD60;
  if (!qword_1006CCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD60);
  }

  return result;
}

unint64_t sub_1000DD010()
{
  result = qword_1006CCD68;
  if (!qword_1006CCD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD68);
  }

  return result;
}

unint64_t sub_1000DD068()
{
  result = qword_1006CCD70;
  if (!qword_1006CCD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CCD70);
  }

  return result;
}

uint64_t sub_1000DD0BC()
{
  v3 = *(v0 + 8);
  result = v1;
  v5 = *(v2 - 112);
  return result;
}

void sub_1000DD0E4(uint64_t a1@<X8>)
{

  sub_1000BDFC4(0, a1 + 1, 1);
}

uint64_t sub_1000DD104(unint64_t *a1)
{

  return sub_1000DCBA4(a1);
}

uint64_t sub_1000DD128()
{

  return swift_once();
}

uint64_t sub_1000DD18C()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006DF858);
  sub_100046E6C(v0, qword_1006DF858);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DD214()
{
  sub_1000657D4();
  v0[9] = v1;
  v0[10] = v2;
  v3 = *(*(sub_1000443DC(&qword_1006C9E20) - 8) + 64) + 15;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD2B0, 0, 0);
}

uint64_t sub_1000DD2B0()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 72);
    v3 = type metadata accessor for TaskPriority();
    v4 = (v1 + 40);
    do
    {
      v6 = *(v0 + 88);
      v5 = *(v0 + 96);
      v7 = *(v4 - 1);
      v8 = *v4;
      sub_1000485F8(v5, 1, 1, v3);
      v9 = swift_allocObject();
      v9[2] = 0;
      v10 = v9 + 2;
      v9[3] = 0;
      v9[4] = v7;
      v9[5] = v8;
      sub_10006E754(v5, v6);
      LODWORD(v6) = sub_100046EA4(v6, 1, v3);

      v11 = *(v0 + 88);
      if (v6 == 1)
      {
        sub_1000DDB80(*(v0 + 88));
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(*(v3 - 8) + 8))(v11, v3);
      }

      if (*v10)
      {
        v12 = v9[3];
        v13 = *v10;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = dispatch thunk of Actor.unownedExecutor.getter();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1005CF9F0;
      *(v17 + 24) = v9;

      if (v16 | v14)
      {
        v18 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1000DDB80(v19);
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  v21 = *(v0 + 88);
  v20 = *(v0 + 96);

  sub_10006574C();

  return v22();
}

uint64_t sub_1000DD534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1000640AC;

  return sub_1000DD5D0(a4, a5);
}

uint64_t sub_1000DD5D0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1000DD5F0, 0, 0);
}

uint64_t sub_1000DD5F0()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for PrecomputationSession();
  static ODIServiceProviderId.workflowIdFromServiceProviderId(_:)();
  sub_1000CA51C();
  v0[4] = PrecomputationSession.__allocating_init(workflowID:diskCommand:)();
  v3 = async function pointer to PrecomputationSession.forceCacheProfile()[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1000DD6DC;

  return PrecomputationSession.forceCacheProfile()();
}

uint64_t sub_1000DD6DC()
{
  sub_1000657D4();
  sub_1000657F8();
  v3 = *(v2 + 40);
  v4 = *v1;
  sub_1000655F4();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    v7 = sub_1000DD92C;
  }

  else
  {
    v7 = sub_1000DD7E0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000DD7E0()
{
  if (qword_1006C9850 != -1)
  {
    sub_1000DDCD0();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100046E6C(v2, qword_1006DF858);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *(v9 + 4) = sub_1000DDD10(4.8149e-34);
    sub_1000DDCF0(&_mh_execute_header, v10, v11, "Cached profile for: %s");
    sub_100044850(v14);
    sub_1000488AC();
    sub_1000488AC();
  }

  sub_10006574C();

  return v12();
}

uint64_t sub_1000DD92C()
{
  v1 = v0[4];

  if (qword_1006C9850 != -1)
  {
    sub_1000DDCD0();
  }

  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_100046E6C(v3, qword_1006DF858);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *(v10 + 4) = sub_1000DDD10(4.8149e-34);
    sub_1000DDCF0(&_mh_execute_header, v11, v12, "Failed to cache profile for: %s");
    sub_100044850(v15);
    sub_1000488AC();
    sub_1000488AC();
  }

  sub_10006574C();

  return v13();
}

uint64_t sub_1000DDA80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000DDAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000640AC;

  return sub_1000DD534(a1, v4, v5, v7, v6);
}

uint64_t sub_1000DDB80(uint64_t a1)
{
  v2 = sub_1000443DC(&qword_1006C9E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DDBE0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DDC18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000640AC;

  return sub_10007611C(a1, v5);
}

uint64_t sub_1000DDCD0()
{

  return swift_once();
}

void sub_1000DDCF0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000DDD10(float a1)
{
  *v1 = a1;

  return sub_100052F7C();
}

uint64_t sub_1000DDD30(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D7A88 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CCA0[byte_10064CCF0[(99 * (dword_1006D7A88 ^ 0x89 ^ dword_1006D53C8))] ^ 0xF1]) + 907);
  v3 = 99 * ((dword_1006D53C8 - *v2) ^ 0x89);
  v4 = *(&off_1006B4E30 + (byte_10066CDA0[byte_10064CDF8[v3 - 8] ^ 0xCD] ^ v3) + 1075);
  v5 = (*v4 - *v2) ^ &v8;
  *v2 = 1758147683 * v5 + 0x4D631102543E877;
  *v4 = 1758147683 * (v5 ^ 0xFB29CEEFDABC1789);
  v6 = *(*a1 + 16) + 32 * (*(*a1 + 24) - 1);
  v10 = 961063711 * ((2 * (&v9 & 0x6FD39A0) - &v9 - 117258658) ^ 0x88F60F41) - 1455520778;
  v9 = v6;
  v11 = a2;
  LOBYTE(v4) = 99 * ((*v4 + *v2) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D7A88) ^ 0x89)) ^ byte_10060D0D0[byte_10066CFA0[(99 * ((dword_1006D53C8 - dword_1006D7A88) ^ 0x89))] ^ 0x84]) + 631) + 8 * (byte_10060D0D8[(byte_10066CFA0[v4] ^ 5) - 8] ^ v4) + 99516))(&v9);
  return 0;
}

uint64_t sub_1000DDF50(uint64_t a1, uint64_t a2)
{
  v2 = *(&off_1006B4E30 + ((99 * (dword_1006D5838 ^ 0x89 ^ dword_1006D53C8)) ^ byte_10066CDA0[byte_10064CDF0[(99 * (dword_1006D5838 ^ 0x89 ^ dword_1006D53C8))] ^ 0xCD]) + 1122);
  v3 = *(v2 - 4);
  v4 = *(&off_1006B4E30 + (byte_10060D0D8[(byte_10066CFA0[(99 * (v3 ^ dword_1006D53C8 ^ 0x89))] ^ 5) - 8] ^ (99 * (v3 ^ dword_1006D53C8 ^ 0x89))) + 992);
  v5 = 1758147683 * ((v3 - &v7 + *v4) ^ 0xFB29CEEFDABC1789);
  *(v2 - 4) = v5;
  *v4 = v5;
  v8 = a2;
  v10 = a1 + 144;
  v11 = 844969835 - 784480913 * ((&v8 + 781534342 - 2 * (&v8 & 0x2E954486)) ^ 0x8083EFD);
  LOBYTE(v4) = 99 * ((*v4 + *(v2 - 4)) ^ 0x89);
  (*(*(&off_1006B4E30 + ((99 * ((dword_1006D53C8 - dword_1006D5838) ^ 0x89)) ^ byte_10066CDA0[byte_10064CDF0[(99 * ((dword_1006D53C8 - dword_1006D5838) ^ 0x89))] ^ 0xCE]) + 804) + 8 * (byte_10066CDA0[byte_10064CDF8[v4 - 8] ^ 0xCD] ^ v4) + 99764))(&v8);
  return (v9 - 1801394111);
}

void sub_1000DE14C(uint64_t a1)
{
  v1 = 505507193 * (((a1 | 0xE86E00764F81BB08) - (a1 & 0xE86E00764F81BB08)) ^ 0x347D0AE7240A30C3);
  v2 = *(a1 + 8) + v1;
  v3 = *(a1 + 24) - v1;
  __asm { BRAA            X11, X17 }
}

uint64_t sub_1000DE240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, int a12)
{
  v16 = ((((v12 ^ 0x31370650CD8F97F6) + 0x73BE81DF28ELL) ^ v12 ^ ((v12 ^ 0x356A98C7FF6) + 0x23D8C1E1A8ELL) ^ ((v12 ^ 0xC35ADEF6F5FLL) + 0xD5E887D0A25) ^ ((v12 ^ 0x7A713813D20 ^ (((v15 - 8146) | 0x218) + 7650)) + 0x6CC361378A1)) << 20) ^ 0xE94DA6D9A8400000;
  v17 = (v13 ^ 0xB29D115C65B8EFAELL) & (2 * (v13 & 0xBB1D9461663CEF0FLL)) ^ v13 & 0xBB1D9461663CEF0FLL;
  v18 = ((2 * (v13 ^ 0xB6B4195EA199E7A0)) ^ 0x1B531A7F8F4A115ELL) & (v13 ^ 0xB6B4195EA199E7A0) ^ (2 * (v13 ^ 0xB6B4195EA199E7A0)) & 0xDA98D3FC7A508AELL;
  v19 = v18 ^ 0x4A8850040A508A1;
  v20 = (v18 ^ 0x800000F8100000CLL) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x36A634FF1E9422BCLL) & v19 ^ (4 * v19) & 0xDA98D3FC7A508ACLL;
  v22 = (v21 ^ 0x4A0043F068400A0) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x9098900C1210803)) ^ 0xDA98D3FC7A508AF0) & (v21 ^ 0x9098900C1210803) ^ (16 * (v21 ^ 0x9098900C1210803)) & 0xDA98D3FC7A508A0;
  v24 = (v23 ^ 0x888813C42000800) & (v22 << 8) ^ v22;
  v25 = (((v23 ^ 0x5210C0385A5000FLL) << 8) ^ 0xA98D3FC7A508AF00) & (v23 ^ 0x5210C0385A5000FLL) ^ ((v23 ^ 0x5210C0385A5000FLL) << 8) & 0xDA98D3FC7A50800;
  v26 = v24 ^ 0xDA98D3FC7A508AFLL ^ (v25 ^ 0x9890D0785000000) & (v24 << 16);
  v27 = v16 / ((2 * v13) ^ (4 * ((v26 << 32) & 0xDA98D3F00000000 ^ v26 ^ ((v26 << 32) ^ 0x7A508AF00000000) & (((v25 ^ 0x420803842A500AFLL) << 16) & 0xDA98D3F00000000 ^ 0x80081A00000000 ^ (((v25 ^ 0x420803842A500AFLL) << 16) ^ 0xD3FC7A500000000) & (v25 ^ 0x420803842A500AFLL)))) ^ 0x56193C81D2EDFCA2);
  v28 = 400289179 * ((((2 * &a10) | 0x9A34E902C6E01A70) - &a10 + 0x32E58B7E9C8FF2C8) ^ 0x623686F21AD1FE2FLL);
  a11 = ((v27 ^ 0x7AEFF3777FEBFF3DLL) - 0x4840D17572088211 + ((2 * v27) & 0xF5DFE6EEFFD7FE7ALL)) ^ v28;
  a12 = v15 - v28 - 5762;
  v29 = (*(v14 + 8 * (v15 ^ 0x1184)))(&a10);
  v30 = (a10 - 0x22F346122C67ED1ELL) * (v13 - 0x44E26B9E99C310F1);
  v31 = (v30 >> 21) - ((v30 >> 20) & 0x7A8AE59443ELL) + 0x52E39BD4572CA21FLL;
  LODWORD(v30) = ((v30 - ((((v31 ^ 0x5310F2D025FLL) - 0x7EEFAD310F2D025FLL) ^ ((v31 ^ 0x321ACB4001ELL) - 0x5B2C3321ACB4001ELL) ^ ((v31 ^ 0x5C4F4B5A05ELL) + 0x8DFFA3B0B4A5FA2)) << 21) + 0x5751A6BBC200000) & 0x7FFFFFFFFFF00000) == 0;
  return (*(v14 + 8 * ((8 * v30) | (32 * v30) | v15)))(v29);
}

void sub_1000DED6C(uint64_t a1)
{
  v1 = 961063711 * ((a1 - 2 * (a1 & 0x94254E8) + 155342056) ^ 0x78B69DF7);
  v2 = *(a1 + 24);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000DEE4C@<X0>(unsigned int *a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0x3D0]) = v2;
  v5 = *a1;
  v6 = *(a1 + 4);
  STACK[0x730] = 2224;
  v7 = *(v4 + 8 * (((v6 != 0) | (32 * (v6 != 0))) ^ a2));
  STACK[0x668] = v4;
  STACK[0x260] = a1;
  STACK[0x258] = v3;
  return v7();
}

uint64_t sub_1000DEE9C@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  STACK[0x390] = v6;
  v8 = (((v3 - v4) ^ 0xFFD33DBC) + 431486878) ^ (((v3 - v4) ^ 0x4A607C7) - 490549785) ^ (((a2 + 3849) ^ v2 ^ (v3 - v4) ^ 0x50DD1402) - 1229324693);
  STACK[0x710] = &STACK[0x1140];
  STACK[0x2C8] = v5 + 0x69103689CFE5B30ELL;
  v9 = ((a2 + 2223) ^ 0x1919) + 1305263196;
  LODWORD(STACK[0x2FC]) = v8;
  LODWORD(STACK[0x2F8]) = v9;
  return (*(v7 + 8 * (((8 * (v8 != v9)) | (16 * (v8 != v9))) ^ (a2 + 3849))))(1044992267, a1, 2290933359);
}

uint64_t sub_1000DEF84@<X0>(int a1@<W0>, int a2@<W2>, int a3@<W8>)
{
  v5 = ((a3 + 111) ^ 0xB943799B) + LODWORD(STACK[0x2FC]);
  LODWORD(STACK[0x708]) = a3 + 111;
  LODWORD(STACK[0x700]) = a3 - 1686173361;
  LODWORD(STACK[0x6F8]) = -2113010089;
  LODWORD(STACK[0x6F0]) = 42018562;
  v6 = -a1 - 398329065 * ((STACK[0x700] & 0x6480DFB7) + 1139556838 + (*STACK[0x390] ^ 0xEFDDFBC7) + ((2 * *STACK[0x390]) & 0xFF8F) + 1378508817) + 944584714;
  v7 = (v6 ^ 0xC4689B56) & (2 * (v6 & 0xD6829396)) ^ v6 & 0xD6829396;
  v8 = ((2 * (v6 ^ 0xE969BA7A)) ^ 0x7FD653D8) & (v6 ^ 0xE969BA7A) ^ (2 * (v6 ^ 0xE969BA7A)) & 0x3FEB29EC;
  v9 = v8 ^ 0x292824;
  v10 = (v8 ^ 0x3E0200C8) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xFFACA7B0) & v9 ^ (4 * v9) & 0x3FEB29EC;
  v12 = (v11 ^ 0x3FA821A0) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x43084C)) ^ 0xFEB29EC0) & (v11 ^ 0x43084C) ^ (16 * (v11 ^ 0x43084C)) & 0x3FEB29E0;
  v14 = v12 ^ 0x3FEB29EC ^ (v13 ^ 0x3EA20800) & (v12 << 8);
  v15 = v6 ^ (2 * ((v14 << 16) & 0x3FEB0000 ^ v14 ^ ((v14 << 16) ^ 0x29EC0000) & (((v13 ^ 0x149212C) << 8) & 0x3FEB0000 ^ 0x14C20000 ^ (((v13 ^ 0x149212C) << 8) ^ 0x6B290000) & (v13 ^ 0x149212C)))) ^ 0x198E8C32;
  v16 = 0xFF00FF00FF0100 * (((v15 ^ 0x6DB282441C93A07BLL) - 0x6DB282441C93A07BLL) ^ ((v15 ^ 0x88E1AFB6C60F0B57) + 0x771E504939F0F4A9) ^ ((v15 ^ 0xE5532DF23996E750) + 0x1AACD20DC66918B0)) + 0x27DBA7FABC348705;
  v17 = (2 * (v16 & 0x2FCCAFAE7D9BF400)) & 0x45180B5CDB064000 ^ v16 & 0x2FCCAFAE7D9BF400 ^ ((2 * (v16 & 0x2FCCAFAE7D9BF400)) | 2) & (v16 ^ 0x6AB4A470A695A4E3);
  v18 = (2 * (v16 ^ 0x6AB4A470A695A4E3)) & 0x45780BDEDB0E5000 ^ 0x4508084249025000 ^ ((2 * (v16 ^ 0x6AB4A470A695A4E3)) ^ 0x8AF017BDB61CA020) & (v16 ^ 0x6AB4A470A695A4E3);
  v19 = (4 * v17) & 0x45780BDEDB0E5018 ^ v17 ^ ((4 * v17) | 4) & v18;
  v20 = (4 * v18) & 0x45780BDEDB0E5018 ^ 0x4018008493061018 ^ ((4 * v18) ^ 0x15E02F7B6C394060) & v18;
  v21 = (16 * v19) & 0x45780BDEDB0E5010 ^ v19 ^ ((16 * v19) ^ 0x10) & v20;
  v22 = (16 * v20) & 0x45780BDEDB0E5010 ^ 0x7802124B0A5018 ^ ((16 * v20) ^ 0x5780BDEDB0E50180) & v20;
  v23 = (v21 << 8) & 0x45780BDEDB0E5000 ^ v21 ^ ((v21 << 8) ^ 0x1100) & v22;
  v24 = (v22 << 8) & 0x45780BDEDB0E5000 ^ 0x5700104D10E4018 ^ ((v22 << 8) ^ 0x780BDEDB0E501800) & v22;
  v25 = v23 ^ (v23 << 16) & 0x45780BDEDB0E0000 ^ ((v23 << 16) ^ 0x10110000) & v24 ^ 0x45780BDECB0E4009;
  v26 = v16 ^ (2 * ((v25 << 32) & 0x45780BDE00000000 ^ v25 ^ ((v25 << 32) ^ 0x5B0E501800000000) & ((v24 << 16) & 0x45780BDE00000000 ^ 0x442000D000000000 ^ ((v24 << 16) ^ 0xBDEDB0E00000000) & v24)));
  v27 = ((v26 ^ 0x460BA588CFE1C793) + 0x3A10674086D99DFBLL) ^ ((v26 ^ 0x51B6A784C43C6EEALL) + 0x2DAD654C8D043484);
  LODWORD(v26) = __CFADD__(257 * (v27 ^ ((v26 ^ 0x3091BA2FC05AFDB2) + 0x4C8A78E78962A7DCLL)), 0x6D4D9991BE324E5DLL) + (((v27 ^ ((v26 ^ 0x3091BA2FC05AFDB2uLL) + 0x4C8A78E78962A7DCLL)) * 0x101uLL) >> 64) + 257 * ((__CFADD__(v26 ^ 0x460BA588CFE1C793, 0x3A10674086D99DFBLL) - 1) ^ (__CFADD__(v26 ^ 0x51B6A784C43C6EEALL, 0x2DAD654C8D043484) - 1) ^ (__CFADD__(v26 ^ 0x3091BA2FC05AFDB2, 0x4C8A78E78962A7DCLL) - 1)) + 673196076;
  LODWORD(v26) = v6 ^ v4 ^ ((v6 ^ 0x552CE2A) - 741319232) ^ ((v6 ^ 0x5D1A8DEC) - 1952964998) ^ ((v6 ^ 0x4ACEC057) - 1672719421) ^ ((v6 ^ 0x3BFBEFFB) - 310805393) ^ v26 ^ ((v26 ^ 0x57FCF1F4) - 2145179251) ^ ((v26 ^ 0x31DA5C84) - 435845891) ^ ((v26 ^ 0x61F87148) - 1238914767) ^ ((v26 ^ 0x2FFEFBBF) - 132045880);
  LODWORD(v25) = a2 - (((v3 ^ 0x2943F321) - 692319009) ^ ((v3 ^ 0xC734AFB4) + 952848460) ^ ((v3 ^ 0xCB52AF2) - 213199602)) + (((v26 ^ 0x5DF29F68) - 167831746) ^ ((v26 ^ 0x4FC2A705) - 405852335) ^ ((v26 ^ 0x29D6FACA) - 2116324704));
  v28 = v25 + 833676255;
  LODWORD(v27) = ((v25 + 833676255) ^ 0x9D7AB9E7) & (2 * ((v25 + 833676255) & 0xD97CB9E4)) ^ (v25 + 833676255) & 0xD97CB9E4;
  LODWORD(v26) = ((2 * ((v25 + 833676255) ^ 0x3DB3A9EF)) ^ 0xC99E2016) & ((v25 + 833676255) ^ 0x3DB3A9EF) ^ (2 * ((v25 + 833676255) ^ 0x3DB3A9EF)) & 0xE4CF100A;
  v29 = v26 ^ 0x24411009;
  LODWORD(v26) = (v26 ^ 0xC0860000) & (4 * v27) ^ v27;
  LODWORD(v27) = ((4 * v29) ^ 0x933C402C) & v29 ^ (4 * v29) & 0xE4CF1008;
  LODWORD(v26) = v26 ^ 0xE4CF100B ^ (v27 ^ 0x800C0003) & (16 * v26);
  LODWORD(v27) = (16 * (v27 ^ 0x64C31003)) & 0xE4CF1000 ^ 0xA00E100B ^ ((16 * (v27 ^ 0x64C31003)) ^ 0x4CF100B0) & (v27 ^ 0x64C31003);
  LODWORD(v26) = (v26 << 8) & 0xE4CF1000 ^ v26 ^ ((v26 << 8) ^ 0xCF100B00) & v27;
  LODWORD(v26) = (v25 + 833676255) ^ v3 ^ (2 * ((v26 << 16) & 0x64CF0000 ^ v26 ^ ((v26 << 16) ^ 0x100B0000) & ((v27 << 8) & 0xE4CF0000 ^ 0x20CF0000 ^ ((v27 << 8) ^ 0xCF100000) & v27)));
  LODWORD(v26) = ((v26 ^ 0xDCA2AB9F) - 1950822492) ^ ((v26 ^ 0xE5C4E7AF) - 1294040172) ^ ((v26 ^ 0x4350A3A5) + 340445082);
  LODWORD(v27) = (((v4 ^ 0xE042A78C) + 532502644) ^ ((v4 ^ 0x641744E9) - 1679246569) ^ ((v4 ^ 0xBEEE6A2F) + 1091671505)) - v25 - 1725275831;
  v30 = ((v27 ^ 0x83CA9E27) + 363402267) ^ v27 ^ ((v27 ^ 0xC2CFB16) - 1706069716) ^ ((v27 ^ 0x39C76F08) - 1348147914) ^ ((v27 ^ 0xDFBD7FFB) + 1239348679);
  LODWORD(v25) = v25 + 833676255 + a2;
  v31 = (v25 ^ 0xDE65DD25) & (2 * (v25 & 0x9F619DB5)) ^ v25 & 0x9F619DB5;
  LODWORD(v27) = ((2 * (v25 ^ 0xC665EE2D)) ^ 0xB208E730) & (v25 ^ 0xC665EE2D) ^ (2 * (v25 ^ 0xC665EE2D)) & 0x59047398;
  v32 = v27 ^ 0x49041088;
  LODWORD(v27) = (v27 ^ 0x10006310) & (4 * v31) ^ v31;
  v33 = ((4 * v32) ^ 0x6411CE60) & v32 ^ (4 * v32) & 0x59047398;
  LODWORD(v27) = (v33 ^ 0x40004208) & (16 * v27) ^ v27;
  v34 = ((16 * (v33 ^ 0x19043198)) ^ 0x90473980) & (v33 ^ 0x19043198) ^ (16 * (v33 ^ 0x19043198)) & 0x59047390;
  LODWORD(v27) = v27 ^ 0x59047398 ^ (v34 ^ 0x10043100) & (v27 << 8);
  HIDWORD(v35) = ((v28 ^ 0xBE3ED2A4) + 658664264) ^ v28 ^ ((v28 ^ 0x21E48040) + 949500324) ^ ((v28 ^ 0x726EB57) + 509235893) ^ ((v28 ^ 0x3E7FFFAF) + 654526029);
  LODWORD(v35) = ((v28 ^ 0x75FC1B99) - 1400855941) ^ v28 ^ ((v28 ^ 0xA9968CCE) + 1894397230) ^ ((v28 ^ 0xF16BEB0) - 697694376) ^ ((v28 ^ 0xF5FF6FFF) + 746837533);
  LODWORD(v27) = v25 ^ (2 * ((v27 << 16) & 0x59040000 ^ v27 ^ ((v27 << 16) ^ 0x73980000) & (((v34 ^ 0x49004218) << 8) & 0x59040000 ^ 0x59040000 ^ (((v34 ^ 0x49004218) << 8) ^ 0x4730000) & (v34 ^ 0x49004218))));
  LODWORD(v25) = (((v30 ^ (v35 >> 30) ^ 0xA8B9AE2E) + 1089102028) ^ ((v30 ^ (v35 >> 30) ^ 0x4E89A5CD) - 1495635159) ^ ((v30 ^ (v35 >> 30) ^ 0x15A16651) - 34428747)) - v26 + 1357201873;
  v36 = (v25 ^ 0xB072063C) & (2 * (v25 & 0xC084A681)) ^ v25 & 0xC084A681;
  v37 = ((2 * (v25 ^ 0x31724E3E)) ^ 0xE3EDD17E) & (v25 ^ 0x31724E3E) ^ (2 * (v25 ^ 0x31724E3E)) & 0xF1F6E8BE;
  v38 = v37 ^ 0x10122881;
  v39 = (v37 ^ 0x24800C) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0xC7DBA2FC) & v38 ^ (4 * v38) & 0xF1F6E8BC;
  v41 = (v40 ^ 0xC1D2A0B0) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x30244803)) ^ 0x1F6E8BF0) & (v40 ^ 0x30244803) ^ (16 * (v40 ^ 0x30244803)) & 0xF1F6E8B0;
  v43 = v41 ^ 0xF1F6E8BF ^ (v42 ^ 0x11668800) & (v41 << 8);
  v44 = v25 ^ (2 * ((v43 << 16) & 0x71F60000 ^ v43 ^ ((v43 << 16) ^ 0x68BF0000) & (((v42 ^ 0xE090600F) << 8) & 0x71F60000 ^ 0x1160000 ^ (((v42 ^ 0xE090600F) << 8) ^ 0x76E80000) & (v42 ^ 0xE090600F))));
  LODWORD(v27) = v27 ^ v44;
  LODWORD(v25) = v27 ^ 0x8E61A5A4;
  v45 = v27 ^ 0x399F654B;
  v46 = (v27 ^ 0x399F654B) & 0x2FB2F407 ^ (v27 ^ 0xE61A5A4) & (v30 ^ 0x462E81C5);
  v47 = v26 - (v27 ^ 0x8E61A5A4) + 401161169;
  LODWORD(v27) = (v47 ^ 0xB2CA3655) & (2 * (v47 & 0xBAEA3885)) ^ v47 & 0xBAEA3885;
  LODWORD(v26) = ((2 * (v47 ^ LODWORD(STACK[0x6F8]))) ^ 0x71C87DA4) & (v47 ^ LODWORD(STACK[0x6F8])) ^ (2 * (v47 ^ LODWORD(STACK[0x6F8]))) & 0x38E43ED2;
  v48 = v26 ^ 0x8240252;
  LODWORD(v26) = (v26 ^ 0x30C02400) & (4 * v27) ^ v27;
  LODWORD(v27) = ((4 * v48) ^ 0xE390FB48) & v48 ^ (4 * v48) & 0x38E43ED0;
  LODWORD(v26) = (v27 ^ 0x20803A40) & (16 * v26) ^ v26;
  LODWORD(v27) = ((16 * (v27 ^ 0x18640492)) ^ 0x8E43ED20) & (v27 ^ 0x18640492) ^ (16 * (v27 ^ 0x18640492)) & 0x38E43ED0;
  LODWORD(v26) = v26 ^ 0x38E43ED2 ^ (v27 ^ 0x8402C00) & (v26 << 8);
  LODWORD(v27) = (v26 << 16) & 0x38E40000 ^ v26 ^ ((v26 << 16) ^ 0x3ED20000) & (((v27 ^ 0x30A412D2) << 8) & 0x38E40000 ^ 0x18C00000 ^ (((v27 ^ 0x30A412D2) << 8) ^ 0xE43E0000) & (v27 ^ 0x30A412D2));
  v49 = ((2 * v46) ^ 0x4F65800E) + (v30 ^ 0xDE62B52D ^ v45);
  HIDWORD(v35) = v25;
  LODWORD(v35) = v25;
  LODWORD(v25) = v44 ^ v47 ^ (v49 + (v35 >> 30)) ^ (2 * v27) ^ 0xBBAA9A00;
  LODWORD(v26) = v25 + 2132511006;
  v50 = v49 - v25;
  v51 = (v25 + 2132511006) ^ 0x1188988D;
  LODWORD(v25) = (v25 + 2132511006) & 0xA63D46F7;
  v52 = ((2 * v51) ^ 0x6F6BBCF4) & v51 ^ (2 * v51) & 0xB7B5DE7A;
  v53 = v52 ^ 0x9094420A;
  v54 = (v52 ^ 0x21215C72) & (4 * ((2 * v25) & (v26 ^ 0x15B814E7) ^ v25)) ^ (2 * v25) & (v26 ^ 0x15B814E7) ^ v25;
  v55 = ((4 * v53) ^ 0xDED779E8) & v53 ^ (4 * v53) & 0xB7B5DE78;
  v56 = (v55 ^ 0x96955860) & (16 * v54) ^ v54;
  v57 = ((16 * (v55 ^ 0x21208612)) ^ 0x7B5DE7A0) & (v55 ^ 0x21208612) ^ (16 * (v55 ^ 0x21208612)) & 0xB7B5DE70;
  v58 = v56 ^ 0xB7B5DE7A ^ (v57 ^ 0x3315C600) & (v56 << 8);
  LODWORD(v27) = v26 ^ v47 ^ (2 * (v58 ^ v27 ^ (v58 << 16) & 0x37B50000 ^ ((v58 << 16) ^ 0x5E7A0000) & (((v57 ^ 0x84A0185A) << 8) & 0x37B50000 ^ 0x2210000 ^ (((v57 ^ 0x84A0185A) << 8) ^ 0x35DE0000) & (v57 ^ 0x84A0185A))));
  v59 = ((v27 ^ 0x6D7BA85D) + 1416811965) ^ ((v27 ^ 0x67116E2D) + 1578636237) ^ ((v27 ^ 0x55FE7952) + 1828127924);
  LODWORD(v27) = ((2 * (v26 ^ 0xA8E5512A)) ^ 0x1DB02FBA) & (v26 ^ 0xA8E5512A) ^ (2 * (v26 ^ 0xA8E5512A)) & 0xED817DC;
  v60 = v27 ^ 0x2481045;
  LODWORD(v27) = (v27 ^ 0x8900798) & (4 * ((2 * v25) & (v26 ^ 0xA4BD54E6) ^ v25)) ^ (2 * v25) & (v26 ^ 0xA4BD54E6) ^ v25;
  v61 = ((4 * v60) ^ 0x3B605F74) & v60 ^ (4 * v60) & 0xED817DC;
  LODWORD(v27) = (v61 ^ 0xA401750) & (16 * v27) ^ v27;
  v62 = ((16 * (v61 ^ 0x4980089)) ^ 0xED817DD0) & (v61 ^ 0x4980089) ^ (16 * (v61 ^ 0x4980089)) & 0xED817D0;
  LODWORD(v27) = v27 ^ 0xED817DD ^ (v62 ^ 0xC801500) & (v27 << 8);
  v63 = v44 ^ 0x108DF21;
  v64 = (v27 << 16) & 0x6D80000 ^ v27 ^ ((v27 << 16) ^ 0x7DD0000) & (((v62 ^ 0x258020D) << 8) & 0x6D80000 ^ 0x6C80000 ^ (((v62 ^ 0x258020D) << 8) ^ 0x170000) & (v62 ^ 0x258020D));
  LODWORD(v27) = ((2 * (v26 ^ 0xFFDDA89D)) ^ 0xB3C1DCD4) & (v26 ^ 0xFFDDA89D) ^ (2 * (v26 ^ 0xFFDDA89D)) & 0x59E0EE6A;
  v65 = v27 ^ 0x4820222A;
  LODWORD(v27) = (v27 ^ 0x11C00C40) & (4 * ((2 * v25) & (v26 ^ 0xB7BD24F7) ^ v25)) ^ (2 * v25) & (v26 ^ 0xB7BD24F7) ^ v25;
  LODWORD(v25) = ((4 * v65) ^ 0x6783B9A8) & v65 ^ (4 * v65) & 0x59E0EE68;
  LODWORD(v27) = (v25 ^ 0x4180A820) & (16 * v27) ^ v27;
  LODWORD(v25) = ((16 * (v25 ^ 0x18604642)) ^ 0x9E0EE6A0) & (v25 ^ 0x18604642) ^ (16 * (v25 ^ 0x18604642)) & 0x59E0EE60;
  v66 = v27 ^ 0x59E0EE6A ^ (v25 ^ 0x1800E600) & (v27 << 8);
  v67 = ((v66 << 16) ^ 0xEFFFFFFF) & (((v25 ^ 0x41E0084A) << 8) & 0x59E00000 ^ (((v25 ^ 0x41E0084A) << 8) ^ 0xE0EE0000) & (v25 ^ 0x41E0084A) ^ 0x18000000);
  v68 = v26 + v63;
  LODWORD(v26) = ((32 * v64) ^ (16 * v26)) & 0xFFFFFFF0 | ((v26 ^ (2 * ((v66 << 16) & 0xDFFFFFFF ^ v66 ^ v67))) >> 28);
  v69 = ((v50 - 1090728418) ^ 0x130151EC) & (2 * ((v50 - 1090728418) & 0x1BAA61CD)) ^ (v50 - 1090728418) & 0x1BAA61CD;
  v70 = ((2 * ((v50 - 1090728418) ^ 0x1201D3EC)) ^ 0x13576442) & ((v50 - 1090728418) ^ 0x1201D3EC) ^ (2 * ((v50 - 1090728418) ^ 0x1201D3EC)) & 0x9ABB220;
  v71 = v70 ^ 0x8A89221;
  v72 = (v70 ^ 0x1030000) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0x26AEC884) & v71 ^ (4 * v71) & 0x9ABB220;
  v74 = (v73 ^ 0xAA8000) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x9013221)) ^ 0x9ABB2210) & (v73 ^ 0x9013221) ^ (16 * (v73 ^ 0x9013221)) & 0x9ABB220;
  v76 = v74 ^ 0x9ABB221 ^ (v75 ^ 0x8AB2221) & (v74 << 8);
  v77 = (v76 << 16) & 0x9AB0000 ^ v76 ^ ((v76 << 16) ^ 0x32210000) & (((v75 ^ 0x1009021) << 8) & 0x9AB0000 ^ 0x90000 ^ (((v75 ^ 0x1009021) << 8) ^ 0x2BB20000) & (v75 ^ 0x1009021));
  LODWORD(v26) = ((((v50 - 1090728418) ^ (2 * v77) ^ v26 ^ 0x66404CC6) + 1413298715) ^ (((v50 - 1090728418) ^ (2 * v77) ^ v26 ^ 0xD2B45BBD) - 523686558) ^ (((v50 - 1090728418) ^ (2 * v77) ^ v26 ^ 0xDF9D862C) - 304025359)) - v59 + 1074659636;
  v78 = ((v26 ^ 0xC49DA4AE) + 166166190) ^ v26 ^ ((v26 ^ 0x2D845AC6) - 520191802) ^ ((v26 ^ 0x2441246B) - 381944215) ^ ((v26 ^ 0xFFDDFFFF) + 849815037);
  v80 = v5 > 0x7102A98;
  if (v5 < 0x7102A97)
  {
    v80 = 1;
  }

  v79 = ((v68 ^ 0x21875C2A) - 2017846563) ^ v68 ^ ((v68 ^ 0xAA544EF5) + 208209924) ^ ((v68 ^ 0x2FFE543D) - 1983704372) ^ ((v68 ^ 0xFDEFFFEB) + 1540536606) ^ v78;
  v81 = ((v79 ^ 0x15241632) - 272356581) ^ ((v79 ^ 0x18734361) - 493650358) ^ ((v79 ^ 0x8489784) - 223827283);
  v82 = ((v78 ^ 0x56D5CE99) - 168342855) ^ ((v78 ^ 0x64B250E) - 1519804112) ^ ((v78 ^ 0xC439049) - 1352592279);
  v83 = v59 - v81 - 649369486;
  v84 = (v83 ^ 0xFEC6C288) & (2 * (v83 & 0xC016D4CA)) ^ v83 & 0xC016D4CA;
  v85 = (((2 * (v83 ^ 0xFEC3630C)) ^ 0x7DAB6F8C) & (v83 ^ 0xFEC3630C) ^ (2 * (v83 ^ 0xFEC3630C)) & 0x3ED5B7C6 ^ LODWORD(STACK[0x6F0])) & (4 * v84) ^ v84;
  return (*(STACK[0x668] + 8 * (LODWORD(STACK[0x708]) ^ (32 * !v80))))((v81 + 1051129889), 1493434368, (v82 + 974855215), 3082149498, 1507913322, 1493463960);
}

uint64_t sub_1000E093C()
{
  v4 = v0 - 2224;
  v5 = &STACK[0x830] + STACK[0x718];
  STACK[0x718] += 1072;
  (*(v2 + 8 * (v1 ^ 0x1C68)))(*(v3 + 8 * (v1 - 10805)) - 12, &STACK[0xCF0] + v0 - 2224, 16);
  v6 = (*(v2 + 8 * (v1 + 920)))(*(v3 + 8 * (v1 ^ 0x2E36)) - 8, v5, 560);
  STACK[0x730] = v4;
  STACK[0x758] = &STACK[0x7E0];
  STACK[0x738] = &STACK[0x5AFD71E16DF86525];
  STACK[0x748] = &STACK[0x7E0];
  return (*(v2 + 8 * (((((19 * (v1 ^ 0xA4)) ^ (v5 == 0)) & 1) * (v1 - 11621)) ^ v1)))(v6);
}

uint64_t sub_1000E0A50()
{
  v2 = v0 - 5146;
  v3 = (v0 + 1952213960) & 0x8BA376D7;
  STACK[0x750] = 0;
  v4 = v0 + 4290;
  STACK[0x750] = (*(v1 + 8 * (v0 + 4290)))(1028);
  v5 = (*(v1 + 8 * v4))(1028);
  STACK[0x740] = v5;
  if (v5)
  {
    v6 = STACK[0x750] == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v1 + 8 * ((v7 * (v3 ^ 0x2F6)) | v2)))();
}

uint64_t sub_1000E0AD0()
{
  v3 = v1 ^ 0x1658;
  v5 = -1802333311 * (v4 + 2016);
  v6 = *(v2 + 8 * (v1 ^ 0xF7)) - 4;
  STACK[0x4E8] = v6;
  v7 = *(v6 + ((v1 ^ 0x229) & v5 ^ 0xBLL)) + 62;
  v8 = HIBYTE(v5);
  v9 = HIWORD(v5);
  v10 = *(v2 + 8 * (v1 + 142));
  STACK[0x4F0] = v10;
  LODWORD(STACK[0x710]) = ((BYTE1(v5) ^ 0x9E) + *(v10 + (BYTE1(v5) ^ 0x69)) - 122);
  v11 = *(v2 + 8 * (v1 - 502)) - 4;
  STACK[0x4D8] = v11;
  v12 = *(v11 + (BYTE2(v5) ^ 0xALL));
  v13 = *(v2 + 8 * (v1 - 506)) - 4;
  STACK[0x4E0] = v13;
  LODWORD(v8) = *(v13 + (v8 ^ 0xBA));
  v14 = (((v12 ^ (((2 * v9) ^ 0xD2) - 77)) << 16) ^ 0x75C59F60) & (v7 ^ 0x7DFFDFEF) | v7 & 0x9F;
  LODWORD(STACK[0x708]) = v14 ^ 0x8526087;
  LODWORD(STACK[0x700]) = v14 & 0x4AD0058;
  v15 = (v8 ^ 0x2E) << 24;
  v16 = (STACK[0x828] & 1) == 0;
  LODWORD(STACK[0x6F8]) = v15 ^ 0x4CFFFFFF;
  LODWORD(v16) = *(v0 + 8 * (*(v0 + 8 * ((*(v0 + 8 * v16 - 0x5AFD71E16DF85D05) & 1) == 0) - 0x5AFD71E16DF85D05) & 1) - 0x5AFD71E16DF85D05);
  LODWORD(STACK[0x6F0]) = v15 & 0x35000000;
  if (v16)
  {
    v17 = 974732955;
  }

  else
  {
    v17 = 974732954;
  }

  v18 = ((v17 ^ 0x6CDB13BE) + 1455914854) ^ ((v17 ^ 0xA09F2CD3) - 1702674423) ^ ((v17 ^ 0xF65D01F6) - 868127442);
  v19 = v18 == 348736;
  v20 = 8 * (((v3 + 2032510220) & 0x86DA5FF7) + 0x5C2FDEEA8F9B9127) + 0x1E8108AB8322AA38;
  *(&STACK[0x7E0] + v20) = *(&STACK[0x820] + v20) ^ 0x5D5D5D5D5D5D5D5DLL;
  if (v18 != 348736)
  {
    v19 = v18 - 1054039932 > 0xC131F2C6;
  }

  return (*(STACK[0x668] + 8 * ((53 * v19) ^ v3)))();
}

uint64_t sub_1000E1620(int a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x6F8]) = v5;
  LODWORD(STACK[0x6A8]) = v4;
  LODWORD(STACK[0x3B4]) = a1;
  LODWORD(STACK[0x3E0]) = a3;
  STACK[0x310] = &STACK[0x1500];
  STACK[0x358] = 0;
  STACK[0x5B8] = 0;
  STACK[0x308] = &STACK[0x1550];
  v6 = LODWORD(STACK[0x2FC]) == LODWORD(STACK[0x2F8]);
  STACK[0x2D0] = 0x69103689CFE5B30ELL;
  v7 = *(STACK[0x668] + 8 * ((((38 * (v3 ^ 0x799) - 56040771) & 0x3571F6C ^ 0xCE) * v6) ^ v3));
  LODWORD(STACK[0x5A8]) = 395823424;
  return v7();
}

uint64_t sub_1000E16DC()
{
  STACK[0x358] = 0;
  STACK[0x5B8] = 0;
  v4 = v1 ^ 0x778;
  v5 = LODWORD(STACK[0x2FC]) - 1823215708;
  v6 = -(((v0 ^ 0xF38DF564) + 208800412) ^ ((v0 ^ 0x64C1A0B5) - 1690411189) ^ ((((v4 - 2490) | 0x258) ^ v0 ^ 0x40A75308) - 1084708338)) - 398329065 * ((*STACK[0x390] ^ 0xE97FBF5B) + 1051129889 + ((2 * *STACK[0x390]) & 0xB6) + 1230608515);
  v7 = (v6 - 537859660) ^ LODWORD(STACK[0x5A8]) ^ (((v6 - 537859660) ^ 0xC337CFDF) + 2047377910) ^ (((v6 - 537859660) ^ 0x976D3417) + 777157182) ^ (((v6 - 537859660) ^ 0x6D65B54A) - 732234911) ^ (((v6 - 537859660) ^ 0x7FFFFF57) - 960450178) ^ ((v6 - 1724893217) % 0x101);
  v8 = (((v2 ^ 0xD2375ED4) + 768123180) ^ ((v2 ^ 0xE17F4CC) - 236451020) ^ ((v2 ^ 0x4F542806) - 1330915334)) - v3 + (((v7 ^ 0x52C9C8BA) - 576658871) ^ ((v7 ^ 0xE5D03AB) - 2127287974) ^ ((v7 ^ 0x4DF3D655) - 1030030168));
  v9 = v8 + 1199708191;
  v10 = v3 & 0xAC95572E;
  v11 = 2 * (v3 & 0xAC95572E);
  v12 = v3;
  v13 = ((2 * (v3 ^ 0xB41072F8)) ^ 0x310A4BAC) & (v3 ^ 0xB41072F8) ^ (2 * (v3 ^ 0xB41072F8)) & 0x188525D6;
  v14 = v13 ^ 0x8852452;
  v15 = (v13 ^ 0x18000182) & (4 * (v11 & (v3 ^ 0xAC1056AC) ^ v3 & 0xAC95572E)) ^ v11 & (v3 ^ 0xAC1056AC) ^ v3 & 0xAC95572E;
  v16 = ((4 * v14) ^ 0x62149758) & v14 ^ (4 * v14) & 0x188525D4;
  v17 = (v16 ^ 0x40546) & (16 * v15) ^ v15;
  v18 = ((16 * (v16 ^ 0x18812086)) ^ 0x88525D60) & (v16 ^ 0x18812086) ^ (16 * (v16 ^ 0x18812086)) & 0x188525D0;
  v19 = v17 ^ 0x188525D6 ^ (v18 ^ 0x8000596) & (v17 << 8);
  v20 = v12 ^ (2 * ((v19 << 16) & 0x18850000 ^ v19 ^ ((v19 << 16) ^ 0x25D60000) & (((v18 ^ 0x10852096) << 8) & 0x18850000 ^ 0x18800000 ^ (((v18 ^ 0x10852096) << 8) ^ 0x5250000) & (v18 ^ 0x10852096)))) ^ v9 ^ ((v9 ^ 0x71F1FF71) - 860575467) ^ ((v9 ^ 0xFA61E074) + 1193588242) ^ ((v9 ^ 0xBEC549E0) + 58728326) ^ ((v9 ^ 0x77EFFF7F) - 894785253);
  HIDWORD(v21) = v8 + 1153920645;
  LODWORD(v21) = v8 + 80178821;
  v22 = v8 + 647616723 - (((v20 ^ 0xD69C2A74) + 1163481558) ^ ((v20 ^ 0x17B99CE6) - 2072189112) ^ ((v20 ^ 0x1F08038A) - 1932691412)) + 1326142216;
  v23 = (v22 ^ 0x98E21D64) & (2 * (v22 & 0xDD0B1164)) ^ v22 & 0xDD0B1164;
  v24 = ((2 * (v22 ^ 0xE23D64)) ^ 0xBBD25800) & (v22 ^ 0xE23D64) ^ (2 * (v22 ^ 0xE23D64)) & 0xDDE92C00;
  v25 = v24 ^ 0x44292400;
  v26 = (v24 ^ 0x98400800) & (4 * v23) ^ v23;
  v27 = ((4 * v25) ^ 0x77A4B000) & v25 ^ (4 * v25) & 0xDDE92C00;
  v28 = v26 ^ 0xDDE92C00 ^ (v27 ^ 0x55A02000) & (16 * v26);
  v29 = (16 * (v27 ^ 0x88490C00)) & 0xDDE92C00 ^ 0x1692C00 ^ ((16 * (v27 ^ 0x88490C00)) ^ 0xDE92C000) & (v27 ^ 0x88490C00);
  v30 = (v28 << 8) & 0xDDE92C00 ^ v28 ^ ((v28 << 8) ^ 0xE92C0000) & v29;
  v31 = (v30 << 16) & 0x5DE90000 ^ v30 ^ ((v30 << 16) ^ 0x2C000000) & ((v29 << 8) & 0x5DE90000 ^ 0x14C10000 ^ ((v29 << 8) ^ 0xE92C0000) & v29);
  v32 = v11 & (v12 ^ 0xAEC4472F) ^ v10;
  v33 = ((2 * (v12 ^ 0xA7CCEF3F)) ^ 0x16B37022) & (v12 ^ 0xA7CCEF3F) ^ (2 * (v12 ^ 0xA7CCEF3F)) & 0xB59B810;
  v34 = v33 ^ 0x9488811;
  v35 = (v33 ^ 0xB113000) & (4 * v32) ^ v32;
  v36 = ((4 * v34) ^ 0x2D66E044) & v34 ^ (4 * v34) & 0xB59B810;
  v37 = (v36 ^ 0x940A010) & (16 * v35) ^ v35;
  v38 = ((16 * (v36 ^ 0x2191811)) ^ 0xB59B8110) & (v36 ^ 0x2191811) ^ (16 * (v36 ^ 0x2191811)) & 0xB59B810;
  v39 = v37 ^ 0xB59B811 ^ (v38 ^ 0x1198000) & (v37 << 8);
  v40 = (v39 << 16) & 0xB590000 ^ v39 ^ ((v39 << 16) ^ 0x38110000) & (((v38 ^ 0xA403801) << 8) & 0xB590000 ^ 0x2410000 ^ (((v38 ^ 0xA403801) << 8) ^ 0x59B80000) & (v38 ^ 0xA403801));
  v41 = (((LODWORD(STACK[0x5A8]) ^ 0x2F6DC345) - 795722565) ^ ((LODWORD(STACK[0x5A8]) ^ 0x3A9BF0E8) - 983298280) ^ ((LODWORD(STACK[0x5A8]) ^ 0x42519F3C) - 1112645436)) - (v8 + 647616723);
  v42 = v41 - 2147115713;
  v43 = (1995168904 - v12) ^ v12 ^ (((1995168904 - v12) ^ 0xDC4458F3) + 3839163) ^ (((1995168904 - v12) ^ 0x5564BB60) - 1994754262) ^ (((1995168904 - v12) ^ 0x555C2BDA) - 1994201196) ^ (((1995168904 - v12) ^ 0xFFFDFBFF) + 595802039) ^ (2 * v40) ^ v22 ^ (2 * v31);
  v44 = (v42 ^ 0xFC777DBB) & (2 * (v42 & 0xF97479A0)) ^ v42 & 0xF97479A0;
  v45 = ((2 * (v42 ^ 0x5E7F7DFB)) ^ 0x4E1608B6) & (v42 ^ 0x5E7F7DFB) ^ (2 * (v42 ^ 0x5E7F7DFB)) & 0xA70B045A;
  v46 = v45 ^ 0xA1090449;
  v47 = (v45 ^ 0x6020000) & (4 * v44) ^ v44;
  v48 = ((4 * v46) ^ 0x9C2C116C) & v46 ^ (4 * v46) & 0xA70B0458;
  v49 = v47 ^ 0xA70B045B ^ (v48 ^ 0x84080040) & (16 * v47);
  v50 = (16 * (v48 ^ 0x23030413)) & 0xA70B0450 ^ 0x870B004B ^ ((16 * (v48 ^ 0x23030413)) ^ 0x70B045B0) & (v48 ^ 0x23030413);
  v51 = (v49 << 8) & 0xA70B0400 ^ v49 ^ ((v49 << 8) ^ 0xB045B00) & v50;
  v52 = (((v2 ^ 0xC1E04AD8) + 1042265384) ^ ((v2 ^ 0x7B043EF3) - 2063875827) ^ ((v2 ^ 0x2990F635) - 697366069)) - 1650197048 + v8 + 1199708191;
  v53 = v8 + 360293911 + (((v43 ^ 0xB5427D1C) - 83626760) ^ ((v43 ^ 0xD77C9531) - 1724048165) ^ ((v43 ^ 0x732B5F3) + 1232288793));
  v54 = ((v41 - 2147115713) ^ ((v21 >> 30) - ((2 * (v21 >> 30)) & 0x7CDAA16C) + 1047351478) ^ (2 * ((v51 << 16) & 0x270B0000 ^ v51 ^ ((v51 << 16) ^ 0x45B0000) & ((v50 << 8) & 0xA70B0000 ^ 0x240B0000 ^ ((v50 << 8) ^ 0xB040000) & v50))) ^ 0x871921A0) - v53 + 1006635976;
  v55 = v52 ^ ((v52 ^ 0x1B708059) - 1469752605) ^ ((v52 ^ 0x1468832D) - 1484957289) ^ ((v52 ^ 0x3C8DD98C) - 1885863112) ^ ((v52 ^ 0x7F7FFFBC) - 865458936) ^ 0x9EB489B6 ^ (v54 - ((2 * v54) & 0x62A60858) + 827524140);
  v56 = v41 + 2038044383 + v55;
  v57 = (v54 - ((2 * v54) & 0x8E0B494E) + 1191552167) ^ 0xA4080C79;
  v58 = (v53 - v55) ^ (((v53 - v55) ^ 0x6DBDAC8D) - 1371383621) ^ (((v53 - v55) ^ 0x9558E1AD) + 1453790619) ^ (((v53 - v55) ^ 0x3A1B39B7) - 102445695) ^ (((v53 - v55) ^ 0xFEFE7F5F) + 1023511401) ^ 0x4561720E;
  HIDWORD(v21) = v55;
  LODWORD(v21) = v55;
  v59 = (v58 ^ (((v56 + (v21 >> 30)) ^ v57) - ((2 * ((v56 + (v21 >> 30)) ^ v57)) & 0xF2C2F38C) + 2036431302)) + 1243149514;
  v60 = (v59 ^ 0xD2BFD223) & (2 * (v59 & 0xDB3FDB4B)) ^ v59 & 0xDB3FDB4B;
  v61 = ((2 * (v59 ^ 0x74E0E435)) ^ 0x5FBE7EFC) & (v59 ^ 0x74E0E435) ^ (2 * (v59 ^ 0x74E0E435)) & 0xAFDF3F7E;
  v62 = v61 ^ 0xA0410102;
  v63 = (v61 ^ 0xD9E3E7C) & (4 * v60) ^ v60;
  v64 = ((4 * v62) ^ 0xBF7CFDF8) & v62 ^ (4 * v62) & 0xAFDF3F7C;
  v65 = (v64 ^ 0xAF5C3D70) & (16 * v63) ^ v63;
  v66 = ((16 * (v64 ^ 0x830206)) ^ 0xFDF3F7E0) & (v64 ^ 0x830206) ^ (16 * (v64 ^ 0x830206)) & 0xAFDF3F70;
  v67 = v65 ^ 0xAFDF3F7E ^ (v66 ^ 0xADD33700) & (v65 << 8);
  v68 = v59 ^ (2 * ((v67 << 16) & 0x2FDF0000 ^ v67 ^ ((v67 << 16) ^ 0x3F7E0000) & (((v66 ^ 0x20C081E) << 8) & 0x2FDF0000 ^ 0x20C00000 ^ (((v66 ^ 0x20C081E) << 8) ^ 0x5F3F0000) & (v66 ^ 0x20C081E))));
  v69 = (v68 ^ 0xDA3DA5B7) + v57;
  v70 = v5 < (v4 ^ 0xE120BDEA) || v5 > 0xE120B3B7;
  HIDWORD(v71) = v68 ^ 0xA3DA5B7;
  LODWORD(v71) = v68 ^ 0xD0000000;
  v72 = ((2 * (v56 + (v68 ^ 0xDA3DA5B7) + ((2 * v68) ^ 0x4B84B491) + 1)) & 0xBFAF2FFE) + ((v56 + (v68 ^ 0xDA3DA5B7) + ((2 * v68) ^ 0x4B84B491) + 1) ^ 0x5FD797FF);
  v73 = (((v71 >> 28) - ((2 * (v71 >> 28)) & 0x90D7A7FE) + 1215026175) ^ (v72 - 1107432076) ^ (((v72 - 1107432076) ^ 0x9B843401) + 2041466510) ^ (((v72 - 1107432076) ^ 0xDC7D016A) + 1045920743) ^ (((v72 - 1107432076) ^ 0x25E35EE5) - 943119254) ^ (((v72 - 1107432076) ^ 0x7FCFEEFD) - 1645898638) ^ 0x55BE568C) - (((v68 ^ v58 ^ 0xF81B7BD6) - 161558381) ^ ((v68 ^ v58 ^ 0x5B899569) + 1439448622) ^ ((v68 ^ v58 ^ 0xCE32CE) + 244029835)) - 1129925923;
  v74 = (v73 ^ 0xF7708350) & (2 * (v73 & 0xF072C459)) ^ v73 & 0xF072C459;
  v75 = ((2 * (v73 ^ 0xB79003C0)) ^ 0x8FC58F32) & (v73 ^ 0xB79003C0) ^ (2 * (v73 ^ 0xB79003C0)) & 0x47E2C798;
  v76 = v75 ^ 0x40224089;
  v77 = (v75 ^ 0x3C00300) & (4 * v74) ^ v74;
  v78 = ((4 * v76) ^ 0x1F8B1E64) & v76 ^ (4 * v76) & 0x47E2C798;
  v79 = (v78 ^ 0x7820609) & (16 * v77) ^ v77;
  v80 = ((16 * (v78 ^ 0x4060C199)) ^ 0x7E2C7990) & (v78 ^ 0x4060C199) ^ (16 * (v78 ^ 0x4060C199)) & 0x47E2C790;
  v81 = v79 ^ 0x47E2C799 ^ (v80 ^ 0x46204100) & (v79 << 8);
  v82 = v73 ^ (2 * ((v81 << 16) & 0x47E20000 ^ v81 ^ ((v81 << 16) ^ 0x47990000) & (((v80 ^ 0x1C28609) << 8) & 0x47E20000 ^ 0x5200000 ^ (((v80 ^ 0x1C28609) << 8) ^ 0xE2C70000) & (v80 ^ 0x1C28609)))) ^ v69;
  v83 = v72 - (((v82 ^ 0xAFFD8FA6) + 419849524) ^ ((v82 ^ 0x31401361) - 2017723915) ^ ((v82 ^ 0x52898E) - 1230413028)) + 1174759528;
  v84 = (v83 ^ 0x1AB7FE75) & (2 * (v83 & 0x8237FF76)) ^ v83 & 0x8237FF76;
  v85 = ((2 * (v83 ^ 0x1ABB163D)) ^ 0x3119D296) & (v83 ^ 0x1ABB163D) ^ (2 * (v83 ^ 0x1ABB163D)) & 0x988CE94A;
  v86 = v85 ^ 0x88842949;
  v87 = (v85 ^ 0x1008C000) & (4 * v84) ^ v84;
  v88 = ((4 * v86) ^ 0x6233A52C) & v86 ^ (4 * v86) & 0x988CE948;
  v89 = (v88 ^ 0xA100) & (16 * v87) ^ v87;
  v90 = ((16 * (v88 ^ 0x988C4843)) ^ 0x88CE94B0) & (v88 ^ 0x988C4843) ^ (16 * (v88 ^ 0x988C4843)) & 0x988CE940;
  v91 = v89 ^ 0x988CE94B ^ (v90 ^ 0x888C8000) & (v89 << 8);
  LODWORD(STACK[0x5A8]) = v83 ^ (2 * ((v91 << 16) & 0x188C0000 ^ v91 ^ ((v91 << 16) ^ 0x694B0000) & (((v90 ^ 0x1000694B) << 8) & 0x188C0000 ^ 0x10040000 ^ (((v90 ^ 0x1000694B) << 8) ^ 0xCE90000) & (v90 ^ 0x1000694B)))) ^ 0xF4998171;
  return (*(STACK[0x668] + 8 * ((8537 * v70) ^ v4)))();
}

uint64_t sub_1000E16F0()
{
  v1 = STACK[0x668];
  (*(STACK[0x668] + 8 * (v0 + 9401)))();
  v2 = (*(v1 + 8 * (v0 + 9401)))(STACK[0x750]);
  return sub_1000F4524(v2);
}

uint64_t sub_1000E16FC()
{
  v3 = (v2 - 845343187) & 0x3262F97C;
  LODWORD(STACK[0x578]) = ((v3 - 1220979010) ^ (STACK[0x708] & ((LODWORD(STACK[0x710]) << 8) ^ 0x795280A7) | LODWORD(STACK[0x700]))) & LODWORD(STACK[0x6F8]) ^ LODWORD(STACK[0x6F0]);
  v4 = 8 * (((v1 < (19 * (v3 ^ 0x290Du)) + 1090806749) << 32) + v1 - 1090807680);
  *(STACK[0x748] + v4) = *(STACK[0x738] - 0x5AFD71E16DF85D05 + v4) ^ 0x5D5D5D5D5D5D5D5DLL;
  return (*(STACK[0x668] + 8 * ((90 * (v0 > 1)) ^ v3)))();
}

uint64_t sub_1000E20B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (a6 + 1118) | 0x2002u;
  STACK[0x538] = v10;
  v11 = (a3 + a5) >> 16;
  v12 = (a3 + a5 - v11) >> 8;
  v13 = (a3 + v8 - v12 - v11) >> 26;
  v14 = a3 + v8 + v13;
  v15 = (v14 - v12 - v11) >> 10;
  v16 = (v14 + v15 - v12 - v11) >> 4;
  v17 = v13 - v12 - v11;
  v18 = a3 + v10 + v7 + v15 + v13 + v16;
  v19 = v17 + v7 + a3 + v10 + v16 + v15 + ((v18 - v12 - v11) >> 28) - ((v18 + ((v18 - v12 - v11) >> 28) - ((v18 + ((v18 - v12 - v11) >> 28) - v12 - v11) >> 8) - v12 - v11) >> 1) - ((v18 + ((v18 - v12 - v11) >> 28) - v12 - v11) >> 8);
  v20 = (v19 ^ 0x3A8730727DE19A88) - ((v19 ^ 0x3A8730727DE19A88) >> 27) - (((v19 ^ 0x3A8730727DE19A88) - ((v19 ^ 0x3A8730727DE19A88) >> 27)) >> 8);
  LODWORD(STACK[0x690]) = v19 ^ (v17 + a3 + v15 + v8 + v16) ^ v6 ^ (v20 - (v20 >> 6));
  v21 = v9[73];
  LODWORD(v19) = v9[106];
  LODWORD(v18) = v9[71];
  LODWORD(v16) = v9[31];
  LODWORD(v10) = v9[78];
  LODWORD(v20) = v9[44];
  v22 = v9[45];
  v23 = v9[102];
  v24 = v9[33];
  v25 = v9[25];
  LODWORD(v15) = v9[40];
  v26 = v9[41];
  v27 = v9[1];
  v28 = v9[90];
  v29 = v9[6];
  v30 = v9[12];
  LODWORD(v17) = v9[13];
  v31 = v9[23];
  v33 = v9[28];
  v32 = v9[29];
  v34 = v9[107];
  v35 = v9[75];
  v36 = v9[99];
  v37 = v9[85];
  LODWORD(STACK[0x6F0]) = v37;
  v38 = v19 + v37 + 2074779151;
  LODWORD(STACK[0x6E8]) = v17 - v36;
  LODWORD(STACK[0x600]) = (v36 ^ v34) + 2 * (v36 & v34);
  v39 = v21;
  LODWORD(STACK[0x4D4]) = v21;
  LODWORD(STACK[0x700]) = (v28 ^ v21) + 2 * (v28 & v21);
  LODWORD(STACK[0x638]) = v33 + v28;
  LODWORD(STACK[0x708]) = v33 ^ v17;
  v40 = v18 + v35 + 389284076;
  LODWORD(v17) = v9[110];
  LODWORD(STACK[0x614]) = v27 - v16;
  LODWORD(STACK[0x670]) = v16 - v15;
  LODWORD(STACK[0x6C0]) = v15 - v10;
  LODWORD(STACK[0x6A8]) = v10 - v17;
  LODWORD(STACK[0x6A0]) = v17 + v25;
  LODWORD(STACK[0x648]) = v25 - v24;
  LODWORD(STACK[0x5D0]) = v24 + v23;
  LODWORD(STACK[0x6C8]) = v29 + v23;
  LODWORD(STACK[0x620]) = v31 + v29;
  LODWORD(STACK[0x678]) = v31 + v20;
  v41 = v9[80];
  LODWORD(STACK[0x62C]) = v41 + v20;
  LODWORD(v20) = v9[104];
  LODWORD(STACK[0x660]) = v20 + v41;
  v42 = v9[64];
  LODWORD(STACK[0x6B0]) = v20 ^ v42;
  LODWORD(v20) = v9[97];
  LODWORD(STACK[0x6E0]) = v42 + v20;
  v43 = v9[62];
  LODWORD(v17) = v43 ^ v20;
  LODWORD(v20) = v9[34];
  LODWORD(v16) = v9[35];
  LODWORD(STACK[0x5F0]) = v43 - v16;
  v44 = v9[94];
  LODWORD(STACK[0x6D8]) = v16 - v44;
  LODWORD(v16) = v9[68];
  LODWORD(STACK[0x5D4]) = v44 - v16;
  v45 = v9[72];
  v46 = v16 - v45;
  LODWORD(v16) = v9[51];
  LODWORD(STACK[0x6B8]) = v45 - v16;
  LODWORD(STACK[0x5E8]) = v16 + v18;
  v47 = v27 ^ v34 ^ 0x6A432889;
  LODWORD(STACK[0x640]) = v17;
  LODWORD(STACK[0x6F8]) = v47 ^ (v17 - ((2 * v17) & 0xD4865112) + 1782786185);
  LODWORD(STACK[0x710]) = v47 ^ (v46 - ((2 * v46) & 0xD4865112) + 1782786185);
  v48 = v9[7];
  LODWORD(v18) = v9[8];
  LODWORD(STACK[0x630]) = v48 - v19;
  LODWORD(v16) = v9[69];
  LODWORD(v19) = v16 ^ v48;
  v49 = v9[50];
  LODWORD(STACK[0x688]) = v35 - v49;
  v50 = v9[92];
  LODWORD(STACK[0x5A0]) = v49 + v50;
  v51 = v9[77];
  LODWORD(STACK[0x528]) = v50 - v51;
  v52 = v9[9];
  LODWORD(STACK[0x5A8]) = v51 - v52;
  LODWORD(STACK[0x608]) = v32 ^ v52;
  v53 = v9[18];
  LODWORD(STACK[0x51C]) = v32 + v53;
  LODWORD(v15) = v9[74];
  LODWORD(STACK[0x510]) = v53 - v15;
  v55 = v9[58];
  v54 = v9[59];
  LODWORD(STACK[0x574]) = v55 ^ v15;
  LODWORD(v15) = v9[67];
  LODWORD(STACK[0x5C8]) = v55 - v15;
  LODWORD(STACK[0x5FC]) = v15 - v26;
  v56 = v9[108];
  LODWORD(STACK[0x5CC]) = v56 ^ v26;
  LODWORD(v15) = v9[30];
  LODWORD(STACK[0x554]) = v56 + v15;
  v57 = v22 + v15;
  LODWORD(STACK[0x56C]) = v22 + v15;
  v58 = v9[86];
  LODWORD(STACK[0x4F8]) = v58 + v22;
  LODWORD(v15) = v9[17];
  LODWORD(STACK[0x5B4]) = v9[16];
  LODWORD(STACK[0x558]) = v58 ^ v15;
  LODWORD(STACK[0x658]) = v20 + v15 - v57;
  v59 = v9[2];
  LODWORD(STACK[0x4FC]) = v59 + v20;
  LODWORD(v20) = v9[70];
  LODWORD(STACK[0x540]) = v59 - v20;
  LODWORD(STACK[0x618]) = v20 + v18;
  LODWORD(v20) = v9[53];
  LODWORD(STACK[0x590]) = v18 - v20;
  v60 = v9[46];
  LODWORD(STACK[0x650]) = v20 ^ v60;
  LODWORD(STACK[0x534]) = v30 + v60;
  LODWORD(v20) = v9[105];
  LODWORD(STACK[0x654]) = v30 - v20;
  v61 = v9[100];
  LODWORD(STACK[0x520]) = v20 ^ v61;
  LODWORD(v20) = v9[19];
  LODWORD(STACK[0x59C]) = v61 - v20;
  v62 = v9[98];
  LODWORD(STACK[0x580]) = v20 + v62;
  LODWORD(v20) = v9[15];
  LODWORD(STACK[0x548]) = v20 ^ v62;
  v63 = v9[36];
  v64 = v9[37];
  LODWORD(STACK[0x504]) = v20 ^ v64;
  LODWORD(v17) = v9[54];
  LODWORD(STACK[0x4D0]) = v9[55];
  v65 = v17 ^ v64;
  v66 = -v19 ^ ((v17 ^ v64) - (v19 ^ v17 ^ v64)) ^ 0x96623463 ^ (v19 - ((2 * v19) & 0x2CC468C6) - 1771948957);
  LODWORD(v20) = v9[38];
  LODWORD(STACK[0x518]) = v20 - v16;
  LODWORD(v16) = v9[39];
  LODWORD(STACK[0x570]) = v20 + v16;
  LODWORD(v20) = v9[79];
  v67 = v16 + v20;
  LODWORD(STACK[0x6D0]) = v16 + v20 - 389284076 + v40;
  LODWORD(STACK[0x5D8]) = v38 + v40;
  LODWORD(STACK[0x610]) = v19 - v38 - 458406668;
  LODWORD(v19) = v9[103];
  LODWORD(STACK[0x4C8]) = v19 + v20;
  LODWORD(v20) = v9[24];
  LODWORD(STACK[0x488]) = v19 + v20;
  LODWORD(v19) = v9[83];
  v68 = v19 - v20;
  LODWORD(v20) = v9[87];
  LODWORD(STACK[0x4CC]) = v19 + v20;
  LODWORD(v19) = v9[49];
  LODWORD(STACK[0x4C4]) = v9[48];
  v69 = v19 - v20;
  v70 = v9[101];
  LODWORD(STACK[0x5E0]) = v70 ^ v39 ^ 0x9C591862 ^ (v19 - v20 - ((2 * (v19 - v20)) & 0x38B230C4) - 1671882654);
  v71 = v9[20];
  LODWORD(v10) = v9[21];
  v72 = v9[84] + v71;
  v73 = v9[93];
  LODWORD(STACK[0x430]) = v19 ^ v73;
  LODWORD(v19) = v9[65];
  v74 = v73 ^ v19;
  v75 = v9[56];
  v76 = v9[57];
  v77 = v19 ^ v76;
  LODWORD(v19) = *v9;
  LODWORD(STACK[0x3F4]) = *v9 - v76;
  v78 = v9[88];
  LODWORD(v16) = v78 ^ v19;
  LODWORD(v15) = v9[109];
  v79 = v15 - v78;
  v80 = v9[5];
  LODWORD(STACK[0x468]) = v80 - v15;
  LODWORD(v15) = v9[3];
  v81 = v15 + v80;
  v82 = v9[22];
  v83 = v82 - v15;
  LODWORD(v15) = v9[95];
  LODWORD(STACK[0x4B8]) = v15 + v82;
  LODWORD(STACK[0x42C]) = v63 + v15;
  v84 = v9[63];
  v85 = v84 - v63;
  v86 = v17 - v54;
  LODWORD(v17) = v9[4];
  LODWORD(v20) = v54 + v17;
  v87 = v9[52];
  LODWORD(STACK[0x3F8]) = v87 + v17;
  LODWORD(v17) = v9[42];
  LODWORD(v15) = v9[43];
  v88 = v87 ^ v17;
  v89 = v9[14];
  LODWORD(v17) = v89 ^ v17;
  LODWORD(v19) = v9[61];
  v90 = v19 ^ v89;
  v91 = v9[26];
  LODWORD(v18) = v9[27];
  LODWORD(v19) = v91 ^ v19;
  LODWORD(STACK[0x680]) = v46 + v83;
  LODWORD(STACK[0x5C4]) = v83 + v74;
  LODWORD(STACK[0x698]) = v85 ^ v74;
  v92 = STACK[0x648];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x648]) ^ v85;
  LODWORD(STACK[0x588]) = v92 + v17;
  LODWORD(STACK[0x560]) = v17 - v19;
  LODWORD(STACK[0x43C]) = v19 - v20;
  LODWORD(STACK[0x648]) = v20 + v16;
  LODWORD(v20) = STACK[0x630];
  LODWORD(STACK[0x634]) = LODWORD(STACK[0x630]) + v16;
  v93 = v20 - LODWORD(STACK[0x6A8]);
  LODWORD(STACK[0x5EC]) = v72 ^ LODWORD(STACK[0x6A8]);
  LODWORD(v20) = STACK[0x638];
  LODWORD(STACK[0x6A8]) = v72 - LODWORD(STACK[0x638]);
  LODWORD(STACK[0x5B8]) = v20 ^ v65;
  LODWORD(STACK[0x630]) = v66 + v65;
  v94 = LODWORD(STACK[0x6F0]) - v10;
  LODWORD(v20) = v9[66];
  LODWORD(v19) = v10 ^ v20 ^ 0xDACE5279;
  LODWORD(v10) = STACK[0x4F8];
  v95 = STACK[0x600];
  v96 = LODWORD(STACK[0x600]) - ((2 * LODWORD(STACK[0x600])) & 0xB59CA4F2) - 624012679;
  LODWORD(STACK[0x524]) = v19 ^ (LODWORD(STACK[0x4F8]) - ((2 * LODWORD(STACK[0x4F8])) & 0xB59CA4F2) - 624012679);
  LODWORD(STACK[0x500]) = v96 ^ v19;
  LODWORD(v19) = v9[81];
  v97 = v19 + v84;
  LODWORD(STACK[0x414]) = v75 - v19;
  v98 = v9[32];
  LODWORD(v16) = v98 - v75;
  LODWORD(v19) = v9[10];
  v99 = v19 + v98;
  v100 = STACK[0x5B4];
  v101 = LODWORD(STACK[0x5B4]) ^ v70;
  LODWORD(v17) = STACK[0x5D0];
  LODWORD(STACK[0x420]) = v67 - LODWORD(STACK[0x5D0]);
  LODWORD(STACK[0x4C0]) = v99 ^ v17;
  LODWORD(v17) = STACK[0x614];
  LODWORD(STACK[0x638]) = v99 + LODWORD(STACK[0x614]);
  v102 = STACK[0x5C8];
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x5C8]) ^ v17;
  LODWORD(STACK[0x490]) = v102 - v101;
  v103 = v15 ^ v20;
  LODWORD(STACK[0x3DC]) = v18 ^ v15;
  LODWORD(v20) = v9[91];
  v104 = v18 - v20;
  v105 = v9[60];
  LODWORD(v18) = v20 ^ v105;
  LODWORD(v20) = v9[89];
  v106 = v20 + v105;
  v107 = v9[96];
  v108 = v20 - v107;
  LODWORD(v20) = v9[82];
  v109 = v107 + v20;
  LODWORD(v15) = v9[76];
  v110 = v15 + v20;
  LODWORD(v20) = v15 ^ v100;
  LODWORD(STACK[0x480]) = v100 ^ LODWORD(STACK[0x4D4]);
  LODWORD(STACK[0x4F8]) = v79 + v10;
  LODWORD(STACK[0x614]) = v79 + v77;
  LODWORD(STACK[0x5C8]) = v16 ^ v77;
  LODWORD(v17) = STACK[0x528];
  LODWORD(STACK[0x5B4]) = v69 ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x3F0]) = v16 ^ v17;
  LODWORD(STACK[0x4D4]) = v95 + v81;
  LODWORD(v15) = STACK[0x51C];
  LODWORD(STACK[0x528]) = v81 - LODWORD(STACK[0x51C]);
  LODWORD(v16) = STACK[0x620];
  LODWORD(STACK[0x4A0]) = v15 + LODWORD(STACK[0x620]);
  LODWORD(v15) = STACK[0x510];
  LODWORD(STACK[0x6F0]) = v16 ^ LODWORD(STACK[0x510]);
  LODWORD(v16) = STACK[0x5D4];
  LODWORD(STACK[0x600]) = LODWORD(STACK[0x5D4]) ^ v15;
  LODWORD(v15) = STACK[0x4FC];
  LODWORD(STACK[0x510]) = LODWORD(STACK[0x4FC]) + v16;
  LODWORD(v16) = STACK[0x62C];
  LODWORD(STACK[0x3E0]) = v15 ^ LODWORD(STACK[0x62C]);
  LODWORD(v15) = STACK[0x574];
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x574]) + v16;
  LODWORD(STACK[0x4B0]) = v15 - v18;
  LODWORD(v16) = STACK[0x5F0];
  LODWORD(STACK[0x574]) = LODWORD(STACK[0x5F0]) ^ v18;
  LODWORD(v18) = STACK[0x5A8];
  LODWORD(STACK[0x5D0]) = v16 - LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x5D4]) = v18 - v109;
  LODWORD(STACK[0x434]) = v109 + v68;
  v111 = STACK[0x5E8];
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x5E8]) ^ v68;
  LODWORD(v18) = STACK[0x6B0];
  LODWORD(STACK[0x5F0]) = v111 ^ LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x62C]) = v18 ^ 0xED46B374 ^ (v104 - ((2 * v104) & 0xDA8D66E8) - 314133644);
  LODWORD(v16) = v9[47];
  LODWORD(v10) = v19 + v16;
  LODWORD(v18) = LODWORD(STACK[0x4D0]) + v16;
  LODWORD(v16) = LODWORD(STACK[0x4D0]) + v71;
  v112 = v9[11];
  v113 = v91 + LODWORD(STACK[0x4C4]);
  LODWORD(v15) = LODWORD(STACK[0x4C4]) ^ v112;
  v114 = STACK[0x540];
  LODWORD(STACK[0x6B0]) = v104 - LODWORD(STACK[0x540]);
  LODWORD(v17) = STACK[0x504];
  LODWORD(STACK[0x4D0]) = v114 - LODWORD(STACK[0x504]);
  v115 = STACK[0x554];
  LODWORD(STACK[0x5E8]) = v17 + LODWORD(STACK[0x554]);
  LODWORD(v19) = STACK[0x670];
  LODWORD(STACK[0x51C]) = v115 + LODWORD(STACK[0x670]);
  LODWORD(STACK[0x540]) = v90 ^ v19;
  v116 = LODWORD(STACK[0x534]) + v90;
  LODWORD(STACK[0x400]) = v15 ^ LODWORD(STACK[0x534]);
  LODWORD(STACK[0x554]) = v15 - v20;
  LODWORD(v17) = v20 - v16 - 1552665655;
  LODWORD(v19) = STACK[0x678];
  LODWORD(STACK[0x534]) = v16 - LODWORD(STACK[0x678]);
  LODWORD(v20) = STACK[0x660];
  LODWORD(STACK[0x408]) = v19 - LODWORD(STACK[0x660]);
  LODWORD(STACK[0x3E8]) = v20 - v106;
  LODWORD(STACK[0x4C4]) = v106 - v86;
  LODWORD(v19) = STACK[0x6A0];
  LODWORD(v20) = LODWORD(STACK[0x6A0]) - ((2 * LODWORD(STACK[0x6A0])) & 0xE3148F46) - 242595933;
  LODWORD(STACK[0x478]) = (v86 - ((2 * v86) & 0xE3148F46) - 242595933) ^ v103 ^ 0xF18A47A3;
  LODWORD(STACK[0x498]) = v20 ^ v103 ^ 0xF18A47A3;
  v117 = LODWORD(STACK[0x520]) ^ v19;
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x520]) - v88;
  LODWORD(v19) = STACK[0x6E8];
  LODWORD(STACK[0x470]) = v88 - LODWORD(STACK[0x6E8]);
  v118 = v19 - v112;
  v119 = v112 & STACK[0x5A0];
  v120 = v112 ^ LODWORD(STACK[0x5A0]);
  LODWORD(v19) = STACK[0x6C0];
  LODWORD(STACK[0x458]) = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x6C0]);
  v121 = v19 ^ LODWORD(STACK[0x4B8]);
  v122 = LODWORD(STACK[0x558]) + LODWORD(STACK[0x4B8]);
  LODWORD(v16) = STACK[0x3F4];
  v123 = LODWORD(STACK[0x3F4]) + LODWORD(STACK[0x558]) + 1779642342;
  v124 = v120 + 2 * v119 + 1550355698;
  LODWORD(v20) = STACK[0x4C8];
  LODWORD(STACK[0x440]) = LODWORD(STACK[0x56C]) - LODWORD(STACK[0x4C8]);
  v125 = v20 - v108;
  LODWORD(v19) = STACK[0x6C8];
  LODWORD(STACK[0x460]) = v108 ^ LODWORD(STACK[0x6C8]);
  LODWORD(STACK[0x4B8]) = v19 - v10;
  LODWORD(v10) = v10 - v97;
  LODWORD(STACK[0x6C0]) = v97 - v110;
  LODWORD(v19) = STACK[0x6B8];
  LODWORD(STACK[0x4C8]) = LODWORD(STACK[0x6B8]) ^ v110;
  v126 = v19 + LODWORD(STACK[0x488]);
  LODWORD(v19) = STACK[0x700];
  LODWORD(STACK[0x450]) = LODWORD(STACK[0x700]) ^ LODWORD(STACK[0x488]);
  v127 = v19 + LODWORD(STACK[0x5CC]);
  v128 = LODWORD(STACK[0x5CC]) - LODWORD(STACK[0x548]);
  v129 = LODWORD(STACK[0x548]) + 2038069911;
  v130 = STACK[0x430];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x430]) - LODWORD(STACK[0x640]);
  LODWORD(v20) = STACK[0x4CC];
  LODWORD(STACK[0x3EC]) = LODWORD(STACK[0x4CC]) + v130;
  LODWORD(v15) = LODWORD(STACK[0x590]) - v20;
  v131 = LODWORD(STACK[0x590]) + v18;
  LODWORD(v20) = LODWORD(STACK[0x6D8]) + v18;
  v132 = LODWORD(STACK[0x608]) + LODWORD(STACK[0x6D8]);
  v133 = v113 ^ LODWORD(STACK[0x608]);
  LODWORD(v18) = v94 - v113;
  v134 = v94 + LODWORD(STACK[0x42C]);
  LODWORD(v19) = STACK[0x5FC];
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x5FC]);
  LODWORD(STACK[0x620]) = v124 - v19 + v129;
  v135 = LODWORD(STACK[0x580]) ^ v16;
  v136 = STACK[0x518];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x580]) - LODWORD(STACK[0x518]);
  v137 = STACK[0x59C];
  LODWORD(STACK[0x42C]) = v136 - LODWORD(STACK[0x59C]);
  v138 = v137 - LODWORD(STACK[0x6E0]);
  v139 = LODWORD(STACK[0x6E0]) + LODWORD(STACK[0x3F8]);
  LODWORD(v16) = STACK[0x468];
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x3F8]) - LODWORD(STACK[0x468]);
  v140 = STACK[0x3DC];
  v141 = v16 + LODWORD(STACK[0x3DC]) + 1302835800;
  LODWORD(STACK[0x520]) = v141;
  LODWORD(STACK[0x640]) = v124 + v17 + 2309957;
  LODWORD(STACK[0x6A0]) = v17 - v116 + 1552665655;
  LODWORD(STACK[0x6D8]) = v116 - v93 + 177683449;
  LODWORD(v16) = STACK[0x438];
  LODWORD(STACK[0x468]) = LODWORD(STACK[0x438]) ^ 0xCEE0B1DD ^ (v93 - ((2 * v93) & 0x9DC163BA) - 824135203);
  LODWORD(STACK[0x3E4]) = v20 ^ v16;
  LODWORD(STACK[0x6C8]) = v20 + v135;
  LODWORD(STACK[0x504]) = v117 + v135;
  LODWORD(v16) = STACK[0x43C];
  LODWORD(STACK[0x678]) = v117 - LODWORD(STACK[0x43C]) + 1763311368;
  v142 = v121 + 1830904069;
  LODWORD(v20) = STACK[0x658];
  LODWORD(STACK[0x6B8]) = LODWORD(STACK[0x658]) + v121;
  v143 = STACK[0x3E0];
  LODWORD(STACK[0x660]) = v20 - LODWORD(STACK[0x3E0]) + 566483989;
  v144 = LODWORD(STACK[0x650]) ^ v140;
  v145 = LODWORD(STACK[0x650]) + LODWORD(STACK[0x570]);
  LODWORD(v17) = LODWORD(STACK[0x570]) - LODWORD(STACK[0x688]);
  v146 = LODWORD(STACK[0x688]) + LODWORD(STACK[0x708]);
  LODWORD(v19) = LODWORD(STACK[0x414]) + LODWORD(STACK[0x708]);
  LODWORD(v20) = LODWORD(STACK[0x654]) + LODWORD(STACK[0x414]);
  v147 = STACK[0x618];
  v148 = LODWORD(STACK[0x618]) + LODWORD(STACK[0x654]) + 418781628;
  LODWORD(STACK[0x3DC]) = v16 + v145;
  LODWORD(v16) = STACK[0x420];
  LODWORD(STACK[0x670]) = v145 ^ LODWORD(STACK[0x420]);
  v149 = STACK[0x600];
  LODWORD(STACK[0x6E8]) = v16 - LODWORD(STACK[0x600]);
  v150 = v149 + 1397111827;
  v151 = STACK[0x5D8];
  LODWORD(STACK[0x600]) = v142 + LODWORD(STACK[0x5D8]);
  v152 = v150 + v151;
  v153 = STACK[0x5D4];
  LODWORD(STACK[0x5CC]) = LODWORD(STACK[0x5D4]) + v143;
  LODWORD(v16) = STACK[0x3F0];
  LODWORD(STACK[0x558]) = v153 + LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x3BC]) = v17 ^ v16;
  LODWORD(v16) = STACK[0x4C0];
  LODWORD(STACK[0x654]) = v17 + LODWORD(STACK[0x4C0]);
  LODWORD(STACK[0x5D4]) = v16 + v122;
  LODWORD(v16) = STACK[0x490];
  LODWORD(STACK[0x608]) = v122 - LODWORD(STACK[0x490]);
  v154 = STACK[0x510];
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x510]) ^ v16;
  LODWORD(STACK[0x580]) = v154 - v123;
  LODWORD(v17) = STACK[0x480];
  LODWORD(STACK[0x5A0]) = v123 + LODWORD(STACK[0x480]) + 1309927891;
  v155 = STACK[0x3E8];
  v156 = LODWORD(STACK[0x3E8]) - 418781628 + v148;
  LODWORD(v16) = STACK[0x610];
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x610]) - v148;
  LODWORD(STACK[0x700]) = v17 - v16 + 1761781477;
  LODWORD(v17) = STACK[0x500];
  LODWORD(STACK[0x650]) = v126 - LODWORD(STACK[0x500]) + 532455560;
  LODWORD(STACK[0x610]) = v146 + v155;
  LODWORD(STACK[0x510]) = v10 ^ v146;
  v157 = STACK[0x6F8];
  LODWORD(STACK[0x5FC]) = v10 + LODWORD(STACK[0x6F8]);
  LODWORD(v16) = STACK[0x508];
  LODWORD(STACK[0x4C0]) = v157 - LODWORD(STACK[0x508]);
  LODWORD(v10) = STACK[0x434];
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x434]) + v16;
  LODWORD(v16) = STACK[0x5E8];
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x5E8]) + v126;
  LODWORD(STACK[0x518]) = v18 + v16;
  v158 = STACK[0x4F8];
  LODWORD(STACK[0x3B0]) = v10 ^ LODWORD(STACK[0x4F8]);
  LODWORD(v16) = STACK[0x5E0];
  LODWORD(STACK[0x5E8]) = LODWORD(STACK[0x5E0]) + v158;
  LODWORD(v10) = STACK[0x4A0];
  LODWORD(STACK[0x420]) = LODWORD(STACK[0x4A0]) ^ v16;
  LODWORD(STACK[0x3B8]) = v18 ^ v20;
  LODWORD(STACK[0x59C]) = v20 ^ v118;
  v159 = STACK[0x524];
  LODWORD(STACK[0x4CC]) = v10 - LODWORD(STACK[0x524]);
  LODWORD(STACK[0x508]) = v159 - v118;
  v160 = v17 + LODWORD(STACK[0x400]);
  LODWORD(STACK[0x524]) = v125 + LODWORD(STACK[0x400]);
  LODWORD(STACK[0x3C0]) = v125 ^ v139;
  LODWORD(STACK[0x5D8]) = v139 + v127;
  LODWORD(STACK[0x570]) = v133 ^ v127;
  v161 = STACK[0x62C];
  LODWORD(STACK[0x500]) = LODWORD(STACK[0x62C]) + v133;
  LODWORD(STACK[0x590]) = v161 - v19;
  v162 = v19 + v134;
  LODWORD(v20) = STACK[0x560];
  LODWORD(STACK[0x5E0]) = v134 + LODWORD(STACK[0x560]);
  v163 = STACK[0x408];
  LODWORD(STACK[0x62C]) = v20 - LODWORD(STACK[0x408]);
  v164 = v163 - v15;
  LODWORD(STACK[0x3E8]) = v163 - v15;
  LODWORD(v16) = LODWORD(STACK[0x5F0]) ^ 0xAD3D0EBB;
  LODWORD(STACK[0x560]) = (v15 - ((2 * v15) & 0x5A7A1D76) - 1388507461) ^ v16;
  LODWORD(STACK[0x4F8]) = (v128 - ((2 * v128) & 0x5A7A1D76) - 1388507461) ^ v16;
  LODWORD(STACK[0x5F0]) = v147 + v128;
  LODWORD(v19) = LODWORD(STACK[0x4FC]) + v147;
  v165 = STACK[0x588];
  LODWORD(STACK[0x490]) = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x588]);
  LODWORD(STACK[0x438]) = v131 ^ v165;
  LODWORD(v15) = STACK[0x5C4];
  LODWORD(v20) = LODWORD(STACK[0x5C4]) + 833738879 + (~(2 * LODWORD(STACK[0x5C4])) | 0x9C9C4F01);
  LODWORD(STACK[0x4A0]) = v144 ^ 0x31B1D87F ^ (v131 - ((2 * v131) & 0x6363B0FE) + 833738879);
  v166 = v144 ^ 0x31B1D87F ^ (v20 + 1);
  v167 = LODWORD(STACK[0x6C0]) + 647666795;
  v168 = STACK[0x5B8];
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x5B8]) - LODWORD(STACK[0x6C0]);
  LODWORD(STACK[0x6C0]) = v168 ^ v138;
  LODWORD(v16) = STACK[0x4B0];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x4B0]) ^ v138;
  v169 = v16 ^ v132;
  LODWORD(v20) = LODWORD(STACK[0x710]) ^ v132;
  LODWORD(v16) = STACK[0x710] & v132;
  LODWORD(v18) = STACK[0x710];
  v170 = STACK[0x5EC];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x5EC]) + v15;
  LODWORD(v15) = STACK[0x4D4];
  LODWORD(STACK[0x6E0]) = LODWORD(STACK[0x4D4]) ^ v170;
  LODWORD(STACK[0x6F8]) = v15 - v18;
  LODWORD(STACK[0x480]) = v167 - LODWORD(STACK[0x6F0]) - 647666795;
  LODWORD(STACK[0x434]) = v20 + 2 * v16;
  LODWORD(v17) = STACK[0x528];
  LODWORD(STACK[0x5EC]) = v141 - LODWORD(STACK[0x528]) - 1302835800;
  v171 = LODWORD(STACK[0x418]) ^ 0xF2EB5B71;
  v172 = STACK[0x3EC];
  LODWORD(v15) = STACK[0x5B4];
  v173 = (LODWORD(STACK[0x3EC]) - ((2 * LODWORD(STACK[0x3EC])) & 0xE5D6B6E2) - 219456655) ^ v171;
  v174 = (LODWORD(STACK[0x5B4]) - ((2 * LODWORD(STACK[0x5B4])) & 0xE5D6B6E2) - 219456655) ^ v171;
  LODWORD(STACK[0x3B4]) = v174;
  v175 = v17 - LODWORD(STACK[0x448]);
  v176 = LODWORD(STACK[0x448]) - LODWORD(STACK[0x470]);
  LODWORD(v16) = STACK[0x4D0];
  LODWORD(STACK[0x708]) = LODWORD(STACK[0x470]) - LODWORD(STACK[0x4D0]);
  v177 = STACK[0x5C8];
  LODWORD(STACK[0x470]) = v16 - LODWORD(STACK[0x5C8]);
  LODWORD(v16) = STACK[0x574];
  LODWORD(STACK[0x43C]) = LODWORD(STACK[0x574]) + v177;
  v178 = v16 - LODWORD(STACK[0x478]);
  LODWORD(v16) = STACK[0x460];
  LODWORD(STACK[0x3C8]) = LODWORD(STACK[0x460]) ^ LODWORD(STACK[0x478]);
  v179 = v16 - LODWORD(STACK[0x4C4]);
  LODWORD(v20) = STACK[0x634];
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x634]);
  LODWORD(v16) = STACK[0x450];
  LODWORD(STACK[0x688]) = v20 - LODWORD(STACK[0x450]);
  v180 = STACK[0x51C];
  LODWORD(STACK[0x400]) = v16 - LODWORD(STACK[0x51C]);
  LODWORD(v20) = STACK[0x6D0];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x6D0]) ^ v180;
  v181 = LODWORD(STACK[0x648]) + v20;
  LODWORD(v20) = STACK[0x630];
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x630]);
  LODWORD(v16) = STACK[0x458];
  LODWORD(STACK[0x460]) = v20 + LODWORD(STACK[0x458]);
  v182 = LODWORD(STACK[0x498]) + v16;
  LODWORD(v20) = STACK[0x680];
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x680]);
  v183 = LODWORD(STACK[0x5A8]) ^ v20;
  LODWORD(v16) = STACK[0x4A8];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x4A8]) + LODWORD(STACK[0x5A8]);
  LODWORD(v20) = STACK[0x698];
  LODWORD(STACK[0x450]) = v16 - LODWORD(STACK[0x698]);
  v184 = LODWORD(STACK[0x440]) + v20 + 777737659;
  LODWORD(v16) = STACK[0x614];
  LODWORD(STACK[0x4A8]) = LODWORD(STACK[0x614]) + LODWORD(STACK[0x440]);
  LODWORD(STACK[0x3EC]) = v172 + v16;
  v185 = STACK[0x540];
  LODWORD(STACK[0x6D0]) = v15 + LODWORD(STACK[0x540]);
  v186 = LODWORD(STACK[0x430]) ^ v185;
  v187 = STACK[0x534];
  LODWORD(STACK[0x440]) = LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x534]);
  v188 = STACK[0x42C];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x42C]) ^ v187;
  v189 = v188 - LODWORD(STACK[0x554]);
  LODWORD(v20) = STACK[0x5D0];
  LODWORD(STACK[0x3E0]) = LODWORD(STACK[0x554]) - LODWORD(STACK[0x5D0]);
  v190 = v20 ^ LODWORD(STACK[0x3F4]);
  v191 = LODWORD(STACK[0x638]) + LODWORD(STACK[0x3F4]);
  LODWORD(v20) = STACK[0x4B8];
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x4B8]);
  v192 = LODWORD(STACK[0x4C8]) ^ 0xD4091795;
  v193 = STACK[0x6A8];
  LODWORD(STACK[0x42C]) = v192 ^ (v20 - ((2 * v20) & 0xA8122F2A) - 737601643);
  v194 = v192 ^ (v193 - ((2 * v193) & 0xA8122F2A) - 737601643);
  v195 = STACK[0x3E4];
  LODWORD(STACK[0x4D4]) = LODWORD(STACK[0x3E4]) ^ 0xFC421FDA ^ (v19 - ((2 * v19) & 0xF8843FB4) - 62775334);
  v196 = STACK[0x3B0];
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x3B0]) - v152 - 433792242;
  LODWORD(v20) = STACK[0x3DC];
  LODWORD(STACK[0x478]) = LODWORD(STACK[0x3DC]) + 433792242 + v152;
  v197 = STACK[0x3BC];
  LODWORD(STACK[0x648]) = LODWORD(STACK[0x3BC]) ^ v195;
  v198 = (v190 - ((2 * v190) & 0x7FD8313C) - 1075046242) ^ v197 ^ 0xBFEC189E;
  LODWORD(STACK[0x3E4]) = v160 - v19;
  LODWORD(STACK[0x4C4]) = v20 - v160;
  v199 = STACK[0x6E8];
  v200 = STACK[0x6E8] & 0x400000;
  if ((v156 & v200) != 0)
  {
    v200 = -v200;
  }

  LODWORD(STACK[0x540]) = v156;
  LODWORD(STACK[0x574]) = (v200 + v156) ^ v199 & 0xFFBFFFFF;
  LODWORD(STACK[0x3BC]) = v162 - 184913307;
  v201 = v164 - v162;
  v202 = STACK[0x3B8];
  LODWORD(STACK[0x634]) = LODWORD(STACK[0x3B8]) - v182 - 925903004;
  v203 = STACK[0x3CC];
  v204 = STACK[0x3C0];
  v205 = LODWORD(STACK[0x3C0]) ^ 0x2B9029F2 ^ (LODWORD(STACK[0x3CC]) - ((2 * LODWORD(STACK[0x3CC])) & 0x572053E4) + 730868210);
  LODWORD(STACK[0x618]) = v201 ^ 0x50C084C;
  LODWORD(STACK[0x588]) = v179 - v166 - 2121059086;
  LODWORD(STACK[0x528]) = v169;
  LODWORD(STACK[0x630]) = (v169 ^ v174) - 884873929;
  v206 = STACK[0x580];
  LODWORD(STACK[0x5B8]) = v189 - LODWORD(STACK[0x580]) - 1879118078;
  v207 = STACK[0x6B0];
  v208 = v193 - LODWORD(STACK[0x6B0]);
  LODWORD(STACK[0x388]) = v208;
  LODWORD(STACK[0x554]) = v179 + v207;
  v209 = LODWORD(STACK[0x5CC]) ^ v207;
  v210 = v183 - LODWORD(STACK[0x5CC]);
  LODWORD(STACK[0x680]) = v181 - v183 - 619885872;
  v211 = STACK[0x420];
  LODWORD(STACK[0x614]) = (v166 ^ LODWORD(STACK[0x420])) + 152505483;
  v212 = STACK[0x468];
  LODWORD(STACK[0x710]) = (v196 ^ LODWORD(STACK[0x468])) + 1874449542;
  v213 = v181 ^ LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x3DC]) = v178 ^ LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x4B8]) = v178 + v186;
  LODWORD(STACK[0x698]) = v175 - v186;
  v214 = STACK[0x524];
  LODWORD(STACK[0x6B0]) = LODWORD(STACK[0x524]) ^ v175;
  v215 = STACK[0x5D4];
  LODWORD(STACK[0x4B0]) = LODWORD(STACK[0x5D4]) - v214;
  LODWORD(STACK[0x498]) = v173 - v215;
  v216 = v173 - 1109494186;
  LODWORD(STACK[0x5CC]) = v205 + 2061516126;
  LODWORD(STACK[0x5B4]) = v198 + 1700234621;
  v217 = STACK[0x59C];
  v218 = STACK[0x678];
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x59C]) + 699917152 + LODWORD(STACK[0x678]);
  LODWORD(STACK[0x5C4]) = v189 + v218 - 2 * v189 + 1175328135;
  LODWORD(STACK[0x5D0]) = v213 + 910759373;
  LODWORD(STACK[0x6A8]) = v206 - v191;
  LODWORD(STACK[0x4C8]) = v191 - v194;
  v219 = STACK[0x488];
  LODWORD(STACK[0x458]) = v194 - LODWORD(STACK[0x488]);
  LODWORD(STACK[0x678]) = v219 - LODWORD(STACK[0x654]) - 87176962;
  LODWORD(STACK[0x5D4]) = v209 + 908161492;
  v220 = STACK[0x5E8];
  LODWORD(STACK[0x638]) = LODWORD(STACK[0x5E8]) - v217;
  v221 = STACK[0x3C8];
  LODWORD(STACK[0x534]) = (LODWORD(STACK[0x3C8]) ^ v220) + 90548727;
  LODWORD(STACK[0x51C]) = v204 ^ v176;
  v222 = STACK[0x5D8];
  LODWORD(STACK[0x580]) = v176 ^ LODWORD(STACK[0x5D8]);
  v223 = STACK[0x3F8];
  v224 = v222 + LODWORD(STACK[0x3F8]) - 529870596;
  LODWORD(STACK[0x524]) = v224;
  LODWORD(STACK[0x5C8]) = LODWORD(STACK[0x648]) - 53681059;
  v225 = STACK[0x650];
  LODWORD(STACK[0x5D8]) = v216 + LODWORD(STACK[0x650]);
  v226 = STACK[0x438];
  LODWORD(STACK[0x648]) = LODWORD(STACK[0x438]) - 496538881 + v225;
  v227 = STACK[0x658];
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x6C0]) - 1343002909 + LODWORD(STACK[0x658]);
  LODWORD(STACK[0x56C]) = v184 - v227;
  v228 = STACK[0x62C];
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x62C]) ^ v182;
  LODWORD(STACK[0x59C]) = v228 - v184 - 1617097094;
  LODWORD(STACK[0x358]) = v211 + v203 + 1353174168;
  v229 = STACK[0x3F0];
  LODWORD(STACK[0x5E8]) = v202 + LODWORD(STACK[0x3F0]);
  LODWORD(STACK[0x62C]) = LODWORD(STACK[0x6F0]) + v229 - LODWORD(STACK[0x520]) + 367425458;
  v230 = STACK[0x504];
  v231 = STACK[0x3E0];
  LODWORD(STACK[0x658]) = LODWORD(STACK[0x504]) - LODWORD(STACK[0x3E0]) - 1938632612;
  v232 = STACK[0x670];
  LODWORD(STACK[0x3B8]) = v231 + LODWORD(STACK[0x670]);
  v233 = STACK[0x590];
  LODWORD(STACK[0x650]) = v232 - LODWORD(STACK[0x590]);
  v234 = STACK[0x570];
  LODWORD(STACK[0x590]) = v233 ^ LODWORD(STACK[0x570]);
  v235 = STACK[0x3EC];
  LODWORD(STACK[0x520]) = v234 + LODWORD(STACK[0x3EC]);
  v236 = STACK[0x560];
  v237 = v235 - LODWORD(STACK[0x560]);
  LODWORD(STACK[0x390]) = v237;
  v238 = STACK[0x660];
  v239 = v236 + LODWORD(STACK[0x660]) + 989628489;
  LODWORD(STACK[0x3F0]) = v239;
  v240 = STACK[0x434];
  LODWORD(STACK[0x560]) = LODWORD(STACK[0x434]) + LODWORD(STACK[0x3BC]);
  v241 = STACK[0x490];
  v242 = v240 - LODWORD(STACK[0x490]);
  LODWORD(STACK[0x420]) = v242;
  v243 = v241 - 211753062;
  v244 = STACK[0x400];
  v245 = v226 ^ LODWORD(STACK[0x400]);
  LODWORD(STACK[0x3BC]) = v245;
  v246 = STACK[0x5FC];
  v247 = LODWORD(STACK[0x5FC]) + v244;
  LODWORD(STACK[0x400]) = v247;
  v248 = v243 + v246;
  LODWORD(STACK[0x3AC]) = v243 + v246;
  v249 = STACK[0x6A0];
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x6A0]) ^ v223;
  LODWORD(STACK[0x670]) = (v208 ^ v249) - 143290633;
  v250 = v238 - 1400735176;
  v251 = v190 - LODWORD(STACK[0x508]);
  v252 = STACK[0x408];
  v253 = LODWORD(STACK[0x408]) + LODWORD(STACK[0x508]);
  LODWORD(STACK[0x384]) = v253;
  v254 = STACK[0x418];
  v255 = LODWORD(STACK[0x418]) - LODWORD(STACK[0x6E8]);
  LODWORD(STACK[0x380]) = v255;
  v256 = STACK[0x414];
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x414]) - v254;
  v257 = STACK[0x6D8];
  LODWORD(STACK[0x3E0]) = LODWORD(STACK[0x6D8]) + v252;
  v258 = v257 - v256 + 1924655482;
  LODWORD(STACK[0x508]) = v258;
  LODWORD(STACK[0x660]) = v210 - 1916793577;
  v259 = STACK[0x4A0];
  LODWORD(STACK[0x5FC]) = LODWORD(STACK[0x6C8]) - 631244459 + LODWORD(STACK[0x4A0]);
  v260 = STACK[0x558];
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x558]) + v259;
  v261 = STACK[0x43C];
  LODWORD(STACK[0x6D8]) = v260 + LODWORD(STACK[0x43C]);
  v262 = STACK[0x480];
  LODWORD(STACK[0x39C]) = v261 - LODWORD(STACK[0x480]);
  v263 = STACK[0x6B8];
  LODWORD(STACK[0x338]) = v262 ^ LODWORD(STACK[0x6B8]);
  v264 = v263 - 700956985 + v212;
  LODWORD(STACK[0x414]) = v264;
  v265 = STACK[0x4C0];
  LODWORD(STACK[0x558]) = v230 + LODWORD(STACK[0x4C0]);
  v266 = STACK[0x548];
  v267 = (LODWORD(STACK[0x548]) + v265) ^ 0x2D64D0DB;
  LODWORD(STACK[0x3EC]) = v267;
  v268 = v251 ^ 0xE5A348CF;
  LODWORD(STACK[0x6A0]) = v251 ^ 0xE5A348CF;
  v269 = (LODWORD(STACK[0x6D0]) - v266) ^ 0xBDBC0D9F;
  LODWORD(STACK[0x6B8]) = v269;
  v270 = STACK[0x620];
  v271 = LODWORD(STACK[0x620]) + v221;
  LODWORD(STACK[0x348]) = v271;
  v272 = STACK[0x5A0];
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x5A0]) - v270;
  v273 = STACK[0x510];
  LODWORD(STACK[0x368]) = LODWORD(STACK[0x510]) - v272;
  v274 = STACK[0x4CC];
  v275 = v273 ^ LODWORD(STACK[0x4CC]);
  LODWORD(STACK[0x490]) = v275;
  v276 = STACK[0x600];
  LODWORD(STACK[0x4CC]) = LODWORD(STACK[0x600]) ^ v274;
  v277 = STACK[0x448];
  v278 = v276 ^ LODWORD(STACK[0x448]);
  LODWORD(STACK[0x3F8]) = v278;
  v279 = STACK[0x430];
  v280 = LODWORD(STACK[0x430]) ^ v277 ^ 0x3A0D6C4A;
  LODWORD(STACK[0x6F0]) = v280;
  v281 = STACK[0x470];
  v282 = LODWORD(STACK[0x470]) + LODWORD(STACK[0x3B4]);
  LODWORD(STACK[0x448]) = v282;
  v283 = STACK[0x460];
  LODWORD(STACK[0x480]) = v281 + LODWORD(STACK[0x460]);
  v284 = STACK[0x42C];
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x42C]) ^ v283;
  v285 = STACK[0x608];
  LODWORD(STACK[0x43C]) = LODWORD(STACK[0x608]) - v284;
  v286 = STACK[0x518];
  LODWORD(STACK[0x408]) = LODWORD(STACK[0x518]) ^ v285;
  v287 = STACK[0x450];
  LODWORD(STACK[0x460]) = v286 + LODWORD(STACK[0x450]);
  v288 = STACK[0x440];
  v289 = v287 + LODWORD(STACK[0x440]);
  LODWORD(STACK[0x42C]) = v289;
  v290 = (LODWORD(STACK[0x708]) + v288) ^ 0x6EE982E4;
  LODWORD(STACK[0x5A0]) = v290;
  v291 = STACK[0x500];
  v292 = v250 + LODWORD(STACK[0x500]);
  LODWORD(STACK[0x6E8]) = v292;
  v293 = LODWORD(STACK[0x688]) ^ 0x8A127EDC ^ v291;
  v294 = LODWORD(STACK[0x3E4]) ^ 0x8F313595;
  LODWORD(STACK[0x3A0]) = v294;
  LODWORD(STACK[0x360]) = LODWORD(STACK[0x3F4]) ^ 0xC3BA627C;
  v295 = v224 ^ v264 ^ (v245 - 1634589604);
  v296 = STACK[0x4F8];
  v297 = LODWORD(STACK[0x654]) - LODWORD(STACK[0x4F8]);
  LODWORD(STACK[0x654]) = v297;
  LODWORD(STACK[0x620]) = v247 + 837144878;
  v298 = LODWORD(STACK[0x698]) + 2032515242;
  LODWORD(STACK[0x518]) = v237 + 1805433719;
  v297 += 1482361073;
  LODWORD(STACK[0x440]) = v297;
  v299 = LODWORD(STACK[0x580]) - 116579437;
  LODWORD(STACK[0x470]) = v298;
  v300 = v295 ^ v298 ^ (v237 + 1805433719) ^ v258 ^ LODWORD(STACK[0x5C8]) ^ v297 ^ v248;
  LODWORD(STACK[0x3E4]) = v242 - 738078000;
  v301 = v300 ^ (v242 - 738078000) ^ LODWORD(STACK[0x678]);
  LODWORD(STACK[0x33C]) = v275 + 934336762;
  LODWORD(STACK[0x3CC]) = v299;
  v302 = v301 ^ (v275 + 934336762) ^ (v247 + 837144878) ^ v299 ^ v239 ^ v268 ^ (v282 - 407012458);
  v303 = STACK[0x4A8];
  LODWORD(STACK[0x438]) = LODWORD(STACK[0x4A8]) - LODWORD(STACK[0x3E8]);
  v304 = STACK[0x610];
  LODWORD(STACK[0x434]) = LODWORD(STACK[0x610]) - v303;
  v305 = STACK[0x4FC];
  v306 = LODWORD(STACK[0x4FC]) ^ v304;
  LODWORD(STACK[0x3F4]) = v306;
  v307 = LODWORD(STACK[0x388]) + LODWORD(STACK[0x6E0]);
  LODWORD(STACK[0x510]) = v306 - 1373634469;
  v308 = LODWORD(STACK[0x638]) - 506131513;
  v309 = LODWORD(STACK[0x3E0]) - 119104;
  v310 = v289 + 1373507766;
  v311 = LODWORD(STACK[0x6A8]) - 1389213032;
  v312 = v255 + 1590539669;
  LODWORD(STACK[0x610]) = v311;
  v313 = v309;
  LODWORD(STACK[0x370]) = v308;
  LODWORD(STACK[0x468]) = v312;
  LODWORD(STACK[0x3C8]) = v253 - 1198795438;
  v314 = v302 ^ v311 ^ v267 ^ v269 ^ v280 ^ v290 ^ (v289 + 1373507766) ^ v309 ^ v308 ^ v312 ^ (v253 - 1198795438) ^ LODWORD(STACK[0x648]);
  v315 = LODWORD(STACK[0x520]) ^ 0x7981C29E;
  LODWORD(STACK[0x608]) = v315;
  v316 = STACK[0x62C];
  v317 = STACK[0x570];
  v318 = v314 ^ v315 ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x700]) ^ v294 ^ (v306 - 1373634469) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x5E8]) ^ (v307 - 504517668) ^ (v278 + 1319004320) ^ (LODWORD(STACK[0x56C]) - 388164958);
  v319 = STACK[0x5E0];
  v320 = LODWORD(STACK[0x6C0]) - LODWORD(STACK[0x5E0]);
  LODWORD(STACK[0x3B4]) = v320;
  v321 = LODWORD(STACK[0x560]) - 916076941;
  LODWORD(STACK[0x450]) = v321;
  v320 -= 1650934871;
  LODWORD(STACK[0x3B0]) = v320;
  v322 = LODWORD(STACK[0x478]) ^ 0x550DEBF1;
  v323 = STACK[0x358];
  v324 = v318 ^ LODWORD(STACK[0x358]) ^ v320 ^ v322 ^ v321 ^ (v271 + 1374096011);
  v325 = LODWORD(STACK[0x6B0]) + 38764066;
  LODWORD(STACK[0x500]) = v325;
  v326 = LODWORD(STACK[0x650]) + 638917997;
  v327 = v324 ^ LODWORD(STACK[0x660]) ^ v325;
  LODWORD(STACK[0x504]) = v293;
  v328 = STACK[0x534];
  v329 = STACK[0x360];
  v330 = __ROR4__(LODWORD(STACK[0x690]) ^ v327 ^ v293 ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x360]) ^ v292 ^ v326 ^ (LODWORD(STACK[0x590]) - 1299404777) ^ 0x6B41D873, 26);
  v331 = v305 + LODWORD(STACK[0x4D0]);
  v332 = v296 ^ LODWORD(STACK[0x4D0]);
  v333 = LODWORD(STACK[0x6F8]) ^ v279;
  v334 = STACK[0x368];
  v335 = LODWORD(STACK[0x368]) - 1476385553;
  v336 = LODWORD(STACK[0x558]) - 694375668;
  v337 = LODWORD(STACK[0x548]) - 1024510895;
  LODWORD(STACK[0x600]) = v337;
  LODWORD(STACK[0x388]) = v332;
  v338 = v332 ^ 0x35036DF9;
  LODWORD(STACK[0x3E0]) = v335;
  LODWORD(STACK[0x3E8]) = v336;
  v339 = v332 ^ 0x35036DF9 ^ v335 ^ v337 ^ v336 ^ v333 ^ 0x54EC859D ^ LODWORD(STACK[0x5D0]);
  v340 = STACK[0x37C];
  v341 = LODWORD(STACK[0x37C]) - 1380516954;
  v342 = STACK[0x3DC];
  v343 = LODWORD(STACK[0x3DC]) + 1432927330;
  v344 = STACK[0x338];
  v345 = LODWORD(STACK[0x338]) + 1144449206;
  LODWORD(STACK[0x340]) = v341;
  v346 = STACK[0x59C];
  v347 = v341 ^ LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x354]) = v345;
  LODWORD(STACK[0x350]) = v343;
  v348 = v339 ^ v347 ^ v345 ^ v343 ^ LODWORD(STACK[0x710]) ^ LODWORD(STACK[0x5D4]);
  v349 = LODWORD(STACK[0x51C]) ^ 0x82C89AE6;
  v350 = v348 ^ v349 ^ __ROR4__(v330 ^ 0xAEA7182F, 6);
  LODWORD(STACK[0x4FC]) = v350 & 0xC232C3D0 ^ 0xBFCFFFAF;
  LODWORD(STACK[0x4A0]) = v350 & 0x3DCD3C2F;
  LODWORD(STACK[0x4F8]) = v350 & 0x40200390;
  LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x460]) + LODWORD(STACK[0x460]) - (LODWORD(STACK[0x460]) ^ 0x608CF6A4) - 16 * ((LODWORD(STACK[0x460]) - (LODWORD(STACK[0x460]) ^ 0x608CF6A4u)) >> 3);
  v351 = LODWORD(STACK[0x480]) ^ 0xE647C91E;
  v352 = LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x688]);
  v353 = LODWORD(STACK[0x6C8]) ^ 0xF668162B ^ LODWORD(STACK[0x640]);
  v354 = v319 ^ LODWORD(STACK[0x5F0]);
  v355 = LODWORD(STACK[0x5EC]) - LODWORD(STACK[0x6D0]);
  v356 = LODWORD(STACK[0x5F0]) ^ 0x7B27073C ^ LODWORD(STACK[0x5EC]);
  v357 = STACK[0x39C];
  LODWORD(STACK[0x430]) = LODWORD(STACK[0x39C]) - 1388809772;
  v358 = v334 - v342 - v357 - v329 - 693862702;
  LODWORD(STACK[0x360]) = v307 - 504517668;
  v359 = STACK[0x458];
  v360 = LODWORD(STACK[0x458]) ^ (v307 - ((2 * (v307 - 504517668)) & 0x25040C94) + 1953477158) ^ 0xEF75F9A7 ^ ((v358 ^ LODWORD(STACK[0x6F0])) - v328);
  LODWORD(STACK[0x3DC]) = v310;
  v361 = (LODWORD(STACK[0x42C]) - ((2 * v310) & 0x89C8585A) - 1765655325) ^ v317 ^ 0x4153DA27 ^ (v360 + LODWORD(STACK[0x5B8]));
  v362 = STACK[0x3C0];
  LODWORD(STACK[0x42C]) = LODWORD(STACK[0x3C0]) + 1539332275;
  v363 = STACK[0x3B8];
  LODWORD(STACK[0x5F0]) = LODWORD(STACK[0x3B8]) + 360977476;
  LODWORD(STACK[0x368]) = v322;
  v364 = v362 - v363 - v322 + 1178354799 + ((v361 + LODWORD(STACK[0x5A0])) ^ LODWORD(STACK[0x5A8]));
  v365 = LODWORD(STACK[0x4C4]) ^ 0x3500960C;
  LODWORD(STACK[0x4A8]) = v365;
  v366 = v365 - LODWORD(STACK[0x6B8]) - LODWORD(STACK[0x348]) - 1374096011;
  LODWORD(STACK[0x480]) = v356;
  v367 = STACK[0x4B0];
  LODWORD(STACK[0x5EC]) = LODWORD(STACK[0x4B0]) - 903838782;
  v368 = (LODWORD(STACK[0x390]) - ((2 * LODWORD(STACK[0x518])) & 0x286428E) + 1826610366) ^ LODWORD(STACK[0x5C4]) ^ 0x1432147 ^ (v367 - LODWORD(STACK[0x380]) - LODWORD(STACK[0x384]) - 1295583013 + ((v366 + (v364 ^ v356)) ^ v316));
  LODWORD(STACK[0x640]) = v354 - 1726028798;
  v369 = STACK[0x418];
  v370 = LODWORD(STACK[0x418]) - 939856531;
  LODWORD(STACK[0x518]) = v370;
  v371 = LODWORD(STACK[0x5E8]) ^ (v369 - ((2 * v370) & 0x1C9614E0) - 700057635) ^ 0x98BE1170 ^ (v368 - (v354 + v313) + 1726028798);
  LODWORD(STACK[0x380]) = v331;
  LODWORD(STACK[0x5E8]) = v331 ^ 0x3CD4D0F4;
  LODWORD(STACK[0x460]) = v349;
  v372 = v323 - LODWORD(STACK[0x5FC]);
  v373 = LODWORD(STACK[0x554]) ^ 0xE4BFA889;
  LODWORD(STACK[0x5E0]) = v373;
  v374 = v372 - v373 + ((v371 - (v331 ^ 0x3CD4D0F4) - ((2 * (v371 - (v331 ^ 0x3CD4D0F4))) & 0xA92CC948) + 1419142308) ^ v349);
  LODWORD(STACK[0x358]) = v333 ^ 0x54EC859D;
  v375 = ((v374 - ((2 * v374) & 0x28F0640) - 2126019808) ^ v333 ^ 0x54EC859D) - LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x348]) = v333 ^ 0x55AB06BD;
  v376 = LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x660]) ^ (LODWORD(STACK[0x654]) - ((2 * LODWORD(STACK[0x440])) & 0x3257D6E4) + 1904669795) ^ 0x192BEB72 ^ (v344 - v340 - 1770001136 + ((v375 + 2 * (v374 & (v333 ^ 0x55AB06BD)) + 388164958) ^ LODWORD(STACK[0x5B4])));
  LODWORD(STACK[0x4D0]) = v353;
  v377 = (v376 + v353) ^ LODWORD(STACK[0x3AC]);
  v378 = LODWORD(STACK[0x3BC]) - LODWORD(STACK[0x448]);
  v379 = STACK[0x43C];
  LODWORD(STACK[0x448]) = LODWORD(STACK[0x43C]) + 538293148;
  LODWORD(STACK[0x654]) = v351;
  v380 = v378 + v351 - v379;
  v381 = STACK[0x4B8];
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x4B8]) + 1540308406;
  v382 = LODWORD(STACK[0x6C0]) - 8;
  LODWORD(STACK[0x440]) = v382;
  v383 = v380 - v381 - v382 + 988788596 + ((v377 - LODWORD(STACK[0x510])) ^ LODWORD(STACK[0x5CC]));
  v384 = STACK[0x700];
  v385 = LODWORD(STACK[0x6E0]) - LODWORD(STACK[0x700]);
  LODWORD(STACK[0x6C0]) = v385 ^ 0xABBE9FE4;
  v386 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x670]) ^ __ROR4__(__ROR4__(LODWORD(STACK[0x6E8]) ^ v385 ^ v383, 12) ^ 0xAA3ED0D6, 20) ^ 0x46B3F547;
  v387 = STACK[0x4D4];
  LODWORD(STACK[0x4B8]) = LODWORD(STACK[0x4D4]) - 382225430;
  LODWORD(STACK[0x43C]) = v352 + 90197513;
  v388 = STACK[0x698];
  v389 = v346 ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x3A0]) ^ (v386 - (v387 + LODWORD(STACK[0x698]) + v352 + LODWORD(STACK[0x590])) - 441082548);
  v390 = (LODWORD(STACK[0x560]) - ((2 * LODWORD(STACK[0x450])) & 0x87FB66CC) - 1922860583) ^ 0x3154E604 ^ ((v389 & 0xCB5AA1F ^ 0xA2BD8B61) & (v389 & 0xF34A55E0 ^ 0x8EB5FF5F) | v389 & 0x51425480);
  v391 = LODWORD(STACK[0x434]) ^ 0x87F6299E;
  LODWORD(STACK[0x414]) = v391;
  v392 = v391 - LODWORD(STACK[0x490]) + LODWORD(STACK[0x710]) - 934336762 + v390;
  v393 = v384 ^ LODWORD(STACK[0x500]) ^ (LODWORD(STACK[0x3B4]) - ((2 * LODWORD(STACK[0x3B0])) & 0x83C61306) + 1601946924);
  v394 = LODWORD(STACK[0x4C0]) ^ 0xD2298834;
  LODWORD(STACK[0x4B0]) = v394;
  v395 = v394 ^ v393 ^ 0x41070ED5 ^ v392;
  v396 = STACK[0x498];
  LODWORD(STACK[0x490]) = LODWORD(STACK[0x498]) - 823617604;
  v397 = LODWORD(STACK[0x438]) ^ 0xDBBA126B;
  LODWORD(STACK[0x418]) = v397;
  v398 = LODWORD(STACK[0x400]) - (v397 + v396) + LODWORD(STACK[0x638]) - LODWORD(STACK[0x558]) + LODWORD(STACK[0x680]) + LODWORD(STACK[0x3F8]);
  v399 = STACK[0x408];
  LODWORD(STACK[0x3F8]) = LODWORD(STACK[0x408]) - 773579256;
  v400 = v398 - v399;
  v401 = LODWORD(STACK[0x488]) + 3060;
  LODWORD(STACK[0x2D8]) = v401;
  LODWORD(STACK[0x338]) = v355;
  LODWORD(STACK[0x400]) = v355 ^ 0xC6A718E0;
  LODWORD(STACK[0x638]) = v401 ^ 0xC286ABCD;
  v402 = LODWORD(STACK[0x574]) ^ 0x7B78BB03;
  v403 = (LODWORD(STACK[0x6A8]) - LODWORD(STACK[0x580]) - LODWORD(STACK[0x650]) - 1911551592 + ((v400 + (v355 ^ 0xC6A718E0) - (v401 ^ 0xC286ABCD) + LODWORD(STACK[0x5D4]) - 353377083 + v395) ^ LODWORD(STACK[0x508]))) ^ LODWORD(STACK[0x678]);
  v404 = STACK[0x608];
  v405 = LODWORD(STACK[0x5C8]) - LODWORD(STACK[0x608]);
  LODWORD(STACK[0x5C8]) = v402;
  v406 = v405 - v402 + v403;
  v407 = STACK[0x4C8];
  v408 = LODWORD(STACK[0x4C8]) - 407835423;
  LODWORD(STACK[0x408]) = v408;
  v409 = ((((LODWORD(STACK[0x658]) ^ (v407 - ((2 * v408) & 0x5AE07830) + 354494713) ^ 0x2D703C18 ^ v406) + LODWORD(STACK[0x614])) ^ LODWORD(STACK[0x524])) + LODWORD(STACK[0x5D0])) ^ LODWORD(STACK[0x3F0]);
  v410 = LODWORD(STACK[0x4CC]) ^ 0xFAC9305D;
  LODWORD(STACK[0x4C8]) = v410;
  v411 = STACK[0x548];
  v412 = (LODWORD(STACK[0x548]) - ((2 * LODWORD(STACK[0x600])) & 0x65EA6820) + 1977903201) ^ LODWORD(STACK[0x588]) ^ 0xB2F53410 ^ (((v409 - (v338 + v410)) ^ LODWORD(STACK[0x6A0])) + LODWORD(STACK[0x3EC]));
  v413 = LODWORD(STACK[0x6A0]) - v404 - LODWORD(STACK[0x6B0]) + 43627536;
  v414 = LODWORD(STACK[0x6D8]) ^ 0x5E8E6E4B;
  LODWORD(STACK[0x6D0]) = v414;
  v415 = v412 - (v414 + LODWORD(STACK[0x420])) + 738078000;
  v416 = ((v411 + v404 + LODWORD(STACK[0x620]) + 692013247) >> 1) - 1720969646;
  v417 = 2 * (((v388 + 1393865300 + LODWORD(STACK[0x3F4])) ^ 0x15188FE9) + LODWORD(STACK[0x620])) + 1166848713;
  v418 = STACK[0x748];
  v419 = *(STACK[0x748] + 8 * (*(STACK[0x748] + 8 * ((*(STACK[0x748] + 8 * (*(STACK[0x748] + 8) & 1)) & 1) == 0)) & 1));
  LODWORD(v419) = (v419 & 1 | 0x15197FB8) - 2 * (v419 & 1) - 11;
  v420 = (((v419 ^ 0xA2F06A34) + 1294545326) ^ ((v419 ^ 0xF6F931D7) + 421554767) ^ ((v419 ^ 0x4110244E) - 1362526248)) - 1927057812;
  LODWORD(STACK[0x420]) = v359 ^ 0xF6DB7FF2;
  LODWORD(STACK[0x6E0]) = v415 ^ LODWORD(STACK[0x618]);
  LODWORD(STACK[0x6C8]) = v416;
  LODWORD(STACK[0x648]) = (v413 >> 1) - 2090056246;
  LODWORD(STACK[0x688]) = LODWORD(STACK[0x690]) ^ 0xB1252B74;
  LODWORD(STACK[0x6B0]) = v417;
  v421 = STACK[0x538];
  v422 = (STACK[0x538] - 5054) | 8;
  STACK[0x700] = 0xA62EDBCFB6ED7434;
  v423 = v420 < 0x87E392A1;
  v424 = 0x3F519381655BDB57 * (*(v418 + 8 * (v422 + 0xC4AF91BF34691A8) - 0x6257C8DF9A352FA8) ^ 0x5D5D5D5D5D5D5D5DLL);
  if (v420 >= 0x87E392A1)
  {
    v423 = v420 > 0x87E392A2;
  }

  return (*(STACK[0x668] + 8 * ((30 * !v423) ^ v421)))(2279838369, 0xB8DC5907FFD19ABALL, 2279838370, 0x7A334B8600000000, 284164418, 0x6CB63B000000000, 148128021);
}

uint64_t sub_1000E4E84()
{
  v3 = (v0 - 77) | 0x23;
  LODWORD(STACK[0x4D4]) = LODWORD(STACK[0x578]) ^ 0x58C06515;
  LODWORD(STACK[0x6A8]) = LODWORD(STACK[0x6F8]) + LODWORD(STACK[0x528]);
  LODWORD(STACK[0x488]) = LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x5B4]) ^ LODWORD(STACK[0x414]) ^ LODWORD(STACK[0x630]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x5FC]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x480]) ^ LODWORD(STACK[0x5C4]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x6C0]) ^ LODWORD(STACK[0x634]) ^ LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x638]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x6D0]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x440]) ^ ((LODWORD(STACK[0x4A0]) ^ 0xBE52F847 ^ v3) & STACK[0x4FC] | LODWORD(STACK[0x4F8])) ^ 0xDCD1A7E4;
  v4 = (*(STACK[0x748] + 8 * (((v2 < 0x57367448) << 32) + v2) - 0x2B9B3A240) ^ 0x5D5D5D5D5D5D5D5DLL) * (((v3 - 47891829) & 0x2DABFFF) + 0x3F519381655BCCA9);
  return (*(STACK[0x668] + 8 * ((110 * (v1 < 2)) ^ v3)))();
}

uint64_t sub_1000E57F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v12 = v4 ^ 0x1B93;
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x708]);
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0x504]) - LODWORD(STACK[0x6E0]);
  v13 = ((a2 + v3) >> 16) + ((a2 + v3 + ((a2 + v3) >> 16)) >> 8);
  v14 = v7 - ((v13 + a2 + 0x28634BE662EF4982 + v9) >> (v4 ^ 0xB5u)) + a1;
  v15 = v13 + v6 + v14;
  v16 = v15 >> 11;
  v17 = (v15 - (v15 >> 11)) >> 4;
  v18 = v13 - v16;
  v19 = v13 - v16 + v14 + v17 + v6;
  v20 = v13 + v14 + v5 + v17;
  v21 = (v20 - v16) >> 29;
  v22 = (v20 - v21 - v16) >> 12;
  v23 = v14 + v17 + v22;
  v24 = (v20 + v22 - v21 - v16) >> 2;
  v25 = v13 - v16 + v5 + v23 - v24 - v21;
  v26 = v13 + a3 + v23;
  v27 = (v26 - v24 - v21 - v16) >> 31;
  v28 = (v26 - v27 - v24 - v21 - v16) >> 12;
  v29 = v18 + a3 + v23 - ((v26 - v28 - v27 - v24 - v21 - v16) >> 4) - v28 - v27 - v24 - v21;
  v30 = (v29 ^ 0xE3B0EC50283B3A9BLL) - ((v29 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v29 ^ 0xE3B0EC50283B3A9BLL) - ((v29 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v31 = v30 - (v30 >> 6);
  LODWORD(v23) = v31 ^ v19;
  v32 = (v31 ^ 0x1CBB3D2D625F8025) + ((v31 ^ 0x1CBB3D2D625F8025) >> 27) - (((v31 ^ 0x1CBB3D2D625F8025) + ((v31 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v33 = v32 + (v32 >> 7);
  LODWORD(v24) = v33 ^ v25;
  v34 = v33 - 0x65FB2AD6BDC595DFLL - ((v33 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v33 - 0x65FB2AD6BDC595DFLL - ((v33 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v35 = v34 + (v34 >> 3);
  v36 = v35 + 0x608394D4D392467ELL + ((v35 + 0x608394D4D392467ELL) >> 31) - ((v35 + 0x608394D4D392467ELL + ((v35 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v37 = v36 - (v36 >> 5);
  v38 = v23 ^ v8 ^ v37;
  v39 = (v37 ^ 0x601E5F8F690C4A13) + ((v37 ^ 0x601E5F8F690C4A13) >> 31) - (((v37 ^ 0x601E5F8F690C4A13) + ((v37 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v40 = v39 - (v39 >> 8);
  v41 = v24 ^ v10 ^ v40;
  v40 += 0x42275266A1F057E1;
  v42 = ((v40 >> 31) ^ v40) + 2 * ((v40 >> 31) & v40) + ((((v40 >> 31) ^ v40) + 2 * ((v40 >> 31) & v40)) >> 11);
  v43 = v35 ^ v29 ^ v11 ^ ((v42 >> 3) + v42);
  LODWORD(STACK[0x3BC]) = v38 & 0x7F;
  LODWORD(v29) = v38 & 0x7F ^ 0x52;
  LODWORD(STACK[0x548]) = v29;
  LODWORD(v42) = 16843009 * v29;
  v44 = (16843009 * v29) & 0x7365565;
  LODWORD(STACK[0x6F8]) = v42;
  v45 = v42 & 0x78C9AA9A;
  if (v38 == 1057847823)
  {
    v45 = 1566399837;
  }

  LODWORD(STACK[0x708]) = (v45 | 0x2CEACAC5) ^ (v44 ^ 0x2CEACAC5) & ~v45;
  LODWORD(STACK[0x580]) = v43;
  LODWORD(STACK[0x6D0]) = v43 & 7 ^ 7;
  v46 = -(v43 & 7 ^ 7) & 7;
  LODWORD(STACK[0x3B8]) = v43 & 7;
  if ((v43 & 7) == 7)
  {
    v47 = 0;
  }

  else
  {
    v47 = 255;
  }

  LODWORD(STACK[0x6E0]) = v46;
  v48 = v47 << v46;
  v49 = 16843009 * v48;
  LODWORD(STACK[0x538]) = (-1358954496 * v48) & (v41 ^ 0x55000000);
  v50 = v48 ^ 0xFE7AF449;
  if ((v43 & 7) == 7)
  {
    v50 = 25496502;
  }

  v51 = (v50 ^ 0xB6) & (v38 ^ 0xCC) ^ v50 & 0xC3;
  LODWORD(STACK[0x540]) = v49;
  LODWORD(STACK[0x528]) = -(v51 ^ 0x82) ^ (v49 - (v51 ^ 0x82 ^ v49)) ^ ((v51 ^ 0x82) - ((2 * v51) & 0x92) - 164796087) ^ 0xF62D6949;
  LODWORD(STACK[0x698]) = v38;
  v52 = 16843009 * ((v38 ^ BYTE1(v38) ^ BYTE2(v38)) ^ HIBYTE(v38) ^ 0x7C);
  LODWORD(STACK[0x650]) = v41;
  v53 = 16843009 * ((v41 ^ BYTE1(v41) ^ BYTE2(v41)) ^ HIBYTE(v41) ^ 5);
  v54 = STACK[0x748];
  v55 = *(STACK[0x748] + 8 * (*(STACK[0x748] + 8 * ((*(STACK[0x748] + 8 * ((*(STACK[0x748] + 8) & 1) == 0)) & 1) == 0)) & 1)) & 1;
  v56 = LODWORD(STACK[0x6C8]) ^ 0xE33621AD;
  v57 = LODWORD(STACK[0x648]) ^ 0xD6253B2A;
  v58 = (((v55 ^ 0x4EA645CD) + 138977098) ^ (v55 - 1460739383) ^ (v55 - 1192305319)) - 657398539;
  v59 = LODWORD(STACK[0x6B0]) ^ 0x85CE69A9;
  LODWORD(STACK[0x590]) = v52;
  LODWORD(STACK[0x560]) = v53;
  LODWORD(STACK[0x558]) = v53 ^ v52;
  v60 = v58 < 0x1FBFBF7B;
  v61 = *v54 ^ ((v12 - 629) + 0x5D5D5D5D5D5D4A95);
  if (v58 >= 0x1FBFBF7B)
  {
    v60 = v58 > 0x1FBFBF7C;
  }

  return (*(STACK[0x668] + 8 * ((158 * v60) ^ v12)))();
}

uint64_t sub_1000E6344@<X0>(unint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  LODWORD(STACK[0x2C8]) = LODWORD(STACK[0x6A8]) ^ 0x99F8C893;
  LODWORD(STACK[0x4F8]) = STACK[0x698] & 0xFFFFFF80;
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x6C0]) - LODWORD(STACK[0x708]);
  LODWORD(STACK[0x6A8]) = LODWORD(STACK[0x528]) + LODWORD(STACK[0x540]);
  LODWORD(STACK[0x334]) = LODWORD(STACK[0x560]) ^ 0x530D107E;
  LODWORD(STACK[0x37C]) = LODWORD(STACK[0x590]) ^ 0x8D0EEF31;
  v3 = STACK[0x748];
  STACK[0x708] = (a3 - 4568) | 0xD06u;
  v4 = (a1 < 0xFBCF6D3) << 32;
  v5 = 0x3F519381655BDB57 * (*(v3 + 8 * (v4 + a1) - 2112337560) ^ 0x5D5D5D5D5D5D5D5DLL);
  v6 = v4 + (((v5 ^ a2 ^ 0xA7EC69237A32854CLL) + 0x44441F3A606BED6) ^ ((STACK[0x708] ^ 0x437D58DE99916F36 ^ v5 ^ a2) - 0x1F2A8FF1BA5AA6A6) ^ ((v5 ^ a2 ^ 0xE49131FDE3A3E78CLL) + 0x4739192D3F97DC16));
  return (*(STACK[0x668] + 8 * ((49 * ((a1 & 0xFFFFFFFE) != 264042194)) ^ a3)))(3797446376);
}

uint64_t sub_1000E6B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  LODWORD(STACK[0x6C0]) = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x540]);
  v44 = ((v40 + v43) >> 16) + ((v40 + v43 + ((v40 + v43) >> 16)) >> 8);
  v45 = v44 + v40 + a7;
  v46 = v45 >> 27;
  v47 = (v45 - (v45 >> 27)) >> 11;
  v48 = (v45 - v47 - (v45 >> 27)) >> 4;
  v49 = v44 - (v45 >> 27);
  LODWORD(v45) = v44 - (v45 >> 27) + a7 + v40 + v48 - v47;
  v50 = v40 + a6 + v48;
  v51 = v40 + v48;
  v52 = v44 + v50;
  v53 = (v44 + v50 - v47 - v46) >> 29;
  v54 = (v52 - v53 - v47 - v46) >> 12;
  v55 = v51 + v54;
  v56 = (v52 + v54 - v53 - v47 - v46) >> 2;
  LODWORD(v54) = v44 - v46 + a6 + v55 - v56 - v53 - v47;
  v57 = v44 + v39 + v55;
  v58 = (v57 - v56 - v53 - v47 - v46) >> 31;
  v59 = v57 - v58 - v56 - v53 - v47 - v46;
  v60 = v49 + v39 + v55 - (v59 >> 12) - v58 - v56 - v53 - v47 - ((v59 - (v59 >> 12)) >> 4);
  v61 = (v60 ^ 0xE3B0EC50283B3A9BLL) - ((v60 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v60 ^ 0xE3B0EC50283B3A9BLL) - ((v60 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v62 = v61 - (v61 >> 6);
  LODWORD(v45) = v62 ^ v45 ^ v38;
  v63 = (v62 ^ 0x1CBB3D2D625F8025) + ((v62 ^ 0x1CBB3D2D625F8025) >> 27) - (((v62 ^ 0x1CBB3D2D625F8025) + ((v62 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v64 = v63 + (v63 >> 7);
  LODWORD(v59) = v64 ^ v54;
  v65 = v64 - 0x65FB2AD6BDC595DFLL - ((v64 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v64 - 0x65FB2AD6BDC595DFLL - ((v64 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v66 = v65 + (v65 >> 3);
  v67 = v66 + 0x608394D4D392467ELL + ((v66 + 0x608394D4D392467ELL) >> 31) - ((v66 + 0x608394D4D392467ELL + ((v66 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v68 = v67 - (v67 >> 5);
  LODWORD(v45) = v45 ^ v68;
  v69 = (v68 ^ 0x601E5F8F690C4A13) + ((v68 ^ 0x601E5F8F690C4A13) >> 31) - (((v68 ^ 0x601E5F8F690C4A13) + ((v68 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v70 = v69 - (v69 >> 8);
  v71 = ((v59 ^ v70) - ((2 * (v59 ^ v70)) & 0x853EA7A0) - 1029745712) ^ v41;
  v72 = v45 ^ 0x432AA205;
  v73 = v45 ^ 0x6F3BE6A5;
  v74 = v70 + 0x42275266A1F057E1 + ((v70 + 0x42275266A1F057E1) >> 31) + ((v70 + 0x42275266A1F057E1 + ((v70 + 0x42275266A1F057E1) >> 31)) >> 11);
  if (v74)
  {
    v75 = v72;
  }

  else
  {
    v75 = v73;
  }

  v76 = v75 & 0x532AA20F | v73;
  v77 = 16843009 * ((v75 & 0xF | v73) ^ ((v75 & 0xA20F | v73) >> 8) ^ BYTE2(v76) ^ HIBYTE(v76) ^ 0x91);
  LODWORD(STACK[0x4A0]) = v77;
  LODWORD(STACK[0x540]) = v71;
  v78 = 16843009 * ((v71 ^ BYTE1(v71) ^ BYTE2(v71)) ^ HIBYTE(v71) ^ 0x10);
  LODWORD(STACK[0x498]) = v78;
  v79 = v77 ^ v78 ^ 0x73737373;
  LODWORD(STACK[0x3B4]) = v79;
  v80 = LODWORD(STACK[0x558]) ^ 0x2B2B2B2B;
  LODWORD(STACK[0x528]) = v80;
  LODWORD(STACK[0x3F0]) = LODWORD(STACK[0x6E8]) + 1257346221 * (v79 - v80);
  LODWORD(STACK[0x3EC]) = LODWORD(STACK[0x6F0]) + 1035778971 * (v80 - v79);
  v81 = v66 ^ v60 ^ ((v74 >> 3) + v74);
  v82 = (v81 - ((2 * v81) & 0xD3853AA2) - 373121711) ^ v42;
  v83 = STACK[0x6F8];
  v84 = LODWORD(STACK[0x6F8]);
  v85 = (STACK[0x6F8] & 0xA5 | 0xC9FECB5A) ^ (LODWORD(STACK[0x4F8]) ^ 0x1C8E1EDA) & ~v84;
  v86 = LODWORD(STACK[0x698]) ^ 0xD570D5D2;
  v87 = *(&off_1006B4E30 + (STACK[0x708] ^ 0xC0E)) - 8;
  v88 = STACK[0x708];
  v89 = *(&off_1006B4E30 + (STACK[0x708] ^ 0xF38)) - 4;
  v90 = *&v89[4 * (v85 % 0x101)] - 1553261725;
  v91 = LODWORD(STACK[0x710]) ^ *&v87[4 * (v86 % 0x101)] ^ v90 ^ (v90 >> 4) ^ (v90 >> 6) ^ 0xB117C9AA;
  v92 = v82 ^ 0x5D689086;
  LODWORD(STACK[0x320]) = v91 + 110990351 * ((((v82 & 0xFFFFFFF8 ^ 0x5378EFA5) & (v82 & 7 ^ 0xFFFFFFF9) | v82 & 2) ^ 0xE107F27) - (v82 ^ 0x5D689086));
  LODWORD(STACK[0x3F4]) = LODWORD(STACK[0x4FC]) + 680398782;
  v93 = ((v81 - ((2 * v81) & 0xA2) + 81) ^ v42) & 7 ^ 6;
  v94 = -v93 & 7;
  if ((((v81 - ((2 * v81) & 0xA2) + 81) ^ v42) & 7) == 6)
  {
    v95 = 0;
  }

  else
  {
    v95 = 255;
  }

  v96 = v95 << v94;
  v97 = (v95 << v94) ^ 0x88FF4EEE;
  if ((((v81 - ((2 * v81) & 0xA2) + 81) ^ v42) & 7) == 6)
  {
    v97 = 1996534033;
  }

  LODWORD(STACK[0x3B0]) = v76 ^ 0xB1;
  LODWORD(STACK[0x6F0]) = v93;
  v98 = v93 + 2093963891 - ((2 * v93) & 8) + 1;
  v99 = *(&off_1006B4E30 + (v88 ^ 0xC75)) - 8;
  v100 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x3B8]) ^ 0x7CCF5A73 ^ v98;
  v101 = STACK[0x6E0];
  v102 = LODWORD(STACK[0x6E0]) ^ 0xD53D4D5B ^ *&v99[4 * LODWORD(STACK[0x6E0])];
  v103 = *&v89[4 * v94];
  LODWORD(STACK[0x710]) = LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x6D8]);
  LODWORD(STACK[0x3B8]) = -1526726656 * v96;
  LODWORD(STACK[0x4FC]) = 16843009 * v96;
  LODWORD(STACK[0x384]) = v73 & 0x7F;
  v104 = 16843009 * (v73 & 0x7F);
  v105 = v83 ^ LODWORD(STACK[0x3E0]) ^ v101 ^ v104 ^ ((v104 ^ v83) >> 8);
  LODWORD(STACK[0x6E8]) = v94;
  LODWORD(STACK[0x518]) = v105 ^ v94 ^ ((v94 ^ v101) << 7);
  LODWORD(STACK[0x538]) = v76;
  v106 = v76 & 0xFFFFFF80 ^ 0x5D689080;
  v107 = v76 ^ 0x5D689080;
  v108 = v76 ^ 0x5D689080 ^ LODWORD(STACK[0x510]);
  LODWORD(STACK[0x6D8]) = v104;
  v109 = v104;
  LODWORD(STACK[0x510]) = v108 ^ (v106 + v104);
  v110 = LODWORD(STACK[0x500]) ^ v82 ^ 0x7C37D0F8 ^ (v92 - ((2 * v92) & 0x42BE80FC) + 559890558);
  v111 = STACK[0x580];
  v112 = STACK[0x580] & 0xFFFFFFF8;
  v113 = LODWORD(STACK[0x580]) | 0xFFFFFFF8;
  v114 = LODWORD(STACK[0x580]) ^ 0xC312C5DF;
  LODWORD(STACK[0x3E0]) = (181770483 * v114) ^ LODWORD(STACK[0x504]) ^ (181770483 * (((v112 ^ 0xC2C06685) & v113 | STACK[0x580] & 2) ^ 0x1D2A35F));
  v115 = *&v99[4 * (v107 % 0x101)];
  v116 = v115 ^ (v107 % 0x101 - ((2 * (v107 % 0x101)) & 0x3CE) - 1680110617);
  if ((v115 & 0x2000000) != 0)
  {
    v117 = 0x2000000;
  }

  else
  {
    v117 = -33554432;
  }

  LODWORD(STACK[0x504]) = *&v87[4 * ((v106 ^ v109) % 0x101)] ^ LODWORD(STACK[0x59C]) ^ (v117 + v116);
  v118 = LODWORD(STACK[0x4F8]) ^ 0x804E4872 ^ (v84 - ((2 * LODWORD(STACK[0x3BC])) & 0x1A) - 1430167027);
  v119 = (v106 ^ v109) + (v107 ^ LODWORD(STACK[0x3E8])) - 2 * ((v106 ^ v109) & (v107 ^ LODWORD(STACK[0x3E8])));
  LODWORD(STACK[0x4F8]) = *&v87[4 * (v114 % 0x101)] ^ 0x3CD4258A;
  HIDWORD(v120) = v106 ^ v109;
  LODWORD(v120) = v106;
  LODWORD(STACK[0x59C]) = (v120 >> 13) & 0xFFF87FFF ^ __ROR4__(v119, 17) ^ 0x7AF6F10F;
  LODWORD(STACK[0x3E8]) = v85 ^ v86 ^ (16 * (v85 ^ v86)) ^ (v86 + v118 + v110 + 1);
  v121 = *&v89[4 * ((((v112 ^ 0x9E22E9C) & v113 & 0xFFFFFFFC | v111 & 3) ^ 0xCAF0EB47) % 0x101)] - 1553261725;
  v122 = *&v89[4 * (v114 % 0x101)] - 1553261725;
  LODWORD(STACK[0x3BC]) = LODWORD(STACK[0x3CC]) + ((v114 % 0x101) ^ 0xD53D4D5B ^ *&v99[4 * (v114 % 0x101)]) + (v122 ^ (v122 >> 6) ^ (v122 >> 4) ^ 0x723C13DF);
  v123 = (LODWORD(STACK[0x3C8]) ^ v82 ^ 0x92CEDCBD ^ (v92 - ((2 * v92) & 0x9F4C9876) - 811185093)) + 49752395 * ((v111 ^ 0x6185AAA6) + v82);
  v124 = STACK[0x748];
  v125 = *STACK[0x748];
  v126 = *(STACK[0x748] + 8);
  v127 = 0x3F519381655BDB57 * (v125 ^ 0x5D5D5D5D5D5D5D5DLL);
  v128 = ((v127 ^ 0x9F70F237C236F41BLL) + 0x1A2A0FA279632CF1) ^ ((v127 ^ 0x8DF2AE368A11B1E1) + 0x8A853A33144690BLL) ^ ((v127 ^ 0xB4AC87CEFECA31CELL) + 0x31F67A5B459FE926);
  v129 = ((v128 + 0x2AAA05D8807C4DD3) ^ 0x3DD9C3A869EA0428) & (2 * ((v128 + 0x2AAA05D8807C4DD3) & 0xB1E1D3CD71CB054DLL)) ^ (v128 + 0x2AAA05D8807C4DD3) & 0xB1E1D3CD71CB054DLL;
  v130 = ((2 * ((v128 + 0x2AAA05D8807C4DD3) ^ 0x7C1A6532AAF80E38)) ^ 0x9BF76DFFB66616EALL) & ((v128 + 0x2AAA05D8807C4DD3) ^ 0x7C1A6532AAF80E38) ^ (2 * ((v128 + 0x2AAA05D8807C4DD3) ^ 0x7C1A6532AAF80E38)) & 0xCDFBB6FFDB330B74;
  v131 = (v130 ^ 0x8983047F82200260) & (4 * v129) ^ v129;
  v132 = ((4 * (v130 ^ 0x4408920049110915)) ^ 0x37EEDBFF6CCC2DD4) & (v130 ^ 0x4408920049110915) ^ (4 * (v130 ^ 0x4408920049110915)) & 0xCDFBB6FFDB330B74;
  v133 = (v132 ^ 0x5EA92FF48000950) & (16 * v131) ^ v131;
  v134 = ((16 * (v132 ^ 0xC811240093330221)) ^ 0xDFBB6FFDB330B750) & (v132 ^ 0xC811240093330221) ^ (16 * (v132 ^ 0xC811240093330221)) & 0xCDFBB6FFDB330B70;
  v135 = (v134 ^ 0xCDBB26FD93300300) & (v133 << 8) ^ v133;
  v136 = (((v134 ^ 0x40900248030825) << 8) ^ 0xFBB6FFDB330B7500) & (v134 ^ 0x40900248030825) ^ ((v134 ^ 0x40900248030825) << 8) & 0xCDFBB6FFDB330B00;
  v137 = v135 ^ 0xCDFBB6FFDB330B75 ^ (v136 ^ 0xC9B2B6DB13030000) & (v135 << 16);
  v138 = v128 - 0x2374265A0DB8ACE0 + ((((v128 + 0x2AAA05D8807C4DD3) ^ (2 * ((v137 << 32) & 0x4DFBB6FF00000000 ^ v137 ^ ((v137 << 32) ^ 0x5B330B7500000000) & (((v136 ^ 0x4490024C8300A75) << 16) & 0x4DFBB6FF00000000 ^ 0x490024CC00000000 ^ (((v136 ^ 0x4490024C8300A75) << 16) ^ 0x36FFDB3300000000) & (v136 ^ 0x4490024C8300A75))))) >> 32) ^ 0xB870BAD8);
  v139 = v138 + (v138 >> 16) + ((v138 + (v138 >> 16)) >> 8);
  v140 = (((v139 - 0x58665701DE1FFD7CLL) ^ v127 ^ 0x780D39744FD503C2) + 0x4F813A17022A1475) ^ (((v139 - 0x58665701DE1FFD7CLL) ^ v127 ^ 0xE569AEAC8A1F313ELL) - 0x2D1A5230381FD977) ^ (((v139 - 0x58665701DE1FFD7CLL) ^ v127 ^ 0x9D6497D8C5CA32FCLL) - 0x55176B4477CADAB5);
  v141 = ((v140 + 0x2036BB2A7C476E7) ^ 0x857286C260386C79) & (2 * ((v140 + 0x2036BB2A7C476E7) & 0xC67090EA0A3C7162)) ^ (v140 + 0x2036BB2A7C476E7) & 0xC67090EA0A3C7162;
  v142 = ((2 * ((v140 + 0x2036BB2A7C476E7) ^ 0x85B387C260384EFDLL)) ^ 0x87862E50D4087F3ELL) & ((v140 + 0x2036BB2A7C476E7) ^ 0x85B387C260384EFDLL) ^ (2 * ((v140 + 0x2036BB2A7C476E7) ^ 0x85B387C260384EFDLL)) & 0x43C317286A043F9ELL;
  v143 = (v142 ^ 0x382060040000F18) & (4 * v141) ^ v141;
  v144 = ((4 * (v142 ^ 0x404111282A040081)) ^ 0xF0C5CA1A810FE7CLL) & (v142 ^ 0x404111282A040081) ^ (4 * (v142 ^ 0x404111282A040081)) & 0x43C317286A043F9CLL;
  v145 = (v144 ^ 0x300142028003E00) & (16 * v143) ^ v143;
  v146 = ((16 * (v144 ^ 0x40C3030842040183)) ^ 0x3C317286A043F9F0) & (v144 ^ 0x40C3030842040183) ^ (16 * (v144 ^ 0x40C3030842040183)) & 0x43C317286A043F90;
  v147 = (v146 ^ 0x1120020003900) & (v145 << 8) ^ v145;
  v148 = (((v146 ^ 0x43C205284A04060FLL) << 8) ^ 0xC317286A043F9F00) & (v146 ^ 0x43C205284A04060FLL) ^ ((v146 ^ 0x43C205284A04060FLL) << 8) & 0x43C317286A043F00;
  v149 = v147 ^ 0x43C317286A043F9FLL ^ (v148 ^ 0x4303002800040000) & (v147 << 16);
  v150 = v140 - 0x378C03634DFF17B7 + ((((v140 + 0x2036BB2A7C476E7) ^ (2 * ((v149 << 32) & 0x43C3172800000000 ^ v149 ^ ((v149 << 32) ^ 0x6A043F9F00000000) & (((v148 ^ 0xC017006A00209FLL) << 16) & 0x43C3172800000000 ^ 0x40C3152800000000 ^ (((v148 ^ 0xC017006A00209FLL) << 16) ^ 0x17286A0400000000) & (v148 ^ 0xC017006A00209FLL))))) >> 32) ^ 0xC5F690AA);
  v151 = v150 + (v150 >> 16) + ((v150 + (v150 >> 16)) >> 8);
  v152 = (((v151 - 0x58665701DE1FFD7CLL) ^ v127 ^ 0x6F988DAF1030E409) + 0x3823CF1CF17C33F8) ^ (((v151 - 0x58665701DE1FFD7CLL) ^ v127 ^ 0xA9FE710230F6330BLL) - 0x1BACC4E2E451B0ALL) ^ (((v151 - 0x58665701DE1FFD7CLL) ^ v127 ^ 0xC666FCAD20C6D702) - 0x6E2241E13E75FF03);
  v153 = ((v152 - 0x1366024B985619DDLL) ^ 0xB32ABFD7B6A821DFLL) & (2 * ((v152 - 0x1366024B985619DDLL) & 0xBBAABF97B70941DELL)) ^ (v152 - 0x1366024B985619DDLL) & 0xBBAABF97B70941DELL;
  v154 = ((2 * ((v152 - 0x1366024B985619DDLL) ^ 0xA36F88FC92B8234BLL)) ^ 0x318A6ED64B62C52ALL) & ((v152 - 0x1366024B985619DDLL) ^ 0xA36F88FC92B8234BLL) ^ (2 * ((v152 - 0x1366024B985619DDLL) ^ 0xA36F88FC92B8234BLL)) & 0x18C5376B25B16294;
  v155 = (v154 ^ 0x1080264200200000) & (4 * v153) ^ v153;
  v156 = ((4 * (v154 ^ 0x845112924912295)) ^ 0x6314DDAC96C58A54) & (v154 ^ 0x845112924912295) ^ (4 * (v154 ^ 0x845112924912295)) & 0x18C5376B25B16294;
  v157 = (v156 ^ 0x4152804810200) & (16 * v155) ^ v155;
  v158 = ((16 * (v156 ^ 0x18C1224321306081)) ^ 0x8C5376B25B162950) & (v156 ^ 0x18C1224321306081) ^ (16 * (v156 ^ 0x18C1224321306081)) & 0x18C5376B25B16290;
  v159 = (v158 ^ 0x841362201102000) & (v157 << 8) ^ v157;
  v160 = (((v158 ^ 0x1084014924A14285) << 8) ^ 0xC5376B25B1629500) & (v158 ^ 0x1084014924A14285) ^ ((v158 ^ 0x1084014924A14285) << 8) & 0x18C5376B25B16200;
  v161 = v159 ^ 0x18C5376B25B16295 ^ (v160 ^ 0x5232121200000) & (v159 << 16);
  v162 = v152 - 0x57BB42B3E14CD7FFLL + ((((v152 - 0x1366024B985619DDLL) ^ (2 * ((v161 << 32) & 0x18C5376B00000000 ^ v161 ^ ((v161 << 32) ^ 0x25B1629500000000) & (((v160 ^ 0x18C0144A04916295) << 16) & 0x18C5376B00000000 ^ 0x884124A00000000 ^ (((v160 ^ 0x18C0144A04916295) << 16) ^ 0x376B25B100000000) & (v160 ^ 0x18C0144A04916295))))) >> 32) ^ 0x8B229543);
  v163 = v162 + (v162 >> 16) + ((v162 + (v162 >> 16)) >> 8);
  LODWORD(v162) = ((v163 + 284164418) >> 2) & 0x9B0FEEF ^ (v163 + 284164418);
  LODWORD(v160) = (v151 + 568328836) ^ (v139 + 568328836);
  v164 = v162 - ((2 * v162) & 0xC44AC536) + 1646617243;
  LODWORD(v162) = (v151 + 284164418) ^ (v139 + 284164418);
  LODWORD(STACK[0x2FC]) = v97 & 0xB7;
  LODWORD(STACK[0x2F8]) = (v97 ^ 0x11111111) & STACK[0x3B0];
  v279 = LODWORD(STACK[0x3B4]) + LODWORD(STACK[0x654]) - LODWORD(STACK[0x528]);
  v165 = STACK[0x6F0];
  LODWORD(STACK[0x500]) = 266187547 * (LODWORD(STACK[0x6D0]) - LODWORD(STACK[0x6F0]));
  v166 = STACK[0x650];
  v167 = STACK[0x540];
  LODWORD(STACK[0x3E4]) ^= (1520880145 * (LODWORD(STACK[0x650]) ^ 0xE2C18F8B)) ^ (1520880145 * LODWORD(STACK[0x540]));
  LODWORD(STACK[0x654]) = v123 + 49752395;
  LODWORD(v151) = v151 ^ v139 ^ v163;
  v163 -= 0x58665701DE1FFD7CLL;
  v168 = v160 ^ v163;
  v169 = 0x3F519381655BDB57 * (v126 + 0x5D5D5D5D5D5D5D5DLL - ((2 * v126) & 0xBABABABABABABABALL));
  v170 = ((v163 ^ v169 ^ 0xF17EF7893DB81EB4) - 0x90BCD024367E4D3) ^ ((v163 ^ v169 ^ 0x6749D888675B281ALL) + 0x60C31DFCE67B2D83) ^ ((v163 ^ v169 ^ 0x96372F015AE336AELL) - 0x6E42158A243CCCC9);
  v171 = v170 - 0x78AC57481200598 + ((((((v170 + 0x2D600172904884A6) ^ 0x1F886CC6E99DE982) - 0x2B62AA21F8F563BCLL) ^ (v170 + 0x2D600172904884A6) ^ (((v170 + 0x2D600172904884A6) ^ 0x3EC4E128414F2ABFLL) - 0xA2E27CF5027A081) ^ (((v170 + 0x2D600172904884A6) ^ 0x6A78D454664535B8) - 0x5E9212B3772DBF86) ^ (((v170 + 0x2D600172904884A6) ^ 0x7FDE9F5DDFFF7CBBLL) - 0x4B3459BACE97F685)) >> 32) ^ 0x34EAC6E7);
  v172 = v171 + (v171 >> 16) + ((v171 + (v171 >> 16)) >> 8);
  v173 = (((v172 - 0x58665701DE1FFD7CLL) ^ v169 ^ 0x2EB2B75BACBB08A0) - 0x2ED8CE19FF45E78ELL) ^ (((v172 - 0x58665701DE1FFD7CLL) ^ v169 ^ 0x7594C66C4CAC7243) - 0x75FEBF2E1F529D6DLL) ^ (((v172 - 0x58665701DE1FFD7CLL) ^ v169 ^ 0x5B267137E0177AE3) - 0x5B4C0875B3E995CDLL);
  v174 = v173 + 0x6A794253FEEF2FLL + ((((((v173 + 0x3F00725595219140) ^ 0x8BDC207D725561AFLL) + 0x4AB62691CC883C42) ^ (v173 + 0x3F00725595219140) ^ (((v173 + 0x3F00725595219140) ^ 0xD15D0A8077AE7F7ALL) + 0x10370C6CC9732295) ^ (((v173 + 0x3F00725595219140) ^ 0xD9CB6A26936A62AALL) + 0x18A16CCA2DB73F46) ^ (((v173 + 0x3F00725595219140) ^ 0xBDDFB9C8D7B3DE6ELL) + 0x7CB5BF24696E8382)) >> 32) ^ 0x3E95F913);
  v175 = v174 + (v174 >> 16) + ((v174 + (v174 >> 16)) >> 8);
  v176 = (((v175 - 0x58665701DE1FFD7CLL) ^ v169 ^ 0xF9CCC91BF1851E30) + 0x3FA796038C5E12A2) ^ (((v175 - 0x58665701DE1FFD7CLL) ^ v169 ^ 0x1D176916AE9017EBLL) - 0x2483C9F12CB4E485) ^ (((v175 - 0x58665701DE1FFD7CLL) ^ v169 ^ 0xE4DBA00D5F1509DBLL) + 0x22B0FF1522CE054BLL);
  v177 = ((v176 - 0x5ECBCCBD425ECC1BLL) ^ 0xDD484D30B44BBFEBLL) & (2 * ((v176 - 0x5ECBCCBD425ECC1BLL) & 0x98606DA4C483BF8ALL)) ^ (v176 - 0x5ECBCCBD425ECC1BLL) & 0x98606DA4C483BF8ALL;
  v178 = ((2 * ((v176 - 0x5ECBCCBD425ECC1BLL) ^ 0xFD4807303D4BB3FFLL)) ^ 0xCA50D529F39018EALL) & ((v176 - 0x5ECBCCBD425ECC1BLL) ^ 0xFD4807303D4BB3FFLL) ^ (2 * ((v176 - 0x5ECBCCBD425ECC1BLL) ^ 0xFD4807303D4BB3FFLL)) & 0x65286A94F9C80C74;
  v179 = (v178 ^ 0x4000400030000860) & (4 * v177) ^ v177;
  v180 = ((4 * (v178 ^ 0x25282A9408480415)) ^ 0x94A1AA53E72031D4) & (v178 ^ 0x25282A9408480415) ^ (4 * (v178 ^ 0x25282A9408480415)) & 0x65286A94F9C80C74;
  v181 = (v180 ^ 0x4202A10E1000040) & (16 * v179) ^ v179;
  v182 = ((16 * (v180 ^ 0x6108408418C80C21)) ^ 0x5286A94F9C80C750) & (v180 ^ 0x6108408418C80C21) ^ (16 * (v180 ^ 0x6108408418C80C21)) & 0x65286A94F9C80C70;
  v183 = (v182 ^ 0x4000280498800400) & (v181 << 8) ^ v181;
  v184 = (((v182 ^ 0x2528429061480825) << 8) ^ 0x286A94F9C80C7500) & (v182 ^ 0x2528429061480825) ^ ((v182 ^ 0x2528429061480825) << 8) & 0x65286A94F9C80C00;
  v185 = v183 ^ 0x65286A94F9C80C75 ^ (v184 ^ 0x20280090C8080000) & (v183 << 16);
  v186 = (((v176 - 0x5ECBCCBD425ECC1BLL) ^ (2 * ((v185 << 32) & 0x65286A9400000000 ^ v185 ^ ((v185 << 32) ^ 0x79C80C7500000000) & (((v184 ^ 0x45006A0431C00875) << 16) & 0x65286A9400000000 ^ 0x528021400000000 ^ (((v184 ^ 0x45006A0431C00875) << 16) ^ 0x6A94F9C800000000) & (v184 ^ 0x45006A0431C00875))))) >> 32) ^ 0x9020A8A5;
  v187 = v176 + 0x3994A0E78224F36FLL + v186 + ((v176 + 0x3994A0E78224F36FLL + v186) >> 16) + ((v176 + 0x3994A0E78224F36FLL + v186 + ((v176 + 0x3994A0E78224F36FLL + v186) >> 16)) >> 8);
  LODWORD(STACK[0x2F0]) = v151 ^ v172 ^ v175 ^ v187 ^ ((v151 ^ v172 ^ v175 ^ v187) >> 2) & 0x9B0FEEF;
  LODWORD(v151) = v168 ^ (v172 + 568328836) ^ (v175 + 568328836) ^ (v187 + 568328836);
  LODWORD(STACK[0x390]) = v151 ^ (v151 >> 2) & 0x9B0FEEF;
  v188 = ((v187 + 284164418) >> 2) & 0x9B0FEEF ^ (v187 + 284164418);
  v189 = STACK[0x6C8];
  v190 = v162 ^ LODWORD(STACK[0x6C8]) ^ (v162 >> 2) & 0x9B0FEEF ^ v164 ^ ((v172 + 284164418) >> 2) & 0x9B0FEEF ^ (v172 + 284164418) ^ ((v175 + 284164418) >> 2) & 0x9B0FEEF ^ (v175 + 284164418);
  v191 = v188 & 0x80000;
  v192 = (v188 & 0x80000 & v190) == 0;
  v193 = v190 ^ 0xD0D19EB4;
  if (!v192)
  {
    v191 = -v191;
  }

  v194 = ((v191 + (v193 & 0x4C4839FE)) ^ v188 & 0x4C4039FE) + ((v188 ^ v193) & 0xB3B7C601);
  v195 = LODWORD(STACK[0x5A0]) + LODWORD(STACK[0x4F8]) + (v121 ^ (v121 >> 6) ^ (v121 >> 4) ^ 0x723C13DF);
  v196 = v187 - 0x4825CFCD5337B422 - ((v187 - 0x4825CFCD5337B422) >> 27) - ((v187 - 0x4825CFCD5337B422 - ((v187 - 0x4825CFCD5337B422) >> 27)) >> 11);
  v197 = v196 + (v196 >> 4);
  v198 = v197 + 0x6907F131C9989236 - ((v197 + 0x6907F131C9989236) >> 29) + ((v197 + 0x6907F131C9989236 - ((v197 + 0x6907F131C9989236) >> 29)) >> 12);
  v199 = v198 - (v198 >> 2);
  v200 = v199 - 0x4FC0615E016A9007 - ((v199 - 0x4FC0615E016A9007) >> 31) - ((v199 - 0x4FC0615E016A9007 - ((v199 - 0x4FC0615E016A9007) >> 31)) >> 12);
  v201 = v200 - (v200 >> 4);
  v202 = (v201 ^ 0xE3B0EC50283B3A9BLL) - ((v201 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v201 ^ 0xE3B0EC50283B3A9BLL) - ((v201 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v203 = v202 - (v202 >> 6);
  v204 = (v203 ^ 0x1CBB3D2D625F8025) + ((v203 ^ 0x1CBB3D2D625F8025) >> 27) - (((v203 ^ 0x1CBB3D2D625F8025) + ((v203 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v205 = v204 + (v204 >> 7);
  LODWORD(v199) = v205 ^ v199;
  v206 = v205 - 0x65FB2AD6BDC595DFLL - ((v205 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v205 - 0x65FB2AD6BDC595DFLL - ((v205 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v207 = v206 + (v206 >> 3);
  LODWORD(STACK[0x2C4]) = (v207 >> 2) & 0x9B0FEEF ^ v207;
  v208 = v207 + 0x608394D4D392467ELL + ((v207 + 0x608394D4D392467ELL) >> 31) - ((v207 + 0x608394D4D392467ELL + ((v207 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v209 = v208 - (v208 >> 5);
  STACK[0x308] = v209;
  v210 = (v209 ^ 0x601E5F8F690C4A13) + ((v209 ^ 0x601E5F8F690C4A13) >> 31) - (((v209 ^ 0x601E5F8F690C4A13) + ((v209 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v211 = v210 - (v210 >> 8);
  LODWORD(v199) = v199 ^ v211 ^ ((v199 ^ v211) >> 2) & 0x9B0FEEF;
  v212 = v211 + 0x42275266A1F057E1 + ((v211 + 0x42275266A1F057E1) >> 31) + ((v211 + 0x42275266A1F057E1 + ((v211 + 0x42275266A1F057E1) >> 31)) >> 11);
  v213 = (v212 >> 3) + v212;
  v214 = STACK[0x6B8];
  LODWORD(STACK[0x4F8]) = v166 ^ 0x1775254D;
  v215 = v124;
  v216 = *(v124 + 8 * (*(v124 + 8 * ((*(v124 + 8 * (v125 & 1)) & 1) == 0)) & 1));
  v217 = v166 ^ 0x1775254D ^ v214 ^ ((v166 ^ 0x1775254D ^ v189) >> 2) & 0x9B0FEEF ^ v194 ^ v199;
  v218 = ((v216 ^ 0x5AB61B5DC0A68F81) + 0x47865D8A900CE238) ^ ((v216 ^ 0xCEBE487862005082) - 0x2C71F150CD55C2CBLL) ^ ((v216 ^ 0xC9550E78FFFB825ELL) - 0x2B9AB75050AE1017);
  v192 = v218 >> 1 == 0x20368DC4A09F84A5;
  v219 = (v218 & 1 ^ 0x9B8EFFFB) + 2 * (v218 & 1) - 302913363;
  if (v192)
  {
    v219 = (((v216 ^ 0xC0A68F81) - 1878203848) ^ ((v216 ^ 0x62005082) + 850017589) ^ ((v216 ^ 0xFFFB825E) - 1353584663)) + 1212276574;
  }

  v220 = (v219 ^ 0x757F4654) & (2 * (v219 & 0x767F1758)) ^ v219 & 0x767F1758;
  v221 = ((2 * (v219 ^ 0xF9AD68C4)) ^ 0x1FA4FF38) & (v219 ^ 0xF9AD68C4) ^ (2 * (v219 ^ 0xF9AD68C4)) & 0x8FD27F9C;
  v222 = (v221 ^ 0xB807F00) & (4 * v220) ^ v220;
  v223 = ((4 * (v221 ^ 0x80520084)) ^ 0x3F49FE70) & (v221 ^ 0x80520084) ^ (4 * (v221 ^ 0x80520084)) & 0x8FD27F9C;
  v224 = (v223 ^ 0xF407E00) & (16 * v222) ^ v222;
  v225 = ((16 * (v223 ^ 0x8092018C)) ^ 0xFD27F9C0) & (v223 ^ 0x8092018C) ^ (16 * (v223 ^ 0x8092018C)) & 0x8FD27F90;
  v226 = v219 ^ (2 * ((((v225 ^ 0x2D0061C) << 8) & 0xFD20000 ^ 0x2520000 ^ (((v225 ^ 0x2D0061C) << 8) ^ 0xD27F0000) & (v225 ^ 0x2D0061C)) & (((v225 ^ 0x8D027900) & (v224 << 8) ^ v224) << 16) ^ (v225 ^ 0x8D027900) & (v224 << 8) ^ v224));
  v227 = (((v226 ^ 0x1F25C0FF) + 1768177887) ^ ((v226 ^ 0xADF42FCE) - 608849936) ^ ((v226 ^ 0xC4AEF869) - 1292928951)) - 1519538867;
  LODWORD(STACK[0x3CC]) = LODWORD(STACK[0x3C0]) + LODWORD(STACK[0x6F8]);
  v228 = STACK[0x3B8] & v167;
  LODWORD(STACK[0x3B8]) = LODWORD(STACK[0x6E0]) ^ LODWORD(STACK[0x3DC]) ^ LODWORD(STACK[0x6E8]);
  v229 = LODWORD(STACK[0x710]) ^ v165;
  LODWORD(STACK[0x39C]) = 16 * v107;
  LODWORD(STACK[0x3DC]) = LODWORD(STACK[0x3BC]) + 1;
  LODWORD(STACK[0x5A0]) = LODWORD(STACK[0x4A0]) ^ 0x7657A7F5;
  LODWORD(STACK[0x31C]) = v229;
  LODWORD(STACK[0x3C8]) = v229 ^ 0x6C4B4484;
  HIDWORD(v230) = STACK[0x59C];
  LODWORD(v230) = STACK[0x59C];
  LODWORD(STACK[0x2B8]) = v230 >> 15;
  LODWORD(STACK[0x59C]) = LODWORD(STACK[0x498]) ^ 0xD31EF1FA;
  LODWORD(STACK[0x6B8]) = v228 ^ LODWORD(STACK[0x4FC]);
  LODWORD(STACK[0x3C0]) = LODWORD(STACK[0x518]) ^ 0xDE8A143D;
  LODWORD(STACK[0x3B4]) = LODWORD(STACK[0x3E0]) ^ 0x5EA77FEC;
  LODWORD(STACK[0x2B0]) = v195 + 1;
  v231 = STACK[0x698];
  v232 = LODWORD(STACK[0x698]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x538]);
  LODWORD(STACK[0x328]) = v232;
  LODWORD(STACK[0x3BC]) = v232 ^ 0x188BEFCA;
  v233 = STACK[0x648];
  v234 = v231 ^ LODWORD(STACK[0x648]);
  STACK[0x310] = v197;
  STACK[0x2E8] = v203;
  LODWORD(STACK[0x2E4]) = v234 ^ v197 ^ v203;
  v235 = v233 ^ 0xBAAC5193;
  LODWORD(STACK[0x324]) = v217;
  LODWORD(STACK[0x3B0]) = v217 ^ 0x220CB6F5;
  v236 = STACK[0x6B0];
  v237 = STACK[0x708] + 4971;
  LODWORD(STACK[0x300]) = -2139062144 * LODWORD(STACK[0x548]);
  LODWORD(STACK[0x2C0]) = v213;
  LODWORD(STACK[0x2A8]) = v213 >> 2;
  STACK[0x508] = v201;
  LODWORD(STACK[0x2A0]) = (v201 >> 2) & 0x9B0FEEF;
  LODWORD(STACK[0x304]) = v111 ^ v236;
  LODWORD(STACK[0x298]) = ((v111 ^ v236) >> 2) & 0x9B0FEEF;
  v238 = (*v215 ^ 0x5D5D5D5D5D5D5D5DLL) * (v237 + 0x3F519381655BB9F6);
  v239 = (((v238 ^ STACK[0x700] ^ 0x270F85CD91FE4C52) + 0x6CB7E419998BBB8CLL) ^ ((v238 ^ STACK[0x700] ^ 0x37A0ED6922EEDA9ELL) + 0x7C188CBD2A9B2D48) ^ ((v238 ^ STACK[0x700] ^ 0x10AF68A4B31096CCLL) + 0x5B170970BB656116)) + 0x1646058B15C7175BLL;
  v240 = v239 - 0x61FE675F1E3D0F35 + (((((v239 ^ 0xCC1F02BAA1613DC0) + 0x521E9A1A40A3CD0BLL) ^ v239 ^ ((v239 ^ 0x789EA49B18D6A759) - 0x1960C3C406EBA86CLL) ^ ((v239 ^ 0xAA807E881835AE7ELL) + 0x3481E628F9F75EB5) ^ ((v239 ^ 0x7FFFBFF6BFBF3BD2) - 0x1E01D8A9A18234E7)) >> 32) ^ 0x61FE675F);
  v241 = v240 + (v240 >> 16) + ((v240 + (v240 >> 16)) >> 8);
  v242 = (2 * v241) & 0xE505DDEE ^ v241 ^ v235;
  v243 = (2 * (v241 + 284164418)) & 0xE505DDEE ^ (v241 + 284164418) ^ v189 ^ 0x81C7EF14;
  v244 = ((((v241 - 0x58665701DE1FFD7CLL) ^ v238 ^ 0x3D8D4CD2E40F7AD9) + 0x797EB53543EC0E34) ^ (((v241 - 0x58665701DE1FFD7CLL) ^ v238 ^ 0x1CCA7AE6CF3FBD23) + 0x5839830168DCC9CALL) ^ (((v241 - 0x58665701DE1FFD7CLL) ^ v238 ^ 0x214736342B30C7FALL) + 0x65B4CFD38CD3B311)) + 0x18809C9B952F0C07;
  v245 = (v244 ^ 0x8A447AF2C87E8FLL) & (2 * (v244 & 0xA28B697CC2ED7F0ELL)) ^ v244 & 0xA28B697CC2ED7F0ELL;
  v246 = ((2 * (v244 ^ 0x8C846BF3C21097)) ^ 0x440FDA2E625EDF32) & (v244 ^ 0x8C846BF3C21097) ^ (2 * (v244 ^ 0x8C846BF3C21097)) & 0xA207ED17312F6F98;
  v247 = v246 ^ 0xA200251111212089;
  v248 = (v246 ^ 0x2007C806000E4C90) & (4 * v245) ^ v245;
  v249 = ((4 * v247) ^ 0x881FB45CC4BDBE64) & v247 ^ (4 * v247) & 0xA207ED17312F6F98;
  v250 = (v249 ^ 0x8007A414002D2E10) & (16 * v248) ^ v248;
  v251 = ((16 * (v249 ^ 0x2200490331024199)) ^ 0x207ED17312F6F990) & (v249 ^ 0x2200490331024199) ^ (16 * (v249 ^ 0x2200490331024199)) & 0xA207ED17312F6F90;
  v252 = (v251 ^ 0x2006C11310266900) & (v250 << 8) ^ v250;
  v253 = (((v251 ^ 0x82012C0421090609) << 8) ^ 0x7ED17312F6F9900) & (v251 ^ 0x82012C0421090609) ^ ((v251 ^ 0x82012C0421090609) << 8) & 0xA207ED17312F6F00;
  v254 = v252 ^ 0xA207ED17312F6F99 ^ (v253 ^ 0x2050511212F0000) & (v252 << 16);
  v255 = v244 - 0x5D7496833D1280F2 + (((v244 ^ (2 * ((v254 << 32) & 0x2207ED1700000000 ^ v254 ^ ((v254 << 32) ^ 0x312F6F9900000000) & (((v253 ^ 0xA002E80610006699) << 16) & 0x2207ED1700000000 ^ 0x200CC1000000000 ^ (((v253 ^ 0xA002E80610006699) << 16) ^ 0x6D17312F00000000) & (v253 ^ 0xA002E80610006699))))) >> 32) ^ 0xA68A6970);
  v256 = v255 + (v255 >> 16) + ((v255 + (v255 >> 16)) >> 8);
  v257 = v242 ^ (2 * v256) & 0xE505DDEE ^ v256;
  v258 = v243 ^ (2 * (v256 + 284164418)) & 0xE505DDEE ^ (v256 + 284164418);
  v259 = ((((v256 - 0x58665701DE1FFD7CLL) ^ v238 ^ 0x82D7B71D75476715) - 0x3EAAF1779700156) ^ (((v256 - 0x58665701DE1FFD7CLL) ^ v238 ^ 0xC70132B0947834ECLL) - 0x463C2ABA984F52AFLL) ^ (((v256 - 0x58665701DE1FFD7CLL) ^ v238 ^ 0x45D685ADE13F53F9) + 0x3B14625812F7CA46)) - 0x633B9A069F8F86A0;
  v260 = (v259 ^ 0xE67222962384CAFALL) & (2 * (v259 & 0xE478B210ABC6ECE3)) ^ v259 & 0xE478B210ABC6ECE3;
  v261 = ((2 * (v259 ^ 0xA61226B63709D2BELL)) ^ 0x84D5294D399E7CBALL) & (v259 ^ 0xA61226B63709D2BELL) ^ (2 * (v259 ^ 0xA61226B63709D2BELL)) & 0x426A94A69CCF3E5CLL;
  v262 = v261 ^ 0x422A94A284410245;
  v263 = (v261 ^ 0x40480424184E3458) & (4 * v260) ^ v260;
  v264 = ((4 * v262) ^ 0x9AA529A733CF974) & v262 ^ (4 * v262) & 0x426A94A69CCF3E5CLL;
  v265 = (v264 ^ 0x2A1082100C3850) & (16 * v263) ^ v263;
  v266 = ((16 * (v264 ^ 0x424084248CC30609)) ^ 0x26A94A69CCF3E5D0) & (v264 ^ 0x424084248CC30609) ^ (16 * (v264 ^ 0x424084248CC30609)) & 0x426A94A69CCF3E50;
  v267 = (v266 ^ 0x22800208CC32400) & (v265 << 8) ^ v265;
  v268 = (((v266 ^ 0x40429486100C1A0DLL) << 8) ^ 0x6A94A69CCF3E5D00) & (v266 ^ 0x40429486100C1A0DLL) ^ ((v266 ^ 0x40429486100C1A0DLL) << 8) & 0x426A94A69CCF3E00;
  v269 = v267 ^ 0x426A94A69CCF3E5DLL ^ (v268 ^ 0x420084848C0E0000) & (v267 << 16);
  v270 = (v269 << 32) ^ 0x1CCF3E5D00000000;
  v271 = ((v259 ^ (2 * ((v269 << 32) & 0x426A94A600000000 ^ v269 ^ v270 & (((v268 ^ 0x6A102210C1225DLL) << 16) & 0x426A94A600000000 ^ 0x4248002000000000 ^ (((v268 ^ 0x6A102210C1225DLL) << 16) ^ 0x14A69CCF00000000) & (v268 ^ 0x6A102210C1225DLL))))) >> 32) ^ 0x6039B355;
  v272 = v259 - 0x1B874DEF5439131DLL + v271 + ((v259 - 0x1B874DEF5439131DLL + v271) >> 16);
  v273 = v272 + (v272 >> 8);
  v274 = v273 + 284164418;
  LODWORD(STACK[0x710]) = v257 ^ (2 * v273) & 0xE505DDEE ^ v273;
  v275 = (v273 + 284164418) ^ 0xD7D1108;
  if (v273 == 0xAC332B80EF0FFEBELL)
  {
    v275 = 1921183479;
  }

  v276 = v273 - 0x58665701DE1FFD7CLL;
  v277 = v227 < 0xA5AC44C7 || v227 > 0xA5AC44C8;
  STACK[0x700] = v276;
  return (*(STACK[0x668] + 8 * ((1017 * !v277) ^ STACK[0x708])))(v270, 0xA799A8FE21E00284, 2779530440, 2779530439, v227, 226300168, v237, v258 ^ v274 ^ (2 * (v275 & v274)), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1000E91A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x3AC]) = LODWORD(STACK[0x500]) + LODWORD(STACK[0x534]);
  LODWORD(STACK[0x3A0]) = LODWORD(STACK[0x510]) ^ 0x6DD54CD;
  v9 = LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x39C]);
  LODWORD(STACK[0x534]) = v9;
  LODWORD(STACK[0x39C]) = ((a7 ^ 0xA71) - 1716742497) ^ v9;
  v10 = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x6B0]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x2B0]) ^ LODWORD(STACK[0x390]) ^ STACK[0x508] ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x2C0]) ^ STACK[0x2A8] & 0x9B0FEEF;
  LODWORD(STACK[0x500]) = v10;
  LODWORD(STACK[0x390]) = v10 ^ 0x4623DD3C;
  v11 = ((v7 < 0xA3B5755) << 32) + (((a7 ^ 0xA71u) - 2452) ^ 0x581CF923CDD667E4);
  v12 = 0x3F519381655BDB57 * (*(STACK[0x748] + 8 * (v7 + v11) + 0x3F1836E13F731098) ^ 0x5D5D5D5D5D5D5D5DLL);
  v13 = v11 + (((v12 ^ STACK[0x700] ^ 0xB38081B2831B5D40) - 0x13CD72F55BA8B68FLL) ^ ((v12 ^ STACK[0x700] ^ 0xE26DFE9ED9B8A53ELL) - 0x42200DD9010B4EF1) ^ ((v12 ^ STACK[0x700] ^ 0x51ED7F2C5AA3F87ELL) + 0xE5F73947DEFEC4FLL));
  v14 = v13 + ((((((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0x7C5A1E51F06C5185) - 0x264B849CEC6A24AALL) ^ (v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ (((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0xDABAA49C20F72584) + 0x7F54C1AEC30EAF55) ^ (((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0xB24CF3DD317356D0) + 0x17A296EFD28ADC02) ^ (((v7 - 0x5DBD6B0EE3573CEFLL + v13) ^ 0x4EBDD3DDFDEE57F0) - 0x14AC4910E1E822D0)) >> 32) ^ 0x5A119ACD);
  v15 = (v14 + v7 + 0x4830FA2400A24DE2) >> 16;
  v16 = (v14 + v7 + 0x4830FA2400A24DE2 + v15) >> 8;
  v17 = v8 & (2 * (v7 + 10636770 + v15 + v14 + v16)) ^ (v7 + 10636770 + v15 + v14 + v16) ^ LODWORD(STACK[0x710]);
  v18 = v11 + ((((v7 - 0x10355CDDDD7DAF9ALL + v15 + v14 + v16) ^ v12 ^ 0xA3E458292B2E8E64) - 0x7E3E4880C7610317) ^ (((v7 - 0x10355CDDDD7DAF9ALL + v15 + v14 + v16) ^ v12 ^ 0x77BD9B49089034EBLL) + 0x5598741F1B204668) ^ (((v7 - 0x10355CDDDD7DAF9ALL + v15 + v14 + v16) ^ v12 ^ 0xD459C36023BEBA8FLL) - 0x983D3C9CFF137FCLL));
  v19 = v18 + ((((((v7 - 0x15E10731D4799350 + v18) ^ 0x3D7616477EC00CD3) - 0x5917F70F698871F9) ^ (v7 - 0x15E10731D4799350 + v18) ^ (((v7 - 0x15E10731D4799350 + v18) ^ 0xD840D49EF0E7773DLL) + 0x43DECA291850F5E9) ^ (((v7 - 0x15E10731D4799350 + v18) ^ 0x6EA4D93DE6F0BBF9) - 0xAC53875F1B8C6D3) ^ (((v7 - 0x15E10731D4799350 + v18) ^ 0xEFF3FAAC7F9FBD3DLL) + 0x746DE41B97283FE9)) >> 32) ^ 0x6461E148);
  v20 = (v19 + v7 - 0x7A42E879EBC2107ALL) >> 16;
  v21 = (v19 + v7 - 0x7A42E879EBC2107ALL + v20) >> 8;
  v22 = v17 ^ v8 & (2 * (v7 + 339603334 + v20 + v19 + v21)) ^ (v7 + 339603334 + v20 + v19 + v21);
  v23 = v11 + ((((v7 + 0x2D56C084361DF20ALL + v20 + v19 + v21) ^ v12 ^ 0x46F63C2582C3F3CDLL) - 0x70FC68229E89FB32) ^ (((v7 + 0x2D56C084361DF20ALL + v20 + v19 + v21) ^ v12 ^ 0x25388471A8830ABDLL) - 0x1332D076B4C90242) ^ (((v7 + 0x2D56C084361DF20ALL + v20 + v19 + v21) ^ v12 ^ 0x63CEB8542A40F970) - 0x55C4EC53360AF18FLL));
  v24 = v23 + ((((((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0x8698EAF48C153CCELL) + 0x47353EC334268535) ^ (v7 + 0x1C3F86AB8C04B117 + v23) ^ (((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0xDBDEF79A54C98086) + 0x1A7323ADECFA397DLL) ^ (((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0xDCEBC9B123EC03F0) + 0x1D461D869BDFBA0BLL) ^ (((v7 + 0x1C3F86AB8C04B117 + v23) ^ 0xBFFFFF17BCFCF9B8) + 0x7E522B2004CF4048)) >> 32) ^ 0x3E522BC8);
  v25 = (v24 + v7 - 0x2212A51CBBC794EELL) >> 16;
  LODWORD(STACK[0x710]) = v22 ^ v8 & (2 * (v7 + 1144548114 + v25 + v24 + ((v24 + v7 - 0x2212A51CBBC794EELL + v25) >> 8))) ^ (v7 + 1144548114 + v25 + v24 + ((v24 + v7 - 0x2212A51CBBC794EELL + v25) >> 8));
  return (*(STACK[0x668] + 8 * (((v7 & 0xFFFFFFFE) == 171661140) ^ a7 ^ 0xA71)))();
}

uint64_t sub_1000E997C@<X0>(uint64_t a1@<X3>, int a2@<W7>, uint64_t a3@<X8>)
{
  LODWORD(STACK[0x508]) = v4;
  v9 = LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x2F8]);
  v10 = LODWORD(STACK[0x2F0]) ^ STACK[0x2E8];
  v11 = STACK[0x308];
  v12 = LODWORD(STACK[0x2E4]) ^ STACK[0x308];
  STACK[0x700] = v5;
  v13 = STACK[0x648];
  v14 = STACK[0x698];
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x6A0]) ^ LODWORD(STACK[0x698]) ^ STACK[0x310] ^ v10 ^ v11 ^ (v12 >> (v5 - 122)) & 0x9B0FEEF;
  v15 = ((a3 + v6) >> 16) + ((a3 + v6 + ((a3 + v6) >> 16)) >> 8);
  v16 = v15 + a3 + a1;
  v17 = v16 >> 27;
  v18 = (v16 - (v16 >> 27)) >> 11;
  v19 = (v16 - v18 - (v16 >> 27)) >> 4;
  v20 = v15 - v17;
  v21 = v15 - v17 + a1 + a3 + v19 - v18;
  v22 = a3 + v3 + v19;
  v23 = a3 + v19;
  v24 = v15 + v22;
  v25 = (v15 + v22 - v18 - v17) >> 29;
  v26 = (v24 - v25 - v18 - v17) >> 12;
  v27 = v23 + v26;
  v28 = (v24 + v26 - v25 - v18 - v17) >> 2;
  v29 = v15 - v17 + v3 + v27 - v28 - v25 - v18;
  v30 = v15 + v7 + v27;
  v31 = (v30 - v28 - v25 - v18 - v17) >> 31;
  v32 = v30 - v31 - v28 - v25 - v18 - v17;
  v33 = v20 + v7 + v27 - (v32 >> 12) - v31 - v28 - v25 - v18 - ((v32 - (v32 >> 12)) >> 4);
  v34 = (v33 ^ 0xE3B0EC50283B3A9BLL) - ((v33 ^ 0xE3B0EC50283B3A9BLL) >> 31) + (((v33 ^ 0xE3B0EC50283B3A9BLL) - ((v33 ^ 0xE3B0EC50283B3A9BLL) >> 31)) >> 9);
  v35 = v34 - (v34 >> 6);
  LODWORD(STACK[0x2FC]) = v8 & (2 * v35) ^ v35;
  v36 = (v35 ^ 0x1CBB3D2D625F8025) + ((v35 ^ 0x1CBB3D2D625F8025) >> 27) - (((v35 ^ 0x1CBB3D2D625F8025) + ((v35 ^ 0x1CBB3D2D625F8025) >> 27)) >> 8);
  v37 = v36 + (v36 >> 7);
  LODWORD(v32) = v8 & (2 * v37) ^ v37;
  v38 = v37 - 0x65FB2AD6BDC595DFLL - ((v37 - 0x65FB2AD6BDC595DFLL) >> 30) + ((v37 - 0x65FB2AD6BDC595DFLL - ((v37 - 0x65FB2AD6BDC595DFLL) >> 30)) >> 12);
  v39 = v38 + (v38 >> 3);
  LODWORD(STACK[0x2F8]) = v8 & (2 * v39) ^ v39;
  v40 = v39 + 0x608394D4D392467ELL + ((v39 + 0x608394D4D392467ELL) >> 31) - ((v39 + 0x608394D4D392467ELL + ((v39 + 0x608394D4D392467ELL) >> 31)) >> 15);
  v41 = v40 - (v40 >> 5);
  v42 = (v41 ^ 0x601E5F8F690C4A13) + ((v41 ^ 0x601E5F8F690C4A13) >> 31) - (((v41 ^ 0x601E5F8F690C4A13) + ((v41 ^ 0x601E5F8F690C4A13) >> 31)) >> 11);
  v43 = v42 - (v42 >> 8);
  v44 = v43 + 0x42275266A1F057E1 + ((v43 + 0x42275266A1F057E1) >> 31) + ((v43 + 0x42275266A1F057E1 + ((v43 + 0x42275266A1F057E1) >> 31)) >> 11);
  STACK[0x2F0] = v8 & (2 * (v44 + (v44 >> 3))) ^ (v44 + (v44 >> 3));
  LODWORD(v43) = a2 ^ v29 ^ (2 * v29) & 0xE505DDEE ^ v32 ^ v43 ^ 0xA959296 ^ (2 * v43) & 0xE505DDEE;
  v45 = v14 ^ v13;
  v46 = STACK[0x654];
  LODWORD(v31) = (((v45 ^ LODWORD(STACK[0x654])) & 0x8450467C ^ 0x4A346BB3) & ((v45 ^ LODWORD(STACK[0x654])) & 0x7BAFB983 ^ 0xC472D7FC) | (v45 ^ LODWORD(STACK[0x654])) & 0x318B9000) ^ 0xF2486879;
  v47 = STACK[0x384];
  v48 = STACK[0x6D8];
  v49 = LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x6F8]) ^ (2 * LODWORD(STACK[0x610])) & 0xE505DDEE ^ LODWORD(STACK[0x650]) ^ LODWORD(STACK[0x610]) ^ (2 * (LODWORD(STACK[0x650]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x6C8]))) & 0xE505DDEE ^ (-2139062144 * LODWORD(STACK[0x384])) ^ LODWORD(STACK[0x6D8]) ^ 0xC1D69C89;
  LODWORD(STACK[0x300]) = v31;
  LODWORD(STACK[0x310]) = v21;
  LODWORD(STACK[0x2E8]) = (2 * (v31 ^ v46 ^ v21)) & 0xE505DDEE;
  LODWORD(STACK[0x388]) = (-v43 ^ (v49 - (v43 ^ v49)) ^ 0x9D889F9E ^ (v43 - ((2 * v43) & 0x3B113F3C) - 1651990626)) + v49;
  LODWORD(v43) = STACK[0x304];
  STACK[0x308] = v33;
  LODWORD(STACK[0x304]) = (2 * (v33 ^ v43)) & 0xE505DDEE;
  v50 = STACK[0x548];
  v51 = 33686018 * LODWORD(STACK[0x548]);
  v52 = STACK[0x6B8];
  LODWORD(STACK[0x2E4]) = (STACK[0x6B8] & 0x7D67FC4A | (v51 & 0xCE57B9BA ^ 0x9A4C2097) & ~LODWORD(STACK[0x6B8])) ^ 0x7D67FC4A;
  v53 = STACK[0x6C0];
  v54 = STACK[0x6F0];
  v55 = STACK[0x6A8];
  v56 = STACK[0x6E8];
  v57 = 33686018 * v47;
  v58 = STACK[0x6D0];
  v59 = v9 ^ 0x11;
  v60 = STACK[0x6E0];
  LODWORD(STACK[0x2C4]) = v9 & 0x7BE619CB ^ (v9 ^ 0x10) & (v51 & 0xE68F20F6 ^ 0x8A189B0);
  LODWORD(STACK[0x208]) = (v52 & 0x9B6695E5 | (v51 & 0x5B98DA6A ^ 0xB6AAF8D0) & ~v52) ^ 0x9B6695E5;
  v61 = v48 ^ 0x1B4D7981;
  if (!v47)
  {
    v61 = -458062210;
  }

  if (((v52 & 0x8AB1C95C | (v51 & 0xADCB3DFE ^ 0xDC5457A3) & ~v52) ^ 0x8AB1C95C) << v54)
  {
    v62 = ~(v48 ^ v61);
  }

  else
  {
    v62 = v61;
  }

  LODWORD(STACK[0x384]) = (2 * (v62 & v48)) ^ 0xE4B2867E;
  LODWORD(STACK[0x230]) = (v52 & 0xCA070570 | (v51 & 0x667FDBA0 ^ 0xF938E8A0) & ~v52) ^ 0xCA070570;
  LODWORD(STACK[0x228]) = v53 & 0x53B2FFDC ^ 0x53B2FFDC ^ (v57 & 0x7DAE3EC ^ 0xD05F8E2A) & (v53 ^ 0xFFFFEFEE);
  v63 = ((v52 & 0x4256AC36 | (v57 & 0x1AD0307C ^ 0x4F3EB408) & ~v52) ^ 0x4256AC36) << v58;
  v64 = (v9 & 0xF207C6C7 ^ v59 & (v57 & 0x1AD0307C ^ 0xFF6FDEF9) ^ 1) >> v56;
  LODWORD(STACK[0x210]) = ((v64 - ((2 * v64) & 0x8159971C) - 1062417522) ^ 0x3F533471) & ((v63 - ((2 * v63) & 0x938DDCF6) - 909709701) ^ 0xF2D2831F);
  v65 = ((v53 & 0xFD5A4C97 | (v51 & 0x7F84D462 ^ 0xC29826A6) & ~v53) ^ 0xFD5A4C97) << v54;
  v66 = v65 - ((2 * v65) & 0xA672BE9A) - 751214771;
  LODWORD(STACK[0x298]) = v66;
  LODWORD(STACK[0x288]) = (v66 ^ 0x2CC6A0B2) & ((((v55 & (v51 & 0x7F84D462 ^ 0x3FC26A31)) >> v60) - ((2 * ((v55 & (v51 & 0x7F84D462 ^ 0x3FC26A31)) >> v60)) & 0x86E051D4) + 1131423978) ^ 0x6CA5543B);
  v67 = (v53 & 0x81775B3E ^ 0x81775B3E ^ (v57 & 0x3257B816 ^ 0x185C8735) & (v53 ^ 0xFFDFFF77)) << v58;
  v68 = v67 - ((2 * v67) & 0x9495B964) - 901063502;
  LODWORD(STACK[0x244]) = v68;
  LODWORD(STACK[0x250]) = (v68 ^ 0x35B5234D) & (((((v57 & 0x3257B816 ^ 0x992BDC0B) & v55) >> v60) - ((2 * (((v57 & 0x3257B816 ^ 0x992BDC0B) & v55) >> v60)) & 0x7B07EB6E) - 1115425353) ^ 0x46050F91);
  LODWORD(STACK[0x248]) = v9 & 0x7FBC019F ^ 0x11 ^ (v9 ^ 1) & (v51 & 0x7CDE6F6C ^ 0x41D33629);
  v69 = ((v52 & 0xC1910BC8 | (v51 & 0x13D1598A ^ 0xC879A70D) & ~v52) ^ 0xC1910BC8) << v54;
  v70 = (v51 & 0x2105180 ^ 0x82880C1 ^ (v9 ^ 0xA38D1C0) & (v51 & 0x13D1598A ^ 0x9E8ACC5u)) >> v60;
  LODWORD(STACK[0x200]) = ((v70 - ((2 * v70) & 0x16E57C04) + 192069122) ^ 0xF48D41FD) & ((v69 - ((2 * v69) & 0x4CB57610) - 1504003320) ^ 0x8D35DE35);
  LODWORD(STACK[0x2A8]) = v53 & 0xA152D622 ^ 0xA152D622 ^ (v57 & 0x2E42D48 ^ 0x2020C086) & (v53 ^ 0xB6F4FDDE);
  v71 = (131586 * v50) & 0xBFB752;
  LODWORD(STACK[0x2B0]) = v71 ^ 0x805FDBA9;
  LODWORD(STACK[0x2A0]) = (v52 & 0x890F09E1 | (v71 ^ 0x950D248) & ~v52) ^ 0x890F09E1;
  LODWORD(STACK[0x548]) = (2 * ((v53 & 0xF06995EC ^ 0xF06995EC ^ (v57 & 0x3465D758 ^ 0xEA5B7E40) & (v53 ^ 0xFF7FFF5E)) << v58)) & 0x10C32060;
  v72 = ((v53 & 0x40044314 | (v51 & 0xFCC6D6A0 ^ 0xBE672844) & ~v53) ^ 0x40044314) << v54;
  v73 = v57 & 0x3B0A042 ^ 0x81DA0440 ^ (v9 ^ 0x83FAA443) & (v57 & 0x23B4A8C2 ^ 0x91DA5461);
  LODWORD(STACK[0x218]) = v72 - ((2 * v72) & 0x38976B2) - 2117813415;
  v74 = ((v52 & 0x11FEA7BA | (v51 & 0xE6AF46FE ^ 0xE2A904C5) & ~v52) ^ 0x11FEA7BA) << v58;
  v75 = v74 - ((2 * v74) & 0xA6ED31E) + 87517583;
  LODWORD(STACK[0x290]) = v75;
  LODWORD(STACK[0x278]) = (v75 ^ 0xFAC89670) & ((((v55 & (v51 & 0xE6AF46FE ^ 0xF357A37F)) >> v60) - ((2 * ((v55 & (v51 & 0xE6AF46FE ^ 0xF357A37F)) >> v60)) & 0x262DB8B8) + 320265308) ^ 0x188199A9);
  LODWORD(STACK[0x268]) = (v53 & 0x9A49C1EB | (v51 & 0x565E0DBA ^ 0xB166C736) & ~v53) ^ 0x9A49C1EB;
  v76 = ((v52 & 0xC5DD74DE | (v57 & 0x37776E3E ^ 0xDE66C3C1) & ~v52) ^ 0xC5DD74DE) << v58;
  v77 = (((v57 & 0x37776E3E ^ 0x1BBBB71F) & v55) >> v56) - ((2 * (((v57 & 0x37776E3E ^ 0x1BBBB71F) & v55) >> v56)) & 0x40480CE8) - 1608251788;
  LODWORD(STACK[0x270]) = v77;
  LODWORD(STACK[0x2C0]) = ((v76 - ((2 * v76) & 0xAF9FD3A8) - 674240044) ^ 0x4D5B912) & (v77 ^ 0x5FDBF98B);
  LODWORD(STACK[0x708]) = v59;
  v78 = (v53 & 0xD9E19A10 ^ 0xD9E19A10 ^ (v57 & 0x3F3A7B4E ^ 0x467CA7B7) & (v53 ^ 0x7FFEFFFF)) << v58;
  v79 = (v57 & 0x22320206 ^ 0x21100A6 ^ (v9 ^ 0x223302A7) & (v57 & 0x3F3A7B4E ^ 0x9F9D3DA7)) >> v60;
  LODWORD(STACK[0x238]) = ((v79 - ((2 * v79) & 0xE8234FE8) + 1947314164) ^ 0xAA7E1858) & ((v78 - ((2 * v78) & 0x302E248E) - 1743318457) ^ 0x67E8EDB8);
  LODWORD(STACK[0x2B8]) = ((v51 & 0x50607A84 ^ 0x50213C84 ^ (v9 ^ 0x50617E95) & (v51 & 0xF77A7B9E ^ 0xFBBD3DCF)) >> v56) + (((v52 & 0x45C5F220 | (v51 & 0xF77A7B9E ^ 0xBE78CFEF) & ~v52) ^ 0x45C5F220) << v54);
  LODWORD(STACK[0x650]) = v57;
  LODWORD(STACK[0x220]) = v57 & 0x33D97AFE ^ 0x99ECBD7F;
  LODWORD(STACK[0x280]) = v53 & 0xCD27390F ^ 0xCD27390F ^ (v57 & 0x33D97AFE ^ 0x54CB8470) & (v53 ^ 0xFFFBFFFF);
  LODWORD(STACK[0x6A0]) = v51;
  v80 = LODWORD(STACK[0x4D4]) ^ (2 * (v48 & (LODWORD(STACK[0x578]) ^ 0x7BEF9A59)));
  v81 = ((v53 & 0x8A2A135F | (LODWORD(STACK[0x558]) ^ (2 * (STACK[0x528] & LODWORD(STACK[0x6F8]))) ^ 0xA1013874) & ~v53) ^ 0x8A2A135F) << v58;
  LODWORD(STACK[0x558]) = (2 * v81) & 0x29EE8C54;
  LODWORD(STACK[0x528]) = v81 - 1795733974;
  v82 = LODWORD(STACK[0x560]) ^ ((LODWORD(STACK[0x590]) ^ 0xFFFFFFAB) + (~(2 * (LODWORD(STACK[0x590]) ^ 0xFFFFFFAB)) | 0x15) + 118);
  v83 = STACK[0x700] - 13;
  LODWORD(STACK[0x6C8]) = (STACK[0x700] + 1905552738) & 0x8E6B7D3D;
  v84 = v14 ^ LODWORD(STACK[0x4F8]);
  v85 = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x538]) ^ 0xE70088E0;
  STACK[0x578] = v41;
  STACK[0x538] = v8 & (2 * v41);
  v93 = LODWORD(STACK[0x2E4]) << v58;
  v94 = (LODWORD(STACK[0x2C4]) ^ 1u) >> v56;
  v95 = STACK[0x384] & v55;
  LODWORD(STACK[0x560]) = (2 * (v73 >> v56)) & 0x19F1876;
  LODWORD(STACK[0x540]) = (v73 >> v56) + 13601851;
  LODWORD(STACK[0x384]) = LODWORD(STACK[0x388]) ^ 0xFC06BB93;
  LODWORD(STACK[0x6B0]) = v9;
  LODWORD(STACK[0x700]) = ~v52;
  LODWORD(STACK[0x698]) = ~v53;
  LODWORD(STACK[0x2C4]) = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x59C]);
  v86 = STACK[0x740];
  v87 = *(*(&off_1006B4E30 + (v83 ^ 0x2311)) + 169) ^ 0x79045A0B;
  v88 = v87 ^ (2 * ((v87 ^ 0x2293BC39) & STACK[0x6D8]));
  v89 = (v9 & 0xE869E941 ^ (v88 ^ 0x4AFA5578) & STACK[0x708] ^ 1) >> LODWORD(STACK[0x6E8]);
  v90 = (((v88 ^ 0xA63E9F3C) & STACK[0x700] | v52 & 0x4AD2305) ^ 0x4AD2305) << LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x6E0]);
  LODWORD(STACK[0x6F8]);
  LODWORD(STACK[0x6D0]);
  v91 = 4 * (v82 ^ (LODWORD(STACK[0x6C8]) - 39));
  *(STACK[0x750] + v91) = v84 ^ (v89 - ((2 * v89) & 0x33AAD5B0) + 433416920) ^ (v90 - ((2 * v90) & 0xCCD8FC6E) - 429097417) ^ 0x66BF211D;
  *(v86 + v91) = v85 ^ (*(*(&off_1006B4E30 + (v83 ^ 0x2007)) + 85) - 4317);
  return (*(STACK[0x668] + 8 * (v83 ^ 0x13)))(0);
}

void sub_1000EB610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, unsigned int a54, int a55, uint64_t a56, int a57, int a58, unsigned int a59, unsigned int a60, int a61, int a62, int a63)
{
  v106 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x56C]);
  v107 = LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x2FC]) ^ STACK[0x538] ^ STACK[0x578];
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x508]) ^ STACK[0x308] ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2F8]) ^ STACK[0x2F0];
  v1538 = a75 ^ (a77 - a81);
  v1539 = a61 ^ (a69 - a74);
  v1542 = (a51 - a52) ^ (a48 - a50);
  v1543 = a46 ^ (a47 - LODWORD(STACK[0x548]));
  v1544 = (a44 - a45) ^ a43;
  v1545 = (LODWORD(STACK[0x540]) - LODWORD(STACK[0x560])) ^ (a41 - a42);
  v1546 = (a37 - a38) ^ (a39 - a40);
  v1547 = (a34 - a36) ^ a33;
  v1537 = a32 ^ (LODWORD(STACK[0x528]) - LODWORD(STACK[0x558]));
  v108 = v106 ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x710]) ^ v107;
  v109 = STACK[0x6F8];
  v1536 = LODWORD(STACK[0x588]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x588])));
  v110 = STACK[0x6D8];
  v111 = LODWORD(STACK[0x5EC]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x5EC])));
  v112 = STACK[0x698];
  v113 = STACK[0x6C0];
  v114 = STACK[0x6C0];
  v115 = STACK[0x6D0];
  v116 = STACK[0x708];
  v117 = STACK[0x6E8];
  LODWORD(STACK[0x588]) = ((STACK[0x708] & v111) >> LODWORD(STACK[0x6E8])) + ((((v111 ^ 0x9A5EADA2) & STACK[0x698] | STACK[0x6C0] & 0x9A5EADA2) ^ 0x9A5EADA2) << LODWORD(STACK[0x6D0]));
  v118 = LODWORD(STACK[0x3CC]) ^ (2 * (v110 & STACK[0x3CC]));
  v119 = STACK[0x6E0];
  v120 = ((v116 & v118) >> v119) - ((2 * ((v116 & v118) >> v119)) & 0x4E2D0F0A) - 1491695739;
  v121 = STACK[0x6F0];
  v122 = (((v118 ^ 0x880C28F3) & v112 | v113 & 0x880C28F3) ^ 0x880C28F3) << LODWORD(STACK[0x6F0]);
  LODWORD(STACK[0x580]) = (v122 - ((2 * v122) & 0x2704345C) - 1820190162) ^ v120 ^ 0x34949DAB;
  v123 = LODWORD(STACK[0x574]) ^ (2 * (v109 & STACK[0x5C8]));
  v124 = STACK[0x6B0];
  v125 = (STACK[0x6B0] & 0xC6C28201 ^ v116 & (v123 ^ 0xBDBA3902) ^ 1) >> v117;
  v126 = STACK[0x700];
  v127 = STACK[0x6B8];
  v128 = STACK[0x6B8];
  v129 = ((STACK[0x6B8] & 0xD1C6C717 | STACK[0x700] & (v123 ^ 0xAABE7C14)) ^ 0xD1C6C717) << v115;
  LODWORD(STACK[0x578]) = (v125 - ((2 * v125) & 0xDB559936) + 1839910043) & 0xAC879FAC ^ 0x7FFAECDB ^ ((v125 - ((2 * v125) & 0xDB559936) + 1839910043) ^ 0x92553364) & ((v129 - ((2 * v129) & 0x83F7CCD6) + 1107027563) ^ 0x12838638);
  v130 = LODWORD(STACK[0x5F0]) ^ (2 * (v109 & STACK[0x5F0]));
  v131 = ((v113 & 0x190414CC | v112 & (v130 ^ 0x190414CC)) ^ 0x190414CC) << v121;
  v132 = v131 + 1295322090 + (~(2 * v131) | 0x6595E82D);
  v133 = STACK[0x6A8];
  LODWORD(STACK[0x574]) = v132 & 0x8414D4DC ^ 0x7FFF2BEB ^ ((((STACK[0x6A8] & v130) >> v117) - ((2 * ((STACK[0x6A8] & v130) >> v117)) & 0xB1230DB6) + 1485932251) ^ 0x237AADF8) & (v132 ^ 0xB2CAF416);
  v134 = LODWORD(STACK[0x3C8]) ^ (2 * ((LODWORD(STACK[0x31C]) ^ 0x5E8E6E4C) & v109));
  v135 = (((v134 ^ 0xC29E197C) & v112 | v113 & 0xF05B33B4) ^ 0xF05B33B4) << v115;
  LODWORD(STACK[0x570]) = ((((v134 ^ 0x32C52AC8) & v133) >> v119) - ((2 * (((v134 ^ 0x32C52AC8) & v133) >> v119)) & 0x4F95B620) - 1479877872) ^ 0x66FDD5A2 ^ (v135 - ((2 * v135) & 0x826E1D64) - 1053356366);
  v136 = LODWORD(STACK[0x680]) ^ (2 * (v110 & STACK[0x680]));
  LODWORD(STACK[0x56C]) = ((v136 & v133) >> v117) + ((((v136 ^ 0x5B10A819) & v112 | v113 & 0x5B10A819) ^ 0x5B10A819) << v121);
  v137 = LODWORD(STACK[0x39C]) ^ (2 * ((LODWORD(STACK[0x534]) ^ 0x621EF5ED) & v110));
  v138 = (((v137 ^ 0x5CCAB0A3) & v126 | v127 & 0x277884E1) ^ 0x277884E1) << v115;
  v139 = ((v137 ^ 0xBEDE92C8) & v116 ^ v124 & 0xC56CA68A) >> v117;
  LODWORD(STACK[0x560]) = (v139 - ((2 * v139) & 0xFFDFE27A) + 2146431293) ^ 0xF1FD22F7 ^ (v138 - ((2 * v138) & 0x1C25A794) - 1911368758);
  v140 = v124;
  v141 = LODWORD(STACK[0x3A0]) ^ (2 * (STACK[0x510] & v110));
  v142 = (v116 & (v141 ^ 0xEE68FE8B) ^ v124 & 0xE8B5AA46) >> v117;
  v143 = (((v141 ^ 0x79E37E1E) & v112 | v113 & 0x7F3E2AD3) ^ 0x7F3E2AD3) << v115;
  LODWORD(STACK[0x558]) = (v142 - ((2 * v142) & 0x512605C6) + 680723171) & 0xB23E808E ^ 0x6DD37FF3 ^ ((v142 - ((2 * v142) & 0x512605C6) + 680723171) ^ 0xD76CFD1C) & ((v143 - ((2 * v143) & 0x9F7D6F26) - 809584749) ^ 0x827FC8E2);
  v144 = LODWORD(STACK[0x3C0]) ^ (2 * (STACK[0x518] & v109));
  v145 = (v124 & 0xB975CD45 ^ (v144 ^ 0x67FFD978) & v116 ^ 1) >> v117;
  v146 = (((v144 ^ 0xADB25767) & v112 | v113 & 0x7338435A) ^ 0x7338435A) << v121;
  LODWORD(STACK[0x548]) = (v145 - ((2 * v145) & 0x4B21C0A0) - 1517232048) & 0x5DD4D1FF ^ 0xA7BBEE50 ^ ((v146 - ((2 * v146) & 0xC753608A) - 475418555) ^ 0x41829E45) & ((v145 - ((2 * v145) & 0x4B21C0A0) - 1517232048) ^ 0x5A6F1FAF);
  v147 = LODWORD(STACK[0x600]) ^ (2 * (v109 & STACK[0x600]));
  LODWORD(STACK[0x540]) = (((v113 & 0xECB95909 | v112 & (v147 ^ 0xECB95909)) ^ 0xECB95909) << v121) + ((v133 & v147) >> v119);
  v148 = LODWORD(STACK[0x620]) ^ (2 * (v109 & STACK[0x620]));
  v149 = ((v116 & v148) >> v117) - ((2 * ((v116 & v148) >> v117)) & 0xEA9AA5CC) + 1968001766;
  v150 = ((v127 & 0x838E3469 | v126 & (v148 ^ 0x838E3469)) ^ 0x838E3469) << v115;
  LODWORD(STACK[0x648]) = v149 & 0xE822EE7B ^ 0x77DD53E6 ^ (v149 ^ 0x8AB2AD19) & ((v150 - ((2 * v150) & 0x2FED07CC) + 402031590) ^ 0x2B9262);
  v1535 = v108;
  v151 = v108 ^ (2 * ((v108 ^ 0x3DD7A6AF) & v109));
  v152 = (((v151 ^ 0xC0A36D73) & v112 | v113 & 0xFD74CBDC) ^ 0xFD74CBDC) << v115;
  LODWORD(STACK[0x538]) = ((((v151 ^ 0x3DD7A6AF) & v133) >> v119) - ((2 * (((v151 ^ 0x3DD7A6AF) & v133) >> v119)) & 0x64BD5BCC) - 1302417946) ^ 0x974916B2 ^ (v152 - ((2 * v152) & 0x4A2F76A8) + 622312276);
  v153 = LODWORD(STACK[0x380]) ^ (2 * (v109 & STACK[0x5E8]));
  v154 = (v153 & 0x4B9B8770 ^ 0x8908070 ^ (v124 ^ 0x4B9B8761) & (v153 ^ 0x3CD4D0F4u)) >> v117;
  v155 = ((v114 & 0xA7E61268 | v112 & (v153 ^ 0x9B32C29C)) ^ 0xA7E61268) << v115;
  LODWORD(STACK[0x534]) = (v154 - ((2 * v154) & 0xFEE92E12) - 9136375) & 0xF5985DCA ^ 0xFF77B73D ^ ((v154 - ((2 * v154) & 0xFEE92E12) - 9136375) ^ 0x8B68F6) & ((v155 - ((2 * v155) & 0x822E4C00) + 1092036096) ^ 0x4B708435);
  v156 = LODWORD(STACK[0x554]) ^ (2 * (v109 & STACK[0x5E0]));
  v157 = (v156 & 0xFAD37745 ^ 0xE0932001 ^ (v124 ^ 0xFAD37754) & (v156 ^ 0xE4BFA889)) >> v119;
  v158 = ((v127 & 0x28A39717 | v126 & (v156 ^ 0xCC1C3F9E)) ^ 0x28A39717) << v121;
  LODWORD(STACK[0x528]) = (v158 - ((2 * v158) & 0xCEBCDFF4) + 1734242298) ^ (v157 - ((2 * v157) & 0xFE5B8AA6) - 13777581) ^ 0x9873AAA9;
  v159 = LODWORD(STACK[0x520]) ^ (2 * (v110 & STACK[0x608]));
  v160 = ((v127 & 0x43761776 | v126 & (v159 ^ 0x3AF7D5E8)) ^ 0x43761776) << v115;
  v161 = (v159 & 0x58CBF10C ^ 0x5881C00C ^ (v124 ^ 0x58CBF11D) & (v159 ^ 0x7981C29Eu)) >> v117;
  LODWORD(STACK[0x710]) = (v161 - ((2 * v161) & 0x51ABEF20) - 1462372464) ^ (v160 - ((2 * v160) & 0xAB396250) + 1436332328);
  v162 = LODWORD(STACK[0x660]) ^ (2 * (v110 & STACK[0x660]));
  v163 = ((v116 & v162) >> v119) - ((2 * ((v116 & v162) >> v119)) & 0x225C67C2) + 288240609;
  v164 = ((v127 & 0x21834B42 | v126 & (v162 ^ 0x21834B42)) ^ 0x21834B42) << v121;
  LODWORD(STACK[0x380]) = (v163 ^ 0xEED1CC1E) & ((v164 - ((2 * v164) & 0x7CE96422) - 1099648495) ^ 0xCF06634A) ^ v163 & 0x8E8D2EA4;
  v165 = LODWORD(STACK[0x3AC]) ^ (2 * (STACK[0x3AC] & v109));
  v166 = ((v165 & v133) >> v117) - ((2 * ((v165 & v133) >> v117)) & 0xAE1BC6FC) + 1460527998;
  v167 = (((v165 ^ 0x14BA6B8E) & v126 | v127 & 0x14BA6B8E) ^ 0x14BA6B8E) << v121;
  LODWORD(STACK[0x554]) = v166 & 0xBB045CC9 ^ 0x57FFE37E ^ ((v167 - ((2 * v167) & 0xBCF40E10) + 1585055496) ^ 0x1A81A43E) & (v166 ^ 0xA8F21C81);
  v168 = LODWORD(STACK[0x524]) ^ (2 * (v110 & STACK[0x524]));
  v169 = (v124 & 0x9F63360D ^ v116 & (v168 ^ 0x9F63360D) ^ 1) >> v119;
  v170 = (((v168 ^ 0xF66E0BDD) & v112 | v114 & 0xF66E0BDD) ^ 0xF66E0BDD) << v115;
  LODWORD(STACK[0x524]) = (v169 - ((2 * v169) & 0xBB406B1A) + 1570780557) & 0x1DA7C78A ^ 0xFFF83DFD ^ ((v169 - ((2 * v169) & 0xBB406B1A) + 1570780557) ^ 0xA25FCA72) & ((v170 - ((2 * v170) & 0x9E955E26) + 1330294547) ^ 0xAD129766);
  v171 = LODWORD(STACK[0x33C]) ^ (2 * (v109 & STACK[0x33C]));
  v172 = ((v114 & 0x7FBD034E | v112 & (v171 ^ 0x7FBD034E)) ^ 0x7FBD034E) << v115;
  v173 = (v172 - ((2 * v172) & 0x9AEDF424) - 847840750) ^ (((v133 & v171) >> v117) - ((2 * ((v133 & v171) >> v117)) & 0x6011DAD4) - 1341592214) ^ 0x7D7E1778;
  v1534 = STACK[0x758];
  v174 = *(STACK[0x758] + 1);
  v175 = ((*(STACK[0x4D8] + (((v174 ^ 0x97) - (v174 ^ 0xF4)) ^ 0xFFFFFFFE) + (v174 ^ 0x97)) ^ (2 * (v174 ^ 0x97) - ((4 * (v174 ^ 0x97) + 102) & 0x7E) - 14) & 0xFE ^ 2) << 16) | ((*(STACK[0x4D8] + (v1534[2] ^ 0x61)) ^ 0x2E ^ (((2 * v1534[2]) ^ 4) - ((2 * ((2 * v1534[2]) ^ 4) + 102) & 0x7E) - 14) & 0xFE) << 8) | ((*(STACK[0x4E0] + (*v1534 ^ 0xF4)) ^ 0x61) << 24) | *(STACK[0x4E0] + (v1534[3] ^ 0xB1)) ^ 0xAF;
  v176 = *(STACK[0x758] + 4);
  v177 = (*(STACK[0x4F0] + (v1534[7] ^ 0x1ALL)) + (v1534[7] ^ 0xED) - 122) ^ 0xF6 | (((*(STACK[0x4E8] + (v1534[6] ^ 0x4CLL)) + 62) ^ 0x52) << 8) | (((*(STACK[0x4E8] + (v1534[5] ^ 0x28)) + 62) ^ 0x24) << 16) | (((*(STACK[0x4F0] + (v176 ^ 0x2C)) + (v176 ^ 0xDB) - 122) ^ 0xA6) << 24);
  v178 = ((((*(STACK[0x4F0] + (v1534[8] ^ 0x5ELL)) + (v1534[8] ^ 0xA9) - 122) ^ 0x8B) << 24) | (((*(STACK[0x4F0] + (v1534[9] ^ 0xDFLL)) + (v1534[9] ^ 0x28) - 122) ^ 0x29) << 16) | ((*(STACK[0x4D8] + (v1534[10] ^ 0xEDLL)) ^ 0x72 ^ (((2 * v1534[10]) ^ 0x1C) - ((2 * ((2 * v1534[10]) ^ 0x1C) + 102) & 0x7E) - 14) & 0xFE) << 8) | *(STACK[0x4E0] + (v1534[11] ^ 0x51)) ^ 0x49) ^ 0x95;
  v179 = ((((*(STACK[0x4E8] + (v1534[14] ^ 0x9ALL)) + 62) ^ 0x71) << 8) | ((*(STACK[0x4E0] + (v1534[13] ^ 0x52)) ^ 0xBA) << 16) | ((*(STACK[0x4D8] + (v1534[12] ^ 0xDFLL)) ^ 0x36 ^ (((2 * v1534[12]) ^ 0x78) - ((2 * ((2 * v1534[12]) ^ 0x78) + 102) & 0x7E) - 14)) << 24) | (*(STACK[0x4F0] + (v1534[15] ^ 0x8CLL)) + (v1534[15] ^ 0x7B) - 122)) ^ 0xBC;
  v180 = STACK[0x700];
  v1527 = (((v178 ^ (2 * (v178 & v109))) & v116) >> v117) | (((v178 ^ (2 * (v178 & v109))) & STACK[0x700]) << v115);
  v181 = STACK[0x6A0];
  v182 = ((((v175 ^ (2 * (v175 & v110))) & v133) >> v117) | (((v175 ^ (2 * (v175 & v110))) & v112) << v115)) ^ (((STACK[0x6A0] & 0x8268012 ^ 0xB74000 ^ (v140 ^ 0x8B7C003) & (STACK[0x6A0] & 0x296E9312 ^ 0x14B74989u)) >> v119) + ((STACK[0x6A0] & 0x48010 ^ 0x140001 ^ (v114 ^ 0x3DEB5B8A) & (STACK[0x6A0] & 0x296E9312 ^ 0x14B74989)) << v121));
  LODWORD(STACK[0x31C]) = v182;
  v183 = STACK[0x650];
  v184 = ((STACK[0x650] & 0x44A10080 ^ 0x288204D0 ^ (v128 ^ 0x135CF923) & (STACK[0x650] & 0x55BDE9A2 ^ 0x2ADEF4D1)) << v115) ^ (((STACK[0x650] & 0x55BDE9A2 ^ 0x2ADEF4D1) & v133) >> v117) ^ (((v177 ^ (2 * (v177 & v109))) & v180) << v121) ^ (((v177 ^ (2 * (v177 & v109))) & v116) >> v119);
  LODWORD(STACK[0x308]) = v184;
  v1530 = ((v133 & (v181 & 0x902EC608 ^ 0xC8176304)) >> v117) ^ ((v181 & 0x802C4008 ^ 0x80144000 ^ (v114 ^ 0x5803A704) & (v181 & 0x902EC608 ^ 0xC8176304)) << v115);
  v185 = ((((v179 ^ (2 * (v179 & v110))) & v133) >> v119) | (((v179 ^ (2 * (v179 & v110))) & v112) << v121)) ^ (((v183 & 0x1C604000 ^ 0x1E600004 ^ (v140 ^ 0x1E604014) & (v183 & 0x3DE06A38 ^ 0x9EF0351C)) >> v119) + ((v183 & 0x2CA04018 ^ 0xCA01018 ^ (v128 ^ 0x93502F24) & (v183 & 0x3DE06A38 ^ 0x9EF0351C)) << v121));
  LODWORD(STACK[0x310]) = v185;
  v186 = v1530 & 0x10000;
  if ((((((v178 ^ (2 * (v178 & v109))) & v116) >> v117) | (((v178 ^ (2 * (v178 & v109))) & v180) << v115)) & v1530 & 0x10000) != 0)
  {
    v186 = -v186;
  }

  v1524 = v186;
  v323 = v176 == 219;
  v187 = (-960728193 * (v182 ^ (LODWORD(STACK[0x524]) - v173))) ^ ((-960728193 * (v182 ^ (LODWORD(STACK[0x524]) - v173))) >> 16);
  v1516 = v187 ^ v185 ^ (v187 >> 8);
  v188 = LODWORD(STACK[0x380]) ^ 0x717EF3FB;
  LODWORD(STACK[0x33C]) = v188;
  v189 = LODWORD(STACK[0x554]) - v188;
  if (v323)
  {
    v190 = LODWORD(STACK[0x554]) - v188;
  }

  else
  {
    v190 = v189 & 0xF164ADC2;
  }

  v191 = -1674859325 * (v187 ^ v185 ^ (v187 >> 8)) - ((-1674859325 * (v187 ^ v185 ^ (v187 >> 8))) >> 16);
  v1519 = 558781011 * ((v191 - (v191 >> 8)) ^ v184);
  v1522 = v190;
  v1513 = HIWORD(v1519);
  v192 = v1513 + v1519 - 2 * v1513 + ((v1513 + v1519 - 2 * v1513) >> 8);
  if ((v192 & 0x8000000) != 0)
  {
    v193 = -134217728;
  }

  else
  {
    v193 = 0x8000000;
  }

  LODWORD(STACK[0x2E4]) = v193;
  v323 = LODWORD(STACK[0x710]) == -45529416;
  LODWORD(STACK[0x524]) = LODWORD(STACK[0x710]) ^ 0xFD4946B8;
  v1487 = LODWORD(STACK[0x504]) ^ 0xDF8ED6E8;
  LODWORD(STACK[0x520]) = ((((v1487 ^ (2 * ((LODWORD(STACK[0x504]) ^ 0x7032E336) & v109)) ^ 0x8E6F04D3) & v112 | v114 & 0x21D3310D) ^ 0x21D3310D) << v121) + (((v1487 ^ (2 * ((LODWORD(STACK[0x504]) ^ 0x7032E336) & v109)) ^ 0xAFBC35DE) & v133) >> v117);
  v194 = LODWORD(STACK[0x460]) ^ (2 * (v109 & (LODWORD(STACK[0x51C]) ^ 0x565EFE42)));
  v195 = (((v114 & 0xBC9A3B4D | v112 & (v194 ^ 0xE80C5FE9)) ^ 0xBC9A3B4D) << v121) + ((v133 & (v194 ^ 0x549664A4)) >> v119);
  LODWORD(STACK[0x300]) = v195;
  v196 = LODWORD(STACK[0x3F0]) ^ (2 * (STACK[0x3F0] & v110));
  v197 = v114;
  v198 = (((v196 ^ 0x412F05BC) & v112 | v114 & 0x412F05BC) ^ 0x412F05BC) << v115;
  LODWORD(STACK[0x51C]) = (((v196 & v133) >> v119) + 185112529 + (~(2 * ((v196 & v133) >> v119)) | 0xE9EED05F)) ^ 0xB4F121DF ^ (v198 - ((2 * v198) & 0x7FF36C1E) - 1074153969);
  v199 = LODWORD(STACK[0x3E8]) ^ (2 * (STACK[0x3E8] & v109));
  v200 = ((v199 & v133) >> v119) - ((2 * ((v199 & v133) >> v119)) & 0x196510C2) - 1934456735;
  v201 = (((v199 ^ 0xCB3E3055) & v112 | v114 & 0xCB3E3055) ^ 0xCB3E3055) << v121;
  LODWORD(STACK[0x518]) = v200 & 0x7565BCB2 ^ 0x8EBACB6D ^ ((v201 - ((2 * v201) & 0x2977897C) + 347849918) ^ 0x9E2187F3) & (v200 ^ 0x734D779E);
  v202 = LODWORD(STACK[0x658]) ^ (2 * (v110 & STACK[0x658]));
  v203 = (v140 & 0x5736973A ^ v116 & (v202 ^ 0x5736973A) ^ 0x10) >> v117;
  v204 = (((v202 ^ 0x34B17B29) & v112 | v114 & 0x34B17B29) ^ 0x34B17B29) << v115;
  v205 = (v204 - ((2 * v204) & 0xAEFA5A58) - 679662292) ^ (v203 - ((2 * v203) & 0x756B6FFE) + 984987647) ^ 0xEDC89AD3;
  HIDWORD(v206) = STACK[0x470];
  LODWORD(v206) = STACK[0x470];
  LODWORD(v206) = (v206 >> 20) ^ __ROR4__(v109 & STACK[0x470], 19) ^ 0x6297FD40;
  HIDWORD(v206) = v206;
  v207 = v206 >> 12;
  v208 = (v207 & 0x6F09E353 ^ 0x44002153 ^ (v140 ^ 0x6F09E342) & (v207 ^ 0xD406297F)) >> v119;
  v209 = ((v197 & 0x6D36E0F9 | v112 & (v207 ^ 0xB930C986)) ^ 0x6D36E0F9) << v115;
  LODWORD(STACK[0x508]) = (v208 - ((2 * v208) & 0xFD8EFD4A) - 20480347) & 0x198D254D ^ 0xFEF7FEB7 ^ ((v208 - ((2 * v208) & 0xFD8EFD4A) - 20480347) ^ 0x138815A) & ((v209 - ((2 * v209) & 0xC231F216) + 1629026571) ^ 0x876A23B9);
  v1485 = LODWORD(STACK[0x4FC]) ^ 0x47791A8C;
  LODWORD(STACK[0x4F0]) = ((((v1485 ^ (2 * ((LODWORD(STACK[0x4FC]) ^ 0x39063EFA) & v109)) ^ 0x729384DF) & v112 | v197 & 0xCECA0A9) ^ 0xCECA0A9) << v115) + ((v140 & 0x46D9B053 ^ 0x11 ^ (v1485 ^ (2 * ((LODWORD(STACK[0x4FC]) ^ 0x39063EFA) & v109)) ^ 0x38A69425) & v116) >> v117);
  v210 = LODWORD(STACK[0x654]) ^ (2 * (STACK[0x654] & v109));
  v211 = (((v210 ^ 0xAB71ED5B) & v112 | v197 & 0xAB71ED5B) ^ 0xAB71ED5B) << v115;
  LODWORD(STACK[0x504]) = (((v210 & v133) >> v117) - ((2 * ((v210 & v133) >> v117)) & 0xABB5DCC6) - 707072413) ^ 0xA71C6B43 ^ (v211 - ((2 * v211) & 0xE58D0A40) + 1925612832);
  v212 = LODWORD(STACK[0x390]) ^ (2 * ((LODWORD(STACK[0x500]) ^ 0x7AE609C9) & v110));
  LODWORD(STACK[0x510]) = ((((v212 ^ 0x6FDE1B88) & v112 | v197 & 0xD31BCF7D) ^ 0xD31BCF7D) << v115) + ((v140 & 0xA36E69DB ^ 0x11 ^ (v212 ^ 0x1FABBD2E) & v116) >> v117);
  v213 = LODWORD(STACK[0x610]) ^ (2 * (v109 & STACK[0x610]));
  v214 = (v140 & 0x147517F3 ^ 0x11 ^ v116 & (v213 ^ 0x147517F3)) >> v119;
  v215 = ((v197 & 0xBFC291EB | v112 & (v213 ^ 0xBFC291EB)) ^ 0xBFC291EB) << v115;
  LODWORD(STACK[0x4FC]) = (v215 - ((2 * v215) & 0x150916B8) + 176458588) ^ (v214 - ((2 * v214) & 0x36F33F4C) + 460955558) ^ 0x11FD14FA;
  v1483 = LODWORD(STACK[0x4F8]) ^ 0x76F9C5F8;
  v216 = v1483 ^ (2 * ((LODWORD(STACK[0x4F8]) ^ 0x4116FC93) & v110));
  v217 = ((v216 ^ 0x48AE4A21) & v116 ^ v140 & 0xFF41734A) >> v117;
  v218 = (((v216 ^ 0x24933B47) & v180 | v128 & 0x937C022C) ^ 0x937C022C) << v115;
  LODWORD(STACK[0x4F8]) = (v217 - ((2 * v217) & 0x99145ADE) + 1284124015) & 0xDB40807 ^ 0xFECBFFFF ^ ((v218 - ((2 * v218) & 0x2071E28) + 17010452) ^ 0xF34878EC) & ((v217 - ((2 * v217) & 0x99145ADE) + 1284124015) ^ 0xB375D290);
  v219 = LODWORD(STACK[0x468]) ^ (2 * (v109 & STACK[0x468]));
  v220 = ((v116 & v219) >> v119) - ((2 * ((v116 & v219) >> v119)) & 0x81FE42C8) - 1057021596;
  v221 = ((v128 & 0x2D23EC68 | v180 & (v219 ^ 0x2D23EC68)) ^ 0x2D23EC68) << v115;
  LODWORD(STACK[0x500]) = (v221 - ((2 * v221) & 0x4D96CCD4) + 650864234) ^ v220 ^ 0xE634470E;
  v222 = LODWORD(STACK[0x3BC]) ^ (2 * ((LODWORD(STACK[0x328]) ^ 0x8184552) & v110));
  v223 = STACK[0x334];
  v224 = LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x37C]);
  LODWORD(STACK[0x37C]) = v224;
  v1475 = v223 ^ LODWORD(STACK[0x590]) ^ (((v116 & (v222 ^ 0xCABC2E10) ^ v140 & 0x5A2F8488) >> v119) + (((v128 & 0xB0CB948B | v180 & (v222 ^ 0x20583E13)) ^ 0xB0CB948B) << v121));
  v225 = LODWORD(STACK[0x670]) ^ (2 * (v109 & STACK[0x670]));
  v226 = ((v128 & 0x1B31BA92 | v180 & (v225 ^ 0x1B31BA92)) ^ 0x1B31BA92) << v121;
  v227 = (v140 & 0x50BDEAB7 ^ 0x11 ^ v116 & (v225 ^ 0x50BDEAB7)) >> v119;
  v1533 = LODWORD(STACK[0x5A0]) ^ LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x590]) = v1533 ^ (v226 - ((2 * v226) & 0x91866578) - 926731588) & 0xE4B2B374 ^ ((v227 - ((2 * v227) & 0x7886568) - 2084293964) ^ 0x98897E3F) & ((v226 - ((2 * v226) & 0x91866578) - 926731588) ^ 0x373CCD43) ^ 0xDF55BC3;
  v228 = LODWORD(STACK[0x3B8]) ^ (2 * (STACK[0x3B8] & v109));
  v229 = ((v228 & v133) >> v117) - ((2 * ((v228 & v133) >> v117)) & 0xEA9C1722) + 1968049041;
  v230 = (((v228 ^ 0x1A9AF77) & v112 | v197 & 0x1A9AF77) ^ 0x1A9AF77) << v115;
  LODWORD(STACK[0x334]) = v224 ^ v229 & 0xA1AA7258 ^ ((v230 - ((2 * v230) & 0x889BA0) - 2143007280) ^ 0xDE11C077) & (v229 ^ 0x8AB1F46E);
  v231 = LODWORD(STACK[0x3DC]) ^ (2 * (STACK[0x3DC] & v110));
  v232 = ((v231 & v116) >> v119) - ((2 * ((v231 & v116) >> v119)) & 0xEE04EC42) + 1996650017;
  v233 = (((v231 ^ 0xD28C96C7) & v112 | v197 & 0xD28C96C7) ^ 0xD28C96C7) << v115;
  LODWORD(STACK[0x328]) = v1533 ^ v232 & 0x8B3FFCF0 ^ ((v233 - ((2 * v233) & 0xD5465ECC) - 358404250) ^ 0x9E632C69) & (v232 ^ 0x88FD89DE);
  v234 = LODWORD(STACK[0x3EC]) ^ (2 * (STACK[0x3EC] & v110));
  v235 = (((v234 ^ 0x9785EAD7) & v180 | v128 & 0x9785EAD7) ^ 0x9785EAD7) << v121;
  LODWORD(STACK[0x2E8]) = (v235 - ((2 * v235) & 0xEC58BB70) + 1982619064) & 0x8316010F ^ 0x7EEDFFF8 ^ ((v235 - ((2 * v235) & 0xEC58BB70) + 1982619064) ^ 0x89D3A247) & ((((v234 & v133) >> v119) - ((2 * ((v234 & v133) >> v119)) & 0x1323A8E0) - 1986931600) ^ 0xF5782A80);
  v236 = LODWORD(STACK[0x3B0]) ^ (2 * ((LODWORD(STACK[0x324]) ^ 0x67E952BA) & v109));
  v237 = (v140 & 0xC6E02A1 ^ (v236 ^ 0x498BE6EE) & v116 ^ 1) >> v117;
  v238 = (((v236 ^ 0x7F71592A) & v112 | v197 & 0x3A94BD65) ^ 0x3A94BD65) << v115;
  LODWORD(STACK[0x2F8]) = (v237 - ((2 * v237) & 0x7DD2E3D8) - 1091997204) & 0xFCF5459A ^ 0xBFEBFBED ^ ((v238 - ((2 * v238) & 0x3045CCAA) - 1742543275) ^ 0x9B285C30) & ((v237 - ((2 * v237) & 0x7DD2E3D8) - 1091997204) ^ 0x41168E13);
  v239 = LODWORD(STACK[0x678]) ^ (2 * (v109 & STACK[0x678]));
  LODWORD(STACK[0x4D8]) = (((v197 & 0xB143BC05 | v112 & (v239 ^ 0xB143BC05)) ^ 0xB143BC05) << v121) + ((v133 & v239) >> v119);
  v240 = LODWORD(STACK[0x3E4]) ^ (2 * (STACK[0x3E4] & v110));
  v241 = ((v240 & v133) >> v117) - ((2 * ((v240 & v133) >> v117)) & 0xA382B9A8) - 775856940;
  v242 = (((v240 ^ 0xD1B13D90) & v112 | v197 & 0xD1B13D90) ^ 0xD1B13D90) << v115;
  LODWORD(STACK[0x4E0]) = (v242 - 738435759 + (~(2 * v242) | 0x5807455F)) ^ v241 ^ 0x23D0184;
  v243 = LODWORD(STACK[0x62C]) ^ (2 * (v110 & STACK[0x62C]));
  LODWORD(STACK[0x4E8]) = ((v116 & v243) >> v117) + ((((v243 ^ 0x9B4265AA) & v112 | v197 & 0x9B4265AA) ^ 0x9B4265AA) << v115);
  v244 = 2 * (STACK[0x3E0] & v109);
  v245 = v244 ^ LODWORD(STACK[0x3B4]);
  v246 = (((v245 ^ 0x189FC1BD) & v112 | v197 & 0x4638BE51) ^ 0x4638BE51) << v115;
  v247 = (v245 & 0x3EC23821 ^ (v140 ^ 0x3EC23830) & (v244 ^ LODWORD(STACK[0x3E0])) ^ 0x1E823820u) >> v117;
  LODWORD(STACK[0x2F0]) = (v246 - ((2 * v246) & 0x39EB7666) - 1661617357) ^ (v247 - ((2 * v247) & 0x465603A2) - 1557462575) ^ 0x3FDEBAE2;
  v248 = LODWORD(STACK[0x384]) ^ (2 * ((LODWORD(STACK[0x388]) ^ 0x38EEA8E8) & v110));
  v249 = v116;
  LODWORD(STACK[0x2FC]) = ((((v248 ^ 0xC000E2CA) & v112 | v197 & 0x4E8F1B1) ^ 0x4E8F1B1) << v121) + (((v248 ^ 0x6ED168F3) & v116 ^ v140 & 0xAA397B88) >> v117);
  v250 = LODWORD(STACK[0x3F8]) ^ (2 * (v109 & STACK[0x3F8]));
  v1472 = (((v128 & 0x7BB7BE57 | v180 & (v250 ^ 0x7BB7BE57)) ^ 0x7BB7BE57) << v115) + ((v133 & v250) >> v117);
  v1482 = LODWORD(STACK[0x338]) ^ (2 * (v110 & STACK[0x400]));
  v1484 = LODWORD(STACK[0x434]) ^ (2 * (v109 & STACK[0x414]));
  v1476 = LODWORD(STACK[0x42C]) ^ (2 * (v109 & STACK[0x42C]));
  v1477 = LODWORD(STACK[0x5B8]) ^ (2 * (v110 & STACK[0x5B8]));
  v1486 = LODWORD(STACK[0x430]) ^ (2 * (v109 & STACK[0x430]));
  v251 = LODWORD(STACK[0x5A8]) ^ (2 * (v110 & STACK[0x5A8]));
  v252 = v180;
  LODWORD(STACK[0x324]) = ((v140 & 0x50E56BE3 ^ v249 & (v251 ^ 0x50E56BE3) ^ 1) >> v119) + (((v128 & 0xEAB31031 | v180 & (v251 ^ 0xEAB31031)) ^ 0xEAB31031) << v121);
  v253 = LODWORD(STACK[0x5B4]) ^ (2 * (v110 & STACK[0x5B4]));
  v254 = ((v128 & 0x7FFD77F0 | v180 & (v253 ^ 0x7FFD77F0)) ^ 0x7FFD77F0) << v121;
  v1471 = (v254 - ((2 * v254) & 0x6FC64014) - 1209851894) ^ (((v253 & v133) >> v119) - ((2 * ((v253 & v133) >> v119)) & 0x246C6594) + 305541834);
  v255 = LODWORD(STACK[0x408]) ^ (2 * (v109 & STACK[0x408]));
  LODWORD(STACK[0x5B8]) = (((v128 & 0xA366AD94 | v180 & (v255 ^ 0xA366AD94)) ^ 0xA366AD94) << v121) + ((v133 & v255) >> v119);
  v256 = LODWORD(STACK[0x5C4]) ^ (2 * (v110 & STACK[0x5C4]));
  v257 = ((v256 & v133) >> v119) - ((2 * ((v256 & v133) >> v119)) & 0x7E84B428) + 1061313044;
  v258 = (((v256 ^ 0x661643A7) & v112 | v197 & 0x661643A7) ^ 0x661643A7) << v121;
  LODWORD(STACK[0x5C4]) = v257 & 0x898BD41F ^ 0x7F767BF4 ^ ((v258 - ((2 * v258) & 0xB5FC2C1A) + 1526601229) ^ 0x2C8A3DED) & (v257 ^ 0xC0BDA5EB);
  v259 = LODWORD(STACK[0x340]) ^ (2 * (v109 & STACK[0x340]));
  v260 = ((v128 & 0x8676D70D | v180 & (v259 ^ 0x8676D70D)) ^ 0x8676D70D) << v115;
  LODWORD(STACK[0x5B4]) = (((v133 & v259) >> v117) - ((2 * ((v133 & v259) >> v117)) & 0xE991EC6A) + 1959327285) ^ 0xFE7DE29D ^ (v260 - ((2 * v260) & 0x156A2950) - 1967844184);
  v261 = LODWORD(STACK[0x438]) ^ (2 * (v110 & STACK[0x418]));
  v262 = (v249 & (v261 ^ 0x38E6E8EB) ^ v140 & 0xE35CFA80) >> v119;
  v263 = ((v128 & 0xE89DC004 | v180 & (v261 ^ 0x3327D26F)) ^ 0xE89DC004) << v115;
  LODWORD(STACK[0x5A8]) = (v262 - ((2 * v262) & 0xD03D098C) - 400653114) & 0xD3B68508 ^ 0xEC5FFEF7 ^ ((v262 - ((2 * v262) & 0xD03D098C) - 400653114) ^ 0x17E17B39) & ((v263 - ((2 * v263) & 0x1B0D39CC) - 1920557850) ^ 0xA1CFE611);
  v264 = LODWORD(STACK[0x350]) ^ (2 * (v110 & STACK[0x350]));
  v265 = ((v128 & 0xEB10391E | v180 & (v264 ^ 0xEB10391E)) ^ 0xEB10391E) << v121;
  v266 = (v249 & (v264 ^ 0xAFFB88CA) ^ v140 & 0xAFFB88CA) >> v117;
  LODWORD(STACK[0x438]) = (v265 - ((2 * v265) & 0xE8877922) - 196887407) ^ (v266 - ((2 * v266) & 0x7084B634) + 943872794) ^ 0xCC01E78B;
  v267 = LODWORD(STACK[0x5CC]) ^ (2 * (v110 & STACK[0x5CC]));
  v268 = ((v267 & v133) >> v119) - ((2 * ((v267 & v133) >> v119)) & 0x916EDA90) + 1219980616;
  v269 = ((v128 & 0xAB6F7557 | v180 & (v267 ^ 0xAB6F7557)) ^ 0xAB6F7557) << v115;
  LODWORD(STACK[0x5CC]) = v268 ^ 0x8A8F7CEE ^ (v269 - ((2 * v269) & 0x8470234C) - 1036512858);
  v270 = LODWORD(STACK[0x354]) ^ (2 * (v109 & STACK[0x354]));
  v271 = ((v128 & 0xCCAE87A6 | v180 & (v270 ^ 0xCCAE87A6)) ^ 0xCCAE87A6) << v115;
  v272 = v140;
  v273 = (v249 & (v270 ^ 0xB18F4706) ^ v140 & 0xB18F4706) >> v119;
  LODWORD(STACK[0x434]) = (v271 - ((2 * v271) & 0x91AF4CEE) + 1222092407) & 0xDFA97D89 ^ 0x68D7A677 ^ ((v273 - ((2 * v273) & 0x374A252C) - 1683680618) ^ 0xBBF390E0) & ((v271 - ((2 * v271) & 0x91AF4CEE) + 1222092407) ^ 0xB7285988);
  v274 = LODWORD(STACK[0x5D0]) ^ (2 * (v109 & STACK[0x5D0]));
  v275 = ((v128 & 0xDC44889B | v180 & (v274 ^ 0xDC44889B)) ^ 0xDC44889B) << v121;
  LODWORD(STACK[0x5D0]) = (v275 - ((2 * v275) & 0x194584CC) - 1935490458) & 0x9398869D ^ 0xECE7FB66 ^ ((v275 - ((2 * v275) & 0x194584CC) - 1935490458) ^ 0x735D3D99) & ((((v133 & v274) >> v119) - ((2 * ((v133 & v274) >> v119)) & 0xEFCB3328) + 2011535764) ^ 0x1B82E0F6);
  v276 = LODWORD(STACK[0x358]) ^ (2 * (v109 & STACK[0x348]));
  v277 = ((v133 & (v276 ^ 0x81478320)) >> v119) - 1792813098 + (~(2 * ((v133 & (v276 ^ 0x81478320)) >> v119)) | 0xD5B85055);
  v278 = ((v197 & 0xE3070FB4 | v112 & (v276 ^ 0x62408C94)) ^ 0xE3070FB4) << v121;
  LODWORD(STACK[0x430]) = v277 ^ 0xAAB5757 ^ (v278 - ((2 * v278) & 0x3F110104) - 1618444158);
  v279 = LODWORD(STACK[0x5D4]) ^ (2 * (v110 & STACK[0x5D4]));
  v280 = ((v128 & 0x1C342DD1 | v180 & (v279 ^ 0x1C342DD1)) ^ 0x1C342DD1) << v115;
  v281 = (v280 - ((2 * v280) & 0x706AA6D8) + 943018860) ^ (((v249 & v279) >> v117) - ((2 * ((v249 & v279) >> v117)) & 0xA41DF490) + 1376713288) ^ 0x6A3BA924;
  v282 = LODWORD(STACK[0x5D8]) ^ (2 * (v110 & STACK[0x5D8]));
  v283 = v197;
  v284 = ((((v282 ^ 0xCDD2BFCF) & v112 | v197 & 0xCDD2BFCF) ^ 0xCDD2BFCF) << v121) + ((v282 & v133) >> v119);
  v285 = LODWORD(STACK[0x420]) ^ (2 * (v110 & (LODWORD(STACK[0x458]) ^ 0x7DF7FFED)));
  v286 = (v285 & 0x412F2803 ^ 0x12C0003 ^ (v272 ^ 0x412F2812) & (v285 ^ 0x8B2C801F)) >> v117;
  v287 = ((v128 & 0x60D512FF | v180 & (v285 ^ 0xEBF992E0)) ^ 0x60D512FF) << v121;
  v288 = (v286 - ((2 * v286) & 0x61AAAF70) - 1328195656) & 0x46EBD420 ^ 0xB9D57FFF ^ ((v286 - ((2 * v286) & 0x61AAAF70) - 1328195656) ^ 0x4F2AA847) & ((v287 - ((2 * v287) & 0xAC84E338) + 1447195036) ^ 0xEF565A43);
  v289 = LODWORD(STACK[0x360]) ^ (2 * (v110 & STACK[0x360]));
  v290 = v133;
  v291 = (((v128 & 0x48EAAE81 | v180 & (v289 ^ 0x48EAAE81)) ^ 0x48EAAE81) << v121) + ((v289 & v133) >> v119);
  v292 = LODWORD(STACK[0x370]) ^ (2 * (v110 & STACK[0x370]));
  v293 = ((v292 & v290) >> v117) - ((2 * ((v292 & v290) >> v117)) & 0x68C94894) + 879010890;
  v294 = (((v292 ^ 0x5D211E62) & v112 | v283 & 0x5D211E62) ^ 0x5D211E62) << v115;
  v295 = (v294 - ((2 * v294) & 0x5BFFFF90) - 1375731768) ^ v293 ^ 0x999B5B82;
  v296 = LODWORD(STACK[0x450]) ^ (2 * (v109 & STACK[0x450]));
  v297 = ((v290 & v296) >> v119) - ((2 * ((v290 & v296) >> v119)) & 0x8C2B6E48) - 971655388;
  v298 = ((v283 & 0x23953453 | v112 & (v296 ^ 0x23953453)) ^ 0x23953453) << v121;
  v299 = v297 ^ 0x4EDFA0E8 ^ (v298 - ((2 * v298) & 0x11942F98) - 2000021556);
  v300 = LODWORD(STACK[0x478]) ^ (2 * (v110 & STACK[0x368]));
  v301 = ((v128 & 0x3433950A | v252 & (v300 ^ 0x613E7EFB)) ^ 0x3433950A) << v115;
  v302 = (v249 & (v300 ^ 0x426A5CD3) ^ v272 & 0x1767B722) >> v119;
  v303 = (v301 - ((2 * v301) & 0xAE3C7172) - 685885255) & 0x4DE501BE ^ 0xF71EFEF9 ^ ((v302 - ((2 * v302) & 0x7D7A7B30) + 1052589464) ^ 0x8CA7C3D9) & ((v301 - ((2 * v301) & 0xAE3C7172) - 685885255) ^ 0x28E1C746);
  v304 = (v1524 + v1527) ^ v1530 & 0xFFFEFFFF;
  v305 = v1522 | v189 & 0xE9B523D;
  v306 = (-960728193 * (LODWORD(STACK[0x31C]) ^ v189)) ^ ((-960728193 * (LODWORD(STACK[0x31C]) ^ v189)) >> 16);
  v307 = -1674859325 * (v306 ^ LODWORD(STACK[0x310]) ^ (v306 >> 8));
  v308 = 558781011 * ((v307 - HIWORD(v307) - ((v307 - HIWORD(v307)) >> 8)) ^ LODWORD(STACK[0x308]));
  v309 = v308 - HIWORD(v308) + v304 + ((v308 - HIWORD(v308)) >> 8);
  v310 = ((v309 + v195) ^ v309) - 2 * v309 + 2 * ((v309 + v195) & v309);
  v311 = v191 ^ LODWORD(STACK[0x648]) ^ ((v191 | 0x5BDEEBFF) - ((v191 | 0x5BDEEBFF) ^ v191));
  v312 = ((LODWORD(STACK[0x2E4]) + v192) ^ 0x8000000) + (v1475 ^ 0x78263B55) - v192;
  v1469 = v304;
  v313 = STACK[0x750];
  v314 = -57842243 * (v192 + v304) - ((-57842243 * (v192 + v304)) >> 16) + STACK[0x750] - ((-57842243 * (v192 + v304) - ((-57842243 * (v192 + v304)) >> 16)) >> 8);
  v315 = -57842243 * (v1519 - v1513 + v304 + ((v1519 - v1513) >> 8));
  v316 = v305 - LODWORD(STACK[0x554]);
  v317 = v305 + LODWORD(STACK[0x33C]);
  v318 = v317 + v316;
  if (!v323)
  {
    v318 = (v317 + v316) & 0x2C8939C6;
  }

  v319 = v318 | (v317 + v316) & 0xD376C639;
  v320 = v317 - v319;
  LODWORD(STACK[0x304]) = v205;
  v321 = (v1516 ^ v205) - v1516 + 2 * (v1516 & v205);
  STACK[0x710] = v314 + LODWORD(STACK[0x618]);
  v1470 = v315 - HIWORD(v315);
  v322 = v1470 - (v1470 >> 8) + v313;
  LODWORD(STACK[0x2E4]) = v322;
  v323 = (v322 & 1) == 0;
  if (v322)
  {
    v324 = v295;
  }

  else
  {
    v324 = v299;
  }

  LODWORD(STACK[0x450]) = v324;
  if (v323)
  {
    v325 = v295;
  }

  else
  {
    v325 = v291;
  }

  LODWORD(STACK[0x478]) = v325;
  if (v323)
  {
    v326 = v291;
  }

  else
  {
    v326 = v303;
  }

  v1505 = v326;
  if (v323)
  {
    v327 = v303;
  }

  else
  {
    v327 = v299;
  }

  v1507 = v327;
  v328 = STACK[0x430];
  if (v323)
  {
    v329 = STACK[0x430];
  }

  else
  {
    v329 = v288;
  }

  if (v323)
  {
    v328 = v281;
  }

  v1525 = v328;
  if (v323)
  {
    v330 = v288;
  }

  else
  {
    v330 = v284;
  }

  v1517 = v330;
  if (v323)
  {
    v331 = v284;
  }

  else
  {
    v331 = v281;
  }

  v1509 = v331;
  v1511 = v329;
  v332 = STACK[0x438];
  v333 = STACK[0x5D0];
  if (v323)
  {
    v334 = STACK[0x438];
  }

  else
  {
    v334 = STACK[0x5D0];
  }

  LODWORD(STACK[0x458]) = v334;
  v335 = STACK[0x5CC];
  if (v323)
  {
    v332 = STACK[0x5CC];
  }

  v1520 = v332;
  v336 = STACK[0x434];
  if (!v323)
  {
    v333 = STACK[0x434];
  }

  v1514 = v333;
  if (!v323)
  {
    v336 = STACK[0x5CC];
  }

  LODWORD(STACK[0x338]) = v336;
  v337 = STACK[0x5B4];
  v338 = STACK[0x5A8];
  if (v323)
  {
    v339 = STACK[0x5A8];
  }

  else
  {
    v339 = STACK[0x5B4];
  }

  v1531 = v339;
  v340 = STACK[0x5C4];
  if (!v323)
  {
    v337 = STACK[0x5C4];
  }

  LODWORD(STACK[0x618]) = v337;
  v341 = STACK[0x5B8];
  if (v323)
  {
    v338 = STACK[0x5B8];
  }

  LODWORD(STACK[0x348]) = v338;
  if (v323)
  {
    v341 = v340;
  }

  v1528 = v341;
  v1478 = LODWORD(STACK[0x320]) ^ (2 * (STACK[0x320] & v110));
  v1480 = LODWORD(STACK[0x440]) ^ (2 * (v110 & STACK[0x440]));
  v1481 = a60 ^ (2 * (a60 & v109));
  v1479 = a59 ^ (2 * (a59 & v110));
  if (v323)
  {
    v342 = STACK[0x320];
  }

  else
  {
    v342 = STACK[0x440];
  }

  v1466 = v342;
  if (v323)
  {
    v343 = STACK[0x440];
  }

  else
  {
    v343 = a60;
  }

  v1488 = v343;
  if (v323)
  {
    v344 = a59;
  }

  else
  {
    v344 = STACK[0x320];
  }

  v1468 = v344;
  if (v323)
  {
    v345 = a60;
  }

  else
  {
    v345 = a59;
  }

  v1464 = v345;
  v346 = STACK[0x5FC];
  v347 = STACK[0x448];
  if (v323)
  {
    v348 = STACK[0x5FC];
  }

  else
  {
    v348 = STACK[0x448];
  }

  v1490 = v348;
  v349 = STACK[0x43C];
  if (v323)
  {
    v350 = STACK[0x43C];
  }

  else
  {
    v350 = STACK[0x5FC];
  }

  v1465 = v350;
  v351 = STACK[0x614];
  if (v323)
  {
    v352 = STACK[0x614];
  }

  else
  {
    v352 = STACK[0x43C];
  }

  v1467 = v352;
  if (v323)
  {
    v353 = STACK[0x448];
  }

  else
  {
    v353 = STACK[0x614];
  }

  v1463 = v353;
  v354 = LODWORD(STACK[0x334]) ^ 0x8A775BD3;
  v355 = STACK[0x590];
  if (v323)
  {
    v356 = STACK[0x590];
  }

  else
  {
    v356 = v312;
  }

  if (v323)
  {
    v357 = v312;
  }

  else
  {
    v357 = LODWORD(STACK[0x328]) ^ 0xA1F85253;
  }

  v358 = LODWORD(STACK[0x328]) ^ 0xA1F85253;
  v1474 = v358;
  v359 = STACK[0x500];
  if (v323)
  {
    v360 = v320;
  }

  else
  {
    v360 = STACK[0x500];
  }

  v361 = STACK[0x2E8];
  if (v323)
  {
    v362 = STACK[0x2E8];
  }

  else
  {
    v362 = v320;
  }

  v363 = STACK[0x4F0];
  if (v323)
  {
    v364 = STACK[0x4F0];
  }

  else
  {
    v364 = v321;
  }

  LODWORD(STACK[0x5CC]) = v364;
  v365 = STACK[0x518];
  if (!v323)
  {
    v321 = STACK[0x518];
  }

  LODWORD(STACK[0x614]) = v321;
  v366 = STACK[0x2F0];
  if (v323)
  {
    v367 = STACK[0x2F0];
  }

  else
  {
    v367 = v319 - v316;
  }

  LODWORD(STACK[0x5D8]) = v367;
  v368 = STACK[0x2FC];
  if (v323)
  {
    v369 = v319 - v316;
  }

  else
  {
    v369 = STACK[0x2FC];
  }

  LODWORD(STACK[0x5FC]) = v369;
  if (v323)
  {
    v366 = v310;
  }

  LODWORD(STACK[0x5D4]) = v366;
  if (v323)
  {
    v370 = v368;
  }

  else
  {
    v370 = v310;
  }

  LODWORD(STACK[0x5D0]) = v370;
  v371 = STACK[0x540];
  if (v323)
  {
    v372 = v311;
  }

  else
  {
    v372 = STACK[0x540];
  }

  LODWORD(STACK[0x5B8]) = v372;
  v373 = STACK[0x538];
  if (v323)
  {
    v374 = STACK[0x538];
  }

  else
  {
    v374 = v311;
  }

  LODWORD(STACK[0x5B4]) = v374;
  v1473 = v354;
  if (v323)
  {
    v375 = v358;
  }

  else
  {
    v375 = v354;
  }

  if (v323)
  {
    v376 = v354;
  }

  else
  {
    v376 = v355;
  }

  v377 = STACK[0x2F8];
  if (v323)
  {
    v378 = v359;
  }

  else
  {
    v378 = STACK[0x2F8];
  }

  if (!v323)
  {
    v377 = v361;
  }

  v379 = STACK[0x4FC];
  v380 = STACK[0x4F8];
  if (v323)
  {
    v381 = STACK[0x4F8];
  }

  else
  {
    v381 = STACK[0x4FC];
  }

  v382 = STACK[0x510];
  if (v323)
  {
    v383 = STACK[0x510];
  }

  else
  {
    v383 = STACK[0x4F8];
  }

  v384 = STACK[0x504];
  if (v323)
  {
    v385 = STACK[0x504];
  }

  else
  {
    v385 = STACK[0x510];
  }

  if (v323)
  {
    v386 = STACK[0x4FC];
  }

  else
  {
    v386 = STACK[0x504];
  }

  v387 = STACK[0x508];
  if (v323)
  {
    v388 = STACK[0x508];
  }

  else
  {
    v388 = v363;
  }

  if (v323)
  {
    v389 = v365;
  }

  else
  {
    v389 = STACK[0x508];
  }

  v390 = STACK[0x51C];
  v391 = STACK[0x4E8];
  if (v323)
  {
    v392 = STACK[0x51C];
  }

  else
  {
    v392 = STACK[0x4E8];
  }

  v393 = STACK[0x4D8];
  v394 = STACK[0x4E0];
  if (v323)
  {
    v395 = STACK[0x4E0];
  }

  else
  {
    v395 = STACK[0x4D8];
  }

  if (v323)
  {
    v396 = STACK[0x4D8];
  }

  else
  {
    v396 = STACK[0x51C];
  }

  if (v323)
  {
    v397 = STACK[0x4E8];
  }

  else
  {
    v397 = STACK[0x4E0];
  }

  v398 = STACK[0x524];
  v399 = STACK[0x520];
  if (v323)
  {
    v400 = STACK[0x520];
  }

  else
  {
    v400 = STACK[0x524];
  }

  v401 = STACK[0x534];
  if (v323)
  {
    v402 = STACK[0x534];
  }

  else
  {
    v402 = STACK[0x520];
  }

  v403 = STACK[0x528];
  if (v323)
  {
    v404 = STACK[0x524];
  }

  else
  {
    v404 = STACK[0x528];
  }

  if (v323)
  {
    v405 = STACK[0x528];
  }

  else
  {
    v405 = STACK[0x534];
  }

  v406 = STACK[0x560];
  if (v323)
  {
    v373 = STACK[0x560];
  }

  LODWORD(STACK[0x440]) = v373;
  if (v323)
  {
    v407 = v371;
  }

  else
  {
    v407 = v406;
  }

  v408 = STACK[0x570];
  v409 = STACK[0x548];
  if (v323)
  {
    v410 = STACK[0x548];
  }

  else
  {
    v410 = STACK[0x570];
  }

  LODWORD(STACK[0x350]) = v410;
  v411 = STACK[0x56C];
  v412 = STACK[0x558];
  if (v323)
  {
    v413 = STACK[0x558];
  }

  else
  {
    v413 = STACK[0x56C];
  }

  LODWORD(STACK[0x354]) = v413;
  if (!v323)
  {
    v408 = v412;
  }

  LODWORD(STACK[0x448]) = v408;
  if (v323)
  {
    v414 = v411;
  }

  else
  {
    v414 = v409;
  }

  v1503 = v414;
  v415 = STACK[0x588];
  v416 = STACK[0x578];
  if (v323)
  {
    v417 = STACK[0x578];
  }

  else
  {
    v417 = STACK[0x588];
  }

  v1461 = v417;
  v418 = STACK[0x580];
  v419 = STACK[0x574];
  if (v323)
  {
    v420 = STACK[0x574];
  }

  else
  {
    v420 = STACK[0x580];
  }

  v1462 = v420;
  if (v323)
  {
    v421 = STACK[0x580];
  }

  else
  {
    v421 = STACK[0x578];
  }

  if (v323)
  {
    v422 = STACK[0x588];
  }

  else
  {
    v422 = STACK[0x574];
  }

  v423 = (STACK[0x2E4] & 2) == 0;
  if ((STACK[0x2E4] & 2) != 0)
  {
    v424 = v375;
  }

  else
  {
    v424 = v356;
  }

  LODWORD(STACK[0x434]) = v424;
  if (v423)
  {
    v356 = v375;
  }

  v1541 = v356;
  if (v423)
  {
    v425 = v357;
  }

  else
  {
    v425 = v376;
  }

  v1540 = v425;
  if (v423)
  {
    v357 = v376;
  }

  v1523 = v357;
  if (v423)
  {
    v426 = v377;
  }

  else
  {
    v426 = v360;
  }

  LODWORD(STACK[0x438]) = v426;
  if (v423)
  {
    v427 = v360;
  }

  else
  {
    v427 = v377;
  }

  LODWORD(STACK[0x414]) = v427;
  if (v423)
  {
    v428 = v362;
  }

  else
  {
    v428 = v378;
  }

  LODWORD(STACK[0x430]) = v428;
  if (v423)
  {
    v429 = v378;
  }

  else
  {
    v429 = v362;
  }

  LODWORD(STACK[0x340]) = v429;
  if (v423)
  {
    v430 = v381;
  }

  else
  {
    v430 = v385;
  }

  LODWORD(STACK[0x42C]) = v430;
  if (v423)
  {
    v431 = v385;
  }

  else
  {
    v431 = v381;
  }

  LODWORD(STACK[0x388]) = v431;
  if (v423)
  {
    v432 = v386;
  }

  else
  {
    v432 = v383;
  }

  LODWORD(STACK[0x418]) = v432;
  if (v423)
  {
    v433 = v383;
  }

  else
  {
    v433 = v386;
  }

  LODWORD(STACK[0x420]) = v433;
  v434 = STACK[0x5CC];
  if (v423)
  {
    v435 = STACK[0x5CC];
  }

  else
  {
    v435 = v389;
  }

  LODWORD(STACK[0x368]) = v435;
  if (v423)
  {
    v436 = v389;
  }

  else
  {
    v436 = v434;
  }

  LODWORD(STACK[0x360]) = v436;
  v437 = STACK[0x614];
  if (v423)
  {
    v438 = v388;
  }

  else
  {
    v438 = STACK[0x614];
  }

  LODWORD(STACK[0x370]) = v438;
  if (v423)
  {
    v439 = v437;
  }

  else
  {
    v439 = v388;
  }

  LODWORD(STACK[0x400]) = v439;
  if (v423)
  {
    v440 = v392;
  }

  else
  {
    v440 = v395;
  }

  LODWORD(STACK[0x358]) = v440;
  if (v423)
  {
    v441 = v395;
  }

  else
  {
    v441 = v392;
  }

  LODWORD(STACK[0x614]) = v441;
  if (v423)
  {
    v442 = v396;
  }

  else
  {
    v442 = v397;
  }

  LODWORD(STACK[0x3F8]) = v442;
  if (v423)
  {
    v443 = v397;
  }

  else
  {
    v443 = v396;
  }

  LODWORD(STACK[0x3E0]) = v443;
  v444 = STACK[0x5FC];
  v445 = STACK[0x5D4];
  if (v423)
  {
    v446 = STACK[0x5FC];
  }

  else
  {
    v446 = STACK[0x5D4];
  }

  LODWORD(STACK[0x408]) = v446;
  if (v423)
  {
    v447 = v445;
  }

  else
  {
    v447 = v444;
  }

  LODWORD(STACK[0x5FC]) = v447;
  v448 = STACK[0x5D8];
  v449 = STACK[0x5D0];
  if (v423)
  {
    v450 = STACK[0x5D8];
  }

  else
  {
    v450 = STACK[0x5D0];
  }

  LODWORD(STACK[0x5D4]) = v450;
  if (v423)
  {
    v451 = v449;
  }

  else
  {
    v451 = v448;
  }

  LODWORD(STACK[0x320]) = v451;
  if (v423)
  {
    v452 = v404;
  }

  else
  {
    v452 = v402;
  }

  LODWORD(STACK[0x5CC]) = v452;
  if (v423)
  {
    v453 = v402;
  }

  else
  {
    v453 = v404;
  }

  LODWORD(STACK[0x5D8]) = v453;
  if (v423)
  {
    v454 = v405;
  }

  else
  {
    v454 = v400;
  }

  LODWORD(STACK[0x5D0]) = v454;
  if (v423)
  {
    v455 = v400;
  }

  else
  {
    v455 = v405;
  }

  LODWORD(STACK[0x5C4]) = v455;
  v456 = STACK[0x450];
  if (v423)
  {
    v457 = v1505;
  }

  else
  {
    v457 = STACK[0x450];
  }

  v1492 = v457;
  if (v423)
  {
    v458 = STACK[0x450];
  }

  else
  {
    v458 = v1505;
  }

  v1495 = v458;
  v459 = STACK[0x478];
  if (v423)
  {
    v460 = v1507;
  }

  else
  {
    v460 = STACK[0x478];
  }

  if (v423)
  {
    v461 = STACK[0x478];
  }

  else
  {
    v461 = v1507;
  }

  v1493 = v460;
  v1494 = v461;
  v462 = STACK[0x5B4];
  if (v423)
  {
    v463 = v407;
  }

  else
  {
    v463 = STACK[0x5B4];
  }

  LODWORD(STACK[0x478]) = v463;
  if (v423)
  {
    v464 = v462;
  }

  else
  {
    v464 = v407;
  }

  LODWORD(STACK[0x450]) = v464;
  v465 = STACK[0x5B8];
  v466 = STACK[0x440];
  if (v423)
  {
    v467 = STACK[0x440];
  }

  else
  {
    v467 = STACK[0x5B8];
  }

  LODWORD(STACK[0x5A8]) = v467;
  if (v423)
  {
    v468 = v465;
  }

  else
  {
    v468 = v466;
  }

  LODWORD(STACK[0x440]) = v468;
  if (v423)
  {
    v469 = v1509;
  }

  else
  {
    v469 = v1511;
  }

  if (v423)
  {
    v470 = v1511;
  }

  else
  {
    v470 = v1509;
  }

  v1498 = v470;
  if (v423)
  {
    v471 = v1525;
  }

  else
  {
    v471 = v1517;
  }

  v1499 = v471;
  if (v423)
  {
    v472 = v1517;
  }

  else
  {
    v472 = v1525;
  }

  v1496 = v469;
  v1497 = v472;
  v473 = STACK[0x448];
  if (v423)
  {
    v474 = v1503;
  }

  else
  {
    v474 = STACK[0x448];
  }

  LODWORD(STACK[0x43C]) = v474;
  if (v423)
  {
    v475 = v473;
  }

  else
  {
    v475 = v1503;
  }

  LODWORD(STACK[0x5B8]) = v475;
  if (v423)
  {
    v476 = v1514;
  }

  else
  {
    v476 = v1520;
  }

  if (v423)
  {
    v477 = v1520;
  }

  else
  {
    v477 = v1514;
  }

  v1502 = v477;
  v478 = STACK[0x458];
  v479 = STACK[0x338];
  if (v423)
  {
    v480 = STACK[0x338];
  }

  else
  {
    v480 = STACK[0x458];
  }

  v1504 = v480;
  if (v423)
  {
    v481 = STACK[0x458];
  }

  else
  {
    v481 = STACK[0x338];
  }

  v1500 = v476;
  v1501 = v481;
  if (v423)
  {
    v482 = v422;
  }

  else
  {
    v482 = v421;
  }

  LODWORD(STACK[0x5B4]) = v482;
  if (v423)
  {
    v483 = v421;
  }

  else
  {
    v483 = v422;
  }

  LODWORD(STACK[0x458]) = v483;
  if (v423)
  {
    v484 = v1461;
  }

  else
  {
    v484 = v1462;
  }

  LODWORD(STACK[0x448]) = v484;
  if (v423)
  {
    v485 = v1462;
  }

  else
  {
    v485 = v1461;
  }

  LODWORD(STACK[0x338]) = v485;
  if (v423)
  {
    v486 = v1531;
  }

  else
  {
    v486 = v1528;
  }

  if (v423)
  {
    v487 = v1528;
  }

  else
  {
    v487 = v1531;
  }

  v1510 = v487;
  v488 = STACK[0x618];
  v489 = STACK[0x348];
  if (v423)
  {
    v490 = STACK[0x618];
  }

  else
  {
    v490 = STACK[0x348];
  }

  v1506 = v486;
  v1508 = v490;
  if (v423)
  {
    v491 = STACK[0x348];
  }

  else
  {
    v491 = STACK[0x618];
  }

  if (v423)
  {
    v492 = v1464;
  }

  else
  {
    v492 = v1466;
  }

  LODWORD(STACK[0x618]) = v492;
  if (v423)
  {
    v493 = v1466;
  }

  else
  {
    v493 = v1464;
  }

  v1518 = v493;
  if (v423)
  {
    v494 = v1488;
  }

  else
  {
    v494 = v1468;
  }

  LODWORD(STACK[0x348]) = v494;
  if (v423)
  {
    v495 = v1468;
  }

  else
  {
    v495 = v1488;
  }

  v1512 = v491;
  v1515 = v495;
  if (v423)
  {
    v496 = v1463;
  }

  else
  {
    v496 = v1465;
  }

  if (v423)
  {
    v497 = v1465;
  }

  else
  {
    v497 = v1463;
  }

  v1526 = v497;
  v1529 = v496;
  if (v423)
  {
    v498 = v1490;
  }

  else
  {
    v498 = v1467;
  }

  v1521 = v498;
  if (v423)
  {
    v499 = v1467;
  }

  else
  {
    v499 = v1490;
  }

  v1532 = v499;
  v500 = STACK[0x350];
  v501 = STACK[0x354];
  if (v423)
  {
    v502 = STACK[0x350];
  }

  else
  {
    v502 = STACK[0x354];
  }

  if (v423)
  {
    v500 = STACK[0x354];
  }

  v1489 = v500;
  v1491 = v502;
  v503 = STACK[0x710];
  v504 = STACK[0x308];
  v505 = v1469;
  if (STACK[0x710])
  {
    v506 = v1469;
  }

  else
  {
    v506 = STACK[0x308];
  }

  v507 = STACK[0x31C];
  if ((STACK[0x710] & 1) == 0)
  {
    v504 = STACK[0x31C];
  }

  v508 = STACK[0x310];
  if (STACK[0x710])
  {
    v505 = STACK[0x310];
    v509 = STACK[0x31C];
  }

  else
  {
    v509 = STACK[0x310];
  }

  v510 = STACK[0x6A0];
  v511 = STACK[0x6A0] & 0xE0CED80 ^ 0x70676C0;
  v512 = STACK[0x6B0];
  v513 = STACK[0x6E8];
  v514 = (STACK[0x6A0] & 0x600C080 ^ 0x60242C0 ^ (LODWORD(STACK[0x6B8]) ^ 0x90C3D00) & v511) << LODWORD(STACK[0x6F0]);
  if ((v503 & 2) != 0)
  {
    v516 = v504;
  }

  else
  {
    v516 = v505;
  }

  v517 = STACK[0x324];
  v518 = LODWORD(STACK[0x324]) ^ v1472;
  v515 = (((STACK[0x6A0] & 0x2000000 ^ 0x3001240 ^ (v512 ^ 0x3001240) & v511) >> LODWORD(STACK[0x6E8])) | v514) ^ v356;
  v519 = v518 ^ v1471 ^ ((v516 ^ v515) - ((2 * (v516 ^ v515)) & 0x4BAA2580) - 1512762688);
  LODWORD(STACK[0x310]) = v519;
  STACK[0x750] = v313 + 4 * BYTE1(v519);
  v520 = STACK[0x650];
  v521 = STACK[0x650] & 0xE0CED80 ^ 0x70676C0;
  v522 = STACK[0x6D0];
  v523 = (STACK[0x650] & 0x40CED80 ^ 0x4066480 ^ v521 & (LODWORD(STACK[0x6C0]) ^ 0xB001240)) << LODWORD(STACK[0x6D0]);
  if ((v503 & 2) != 0)
  {
    v525 = v509;
  }

  else
  {
    v525 = v506;
  }

  v524 = v518 ^ (((STACK[0x650] & 0xC088980 ^ 0x50012C0 ^ (v512 ^ 0xD089BC0) & v521) >> v513) + v523) ^ v425;
  v526 = (v524 ^ v525) - ((2 * (v524 ^ v525)) & 0x4BAA2580);
  v527 = *(v313 + 4 * BYTE1(v519));
  v528 = (v526 - 1512762688) ^ v1471;
  v529 = ((v526 - 64) ^ v1471);
  STACK[0x750] = v313 + 4 * v529;
  LODWORD(STACK[0x31C]) = *(v313 + 4 * v529);
  STACK[0x750] = v313 + 4 * BYTE2(v528);
  if ((v503 & 2) == 0)
  {
    v506 = v509;
  }

  v530 = STACK[0x6A8];
  v531 = STACK[0x6E0];
  v532 = v518 ^ v1471 ^ v514 ^ v357 ^ ((v506 ^ ((v530 & v511) >> v531)) - ((2 * (v506 ^ ((v530 & v511) >> v531))) & 0x4BAA2580) - 1512762688);
  v533 = *(v313 + 4 * BYTE2(v528));
  STACK[0x750] = v313 + 4 * BYTE2(v532);
  if ((v503 & 2) != 0)
  {
    v504 = v505;
  }

  v534 = v523 ^ ((v521 & v530) >> v531) ^ v1472 ^ LODWORD(STACK[0x434]) ^ v504;
  v535 = v1471 ^ v517 ^ (v534 - ((2 * v534) & 0x4BAA2580) - 1512762688);
  v536 = *(v313 + 4 * BYTE2(v532));
  STACK[0x750] = v313 + 4 * ((v1471 ^ v517 ^ (v534 - ((2 * v534) & 0x2580) + 4800)) >> 8);
  v537 = LODWORD(STACK[0x600]) ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x678]) ^ LODWORD(STACK[0x468]) ^ LODWORD(STACK[0x608]) ^ LODWORD(STACK[0x5E8]) ^ LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x5EC]) ^ LODWORD(STACK[0x5E0]) ^ LODWORD(STACK[0x3B4]) ^ LODWORD(STACK[0x3E4]) ^ LODWORD(STACK[0x3B8]) ^ LODWORD(STACK[0x3F0]) ^ v1487 ^ LODWORD(STACK[0x3B0]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x39C]) ^ LODWORD(STACK[0x384]);
  v538 = *(v313 + 4 * ((v1471 ^ v517 ^ (v534 - ((2 * v534) & 0x2580) + 4800)) >> 8));
  LODWORD(STACK[0x658]) = v537 ^ (2 * ((v537 ^ 0x5EF3FFB2) & STACK[0x6F8]));
  STACK[0x750] = v313 + 4 * HIBYTE(v528);
  v539 = *(v313 + 4 * HIBYTE(v528));
  STACK[0x750] = v313 + 4 * (v1471 ^ v517 ^ (v534 - ((2 * v534) & 0x80) - 64));
  v540 = *(v313 + 4 * (v1471 ^ v517 ^ (v534 - ((2 * v534) & 0x80) - 64)));
  STACK[0x750] = v313 + 4 * BYTE1(v532);
  v541 = LODWORD(STACK[0x620]) ^ LODWORD(STACK[0x460]) ^ 0x437FB6CD ^ v1535;
  v542 = LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x610]) ^ LODWORD(STACK[0x62C]) ^ LODWORD(STACK[0x5F0]) ^ LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x5C8]) ^ LODWORD(STACK[0x660]) ^ LODWORD(STACK[0x3CC]) ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3A0]) ^ LODWORD(STACK[0x3C8]) ^ LODWORD(STACK[0x3AC]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x654]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x3C0]) ^ LODWORD(STACK[0x3DC]) ^ v1483 ^ v1485 ^ ((v541 & 0xCD6157AD ^ 0xA4F92691) & (v541 & 0x329EA852 ^ 0xDDE557FD) | v541 & 0x12068842);
  v543 = *(v313 + 4 * BYTE1(v532));
  LODWORD(STACK[0x670]) = v542 ^ (2 * ((v542 ^ 0x74DC0DE9) & STACK[0x6D8]));
  STACK[0x750] = v313 + 4 * HIBYTE(v532);
  v544 = STACK[0x6B8];
  v545 = v510 & 0x83C1EC08 ^ 0x41E0F604;
  v546 = v510;
  v547 = v510 & 0x6408 ^ 0x207400 ^ (v512 ^ 0x207408) & v545;
  v548 = v522;
  v549 = *(v313 + 4 * HIBYTE(v532));
  v550 = ((v547 >> v531) + ((v510 & 0x81C0C008 ^ 0x41C0C204 ^ (LODWORD(STACK[0x6B8]) ^ 0x2213C00) & v545) << v522)) ^ (v527 >> 8) ^ (v527 << 24);
  STACK[0x750] = v313 + 4 * BYTE1(v528);
  v551 = *(v313 + 4 * BYTE1(v528));
  v552 = STACK[0x310];
  v553 = LODWORD(STACK[0x310]);
  STACK[0x750] = v313 + 4 * LODWORD(STACK[0x310]);
  v554 = *(v313 + 4 * v553);
  STACK[0x750] = v313 + 4 * v532;
  v555 = __ROR4__(*(v313 + 4 * v532), 16);
  STACK[0x750] = v313 + 4 * HIBYTE(v552);
  v556 = *(v313 + 4 * HIBYTE(v552));
  v557 = BYTE2(v535);
  STACK[0x750] = v313 + 4 * BYTE2(v535);
  v535 >>= 24;
  v558 = *(v313 + 4 * v557);
  STACK[0x750] = v313 + 4 * v535;
  v559 = STACK[0x710];
  v560 = v550 ^ v533 ^ v555 ^ STACK[0x710] ^ __ROR4__(*(v313 + 4 * v535), 24);
  v561 = v520 & 0x83C1EC08 ^ 0x41E0F604;
  v562 = STACK[0x6C0];
  v563 = STACK[0x6F0];
  v564 = v530;
  v565 = v561 & v530;
  v566 = STACK[0x6E8];
  v567 = ((v565 >> v566) | ((v520 & 0x101A400 ^ 0x120B600 ^ v561 & (LODWORD(STACK[0x6C0]) ^ 0xC2C0480C)) << v563)) ^ HIBYTE(v549) ^ (v549 << 8) ^ __ROR4__(v551, 8) ^ __ROR4__(v554, 16);
  v568 = ((v547 >> v566) + ((v546 & 0x8001C000 ^ 0x4000D204 ^ (LODWORD(STACK[0x6C0]) ^ 0x3E02C08) & v545) << v563)) ^ (v539 << 8) ^ HIBYTE(v539) ^ __ROR4__(v540, 16) ^ __ROR4__(v543, 8);
  v569 = v520 & 0x3014C00 ^ 0x1004400 ^ (v544 ^ 0xC0E0B20C) & v561;
  LOBYTE(v544) = v548;
  LOBYTE(v546) = v531;
  v570 = ((v569 << v548) + (v565 >> v531)) ^ __ROR4__(STACK[0x31C], 16) ^ v536 ^ __ROR4__(v538, 8) ^ __ROR4__(v556, 24);
  v571 = BYTE2(v552);
  STACK[0x750] = v313 + 4 * v571;
  v572 = ((v562 & 0x40725B51 | STACK[0x698] & (v1476 ^ 0x40725B51)) ^ 0x40725B51) << v548;
  v573 = (((v564 & v1476) >> v566) - ((2 * ((v564 & v1476) >> v566)) & 0xBCE1F5E4) - 563021070) ^ (v572 - 1334662816 + (~(2 * v572) | 0x9F1AAD41));
  v574 = STACK[0x698];
  v575 = v562;
  v576 = (((v1477 ^ 0xFBDD7F9F) & STACK[0x698] | v562 & 0xFBDD7F9F) ^ 0xFBDD7F9F) << v544;
  v577 = (((STACK[0x708] & v1477) >> v566) - ((2 * ((STACK[0x708] & v1477) >> v566)) & 0xB99B70F0) + 1556985976) ^ (v576 - ((2 * v576) & 0xF4353702) - 98919551);
  v578 = LODWORD(STACK[0x2E4]) + LODWORD(STACK[0x630]);
  LODWORD(STACK[0x678]) = v578;
  v579 = v578 ^ v573 ^ LODWORD(STACK[0x340]) ^ (((v560 - ((2 * v560) & 0x4DAE47F2) - 1495849991) ^ v577) + 1845646253 + (~(2 * ((v560 - ((2 * v560) & 0x4DAE47F2) - 1495849991) ^ v577)) | 0x23FB58A5) + 1);
  v580 = *(v313 + 4 * v571);
  STACK[0x750] = v313 + 4 * BYTE2(v579);
  v581 = v313 + LODWORD(STACK[0x480]) + v1470 - (v1470 >> 8);
  LODWORD(STACK[0x680]) = v581;
  v582 = v567 ^ v581 ^ v558 ^ v559 ^ LODWORD(STACK[0x414]);
  v583 = (v582 - ((2 * v582) & 0x4DAE47F2) - 1495849991) ^ v577;
  v584 = *(v313 + 4 * BYTE2(v579));
  STACK[0x750] = v313;
  LODWORD(STACK[0x660]) = *(v313 + 4 * v579);
  v585 = (v583 - ((2 * v583) & 0xDC04A75A) + 1845646253) ^ v573;
  STACK[0x750] = v313 + 4 * ((v583 - ((2 * v583) & 0x5A) - 83) ^ v573);
  v586 = (v570 - ((2 * v570) & 0xDC04A75A) + 1845646253) ^ v573 ^ LODWORD(STACK[0x430]);
  v587 = *(v313 + 4 * ((v583 - ((2 * v583) & 0x5A) - 83) ^ v573));
  v588 = (v586 - ((2 * v586) & 0x4DAE47F2) - 1495849991) ^ v577;
  STACK[0x750] = v313 + 4 * BYTE2(v588);
  LODWORD(STACK[0x654]) = *(v313 + 4 * BYTE2(v588));
  STACK[0x750] = v313 + 4 * BYTE1(v585);
  v589 = ((v568 ^ v580) - ((2 * (v568 ^ v580)) & 0xDC04A75A) + 1845646253) ^ v573 ^ LODWORD(STACK[0x438]);
  v590 = (v589 - ((2 * v589) & 0x4DAE47F2) - 1495849991) ^ v577;
  LODWORD(STACK[0x630]) = *(v313 + 4 * BYTE1(v585));
  STACK[0x750] = v313 + 4 * (((v589 - ((2 * v589) & 0x47F2) + 9209) ^ v577) >> 8);
  v591 = *(v313 + 4 * (((v589 - ((2 * v589) & 0x47F2) + 9209) ^ v577) >> 8));
  STACK[0x750] = v313 + 4 * BYTE2(v590);
  v592 = v574;
  v593 = STACK[0x6B0];
  v594 = ((v1482 & 0x75DDC990 ^ 0x44850880 ^ (LODWORD(STACK[0x6B0]) ^ 0x75DDC981) & (v1482 ^ 0xC6A718E0)) >> v546) + ((((v1482 ^ 0x22B391A6) & v574 | v575 & 0xE4148946) ^ 0xE4148946) << v563);
  v595 = v520 & 0xD1FAF4D8 ^ 0x68FD7A6C;
  v596 = v564;
  v597 = ((v595 & v564) >> v566) ^ ((v520 & 0x10B220D0 ^ 0x20B52A44 ^ v595 & (v575 ^ 0xC948D428)) << v544) ^ v594 ^ LODWORD(STACK[0x420]) ^ v584;
  v598 = *(v313 + 4 * BYTE2(v590));
  v599 = v597 ^ __ROR4__(v591, 8);
  STACK[0x750] = v313 + 4 * HIBYTE(v588);
  v600 = *(v313 + 4 * HIBYTE(v588));
  STACK[0x750] = v313 + 4 * v590;
  v601 = *(v313 + 4 * v590);
  STACK[0x750] = v313 + 4 * BYTE1(v579);
  v602 = *(v313 + 4 * BYTE1(v579));
  STACK[0x750] = v313 + 4 * BYTE1(v588);
  v603 = *(v313 + 4 * BYTE1(v588));
  v604 = BYTE2(v585);
  STACK[0x750] = v313 + 4 * BYTE2(v585);
  v585 >>= 24;
  v605 = *(v313 + 4 * v604);
  STACK[0x750] = v313 + 4 * v585;
  v579 >>= 24;
  v606 = *(v313 + 4 * v585);
  STACK[0x750] = v313 + 4 * v579;
  v607 = *(v313 + 4 * v579);
  STACK[0x750] = v313 + 4 * v588;
  v608 = v599 ^ __ROR4__(v606, 24) ^ __ROR4__(*(v313 + 4 * v588), 16);
  v609 = STACK[0x6A0] & 0xD1FAF4D8 ^ 0x68FD7A6C;
  LODWORD(v559) = STACK[0x6A0];
  v610 = STACK[0x6B8];
  v611 = ((STACK[0x6A0] & 0xD0A2F058 ^ 0x48A17048 ^ (v593 ^ 0xD8A3F048) & v609) >> v546) ^ ((STACK[0x6A0] & 0xD04A4090 ^ 0x48484A04 ^ (LODWORD(STACK[0x6B8]) ^ 0x21B5B468) & v609) << v563) ^ __ROR4__(v600, 24) ^ __ROR4__(v601, 16) ^ __ROR4__(v602, 8);
  v612 = v596;
  v613 = (((v596 & v609) >> v566) | ((STACK[0x6A0] & 0xC1181058 ^ 0x60191A48 ^ (v575 ^ 0x18E6E4A4) & v609) << v544)) ^ __ROR4__(v587, 16) ^ v598 ^ __ROR4__(v603, 8) ^ __ROR4__(v607, 24);
  v614 = v593;
  LOBYTE(v587) = v546;
  v615 = (((v520 & 0x12A8090 ^ 0x202C0A20 ^ (v593 ^ 0x212E8AA0) & v595) >> v546) | ((v520 & 0x900AF000 ^ 0x20087204 ^ (LODWORD(STACK[0x6B8]) ^ 0x49F50CF8) & v595) << v563)) ^ __ROR4__(STACK[0x660], 16) ^ LODWORD(STACK[0x654]) ^ __ROR4__(STACK[0x630], 8);
  STACK[0x750] = v313 + 4 * HIBYTE(v590);
  v616 = __ROR4__(*(v313 + 4 * HIBYTE(v590)), 24);
  v617 = v592;
  v618 = ((v575 & 0x85AA5A4E | v592 & (v1484 ^ 0x25C73D0)) ^ 0x85AA5A4E) << v563;
  v619 = (((v612 & (v1484 ^ 0x87F6299E)) >> v566) - ((2 * ((v612 & (v1484 ^ 0x87F6299E)) >> v566)) & 0xADC5259A) - 689794355) ^ (v618 - ((2 * v618) & 0xF5E85EAE) + 2062823255);
  v620 = v594 ^ v619;
  v621 = v594 ^ v619 ^ LODWORD(STACK[0x418]) ^ ((v615 ^ v616) - ((2 * (v615 ^ v616)) & 0x582D7B34) - 1407795814);
  STACK[0x750] = v313 + 4 * HIBYTE(v621);
  v622 = *(v313 + 4 * HIBYTE(v621));
  STACK[0x750] = v313 + 4 * BYTE2(v621);
  v623 = *(v313 + 4 * BYTE2(v621));
  STACK[0x750] = v313;
  v624 = *(v313 + 4 * v621);
  v625 = (v608 - ((2 * v608) & 0x582D7B34) - 1407795814) ^ v619;
  STACK[0x750] = v313 + 4 * BYTE1(v625);
  v626 = v620 ^ LODWORD(STACK[0x388]) ^ ((v611 ^ v605) - ((2 * (v611 ^ v605)) & 0x582D7B34) - 1407795814);
  v627 = *(v313 + 4 * BYTE1(v625));
  STACK[0x750] = v313 + 4 * BYTE1(v626);
  v628 = v623 ^ __ROR4__(*(v313 + 4 * BYTE1(v626)), 8);
  STACK[0x750] = v313 + 4 * BYTE2(v625);
  v629 = *(v313 + 4 * BYTE2(v625)) ^ __ROR4__(v624, 16);
  STACK[0x750] = v313 + 4 * BYTE2(v626);
  v630 = v613 - ((2 * v613) & 0x582D7B34);
  v631 = *(v313 + 4 * BYTE2(v626));
  v632 = v620 ^ LODWORD(STACK[0x42C]) ^ (v630 - 1407795814);
  STACK[0x750] = v313 + 4 * v632;
  v633 = *(v313 + 4 * v632);
  STACK[0x750] = v313 + 4 * v625;
  v634 = v628 ^ __ROR4__(*(v313 + 4 * v625), 16);
  v635 = BYTE1(v621);
  STACK[0x750] = v313 + 4 * v635;
  v636 = *(v313 + 4 * v635);
  STACK[0x750] = v313 + 4 * v626;
  v637 = *(v313 + 4 * v626);
  STACK[0x750] = v313 + 4 * HIBYTE(v632);
  LODWORD(STACK[0x630]) = v634 ^ __ROR4__(*(v313 + 4 * HIBYTE(v632)), 24);
  STACK[0x750] = v313 + 4 * HIBYTE(v626);
  v638 = v629 ^ __ROR4__(*(v313 + 4 * HIBYTE(v626)), 24);
  v639 = LODWORD(STACK[0x688]) ^ __ROR4__(v622, 24) ^ __ROR4__(v627, 8);
  STACK[0x750] = v313 + 4 * BYTE2(v632);
  v640 = *(v313 + 4 * BYTE2(v632));
  LODWORD(STACK[0x608]) = v639 ^ v631 ^ __ROR4__(v633, 16);
  STACK[0x750] = v313 + 4 * BYTE1(v632);
  v641 = v638 ^ __ROR4__(*(v313 + 4 * BYTE1(v632)), 8);
  v642 = v520 & 0x16D6E2D4 ^ 0xB6B716A;
  v643 = v520 & 0x40C014 ^ 0x1404028 ^ (v614 ^ 0x140C02C) & v642;
  v625 >>= 24;
  STACK[0x750] = v313 + 4 * v625;
  LODWORD(STACK[0x62C]) = (v643 >> v566) ^ ((v520 & 0x14544210 ^ 0x1604122 ^ (v610 ^ 0xA8BB0CC) & v642) << v544) ^ __ROR4__(v636, 8) ^ __ROR4__(v637, 16) ^ v640 ^ __ROR4__(*(v313 + 4 * v625), 24);
  v644 = (v520 & 0x96A054 ^ 0x923214A ^ v642 & (v575 ^ 0x164852A0)) << v544;
  LODWORD(STACK[0x5E8]) = ((v643 >> v587) ^ v644) + 2 * ((v643 >> v587) & v644);
  v645 = v612;
  v646 = (v612 & v1486) >> v566;
  LOBYTE(v612) = v566;
  v647 = v617;
  v648 = v575;
  v649 = ((v575 & 0xE3BE5331 | v617 & (v1486 ^ 0xE3BE5331)) ^ 0xE3BE5331) << v544;
  v650 = (v646 - ((2 * v646) & 0x284058C) + 21103302) & 0xF47B76DA ^ 0xF8B4EFFF ^ ((v646 - ((2 * v646) & 0x284058C) + 21103302) ^ 0xFEBDFD39) & ((v649 - ((2 * v649) & 0x395AB904) + 481123458) ^ 0x1729D5A7);
  v651 = v559 & 0x16D6E2D4 ^ 0xB6B716A;
  v652 = v619;
  v653 = (((v641 + LODWORD(STACK[0x634])) ^ LODWORD(STACK[0x360])) - ((2 * ((v641 + LODWORD(STACK[0x634])) ^ LODWORD(STACK[0x360]))) & 0x582D7B34) - 1407795814) ^ v619;
  LODWORD(STACK[0x5EC]) = v651;
  LOBYTE(v649) = STACK[0x6F0];
  LODWORD(STACK[0x5F0]) = v645 & v651;
  v654 = v645;
  LODWORD(STACK[0x600]) = v650 ^ ((v645 & v651) >> v612) ^ ((v559 & 0x16C06280 ^ 0xA697102 ^ (v610 ^ 0x116807C) & v651) << v649) ^ (v653 - ((2 * v653) & 0xE6E4C830) - 210607080);
  v655 = (v650 ^ ((v645 & v651) >> v612) ^ ((v559 & 0x80 ^ 2 ^ (v610 ^ 0x7Cu) & v651) << v649) ^ (v653 - ((2 * v653) & 0x30) + 24));
  STACK[0x750] = v313 + 4 * v655;
  LODWORD(v559) = STACK[0x2F0];
  v656 = STACK[0x554];
  v657 = STACK[0x2E8];
  v658 = STACK[0x2F8];
  v659 = STACK[0x2FC];
  v660 = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x574]) ^ LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x570]) ^ v1475 ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x2F0]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x2E8]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x508]) ^ v1473 ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x520]) ^ v1474 ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x2F8]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x2FC]) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x4F0]) ^ 0xBDAD917A;
  LODWORD(STACK[0x654]) = v660;
  v661 = v647;
  v662 = (((LODWORD(STACK[0x658]) ^ 0x8818DF05) & v647 | v648 & 0x56EB20B7) ^ 0x56EB20B7) << v649;
  LOBYTE(v647) = v649;
  v663 = (v662 - ((2 * v662) & 0x8BC745BC) + 1172546270) ^ ((((LODWORD(STACK[0x658]) ^ 0xDEF3FFB2) & v645) >> v612) - 1911615751 + (~(2 * (((LODWORD(STACK[0x658]) ^ 0xDEF3FFB2) & v645) >> v612)) | 0xE3E1E20F));
  LODWORD(STACK[0x660]) = v663;
  v664 = STACK[0x708];
  LOBYTE(v645) = v587;
  v665 = (v614 & 0x457C3A96 ^ (LODWORD(STACK[0x670]) ^ 0x31A0377F) & STACK[0x708] ^ 0x10u) >> v587;
  v666 = STACK[0x700];
  v667 = (((LODWORD(STACK[0x670]) ^ 0x82635196) & STACK[0x700] | v610 & 0xF6BF5C7F) ^ 0xF6BF5C7F) << v544;
  v668 = (v667 - ((2 * v667) & 0x6C1C4F56) - 1240586325) ^ (v665 - ((2 * v665) & 0x116D7A8A) + 146193733);
  LODWORD(STACK[0x658]) = v668;
  v669 = LODWORD(STACK[0x2D0]) + LODWORD(STACK[0x2C8]);
  LODWORD(STACK[0x610]) = v669;
  v670 = (((LODWORD(STACK[0x630]) + v669) ^ LODWORD(STACK[0x5E8])) - ((2 * ((LODWORD(STACK[0x630]) + v669) ^ LODWORD(STACK[0x5E8]))) & 0x97D9584C) - 873681882) ^ v663;
  v671 = (v670 - ((2 * v670) & 0x7D7135DC) - 1095197970) ^ v668;
  v672 = LODWORD(STACK[0x368]) ^ v660 ^ (v671 - ((2 * v671) & 0x69EAB3A8) - 1258989100);
  v673 = v650;
  LODWORD(STACK[0x470]) = v650;
  v674 = (v672 - ((2 * v672) & 0xE6E4C830) - 210607080) ^ v650;
  LODWORD(STACK[0x5E8]) = *(v313 + 4 * v655);
  v675 = v652;
  v676 = (v674 - ((2 * v674) & 0x582D7B34) - 1407795814) ^ v652;
  STACK[0x750] = v313 + 4 * BYTE1(v676);
  LODWORD(STACK[0x480]) = *(v313 + 4 * BYTE1(v676));
  STACK[0x750] = v313 + 4 * BYTE2(v676);
  LODWORD(STACK[0x5C8]) = *(v313 + 4 * BYTE2(v676));
  v677 = ((v674 - ((2 * v674) & 0x34) - 102) ^ v652);
  STACK[0x750] = v313 + 4 * v677;
  v678 = LODWORD(STACK[0x62C]) - ((2 * LODWORD(STACK[0x62C])) & 0x582D7B34) - 1407795814;
  v679 = LODWORD(STACK[0x370]) ^ v652;
  LODWORD(STACK[0x620]) = v652;
  LODWORD(STACK[0x5E0]) = *(v313 + 4 * v677);
  v680 = ((v679 ^ v678) - ((2 * (v679 ^ v678)) & 0xE6E4C830) - 210607080) ^ v673;
  STACK[0x750] = v313 + 4 * HIBYTE(v680);
  v681 = v661;
  v682 = v664;
  v683 = ((v664 & v1536) >> v645) + ((v661 & v1536) << v544);
  LODWORD(STACK[0x670]) = v683;
  v684 = v657 ^ LODWORD(STACK[0x334]) ^ LODWORD(STACK[0x328]) ^ v658;
  v685 = STACK[0x6A0];
  LODWORD(STACK[0x62C]) = STACK[0x6A0] & 0xFCB12CE4;
  v686 = LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x4D8]) ^ LODWORD(STACK[0x4E8]) ^ v559 ^ v659 ^ v656;
  LOBYTE(v661) = v645;
  v687 = ((v1479 & v682) >> v645) | ((v1479 & v666) << v647);
  LOBYTE(v659) = v647;
  LOBYTE(v559) = v612;
  v688 = LODWORD(STACK[0x690]) ^ ((v1480 & v681) << v647) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x300]) ^ ((v1481 & v681) << v544) ^ ((v1481 & v654) >> v612) ^ ((v682 & v1480) >> v612) ^ LODWORD(STACK[0x574]);
  v689 = ((v610 & 0xE0924A80 | v666 & (v685 & 0xFCB12CE4 ^ 0x9ECADCF2)) ^ 0xE0924A80) << v544;
  LODWORD(STACK[0x630]) = v689;
  v690 = v688 ^ (v689 + ((v654 & (v685 & 0xFCB12CE4 ^ 0x7E589672)) >> v661)) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x500]) ^ LODWORD(STACK[0x580]) ^ v1475 ^ 0x78263B55 ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x51C]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x33C]) ^ LODWORD(STACK[0x504]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x558]) ^ LODWORD(STACK[0x578]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x518]) ^ v687 ^ (((v1478 & v666) << v647) + ((v1478 & v654) >> v612)) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x510]) ^ ((v684 & 0xEDD77863 ^ 0x138C368E) & (v684 & 0x1228879C ^ 0xFDD7FF7F) | v684 & 0x208110) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x538]) ^ (v686 - ((2 * v686) & 0xBBA869EC) + 1574188278) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x4F0]) ^ 0xD6FA200C;
  LODWORD(STACK[0x648]) = v690;
  v691 = *(v313 + 4 * HIBYTE(v680));
  v692 = (LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x3F4]) ^ (LODWORD(STACK[0x608]) - ((2 * LODWORD(STACK[0x608])) & 0x7614EE86) + 990541635)) + 1300553775 * (LODWORD(STACK[0x688]) - (v690 ^ v683));
  STACK[0x750] = v313 + 4 * BYTE2(v680);
  v693 = *(v313 + 4 * BYTE2(v680));
  STACK[0x750] = v313 + 4 * HIBYTE(v676);
  v694 = *(v313 + 4 * HIBYTE(v676));
  STACK[0x750] = v313 + 4 * BYTE1(v680);
  v695 = STACK[0x6C0];
  v696 = ((v685 & 0xC20244 ^ 0x8430042 ^ (LODWORD(STACK[0x6C0]) ^ 0x173CF1B8) & STACK[0x5EC]) << v659) ^ (LODWORD(STACK[0x5F0]) >> v661) ^ v692;
  v697 = (v696 - ((2 * v696) & 0xE6E4C830) - 210607080) ^ LODWORD(STACK[0x470]);
  v698 = *(v313 + 4 * BYTE1(v680));
  v699 = LODWORD(STACK[0x400]) ^ v675 ^ (v697 - ((2 * v697) & 0x582D7B34) - 1407795814);
  STACK[0x750] = v313 + 4 * BYTE1(v699);
  v700 = *(v313 + 4 * BYTE1(v699));
  STACK[0x750] = v313 + 4 * v680;
  v701 = *(v313 + 4 * v680);
  STACK[0x750] = v313 + 4 * v699;
  v702 = *(v313 + 4 * v699);
  STACK[0x750] = v313 + 4 * BYTE2(v699);
  v703 = *(v313 + 4 * BYTE2(v699));
  v704 = STACK[0x6D8];
  v705 = LODWORD(STACK[0x4C4]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x4A8])));
  v706 = STACK[0x600];
  v707 = BYTE2(LODWORD(STACK[0x600]));
  STACK[0x750] = v313 + 4 * BYTE2(LODWORD(STACK[0x600]));
  v708 = *(v313 + 4 * v707);
  v699 >>= 24;
  STACK[0x750] = v313 + 4 * v699;
  v709 = *(v313 + 4 * v699);
  v710 = LODWORD(STACK[0x490]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x490])));
  STACK[0x750] = v313 + 4 * BYTE1(v706);
  v711 = (*(v313 + 4 * BYTE1(v706)) >> (STACK[0x618] & 8) >> (STACK[0x618] & 8 ^ 8)) | (*(v313 + 4 * BYTE1(v706)) << 24);
  v712 = STACK[0x650];
  v713 = STACK[0x650] & 0x54C053EC ^ 0x2A6029F6;
  v714 = LODWORD(STACK[0x614]) ^ ((STACK[0x650] & 0x10400208 ^ 0x2400000 ^ v713 & (v695 ^ 0x6CA079F6)) << v659) ^ __ROR4__(STACK[0x480], 8) ^ v693 ^ __ROR4__(v702, 16);
  STACK[0x750] = v313 + 4 * HIBYTE(v706);
  v715 = v714 ^ __ROR4__(*(v313 + 4 * HIBYTE(v706)), 24);
  v716 = v685 & 0x54C053EC ^ 0x2A6029F6;
  v717 = (v654 & v716) >> v559;
  LODWORD(v559) = (((v685 & 0x1440038C ^ 0xA600186 ^ (LODWORD(STACK[0x6B8]) ^ 0x60807870) & v716) << v544) | v717) ^ __ROR4__(STACK[0x5E8], 16) ^ LODWORD(STACK[0x5C8]) ^ __ROR4__(v691, 24) ^ __ROR4__(v700, 8);
  v718 = v717 ^ ((v685 & 0x8003A0 ^ 0x82001A2 ^ (v695 ^ 0x7640785C) & v716) << v659) ^ LODWORD(STACK[0x3E0]) ^ __ROR4__(STACK[0x5E0], 16) ^ __ROR4__(v698, 8) ^ v708 ^ __ROR4__(v709, 24);
  v719 = LODWORD(STACK[0x358]) ^ ((v712 & 0x1E0 ^ 0x9F2 ^ (LODWORD(STACK[0x6B8]) ^ 0x7EE0720C) & v713) << v544) ^ __ROR4__(v694, 24) ^ __ROR4__(v701, 16);
  v720 = STACK[0x6B8];
  v721 = ((STACK[0x6B8] & 0xFDD98F0C | STACK[0x700] & (v705 ^ 0xC8D91900)) ^ 0xFDD98F0C) << v544;
  v722 = STACK[0x6B0];
  v723 = (v705 & 0x27B8A1CA ^ 0x25008008 ^ (LODWORD(STACK[0x6B0]) ^ 0x27B8A1DB) & (v705 ^ 0x3500960Cu)) >> v661;
  v724 = (v723 - ((2 * v723) & 0x2DFCD2F8) + 385771900) ^ (v721 - ((2 * v721) & 0x324CDA02) + 421948673);
  v725 = (v654 & v710) >> v661;
  LOBYTE(v654) = v661;
  v726 = STACK[0x700];
  v727 = ((STACK[0x6B8] & 0xEF257850 | STACK[0x700] & (v710 ^ 0xEF257850)) ^ 0xEF257850) << v659;
  v728 = (v725 - ((2 * v725) & 0xB36E1EA6) + 1505169235) & 0xCC48B874 ^ 0xDAE72B8D ^ ((v727 - ((2 * v727) & 0x6F1F0906) + 932152451) ^ 0x438C308) & ((v725 - ((2 * v725) & 0xB36E1EA6) + 1505169235) ^ 0xA648F0AC);
  v729 = LODWORD(STACK[0x3F8]) ^ v724 ^ (v559 - ((2 * v559) & 0x1FB008FA) + 265815165);
  LODWORD(v559) = (v729 - ((2 * v729) & 0x42A0C8AC) - 1588566954) ^ v728;
  STACK[0x750] = v313 + 4 * BYTE2(v559);
  v730 = ((v719 ^ v703 ^ v711) - ((2 * (v719 ^ v703 ^ v711)) & 0x42A0C8AC) - 1588566954) ^ v728;
  v731 = (v712 & 0x40000220 ^ 0x28202030 ^ (v722 ^ 0x68202220) & v713) >> v661;
  v732 = v724 ^ v731 ^ (v730 - ((2 * v730) & 0x1FB008FA) + 265815165);
  v733 = *(v313 + 4 * BYTE2(v559));
  STACK[0x750] = v313;
  v734 = *(v313 + 4 * HIBYTE(v732));
  STACK[0x750] = v313 + 4 * v559;
  v735 = *(v313 + 4 * v559);
  STACK[0x750] = v313 + 4 * BYTE1(v732);
  v736 = (v715 - ((2 * v715) & 0x1FB008FA) + 265815165) ^ v724;
  v737 = *(v313 + 4 * BYTE1(v732));
  v738 = v728 ^ v731 ^ (v736 - ((2 * v736) & 0x42A0C8AC) - 1588566954);
  STACK[0x750] = v313 + 4 * HIBYTE(v738);
  v739 = *(v313 + 4 * HIBYTE(v738));
  STACK[0x750] = v313 + 4 * BYTE3(v559);
  v740 = (v718 - ((2 * v718) & 0x1FB008FA) + 265815165) ^ v724;
  v741 = v740 - ((2 * v740) & 0x42A0C8AC);
  v742 = *(v313 + 4 * BYTE3(v559));
  v743 = (v741 - 1588566954) ^ v728;
  STACK[0x750] = v313 + 4 * HIBYTE(v743);
  v744 = *(v313 + 4 * HIBYTE(v743));
  STACK[0x750] = v313 + 4 * v743;
  v745 = *(v313 + 4 * v743);
  STACK[0x750] = v313 + 4 * BYTE2(v743);
  HIDWORD(v746) = v735;
  LODWORD(v746) = v735;
  v747 = *(v313 + 4 * BYTE2(v743));
  STACK[0x750] = v313 + 4 * v732;
  v748 = *(v313 + 4 * v732);
  STACK[0x750] = v313 + 4 * BYTE2(v732);
  v749 = *(v313 + 4 * BYTE2(v732));
  v750 = BYTE1(v743);
  STACK[0x750] = v313 + 4 * v750;
  v751 = *(v313 + 4 * v750);
  STACK[0x750] = v313 + 4 * BYTE1(v738);
  v752 = ((v746 >> 16) ^ __ROR4__(v734, 24) ^ v747 ^ __ROR4__(*(v313 + 4 * BYTE1(v738)), 8)) + 1797462039 * LODWORD(STACK[0x610]);
  v753 = LODWORD(STACK[0x4B0]) ^ (2 * (v704 & (LODWORD(STACK[0x4C0]) ^ 0x3DE546B9)));
  v754 = v733 ^ __ROR4__(v737, 8) ^ __ROR4__(v739, 24);
  LODWORD(v746) = __ROR4__(v745, 16);
  v755 = (v754 ^ v746) + LODWORD(STACK[0x634]) - 2 * ((v754 ^ v746) & LODWORD(STACK[0x634]));
  v756 = v712 & 0x90155C08 ^ 0x89266C02;
  v757 = v712;
  v758 = v712 & 0xD2DDDD0C ^ 0xE96EEE86;
  v759 = v756 ^ (v720 ^ 0x62C88384) & v758;
  v760 = STACK[0x6A8];
  v761 = STACK[0x6E8];
  STACK[0x750] = v313 + 4 * BYTE2(v738);
  v762 = *(v313 + 4 * BYTE2(v738));
  STACK[0x750] = v313 + 4 * v738;
  v763 = *(v313 + 4 * v738);
  STACK[0x750] = v313 + 4 * BYTE1(v559);
  LODWORD(v559) = ((v759 << v659) | ((v758 & v760) >> v761)) ^ __ROR4__(v744, 24) ^ __ROR4__(v748, 16) ^ v762 ^ __ROR4__(*(v313 + 4 * BYTE1(v559)), 8);
  v764 = v685 & 0xD2DDDD0C ^ 0xE96EEE86;
  v765 = v685 & 0xC0599D08 ^ 0xE14AAE80 ^ (LODWORD(STACK[0x6C0]) ^ 0x1AA44006) & v764;
  v766 = v760;
  v767 = v760 & v764;
  LOBYTE(v760) = v654;
  v768 = LODWORD(STACK[0x670]) ^ ((v765 << v659) | (v767 >> v654)) ^ __ROR4__(v742, 24) ^ v749 ^ __ROR4__(v751, 8);
  LODWORD(v746) = __ROR4__(v763, 16);
  v769 = v766;
  v770 = v761;
  v771 = (((v753 ^ 0xEFCCCE8D) & v766) >> v761) - ((2 * (((v753 ^ 0xEFCCCE8D) & v766) >> v761)) & 0x79F6A770) + 1023103928;
  v772 = (v720 & 0x59172946 | v726 & (v753 ^ 0xB6DBE7CB)) ^ 0x59172946;
  v773 = STACK[0x6D0];
  v774 = v771 & 0xE74B13B4 ^ 0xBE425323 ^ (((v772 << v773) - ((2 * (v772 << v773)) & 0x5F0EAA08) + 797398276) ^ 0x3733B94F) & (v771 ^ 0xC304AC47);
  v775 = ((v768 ^ v746) - ((2 * (v768 ^ v746)) & 0x69EAB3A8) - 1258989100) ^ LODWORD(STACK[0x654]);
  v776 = STACK[0x688];
  v777 = LODWORD(STACK[0x658]) ^ LODWORD(STACK[0x688]) ^ (v775 - ((2 * v775) & 0x7D7135DC) - 1095197970);
  v778 = LODWORD(STACK[0x648]) ^ LODWORD(STACK[0x660]) ^ (v777 - ((2 * v777) & 0x97D9584C) - 873681882);
  v779 = LODWORD(STACK[0x5FC]) ^ v774 ^ (v778 - ((2 * v778) & 0x57B59B0) - 2101498664);
  v780 = (v779 - ((2 * v779) & 0x42A0C8AC) - 1588566954) ^ v728;
  STACK[0x750] = v313 + 4 * BYTE2(v780);
  v781 = STACK[0x6B0];
  v782 = LODWORD(STACK[0x3F4]) ^ v776 ^ LODWORD(STACK[0x488]) ^ LODWORD(STACK[0x408]) ^ (v559 - ((2 * v559) & 0x7614EE86) + 990541635);
  v783 = (v782 - ((2 * v782) & 0x42A0C8AC) - 1588566954) ^ v728;
  v784 = v783 - ((2 * v783) & 0x57B59B0);
  v785 = (v685 & 0xD2819100 ^ 0xE820A202 ^ (LODWORD(STACK[0x6B0]) ^ 0xFAA1B302) & v764) >> v760;
  v786 = v760;
  v787 = ((v785 ^ (v765 << v773) ^ v752) - ((2 * (v785 ^ (v765 << v773) ^ v752)) & 0x57B59B0) - 2101498664) ^ v774;
  v788 = LODWORD(STACK[0x5D4]) ^ v728 ^ (v787 - ((2 * v787) & 0x42A0C8AC) - 1588566954);
  v789 = *(v313 + 4 * BYTE2(v780));
  STACK[0x750] = v313;
  v790 = *(v313 + 4 * BYTE2(v788));
  LODWORD(STACK[0x608]) = v774;
  v791 = (v784 - 2101498664) ^ v774;
  STACK[0x750] = v313 + 4 * HIBYTE(v791);
  v792 = (v755 - ((2 * v755) & 0x57B59B0) - 2101498664) ^ v774;
  v793 = v773;
  v794 = ((v757 & 0xD2985C04 ^ 0xC10A4E86 ^ (v781 ^ 0xD39A5E86) & v758) >> v770) ^ (v759 << v773) ^ v728 ^ (v792 - ((2 * v792) & 0x42A0C8AC) - 1588566954);
  v795 = STACK[0x320] & 0x4000000;
  if ((v794 & v795) != 0)
  {
    v795 = -v795;
  }

  v796 = *(v313 + 4 * HIBYTE(v791));
  v797 = (v795 + v794) ^ STACK[0x320] & 0xFBFFFFFF;
  STACK[0x750] = v313 + 4 * BYTE2(v797);
  v798 = *(v313 + 4 * BYTE2(v797));
  STACK[0x750] = v313 + 4 * HIBYTE(v788);
  v799 = *(v313 + 4 * HIBYTE(v788));
  v800 = LODWORD(STACK[0x4B8]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x4B8])));
  STACK[0x750] = v313 + 4 * BYTE1(v791);
  v801 = *(v313 + 4 * BYTE1(v791));
  v802 = v798 ^ __ROR4__(v796, 24);
  STACK[0x750] = v313 + 4 * HIBYTE(v797);
  v803 = *(v313 + 4 * HIBYTE(v797));
  v804 = v790 ^ __ROR4__(v801, 8);
  STACK[0x750] = v313 + 4 * BYTE1(v797);
  v805 = *(v313 + 4 * BYTE1(v797));
  v806 = v789 ^ __ROR4__(v803, 24);
  STACK[0x750] = v313 + 4 * v797;
  v807 = v804 ^ __ROR4__(*(v313 + 4 * v797), 16);
  STACK[0x750] = v313 + 4 * v788;
  v808 = v802 ^ __ROR4__(*(v313 + 4 * v788), 16);
  STACK[0x750] = v313 + 4 * HIBYTE(v780);
  v809 = v807 ^ __ROR4__(*(v313 + 4 * HIBYTE(v780)), 24);
  STACK[0x750] = v313 + 4 * BYTE2(v791);
  v810 = *(v313 + 4 * BYTE2(v791));
  STACK[0x750] = v313 + 4 * v780;
  v811 = *(v313 + 4 * v780);
  v812 = BYTE1(v788);
  STACK[0x750] = v313 + 4 * v812;
  v813 = v806 ^ __ROR4__(*(v313 + 4 * v812), 8);
  STACK[0x750] = v313 + 4 * v791;
  v814 = v813 ^ __ROR4__(*(v313 + 4 * v791), 16);
  LODWORD(STACK[0x660]) = v814;
  v815 = STACK[0x710];
  v816 = STACK[0x710] ^ LODWORD(STACK[0x680]) ^ __ROR4__(v799, 24) ^ __ROR4__(v805, 8) ^ v810 ^ __ROR4__(v811, 16);
  LODWORD(STACK[0x654]) = v816;
  v817 = BYTE1(v780);
  STACK[0x750] = v313 + 4 * v817;
  v818 = v808 ^ __ROR4__(*(v313 + 4 * v817), 8);
  LODWORD(STACK[0x658]) = v818;
  LOBYTE(v810) = v770;
  v819 = ((v769 & v800) >> v770) - ((2 * ((v769 & v800) >> v770)) & 0xCB52A2A2) + 1705595217;
  v820 = v720;
  v821 = STACK[0x6F0];
  v822 = ((v720 & 0x79AB2408 | v726 & (v800 ^ 0x79AB2408)) ^ 0x79AB2408) << v821;
  v823 = (v822 - ((2 * v822) & 0xB6F2190A) + 1534659717) ^ v819;
  v824 = LODWORD(STACK[0x640]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x640])));
  v825 = v781;
  v826 = v786;
  v827 = ((STACK[0x708] & (v824 ^ 0x29287286) ^ v781 & 0x29287286u) >> v786) + ((((v824 ^ 0x483CA59) & STACK[0x698] | STACK[0x6C0] & 0x483CA59) ^ 0x483CA59) << v793);
  v828 = v685 & 0xBA6F08DC ^ 0xDD37846E;
  v829 = STACK[0x6C0];
  v830 = (LODWORD(STACK[0x6C0]) ^ 0x417980A4) & v828;
  LODWORD(STACK[0x600]) = v828;
  v831 = v685 & 0xBA060858 ^ 0x9C06044A ^ v830;
  LODWORD(v815) = v809 - LODWORD(STACK[0x678]) + v815;
  LODWORD(STACK[0x648]) = v815;
  v832 = v823 ^ v827 ^ (v815 - ((2 * v815) & 0x7DA0BBA8) + 1053842900);
  LODWORD(STACK[0x5C8]) = v832;
  LODWORD(STACK[0x590]) = v823 ^ v827;
  v833 = v769;
  LODWORD(STACK[0x574]) = v769 & v828;
  v834 = (v769 & v828) >> v810;
  LODWORD(STACK[0x570]) = v831 << v821;
  v835 = LODWORD(STACK[0x5D8]) ^ (v834 + (v831 << v821)) ^ v832;
  STACK[0x750] = v313 + 4 * BYTE1(v835);
  v836 = v793;
  v837 = *(v313 + 4 * BYTE1(v835));
  LODWORD(STACK[0x5EC]) = v827;
  v838 = ((v827 ^ (v834 | (v831 << v793)) ^ LODWORD(STACK[0x5C4]) ^ v816) - ((2 * (v827 ^ (v834 | (v831 << v793)) ^ LODWORD(STACK[0x5C4]) ^ v816)) & 0x7DA0BBA8) + 1053842900) ^ v823;
  LODWORD(STACK[0x680]) = v823;
  STACK[0x750] = v313 + 4 * BYTE1(v838);
  LODWORD(v815) = v757 & 0xBA6F08DC ^ 0xDD37846E;
  LODWORD(STACK[0x610]) = v815;
  v839 = v757 & 0xA8490050 ^ 0x89110060 ^ (v781 ^ 0xA9590060) & v815;
  LODWORD(STACK[0x5E8]) = v839;
  v840 = v757 & 0x282F08C0 ^ 0x48270440 ^ (v720 ^ 0x9750803E) & v815;
  LODWORD(STACK[0x5E0]) = v840 << v793;
  v841 = v823 ^ v827 ^ LODWORD(STACK[0x5D0]) ^ ((v814 ^ ((v839 >> v826) + (v840 << v836))) - ((2 * (v814 ^ ((v839 >> v826) + (v840 << v836)))) & 0x7DA0BBA8) + 1053842900);
  LODWORD(STACK[0x56C]) = *(v313 + 4 * BYTE1(v838));
  STACK[0x750] = v313 + 4 * BYTE1(v841);
  LOBYTE(v824) = v821;
  v842 = v827 ^ ((v839 >> v826) + (v840 << v821)) ^ v818;
  v843 = *(v313 + 4 * BYTE1(v841));
  v844 = LODWORD(STACK[0x5CC]) ^ v823 ^ (v842 - ((2 * v842) & 0x7DA0BBA8) + 1053842900);
  STACK[0x750] = v313 + 4 * BYTE1(v844);
  v845 = *(v313 + 4 * BYTE1(v844));
  STACK[0x750] = v313 + 4 * BYTE2(v835);
  v846 = *(v313 + 4 * BYTE2(v835));
  STACK[0x750] = v313 + 4 * HIBYTE(v844);
  v847 = *(v313 + 4 * HIBYTE(v844));
  STACK[0x750] = v313 + 4 * BYTE2(v841);
  v848 = *(v313 + 4 * BYTE2(v841));
  STACK[0x750] = v313 + 4 * HIBYTE(v835);
  v849 = *(v313 + 4 * HIBYTE(v835));
  STACK[0x750] = v313 + 4 * v841;
  v850 = *(v313 + 4 * v841);
  v851 = STACK[0x324];
  v852 = LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x324]) ^ __ROR4__(v843, 8);
  STACK[0x750] = v313 + 4 * BYTE2(v844);
  v853 = *(v313 + 4 * BYTE2(v844));
  STACK[0x750] = v313 + 4 * HIBYTE(v838);
  v854 = v852 ^ v853 ^ __ROR4__(*(v313 + 4 * HIBYTE(v838)), 24);
  STACK[0x750] = v313 + 4 * v835;
  v855 = v854 ^ __ROR4__(*(v313 + 4 * v835), 16);
  v856 = v757 & 0x474D20C8 ^ 0xA3A69064;
  LODWORD(STACK[0x634]) = v856 & v833;
  STACK[0x750] = v313 + 4 * v838;
  v857 = ((v757 & 0x2012088 ^ 0x2A28020 ^ v856 & (v829 ^ 0xE54C1044)) << v824) ^ ((v856 & v833) >> v826) ^ __ROR4__(v837, 8) ^ __ROR4__(v847, 24) ^ v848 ^ __ROR4__(*(v313 + 4 * v838), 16);
  v858 = v757 & 0x400800C0 ^ 0x80A20064 ^ (v820 ^ 0x2745B008) & v856;
  LODWORD(STACK[0x5F0]) = v858;
  v859 = v757 & 0x47450008 ^ 0x83840024 ^ (v825 ^ 0xC7C5002C) & v856;
  LODWORD(STACK[0x580]) = v859;
  LODWORD(STACK[0x578]) = v858 << v836;
  LOBYTE(v856) = v826;
  v860 = (v859 >> v826) ^ (v858 << v836) ^ LODWORD(STACK[0x5A8]) ^ __ROR4__(v845, 8) ^ __ROR4__(v849, 24) ^ __ROR4__(v850, 16);
  v861 = STACK[0x6A0];
  v862 = STACK[0x6A0] & 0x474D20C8 ^ 0xA3A69064;
  LODWORD(v815) = STACK[0x6A0] & 0x1050088 ^ 0x21A48020 ^ (v829 ^ 0xC64A3044) & v862;
  LODWORD(STACK[0x548]) = v815;
  LODWORD(v815) = v815 << v824;
  LODWORD(STACK[0x588]) = v815;
  LODWORD(STACK[0x560]) = v833 & v862;
  v863 = v833;
  LOBYTE(v848) = STACK[0x6E8];
  v864 = LODWORD(STACK[0x478]) ^ (((v833 & v862) >> v848) | v815) ^ __ROR4__(STACK[0x56C], 8);
  STACK[0x750] = v313 + 4 * v844;
  v865 = v864 ^ v846 ^ __ROR4__(*(v313 + 4 * v844), 16);
  v841 >>= 24;
  STACK[0x750] = v313 + 4 * v841;
  v866 = __ROR4__(*(v313 + 4 * v841), 24);
  v867 = BYTE2(v838);
  STACK[0x750] = v313 + 4 * v867;
  v868 = (v865 ^ v866) - 2101498664 + (~(2 * (v865 ^ v866)) | 0xFA84A64F);
  v869 = *(v313 + 4 * v867);
  v870 = STACK[0x608];
  v871 = LODWORD(STACK[0x608]) ^ v851;
  v872 = v871 ^ (v868 + 1);
  STACK[0x750] = v313 + 4 * BYTE1(v872);
  v873 = v871 ^ LODWORD(STACK[0x440]);
  LODWORD(STACK[0x538]) = v871;
  v874 = v873 ^ (v857 - ((2 * v857) & 0x57B59B0) - 2101498664);
  LODWORD(STACK[0x558]) = *(v313 + 4 * BYTE1(v872));
  STACK[0x750] = v313 + 4 * BYTE1(v874);
  v875 = *(v313 + 4 * BYTE1(v874));
  v876 = v871 ^ ((v860 ^ v869) - ((2 * (v860 ^ v869)) & 0x57B59B0) - 2101498664);
  v877 = (v871 ^ ((v860 ^ v869) - ((2 * (v860 ^ v869)) & 0xB0) - 40));
  STACK[0x750] = v313 + 4 * v877;
  v878 = v861 & 0x5482008 ^ 0xA1221024 ^ (v825 ^ 0xA56A302C) & v862;
  LODWORD(STACK[0x504]) = v878;
  LODWORD(STACK[0x540]) = *(v313 + 4 * v877);
  v879 = (v878 >> v848) ^ ((v861 & 0x6490088 ^ 0x22029004 ^ (v820 ^ 0xC1A42060) & v862) << v836) ^ v870 ^ (v855 - ((2 * v855) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v313 + 4 * BYTE2(v879);
  v880 = *(v313 + 4 * BYTE2(v879));
  STACK[0x750] = v313 + 4 * BYTE2(v874);
  v881 = *(v313 + 4 * BYTE2(v874));
  v882 = LODWORD(STACK[0x2D8]) ^ (2 * (STACK[0x6F8] & LODWORD(STACK[0x638])));
  STACK[0x750] = v313 + 4 * BYTE1(v876);
  v883 = *(v313 + 4 * BYTE1(v876));
  STACK[0x750] = v313 + 4 * v872;
  v884 = *(v313 + 4 * v872);
  STACK[0x750] = v313 + 4 * BYTE2(v876);
  v885 = v757 & 0x4C998820 ^ 0xA64CC410;
  LODWORD(v815) = v757 & 0x44818800 ^ 0x86408010 ^ (v820 ^ 0x281C4420) & v885;
  LODWORD(STACK[0x608]) = v815;
  v886 = *(v313 + 4 * BYTE2(v876));
  STACK[0x750] = v313;
  v887 = *(v313 + 4 * HIBYTE(v874));
  v888 = v863;
  LODWORD(STACK[0x56C]) = v885;
  v889 = v815 << v836;
  v890 = v836;
  STACK[0x750] = v313 + 4 * HIBYTE(v872);
  v891 = *(v313 + 4 * HIBYTE(v872));
  STACK[0x750] = v313 + 4 * BYTE1(v879);
  v892 = *(v313 + 4 * BYTE1(v879));
  v893 = (v815 << v836) ^ ((v885 & v863) >> v856) ^ __ROR4__(v875, 8) ^ v880 ^ __ROR4__(v884, 16);
  STACK[0x750] = v313 + 4 * v874;
  v894 = *(v313 + 4 * v874);
  STACK[0x750] = v313 + 4 * BYTE2(v872);
  v895 = *(v313 + 4 * BYTE2(v872));
  v896 = v879;
  STACK[0x750] = v313 + 4 * v879;
  v879 >>= 24;
  v897 = *(v313 + 4 * v896);
  STACK[0x750] = v313 + 4 * v879;
  v876 >>= 24;
  v898 = *(v313 + 4 * v879);
  STACK[0x750] = v313 + 4 * v876;
  v899 = v893 ^ __ROR4__(*(v313 + 4 * v876), 24);
  LODWORD(v815) = v861 & 0x4C998820 ^ 0xA64CC410;
  v900 = STACK[0x6C0];
  v901 = v861 & 0x8080000 ^ 0x80480000 ^ (LODWORD(STACK[0x6C0]) ^ 0x6695CC30) & v815;
  LODWORD(STACK[0x51C]) = v901;
  v902 = STACK[0x6B0];
  LODWORD(STACK[0x508]) = v815;
  v903 = v901 << LODWORD(STACK[0x6F0]);
  v904 = LODWORD(STACK[0x43C]) ^ (((v861 & 0x40018000 ^ 0x8240C410 ^ (v902 ^ 0xC241C400) & v815) >> v848) | v903) ^ __ROR4__(v883, 8) ^ __ROR4__(v887, 24) ^ v895 ^ __ROR4__(v897, 16);
  LODWORD(v815) = v757 & 0x44008020 ^ 0xA6448400 ^ (v902 ^ 0xE6448430) & v885;
  LODWORD(STACK[0x554]) = v815;
  v905 = v1489 ^ ((v815 >> v848) + v889) ^ __ROR4__(STACK[0x558], 8) ^ __ROR4__(STACK[0x540], 16) ^ v881 ^ __ROR4__(v898, 24);
  LODWORD(v815) = v888 & (v861 & 0x4C998820 ^ 0xA64CC410);
  LODWORD(STACK[0x500]) = v815;
  v906 = v886 ^ (v903 + (v815 >> v856)) ^ __ROR4__(v891, 24) ^ __ROR4__(v892, 8);
  v907 = v902;
  v908 = (v902 & 0x74EEF415 ^ 0x11 ^ STACK[0x708] & (v882 ^ 0xB6685FD8)) >> v848;
  v909 = v900;
  v910 = ((v900 & 0xE504A1A1 | STACK[0x698] & (v882 ^ 0x27820A6C)) ^ 0xE504A1A1) << v890;
  v911 = v890;
  v912 = (v908 - ((2 * v908) & 0xA0631F70) + 1345425336) & 0x2A730D5D ^ 0x456FF3A1 ^ ((v908 - ((2 * v908) & 0xA0631F70) + 1345425336) ^ 0xAFCE7047) & ((v910 - ((2 * v910) & 0xBD7BD998) - 557978420) ^ 0xB311E6E);
  v913 = LODWORD(STACK[0x5B8]) ^ v912 ^ (v899 - ((2 * v899) & 0x21A41836) - 1865282533);
  v914 = STACK[0x680];
  v915 = (v913 - ((2 * v913) & 0x7DA0BBA8) + 1053842900) ^ LODWORD(STACK[0x680]);
  STACK[0x750] = v313 + 4 * BYTE2(v915);
  v916 = (v905 - ((2 * v905) & 0x21A41836) - 1865282533) ^ v912;
  LODWORD(STACK[0x540]) = *(v313 + 4 * BYTE2(v915));
  STACK[0x750] = v313;
  v917 = (v916 - ((2 * v916) & 0x7DA0BBA8) + 1053842900) ^ v914;
  v918 = *(v313 + 4 * ((v916 - ((2 * v916) & 0xA8) - 44) ^ v914));
  STACK[0x750] = v313 + 4 * v915;
  v919 = (v904 - ((2 * v904) & 0x21A41836) - 1865282533) ^ v912;
  v920 = *(v313 + 4 * v915);
  v921 = (v919 - ((2 * v919) & 0x7DA0BBA8) + 1053842900) ^ v914;
  STACK[0x750] = v313 + 4 * BYTE1(v921);
  v922 = *(v313 + 4 * BYTE1(v921));
  v923 = __ROR4__(v894, 16);
  STACK[0x750] = v313 + 4 * BYTE2(v921);
  v924 = *(v313 + 4 * BYTE2(v921));
  STACK[0x750] = v313 + 4 * BYTE2(v917);
  v925 = *(v313 + 4 * BYTE2(v917));
  STACK[0x750] = v313 + 4 * HIBYTE(v921);
  v926 = *(v313 + 4 * HIBYTE(v921));
  STACK[0x750] = v313 + 4 * BYTE1(v917);
  v927 = v1491 ^ v914 ^ ((v906 ^ v923) - ((2 * (v906 ^ v923)) & 0x7DA0BBA8) + 1053842900);
  v928 = *(v313 + 4 * BYTE1(v917));
  v929 = (v927 - ((2 * v927) & 0x21A41836) - 1865282533) ^ v912;
  STACK[0x750] = v313 + 4 * HIBYTE(v929);
  v930 = *(v313 + 4 * HIBYTE(v929));
  v931 = LODWORD(STACK[0x4CC]) ^ (2 * (STACK[0x6D8] & LODWORD(STACK[0x4C8])));
  STACK[0x750] = v313 + 4 * BYTE2(v929);
  v932 = *(v313 + 4 * BYTE2(v929));
  STACK[0x750] = v313 + 4 * HIBYTE(v915);
  v933 = *(v313 + 4 * HIBYTE(v915));
  STACK[0x750] = v313 + 4 * HIBYTE(v917);
  v934 = v924 ^ __ROR4__(v920, 16) ^ __ROR4__(*(v313 + 4 * HIBYTE(v917)), 24);
  v935 = v861 & 0xCA0620A ^ 0x6503105;
  v936 = v861 & 0x4806200 ^ 0x6003100 ^ (v907 ^ 0x6807301) & v935;
  LODWORD(STACK[0x524]) = v936;
  LODWORD(STACK[0x528]) = v935;
  LODWORD(v815) = v861 & 0xCA00208 ^ 0x4101100 ^ (v909 ^ 0x2406007) & v935;
  LODWORD(STACK[0x558]) = v815;
  v937 = v936 >> v848;
  v938 = STACK[0x6F0];
  STACK[0x750] = v313 + 4 * v929;
  v939 = *(v313 + 4 * v929);
  v940 = BYTE1(v915);
  STACK[0x750] = v313 + 4 * v940;
  v941 = ((v936 >> v848) + (v815 << v938)) ^ __ROR4__(v918, 16) ^ __ROR4__(v926, 24) ^ v932 ^ __ROR4__(*(v313 + 4 * v940), 8);
  STACK[0x750] = v313 + 4 * v921;
  v942 = *(v313 + 4 * v921);
  STACK[0x750] = v313 + 4 * BYTE1(v929);
  v943 = STACK[0x338];
  v944 = STACK[0x338] & 0x80000;
  if ((v934 & v944) != 0)
  {
    v944 = -v944;
  }

  v945 = v944 + v934;
  v946 = v757;
  v947 = v757 & 0xCA0620A ^ 0x6503105;
  v948 = STACK[0x6B8];
  v949 = (LODWORD(STACK[0x6B8]) ^ 0x4A06205) & v947 ^ (v946 & 0x800000A | 0x2501100);
  LODWORD(STACK[0x4E8]) = v949;
  v950 = v943 & 0xFFF7FFFF ^ (v949 << v890) ^ v945 ^ __ROR4__(*(v313 + 4 * BYTE1(v929)), 8);
  v951 = v948;
  v952 = (v948 ^ 0x6403203) & v935 ^ (v861 & 0x8A04008 | 0x100104);
  LODWORD(STACK[0x4D8]) = v952;
  v953 = v911;
  v954 = v937 ^ (v952 << v911) ^ (v922 >> 8) ^ (v922 << 24) ^ v925 ^ __ROR4__(v933, 24) ^ __ROR4__(v939, 16);
  v955 = v909;
  LODWORD(STACK[0x4B0]) = v947;
  v956 = v946 & 0xA0600A ^ 0x2002104 ^ v947 & (v909 ^ 0xC501201);
  LODWORD(STACK[0x4E0]) = v956;
  v957 = STACK[0x6A8];
  v958 = v947 & STACK[0x6A8];
  LODWORD(STACK[0x4F0]) = v958;
  LOBYTE(v948) = STACK[0x6E0];
  v959 = v958 >> v948;
  v960 = (v956 << v938) ^ (v958 >> v948) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x540]) ^ __ROR4__(v928, 8) ^ __ROR4__(v930, 24) ^ __ROR4__(v942, 16);
  STACK[0x750] = v313;
  v961 = (v931 & 0x8920B6D8 ^ 0x88003058 ^ (v907 ^ 0x8920B6C9) & (v931 ^ 0xFAC9305D)) >> v948;
  v962 = v951;
  v963 = ((v951 & 0xCAF6E675 | STACK[0x700] & (v931 ^ 0x303FD628)) ^ 0xCAF6E675) << v938;
  v964 = (v961 - ((2 * v961) & 0x3FEA7D98) + 536166092) ^ (v963 - ((2 * v963) & 0xD19A7494) - 389203382);
  v965 = STACK[0x620];
  v966 = LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x620]) ^ (v941 - ((2 * v941) & 0x582D7B34) - 1407795814);
  v967 = (v966 - ((2 * v966) & 0xEE70090C) - 147323770) ^ v964;
  v968 = STACK[0x740];
  STACK[0x740] += 4 * HIBYTE(v967);
  v969 = v965 ^ v959 ^ (v950 - ((2 * v950) & 0x582D7B34) - 1407795814);
  LODWORD(STACK[0x540]) = *(v968 + 4 * HIBYTE(v967));
  v970 = (v969 - ((2 * v969) & 0xEE70090C) - 147323770) ^ v964;
  STACK[0x740] = v968 + 4 * HIBYTE(v970);
  v971 = (v960 - ((2 * v960) & 0x582D7B34) - 1407795814) ^ v965;
  LODWORD(STACK[0x518]) = *(v968 + 4 * HIBYTE(v970));
  v972 = (v971 - ((2 * v971) & 0xEE70090C) - 147323770) ^ v964;
  LODWORD(STACK[0x490]) = v964;
  STACK[0x740] = v968 + 4 * BYTE2(v972);
  v973 = LODWORD(STACK[0x5B4]) ^ v965 ^ (v954 - ((2 * v954) & 0x582D7B34) - 1407795814);
  LODWORD(STACK[0x534]) = *(v968 + 4 * BYTE2(v972));
  v974 = (v973 - ((2 * v973) & 0xEE70090C) - 147323770) ^ v964;
  STACK[0x740] = v968 + 4 * BYTE2(v974);
  LODWORD(STACK[0x520]) = *(v968 + 4 * BYTE2(v974));
  STACK[0x740] = v968 + 4 * BYTE2(v970);
  LODWORD(STACK[0x4FC]) = *(v968 + 4 * BYTE2(v970));
  STACK[0x740] = v968 + 4 * HIBYTE(v972);
  LODWORD(STACK[0x510]) = *(v968 + 4 * HIBYTE(v972));
  v975 = ((v973 - ((2 * v973) & 0xC) - 122) ^ v964);
  STACK[0x740] = v968 + 4 * v975;
  LODWORD(STACK[0x4F8]) = *(v968 + 4 * v975);
  v976 = BYTE1(v967);
  STACK[0x740] = v968 + 4 * BYTE1(v967);
  v977 = v1492 ^ (LODWORD(STACK[0x570]) + (LODWORD(STACK[0x574]) >> v948));
  LODWORD(STACK[0x4A8]) = *(v968 + 4 * v967);
  LODWORD(STACK[0x570]) = *(v968 + 4 * BYTE1(v970));
  LODWORD(STACK[0x4B8]) = *(v968 + 4 * v970);
  LODWORD(STACK[0x4C0]) = *(v968 + 4 * BYTE2(v967));
  LODWORD(STACK[0x574]) = *(v968 + 4 * BYTE1(v974));
  LODWORD(STACK[0x4C8]) = *(v968 + 4 * HIBYTE(v974));
  LODWORD(STACK[0x4CC]) = *(v968 + 4 * BYTE1(v972));
  v978 = v977 ^ LODWORD(STACK[0x5C8]);
  LODWORD(STACK[0x4C4]) = *(v968 + 4 * v972);
  LODWORD(STACK[0x5C8]) = *(v968 + 4 * v976);
  v979 = STACK[0x750];
  STACK[0x750] += 4 * HIBYTE(v978);
  v980 = *(v979 + 4 * HIBYTE(v978));
  STACK[0x750] = v979 + 4 * v978;
  v981 = ((v861 & 0x184E08D8 ^ 0x59168448 ^ (v907 ^ 0x595E8CC8u) & STACK[0x600]) >> v948) ^ ((v861 & 0x300F0050 ^ 0x50078062 ^ (v962 ^ 0x8F700C8C) & STACK[0x600]) << v938) ^ LODWORD(STACK[0x654]);
  v982 = *(v979 + 4 * v978);
  v983 = STACK[0x590];
  v984 = LODWORD(STACK[0x590]) ^ v1493 ^ (v981 - ((2 * v981) & 0x7DA0BBA8) + 1053842900);
  STACK[0x750] = v979 + 4 * BYTE1(v984);
  v985 = *(v979 + 4 * BYTE1(v984));
  STACK[0x750] = v979 + 4 * v984;
  v986 = STACK[0x6E8];
  v987 = v1494 ^ ((LODWORD(STACK[0x5E8]) >> v986) + LODWORD(STACK[0x5E0])) ^ LODWORD(STACK[0x660]);
  v988 = v983 ^ (v987 - ((2 * v987) & 0x7DA0BBA8) + 1053842900);
  v989 = *(v979 + 4 * v984);
  STACK[0x750] = v979 + 4 * HIBYTE(v988);
  v990 = (v1495 - ((2 * v1495) & 0x7DA0BBA8) + 1053842900) ^ LODWORD(STACK[0x680]) ^ LODWORD(STACK[0x658]);
  v991 = *(v979 + 4 * HIBYTE(v988));
  v992 = ((LODWORD(STACK[0x5EC]) ^ -LODWORD(STACK[0x5EC]) ^ (v990 - (v990 ^ LODWORD(STACK[0x5EC])))) + v990) ^ (((STACK[0x610] & v957) >> v986) + ((v946 & 0x200D0894 ^ 0x44158004 ^ STACK[0x610] & (v955 ^ 0x9B62046A)) << v953));
  STACK[0x750] = v979 + 4 * HIBYTE(v992);
  v993 = *(v979 + 4 * HIBYTE(v992));
  STACK[0x740] = v968;
  STACK[0x750] = v979 + 4 * BYTE2(v988);
  LODWORD(v968) = *(v979 + 4 * BYTE2(v988));
  STACK[0x750] = v979 + 4 * BYTE2(v984);
  v994 = *(v979 + 4 * BYTE2(v984));
  STACK[0x750] = v979 + 4 * v992;
  v995 = *(v979 + 4 * v992);
  STACK[0x750] = v979 + 4 * BYTE2(v992);
  v996 = *(v979 + 4 * BYTE2(v992));
  STACK[0x750] = v979 + 4 * BYTE1(v988);
  v997 = *(v979 + 4 * BYTE1(v988));
  v998 = BYTE1(v992);
  STACK[0x750] = v979 + 4 * v998;
  v999 = *(v979 + 4 * v998);
  v1000 = v994 ^ __ROR4__(v980, 24);
  STACK[0x750] = v979 + 4 * BYTE1(v978);
  v1001 = *(v979 + 4 * BYTE1(v978));
  STACK[0x750] = v979 + 4 * v988;
  v1002 = v1000 ^ __ROR4__(v999, 8) ^ __ROR4__(*(v979 + 4 * v988), 16);
  v1003 = v948;
  v1004 = v1496 ^ ((LODWORD(STACK[0x504]) >> v948) + (LODWORD(STACK[0x548]) << v953)) ^ __ROR4__(v989, 16) ^ __ROR4__(v993, 24) ^ v968 ^ __ROR4__(v1001, 8);
  v1005 = ((LODWORD(STACK[0x580]) >> v986) | LODWORD(STACK[0x578])) ^ __ROR4__(v985, 8) ^ __ROR4__(v991, 24) ^ __ROR4__(v995, 16);
  LODWORD(v968) = v1497 ^ (LODWORD(STACK[0x560]) >> v948) ^ __ROR4__(v982, 16) ^ v996 ^ __ROR4__(v997, 8);
  STACK[0x750] = v979 + 4 * BYTE2(v978);
  v1006 = *(v979 + 4 * BYTE2(v978));
  STACK[0x750] = v979 + 4 * HIBYTE(v984);
  v1007 = __ROR4__(*(v979 + 4 * HIBYTE(v984)), 24);
  v1008 = STACK[0x538];
  v1009 = LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x588]) ^ ((v968 ^ v1007) - ((2 * (v968 ^ v1007)) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v979 + 4 * BYTE1(v1009);
  v1010 = v986;
  v1011 = *(v979 + 4 * BYTE1(v1009));
  v1012 = v1008 ^ (LODWORD(STACK[0x634]) >> v986) ^ (LODWORD(STACK[0x5F0]) << v938) ^ v1498 ^ (v1002 - ((2 * v1002) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v979 + 4 * BYTE1(v1012);
  v1013 = v1008 ^ v1499 ^ ((v1005 ^ v1006) - ((2 * (v1005 ^ v1006)) & 0x57B59B0) - 2101498664);
  LODWORD(v968) = *(v979 + 4 * BYTE1(v1012));
  v1014 = (v1008 ^ v1499 ^ ((v1005 ^ v1006) - ((2 * (v1005 ^ v1006)) & 0xB0) - 40));
  STACK[0x750] = v979 + 4 * v1014;
  v1015 = *(v979 + 4 * v1014);
  STACK[0x750] = v979 + 4 * BYTE2(v1012);
  v1016 = *(v979 + 4 * BYTE2(v1012));
  STACK[0x750] = v979 + 4 * BYTE1(v1013);
  v1017 = *(v979 + 4 * BYTE1(v1013));
  v1018 = v1008 ^ (v1004 - ((2 * v1004) & 0x57B59B0) - 2101498664);
  STACK[0x750] = v979 + 4 * HIBYTE(v1018);
  v1019 = *(v979 + 4 * HIBYTE(v1018));
  STACK[0x750] = v979 + 4 * HIBYTE(v1009);
  v1020 = *(v979 + 4 * HIBYTE(v1009));
  STACK[0x750] = v979 + 4 * HIBYTE(v1013);
  v1021 = *(v979 + 4 * HIBYTE(v1013));
  STACK[0x750] = v979 + 4 * v1009;
  v1022 = *(v979 + 4 * v1009);
  STACK[0x750] = v979 + 4 * (v1008 ^ (v1004 - ((2 * v1004) & 0xB0) - 40));
  v1023 = *(v979 + 4 * (v1008 ^ (v1004 - ((2 * v1004) & 0xB0) - 40)));
  v1024 = BYTE2(v1009);
  STACK[0x750] = v979 + 4 * v1024;
  v1025 = *(v979 + 4 * v1024);
  STACK[0x750] = v979 + 4 * HIBYTE(v1012);
  v1026 = *(v979 + 4 * HIBYTE(v1012));
  STACK[0x750] = v979 + 4 * v1012;
  HIDWORD(v1028) = v1020;
  LODWORD(v1028) = v1020;
  v1027 = v1028 >> 24;
  HIDWORD(v1028) = *(v979 + 4 * v1012);
  LODWORD(v1028) = HIDWORD(v1028);
  v1029 = v1028 >> 16;
  LODWORD(v1028) = __ROR4__(v1017, 8);
  v1030 = v1029 + (v1027 ^ v1028) - 2 * (v1029 & (v1027 ^ v1028));
  STACK[0x750] = v979 + 4 * BYTE2(v1018);
  v1031 = *(v979 + 4 * BYTE2(v1018));
  v1032 = LODWORD(STACK[0x500]) >> v986;
  v1033 = (v1032 | (LODWORD(STACK[0x51C]) << v953)) ^ __ROR4__(v1015, 16);
  v1034 = BYTE2(v1013);
  STACK[0x750] = v979 + 4 * v1034;
  v1035 = *(v979 + 4 * v1034);
  STACK[0x750] = v979 + 4 * BYTE1(v1018);
  v1036 = v1033 ^ v1025 ^ __ROR4__(v1026, 24) ^ __ROR4__(*(v979 + 4 * BYTE1(v1018)), 8);
  v1037 = v1500 ^ (((LODWORD(STACK[0x6B8]) ^ 0xC4198830) & STACK[0x508] ^ ((v861 & 0x8800000 | 0x22444028) + 984)) << v953) ^ v1031 ^ v1030;
  v1038 = STACK[0x680];
  v1039 = (v1037 - ((2 * v1037) & 0x7DA0BBA8) + 1053842900) ^ LODWORD(STACK[0x680]);
  v1040 = v912 ^ v1032 ^ (v1039 - ((2 * v1039) & 0x21A41836) - 1865282533);
  STACK[0x750] = v979 + 4 * BYTE2(v1040);
  v1041 = v1501 ^ v912 ^ (v1036 - ((2 * v1036) & 0x21A41836) - 1865282533);
  LODWORD(STACK[0x634]) = *(v979 + 4 * BYTE2(v1040));
  STACK[0x750] = v979;
  v1042 = (v1041 - ((2 * v1041) & 0x7DA0BBA8) + 1053842900) ^ v1038;
  v1043 = *(v979 + 4 * (v912 ^ v1032 ^ (v1039 - ((2 * v1039) & 0x36) + 27)));
  STACK[0x750] = v979 + 4 * BYTE1(v1042);
  v1044 = *(v979 + 4 * BYTE1(v1042));
  STACK[0x750] = v979 + 4 * HIBYTE(v1042);
  LOBYTE(v1032) = v938;
  v1045 = v1502 ^ (LODWORD(STACK[0x608]) << v938) ^ __ROR4__(v1011, 8) ^ v1016 ^ __ROR4__(v1021, 24);
  LODWORD(v1028) = __ROR4__(v1023, 16);
  v1046 = ((v1045 ^ v1028) - ((2 * (v1045 ^ v1028)) & 0x21A41836) - 1865282533) ^ v912;
  v1047 = LODWORD(STACK[0x554]) >> v948;
  v1048 = v1038 ^ v1047 ^ (v1046 - ((2 * v1046) & 0x7DA0BBA8) + 1053842900);
  v1049 = *(v979 + 4 * HIBYTE(v1042));
  STACK[0x750] = v979 + 4 * v1048;
  v1050 = STACK[0x650];
  v1051 = v1504 ^ (v1047 + ((STACK[0x650] & 0x80000 ^ 0x20480410 ^ STACK[0x56C] & (LODWORD(STACK[0x6C0]) ^ 0xCE95C820)) << v1032)) ^ __ROR4__(v968, 8) ^ __ROR4__(v1019, 24);
  LODWORD(v1028) = __ROR4__(v1022, 16);
  v1052 = ((v1051 ^ v1028 ^ v1035) - ((2 * (v1051 ^ v1028 ^ v1035)) & 0x21A41836) - 1865282533) ^ v912;
  v1053 = (v1052 - ((2 * v1052) & 0x7DA0BBA8) + 1053842900) ^ v1038;
  v1054 = *(v979 + 4 * v1048);
  STACK[0x750] = v979 + 4 * BYTE2(v1053);
  v1055 = *(v979 + 4 * BYTE2(v1053));
  STACK[0x750] = v979;
  v1056 = *(v979 + 4 * HIBYTE(v1053));
  STACK[0x750] = v979 + 4 * BYTE1(v1040);
  LODWORD(v968) = *(v979 + 4 * BYTE1(v1040));
  STACK[0x750] = v979 + 4 * HIBYTE(v1040);
  v1057 = *(v979 + 4 * HIBYTE(v1040));
  STACK[0x750] = v979 + 4 * BYTE1(v1048);
  v1058 = *(v979 + 4 * BYTE1(v1048));
  STACK[0x750] = v979 + 4 * ((v1041 - ((2 * v1041) & 0xA8) - 44) ^ v1038);
  v1059 = *(v979 + 4 * ((v1041 - ((2 * v1041) & 0xA8) - 44) ^ v1038));
  STACK[0x750] = v979 + 4 * BYTE2(v1048);
  v1060 = *(v979 + 4 * BYTE2(v1048));
  STACK[0x750] = v979 + 4 * BYTE2(v1042);
  v1061 = *(v979 + 4 * BYTE2(v1042));
  STACK[0x750] = v979 + 4 * v1053;
  v1048 >>= 24;
  v1062 = *(v979 + 4 * v1053);
  STACK[0x750] = v979 + 4 * v1048;
  v1063 = *(v979 + 4 * v1048);
  v1064 = BYTE1(v1053);
  STACK[0x750] = v979 + 4 * v1064;
  v1065 = *(v979 + 4 * v1064);
  STACK[0x750] = v979;
  v1066 = v1055 ^ v1506 ^ __ROR4__(v1057, 24) ^ __ROR4__(v1058, 8);
  LODWORD(v1028) = __ROR4__(v1059, 16);
  v1067 = ((v1066 ^ v1028) - ((2 * (v1066 ^ v1028)) & 0x582D7B34) - 1407795814) ^ v965;
  v1068 = STACK[0x490];
  v1069 = ((v1050 & 0x8202000 ^ 0x2003001 ^ (LODWORD(STACK[0x6B0]) ^ 0xA203000u) & STACK[0x4B0]) >> v1010) ^ (LODWORD(STACK[0x4E8]) << v1032) ^ LODWORD(STACK[0x490]) ^ (v1067 - ((2 * v1067) & 0xEE70090C) - 147323770);
  v1070 = STACK[0x740];
  v1071 = ((((v1050 & 0x8202000 ^ 0x2003001 ^ (LODWORD(STACK[0x6B0]) ^ 0xA203000u) & STACK[0x4B0]) >> v1010) ^ (LOWORD(STACK[0x4E8]) << v1032) ^ LOWORD(STACK[0x490]) ^ (v1067 - ((2 * v1067) & 0x90C) + 1158)) >> 8);
  STACK[0x740] += 4 * ((((v1050 & 0x8202000 ^ 0x2003001 ^ (LODWORD(STACK[0x6B0]) ^ 0xA203000u) & STACK[0x4B0]) >> v1010) ^ (LOWORD(STACK[0x4E8]) << v1032) ^ LOWORD(STACK[0x490]) ^ (v1067 - ((2 * v1067) & 0x90C) + 1158)) >> 8);
  v1072 = ((LODWORD(STACK[0x524]) >> v1003) | (LODWORD(STACK[0x4D8]) << v1032)) ^ __ROR4__(v1043, 16) ^ __ROR4__(v1044, 8);
  LODWORD(v1028) = __ROR4__(v1056, 24);
  v1073 = v1508 ^ v1068 ^ ((v1072 ^ v1028 ^ v1060) - ((2 * (v1072 ^ v1028 ^ v1060)) & 0xEE70090C) - 147323770);
  LODWORD(v979) = (v1073 - ((2 * v1073) & 0x582D7B34) - 1407795814) ^ v965;
  LODWORD(STACK[0x6A0]) = *(v1070 + 4 * v1071);
  STACK[0x740] = v1070 + 4 * BYTE1(v979);
  LODWORD(v968) = (LODWORD(STACK[0x4F0]) >> v1010) ^ (LODWORD(STACK[0x4E0]) << v953) ^ v1510 ^ __ROR4__(v968, 8) ^ v1061 ^ __ROR4__(v1062, 16);
  v1074 = __PAIR64__(v1065, __ROR4__(v1063, 24));
  LODWORD(v968) = ((v968 ^ v1074) - ((2 * (v968 ^ v1074)) & 0xEE70090C) - 147323770) ^ v1068;
  LODWORD(STACK[0x6B8]) = *(v1070 + 4 * BYTE1(v979));
  v1075 = (v968 - ((2 * v968) & 0x582D7B34) - 1407795814) ^ v965;
  STACK[0x740] = v1070 + 4 * ((v968 - ((2 * v968) & 0x34) - 102) ^ v965);
  LODWORD(STACK[0x680]) = *(v1070 + 4 * ((v968 - ((2 * v968) & 0x34) - 102) ^ v965));
  STACK[0x740] = v1070 + 4 * HIBYTE(v1069);
  LODWORD(v1074) = v1065;
  v1076 = v1074 >> 8;
  v1077 = ((v1076 - ((2 * v1076) & 0xEE70090C) - 147323770) ^ v1068) & 0xA021F7CD;
  v1078 = v1068 & 0x5FDE0832 ^ (((STACK[0x6A8] & LODWORD(STACK[0x528])) >> v1003) + (LODWORD(STACK[0x558]) << v953)) ^ v1512 ^ LODWORD(STACK[0x634]) ^ __ROR4__(v1049, 24);
  LODWORD(v1074) = __ROR4__(v1054, 16);
  v1079 = *(v1070 + 4 * HIBYTE(v1069));
  v1080 = ((v1078 ^ v1074 ^ v1076 & 0x5FDE0832 ^ v1077 ^ 0x57180002) - 2 * ((v1078 ^ v1074 ^ v1076 & 0x5FDE0832 ^ v1077 ^ 0x57180002) & 0x2C16BD9F ^ (v1078 ^ v1074 ^ v1076 & 0x5FDE0832 ^ v1077) & 5) - 1407795814) ^ v965;
  v1081 = (((v1078 ^ v1074 ^ v1076 & 0x32 ^ v1077 ^ 2) - 2 * ((v1078 ^ v1074 ^ v1076 & 0x32 ^ v1077 ^ 2) & 0x9F ^ (v1078 ^ v1074 ^ v1076 & 0x32 ^ v1077) & 5) - 102) ^ v965);
  STACK[0x740] = v1070 + 4 * v1081;
  v1082 = *(v1070 + 4 * v1081);
  STACK[0x740] = v1070 + 4 * BYTE1(v1075);
  LODWORD(STACK[0x650]) = *(v1070 + 4 * BYTE1(v1075));
  STACK[0x740] = v1070 + 4 * v1069;
  v1083 = *(v1070 + 4 * v1069);
  v1084 = BYTE2(v979);
  STACK[0x740] = v1070 + 4 * BYTE2(v979);
  HIDWORD(v1074) = LODWORD(STACK[0x4A8]) ^ 7;
  LODWORD(v1074) = LODWORD(STACK[0x4A8]) ^ 0xED1F8F00;
  v1085 = (v1074 >> 8) - 316698873 - ((2 * (v1074 >> 8)) & 0xDA3F1E0E);
  HIDWORD(v1074) = LODWORD(STACK[0x4B8]) ^ 7;
  LODWORD(v1074) = LODWORD(STACK[0x4B8]) ^ 0xED1F8F00;
  v1086 = (v1074 >> 8) - 316698873 - ((2 * (v1074 >> 8)) & 0xDA3F1E0E);
  HIDWORD(v1074) = LODWORD(STACK[0x4C0]) ^ 0x1F8F07;
  LODWORD(v1074) = LODWORD(STACK[0x4C0]) ^ 0xED000000;
  v1087 = (v1074 >> 24) - 316698873 - ((2 * (v1074 >> 24)) & 0xDA3F1E0E);
  HIDWORD(v1074) = LODWORD(STACK[0x4C8]) ^ 0x8F07;
  LODWORD(v1074) = LODWORD(STACK[0x4C8]) ^ 0xED1F0000;
  v1088 = v1074 >> 16;
  HIDWORD(v1074) = LODWORD(STACK[0x4C4]) ^ 7;
  LODWORD(v1074) = LODWORD(STACK[0x4C4]) ^ 0xED1F8F00;
  v1089 = (v1074 >> 8) ^ v1088;
  HIDWORD(v1074) = LODWORD(STACK[0x4FC]) ^ 0x1F8F07;
  LODWORD(v1074) = LODWORD(STACK[0x4FC]) ^ 0xED000000;
  v1090 = v1089 ^ (v1074 >> 24);
  v1091 = LODWORD(STACK[0x640]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x638]);
  HIDWORD(v1074) = LODWORD(STACK[0x4F8]) ^ 7;
  LODWORD(v1074) = LODWORD(STACK[0x4F8]) ^ 0xED1F8F00;
  v1092 = v1091 ^ LODWORD(STACK[0x4CC]) ^ v1087 ^ (v1074 >> 8);
  HIDWORD(v1074) = LODWORD(STACK[0x518]) ^ 0x8F07;
  LODWORD(v1074) = LODWORD(STACK[0x518]) ^ 0xED1F0000;
  v1093 = (LODWORD(STACK[0x348]) ^ -LODWORD(STACK[0x348]) ^ ((v1092 ^ (v1074 >> 16)) - (v1092 ^ (v1074 >> 16) ^ LODWORD(STACK[0x348])))) + (v1092 ^ (v1074 >> 16));
  v1094 = (LODWORD(STACK[0x654]) ^ 0x756B8818) - 1641137690;
  HIDWORD(v1074) = LODWORD(STACK[0x520]) ^ 0x1F8F07;
  LODWORD(v1074) = LODWORD(STACK[0x520]) ^ 0xED000000;
  v1095 = v1074 >> 24;
  HIDWORD(v1074) = LODWORD(STACK[0x510]) ^ 0x8F07;
  LODWORD(v1074) = LODWORD(STACK[0x510]) ^ 0xED1F0000;
  v1096 = v1091 ^ 0xDE14CF3B ^ v1515 ^ LODWORD(STACK[0x570]) ^ v1085 ^ v1095 ^ (v1074 >> 16);
  HIDWORD(v1074) = LODWORD(STACK[0x540]) ^ 0x8F07;
  LODWORD(v1074) = LODWORD(STACK[0x540]) ^ 0xED1F0000;
  v1097 = v1091 ^ 0xDE14CF3B ^ LODWORD(STACK[0x618]) ^ LODWORD(STACK[0x574]) ^ (v1074 >> 16);
  HIDWORD(v1074) = LODWORD(STACK[0x534]) ^ 0x1F8F07;
  LODWORD(v1074) = LODWORD(STACK[0x534]) ^ 0xED000000;
  v1098 = *(v1070 + 4 * BYTE2(v1069));
  v1099 = v1097 ^ (v1074 >> 24);
  HIDWORD(v1074) = v1098 ^ 0x1F8F07;
  LODWORD(v1074) = v1098 ^ 0xED000000;
  v1100 = v1074 >> 24;
  v1101 = *(v1070 + 4 * HIBYTE(v1080));
  HIDWORD(v1074) = v1101 ^ 0x8F07;
  LODWORD(v1074) = v1101 ^ 0xED1F0000;
  v1102 = v1099 ^ v1086;
  v1103 = (v1074 >> 16) ^ v1100;
  v1104 = *(v1070 + 4 * HIBYTE(v1075));
  HIDWORD(v1074) = v1104 ^ 0x8F07;
  LODWORD(v1074) = v1104 ^ 0xED1F0000;
  v1105 = v1074 >> 16;
  v1106 = *(v1070 + 4 * BYTE3(v979));
  HIDWORD(v1074) = v1106 ^ 0x8F07;
  LODWORD(v1074) = v1106 ^ 0xED1F0000;
  v1107 = (v1074 >> 16) - 316698873 - ((2 * (v1074 >> 16)) & 0xDA3F1E0E);
  LODWORD(v979) = *(v1070 + 4 * ((v1073 - ((2 * v1073) & 0x34) - 102) ^ v965));
  HIDWORD(v1074) = v979 ^ 7;
  LODWORD(v1074) = v979 ^ 0xED1F8F00;
  LODWORD(v979) = (v1074 >> 8) ^ v1105;
  v1108 = *(v1070 + 4 * BYTE2(v1080));
  HIDWORD(v1074) = v1108 ^ 0x1F8F07;
  LODWORD(v1074) = v1108 ^ 0xED000000;
  LODWORD(STACK[0x6C0]) = -316698873;
  v1109 = (v979 ^ (v1074 >> 24)) - 316698873 - ((2 * (v979 ^ (v1074 >> 24))) & 0xDA3F1E0E);
  HIDWORD(v1074) = v1079 ^ 0x8F07;
  LODWORD(v1074) = v1079 ^ 0xED1F0000;
  LODWORD(v979) = v1074 >> 16;
  HIDWORD(v1074) = v1082 ^ 7;
  LODWORD(v1074) = v1082 ^ 0xED1F8F00;
  v1110 = v1103 - 316698873 - ((2 * v1103) & 0xDA3F1E0E);
  v1111 = ((v1074 >> 8) ^ v979) - 316698873 - ((2 * ((v1074 >> 8) ^ v979)) & 0xDA3F1E0E);
  v1112 = v1093 ^ 0xDE14CF3B;
  v1113 = v1091 ^ 0xDE14CF3B ^ v1518 ^ LODWORD(STACK[0x5C8]) ^ (v1090 - 316698873 - ((2 * v1090) & 0xDA3F1E0E));
  v1114 = STACK[0x678];
  if (STACK[0x678])
  {
    v1115 = v1102;
  }

  else
  {
    v1115 = v1096;
  }

  if (v1114)
  {
    v1116 = v1112;
  }

  else
  {
    v1116 = v1102;
  }

  if (v1114)
  {
    v1117 = v1113;
  }

  else
  {
    v1117 = v1112;
  }

  if (v1114)
  {
    v1113 = v1096;
  }

  v1118 = (((v1094 ^ LODWORD(STACK[0x658]) ^ 0xC287FF92) + LODWORD(STACK[0x660])) ^ 0x99F2F407) + LODWORD(STACK[0x648]);
  v1119 = v1091 ^ 0xA1940921;
  v1120 = v1118 ^ 0x73212D66;
  v1121 = v1119 ^ v1521 ^ v1118 ^ 0x73212D66 ^ LODWORD(STACK[0x6A0]) ^ v1109;
  v1122 = *(v1070 + 4 * BYTE2(v1075));
  HIDWORD(v1123) = v1122 ^ 0x1F8F07;
  LODWORD(v1123) = v1122 ^ 0xED000000;
  v1124 = v1119 ^ v1526 ^ v1118 ^ 0x73212D66 ^ *(v1070 + 4 * BYTE1(v1080)) ^ (v1123 >> 24) ^ (__PAIR64__(v1083 ^ 7u, v1083 ^ 0xED1F8F00) >> 8) ^ v1107;
  HIDWORD(v1123) = LODWORD(STACK[0x680]) ^ 7;
  LODWORD(v1123) = LODWORD(STACK[0x680]) ^ 0xED1F8F00;
  v1125 = v1119 ^ v1529 ^ v1118 ^ 0x73212D66 ^ LODWORD(STACK[0x6B8]) ^ (v1123 >> 8) ^ v1110;
  v1126 = *(v1070 + 4 * v1084);
  HIDWORD(v1123) = v1126 ^ 0x1F8F07;
  LODWORD(v1123) = v1126 ^ 0xED000000;
  v1127 = v1119 ^ v1532 ^ v1118 ^ 0x73212D66 ^ LODWORD(STACK[0x650]) ^ (v1123 >> 24) ^ v1111;
  if (v1114)
  {
    v1128 = v1124;
  }

  else
  {
    v1128 = v1119 ^ v1521 ^ v1118 ^ 0x73212D66 ^ LODWORD(STACK[0x6A0]) ^ v1109;
  }

  if (v1114)
  {
    v1129 = v1127;
  }

  else
  {
    v1129 = v1124;
  }

  if (v1114)
  {
    v1127 = v1125;
    v1130 = v1119 ^ v1521 ^ v1118 ^ 0x73212D66 ^ LODWORD(STACK[0x6A0]) ^ v1109;
  }

  else
  {
    v1130 = v1125;
  }

  if ((v1114 & 2) != 0)
  {
    v1131 = v1117;
  }

  else
  {
    v1131 = v1115;
  }

  if ((v1114 & 2) != 0)
  {
    v1117 = v1115;
    v1132 = v1113;
  }

  else
  {
    v1132 = v1116;
  }

  if ((v1114 & 2) != 0)
  {
    v1133 = v1116;
  }

  else
  {
    v1133 = v1113;
  }

  if ((v1114 & 2) != 0)
  {
    v1134 = v1127;
  }

  else
  {
    v1134 = v1128;
  }

  if ((v1114 & 2) != 0)
  {
    v1135 = v1128;
  }

  else
  {
    v1135 = v1127;
  }

  if ((v1114 & 2) != 0)
  {
    v1136 = v1130;
  }

  else
  {
    v1136 = v1129;
  }

  if ((v1114 & 2) != 0)
  {
    v1130 = v1129;
  }

  v1137 = v1132 + 1953466063 * ((v1133 ^ 0x807F39E5) + (v1130 ^ v1120)) + 1953466063;
  v1138 = v1118 ^ 0xCA1EB7C;
  v1139 = v1137 ^ v1136;
  v1140 = v1117 ^ (861902345 * v1138) ^ (861902345 * (v1137 ^ v1136));
  v1141 = v1135 ^ v1131 ^ 0x7F80C61A;
  LODWORD(STACK[0x6B8]) = v1139 ^ v1133 ^ v1135 ^ (862943833 * (v1134 ^ 0x7F80C61A)) ^ v1140 ^ (862943833 * (v1140 ^ v1141));
  v1142 = v1140 ^ v1141 ^ v1120;
  v1143 = v1130 ^ v1134 ^ v1142 ^ v1140;
  v1144 = STACK[0x688];
  v1145 = (((a73 & (LODWORD(STACK[0x62C]) ^ 0xE505DB4) ^ STACK[0x6B0] & 0x7008CBC6) >> LODWORD(STACK[0x6E0])) + LODWORD(STACK[0x630])) ^ LODWORD(STACK[0x688]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x388]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x358]) ^ v1541 ^ LODWORD(STACK[0x414]) ^ v1523 ^ LODWORD(STACK[0x434]) ^ v1540 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x420]) ^ LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x3F8]);
  v1146 = STACK[0x6D8];
  v1147 = LODWORD(STACK[0x348]) ^ (2 * (STACK[0x348] & LODWORD(STACK[0x6D8])));
  v1148 = STACK[0x698];
  v1149 = STACK[0x6F0];
  v1150 = STACK[0x6A8];
  v1151 = STACK[0x6E8];
  v1152 = LODWORD(STACK[0x618]) ^ (2 * (STACK[0x618] & LODWORD(STACK[0x6D8])));
  v1153 = STACK[0x6D0];
  v1154 = LODWORD(STACK[0x350]) ^ LODWORD(STACK[0x354]) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x478]) ^ LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x5A8]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x5C4]) ^ LODWORD(STACK[0x5CC]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x5D4]) ^ LODWORD(STACK[0x614]) ^ LODWORD(STACK[0x5FC]) ^ LODWORD(STACK[0x5D0]) ^ LODWORD(STACK[0x5B8]) ^ LODWORD(STACK[0x5D8]) ^ LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x448]) ^ LODWORD(STACK[0x5B4]) ^ ((v1152 & v1150) >> v1151) ^ ((v1152 & STACK[0x700]) << LODWORD(STACK[0x6D0])) ^ (((v1147 & v1150) >> v1151) | ((v1147 & STACK[0x698]) << v1149)) ^ ((((v1515 ^ (2 * (v1515 & STACK[0x6F8]))) & STACK[0x708]) >> LODWORD(STACK[0x6E0])) + (((v1515 ^ (2 * (v1515 & STACK[0x6F8]))) & STACK[0x698]) << LODWORD(STACK[0x6F0]))) ^ ((((v1518 ^ (2 * (v1518 & STACK[0x6D8]))) & STACK[0x698]) << v1149) + (((v1518 ^ (2 * (v1518 & STACK[0x6D8]))) & STACK[0x6A8]) >> v1151)) ^ ((v1145 ^ -v1145 ^ (LODWORD(STACK[0x408]) - (v1145 ^ LODWORD(STACK[0x408])))) + LODWORD(STACK[0x408]));
  v1155 = v1138 ^ v1130;
  v1156 = STACK[0x6B8];
  v1157 = LODWORD(STACK[0x6B8]) ^ v1143;
  v1158 = STACK[0x670];
  v1159 = (a54 >> LODWORD(STACK[0x6E8])) + (a55 << LODWORD(STACK[0x6D0]));
  v1160 = v1142 ^ v1135 ^ v1139;
  v1161 = ((v1155 ^ LODWORD(STACK[0x6B8]) ^ v1157) + 1336763915 * (v1154 - (LODWORD(STACK[0x670]) ^ LODWORD(STACK[0x688])))) ^ 0xD5E3DD54;
  v1162 = v1154 ^ LODWORD(STACK[0x670]);
  v1163 = v1160 ^ v1162 ^ LODWORD(STACK[0x690]) ^ v1157;
  v1164 = STACK[0x6A8];
  v1165 = STACK[0x6E0];
  v1166 = (((v1163 ^ v1120 ^ v1134 ^ v1137 ^ 0xBD5CA9E6 ^ (2 * ((v1163 ^ v1120 ^ v1134 ^ v1137 ^ 0xBD5CA9E6) & STACK[0x6F8]))) & STACK[0x698]) << LODWORD(STACK[0x6F0])) ^ (((v1163 ^ v1120 ^ v1134 ^ v1137 ^ 0xBD5CA9E6 ^ (2 * ((v1163 ^ v1120 ^ v1134 ^ v1137 ^ 0xBD5CA9E6) & STACK[0x6F8]))) & STACK[0x6A8]) >> LODWORD(STACK[0x6E0]));
  v1167 = v1163 ^ 0xE9A2541F ^ (2 * ((v1163 ^ 0xE9A2541F) & STACK[0x6D8]));
  v1168 = (((v1167 & STACK[0x708]) >> LODWORD(STACK[0x6E8])) + ((v1167 & STACK[0x700]) << LODWORD(STACK[0x6D0]))) ^ v1159;
  v1169 = (v1168 - ((2 * v1168) & 0xDBC61FB0) - 303886376) ^ v1537;
  v1170 = ((((v1161 ^ (2 * (v1161 & STACK[0x6F8]))) & STACK[0x6A8]) >> LODWORD(STACK[0x6E0])) + (((v1161 ^ (2 * (v1161 & STACK[0x6F8]))) & STACK[0x698]) << LODWORD(STACK[0x6D0]))) ^ v1166 ^ v1169;
  v1171 = LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x498]) ^ ((a82 >> LODWORD(STACK[0x6E0])) + a53) ^ 0x2E092415 ^ (v1170 - ((2 * v1170) & 0xBAF4AECC) + 1568298854);
  v1172 = STACK[0x750];
  STACK[0x750] += 4 * HIBYTE(v1171);
  v1173 = (-292825075 * v1144) ^ (-292825075 * v1162) ^ 0xD6732A61 ^ v1156;
  v1174 = (((v1173 ^ (2 * (v1173 & v1146))) & v1164) >> v1151) | (((v1173 ^ (2 * (v1173 & v1146))) & v1148) << v1149);
  v1175 = v1174 - ((2 * v1174) & 0xDBC61FB0) - 303886376;
  v1176 = v1175 ^ (v1166 - ((2 * v1166) & 0xDBC61FB0) - 303886376) ^ v1169;
  v1177 = v1533 ^ a91 ^ a86 & 0x276AEE6 ^ 0x4CF1DB91 ^ (v1176 - ((2 * v1176) & 0xCE401F20) + 1730154384);
  v1178 = *(v1172 + 4 * HIBYTE(v1171));
  STACK[0x750] = v1172 + 4 * BYTE2(v1177);
  v1179 = STACK[0x6C8];
  v1180 = v1159 ^ v1537 ^ v1175;
  v1181 = *(v1172 + 4 * BYTE2(v1177));
  v1182 = LODWORD(STACK[0x37C]) ^ a85 ^ ((LODWORD(STACK[0x6C8]) - 1977) ^ 0x3E3895D3) & a89 ^ v1180 ^ v1170 ^ 0xE5F2724A ^ (v1169 - ((2 * v1169) & 0xFE0B92E2) - 16397967);
  STACK[0x750] = v1172 + 4 * BYTE1(v1182);
  v1183 = a83 & 0x26047916 ^ a84 ^ (v1180 - ((2 * v1180) & 0xB8C961E4) - 597380878) ^ v1170 ^ 0x79F661D;
  v1184 = (v1183 - ((2 * v1183) & 0x4ED50B1C) - 1486191218) ^ LODWORD(STACK[0x59C]);
  v1185 = *(v1172 + 4 * BYTE1(v1182));
  v1186 = v1176 ^ LODWORD(STACK[0x5A0]) ^ (v1184 - ((2 * v1184) & 0xE2A141E4) + 1901109490);
  STACK[0x750] = v1172 + 4 * v1186;
  v1187 = *(v1172 + 4 * v1186);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1177);
  v1188 = *(v1172 + 4 * HIBYTE(v1177));
  STACK[0x750] = v1172 + 4 * BYTE2(v1182);
  v1189 = *(v1172 + 4 * BYTE2(v1182));
  STACK[0x740] = v1070;
  STACK[0x750] = v1172 + 4 * BYTE1(v1186);
  v1190 = *(v1172 + 4 * BYTE1(v1186));
  STACK[0x750] = v1172 + 4 * v1171;
  v1191 = *(v1172 + 4 * v1171);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1182);
  v1192 = *(v1172 + 4 * HIBYTE(v1182));
  STACK[0x750] = v1172 + 4 * BYTE2(v1186);
  v1193 = *(v1172 + 4 * BYTE2(v1186));
  STACK[0x750] = v1172 + 4 * BYTE1(v1171);
  v1194 = *(v1172 + 4 * BYTE1(v1171));
  STACK[0x750] = v1172 + 4 * v1177;
  v1186 >>= 24;
  v1195 = *(v1172 + 4 * v1177);
  STACK[0x750] = v1172 + 4 * v1186;
  v1196 = *(v1172 + 4 * v1186);
  v1197 = BYTE2(v1171);
  STACK[0x750] = v1172 + 4 * v1197;
  v1198 = *(v1172 + 4 * v1197);
  STACK[0x750] = v1172 + 4 * BYTE1(v1177);
  v1199 = *(v1172 + 4 * BYTE1(v1177));
  STACK[0x750] = v1172 + 4 * v1182;
  v1200 = v1181 ^ __ROR4__(v1178, 24) ^ __ROR4__(v1185, 8);
  v1201 = __ROR4__(v1187, 16);
  v1202 = a98 & 0xD452038C ^ a96 ^ 0x3DE0DEF1 ^ ((v1200 ^ v1201) - ((2 * (v1200 ^ v1201)) & 0x8CBA4314) + 1180508554);
  v1203 = *(v1172 + 4 * v1182);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1202);
  v1204 = v1189 ^ __ROR4__(v1188, 24) ^ __ROR4__(v1190, 8);
  v1205 = __ROR4__(v1191, 16);
  v1206 = *(v1172 + 4 * HIBYTE(v1202));
  v1207 = v1538 ^ ((v1204 ^ v1205) - ((2 * (v1204 ^ v1205)) & 0xA7894324) + 1405395346);
  STACK[0x750] = v1172 + 4 * BYTE2(v1207);
  v1208 = v1193 ^ __ROR4__(v1192, 24) ^ __ROR4__(v1194, 8);
  v1209 = __ROR4__(v1195, 16);
  v1210 = a90 & 0x2306E58A ^ a88 ^ 0xEA9585CF ^ ((v1208 ^ v1209) - ((2 * (v1208 ^ v1209)) & 0x28D5F574) + 342555322);
  v1211 = *(v1172 + 4 * BYTE2(v1207));
  v1212 = ((a90 & 0xE58A ^ a88 ^ 0x85CF ^ ((v1208 ^ v1209) - ((2 * (v1208 ^ v1209)) & 0xF574) - 1350)) >> 8);
  STACK[0x750] = v1172 + 4 * v1212;
  v1213 = (a57 + (a87 << v1153)) ^ __ROR4__(v1196, 24) ^ v1198 ^ __ROR4__(v1199, 8);
  v1214 = *(v1172 + 4 * v1212);
  v1216 = __ROR4__(v1203, 16);
  v1215 = v1213 ^ v1216;
  v1217 = (v1213 ^ v1216);
  STACK[0x750] = v1172 + 4 * v1217;
  v1218 = *(v1172 + 4 * v1217);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1207);
  v1219 = *(v1172 + 4 * HIBYTE(v1207));
  STACK[0x750] = v1172 + 4 * BYTE2(v1210);
  v1220 = *(v1172 + 4 * BYTE2(v1210));
  STACK[0x750] = v1172 + 4 * BYTE1(v1215);
  v1221 = *(v1172 + 4 * BYTE1(v1215));
  STACK[0x750] = v1172 + 4 * v1202;
  v1222 = *(v1172 + 4 * v1202);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1210);
  v1223 = *(v1172 + 4 * HIBYTE(v1210));
  STACK[0x750] = v1172 + 4 * BYTE2(v1215);
  v1224 = *(v1172 + 4 * BYTE2(v1215));
  STACK[0x750] = v1172 + 4 * BYTE1(v1202);
  v1225 = *(v1172 + 4 * BYTE1(v1202));
  STACK[0x750] = v1172 + 4 * v1207;
  v1215 >>= 24;
  v1226 = *(v1172 + 4 * v1207);
  STACK[0x750] = v1172 + 4 * v1215;
  v1227 = *(v1172 + 4 * v1215);
  v1228 = BYTE2(v1202);
  STACK[0x750] = v1172 + 4 * v1228;
  v1229 = *(v1172 + 4 * v1228);
  STACK[0x750] = v1172 + 4 * BYTE1(v1207);
  v1230 = *(v1172 + 4 * BYTE1(v1207));
  STACK[0x750] = v1172 + 4 * v1210;
  v1231 = ((a99 << v1149) + ((a102 & v1164) >> v1165)) ^ __ROR4__(v1206, 24) ^ v1211 ^ __ROR4__(v1214, 8) ^ __ROR4__(v1218, 16);
  v1232 = *(v1172 + 4 * v1210);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1231);
  v1233 = v1220 ^ __ROR4__(v1219, 24) ^ __ROR4__(v1221, 8);
  v1234 = __ROR4__(v1222, 16);
  v1235 = a97 & 0x47668FCF ^ a92 ^ 0xC4EAA1F8 ^ ((v1233 ^ v1234) - ((2 * (v1233 ^ v1234)) & 0xFAA6B716) + 2102614923);
  v1236 = *(v1172 + 4 * HIBYTE(v1231));
  STACK[0x750] = v1172 + 4 * BYTE2(v1235);
  v1237 = ((a95 << v1149) + a58) ^ HIBYTE(v1223) ^ (v1223 << 8) ^ v1224 ^ __ROR4__(v1225, 8) ^ __ROR4__(v1226, 16);
  v1238 = *(v1172 + 4 * BYTE2(v1235));
  STACK[0x750] = v1172 + 4 * BYTE1(v1237);
  v1239 = v1229 ^ __ROR4__(v1227, 24);
  v1240 = __ROR4__(v1230, 8);
  v1241 = *(v1172 + 4 * BYTE1(v1237));
  v1242 = v1539 ^ __ROR4__(v1232, 16) ^ ((v1239 ^ v1240) - 766585244 - ((2 * (v1239 ^ v1240)) & 0xA49DB372) + 853);
  STACK[0x750] = v1172 + 4 * v1242;
  v1243 = *(v1172 + 4 * v1242);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1235);
  v1244 = *(v1172 + 4 * HIBYTE(v1235));
  STACK[0x750] = v1172 + 4 * BYTE2(v1237);
  v1245 = *(v1172 + 4 * BYTE2(v1237));
  STACK[0x750] = v1172 + 4 * BYTE1(v1242);
  v1246 = *(v1172 + 4 * BYTE1(v1242));
  STACK[0x750] = v1172 + 4 * v1231;
  v1247 = *(v1172 + 4 * v1231);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1237);
  v1248 = *(v1172 + 4 * HIBYTE(v1237));
  STACK[0x750] = v1172 + 4 * BYTE2(v1242);
  v1249 = *(v1172 + 4 * BYTE2(v1242));
  STACK[0x750] = v1172 + 4 * BYTE1(v1231);
  v1250 = *(v1172 + 4 * BYTE1(v1231));
  STACK[0x750] = v1172 + 4 * v1235;
  v1242 >>= 24;
  v1251 = *(v1172 + 4 * v1235);
  STACK[0x750] = v1172 + 4 * v1242;
  v1252 = *(v1172 + 4 * v1242);
  v1253 = BYTE2(v1231);
  STACK[0x750] = v1172 + 4 * v1253;
  v1254 = *(v1172 + 4 * v1253);
  STACK[0x750] = v1172 + 4 * BYTE1(v1235);
  v1255 = *(v1172 + 4 * BYTE1(v1235));
  STACK[0x750] = v1172 + 4 * v1237;
  v1256 = ((LODWORD(STACK[0x208]) << v1153) + a62) ^ __ROR4__(v1236, 24) ^ v1238 ^ __ROR4__(v1241, 8) ^ __ROR4__(v1243, 16);
  v1257 = *(v1172 + 4 * v1237);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1256);
  v1258 = ((a104 >> v1165) + a103) ^ __ROR4__(v1244, 24) ^ v1245 ^ __ROR4__(v1246, 8) ^ __ROR4__(v1247, 16);
  v1259 = *(v1172 + 4 * HIBYTE(v1256));
  STACK[0x750] = v1172 + 4 * BYTE2(v1258);
  v1260 = *(v1172 + 4 * BYTE2(v1258));
  v1261 = (a63 + (a64 >> v1151)) ^ __ROR4__(v1248, 24) ^ v1249 ^ __ROR4__(v1250, 8) ^ __ROR4__(v1251, 16);
  STACK[0x750] = v1172 + 4 * BYTE1(v1261);
  v1262 = *(v1172 + 4 * BYTE1(v1261));
  v1263 = ((a66 >> v1151) + a65) ^ (v1252 << 8) ^ HIBYTE(v1252) ^ v1254 ^ __ROR4__(v1255, 8) ^ __ROR4__(v1257, 16);
  STACK[0x750] = v1172 + 4 * v1263;
  v1264 = *(v1172 + 4 * v1263);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1258);
  v1265 = *(v1172 + 4 * HIBYTE(v1258));
  STACK[0x750] = v1172 + 4 * BYTE2(v1261);
  v1266 = *(v1172 + 4 * BYTE2(v1261));
  STACK[0x750] = v1172 + 4 * BYTE1(v1263);
  v1267 = *(v1172 + 4 * BYTE1(v1263));
  STACK[0x750] = v1172 + 4 * v1256;
  v1268 = *(v1172 + 4 * v1256);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1261);
  v1269 = *(v1172 + 4 * HIBYTE(v1261));
  STACK[0x750] = v1172 + 4 * BYTE2(v1263);
  v1270 = *(v1172 + 4 * BYTE2(v1263));
  STACK[0x750] = v1172 + 4 * BYTE1(v1256);
  v1271 = *(v1172 + 4 * BYTE1(v1256));
  STACK[0x750] = v1172 + 4 * v1258;
  v1263 >>= 24;
  v1272 = *(v1172 + 4 * v1258);
  STACK[0x750] = v1172 + 4 * v1263;
  v1273 = *(v1172 + 4 * v1263);
  v1274 = BYTE2(v1256);
  STACK[0x750] = v1172 + 4 * v1274;
  v1275 = *(v1172 + 4 * v1274);
  STACK[0x750] = v1172 + 4 * BYTE1(v1258);
  v1276 = *(v1172 + 4 * BYTE1(v1258));
  STACK[0x750] = v1172 + 4 * v1261;
  v1277 = v1260 ^ __ROR4__(v1259, 24) ^ __ROR4__(v1262, 8);
  v1278 = __ROR4__(v1264, 16);
  v1279 = v1542 ^ ((v1277 ^ v1278) - ((2 * (v1277 ^ v1278)) & 0x181BF5D6) - 1945240853);
  v1280 = *(v1172 + 4 * v1261);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1279);
  v1281 = ((LODWORD(STACK[0x230]) << v1153) + (a67 >> v1151)) ^ __ROR4__(v1265, 24) ^ v1266 ^ __ROR4__(v1267, 8) ^ __ROR4__(v1268, 16);
  v1282 = *(v1172 + 4 * HIBYTE(v1279));
  STACK[0x750] = v1172 + 4 * BYTE2(v1281);
  v1283 = ((a68 >> v1165) + (LODWORD(STACK[0x228]) << v1149)) ^ __ROR4__(v1269, 24) ^ v1270 ^ __ROR4__(v1271, 8) ^ __ROR4__(v1272, 16);
  v1284 = *(v1172 + 4 * BYTE2(v1281));
  STACK[0x750] = v1172 + 4 * BYTE1(v1283);
  v1285 = v1275 ^ __ROR4__(v1273, 24) ^ __ROR4__(v1276, 8);
  v1286 = __ROR4__(v1280, 16);
  v1287 = *(v1172 + 4 * BYTE1(v1283));
  v1288 = a106 & 0xC4EB929B ^ LODWORD(STACK[0x210]) ^ 0x48EB6292 ^ ((v1285 ^ v1286) - ((2 * (v1285 ^ v1286)) & 0x66AF1AF8) - 1286107780);
  STACK[0x750] = v1172 + 4 * v1288;
  v1289 = *(v1172 + 4 * v1288);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1281);
  v1290 = *(v1172 + 4 * HIBYTE(v1281));
  STACK[0x750] = v1172 + 4 * BYTE2(v1283);
  v1291 = *(v1172 + 4 * BYTE2(v1283));
  STACK[0x750] = v1172 + 4 * BYTE1(v1288);
  v1292 = *(v1172 + 4 * BYTE1(v1288));
  STACK[0x750] = v1172 + 4 * v1279;
  v1293 = *(v1172 + 4 * v1279);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1283);
  v1294 = *(v1172 + 4 * HIBYTE(v1283));
  STACK[0x750] = v1172 + 4 * BYTE2(v1288);
  v1295 = *(v1172 + 4 * BYTE2(v1288));
  STACK[0x750] = v1172 + 4 * BYTE1(v1279);
  v1296 = *(v1172 + 4 * BYTE1(v1279));
  STACK[0x750] = v1172 + 4 * v1281;
  v1297 = *(v1172 + 4 * v1281);
  v1288 >>= 24;
  STACK[0x750] = v1172 + 4 * v1288;
  v1298 = *(v1172 + 4 * v1288);
  STACK[0x750] = v1172 + 4 * BYTE2(v1279);
  v1299 = *(v1172 + 4 * BYTE2(v1279));
  STACK[0x750] = v1172 + 4 * BYTE1(v1281);
  v1300 = *(v1172 + 4 * BYTE1(v1281));
  STACK[0x750] = v1172 + 4 * v1283;
  v1301 = v1284 ^ __ROR4__(v1282, 24) ^ __ROR4__(v1287, 8);
  v1302 = __ROR4__(v1289, 16);
  v1303 = STACK[0x298] & 0xD02A832E ^ LODWORD(STACK[0x288]) ^ 0xEB8F06F1 ^ ((v1301 ^ v1302) - ((2 * (v1301 ^ v1302)) & 0x28E4F258) + 343046444);
  v1304 = *(v1172 + 4 * v1283);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1303);
  v1305 = v1291 ^ __ROR4__(v1290, 24) ^ __ROR4__(v1292, 8);
  v1306 = __ROR4__(v1293, 16);
  v1307 = STACK[0x244] & 0x47905D9 ^ LODWORD(STACK[0x250]) ^ 0xF6E73199 ^ ((v1305 ^ v1306) - ((2 * (v1305 ^ v1306)) & 0x1A539E5E) + 220843823);
  v1308 = *(v1172 + 4 * HIBYTE(v1303));
  STACK[0x750] = v1172 + 4 * BYTE2(v1307);
  v1310 = __PAIR64__(v1298, __ROR4__(v1297, 16));
  v1309 = ((LODWORD(STACK[0x248]) >> v1151) + a71) ^ __ROR4__(v1294, 24) ^ v1295 ^ __ROR4__(v1296, 8) ^ v1310;
  v1311 = *(v1172 + 4 * BYTE2(v1307));
  STACK[0x750] = v1172 + 4 * BYTE1(v1309);
  LODWORD(v1310) = v1298;
  v1312 = a105 & 0xD4909AC2 ^ LODWORD(STACK[0x200]) ^ v1299 ^ ((v1310 >> 24) - ((2 * (v1310 >> 24)) & 0x632E1786) - 1315501117) ^ __ROR4__(v1300, 8);
  LODWORD(v1310) = __ROR4__(v1304, 16);
  v1313 = *(v1172 + 4 * BYTE1(v1309));
  v1314 = v1312 ^ v1310 ^ 0x9AE8F4FC;
  v1315 = (v1312 ^ v1310) ^ 0xFC;
  STACK[0x750] = v1172 + 4 * v1315;
  v1316 = *(v1172 + 4 * v1315);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1307);
  v1317 = *(v1172 + 4 * HIBYTE(v1307));
  STACK[0x750] = v1172 + 4 * BYTE2(v1309);
  v1318 = *(v1172 + 4 * BYTE2(v1309));
  STACK[0x750] = v1172 + 4 * BYTE1(v1314);
  v1319 = *(v1172 + 4 * BYTE1(v1314));
  STACK[0x750] = v1172 + 4 * v1303;
  v1320 = *(v1172 + 4 * v1303);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1309);
  v1321 = *(v1172 + 4 * HIBYTE(v1309));
  STACK[0x750] = v1172 + 4 * BYTE2(v1314);
  v1322 = *(v1172 + 4 * BYTE2(v1314));
  STACK[0x750] = v1172 + 4 * BYTE1(v1303);
  v1323 = *(v1172 + 4 * BYTE1(v1303));
  STACK[0x750] = v1172 + 4 * v1307;
  v1314 >>= 24;
  v1324 = *(v1172 + 4 * v1307);
  STACK[0x750] = v1172 + 4 * v1314;
  v1325 = *(v1172 + 4 * v1314);
  v1326 = BYTE2(v1303);
  STACK[0x750] = v1172 + 4 * v1326;
  v1327 = *(v1172 + 4 * v1326);
  STACK[0x750] = v1172 + 4 * BYTE1(v1307);
  v1328 = *(v1172 + 4 * BYTE1(v1307));
  STACK[0x750] = v1172 + 4 * v1309;
  v1329 = (a76 + (LODWORD(STACK[0x2A8]) << v1153)) ^ __ROR4__(v1308, 24) ^ v1311 ^ __ROR4__(v1313, 8) ^ __ROR4__(v1316, 16);
  v1330 = *(v1172 + 4 * v1309);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1329);
  v1331 = ((LODWORD(STACK[0x2A0]) << v1149) + ((v1164 & STACK[0x2B0]) >> v1165)) ^ __ROR4__(v1317, 24) ^ v1318 ^ __ROR4__(v1319, 8) ^ __ROR4__(v1320, 16);
  v1332 = *(v1172 + 4 * HIBYTE(v1329));
  STACK[0x750] = v1172 + 4 * (v1331 >> (v1158 & 0x10) >> (v1158 & 0x10 ^ 0x10));
  v1333 = v1322 ^ __ROR4__(v1321, 24) ^ __ROR4__(v1323, 8);
  LODWORD(v1310) = __ROR4__(v1324, 16);
  v1334 = v1543 ^ ((v1333 ^ v1310) - ((2 * (v1333 ^ v1310)) & 0x3FD7EDA4) + 535557842);
  v1335 = *(v1172 + 4 * (v1331 >> (v1158 & 0x10) >> (v1158 & 0x10 ^ 0x10)));
  STACK[0x750] = v1172 + 4 * BYTE1(v1334);
  v1336 = v1327 ^ __ROR4__(v1325, 24) ^ __ROR4__(v1328, 8);
  LODWORD(v1310) = __ROR4__(v1330, 16);
  v1337 = *(v1172 + 4 * BYTE1(v1334));
  v1338 = STACK[0x218] & 0x35FE80BD ^ a100 ^ 0x5757539B ^ ((v1336 ^ v1310) - ((2 * (v1336 ^ v1310)) & 0x39255980) - 1668109120);
  STACK[0x750] = v1172 + 4 * v1338;
  v1339 = *(v1172 + 4 * v1338);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1331);
  v1340 = *(v1172 + 4 * HIBYTE(v1331));
  STACK[0x750] = v1172 + 4 * BYTE2(v1334);
  v1341 = *(v1172 + 4 * BYTE2(v1334));
  STACK[0x750] = v1172 + 4 * BYTE1(v1338);
  v1342 = *(v1172 + 4 * BYTE1(v1338));
  STACK[0x750] = v1172 + 4 * v1329;
  v1343 = *(v1172 + 4 * v1329);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1334);
  v1344 = *(v1172 + 4 * HIBYTE(v1334));
  STACK[0x750] = v1172 + 4 * BYTE2(v1338);
  v1345 = *(v1172 + 4 * BYTE2(v1338));
  STACK[0x750] = v1172 + 4 * BYTE1(v1329);
  v1346 = v1331 - 1;
  if ((v1331 & 1) == 0)
  {
    v1346 = v1331 + 1;
  }

  v1347 = *(v1172 + 4 * BYTE1(v1329));
  v1348 = v1346 ^ 1;
  STACK[0x750] = v1172 + 4 * v1348;
  v1349 = *(v1172 + 4 * v1348);
  v1350 = HIBYTE(v1338);
  STACK[0x750] = v1172 + 4 * v1350;
  v1351 = *(v1172 + 4 * v1350);
  v1352 = BYTE2(v1329);
  STACK[0x750] = v1172 + 4 * v1352;
  v1353 = *(v1172 + 4 * v1352);
  STACK[0x750] = v1172 + 4 * BYTE1(v1331);
  v1354 = *(v1172 + 4 * BYTE1(v1331));
  STACK[0x750] = v1172 + 4 * v1334;
  v1355 = v1335 ^ __ROR4__(v1332, 24) ^ __ROR4__(v1337, 8);
  v1356 = __ROR4__(v1339, 16);
  v1357 = v1544 ^ ((v1355 ^ v1356) - ((2 * (v1355 ^ v1356)) & 0x25678978) - 1833712452);
  v1358 = *(v1172 + 4 * v1334);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1357);
  v1359 = v1341 ^ __ROR4__(v1340, 24) ^ __ROR4__(v1342, 8);
  v1360 = __ROR4__(v1343, 16);
  v1361 = *(v1172 + 4 * HIBYTE(v1357));
  v1362 = v1545 ^ ((v1359 ^ v1360) - ((2 * (v1359 ^ v1360)) & 0x8ADEBB8) + 72807900);
  STACK[0x750] = v1172 + 4 * BYTE2(v1362);
  v1363 = v1345 ^ __ROR4__(v1344, 24) ^ __ROR4__(v1347, 8);
  v1364 = __ROR4__(v1349, 16);
  v1365 = STACK[0x290] & 0xF468BA0A ^ LODWORD(STACK[0x278]) ^ 0xCFBAB501 ^ ((v1363 ^ v1364) - ((2 * (v1363 ^ v1364)) & 0x801BB1FC) - 1072834306);
  v1366 = *(v1172 + 4 * BYTE2(v1362));
  STACK[0x750] = v1172 + 4 * BYTE1(v1365);
  v1367 = *(v1172 + 4 * BYTE1(v1365));
  v1368 = (a78 + (LODWORD(STACK[0x268]) << v1149)) ^ __ROR4__(v1351, 24) ^ v1353 ^ __ROR4__(v1354, 8) ^ __ROR4__(v1358, 16);
  STACK[0x750] = v1172 + 4 * v1368;
  v1369 = *(v1172 + 4 * v1368);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1362);
  v1370 = *(v1172 + 4 * HIBYTE(v1362));
  STACK[0x750] = v1172 + 4 * BYTE2(v1365);
  v1371 = *(v1172 + 4 * BYTE2(v1365));
  STACK[0x750] = v1172 + 4 * BYTE1(v1368);
  v1372 = *(v1172 + 4 * BYTE1(v1368));
  STACK[0x750] = v1172 + 4 * v1357;
  v1373 = *(v1172 + 4 * v1357);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1365);
  v1374 = *(v1172 + 4 * HIBYTE(v1365));
  STACK[0x750] = v1172 + 4 * BYTE2(v1368);
  v1375 = STACK[0x270] & 0x2CE5AF39;
  v1376 = v1366 ^ __ROR4__(v1361, 24) ^ __ROR4__(v1367, 8) ^ __ROR4__(v1369, 16);
  v1377 = v1371 ^ __ROR4__(v1372, 8) ^ ((v1370 >> (STACK[0x710] & 0x18) >> (STACK[0x710] & 0x18 ^ 0x18)) | (v1370 << 8)) ^ __ROR4__(v1373, 16);
  v1378 = *(v1172 + 4 * BYTE2(v1368));
  STACK[0x750] = v1172 + 4 * BYTE1(v1357);
  v1379 = *(v1172 + 4 * BYTE1(v1357));
  STACK[0x750] = v1172 + 4 * v1362;
  v1368 >>= 24;
  LODWORD(v1370) = *(v1172 + 4 * v1362);
  STACK[0x750] = v1172 + 4 * v1368;
  v1380 = *(v1172 + 4 * v1368);
  v1381 = BYTE2(v1357);
  STACK[0x750] = v1172 + 4 * v1381;
  v1382 = *(v1172 + 4 * v1381) ^ __ROR4__(v1380, 24);
  STACK[0x750] = v1172 + 4 * BYTE1(v1362);
  v1383 = *(v1172 + 4 * BYTE1(v1362));
  STACK[0x750] = v1172 + 4 * v1365;
  v1384 = v1375 ^ LODWORD(STACK[0x2C0]) ^ 0xE32FD9BD ^ (v1376 - ((2 * v1376) & 0x20231E96) + 269586251);
  v1385 = v1382 ^ __ROR4__(v1383, 8) ^ __ROR4__(*(v1172 + 4 * v1365), 16);
  v1386 = v1546 ^ (v1377 - ((2 * v1377) & 0x1E0ACA62) + 252011825);
  v1387 = (a79 + (a80 >> v1151)) ^ __ROR4__(v1374, 24) ^ v1378 ^ __ROR4__(v1379, 8) ^ __ROR4__(v1370, 16);
  v1388 = a101 & 0x21904053 ^ LODWORD(STACK[0x238]);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1384);
  v1389 = *(v1172 + 4 * HIBYTE(v1384));
  STACK[0x750] = v1172 + 4 * BYTE2(v1386);
  v1390 = *(v1172 + 4 * BYTE2(v1386));
  STACK[0x750] = v1172 + 4 * BYTE1(v1387);
  v1391 = *(v1172 + 4 * BYTE1(v1387));
  v1392 = v1388 ^ 0x8F6407CC ^ (v1385 - ((2 * v1385) & 0xA2377046) + 1360771107);
  STACK[0x750] = v1172 + 4 * v1392;
  v1393 = *(v1172 + 4 * v1392);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1386);
  v1394 = *(v1172 + 4 * HIBYTE(v1386));
  v1395 = STACK[0x220] & v1164;
  STACK[0x750] = v1172 + 4 * BYTE2(v1387);
  v1396 = *(v1172 + 4 * BYTE2(v1387));
  STACK[0x750] = v1172 + 4 * BYTE1(v1392);
  v1397 = *(v1172 + 4 * BYTE1(v1392));
  STACK[0x750] = v1172 + 4 * v1384;
  LODWORD(v1370) = *(v1172 + 4 * v1384);
  STACK[0x750] = v1172 + 4 * HIBYTE(v1387);
  v1398 = *(v1172 + 4 * HIBYTE(v1387));
  STACK[0x750] = v1172 + 4 * BYTE2(v1392);
  v1399 = *(v1172 + 4 * BYTE2(v1392));
  STACK[0x750] = v1172 + 4 * BYTE1(v1384);
  v1400 = *(v1172 + 4 * BYTE1(v1384));
  STACK[0x750] = v1172 + 4 * v1386;
  v1392 >>= 24;
  v1401 = *(v1172 + 4 * v1386);
  STACK[0x750] = v1172 + 4 * v1392;
  v1402 = *(v1172 + 4 * v1392);
  v1403 = LODWORD(STACK[0x280]) << v1153;
  v1404 = BYTE2(v1384);
  STACK[0x750] = v1172 + 4 * v1404;
  v1405 = *(v1172 + 4 * v1404);
  v1406 = v1403 + (v1395 >> v1165);
  STACK[0x750] = v1172 + 4 * BYTE1(v1386);
  v1407 = *(v1172 + 4 * BYTE1(v1386));
  v1408 = v1405 ^ __ROR4__(v1402, 24);
  v1409 = v1387;
  STACK[0x750] = v1172 + 4 * v1387;
  v1410 = LODWORD(STACK[0x2B8]) ^ __ROR4__(v1394, 24) ^ v1396 ^ __ROR4__(v1397, 8) ^ __ROR4__(v1370, 16);
  v1411 = ((a93 << v1149) + ((v1164 & a94) >> v1151)) ^ __ROR4__(v1389, 24) ^ v1390 ^ __ROR4__(v1391, 8) ^ __ROR4__(v1393, 16);
  v1412 = *(v1172 + 4 * v1409);
  v1413 = __ROR4__(v1407, 8);
  STACK[0x750] = v1172;
  v1414 = (v1408 ^ v1413) - ((2 * (v1408 ^ v1413)) & 0x498F4C20) + 617063952;
  v1415 = STACK[0x740];
  v1416 = v1406 ^ __ROR4__(v1398, 24) ^ v1399 ^ __ROR4__(v1400, 8) ^ __ROR4__(v1401, 16);
  v1417 = v1547 ^ __ROR4__(v1412, 16) ^ v1414;
  v1418 = *(STACK[0x740] + 4 * HIBYTE(v1411));
  v1419 = HIBYTE(v1417);
  HIDWORD(v1421) = v1418 ^ 0x8F07;
  LODWORD(v1421) = v1418 ^ 0xED1F0000;
  v1420 = v1421 >> 16;
  v1422 = *(STACK[0x740] + 4 * BYTE2(v1410));
  HIDWORD(v1421) = v1422 ^ 0x1F8F07;
  LODWORD(v1421) = v1422 ^ 0xED000000;
  v1423 = (v1421 >> 24) ^ v1420;
  v1424 = *(STACK[0x740] + 4 * v1417);
  HIDWORD(v1421) = v1424 ^ 7;
  LODWORD(v1421) = v1424 ^ 0xED1F8F00;
  v1425 = *(STACK[0x740] + 4 * HIBYTE(v1410));
  v1426 = (v1421 >> 8) ^ *(STACK[0x740] + 4 * BYTE1(v1416)) ^ (v1423 + LODWORD(STACK[0x6C0]) - ((2 * v1423) & 0xDA3F1E0E));
  v1427 = *(STACK[0x740] + 4 * BYTE2(v1416));
  HIDWORD(v1421) = v1425 ^ 0x8F07;
  LODWORD(v1421) = v1425 ^ 0xED1F0000;
  v1428 = v1421 >> 16;
  HIDWORD(v1421) = v1427 ^ 0x1F8F07;
  LODWORD(v1421) = v1427 ^ 0xED000000;
  v1429 = STACK[0x6C0];
  v1430 = ((v1421 >> 24) ^ v1428) + LODWORD(STACK[0x6C0]) - ((2 * ((v1421 >> 24) ^ v1428)) & 0xDA3F1E0E);
  v1431 = *(STACK[0x740] + 4 * v1411);
  v1432 = *(STACK[0x740] + 4 * HIBYTE(v1416));
  HIDWORD(v1421) = v1431 ^ 7;
  LODWORD(v1421) = v1431 ^ 0xED1F8F00;
  v1433 = (v1421 >> 8) ^ *(STACK[0x740] + 4 * BYTE1(v1417)) ^ v1430;
  v1434 = *(STACK[0x740] + 4 * BYTE2(v1417));
  v1435 = *(STACK[0x740] + 4 * BYTE1(v1411));
  HIDWORD(v1421) = v1432 ^ 0x8F07;
  LODWORD(v1421) = v1432 ^ 0xED1F0000;
  v1436 = v1421 >> 16;
  HIDWORD(v1421) = v1434 ^ 0x1F8F07;
  LODWORD(v1421) = v1434 ^ 0xED000000;
  v1437 = (v1421 >> 24) ^ v1436;
  STACK[0x740] += 4 * v1410;
  v1438 = *(v1415 + 4 * v1410);
  STACK[0x740] = v1415 + 4 * v1419;
  HIDWORD(v1421) = v1438 ^ 7;
  LODWORD(v1421) = v1438 ^ 0xED1F8F00;
  v1439 = v1421 >> 8;
  v1440 = *(v1415 + 4 * v1419);
  HIDWORD(v1421) = v1440 ^ 0x8F07;
  LODWORD(v1421) = v1440 ^ 0xED1F0000;
  v1441 = v1421 >> 16;
  v1442 = BYTE2(v1411);
  STACK[0x740] = v1415 + 4 * v1442;
  v1443 = *(v1415 + 4 * v1442);
  v1444 = BYTE1(v1410);
  STACK[0x740] = v1415 + 4 * v1444;
  v1445 = *(v1415 + 4 * v1444);
  STACK[0x740] = v1415 + 4 * v1416;
  HIDWORD(v1421) = v1443 ^ 0x1F8F07;
  LODWORD(v1421) = v1443 ^ 0xED000000;
  v1446 = ((v1421 >> 24) ^ v1441) + v1429 - ((2 * ((v1421 >> 24) ^ v1441)) & 0xDA3F1E0E);
  v1447 = *(v1415 + 4 * v1416);
  HIDWORD(v1421) = v1447 ^ 7;
  LODWORD(v1421) = v1447 ^ 0xED1F8F00;
  STACK[0x740] = v1415;
  LODWORD(v1415) = v1446 ^ v1445 ^ (v1421 >> 8);
  v1448 = LODWORD(STACK[0x37C]) ^ 0xCAFAAFB2 ^ ((v1439 ^ v1435 ^ (v1437 + v1429 - ((2 * v1437) & 0xDA3F1E0E))) - ((2 * (v1439 ^ v1435 ^ (v1437 + v1429 - ((2 * v1437) & 0xDA3F1E0E)))) & 0xEA51A8C8) - 181873564);
  v1449 = LODWORD(STACK[0x2C4]) ^ (v1433 - ((2 * v1433) & 0xAC744AF8) - 700832388) ^ 0xB59161A1 ^ v1448;
  v1450 = (v1426 - ((2 * v1426) & 0xEA51A8C8) - 181873564) ^ LODWORD(STACK[0x37C]);
  v1451 = LODWORD(STACK[0x2C4]) ^ 0xC7B35482 ^ (v1415 - ((2 * v1415) & 0xAC744AF8) - 700832388);
  v1452 = v1451 ^ v1449;
  LODWORD(v1415) = ((v1449 ^ v1450 ^ 0x20F134E0) - 1557135540 - ((2 * (v1449 ^ v1450 ^ 0x20F134E0)) & 0x465FFE98)) ^ LODWORD(STACK[0x4D4]);
  v1453 = v1415 ^ v1448 ^ v1451;
  v1454 = ((v1450 ^ 0x20F134E0) - 1557135540 - 2 * ((v1450 ^ 0x20F134E0) & 0x232FFF5E ^ v1450 & 0x12)) ^ LODWORD(STACK[0x4D4]);
  v1455 = (v1452 - 1557135540 - ((2 * v1452) & 0x465FFE98)) ^ LODWORD(STACK[0x4D4]);
  v1534[3] = *(*(&off_1006B4E30 + v1179 - 2088) + (BYTE1(v1415) ^ 0xCCLL)) ^ 0x72;
  v1534[13] = (v1454 - ((2 * v1454) & 0xA8) + 84) ^ 0xAD ^ *(*(&off_1006B4E30 + (v1179 ^ 0xC2E)) + (v1454 ^ 0x42) - 12);
  v1534[2] = (*(*(&off_1006B4E30 + v1179 - 2939) + (v1455 ^ 0x43)) + 91) ^ 0x7F;
  v1534[11] = (*(*(&off_1006B4E30 + (v1179 ^ 0xC55)) + (HIBYTE(v1455) ^ 0x71) - 4) + (HIBYTE(v1455) ^ 0x23) - 56) ^ 0xB6;
  v1534[1] = *(*(&off_1006B4E30 + (v1179 ^ 0xF88)) + (BYTE2(v1455) ^ 0x99) - 12) ^ 0x28;
  v1456 = *(*(&off_1006B4E30 + (v1179 ^ 0xF39)) + (BYTE2(v1453) ^ 0x6DLL) - 8);
  HIDWORD(v1421) = v1456 ^ 3;
  LODWORD(v1421) = (v1456 ^ 0x90) << 24;
  v1534[9] = (((((32 * BYTE2(v1453)) | (BYTE2(v1453) >> 3)) ^ 0x69 ^ (v1421 >> 27)) >> 5) | (8 * (((32 * BYTE2(v1453)) | (BYTE2(v1453) >> 3)) ^ 0x69 ^ (v1421 >> 27)))) ^ 0xD1;
  v1534[7] = (*(*(&off_1006B4E30 + (v1179 ^ 0x804)) + (HIBYTE(v1453) ^ 0xBFLL) - 8) - 86) ^ 0x20;
  LOBYTE(v1441) = *(*(&off_1006B4E30 + (v1179 ^ 0xD62)) + (v1453 ^ 0x73) - 4);
  *v1534 = v1441 ^ (-50 * (v1441 ^ 0x68)) ^ 3;
  LOBYTE(v1426) = *(*(&off_1006B4E30 + (v1179 ^ 0xD4A)) + (BYTE3(v1415) ^ 0x18) - 8);
  v1534[15] = v1426 ^ (16 * v1426) ^ 0xFE;
  v1534[8] = *(*(&off_1006B4E30 + v1179 - 2061) + (BYTE1(v1454) ^ 0xADLL) - 4) ^ 0xB6;
  v1457 = STACK[0x758];
  v1457[12] = *(*(&off_1006B4E30 + v1179 - 3051) + (v1415 ^ 0x33) - 4) ^ 0x9A ^ (52 - ((*(*(&off_1006B4E30 + v1179 - 3051) + (v1415 ^ 0x33) - 4) >> 4) & 4));
  v1457[6] = ((BYTE1(v1453) ^ 0xAB) + *(*(&off_1006B4E30 + (v1179 ^ 0xDDA)) + (BYTE1(v1453) ^ 0x65) - 4) - 61) ^ 0x14;
  v1458 = (HIWORD(v1454) ^ 0xC5) + (HIWORD(v1454) ^ 0xF2);
  v1457[14] = (v1458 - ((2 * v1458) & 0xF7) - 5) ^ *(*(&off_1006B4E30 + v1179 - 1920) + (BYTE2(v1454) ^ 0x2FLL)) ^ 0x81;
  v1457[4] = *(*(&off_1006B4E30 + v1179 - 2860) + (BYTE2(v1415) ^ 0x93)) ^ 0x64;
  v1457[10] = *(*(&off_1006B4E30 + (v1179 ^ 0xD33)) + (BYTE1(v1455) ^ 0xD7) - 12) ^ 0x73;
  LOBYTE(v1415) = *(*(&off_1006B4E30 + v1179 - 2039) + (HIBYTE(v1454) ^ 0xB5));
  v1457[5] = v1415 ^ 0xE6 ^ (((8 * v1415) & 0x70 ^ 0x2F) + ((4 * (v1415 & 0xF)) ^ 0xE8) - 5);
  v1459 = STACK[0x740];
  v1460 = STACK[0x718];
  JUMPOUT(0x1000F44F4);
}