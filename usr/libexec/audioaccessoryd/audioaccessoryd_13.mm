void sub_1001C7CB8(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v163 = &v142 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v160 = &v142 - v12;
  __chkstk_darwin(v13);
  v153 = &v142 - v14;
  __chkstk_darwin(v15);
  v151 = &v142 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  __chkstk_darwin(v19);
  v167 = &v142 - v20;
  __chkstk_darwin(v21);
  v150 = &v142 - v22;
  __chkstk_darwin(v23);
  v165 = &v142 - v24;
  __chkstk_darwin(v25);
  v154 = a3;
  v155 = &v142 - v28;
  if (*(a3 + 8) < 1)
  {
    v31 = &_swiftEmptyArrayStorage;
LABEL_106:
    a3 = *v146;
    if (!*v146)
    {
      goto LABEL_147;
    }

    a4 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v137 = a4;
LABEL_109:
    v171 = v137;
    a4 = *(v137 + 2);
    if (a4 >= 2)
    {
      while (*v154)
      {
        v138 = *&v137[16 * a4];
        v139 = v137;
        v140 = *&v137[16 * a4 + 24];
        sub_1001C9308((*v154 + 8 * v138), (*v154 + 8 * *&v137[16 * a4 + 16]), (*v154 + 8 * v140), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v140 < v138)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_1001C9D08(v139);
        }

        if (a4 - 2 >= *(v139 + 2))
        {
          goto LABEL_135;
        }

        v141 = &v139[16 * a4];
        *v141 = v138;
        *(v141 + 1) = v140;
        v171 = v139;
        sub_1001C9C7C(a4 - 1);
        v137 = v171;
        a4 = *(v171 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v29 = *(a3 + 8);
  v143 = a4;
  v30 = 0;
  v164 = (v26 + 32);
  v168 = (v26 + 56);
  v157 = (v26 + 48);
  v31 = &_swiftEmptyArrayStorage;
  v162 = (v26 + 8);
  v158 = v17;
  v159 = v27;
  while (1)
  {
    v32 = v30;
    if (v30 + 1 >= v29)
    {
      v45 = v30 + 1;
    }

    else
    {
      v156 = v29;
      v145 = v31;
      a4 = *v154;
      v33 = *(*v154 + 8 * (v30 + 1));
      v169 = *(*v154 + 8 * v30);
      v34 = v169;
      v170 = v33;
      v35 = v33;
      a3 = v34;
      LODWORD(v161) = sub_1001C00D0(&v170, &v169);
      if (v5)
      {

        return;
      }

      v36 = v30 + 2;
      v144 = v30;
      v149 = 8 * v30;
      v37 = (a4 + 8 * v30 + 16);
      v152 = 0;
      while (1)
      {
        v45 = v156;
        if (v156 == v36)
        {
          break;
        }

        v46 = *(v37 - 1);
        v47 = *v37;
        v48 = v46;
        v166 = v47;
        v49 = [v47 creationDate];
        if (v49)
        {
          v50 = v49;
          v51 = v165;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v52 = *v164;
          v53 = v151;
          (*v164)(v151, v51, v17);
          v54 = *v168;
          (*v168)(v53, 0, 1, v17);
          (v52)(v155, v53, v17);
        }

        else
        {
          v54 = *v168;
          v55 = v151;
          (*v168)(v151, 1, 1, v17);
          static Date.now.getter();
          if ((*v157)(v55, 1, v17) != 1)
          {
            sub_1000EEE6C(v55, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v56 = [v48 creationDate];
        if (v56)
        {
          v38 = v165;
          v39 = v56;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = *v164;
          v41 = v153;
          (*v164)(v153, v38, v17);
          v54(v41, 0, 1, v17);
          v42 = v150;
          (v40)(v150, v41, v17);
        }

        else
        {
          v57 = v153;
          v54(v153, 1, 1, v17);
          v42 = v150;
          static Date.now.getter();
          if ((*v157)(v57, 1, v17) != 1)
          {
            sub_1000EEE6C(v153, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v43 = v155;
        a4 = static Date.> infix(_:_:)();
        a3 = v162;
        v44 = *v162;
        (*v162)(v42, v17);
        v44(v43, v17);

        ++v36;
        ++v37;
        v5 = v152;
        if ((v161 ^ a4))
        {
          v45 = v36 - 1;
          break;
        }
      }

      v31 = v145;
      v32 = v144;
      v58 = v149;
      if (v161)
      {
        if (v45 < v144)
        {
          goto LABEL_140;
        }

        if (v144 < v45)
        {
          v59 = 8 * v45 - 8;
          v60 = v45;
          v61 = v144;
          do
          {
            if (v61 != --v60)
            {
              v62 = *v154;
              if (!*v154)
              {
                goto LABEL_144;
              }

              v63 = *(v62 + v58);
              *(v62 + v58) = *(v62 + v59);
              *(v62 + v59) = v63;
            }

            ++v61;
            v59 -= 8;
            v58 += 8;
          }

          while (v61 < v60);
        }
      }
    }

    v64 = v154[1];
    if (v45 < v64)
    {
      if (__OFSUB__(v45, v32))
      {
        goto LABEL_137;
      }

      if (v45 - v32 < v143)
      {
        if (__OFADD__(v32, v143))
        {
          goto LABEL_138;
        }

        if (v32 + v143 < v64)
        {
          v64 = v32 + v143;
        }

        if (v64 < v32)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v137 = sub_1001C9D08(a4);
          goto LABEL_109;
        }

        if (v45 != v64)
        {
          break;
        }
      }
    }

    v30 = v45;
    if (v45 < v32)
    {
      goto LABEL_136;
    }

LABEL_36:
    v65 = v31;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v65;
    }

    else
    {
      v31 = sub_1001C9E00(0, *(v65 + 2) + 1, 1, v65);
    }

    a3 = *(v31 + 2);
    v66 = *(v31 + 3);
    v67 = a3 + 1;
    if (a3 >= v66 >> 1)
    {
      v31 = sub_1001C9E00((v66 > 1), a3 + 1, 1, v31);
    }

    *(v31 + 2) = v67;
    v68 = &v31[16 * a3];
    *(v68 + 4) = v32;
    *(v68 + 5) = v30;
    v69 = *v146;
    if (!*v146)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v67 - 1;
        if (v67 >= 4)
        {
          break;
        }

        if (v67 == 3)
        {
          v70 = *(v31 + 4);
          v71 = *(v31 + 5);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_55:
          if (v73)
          {
            goto LABEL_125;
          }

          v86 = &v31[16 * v67];
          v88 = *v86;
          v87 = *(v86 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_128;
          }

          v92 = &v31[16 * a3 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v80 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v80)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v90, v95))
          {
            goto LABEL_132;
          }

          if (v90 + v95 >= v72)
          {
            if (v72 < v95)
            {
              a3 = v67 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v96 = &v31[16 * v67];
        v98 = *v96;
        v97 = *(v96 + 1);
        v80 = __OFSUB__(v97, v98);
        v90 = v97 - v98;
        v91 = v80;
LABEL_69:
        if (v91)
        {
          goto LABEL_127;
        }

        v99 = &v31[16 * a3];
        v101 = *(v99 + 4);
        v100 = *(v99 + 5);
        v80 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v80)
        {
          goto LABEL_130;
        }

        if (v102 < v90)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v67)
        {
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
          goto LABEL_139;
        }

        if (!*v154)
        {
          goto LABEL_143;
        }

        v107 = v31;
        v108 = *&v31[16 * a4 + 32];
        v109 = *&v31[16 * a3 + 40];
        sub_1001C9308((*v154 + 8 * v108), (*v154 + 8 * *&v31[16 * a3 + 32]), (*v154 + 8 * v109), v69);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v109 < v108)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v107 = sub_1001C9D08(v107);
        }

        if (a4 >= *(v107 + 2))
        {
          goto LABEL_122;
        }

        v110 = &v107[16 * a4];
        *(v110 + 4) = v108;
        *(v110 + 5) = v109;
        v171 = v107;
        a4 = &v171;
        sub_1001C9C7C(a3);
        v31 = v171;
        v67 = *(v171 + 2);
        if (v67 <= 1)
        {
          goto LABEL_3;
        }
      }

      v74 = &v31[16 * v67 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_123;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_124;
      }

      v81 = &v31[16 * v67];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_126;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_129;
      }

      if (v85 >= v77)
      {
        v103 = &v31[16 * a3 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_133;
        }

        if (v72 < v106)
        {
          a3 = v67 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v29 = v154[1];
    if (v30 >= v29)
    {
      goto LABEL_106;
    }
  }

  v147 = v64;
  v145 = v31;
  v152 = v5;
  v161 = *v154;
  v111 = v161 + 8 * v45 - 8;
  v144 = v32;
  v112 = v32 - v45;
LABEL_87:
  v156 = v45;
  v113 = *(v161 + 8 * v45);
  v148 = v112;
  v149 = v111;
  while (1)
  {
    v114 = *v111;
    v115 = v113;
    v116 = v114;
    v166 = v115;
    v117 = [v115 creationDate];
    if (v117)
    {
      v118 = v165;
      v119 = v117;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v120 = *v164;
      v121 = v160;
      (*v164)(v160, v118, v17);
      v122 = *v168;
      (*v168)(v121, 0, 1, v17);
      (v120)(v167, v121, v17);
    }

    else
    {
      v122 = *v168;
      v123 = v160;
      (*v168)(v160, 1, 1, v17);
      static Date.now.getter();
      if ((*v157)(v123, 1, v17) != 1)
      {
        sub_1000EEE6C(v123, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v124 = [v116 creationDate];
    if (v124)
    {
      v125 = v165;
      v126 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v127 = v163;
      v128 = *v164;
      v129 = v125;
      v130 = v158;
      (*v164)(v163, v129, v158);
      v122(v127, 0, 1, v130);
      v131 = v159;
      v128();
      v17 = v130;
    }

    else
    {
      v132 = v163;
      v17 = v158;
      v122(v163, 1, 1, v158);
      v131 = v159;
      static Date.now.getter();
      if ((*v157)(v132, 1, v17) != 1)
      {
        sub_1000EEE6C(v163, &qword_1002F7EF0, &unk_100226C90);
      }
    }

    v133 = v167;
    a4 = static Date.> infix(_:_:)();
    a3 = v162;
    v134 = *v162;
    (*v162)(v131, v17);
    v134(v133, v17);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v45 = v156 + 1;
      v111 = v149 + 8;
      v112 = v148 - 1;
      if (v156 + 1 != v147)
      {
        goto LABEL_87;
      }

      v5 = v152;
      v31 = v145;
      v32 = v144;
      v30 = v147;
      if (v147 < v144)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v161)
    {
      break;
    }

    v135 = *v111;
    v113 = *(v111 + 8);
    *v111 = v113;
    *(v111 + 8) = v135;
    v111 -= 8;
    if (__CFADD__(v112++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_1001C8A3C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = type metadata accessor for SoundProfileRecord();
  v8 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v46 = &v38 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v51 = a1;
  v50 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v17;
    if (v17 >= 1)
    {
      v25 = -v13;
      v26 = a4 + v17;
      v42 = a1;
      v43 = a4;
      v41 = -v13;
      do
      {
        v39 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        v45 = v28;
        while (1)
        {
          if (v27 <= a1)
          {
            v51 = v27;
            v49 = v39;
            goto LABEL_59;
          }

          v40 = v24;
          v30 = v48;
          v31 = a3 + v25;
          v32 = v26 + v25;
          v33 = v46;
          sub_1001CC14C(v32, v46, type metadata accessor for SoundProfileRecord);
          v34 = v47;
          sub_1001CC14C(v28, v47, type metadata accessor for SoundProfileRecord);
          v35 = *(v30 + 28);
          v36 = static Date.> infix(_:_:)();
          sub_1001CC1B4(v34, type metadata accessor for SoundProfileRecord);
          sub_1001CC1B4(v33, type metadata accessor for SoundProfileRecord);
          if (v36)
          {
            break;
          }

          v24 = v32;
          if (a3 < v26 || v31 >= v26)
          {
            a3 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v37 = a3 == v26;
            a3 = v31;
            a1 = v42;
            if (!v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v27 = v44;
          v29 = v32 > v43;
          v28 = v45;
          v25 = v41;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_58;
          }
        }

        if (a3 < v44 || v31 >= v44)
        {
          a3 = v31;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v41;
          a1 = v42;
          v24 = v40;
        }

        else
        {
          v37 = a3 == v44;
          a3 = v31;
          a2 = v45;
          v25 = v41;
          a1 = v42;
          v24 = v40;
          if (!v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_58:
    v51 = a2;
    v49 = v24;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v45 = a4 + v16;
    v49 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v46;
        sub_1001CC14C(a2, v46, type metadata accessor for SoundProfileRecord);
        v21 = v47;
        sub_1001CC14C(a4, v47, type metadata accessor for SoundProfileRecord);
        v22 = *(v48 + 28);
        v23 = static Date.> infix(_:_:)();
        sub_1001CC1B4(v21, type metadata accessor for SoundProfileRecord);
        sub_1001CC1B4(v20, type metadata accessor for SoundProfileRecord);
        if (v23)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v50 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v51 = a1;
      }

      while (a4 < v45 && a2 < a3);
    }
  }

LABEL_59:
  sub_1001C9D1C(&v51, &v50, &v49);
}

uint64_t sub_1001C8F6C(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
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
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_1001BC694(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_1001BC694(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_1001C9308(void **a1, void **a2, char *a3, void **a4)
{
  v8 = sub_1000EE870(&qword_1002F7EF0, &unk_100226C90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v99 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v97 = &v91 - v12;
  __chkstk_darwin(v13);
  v100 = &v91 - v14;
  __chkstk_darwin(v15);
  v98 = &v91 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v96 = (&v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v104 = &v91 - v21;
  __chkstk_darwin(v22);
  v95 = (&v91 - v23);
  __chkstk_darwin(v24);
  v105 = &v91 - v25;
  __chkstk_darwin(v26);
  v103 = &v91 - v28;
  v29 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v29 = a2 - a1;
  }

  v30 = v29 >> 3;
  v31 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v31 = a3 - a2;
  }

  v32 = v31 >> 3;
  if (v30 < v31 >> 3)
  {
    if (a4 != a1 || &a1[v30] <= a4)
    {
      v33 = v27;
      memmove(a4, a1, 8 * v30);
      v27 = v33;
    }

    v94 = &a4[v30];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v34 = a1;
      if (a2 < a3)
      {
        v99 = (v27 + 32);
        v104 = (v27 + 56);
        v96 = (v27 + 48);
        v97 = (v27 + 8);
        v35 = v94;
        while (1)
        {
          v102 = a2;
          v36 = *a2;
          v106 = a4;
          v37 = *a4;
          v38 = v36;
          v39 = v37;
          v101 = v38;
          v40 = [v38 creationDate];
          if (v40)
          {
            v41 = v40;
            v42 = v105;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v43 = v98;
            v44 = *v99;
            (*v99)(v98, v42, v17);
            v45 = *v104;
            (*v104)(v43, 0, 1, v17);
            v44(v103, v43, v17);
          }

          else
          {
            v45 = *v104;
            v46 = v98;
            (*v104)(v98, 1, 1, v17);
            static Date.now.getter();
            if ((*v96)(v46, 1, v17) != 1)
            {
              sub_1000EEE6C(v46, &qword_1002F7EF0, &unk_100226C90);
            }
          }

          v47 = [v39 creationDate];
          if (v47)
          {
            v48 = v34;
            v49 = v105;
            v50 = v47;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v51 = v100;
            v52 = *v99;
            v53 = v49;
            v34 = v48;
            v35 = v94;
            (*v99)(v100, v53, v17);
            v45(v51, 0, 1, v17);
            v54 = v95;
            v52(v95, v51, v17);
          }

          else
          {
            v55 = v100;
            v45(v100, 1, 1, v17);
            v54 = v95;
            static Date.now.getter();
            if ((*v96)(v55, 1, v17) != 1)
            {
              sub_1000EEE6C(v100, &qword_1002F7EF0, &unk_100226C90);
            }
          }

          v56 = v103;
          v57 = static Date.> infix(_:_:)();
          v58 = v54;
          v59 = *v97;
          (*v97)(v58, v17);
          v59(v56, v17);

          if ((v57 & 1) == 0)
          {
            break;
          }

          v60 = v102;
          a2 = v102 + 1;
          a4 = v106;
          if (v34 != v102)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v34;
          if (a4 >= v35 || a2 >= a3)
          {
            a2 = v34;
            goto LABEL_56;
          }
        }

        v60 = v106;
        a4 = v106 + 1;
        a2 = v102;
        if (v34 == v106)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v34 = *v60;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v35 = v94;
    goto LABEL_56;
  }

  v92 = a1;
  if (a4 != a2 || &a2[v32] <= a4)
  {
    v61 = v27;
    memmove(a4, a2, 8 * v32);
    v27 = v61;
  }

  v35 = &a4[v32];
  if (a3 - a2 >= 8 && a2 > v92)
  {
    v98 = (v27 + 32);
    v103 = (v27 + 56);
    v93 = (v27 + 48);
    v94 = (v27 + 8);
    v106 = a4;
    do
    {
      v102 = a2;
      v62 = a2 - 1;
      a3 -= 8;
      v63 = v35;
      v95 = v62;
      while (1)
      {
        v64 = *--v63;
        v65 = *v62;
        v66 = v64;
        v67 = v65;
        v68 = [v66 creationDate];
        v101 = v66;
        if (v68)
        {
          v69 = v68;
          v70 = v105;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v71 = v97;
          v72 = *v98;
          (*v98)(v97, v70, v17);
          v73 = *v103;
          (*v103)(v71, 0, 1, v17);
          v72(v104, v71, v17);
        }

        else
        {
          v73 = *v103;
          v74 = v97;
          (*v103)(v97, 1, 1, v17);
          static Date.now.getter();
          if ((*v93)(v74, 1, v17) != 1)
          {
            sub_1000EEE6C(v74, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v100 = v67;
        v75 = [v67 creationDate];
        if (v75)
        {
          v76 = a3;
          v77 = v35;
          v78 = v105;
          v79 = v75;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v80 = v99;
          v81 = *v98;
          v82 = v78;
          v35 = v77;
          a3 = v76;
          (*v98)(v99, v82, v17);
          v73(v80, 0, 1, v17);
          v83 = v96;
          v81(v96, v80, v17);
        }

        else
        {
          v84 = v99;
          v73(v99, 1, 1, v17);
          v83 = v96;
          static Date.now.getter();
          if ((*v93)(v84, 1, v17) != 1)
          {
            sub_1000EEE6C(v99, &qword_1002F7EF0, &unk_100226C90);
          }
        }

        v85 = v104;
        v86 = static Date.> infix(_:_:)();
        v87 = *v94;
        (*v94)(v83, v17);
        v87(v85, v17);

        v88 = (a3 + 8);
        if (v86)
        {
          break;
        }

        a4 = v106;
        v62 = v95;
        if (v88 != v35)
        {
          *a3 = *v63;
        }

        a3 -= 8;
        v35 = v63;
        if (v63 <= a4)
        {
          v35 = v63;
          a2 = v102;
          goto LABEL_56;
        }
      }

      a4 = v106;
      v89 = v95;
      if (v88 != v102)
      {
        *a3 = *v95;
      }

      if (v35 <= a4)
      {
        break;
      }

      a2 = v89;
    }

    while (v89 > v92);
    a2 = v89;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v35 - a4 + (v35 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v35 - a4));
  }

  return 1;
}

uint64_t sub_1001C9C7C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001C9D08(v3);
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
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1001C9D1C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SoundProfileRecord();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1001C9E00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&unk_1002F9D10, &unk_100229A20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_1001C9F04(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1001C5718();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1001CA040(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1001CA040(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001CA204(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

void (*sub_1001CA268(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1001CA2E8;
  }

  __break(1u);
  return result;
}

void *sub_1001CA2F0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1001C4D04(v3, 0);
  sub_1001CA384(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001CA384(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
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
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000FA0E0(&qword_1002F9D08, &qword_1002F9D00, &qword_1002292D8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000EE870(&qword_1002F9D00, &qword_1002292D8);
            v9 = sub_1001CA268(v13, i, a3);
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
        sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
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

uint64_t sub_1001CA5C4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001CA61C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  *(v5 + 56) = [objc_allocWithZone(ACAccountStore) init];
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_networkUp) = 1;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___fileManager) = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_retryTimer) = 0;
  v9 = (v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore____lazy_storage___cloudCoordinator);
  *v9 = 0;
  v9[1] = 0;
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_incomingPairedDevices) = &_swiftEmptySetSingleton;
  static os_log_type_t.default.getter();
  if (qword_1002F7AD8 != -1)
  {
    swift_once();
  }

  sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100226100;
  v11 = URL.absoluteString.getter();
  v13 = v12;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_1000EE954();
  *(v10 + 32) = v11;
  *(v10 + 40) = v13;
  os_log(_:dso:log:_:_:)();

  *(v5 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v14 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_directoryURL;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5 + v14, a3, v15);
  *(v5 + OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue) = a4;
  v17 = objc_opt_self();
  v18 = a4;
  v19 = [v17 defaultCenter];
  v23[4] = sub_1001CDDB0;
  v23[5] = v5;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1001956D0;
  v23[3] = &unk_1002C1160;
  v20 = _Block_copy(v23);

  v21 = [v19 addObserverForName:@"com.apple.bluetooth.services.BTNetworkMonitor.networkChanged" object:0 queue:0 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  (*(v16 + 8))(a3, v15);
  return v5;
}

unint64_t sub_1001CA940(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_22:
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v20 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v18 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = [v4 bluetoothAddress];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = [a2 bluetoothAddress];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_21;
    }
  }

  return v3;
}

unint64_t sub_1001CAADC(unint64_t *a1, void *a2)
{
  v5 = a2;
  v7 = *a1;
  result = sub_1001CA940(*a1, a2);
  if (v2)
  {
    return result;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = a1;
  v33 = result;
  v10 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v10 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v33;
      }
    }

    else if (v10 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v33;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_17;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_48;
    }

    v12 = *(v7 + 8 * v10 + 32);
LABEL_17:
    v4 = v12;
    v13 = [v12 bluetoothAddress];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v3 = v5;
    v17 = [v5 bluetoothAddress];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (v14 == v18 && v16 == v20)
    {
LABEL_8:

LABEL_9:
      v5 = v3;
      goto LABEL_10;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      goto LABEL_9;
    }

    v5 = v3;
    if (v33 != v10)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v33 & 0x8000000000000000) != 0)
        {
          goto LABEL_52;
        }

        v24 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v33 >= v24)
        {
          goto LABEL_53;
        }

        if (v10 >= v24)
        {
          goto LABEL_54;
        }

        v25 = *(v7 + 32 + 8 * v10);
        v22 = *(v7 + 32 + 8 * v33);
        v23 = v25;
      }

      v26 = v23;
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
      {
        v7 = sub_1001CA204(v7);
        v27 = (v7 >> 62) & 1;
      }

      else
      {
        LODWORD(v27) = 0;
      }

      v28 = v7 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20);
      *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v33 + 0x20) = v26;

      if ((v7 & 0x8000000000000000) != 0 || v27)
      {
        v7 = sub_1001CA204(v7);
        v28 = v7 & 0xFFFFFFFFFFFFFF8;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_44:
          __break(1u);
          return v33;
        }
      }

      else if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_44;
      }

      if (v10 >= *(v28 + 16))
      {
        goto LABEL_51;
      }

      v30 = v28 + 8 * v10;
      v31 = *(v30 + 32);
      *(v30 + 32) = v22;

      *v32 = v7;
    }

    v11 = __OFADD__(v33++, 1);
    if (v11)
    {
      goto LABEL_50;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1001CADEC@<X0>(uint64_t (*a1)(uint64_t, unint64_t)@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001CAE78(*(v2 + 16), a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001CAE78(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t))
{
  if ([objc_opt_self() isFirstUnlocked])
  {
    v4 = Data.init(contentsOf:options:)();
    if (v2)
    {

      return 0;
    }

    else
    {
      v6 = v4;
      v7 = v5;
      v8 = objc_autoreleasePoolPush();
      v10 = a2(v6, v7);
      objc_autoreleasePoolPop(v8);
      sub_1000EF870(v6, v7);
      return v10;
    }
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_1002F7AF0 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return 0;
  }
}

uint64_t sub_1001CB1AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001CB260(uint64_t a1)
{
  v3 = *(type metadata accessor for SoundProfileRecord() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1 + v6;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + v8);

  return sub_1001BB9D8(a1, v1 + v4, v7, v10, v11, v12);
}

uint64_t sub_1001CB38C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000FA784(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001CB3DC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1001CB420(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1001CB464(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_1001CB4D8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for DeviceRecord() + 20);
  return static UUID.== infix(_:_:)() & 1;
}

id sub_1001CB634(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1001CB640(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1001CB674(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1001CB76C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for LegacyAccountMagicKeysRecord, sub_100183538, type metadata accessor for LegacyAccountMagicKeysRecord, a1);
}

void sub_1001CB820(uint64_t a1)
{
  v3 = *(type metadata accessor for MagicPairingSettingsRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1001B69D0(a1, v4);
}

uint64_t sub_1001CB994()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CBA8C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_1001CBC10()
{
  sub_1001633D8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001CBFB8()
{
  sub_1001633D8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1001CC044@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for SoundProfileRecord, sub_100182D08, type metadata accessor for SoundProfileRecord, a1);
}

uint64_t sub_1001CC09C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for LegacyMagicPairingSettingsRecords, sub_100183744, type metadata accessor for LegacyMagicPairingSettingsRecords, a1);
}

uint64_t sub_1001CC0F4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for BTDeferredRecord, sub_100183950, type metadata accessor for BTDeferredRecord, a1);
}

uint64_t sub_1001CC14C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001CC214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001CC27C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1001CC2D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10018AE70(type metadata accessor for CloudCoordinatorConfiguration, sub_10018332C, type metadata accessor for CloudCoordinatorConfiguration, a1);
}

uint64_t sub_1001CC32C(uint64_t a1, unint64_t a2)
{
  v133 = type metadata accessor for DispatchWorkItemFlags();
  v118 = *(v133 - 8);
  v4 = *(v118 + 64);
  __chkstk_darwin(v133);
  v132 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for DispatchQoS();
  v117 = *(v131 - 8);
  v6 = *(v117 + 64);
  __chkstk_darwin(v131);
  v130 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EE870(&qword_1002F8000, &unk_1002262C0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v127 = &v116 - v10;
  v135 = type metadata accessor for UUID();
  v11 = *(v135 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v135);
  v129 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_log_type_t.default.getter();
  if (qword_1002F7AE8 != -1)
  {
    goto LABEL_133;
  }

  while (1)
  {
    v14 = qword_100300E38;
    v124 = sub_1000EE870(&unk_1002F8260, &unk_1002262B0);
    v15 = swift_allocObject();
    v126 = xmmword_100226100;
    *(v15 + 16) = xmmword_100226100;
    v16 = *(a1 + 16);
    *(v15 + 56) = &type metadata for Int;
    *(v15 + 64) = &protocol witness table for Int;
    *(v15 + 32) = v16;
    v125 = v14;
    os_log(_:dso:log:_:_:)();

    v119 = a2 >> 62;
    if (!v16)
    {
      break;
    }

    v17 = v16;
    v142 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      v115 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v16;
      v144 = v115;
    }

    else
    {
      v144 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    v138 = (a1 + 32);
    v143 = a2 & 0xC000000000000001;
    v136 = 0x8000000100267AF0;
    v122 = 0x8000000100267220;
    v116 = 0x8000000100267960;
    v123 = (v11 + 48);
    v121 = (v11 + 32);
    v128 = "le error %@";
    v120 = (v11 + 8);
    v134 = _swiftEmptyArrayStorage;
    v137 = v17;
    while (1)
    {
      if (v18 == v17)
      {
        goto LABEL_128;
      }

      v140 = v18;
      v21 = &v138[3 * v18];
      v22 = v21[1];
      v11 = v21[2];
      v145 = *v21;
      v141 = v11;

      if (!v144)
      {
LABEL_28:
        v39 = [v145 zoneID];
        v40 = [v39 zoneName];

        a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v42 = v41;

        v43 = a1 == 0xD000000000000012 && v136 == v42;
        if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v151 = &type metadata for AudioAccessoryFeatures;
          v152 = sub_1000F1874();
          v44 = isFeatureEnabled(_:)();
          sub_1000EF824(aBlock);
          if (v44)
          {
LABEL_43:
            v46 = [v145 recordName];
            static String._unconditionallyBridgeFromObjectiveC(_:)();

            v47 = v127;
            UUID.init(uuidString:)();

            v48 = v135;
            if ((*v123)(v47, 1, v135) == 1)
            {
              sub_1000EEE6C(v47, &qword_1002F8000, &unk_1002262C0);
LABEL_76:
              v11 = v145;
              a1 = v139;
              sub_1001A73C4(v145, v22, v141, 1);

              goto LABEL_7;
            }

            v49 = v129;
            (*v121)(v129, v47, v48);
            v50 = sub_1001BD42C(v49, v22, v141, &v147);
            if (!v148)
            {
              (*v120)(v49, v48, v50);
              sub_1000EEE6C(&v147, &qword_1002F9D98, &qword_100229A58);
              goto LABEL_76;
            }

            sub_1001CB640(&v147, aBlock);
            v51 = v151;
            v52 = v152;
            sub_1000EF78C(aBlock, v151);
            v53 = (*(v52 + 56))(v51, v52);
            v54 = [v53 encryptedValues];

            v55 = String._bridgeToObjectiveC()();
            v56 = [v54 objectForKeyedSubscript:v55];
            swift_unknownObjectRelease();

            if (v56)
            {
              v146 = v56;
              sub_1000EE870(&qword_1002F8610, &unk_1002262D0);
              v57 = swift_dynamicCast();
              a1 = v135;
              v58 = v129;
              if (v57)
              {
                v59 = *(&v147 + 1);
                if (v144)
                {
                  v60 = 0;
                  v11 = v147;
                  while (1)
                  {
                    if (v143)
                    {
                      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v60 >= *(v142 + 16))
                      {
                        goto LABEL_130;
                      }

                      v61 = *(a2 + 8 * v60 + 32);
                    }

                    v62 = v61;
                    v63 = v60 + 1;
                    if (__OFADD__(v60, 1))
                    {
                      goto LABEL_129;
                    }

                    v64 = [v61 encryptedValues];
                    swift_getObjectType();
                    CKRecordKeyValueSetting.subscript.getter();
                    swift_unknownObjectRelease();
                    if (*(&v147 + 1))
                    {
                      break;
                    }

LABEL_51:
                    ++v60;
                    a1 = v135;
                    if (v63 == v144)
                    {
                      goto LABEL_73;
                    }
                  }

                  if (v147 == __PAIR128__(v59, v11))
                  {

LABEL_60:
                    if (CKRecord.recordType.getter() == v22 && v66 == v141)
                    {

LABEL_91:

                      static os_log_type_t.debug.getter();
                      v72 = swift_allocObject();
                      *(v72 + 16) = v126;
                      sub_1001CB674(aBlock, &v147);
                      sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
                      v73 = String.init<A>(describing:)();
                      v75 = v74;
                      *(v72 + 56) = &type metadata for String;
                      *(v72 + 64) = sub_1000EE954();
                      *(v72 + 32) = v73;
                      *(v72 + 40) = v75;
                      os_log(_:dso:log:_:_:)();

                      static os_log_type_t.default.getter();
                      v76 = swift_allocObject();
                      *(v76 + 16) = v126;
                      *(v76 + 56) = sub_1000FA784(0, &qword_1002F85A0, CKRecord_ptr);
                      *(v76 + 64) = sub_1001CB38C(&qword_1002F7BE0, &qword_1002F85A0, CKRecord_ptr);
                      *(v76 + 32) = v62;
                      v11 = v62;
                      os_log(_:dso:log:_:_:)();

                      sub_1001CB674(aBlock, &v147);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v134 = sub_1001CF63C(0, v134[2] + 1, 1, v134);
                      }

                      v78 = v134[2];
                      v77 = v134[3];
                      a1 = v78 + 1;
                      if (v78 >= v77 >> 1)
                      {
                        v134 = sub_1001CF63C((v77 > 1), v78 + 1, 1, v134);
                      }

                      (*v120)(v129, v135);
                      v79 = v134;
                      v134[2] = a1;
                      sub_1001CB640(&v147, &v79[5 * v78 + 4]);
                      sub_1000EF824(aBlock);
                      goto LABEL_7;
                    }

                    v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v67)
                    {
                      goto LABEL_91;
                    }
                  }

                  else
                  {
                    v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v65)
                    {
                      goto LABEL_60;
                    }
                  }

                  v58 = v129;
                  goto LABEL_51;
                }

LABEL_73:
              }

              (*v120)(v58, a1);
            }

            else
            {
              (*v120)(v129, v135);
            }

            sub_1000EF824(aBlock);
            goto LABEL_76;
          }

LABEL_6:

          v11 = static os_log_type_t.error.getter();
          a1 = swift_allocObject();
          *(a1 + 16) = v126;
          *(a1 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
          *(a1 + 64) = sub_1001CB38C(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
          v19 = v145;
          *(a1 + 32) = v145;
          v20 = v19;
          os_log(_:dso:log:_:_:)();

          goto LABEL_7;
        }

        v45 = a1 == 0xD00000000000001ELL && v122 == v42;
        if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_43;
        }

        if (a1 == 0xD000000000000010 && v116 == v42)
        {
        }

        else
        {
          a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((a1 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v11 = 0;
        while (v144 != v11)
        {
          if (v143)
          {
            v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v11 >= *(v142 + 16))
            {
              goto LABEL_132;
            }

            v70 = *(a2 + 8 * v11 + 32);
          }

          a1 = v70;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_131;
          }

          if (CKRecord.recordType.getter() == v22 && v71 == v141)
          {

            goto LABEL_7;
          }

          v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++v11;
          if (v69)
          {

            goto LABEL_7;
          }
        }

        goto LABEL_76;
      }

      v23 = 0;
LABEL_13:
      if (v143)
      {
        v25 = a2;
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v142 + 16))
        {
          goto LABEL_127;
        }

        v25 = a2;
        v26 = *(a2 + 8 * v23 + 32);
      }

      a1 = v26;
      a2 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      v27 = [v26 recordID];
      v28 = [v27 recordName];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v30;

      v31 = [v145 recordName];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = v29 == v32 && v11 == v34;
      if (v35)
      {
      }

      else
      {
        v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v36 & 1) == 0)
        {

          goto LABEL_12;
        }
      }

      v37 = CKRecord.recordType.getter();
      v11 = v38;
      if (v37 == v22 && v38 == v141)
      {

        goto LABEL_36;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v24 & 1) == 0)
      {
LABEL_12:
        ++v23;
        v35 = a2 == v144;
        a2 = v25;
        if (v35)
        {
          goto LABEL_28;
        }

        goto LABEL_13;
      }

LABEL_36:
      a2 = v25;
LABEL_7:
      v18 = v140 + 1;
      v17 = v137;
      if (v140 + 1 == v137)
      {
        goto LABEL_97;
      }
    }

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
    swift_once();
  }

  v134 = _swiftEmptyArrayStorage;
LABEL_97:
  static os_log_type_t.default.getter();
  v80 = swift_allocObject();
  *(v80 + 16) = v126;
  if (v119)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v80 + 56) = &type metadata for Int;
  *(v80 + 64) = &protocol witness table for Int;
  *(v80 + 32) = v81;
  os_log(_:dso:log:_:_:)();

  aBlock[0] = sub_1001CA2F0(v82);
  sub_1001C5B54(aBlock, sub_1001C7CB8, sub_1001C618C);
  v83 = aBlock[0];
  if (aBlock[0] < 0 || (aBlock[0] & 0x4000000000000000) != 0)
  {
    v84 = _CocoaArrayWrapper.endIndex.getter();
    if (v84)
    {
      goto LABEL_102;
    }

LABEL_136:
  }

  v84 = *(aBlock[0] + 16);
  if (!v84)
  {
    goto LABEL_136;
  }

LABEL_102:
  if (v84 >= 1)
  {
    v85 = 0;
    v86 = 0x8000000100267AF0;
    v142 = OBJC_IVAR____TtC15audioaccessoryd11DeviceStore_clientQueue;
    v145 = (v83 & 0xC000000000000001);
    v137 = 0x8000000100267220;
    v136 = 0x8000000100267960;
    v141 = &v150;
    v140 = (v118 + 8);
    v138 = (v117 + 8);
    v143 = 0x8000000100267AF0;
    v144 = v83;
    while (1)
    {
      if (v145)
      {
        v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v100 = *(v83 + 8 * v85 + 32);
      }

      v101 = v100;
      v102 = [v100 recordID];
      v103 = [v102 zoneID];

      v104 = [v103 zoneName];
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v107 = v106;

      v108 = v105 == 0xD000000000000012 && v86 == v107;
      if (v108 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v151 = &type metadata for AudioAccessoryFeatures;
        v152 = sub_1000F1874();
        v109 = isFeatureEnabled(_:)();
        sub_1000EF824(aBlock);
        if ((v109 & 1) == 0)
        {

          goto LABEL_106;
        }
      }

      else
      {
        v110 = v105 == 0xD00000000000001ELL && v137 == v107;
        if (v110 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v105 == 0xD000000000000010 && v136 == v107)
        {
        }

        else
        {
          v111 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v111 & 1) == 0)
          {
            LODWORD(v135) = static os_log_type_t.error.getter();
            v112 = swift_allocObject();
            *(v112 + 16) = v126;
            v113 = [v101 recordID];
            *(v112 + 56) = sub_1000FA784(0, &unk_1002F8B50, CKRecordID_ptr);
            *(v112 + 64) = sub_1001CB38C(&qword_1002F9418, &unk_1002F8B50, CKRecordID_ptr);
            *(v112 + 32) = v113;
            os_log(_:dso:log:_:_:)();

            goto LABEL_106;
          }
        }
      }

      v87 = v139;
      v88 = *(v139 + v142);
      v89 = swift_allocObject();
      v89[2] = v87;
      v89[3] = v101;
      v89[4] = v134;
      v152 = sub_1001CD924;
      v153 = v89;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v150 = sub_1001742E0;
      v151 = &unk_1002C1098;
      v90 = _Block_copy(aBlock);
      v91 = v88;

      v92 = v101;

      v93 = v130;
      static DispatchQoS.unspecified.getter();
      *&v147 = _swiftEmptyArrayStorage;
      sub_1001C4BB4(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
      sub_1000FA0E0(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
      v94 = v84;
      v95 = v132;
      v96 = v133;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v90);

      v97 = v95;
      v84 = v94;
      v98 = v96;
      v83 = v144;
      (*v140)(v97, v98);
      v99 = v93;
      v86 = v143;
      (*v138)(v99, v131);

LABEL_106:
      if (v84 == ++v85)
      {
        goto LABEL_136;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1001CD924()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_10019A610(v1, v2, 1);
}

uint64_t sub_1001CD954()
{
  v1 = (type metadata accessor for DeviceSupportInformationRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v7 = *(v5 + v1[8] + 8);

  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[10] + 8);

  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12] + 8);

  v12 = *(v5 + v1[13] + 8);

  v13 = *(v5 + v1[14] + 8);

  v14 = *(v5 + v1[15] + 8);

  v15 = *(v5 + v1[16] + 8);

  v16 = *(v5 + v1[17] + 8);

  v17 = v1[18];
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1001CDB34()
{
  v1 = *(type metadata accessor for DeviceSupportInformationRecord() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_1001B031C(v0 + v2, v4);
}

uint64_t sub_1001CDBC4()
{
  v1 = (type metadata accessor for DeviceSupportInformationRecord() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v7 = *(v5 + v1[8] + 8);

  v8 = *(v5 + v1[9] + 8);

  v9 = *(v5 + v1[10] + 8);

  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12] + 8);

  v12 = *(v5 + v1[13] + 8);

  v13 = *(v5 + v1[14] + 8);

  v14 = *(v5 + v1[15] + 8);

  v15 = *(v5 + v1[16] + 8);

  v16 = *(v5 + v1[17] + 8);

  v17 = v1[18];
  v18 = type metadata accessor for Date();
  (*(*(v18 - 8) + 8))(v5 + v17, v18);
  v19 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_1001CDDB8()
{
  v1 = *(type metadata accessor for Notification() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10019549C(v0 + v2, v3);
}

unint64_t sub_1001CDE44(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1001CDE60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001CDEBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1001CDF1C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_1001CDF5C()
{
  result = qword_1002F9EA0;
  if (!qword_1002F9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9EA0);
  }

  return result;
}

unint64_t sub_1001CE350()
{
  result = qword_1002F9EC0;
  if (!qword_1002F9EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002F9EC0);
  }

  return result;
}

uint64_t sub_1001CE40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1001CE350();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

__int16 Data.hexString.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = "othcloud.user.services";
  if (("othcloud.user.services" & 0x1000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v10 = String.UTF16View._nativeGetOffset(for:)();
  if (v10)
  {
    while (1)
    {
      v11 = v10;
      v12 = sub_1001CFAEC(v10, 0);
      v9 = sub_1001CF818(v33, (v12 + 4), v11, 0xD000000000000010, v9 | 0x8000000000000000);

      if (v9 == v11)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v10 = String.UTF16View._foreignCount()();
      if (!v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = &_swiftEmptyArrayStorage;
  }

  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(a2);
      goto LABEL_16;
    }

LABEL_14:
    LODWORD(v14) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_33:
      __break(1u);
      return v10;
    }

    v14 = v14;
    goto LABEL_16;
  }

  if (v13 != 2)
  {
    v18 = sub_1001CEFD0(0, 0, 0, &_swiftEmptyArrayStorage);
    goto LABEL_20;
  }

  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  v17 = __OFSUB__(v15, v16);
  v14 = v15 - v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  if (v14 + 0x4000000000000000 < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v18 = sub_1001CEFD0(0, (2 * v14) & ~((2 * v14) >> 63), 0, &_swiftEmptyArrayStorage);
  if (v13 == 2)
  {
    v19 = *(a1 + 16);
  }

LABEL_20:
  sub_1000EE9F4(a1, a2);
  Data.Iterator.init(_:at:)();
  LOWORD(v10) = Data.Iterator.next()();
  if ((v10 & 0x100) == 0)
  {
    v20 = v10;
    v21 = (v12 + 4);
    while (1)
    {
      v22 = v20 >> 4;
      if (v22 >= v12[2])
      {
        break;
      }

      v23 = *&v21[2 * v22];
      v25 = *(v18 + 2);
      v24 = *(v18 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v10 = sub_1001CEFD0((v24 > 1), v25 + 1, 1, v18);
        v18 = v10;
      }

      *(v18 + 2) = v26;
      *&v18[2 * v25 + 32] = v23;
      if ((v20 & 0xF) >= v12[2])
      {
        goto LABEL_31;
      }

      v27 = *&v21[2 * (v20 & 0xF)];
      v28 = *(v18 + 3);
      if ((v25 + 2) > (v28 >> 1))
      {
        v18 = sub_1001CEFD0((v28 > 1), v25 + 2, 1, v18);
      }

      *(v18 + 2) = v25 + 2;
      *&v18[2 * v26 + 32] = v27;
      LOWORD(v10) = Data.Iterator.next()();
      v20 = v10;
      if ((v10 & 0x100) != 0)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_29:
  (*(v5 + 8))(v8, v4);

  v29 = *(v18 + 2);
  v30 = String.init(utf16CodeUnits:count:)();

  LOWORD(v10) = v30;
  return v10;
}

uint64_t Data.write(to:excludeFromBackup:options:)(uint64_t a1, int a2)
{
  v17[3] = a2;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLResourceValues();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v20;
  result = Data.write(to:options:)();
  if (!v13)
  {
    URLResourceValues.init()();
    URLResourceValues.isExcludedFromBackup.setter();
    v15 = v19;
    v16 = v18;
    (*(v19 + 16))(v7, a1, v18);
    URL.setResourceValues(_:)();
    (*(v15 + 8))(v7, v16);
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t Data.init(hexString:)()
{
  if (String.count.getter())
  {

    return 0;
  }

  else
  {
    v0 = String.uppercased()();
    v18 = sub_1001CFB68(v0._countAndFlagsBits, v0._object);

    result = String.count.getter();
    if (result >= -1)
    {
      if (result <= 1)
      {
        v3 = _swiftEmptyArrayStorage;
      }

      else
      {
        v2 = result / 2;
        v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v3[2] = v2;
        bzero(v3 + 4, v2);
      }

      v4 = String.count.getter();

      if (v4 < 1)
      {
LABEL_29:

        v17 = sub_1001CFE50(v3);

        return v17;
      }

      v5 = 0;
      v6 = v18 + 32;
      v7 = *(v18 + 2);
      while (1)
      {
        v8 = __OFADD__(v5, 2) ? 0x7FFFFFFFFFFFFFFFLL : v5 + 2;
        if (v5 >= v7)
        {
          break;
        }

        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_33;
        }

        if (v9 >= v7)
        {
          goto LABEL_34;
        }

        v10 = v6[v5];
        v11 = v6[v9];
        if (!isxdigit(v10) || (result = isxdigit(v11), !result))
        {

          return 0;
        }

        if (v10 >= 0x41)
        {
          v12 = 55;
        }

        else
        {
          v12 = 48;
        }

        v13 = v10 - v12;
        if ((v13 & 0xFFFFFF00) != 0)
        {
          goto LABEL_35;
        }

        if (v11 >= 0x41)
        {
          v14 = 55;
        }

        else
        {
          v14 = 48;
        }

        v15 = v11 - v14;
        if ((v15 & 0xFFFFFF00) != 0)
        {
          goto LABEL_36;
        }

        if (v13 > 0xFu)
        {
          goto LABEL_37;
        }

        v16 = 16 * (v13 & 0xF) + v15;
        if ((v16 & 0x100) != 0)
        {
          goto LABEL_38;
        }

        if (v5 >> 1 >= v3[2])
        {
          goto LABEL_39;
        }

        *(v3 + (v5 >> 1) + 32) = v16;
        v5 = v8;
        if (v8 >= v4)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t Data.intValue.getter(uint64_t a1, unint64_t a2)
{
  result = Data.hexString.getter(a1, a2);
  v4 = HIBYTE(v3) & 0xF;
  v5 = result & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v6 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v8 = sub_100120A38(result, v3, 16);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      return v8;
    }

    return 0;
  }

  if ((v3 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v5 = v30;
    }

    v7 = *result;
    if (v7 == 43)
    {
      if (v5 >= 1)
      {
        if (--v5)
        {
          if (result)
          {
            v8 = 0;
            v16 = (result + 1);
            while (1)
            {
              v17 = *v16;
              v18 = v17 - 48;
              if ((v17 - 48) >= 0xA)
              {
                if ((v17 - 65) < 6)
                {
                  v18 = v17 - 55;
                }

                else
                {
                  if ((v17 - 97) > 5)
                  {
                    goto LABEL_87;
                  }

                  v18 = v17 - 87;
                }
              }

              if ((v8 - 0x800000000000000) >> 60 != 15)
              {
                goto LABEL_87;
              }

              v12 = __OFADD__(16 * v8, v18);
              v8 = 16 * v8 + v18;
              if (v12)
              {
                goto LABEL_87;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_87;
      }

      goto LABEL_97;
    }

    if (v7 != 45)
    {
      if (v5)
      {
        if (result)
        {
          v8 = 0;
          while (1)
          {
            v22 = *result;
            v23 = v22 - 48;
            if ((v22 - 48) >= 0xA)
            {
              if ((v22 - 65) < 6)
              {
                v23 = v22 - 55;
              }

              else
              {
                if ((v22 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v23 = v22 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFADD__(16 * v8, v23);
            v8 = 16 * v8 + v23;
            if (v12)
            {
              goto LABEL_87;
            }

            ++result;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_87:
      v8 = 0;
      LOBYTE(v5) = 1;
LABEL_88:
      v32 = v5;
      v27 = v5;

      if ((v27 & 1) == 0)
      {
        return v8;
      }

      return 0;
    }

    if (v5 >= 1)
    {
      if (--v5)
      {
        if (result)
        {
          v8 = 0;
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9;
            v11 = v10 - 48;
            if ((v10 - 48) >= 0xA)
            {
              if ((v10 - 65) < 6)
              {
                v11 = v10 - 55;
              }

              else
              {
                if ((v10 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v11 = v10 - 87;
              }
            }

            if ((v8 - 0x800000000000000) >> 60 != 15)
            {
              goto LABEL_87;
            }

            v12 = __OFSUB__(16 * v8, v11);
            v8 = 16 * v8 - v11;
            if (v12)
            {
              goto LABEL_87;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

LABEL_75:
        v8 = 0;
        LOBYTE(v5) = 0;
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v31[0] = result;
  v31[1] = v3 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v4)
      {
        v8 = 0;
        v24 = v31;
        while (1)
        {
          v25 = *v24;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v8, v26);
          v8 = 16 * v8 + v26;
          if (v12)
          {
            break;
          }

          ++v24;
          if (!--v4)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v4)
    {
      v5 = v4 - 1;
      if (v4 != 1)
      {
        v8 = 0;
        v13 = v31 + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v8 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v8, v15);
          v8 = 16 * v8 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if (v4)
  {
    v5 = v4 - 1;
    if (v4 != 1)
    {
      v8 = 0;
      v19 = v31 + 1;
      while (1)
      {
        v20 = *v19;
        v21 = v20 - 48;
        if ((v20 - 48) >= 0xA)
        {
          if ((v20 - 65) < 6)
          {
            v21 = v20 - 55;
          }

          else
          {
            if ((v20 - 97) > 5)
            {
              goto LABEL_87;
            }

            v21 = v20 - 87;
          }
        }

        if ((v8 - 0x800000000000000) >> 60 != 15)
        {
          break;
        }

        v12 = __OFADD__(16 * v8, v21);
        v8 = 16 * v8 + v21;
        if (v12)
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_88;
        }
      }
    }

    goto LABEL_87;
  }

LABEL_98:
  __break(1u);
  return result;
}

char *sub_1001CEFD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&qword_1002F9EF8, &qword_100229C38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1001CF194(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000EE870(&unk_1002F9E70, qword_100229840);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_1001CF318(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000EE870(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1001CF4F4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000EE870(&qword_1002F9ED8, &qword_100229C20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000EE870(&qword_1002F9EE0, &qword_100229C28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001CF63C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000EE870(&qword_1002F9ED0, &qword_100229C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000EE870(&qword_1002F9DA0, &unk_100229A60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_1001CF784@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
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
    result = sub_1001CFC98(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1001CFD50(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1001CFDCC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1001CF818(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = _StringObject.sharedUTF8.getter();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = Unicode.Scalar.UTF16View.subscript.getter();
    v22 = Unicode.Scalar.UTF16View.subscript.getter();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_1001CFAEC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1000EE870(&qword_1002F9EF8, &qword_100229C38);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

char *sub_1001CFB68(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10012119C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10012119C(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1001CFC98(_BYTE *__src, _BYTE *a2)
{
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
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1001CFD50(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1001CFDCC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
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

uint64_t sub_1001CFE50(uint64_t a1)
{
  v9 = sub_1000EE870(&qword_1002F9EE8, &qword_100229C30);
  v10 = sub_1001CFF00();
  v8[0] = a1;
  v2 = sub_1000EF78C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001CF784(v3, &v3[v4], &v7);
  v5 = v7;
  sub_1000EF824(v8);
  return v5;
}

unint64_t sub_1001CFF00()
{
  result = qword_1002F9EF0;
  if (!qword_1002F9EF0)
  {
    sub_1000F2B2C(&qword_1002F9EE8, &qword_100229C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002F9EF0);
  }

  return result;
}

uint64_t LocalDispatchTimer.__allocating_init(deadline:repeating:leeway:queue:block:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v12 = swift_allocObject();
  LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1001CFFE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EE8B8(v0, qword_100300E60);
  sub_1000EE91C(v0, qword_100300E60);
  return Logger.init(subsystem:category:)();
}

uint64_t LocalDispatchTimer.isCancelled.getter()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  return OS_dispatch_source.isCancelled.getter() & 1;
}

uint64_t LocalDispatchTimer.init(deadline:repeating:leeway:queue:block:)(void *a1, char *a2, uint64_t a3, double a4, double a5, double a6)
{
  v7 = v6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v14 - 8);
  v15 = *(v87 + 64);
  __chkstk_darwin(v14);
  v17 = v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchTimeInterval();
  v93 = *(v18 - 8);
  v19 = *(v93 + 64);
  __chkstk_darwin(v18);
  v86 = (v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v89 = (v72 - v22);
  v90 = type metadata accessor for DispatchTime();
  v92 = *(v90 - 8);
  v23 = *(v92 + 64);
  __chkstk_darwin(v90);
  v85 = v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v91 = v72 - v26;
  v27 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v28 = *(v27 - 8);
  v29 = v28[8];
  __chkstk_darwin(v27);
  v31 = v72 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v76 = *(v77 - 1);
  v32 = v76[8];
  __chkstk_darwin(v77);
  v75 = v72 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for OS_dispatch_queue.Attributes();
  v34 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v74 = v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v88 = v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 16) = 0x408F400000000000;
  v41 = a4 * 1000.0;
  v42 = 2147483650.0;
  if (v41 < 2147483650.0)
  {
    v42 = v41;
    if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_28;
    }
  }

  if (v42 <= -2147483650.0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v42 >= 2147483650.0)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  a5 = a5 * 1000.0;
  *(v7 + 24) = v42;
  v43 = 2147483650.0;
  if (a5 < 2147483650.0)
  {
    v43 = a5;
    if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_30;
    }
  }

  if (v43 <= -2147483650.0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v43 >= 2147483650.0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  a6 = a6 * 1000.0;
  *(v7 + 28) = v43;
  v44 = 2147483650.0;
  if (a6 < 2147483650.0)
  {
    v44 = a6;
    if ((*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_33;
    }
  }

  if (v44 <= -2147483650.0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v44 >= 2147483650.0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
    goto LABEL_17;
  }

  v78 = v28;
  v79 = v27;
  v80 = v39;
  v81 = v38;
  *(v7 + 32) = v44;
  if (v41 <= 2147483650.0 && a5 <= 2147483650.0 && a6 <= 2147483650.0)
  {
    goto LABEL_20;
  }

  v84 = v18;
  v18 = v14;
  v14 = v17;
  v17 = a2;
  v28 = a1;
  if (qword_1002F7B10 != -1)
  {
    goto LABEL_36;
  }

LABEL_17:
  v45 = type metadata accessor for Logger();
  sub_1000EE91C(v45, qword_100300E60);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134218752;
    *(v48 + 4) = 0x41DFFFFFFFC00000;
    *(v48 + 12) = 2048;
    *(v48 + 14) = v41;
    *(v48 + 22) = 2048;
    *(v48 + 24) = a5;
    *(v48 + 32) = 2048;
    *(v48 + 34) = a6;
    _os_log_impl(&_mh_execute_header, v46, v47, "LocalDispatchTimer: Exceeded maximum value of %f: deadline: %f, repeating: %f, leeway: %f", v48, 0x2Au);
  }

  a1 = v28;
  a2 = v17;
  v17 = v14;
  v14 = v18;
  v18 = v84;
LABEL_20:
  v84 = v14;
  *(v7 + 48) = a2;
  *(v7 + 56) = a3;
  v83 = a3;
  v82 = v17;
  if (a1)
  {

    v49 = a1;
  }

  else
  {
    v72[1] = sub_1000FA784(0, &qword_1002F9700, OS_dispatch_queue_ptr);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1001D0EF8(&unk_1002F93A0, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000EE870(&qword_1002F9710, &unk_100227B80);
    sub_100115260(&qword_1002F93B0, &qword_1002F9710, &unk_100227B80);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (v76[13])(v75, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v77);
    a1 = 0;
    v49 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  }

  *(v7 + 64) = v49;
  sub_1000FA784(0, &qword_1002F9F00, OS_dispatch_source_ptr);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001D0EF8(&qword_1002F9F08, &type metadata accessor for OS_dispatch_source.TimerFlags);
  v77 = a1;
  v76 = v49;
  sub_1000EE870(&qword_1002F9F10, &qword_100229C48);
  sub_100115260(&qword_1002F9F18, &qword_1002F9F10, &qword_100229C48);
  v50 = v79;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v51 = static OS_dispatch_source.makeTimerSource(flags:queue:)();
  (v78[1])(v31, v50);
  *(v7 + 40) = v51;
  v52 = v85;
  static DispatchTime.now()();
  v53 = v89;
  *v89 = *(v7 + 24);
  v54 = enum case for DispatchTimeInterval.milliseconds(_:);
  v55 = v93;
  v56 = *(v93 + 104);
  v56(v53, enum case for DispatchTimeInterval.milliseconds(_:), v18);
  + infix(_:_:)();
  v57 = v18;
  v79 = *(v55 + 8);
  v79(v53, v18);
  v58 = v92 + 8;
  v85 = *(v92 + 8);
  (v85)(v52, v90);
  v59 = *(v7 + 28);
  v92 = v58;
  v60 = v55 + 8;
  if (v59 < 1)
  {
    v62 = enum case for DispatchTimeInterval.never(_:);
    v61 = v86;
  }

  else
  {
    v61 = v86;
    *v86 = v59;
    v62 = v54;
  }

  v56(v61, v62, v57);
  v63 = *(v7 + 40);
  swift_getObjectType();
  v64 = v89;
  *v89 = *(v7 + 32);
  v56(v64, v54, v57);
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  v93 = v60;
  v65 = v79;
  v79(v64, v57);
  v66 = *(v7 + 40);
  swift_getObjectType();
  v67 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001D0D0C;
  aBlock[5] = v67;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001742E0;
  aBlock[3] = &unk_1002C1290;
  v68 = _Block_copy(aBlock);

  v69 = v88;
  static DispatchQoS.unspecified.getter();
  v70 = v82;
  sub_1001D0D2C();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v68);

  (*(v87 + 8))(v70, v84);
  (*(v80 + 8))(v69, v81);
  v65(v61, v57);
  (v85)(v91, v90);

  return v7;
}

uint64_t sub_1001D0C94()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = *(result + 48);
    v1 = *(result + 56);

    v2(v3);
  }

  return result;
}

uint64_t sub_1001D0D14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001D0D2C()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_1001D0EF8(&qword_1002F9CB0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000EE870(&unk_1002F92D0, &unk_100227B40);
  sub_100115260(&qword_1002F9CC0, &unk_1002F92D0, &unk_100227B40);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

Swift::Void __swiftcall LocalDispatchTimer.resume()()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  OS_dispatch_source.resume()();
}

Swift::Void __swiftcall LocalDispatchTimer.cancel()()
{
  v1 = *(v0 + 40);
  swift_getObjectType();
  OS_dispatch_source.cancel()();
}

uint64_t LocalDispatchTimer.deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return v0;
}

uint64_t LocalDispatchTimer.__deallocating_deinit()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_1001D0EF8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1001D1048()
{
  v1 = CUPrintNSError();
  v0 = CUPrintXPC();
  LogPrintF();
}

void sub_1001D1108(uint64_t a1)
{
  v1 = [NSString stringWithUTF8String:a1];
  LogPrintF();
}

uint64_t sub_1001D11B0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001D1210()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D12B0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001D1308()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D13A8(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001D1400()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D14A0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001D14F8()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D1598(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001D15F0()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D17E0(void *a1)
{
  v12 = [a1 btAddress];
  if (v12)
  {
    v2 = [a1 btAddress];
  }

  else
  {
    v2 = &stru_1002C1358;
  }

  v3 = [a1 usbName];
  if (v3)
  {
    v4 = [a1 btAddress];
  }

  else
  {
    v4 = &stru_1002C1358;
  }

  v5 = [a1 usbModel];
  if (v5)
  {
    v6 = [a1 usbModel];
  }

  else
  {
    v6 = &stru_1002C1358;
  }

  v7 = [a1 color];
  v8 = [a1 fwVersion];
  v9 = [a1 featureBitmask];
  v10 = [a1 pid];
  v11 = [a1 pairingMode];
  LogPrintF();

  if (v5)
  {
  }

  if (v3)
  {
  }

  if (v12)
  {
  }
}

void sub_1001D19F0()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D1A50()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D1AB0()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D1B2C()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D1B8C()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D1C24()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D1C84()
{
  if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D1ED4(unsigned int a1)
{
  if (a1 <= 6)
  {
    v1 = (&off_1002B6AB8)[a1];
  }

  return LogPrintF();
}

BOOL sub_1001D2278(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = objc_retainBlock(*(*(a1 + 32) + 80));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v4);
  }

  return v6 != 0;
}

void sub_1001D2324(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = CUPrintNSError();
  LogPrintF();
}

void sub_1001D2618(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    v1 = (&off_1002B6C20)[a1];
  }

  v2 = CUPrintNSError();
  LogPrintF();
}

void sub_1001D26AC(unsigned __int8 a1)
{
  if (a1 <= 0xCu)
  {
    v1 = (&off_1002B6C20)[a1];
  }

  v2 = CUPrintNSError();
  LogPrintF();
}

void sub_1001D2744()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_1001D27A0()
{
  v0 = CUPrintNSError();
  LogPrintF();
}

void sub_1001D280C()
{
  v0 = CUPrintXPC();
  LogPrintF();
}

void sub_1001D2868()
{
  v1 = CUPrintNSError();
  v0 = CUPrintXPC();
  LogPrintF();
}

uint64_t sub_1001D28F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  xpc_connection_copy_invalidation_reason();
  return LogPrintF();
}

void sub_1001D3050()
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

uint64_t sub_1001D318C(uint64_t a1, uint64_t *a2)
{
  if (dword_1002F6070 > 90)
  {
    return 1;
  }

  if (dword_1002F6070 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a2 = CUPrintNSError();
  LogPrintF();
  return 0;
}

uint64_t sub_1001D3230(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F6070 <= 90)
  {
    if (dword_1002F6070 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

void sub_1001D3328()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = *v0;
      LogPrintF();
    }
  }
}

uint64_t sub_1001D3500(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001D3578()
{
  if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

uint64_t sub_1001D35E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  return LogPrintF();
}

void sub_1001D372C()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001D37A4()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001D381C()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001D3914()
{
  if (dword_1002F6070 <= 90)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001D398C(void *a1)
{
  v1 = [a1 description];
  LogPrintF();
}

void sub_1001D39E4(id *a1)
{
  v1 = [*a1 description];
  LogPrintF();
}

void sub_1001D3A44(id *a1)
{
  v1 = [*a1 description];
  LogPrintF();
}

uint64_t sub_1001D3C3C(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    v1 = (&off_1002B6FB8)[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D3CD8(unsigned __int8 a1)
{
  if (a1 <= 5u)
  {
    v1 = (&off_1002B6FE8)[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D3FC8(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_1001D4188(unsigned int *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  if (v4 <= 0xB)
  {
    v5 = (&off_1002B7018)[v4];
  }

  v8 = *a3;
  v9 = *a4;
  v7 = *a2;
  return LogPrintF();
}

uint64_t sub_1001D4388(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 200);
  v3 = *(a1 + 40);
  return LogPrintF();
}

uint64_t sub_1001D4510(void *a1)
{
  if (*a1 <= 6uLL)
  {
    v1 = (&off_1002B70A0)[*a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D45C8(unint64_t a1)
{
  if (a1 <= 6)
  {
    v1 = (&off_1002B70A0)[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D4628()
{
  if (dword_1002F61A0 <= 10)
  {
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1001D4724()
{
  if (dword_1002F61A0 <= 90)
  {
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1001D47E0()
{
  if (dword_1002F61A0 <= 90)
  {
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001D4A18(uint64_t a1)
{
  [*(a1 + 32) headGesture];
  v3 = [*(a1 + 32) avgConfidence];
  v2 = [*(a1 + 32) timestamp];
  LogPrintF();
}

void sub_1001D4BA0(id *a1, void *a2)
{
  v4 = [*a1 btAddress];
  v3 = [a2 btAddress];
  LogPrintF();
}

void sub_1001D4C2C(uint64_t a1)
{
  v3 = *(a1 + 32);
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_100020838() _deviceWithIdentifier:?];

  v4 = v7;
  if (v7)
  {
    [v7 setBatteryInfo:*(a1 + 40)];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      v6 = *(a1 + 40);
      LogPrintF();
    }

    v5 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v5 reportDeviceFound:v7];

    v4 = v7;
  }
}

void sub_1001D4D18(uint64_t a1)
{
  v3 = *(a1 + 32);
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v8 = [sub_100020838() _deviceWithIdentifier:?];

  v4 = v8;
  if (v8)
  {
    if (*(a1 + 48))
    {
      if ([v8 optimizedBatteryChargingState] == *(a1 + 48))
      {
        v5 = 0;
      }

      else
      {
        [v8 setOptimizedBatteryChargingState:?];
        v5 = 1;
      }

      v4 = v8;
    }

    else
    {
      v5 = 0;
    }

    if (*(a1 + 49) && (v6 = [v8 dynamicEndOfChargeTempDisabled], v4 = v8, v6 != *(a1 + 49)))
    {
      [v8 setDynamicEndOfChargeTempDisabled:?];
    }

    else if (!v5)
    {
      goto LABEL_14;
    }

    v7 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v7 reportDeviceFound:v8];

    v4 = v8;
  }

LABEL_14:
}

void sub_1001D5498(uint64_t a1)
{
  v3 = *(a1 + 32);
  [*(a1 + 40) identifier];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_100020838() _deviceWithIdentifier:?];

  if (v7)
  {
    if ([v7 updateWithPairedAADevice:*(a1 + 40)])
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        v5 = *(a1 + 40);
        LogPrintF();
        [*(a1 + 32) _accessoryDeviceUpdated:{v7, v5}];
      }

      else
      {
        [*(a1 + 32) _accessoryDeviceUpdated:{v7, v4}];
      }
    }
  }

  else if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 40);
    LogPrintF();
  }
}

void sub_1001D5A20(uint64_t a1)
{
  v3 = [*(a1 + 32) identifier];
  v2 = [*(a1 + 40) xpcObjectRepresentation];
  LogPrintF();
}

void sub_1001D5AEC()
{
  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D5B8C()
{
  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D5BEC()
{
  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D5C4C(uint64_t a1, uint64_t *a2)
{
  if (dword_1002F62E0 > 90)
  {
    return 1;
  }

  if (dword_1002F62E0 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a2 = CUPrintNSError();
  LogPrintF();
  return 0;
}

uint64_t sub_1001D5CF0(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F62E0 <= 90)
  {
    if (dword_1002F62E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1001D5D74(uint64_t result, uint64_t *a2)
{
  v3 = result;
  if (dword_1002F62E0 <= 90)
  {
    if (dword_1002F62E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3;
  return result;
}

void sub_1001D5DEC(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1001D5EA4(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_1001D6080()
{
  if (dword_1002F62E0 <= 90)
  {
    if (dword_1002F62E0 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1001D60FC(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(a1 + 32) identifier];
  return LogPrintF();
}

void sub_1001D6158(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void sub_1001D61B4(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  LogPrintF();
}

void sub_1001D6214(id *a1, uint64_t a2, unsigned __int8 a3)
{
  [*a1 headGesture];
  v10 = [*a1 avgConfidence];
  v6 = [*a1 timestamp];
  v7 = *(*a2 + 76);
  if (v7 <= 4)
  {
    v8 = off_1002B72F0[v7];
  }

  v9 = off_1002B7318[a3];
  LogPrintF();
}

void sub_1001D6484(uint64_t *a1, void *a2, unsigned int *a3)
{
  v4 = *a1;
  [a2 smartRoutingStateFlags];
  v7 = CUPrintFlags32();
  v5 = *a3;
  v6 = CUPrintFlags32();
  LogPrintF();
}

uint64_t sub_1001D6530(uint64_t result)
{
  if (dword_1002F62E0 <= 30)
  {
    v1 = result;
    if (dword_1002F62E0 != -1 || (result = _LogCategory_Initialize(), result))
    {
      v2 = *v1;
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001D65F0(uint64_t a1)
{
  v2 = [*(a1 + 32) identifier];
  v3 = *(a1 + 40);
  LogPrintF();
}

void sub_1001D6F88(void *a1)
{
  v1 = [a1 xpcCnx];
  [v1 processIdentifier];
  LogPrintF();
}

void sub_1001D6FEC(void *a1)
{
  v2 = [a1 xpcCnx];
  [v2 processIdentifier];
  [a1 connectionID];
  LogPrintF();
}

uint64_t sub_1001D7640(uint64_t a1)
{
  *(*a1 + 176);
  *(*a1 + 177);
  return LogPrintF();
}

uint64_t sub_1001D76E4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24);
  v2 = *(*(*(a1 + 48) + 8) + 24);
  return LogPrintF();
}

uint64_t sub_1001D776C(unsigned int a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    v2 = (&off_1002B7590)[a1];
  }

  v3 = *(a2 + 48);
  if (v3 <= 6)
  {
    v4 = (&off_1002B7748)[v3];
  }

  return LogPrintF();
}

uint64_t sub_1001D7900(unsigned int a1)
{
  if (a1 <= 6)
  {
    v1 = (&off_1002B76B0)[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D797C(unsigned int a1)
{
  if (a1 <= 5)
  {
    v1 = (&off_1002B75C8)[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D805C(uint64_t a1, unsigned int *a2)
{
  [*(a1 + 88) processIdentifier];
  v4 = *a2;
  return LogPrintF();
}

uint64_t sub_1001D80B4(uint64_t a1)
{
  [*(*(a1 + 32) + 88) processIdentifier];
  v3 = *(*(a1 + 32) + 8);
  return LogPrintF();
}

void *sub_1001D8384(uint64_t a1, const __CFString *a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    v11 = *(*(a1 + 32) + 81);
    v12 = a2;
    LogPrintF();
  }

  result = *(a1 + 32);
  v5 = *(result + 81);
  if (v5 != a2)
  {
    if (!result[19])
    {
      goto LABEL_17;
    }

    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1)
      {
LABEL_9:
        v6 = @"NotStreaming";
        if (v5)
        {
          v7 = @"Streaming";
        }

        else
        {
          v7 = @"NotStreaming";
        }

        if (a2)
        {
          v6 = @"Streaming";
        }

        v11 = v7;
        v12 = v6;
        LogPrintF();
        result = *(a1 + 32);
        goto LABEL_16;
      }

      v8 = _LogCategory_Initialize();
      result = *(a1 + 32);
      if (v8)
      {
        LOBYTE(v5) = *(result + 81);
        goto LABEL_9;
      }
    }

LABEL_16:
    [result _sendSleepDetectionFailureMetric:{4, v11, v12}];
    [*(a1 + 32) _stopCoolOffTimer];
    [*(a1 + 32) _sendSleepDetectionReset:*(*(a1 + 32) + 160) withResetReason:3];
    result = *(a1 + 32);
    v5 = *(result + 81);
LABEL_17:
    if (v5 != a2)
    {
      *(result + 81) = a2 != 0;
      result = *(a1 + 32);
    }
  }

  if (*(result + 136) == 1 && *(result + 81) == 1 && result[21])
  {
    [result _stopRewindMediaTimer];
    *(*(a1 + 32) + 104) = 0;
    [*(a1 + 32) _sendSleepDetectionUserResumedMedia:1];
    v9 = *(a1 + 32);
    v10 = v9[20];

    return [v9 _sendSleepDetectionReset:v10 withResetReason:4];
  }

  return result;
}

void sub_1001D860C()
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001D87A0(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  *(a2 + 160);
  v4 = *(a2 + 136);
  v5 = v3;
  LogPrintF();
}

void sub_1001D898C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 error];
  LogPrintF();
}

void sub_1001D89FC(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 120);
  v4 = [NSNumber numberWithDouble:*(v2 + 128)];
  v5 = *(*(a1 + 40) + 81);
  v6 = v4;
  LogPrintF();
}

void sub_1001D8AFC()
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001D8B5C()
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D8BF4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 4)
  {
    v2 = (&off_1002B7A10)[v1];
  }

  v6 = *(a1 + 49);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_1001D8C64(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 4)
  {
    v2 = (&off_1002B7A10)[v1];
  }

  v3 = *(a1 + 49);
  if (v3 <= 4)
  {
    v4 = (&off_1002B79E8)[v3];
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_1001D8CF4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 4)
  {
    v2 = (&off_1002B7A10)[v1];
  }

  v3 = a1[1];
  if (v3 <= 2)
  {
    v4 = (&off_1002B7A38)[v3];
  }

  v8 = a1[5];
  v9 = a1[6];
  v6 = a1[3];
  v7 = a1[4];
  return LogPrintF();
}

void sub_1001D8D94()
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

void sub_1001D8DFC()
{
  if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001D8F4C(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    v1 = (&off_1002B7A38)[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001D9024()
{
  if (dword_1002F6550 <= 90)
  {
    if (dword_1002F6550 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

uint64_t sub_1001D911C(uint64_t result, _BYTE *a2)
{
  v3 = result;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = v3 & 1;
  return result;
}

uint64_t sub_1001D9210(uint64_t a1)
{
  if (*(*a1 + 24) <= 0xEu)
  {
    v1 = (&off_1002B7A50)[*(*a1 + 24)];
  }

  v3 = *(*a1 + 24);
  return LogPrintF();
}

void sub_1001D92CC()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

void sub_1001D932C()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

void sub_1001D938C()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

void sub_1001D93EC()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

void sub_1001D944C()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

void sub_1001D94AC()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

void sub_1001D950C()
{
  if (dword_1002F6550 <= 40 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_10003304C();
  }
}

uint64_t sub_1001D95A4(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001D963C(uint64_t a1)
{
  v2 = *(*a1 + 120);
  v4 = [NSNumber numberWithDouble:?];
  v3 = [NSNumber numberWithDouble:*(*a1 + 128)];
  LogPrintF();
}

void sub_1001D9780(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1001D97DC(uint64_t a1, id *a2, uint64_t *a3)
{
  *a3 = [*(*(a1 + 40) + 40) identifier];
  v5 = [*a2 localizedDescription];
  LogPrintF();
}

uint64_t sub_1001D9870(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(*(a1 + 40) + 40) identifier];
  return LogPrintF();
}

uint64_t sub_1001D9910(uint64_t result)
{
  v1 = result;
  if (dword_1002F6550 <= 90)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

void sub_1001DA2D8()
{
  v0 = CUPrintDurationDouble();
  LogPrintF();
}

uint64_t sub_1001DA360(uint64_t a1, _BYTE *a2)
{
  if (dword_1002F6620 <= 90)
  {
    if (dword_1002F6620 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001DA3E4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (dword_1002F6620 <= 90 && ((sub_10003BE10(), !v6) || _LogCategory_Initialize()))
  {
    *v3 = [v4 identifier];
    LogPrintF();
    return 0;
  }

  else
  {
    *a3 = 0;
    return 1;
  }
}

void sub_1001DA498(void *a1)
{
  [a1 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE20();
  LogPrintF();
}

void sub_1001DA4EC(void *a1)
{
  v2 = [a1 lastSeenBatteryInfoMap];
  [v2 count];
  [a1 lastSeenBatteryInfoMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF();
}

uint64_t sub_1001DA5EC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (dword_1002F6620 > 90)
  {
    return 1;
  }

  sub_10003BE10();
  if (v6 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a3 = [v4 localizedDescription];
  [v3 lastSeenBatteryInfoMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF();

  return 0;
}

uint64_t sub_1001DA6A8(void *a1, void *a2)
{
  v3 = [a1 lastSeenBatteryInfoMap];
  *a2 = v3;
  [v3 count];
  return LogPrintF();
}

uint64_t sub_1001DA73C(uint64_t a1, void *a2)
{
  [a2 systemEffectiveScreenLocked];
  [a2 lowBatteryAlertVisible];
  [a2 systemUIProxCardPresent];
  return LogPrintF();
}

void sub_1001DA834(void *a1)
{
  v2 = [a1 deviceAddress];
  v3 = [a1 type];
  if (v3 <= 2)
  {
    v4 = off_1002B7BE8[v3];
  }

  v5 = [a1 name];
  LogPrintF();
}

void sub_1001DA8F4(void *a1)
{
  v2 = [a1 deviceAddress];
  [a1 productID];
  v3 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v4 = [a1 lastBatteryType];
  if (v4 <= 5)
  {
    v5 = off_1002B7C00[v4];
  }

  LogPrintF();
}

void sub_1001DA9C0(void *a1)
{
  v2 = [a1 deviceAddress];
  [a1 productID];
  v3 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v4 = [a1 lastBatteryType];
  if (v4 <= 5)
  {
    v5 = off_1002B7C00[v4];
  }

  [a1 reportTime];
  v6 = CUPrintDateCF();
  LogPrintF();
}

void sub_1001DAAAC(void *a1)
{
  v5 = [a1 deviceAddress];
  [a1 productID];
  v2 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v3 = [a1 lastBatteryType];
  if (v3 <= 5)
  {
    v4 = off_1002B7C00[v3];
  }

  LogPrintF();
}

uint64_t sub_1001DAB8C(unsigned int a1)
{
  if (a1 <= 6)
  {
    v1 = off_1002B7BB0[a1];
  }

  return LogPrintF();
}

void sub_1001DAC90()
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001DACF0(void *a1)
{
  v2 = [a1 deviceAddress];
  v3 = [a1 name];
  [a1 lastBatteryLevel];
  sub_10003BE00();
  v4 = [a1 lastBatteryType];
  if (v4 <= 5)
  {
    v5 = off_1002B7C00[v4];
  }

  [a1 reportTime];
  LogPrintF();
}

void sub_1001DAF04(uint64_t a1, id *a2)
{
  v14 = [*(a1 + 40) identifier];
  v3 = [*a2 localizedDescription];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_1001DAF84(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  v3 = *(a1 + 48);
  LogPrintF();
}

void sub_1001DAFF8()
{
  if (dword_1002F6620 <= 30)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

uint64_t sub_1001DB130(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001DB1A0()
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001DB2D8(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  v4 = off_1002B7C30[a2 - 6];
  LogPrintF();
}

void sub_1001DB354(char a1, int a2, void *a3)
{
  if ((a1 & 1) != 0 && (a2 != -1 || _LogCategory_Initialize()))
  {
    v4 = [a3 identifier];
    LogPrintF();
  }
}

void sub_1001DB3F0()
{
  if (dword_1002F6620 <= 30)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [v0 identifier];
      LogPrintF();
    }
  }
}

void sub_1001DB51C(void *a1, uint64_t a2)
{
  v3 = [a1 identifier];
  v4 = off_1002B7C48[a2];
  LogPrintF();
}

void sub_1001DB594()
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001DB5F4()
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001DB654()
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001DB6B4()
{
  if (dword_1002F6620 <= 30)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001DB72C(void *a1)
{
  [a1 prefChargingReminderRepeatBackoffInterval];
  v2 = CUPrintDurationDouble();
  v1 = CUPrintDateCF();
  LogPrintF();
}

void sub_1001DB7C4(void *a1)
{
  [a1 prefChargingReminderRepeatLastConnectedInterval];
  v1 = CUPrintDurationDouble();
  LogPrintF();
}

void sub_1001DB834(void *a1)
{
  [a1 prefChargingReminderRepeatLastConnectedInterval];
  v1 = CUPrintDurationDouble();
  LogPrintF();
}

void sub_1001DB924(uint64_t a1, id *a2)
{
  v14 = [*(a1 + 40) identifier];
  v3 = [*a2 localizedDescription];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_1001DB9A4(uint64_t a1)
{
  v2 = [*(a1 + 40) identifier];
  v3 = *(a1 + 48);
  LogPrintF();
}

void sub_1001DBBA0(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1001DBBFC(void *a1, unint64_t a2)
{
  v3 = [a1 identifier];
  if (a2 <= 0xC)
  {
    v4 = off_1002B7C90[a2];
  }

  v5 = v3;
  LogPrintF();
}

void sub_1001DBC88(void *a1)
{
  v2 = [a1 type];
  if (v2 <= 2)
  {
    v3 = off_1002B7C78[v2];
  }

  v4 = [a1 identifier];
  LogPrintF();
}

void sub_1001DBD1C(void *a1, unint64_t a2)
{
  v4 = [a1 type];
  if (v4 <= 2)
  {
    v5 = off_1002B7C78[v4];
  }

  v6 = [a1 identifier];
  if (a2 <= 0xC)
  {
    v7 = off_1002B7C90[a2];
  }

  v8 = v6;
  LogPrintF();
}

void sub_1001DBDE0(void *a1)
{
  [a1 localizedDescription];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE20();
  LogPrintF();
}

void sub_1001DBE34(void *a1)
{
  v2 = [a1 chargingNotificationMap];
  [v2 count];
  [a1 chargingNotificationMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF();
}

void sub_1001DBEB0(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_1001DBF0C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (dword_1002F6620 > 90)
  {
    return 1;
  }

  sub_10003BE10();
  if (v6 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *a3 = [v4 localizedDescription];
  [v3 chargingNotificationMap];
  objc_claimAutoreleasedReturnValue();
  sub_10003BE40();
  LogPrintF();

  return 0;
}

uint64_t sub_1001DBFC8(void *a1, void *a2)
{
  v3 = [a1 chargingNotificationMap];
  *a2 = v3;
  [v3 count];
  return LogPrintF();
}

void sub_1001DC0AC(id *a1)
{
  v1 = [*a1 identifier];
  LogPrintF();
}

void sub_1001DC10C(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  LogPrintF();
}

void sub_1001DC624()
{
  if (dword_1002F6620 <= 90)
  {
    sub_1000148E8();
    if (!v0 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }
}

void sub_1001DC69C()
{
  if (dword_1002F6620 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [*v0 content];
      [v2 userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_10003BE20();
      LogPrintF();
    }
  }
}

void sub_1001DC750()
{
  if (dword_1002F6620 <= 90)
  {
    sub_1000148E8();
    if (!v1 || _LogCategory_Initialize())
    {
      v2 = [*v0 content];
      [v2 userInfo];
      objc_claimAutoreleasedReturnValue();
      sub_10003BE20();
      LogPrintF();
    }
  }
}

uint64_t sub_1001DCB84(uint64_t a1)
{
  *(a1 + 12);
  *(a1 + 21);
  return LogPrintF();
}

uint64_t sub_1001DCBEC(uint64_t a1)
{
  *(a1 + 20);
  v3 = *(a1 + 88);
  v2 = *(a1 + 36);
  return LogPrintF();
}

void sub_1001DCC54(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  v10 = [v7 identifier];
  v11 = [v10 UUIDString];

  if (v11)
  {
    v12 = [v7 bleDevice];
    v13 = [v12 bluetoothAddress];

    v14 = CUPrintNSDataAddress();
    v15 = [v7 bleDevice];
    v16 = [v15 advertisementFields];

    v51 = v14;
    if (!sub_100072EDC())
    {
      v28 = *(a1 + 32);
      v29 = *(*(a1 + 40) + 8);
      v60 = *(v29 + 40);
      [v28 _generateEvaluatorError:@"Ignoring device that is not paired" errorReason:&v60];
      v30 = v60;
      v21 = *(v29 + 40);
      *(v29 + 40) = v30;
      goto LABEL_23;
    }

    v49 = v13;
    v50 = v11;
    v17 = sub_100072EDC();
    v18 = sub_100072EDC();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v20 = sub_100072EDC();
    if (([sub_100072FB0() _supportsTipi:?] & 1) == 0)
    {
      v31 = *(a1 + 32);
      v32 = *(*(a1 + 40) + 8);
      v59 = *(v32 + 40);
      [v31 _generateEvaluatorError:@"Ignoring device that is not SR enabled" errorReason:&v59];
      v33 = v59;
      v21 = *(v32 + 40);
      *(v32 + 40) = v33;
      goto LABEL_22;
    }

    v21 = CFDictionaryGetCFDataOfLength();
    v22 = *(a1 + 32);
    if (v20)
    {
      v34 = *(*(a1 + 40) + 8);
      v35 = *(v34 + 40);
      Int64Ranged = v34 + 40;
      v58 = v35;
      [v22 _generateEvaluatorError:@"Ignoring device that is already connected" errorReason:&v58];
      v36 = v58;
      goto LABEL_35;
    }

    [v22[161] setTipiWithCompanion:0];
    if (v18)
    {
      if (([sub_100072FB0() _isMyAddress:?] & 1) == 0 && (objc_msgSend(sub_100072FB0(), "_isDevicePairedCheck:") & 1) == 0)
      {
        v47 = sub_100072F1C();
        v57 = v48;
        [v47 _generateEvaluatorError:@"lastConnectedHost is not signed into the same iCloud account as this device" errorReason:&v57];
        v36 = v57;
        goto LABEL_35;
      }

      if ([sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?])
      {
        [*(*(a1 + 32) + 1288) setTipiWithCompanion:1];
      }

      if (CFDictionaryGetInt64Ranged() == 8)
      {
        v39 = sub_100072F1C();
        v56 = v40;
        [v39 _generateEvaluatorError:@"Ignoring device that is connected to SR disabled source device" errorReason:&v56];
        v36 = v56;
        goto LABEL_35;
      }
    }

    v23 = (Int64Ranged << 32);
    if (v23 < 1 || ([sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?] & 1) != 0)
    {
      if (v23 != 0x200000000)
      {
        if (v23 == &_mh_execute_header && [sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?] && *(a1 + 56) == 1)
        {
          v24 = sub_100072F1C();
          obj = v25;
          [v24 _generateEvaluatorError:@"Ignoring device streaming A2DP from companion device" errorReason:&obj];
          objc_storeStrong(v23, obj);
          v26 = *(a1 + 48);
          if (v26)
          {
            *v26 = 1;
          }

          goto LABEL_22;
        }

        goto LABEL_20;
      }

      if (![sub_100072FB0() _isMagnetConnectedDeviceforConnectionCheck:?])
      {
LABEL_20:
        v27 = *(a1 + 32);
        if ((v17 & 0x24) != 0)
        {
          objc_storeStrong(v27 + 50, a3);
          *a4 = 1;
LABEL_22:
          v13 = v49;
          v11 = v50;
LABEL_23:

          goto LABEL_24;
        }

        v37 = *(*(a1 + 40) + 8);
        v38 = *(v37 + 40);
        Int64Ranged = v37 + 40;
        v52 = v38;
        [v27 _generateEvaluatorError:@"Ignoring devices that are not in-ear" errorReason:&v52];
        v36 = v52;
LABEL_35:
        objc_storeStrong(Int64Ranged, v36);
        goto LABEL_22;
      }

      v44 = sub_100072F1C();
      v53 = v45;
      [v44 _generateEvaluatorError:@"Ignoring device streaming HFP from companion device" errorReason:&v53];
      v43 = v53;
    }

    else
    {
      v41 = sub_100072F1C();
      v55 = v42;
      [v41 _generateEvaluatorError:@"Ignoring device streaming from non-companion device" errorReason:&v55];
      v43 = v55;
    }

    objc_storeStrong(v23, v43);
    v46 = *(a1 + 48);
    v13 = v49;
    v11 = v50;
    if (v46)
    {
      *v46 = 1;
    }

    goto LABEL_23;
  }

LABEL_24:
}

BOOL sub_1001E0CE4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && [v1 UTF8String])
  {
    sub_100072E50();
    v3 = NSDataWithHex();
    if ([v3 length] == 6 && objc_msgSend(v3, "bytes"))
    {
      v7 = 0;
      __s1 = 0;
      v4 = memcmp(&__s1, [v3 bytes], objc_msgSend(v3, "length")) != 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1001E1F34(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v7 = [v10 aaNearbyDevice];
  if ([v7 heartRateMonitorCapability] == 2)
  {
    v8 = [v10 aaNearbyDevice];
    v9 = [v8 healthKitDataWriteAllowed];

    if (v9 == 1 && [v10 isNearby])
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      *a4 = 1;
    }
  }

  else
  {
  }
}

void sub_1001E2000(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v18 = a3;
  v8 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:a2];
  if (!v8 && [v18 connectionState] == 2 && objc_msgSend(v18, "inEar"))
  {
    v9 = [v18 btAddress];
    v10 = [*(*(a1 + 32) + 40) deviceWithBluetoothAddress:v9];
    v11 = [v10 heartRateMonitorCapability];
    v12 = [v10 healthKitDataWriteAllowed];
    v13 = v12 == 1;
    if ([v10 productID] == 8221)
    {
      v14 = [v10 heartRateMonitorEnabled];
      v13 = v12 == 1 && v14 == 1;
    }

    if (v11 == 2 && v13)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v17 = [v18 btAddress];
        LogPrintF();
      }

      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      *a4 = 1;
    }
  }
}

void sub_1001E2F0C()
{
  sub_10007317C();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = v1;
  v7 = [*(v3 + 32) _getWxFWVersion:v5];
  if ([*(v3 + 32) _wxFwSupportsTipiScore:v7])
  {
    mach_absolute_time();
    [v6 otherTipiDeviceIdleTick];
    v8 = UpTicksToSeconds();
    if (*(v3 + 40) == 1 && v8 <= 0x1DF)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_17;
      }
    }

    else if ([v6 otherTipiAudioCategory] >= 0x65)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (*(*(v3 + 32) + 1016) != 1 || ![v6 otherTipiDeviceIsWatch])
      {
        v9 = [NSData dataWithBytes:v3 + 41 length:3];
        v10 = objc_alloc_init(CBDevice);
        [v10 setIdentifier:v5];
        *(*(v3 + 32) + 712) = *(v3 + 40);
        v11 = *(*(v3 + 32) + 960);
        sub_100072E30();
        v13 = v5;
        v14 = v9;
        v12 = v9;
        [sub_100073050() sendSmartRoutingInformation:? device:? completionHandler:?];

        goto LABEL_8;
      }

      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
LABEL_17:
        LogPrintF();
      }
    }
  }

LABEL_8:

  sub_100073168();
}

void sub_1001E3384(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) _getWxFWVersion:?];
  if ([*(a1 + 32) _wxFwSupportsTipiScore:v3])
  {
    [*(a1 + 32) _sendNowPlayingInfoUpdateToWx:v4 withMessage:*(a1 + 48) withLastPlayedTarget:*(a1 + 56) | (*(a1 + 60) << 32) andHeadsetAddress:{*(a1 + 62), *(a1 + 40)}];
  }
}

uint64_t sub_1001E3504(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1172);
  sub_100072E94();
  return LogPrintF();
}

void sub_1001E3664()
{
  sub_100072F64();
  v2 = v1;
  [v1 inEar];
  [v2 inEarDisabled];
  [*(*(v0 + 32) + 1240) count];
  v3 = [v2 otherTipiDeviceBTAddress];
  LogPrintF();
}

uint64_t sub_1001E3738(uint64_t a1)
{
  v1 = *(*a1 + 976);
  sub_100072F2C();
  return LogPrintF();
}

uint64_t sub_1001E39A8()
{
  sub_100072EC4();
  *(v0 + 552);
  *(v0 + 762);
  *(v0 + 553);
  v2 = *(v0 + 1384);
  return LogPrintF();
}

uint64_t sub_1001E4270(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 24);
  if (v1 <= 4)
  {
    v2 = off_1002B8A78[v1];
  }

  return LogPrintF();
}

void sub_1001E42DC(void *a1)
{
  [a1 btAddress];
  objc_claimAutoreleasedReturnValue();
  v1 = [sub_10007315C() tipiConnectType];
  if (v1 <= 0xA)
  {
    v2 = off_1002B8FD0[v1];
  }

  LogPrintF();
}

uint64_t sub_1001E4370(void *a1)
{
  v1 = [a1 tipiConnectType];
  if (v1 <= 0xA)
  {
    v2 = off_1002B8FD0[v1];
  }

  return LogPrintF();
}

void sub_1001E4420(uint64_t a1)
{
  [*(a1 + 32) name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF();
}

void sub_1001E448C(uint64_t a1, void *a2)
{
  v4 = [sub_1000730D8(a1) isFirstConnectionAfterSREnable];
  v3 = [v4 objectForKeyedSubscript:*a2];
  LogPrintF();
}

uint64_t sub_1001E4510(id *a1)
{
  v1 = [*a1 nearbyAudioState];
  if (v1 <= 3)
  {
    v2 = off_1002B8ED0[v1];
  }

  return LogPrintF();
}

void sub_1001E4664()
{
  sub_10007317C();
  v1 = v0;
  [v0[94] discoveredDevices];
  [objc_claimAutoreleasedReturnValue() count];
  [v1[28] count];
  [v1[194] count];
  [v1[186] count];
  v2 = [v1[29] bluetoothState];
  if (v2 <= 0xA)
  {
    v3 = off_1002B8BF8[v2];
  }

  LogPrintF();
  sub_100073168();
}

uint64_t sub_1001E47C4(uint64_t a1)
{
  if ((a1 - 1) <= 9)
  {
    v1 = off_1002B8AA0[a1 - 1];
  }

  return LogPrintF();
}

void sub_1001E4828()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4888(void *a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v2 = [a1 inUseBannerBackoffReason];
    LogPrintF();
  }
}

void sub_1001E4930()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4990()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E49F0()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4A50()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4AB0()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4B10()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4B70()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4BD0()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E4C68(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E4CC4(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF();
}

void sub_1001E4D2C(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E4D88(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E4DE4(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E4E40(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E4E9C(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E4F30(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF();
}

void sub_1001E4F98(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E5010(uint64_t a1, void *a2)
{
  [*(*a1 + 400) name];
  objc_claimAutoreleasedReturnValue();
  v3 = [sub_10007315C() name];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_1001E5090(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E50EC(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void sub_1001E5148(void *a1)
{
  [a1 name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF();
}

void sub_1001E51B0()
{
  sub_10007317C();
  v1 = v0;
  v3 = *(v2 + 40);
  [v0 identifier];
  v4 = [objc_claimAutoreleasedReturnValue() UUIDString];
  v5 = [v1 name];
  v6 = [v1 audioRoutingScore];
  if (v6 <= 0xF)
  {
    v7 = off_1002B8F50[v6];
  }

  LogPrintF();

  sub_100073168();
}

void sub_1001E5284(uint64_t a1, id *a2)
{
  v14 = [*(*(*a1 + 8) + 40) name];
  v3 = [a2[7] name];
  sub_10003BE2C(v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  LogPrintF();
}

void sub_1001E530C(uint64_t a1)
{
  v1 = [*(a1 + 56) name];
  LogPrintF();
}

void sub_1001E536C(uint64_t a1)
{
  [*(*(a1 + 32) + 592) name];
  objc_claimAutoreleasedReturnValue();
  sub_100073080();
  LogPrintF();
}

void sub_1001E53DC(uint64_t a1, void *a2)
{
  v4 = [sub_1000730D8(a1) isFirstConnectionAfterSREnable];
  v3 = [v4 objectForKeyedSubscript:*a2];
  LogPrintF();
}

void sub_1001E5460(uint64_t a1, uint64_t a2)
{
  v4 = [*(*a1 + 664) objectForKeyedSubscript:a2];
  v2 = [v4 audioState];
  if (v2 <= 3)
  {
    v3 = off_1002B8ED0[v2];
  }

  LogPrintF();
}

void sub_1001E5588()
{
  sub_100072F7C();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

void sub_1001E5674()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

uint64_t sub_1001E5730(unsigned int a1, void *a2)
{
  if (a1 <= 6)
  {
    v2 = off_1002B8B40[a1];
  }

  [a2 batteryLevelInfo];
  return LogPrintF();
}

uint64_t sub_1001E57A4(id *a1, uint64_t a2)
{
  [*a1 screenActive];
  [*a1 screenLocked];
  sub_100072F38();
  *(a2 + 1320);
  return LogPrintF();
}

uint64_t sub_1001E5874(unsigned int a1, uint64_t a2)
{
  if (a1 <= 6)
  {
    v2 = off_1002B8B08[a1];
  }

  v3 = *(a2 + 64);
  if (v3 <= 6)
  {
    v4 = off_1002B8B40[v3];
  }

  return LogPrintF();
}

uint64_t sub_1001E5A3C(uint64_t a1, void *a2)
{
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001E5AC0(uint64_t a1, void *a2)
{
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *a2 = 0;
  return result;
}

uint64_t sub_1001E5B44(uint64_t a1)
{
  v1 = *(a1 + 448);
  sub_100072F2C();
  *(v2 + 1536);
  return LogPrintF();
}

void sub_1001E5CCC(void *a1)
{
  v2 = [a1 action];
  if (v2 <= 5)
  {
    v3 = off_1002B90F8[v2];
  }

  v5 = [a1 reason];
  [a1 clientID];
  v4 = [a1 deviceAddress];
  LogPrintF();
}

uint64_t sub_1001E5D90(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001E5DE8()
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001E5E48(void *a1)
{
  v1 = [a1 deviceAddress];
  sub_100072FE0();
  LogPrintF();
}

void sub_1001E5EE4()
{
  sub_1000731A4();
  sub_100072F64();
  v2 = v1;
  [v1 inEar];
  [v2 inEarDisabled];
  [*(*(v0 + 32) + 1240) count];
  LogPrintF();
  sub_100073190();
}

uint64_t sub_1001E5FDC(void *a1)
{
  [a1 hasOwnership];
  [a1 otherTipiAudioCategory];
  return LogPrintF();
}

void sub_1001E6068()
{
  sub_100072F64();
  UpTicksToSeconds();
  v2 = [*(*v1 + 1240) objectForKeyedSubscript:v0];
  [v2 hijackBackoffTicks];
  LogPrintF();
}

void sub_1001E6130(void *a1)
{
  v1 = [a1 otherTipiDeviceVersion];
  LogPrintF();
}

uint64_t sub_1001E61EC(void *a1)
{
  [a1 inEar];
  sub_100072F38();
  return LogPrintF();
}

uint64_t sub_1001E648C(uint64_t a1, char a2, unsigned __int8 a3)
{
  if (*(*a1 + 64) <= 0xEu)
  {
    v3 = off_1002B8DF8[*(*a1 + 64)];
  }

  if (a3 <= 0xEu)
  {
    v4 = off_1002B8DF8[a2 & 0xF];
  }

  v6 = *(*a1 + 64);
  return LogPrintF();
}

uint64_t sub_1001E6570(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1256) bluetoothState];
  if (v2 <= 0xA)
  {
    v3 = off_1002B8BF8[v2];
  }

  v4 = [*(*(a1 + 32) + 232) bluetoothState];
  if (v4 <= 0xA)
  {
    v5 = off_1002B8BF8[v4];
  }

  return LogPrintF();
}

uint64_t sub_1001E6654(uint64_t a1)
{
  v2 = [sub_1000730D8(a1) bluetoothState];
  if (v2 <= 0xA)
  {
    v3 = off_1002B8BF8[v2];
  }

  v4 = [*(*a1 + 232) bluetoothState];
  if (v4 <= 0xA)
  {
    v5 = off_1002B8BF8[v4];
  }

  return LogPrintF();
}

uint64_t sub_1001E6710(void *a1)
{
  v1 = [a1 routingAction];
  if (v1 <= 5)
  {
    v2 = off_1002B90F8[v1];
  }

  return LogPrintF();
}

void sub_1001E6780()
{
  sub_10007317C();
  sub_100072F7C();
  v2 = *(v1 + 56);
  if (v2 <= 0xF)
  {
    v3 = off_1002B8F50[v2];
  }

  v4 = *(v0 + 32);
  v5 = *(v0 + 60);
  if (v5 <= 2)
  {
    v6 = off_1002B90A0[v5];
  }

  [*(v0 + 40) isUSBPlugIn];
  sub_100072F38();
  v7 = *(v0 + 48);
  LogPrintF();
  sub_100073168();
}

uint64_t sub_1001E68DC(uint64_t result)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return sub_1000148D4();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4();
    }
  }

  return result;
}

uint64_t sub_1001E6974(uint64_t result)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return sub_1000148D4();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4();
    }
  }

  return result;
}

uint64_t sub_1001E6A0C(uint64_t result, int a2)
{
  if (result)
  {
    if (a2 != -1)
    {
      return sub_1000148D4();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4();
    }
  }

  return result;
}

uint64_t sub_1001E6AA0(uint64_t result)
{
  if (result <= 30)
  {
    if (result != -1)
    {
      return sub_1000148D4();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1000148D4();
    }
  }

  return result;
}

uint64_t sub_1001E6BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*a3 + 537);
  *(*a3 + 576);
  *(*a3 + 538);
  return LogPrintF();
}

uint64_t sub_1001E6C5C(void *a1)
{
  [a1 routed];
  sub_100072F38();
  return LogPrintF();
}

uint64_t sub_1001E6D74(void *a1)
{
  v1 = [a1 routingAction];
  if (v1 <= 5)
  {
    v2 = off_1002B90F8[v1];
  }

  return LogPrintF();
}

uint64_t sub_1001E6F2C(uint64_t a1)
{
  v1 = *(*a1 + 88);
  sub_100072E94();
  return LogPrintF();
}

uint64_t sub_1001E6FBC(void *a1)
{
  [a1 routed];
  sub_100072F38();
  return LogPrintF();
}

void sub_1001E7020()
{
  sub_1000731A4();
  sub_100072F7C();
  [v1 inEar];
  [v0 inEarDisabled];
  sub_100073118();
  LogPrintF();
  sub_100073190();
}

void sub_1001E7098(uint64_t a1, id *a2)
{
  v3 = [*a2 objectForKeyedSubscript:?];
  v2 = [v3 otherTipiDeviceVersion];
  LogPrintF();
}

uint64_t sub_1001E7504(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 88);
  [*(v1 + 184) activeCallCount];
  return LogPrintF();
}

uint64_t sub_1001E7794(uint64_t a1)
{
  v1 = *(*a1 + 552);
  sub_100072E94();
  return LogPrintF();
}

uint64_t sub_1001E77EC(uint64_t a1)
{
  v1 = *(*a1 + 1105);
  sub_100072E94();
  return LogPrintF();
}

uint64_t sub_1001E7844(uint64_t a1)
{
  v1 = *(*a1 + 64);
  if (v1 <= 0xE)
  {
    v2 = off_1002B8DF8[v1];
  }

  return LogPrintF();
}

void sub_1001E7994()
{
  sub_100073104();
  v5 = [*(*v3 + 1248) objectForKeyedSubscript:v4];
  *v0 = v5;
  [v5 thV2WxCount];
  v6 = [*(*v2 + 1248) objectForKeyedSubscript:v1];
  [v6 thV2Ticks];
  LogPrintF();
}

void sub_1001E7A2C(void *a1)
{
  v1 = [a1 otherTipiDeviceBTAddress];
  LogPrintF();
}

uint64_t sub_1001E7B70(uint64_t a1)
{
  v2 = [*(a1 + 32) bluetoothState];
  if (v2 <= 0xA)
  {
    v3 = off_1002B8BF8[v2];
  }

  v4 = [*(a1 + 32) discoverableState];
  if (v4 <= 2)
  {
    v5 = off_1002B8B98[v4];
  }

  v6 = [*(a1 + 32) inquiryState];
  if (v6 <= 2)
  {
    v7 = off_1002B8B98[v6];
  }

  return LogPrintF();
}

void sub_1001E7C54(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 conduitDeviceID];
  v5 = [*(*(*a2 + 8) + 40) identifier];
  v6 = *(a3 + 48);
  LogPrintF();
}

void sub_1001E7DD4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [*(a1 + 1240) objectForKeyedSubscript:a2];
  v5 = [v4 otherTipiDeviceBTAddress];
  [a3 intValue];
  LogPrintF();
}

void sub_1001E7F00()
{
  sub_100072F64();
  UpTicksToSeconds();
  v2 = [*v1 objectForKeyedSubscript:v0];
  [v2 hijackBackoffTicks];
  LogPrintF();
}

uint64_t sub_1001E8098(void *a1)
{
  [a1 routed];
  sub_100072F38();
  return LogPrintF();
}

void sub_1001E80FC()
{
  sub_1000731A4();
  sub_100072F7C();
  [v1 inEar];
  [v0 inEarDisabled];
  sub_100073118();
  LogPrintF();
  sub_100073190();
}

uint64_t sub_1001E8250(void *a1, void *a2)
{
  [a1 audioRoutingScore];
  [a1 otherTipiAudioCategory];
  v4 = [a2 audioStreamState];
  if (v4 <= 3)
  {
    v5 = off_1002B9128[v4];
  }

  return LogPrintF();
}

void sub_1001E82E8(void *a1)
{
  v1 = [a1 version];
  LogPrintF();
}

void sub_1001E8430(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1001E848C(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void sub_1001E84E8(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_1001E85A0(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

uint64_t sub_1001E8714(unsigned int a1)
{
  if (a1 <= 4)
  {
    v1 = off_1002B8BD0[a1];
  }

  return LogPrintF();
}

void sub_1001E881C(id *a1, id *a2)
{
  v3 = [*a1 bluetoothState];
  if (v3 <= 0xA)
  {
    v4 = off_1002B8BF8[v3];
  }

  v9 = [*a2 snapshotLocalRoute];
  v5 = [*a2 snapshotLocalPlayingApp];
  v6 = [*a2 snapshotLocalDeviceAudioScore];
  v7 = [*a2 snapshotRemoteDeviceAudioScore];
  v8 = [*a2 snapshotLocalNumOfApps];
  LogPrintF();
}

void sub_1001E8958()
{
  sub_100072F7C();
  v2 = [v1 otherTipiDeviceBTAddress];
  [v0 otherTipiAudioCategory];
  LogPrintF();
}

void sub_1001E89D4(void *a1)
{
  v1 = [a1 providerBundleIdentifier];
  LogPrintF();
}

void sub_1001E8BE8(void *a1)
{
  v1 = [a1 btAddress];
  LogPrintF();
}

uint64_t sub_1001E8C44()
{
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001E8CC0(void *a1)
{
  v1 = [a1 btAddress];
  sub_100072FE0();
  LogPrintF();
}

uint64_t sub_1001E8E90(uint64_t a1)
{
  v1 = *(a1 + 761);
  sub_100072E94();
  return LogPrintF();
}

void sub_1001E8F40(void *a1)
{
  v4 = [a1 address];
  [a1 isUTPConnected];
  [a1 sourceCount];
  v2 = [a1 lastConnectHost];
  v3 = [a1 zeroSourceLastRouteHost];
  [a1 lidClosed];
  [a1 primaryInEar];
  [a1 secondaryInEar];
  [a1 primaryInCase];
  [a1 secondaryInCase];
  LogPrintF();
}

uint64_t sub_1001E9094()
{
  sub_100072F7C();
  v2 = [v1 routingAction];
  if (v2 <= 5)
  {
    v3 = off_1002B90F8[v2];
  }

  [v0 routed];
  sub_100072F38();
  return LogPrintF();
}

void sub_1001E912C(void *a1)
{
  v1 = [a1 deviceAddress];
  sub_100072FE0();
  LogPrintF();
}

void sub_1001E9278(void *a1)
{
  v1 = [a1 uniqueID];
  LogPrintF();
}

void sub_1001E9310()
{
  v0 = CUPrintFlags32();
  LogPrintF();
}

void sub_1001E9374()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E9524(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_1001E95EC(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 64);
  if (v2 <= 0xE)
  {
    v3 = off_1002B8DF8[v2];
  }

  v4 = *(*a2 + 1092);
  if (v4 <= 0xF)
  {
    v5 = off_1002B8F50[v4];
  }

  return LogPrintF();
}

uint64_t sub_1001E96E8(uint64_t a1)
{
  v1 = *(*a1 + 760);
  sub_100072E94();
  return LogPrintF();
}

void sub_1001E9914()
{
  sub_100072F7C();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

void sub_1001E9988(void *a1)
{
  v1 = [a1 deviceAddress];
  LogPrintF();
}

void sub_1001E99E4(void *a1)
{
  v1 = [a1 btAddress];
  LogPrintF();
}

uint64_t sub_1001E9A5C(uint64_t a1)
{
  v1 = *(a1 + 898);
  sub_100072F2C();
  return LogPrintF();
}

void sub_1001E9AF4(id *a1, void *a2)
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"_localDeviceAudioCategory check failed, _localDeviceAudioCategory : %d", [*a1 intValue]);
  [a2 _logPreemptiveBannerEvalError:v3];
}

void sub_1001E9B68(uint64_t a1)
{
  v1 = "?";
  if (a1 == 2)
  {
    v1 = "HFP Call";
  }

  if (a1 == 3)
  {
    v2 = "HFP Other";
  }

  else
  {
    v2 = v1;
  }

  v4 = [NSString stringWithUTF8String:v2];
  v3 = [NSString stringWithFormat:@"audioState is %@", v4];
  [sub_100072FBC() _logPreemptiveBannerEvalError:?];
}

void sub_1001E9C08()
{
  sub_10007317C();
  sub_100072F64();
  [*v2 objectForKeyedSubscript:?];
  v3 = [objc_claimAutoreleasedReturnValue() primaryPlacement];
  if (v3 <= 7)
  {
    v4 = off_1002B8E70[v3];
  }

  v5 = [*v1 objectForKeyedSubscript:v0];
  v6 = [v5 secondaryPlacement];
  if (v6 <= 7)
  {
    v7 = off_1002B8E70[v6];
  }

  LogPrintF();

  sub_100073168();
}

uint64_t sub_1001E9D10(uint64_t a1)
{
  v1 = *(*(*(a1 + 48) + 8) + 24);
  sub_100072F2C();
  v4 = *v2;
  return LogPrintF();
}

void sub_1001E9D74()
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001E9DD4(void *a1, uint64_t a2, _BYTE *a3)
{
  v10 = [a1 btAddress];
  v6 = [*(*(a2 + 32) + 40) deviceWithBluetoothAddress:?];
  v7 = [v6 healthKitDataWriteAllowed];
  if ([v6 productID] == 8221)
  {
    v8 = [v6 heartRateMonitorEnabled];
    if (v7 != 1 || v8 != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v7 == 1)
  {
LABEL_7:
    objc_storeStrong((*(*(a2 + 40) + 8) + 40), a1);
    *a3 = 1;
  }

LABEL_8:
}

void sub_1001E9EA8()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001E9F08()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001EA06C()
{
  sub_10007317C();
  sub_100072F64();
  v2 = v1;
  [v1 inEar];
  [v2 inEarDisabled];
  [*(*(v0 + 32) + 1240) count];
  v3 = [v2 routingAction];
  if (v3 <= 5)
  {
    v4 = off_1002B90F8[v3];
  }

  LogPrintF();
  sub_100073168();
}

uint64_t sub_1001EA130(uint64_t a1)
{
  v1 = *(*a1 + 88);
  sub_100072E94();
  return LogPrintF();
}

uint64_t sub_1001EA2E4(void *a1)
{
  v1 = [a1 batteryType];
  if ((v1 - 1) <= 3)
  {
    v2 = off_1002B8EB0[(v1 - 1)];
  }

  return LogPrintF();
}

uint64_t sub_1001EA3D4(uint64_t a1)
{
  [sub_1000730D8(a1) magnetConnected];
  *(*a1 + 1536);
  return LogPrintF();
}

uint64_t sub_1001EA558(unsigned int a1, unsigned int a2)
{
  if (a1 <= 0xF)
  {
    v2 = off_1002B8F50[a1];
  }

  if (a2 <= 0xF)
  {
    v3 = off_1002B8F50[a2];
  }

  return LogPrintF();
}

uint64_t sub_1001EA5EC(int a1)
{
  if ((a1 - 4) <= 0xB)
  {
    v1 = off_1002B8EF0[a1 - 4];
  }

  return LogPrintF();
}

void sub_1001EA650(void *a1, uint64_t a2)
{
  v3 = [a1 otherTipiDeviceBTAddress];
  v4 = *(a2 + 1092);
  if (v4 <= 0xF)
  {
    v5 = off_1002B8F50[v4];
  }

  v6 = v3;
  LogPrintF();
}

void sub_1001EA768()
{
  sub_100072F7C();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  *v0 = v1;
}

uint64_t sub_1001EA7DC(uint64_t result)
{
  v1 = result;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

uint64_t sub_1001EA978(void *a1, unsigned int a2)
{
  v3 = [a1 action];
  if (v3 <= 5)
  {
    v4 = off_1002B90F8[v3];
  }

  if (a2 <= 3)
  {
    v5 = off_1002B9128[a2];
  }

  return LogPrintF();
}

void sub_1001EAB24(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = [a1 otherTipiDeviceBTAddress];
  v6 = *(*a2 + 1092);
  if (v6 <= 0xF)
  {
    v7 = off_1002B8F50[v6];
  }

  *a3;
  v8 = v5;
  LogPrintF();
}

void sub_1001EABE8()
{
  sub_100072F7C();
  v4 = [*(v1 + 32) identifier];
  v2 = *(v0 + 40);
  v3 = CUPrintNSDataHex();
  LogPrintF();
}

void sub_1001EAC7C()
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1000148D4();
  }
}

void sub_1001EACDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = CUPrintNSDataHex();
  LogPrintF();
}

void sub_1001EAD54(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = CUPrintNSDataHex();
  LogPrintF();
}

uint64_t sub_1001EAF9C(unsigned int a1)
{
  if (a1 <= 0xA)
  {
    v1 = off_1002B8FD0[a1];
  }

  return LogPrintF();
}

uint64_t sub_1001EAFFC()
{
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return LogPrintF();
    }
  }

  return result;
}

void sub_1001EB078(id *a1, uint64_t a2)
{
  v4 = [*a1 isFirstConnectionAfterSREnable];
  v3 = [v4 objectForKeyedSubscript:a2];
  LogPrintF();
}

void sub_1001EB0FC()
{
  sub_100072F64();
  v3 = [*v2 isFirstConnectionAfterSREnable];
  *v0 = v3;
  v4 = [v3 objectForKeyedSubscript:v1];
  LogPrintF();
}

uint64_t sub_1001EB1F4(void *a1)
{
  v1 = [a1 smartRoutingMode];
  if (v1 <= 2)
  {
    v2 = off_1002B90A0[v1];
  }

  return LogPrintF();
}

void sub_1001EB4C0(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

uint64_t sub_1001EB700(unsigned int a1, uint64_t a2)
{
  if (a1 <= 0xE)
  {
    v2 = off_1002B9028[a1];
  }

  [*(a2 + 1288) hijackScore];
  return LogPrintF();
}

void sub_1001EB7C0(void *a1)
{
  [a1 idsIdentifier];
  objc_claimAutoreleasedReturnValue();
  v1 = [sub_10007315C() model];
  [v1 containsString:@"Mac"];
  sub_100072F38();
  LogPrintF();
}

void sub_1001EB864()
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

id sub_1001EB8C4(void *a1)
{
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return [a1 _startWxDiscoveryForWorkoutTimer:60];
}

uint64_t sub_1001EB968(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1)
    {
      return sub_10000C314();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_10000C314();
    }
  }

  return result;
}

void sub_1001EBAA8()
{
  sub_10007317C();
  sub_100073104();
  [v1 inEar];
  [v0 otherTipiDeviceBTAddress];
  objc_claimAutoreleasedReturnValue();
  LogPrintF();
  sub_100073168();
}

uint64_t sub_1001EBD04(void *a1)
{
  v1 = [a1 routingAction];
  if (v1 <= 5)
  {
    v2 = off_1002B90F8[v1];
  }

  return LogPrintF();
}

uint64_t sub_1001EBD68(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 32);
  return LogPrintF();
}

uint64_t sub_1001EBDCC(void *a1, uint64_t a2)
{
  v2 = a1[1];
  [a1 _aacpConnectedCheck:a2];
  sub_100072F38();
  return LogPrintF();
}

uint64_t sub_1001EBF44(id *a1, unsigned int a2)
{
  v3 = [*a1 audioRoute];
  if (v3 <= 4)
  {
    v4 = off_1002B9148[v3];
  }

  if (a2 <= 4)
  {
    v5 = off_1002B9170[a2 - 1];
  }

  return LogPrintF();
}

void sub_1001EC09C()
{
  sub_10007317C();
  sub_100072F64();
  [*v2 objectForKeyedSubscript:?];
  [objc_claimAutoreleasedReturnValue() inEar];
  v3 = [*v1 objectForKeyedSubscript:v0];
  v6 = [v3 otherTipiDeviceBTAddress];
  LogPrintF();

  sub_100073168();
}

uint64_t sub_1001EC61C(unsigned int a1)
{
  if (a1 <= 2)
  {
    v1 = (&off_1002B9250)[a1];
  }

  return LogPrintF();
}

void sub_1001EC8F8(void *a1, uint64_t a2)
{
  v2 = [a1 stringFromDate:a2];
  LogPrintF();
}

void sub_1001ED7A4(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

void sub_1001ED7FC(void *a1)
{
  v2 = [a1 userTempDisableDEOCIntervalMap];
  [v2 count];
  v3 = [a1 userTempDisableDEOCIntervalMap];
  LogPrintF();
}

uint64_t sub_1001ED87C()
{
  if (dword_1002F6928 > 90)
  {
    return 1;
  }

  sub_1000769FC();
  if (v3 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *v1 = [v2 localizedDescription];
  v5 = [v0 userTempDisableDEOCIntervalMap];
  LogPrintF();

  return 0;
}

uint64_t sub_1001ED93C(void *a1, void *a2)
{
  v3 = [a1 userTempDisableDEOCIntervalMap];
  *a2 = v3;
  [v3 count];
  return LogPrintF();
}

uint64_t sub_1001ED998()
{
  if (dword_1002F6928 > 90)
  {
    return 1;
  }

  sub_1000769FC();
  if (v3 == -1 && !_LogCategory_Initialize())
  {
    return 1;
  }

  *v1 = [*(v2 + 32) bluetoothAddress];
  v5 = [v0 localizedDescription];
  LogPrintF();

  return 0;
}

void sub_1001EDA58(uint64_t a1, unsigned __int8 a2)
{
  v6 = [*(a1 + 32) identifier];
  v4 = [*(a1 + 32) bluetoothAddress];
  v5 = (&off_1002B92F8)[a2];
  LogPrintF();
}

void sub_1001EDAF8()
{
  sub_1000769FC();
  v4 = *(v3 + 40);
  if (v4 <= 3)
  {
    v5 = (&off_1002B92F8)[v4];
  }

  *v1 = [*(v2 + 32) identifier];
  v7 = [*(v2 + 32) bluetoothAddress];
  v6 = [v0 localizedDescription];
  LogPrintF();
}

uint64_t sub_1001EDBD0(uint64_t result)
{
  v1 = result;
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

void sub_1001EDC44(void *a1, void *a2)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    [a1 length];
    sub_10007BF3C();
    v4 = CUPrintNSDataHex();
    LogPrintF();
  }

  *a2 = 0;
}

void sub_1001EDCE4(void *a1, void *a2)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    [a1 length];
    sub_10007BF3C();
    v4 = CUPrintNSDataHex();
    LogPrintF();
  }

  *a2 = 0;
}

void sub_1001EDD84(void *a1, void *a2)
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    [a1 length];
    sub_10007BF3C();
    v4 = CUPrintNSDataHex();
    LogPrintF();
  }

  *a2 = 0;
}

void sub_1001EDE24(id *a1, void *a2)
{
  v4 = [*a1 bluetoothAddress];
  v3 = [a2 bluetoothAddress];
  LogPrintF();
}

void sub_1001EDEEC()
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001EDF4C()
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001EDFAC()
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

void sub_1001EE028()
{
  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_10000C314();
  }
}

uint64_t sub_1001EE088(unsigned int a1, unsigned int a2, unsigned int *a3)
{
  if (a1 <= 4)
  {
    v3 = off_1002B9420[a1];
  }

  if (a2 <= 4)
  {
    v4 = off_1002B9420[a2];
  }

  v7 = a3[31];
  v8 = a3[32];
  v6 = a3[30];
  return LogPrintF();
}