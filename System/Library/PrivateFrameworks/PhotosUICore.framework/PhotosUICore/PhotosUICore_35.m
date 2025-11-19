uint64_t sub_1A40956B8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1A40A46A4(v12, v10, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v14 = a1(v10);
      if (v3)
      {
        return sub_1A40A5E60(v10, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      }

      if (v14)
      {
        break;
      }

      sub_1A40A5E60(v10, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_1A40A5DF8(v10, v18, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1A4095884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A3C5322C();
  *a1 = v3;
  return result;
}

uint64_t sub_1A40958C0@<X0>(void *a1@<X0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, char *a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  LODWORD(v192) = a7;
  v204 = a5;
  LODWORD(v203) = a4;
  LODWORD(v202) = a3;
  v201 = a8;
  sub_1A40A5AE8(0, &qword_1EB122BE0, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F948]);
  v193 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v194 = &v164 - v12;
  v13 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v177 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v181 = &v164 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v178 = &v164 - v16;
  sub_1A40A179C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v196 = (&v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v197 = (&v164 - v20);
  v21 = MEMORY[0x1E697E830];
  sub_1A40A5AE8(0, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
  v198 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v188 = (&v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v190 = &v164 - v25;
  sub_1A40A16B4(0);
  v200 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v187 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v189 = &v164 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v191 = &v164 - v31;
  sub_1A40A5AE8(0, &qword_1EB1232B0, sub_1A40A16B4, sub_1A40A3BA8, v21);
  v166 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v167 = &v164 - v33;
  sub_1A40A1678(0);
  v168 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v170 = &v164 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1648(0);
  v169 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v172 = &v164 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1580(0);
  v171 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v164 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A14E0();
  v173 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v175 = &v164 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A14B8(0);
  v205 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v176 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1434();
  v45 = v44;
  v183 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v180 = &v164 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1378();
  v48 = v47;
  v184 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v182 = &v164 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A128C();
  v51 = v50;
  v186 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v185 = &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
  v54 = v53;
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v57 = &v164 - v56;
  sub_1A3C5322C();
  if (v211 == 24)
  {
    LODWORD(v195) = a2 == 24;
  }

  else
  {
    LOBYTE(v207) = v211;
    if (a2 == 24)
    {
      LODWORD(v195) = 0;
    }

    else
    {
      LOBYTE(v209) = a2;
      sub_1A3C4CDB0();
      LODWORD(v195) = sub_1A524C594();
    }
  }

  sub_1A3C5322C();
  v199 = a6;
  if (v211 == 24)
  {
    LODWORD(v58) = v202 == 24;
  }

  else
  {
    LOBYTE(v207) = v211;
    if (v202 == 24)
    {
      LODWORD(v58) = 0;
    }

    else
    {
      LOBYTE(v209) = v202;
      sub_1A3C4CDB0();
      LODWORD(v58) = sub_1A524C594();
    }
  }

  v59 = v204;
  if (v203)
  {
    LODWORD(v202) = v58;
    v203 = v45;
    v58 = v48;
    v204 = v57;
    v60 = v51;
    v61 = v55;
    v62 = v54;
    v64 = v59[3];
    v63 = v59[4];
    v65 = v59;
    v66 = a1;
    __swift_project_boxed_opaque_existential_1(v59, v64);
    sub_1A3C5322C();
    if ((*(v63 + 64))(&v211, v64, v63))
    {
      v67 = 1;
      v68 = v201;
      v54 = v62;
      v55 = v61;
      return (*(v55 + 56))(v68, v67, 1, v54);
    }

    v69 = v65[3];
    v70 = v65[4];
    __swift_project_boxed_opaque_existential_1(v65, v69);
    sub_1A3C5322C();
    v71 = (*(v70 + 72))(&v211, v69, v70);
    v54 = v62;
    v55 = v61;
    v51 = v60;
    a1 = v66;
    v57 = v204;
    v48 = v58;
    v45 = v203;
    LOBYTE(v58) = v202;
    if (v71)
    {
      v67 = 1;
      v68 = v201;
      return (*(v55 + 56))(v68, v67, 1, v54);
    }
  }

  if (!shouldUseNewCollectionsLayout()())
  {
    v79 = sub_1A5249574();
    v80 = v196;
    *v196 = v79;
    v80[1] = 0;
    *(v80 + 16) = 0;
    sub_1A40A50E4();
    v81 = v199;
    sub_1A4097590(a1, v199, v58 & 1);
    KeyPath = swift_getKeyPath();
    v83 = 0;
    if (v195)
    {
      v83 = *(*v81 + 144);
    }

    v84 = v188;
    sub_1A40A5290(v196, v188, sub_1A40A179C);
    v85 = (v84 + *(v198 + 36));
    *v85 = KeyPath;
    v85[1] = v83;
    v86 = swift_getKeyPath();
    v87 = v84;
    v88 = v187;
    sub_1A40A514C(v87, v187, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
    v89 = v88 + *(v200 + 36);
    *v89 = v86;
    *(v89 + 8) = 0;
    v90 = v88;
    v91 = v189;
    sub_1A40A5290(v90, v189, sub_1A40A16B4);
    sub_1A3CD87FC(v91, v194);
    swift_storeEnumTagMultiPayload();
    v92 = sub_1A40A3C30();
    *&v211 = v205;
    *(&v211 + 1) = v92;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v211 = v45;
    *(&v211 + 1) = OpaqueTypeConformance2;
    v94 = swift_getOpaqueTypeConformance2();
    *&v211 = v48;
    *(&v211 + 1) = v94;
    swift_getOpaqueTypeConformance2();
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    sub_1A5249744();
    sub_1A40A554C(v91, sub_1A40A16B4);
    goto LABEL_43;
  }

  v203 = v45;
  v189 = v54;
  v72 = v199;
  v73 = *v199;

  v74 = sub_1A3C5322C();
  v75 = v211;
  v76 = (*(*v73 + 680))(v74);
  if (*(v76 + 16) && (v77 = sub_1A3C6246C(v75), (v78 & 1) != 0))
  {
    v202 = *(*(v76 + 56) + 8 * v77);
  }

  else
  {
    v202 = 0;
  }

  sub_1A3C5322C();
  if (v211 == 24)
  {
    v95 = v192 == 24;
  }

  else
  {
    LOBYTE(v207) = v211;
    if (v192 == 24)
    {
      v95 = 0;
    }

    else
    {
      LOBYTE(v209) = v192;
      sub_1A3C4CDB0();
      v95 = sub_1A524C594();
    }
  }

  v96 = sub_1A5249574();
  v97 = v197;
  *v197 = v96;
  v97[1] = 0;
  *(v97 + 16) = 0;
  sub_1A40A50E4();
  sub_1A4097590(a1, v72, v58 & 1);
  v98 = swift_getKeyPath();
  v99 = 0;
  if (v195)
  {
    v99 = v73[18];
  }

  v204 = v57;
  v196 = a1;
  v192 = v51;
  v195 = v55;
  v100 = v190;
  sub_1A40A5290(v197, v190, sub_1A40A179C);
  v101 = (v100 + *(v198 + 36));
  *v101 = v98;
  v101[1] = v99;
  v102 = swift_getKeyPath();
  v103 = v100;
  v104 = v191;
  sub_1A40A514C(v103, v191, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
  v105 = v104 + *(v200 + 36);
  *v105 = v102;
  *(v105 + 8) = 0;
  result = swift_getKeyPath();
  v107 = v202;
  if (v202)
  {
    v108 = result;
    v109 = v167;
    sub_1A40A5290(v104, v167, sub_1A40A16B4);
    v110 = (v109 + *(v166 + 36));
    *v110 = v108;
    v110[1] = v107;
    v111 = swift_getKeyPath();
    v112 = *(*v73 + 736);

    v112(&v209, v113);
    LOBYTE(v216) = 2;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v211 == v207)
    {
    }

    else
    {
      v114 = sub_1A524EAB4();

      v95 &= v114;
    }

    v115 = v199;
    v116 = v177;
    v117 = v109;
    v118 = v170;
    sub_1A40A514C(v117, v170, &qword_1EB1232B0, sub_1A40A16B4, sub_1A40A3BA8, MEMORY[0x1E697E830]);
    v119 = v118 + *(v168 + 36);
    *v119 = v111;
    *(v119 + 8) = v95 & 1;
    v120 = swift_getKeyPath();
    (v112)(&v211);
    v121 = v211;
    v122 = v172;
    sub_1A40A5290(v118, v172, sub_1A40A1678);
    v123 = v122 + *(v169 + 36);
    *v123 = v120;
    *(v123 + 8) = v121;
    v124 = swift_getKeyPath();
    (*(*v73 + 632))(&v211);
    v125 = v211;
    v126 = v122;
    v127 = v174;
    v128 = sub_1A40A5290(v126, v174, sub_1A40A1648);
    v129 = v127 + *(v171 + 36);
    *v129 = v124;
    *(v129 + 8) = v125;
    v130 = MEMORY[0x1A5907080](v128, 0.5, 0.85, 0.0);
    (v112)(&v211);
    v131 = v211;
    v132 = v175;
    sub_1A40A5290(v127, v175, sub_1A40A1580);
    v133 = v132 + *(v173 + 36);
    *v133 = v130;
    *(v133 + 8) = v131;
    sub_1A3C5322C();
    v134 = v207;
    v216 = *(v115 + 5);
    v211 = *(v115 + 5);
    sub_1A40A5214();
    v199 = v135;
    sub_1A524B6A4();
    v165 = v48;
    v188 = v73;
    if (v134 == 24)
    {
      v136 = 1.0;
      if (v209 != 24)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    LOBYTE(v211) = v134;
    if (v209 == 24)
    {
      v136 = 1.0;
    }

    else
    {
      v206 = v209;
      sub_1A3C4CDB0();
      v136 = 1.0;
      if (sub_1A524C594())
      {
LABEL_41:
        v136 = 0.001;
      }
    }

LABEL_42:
    v137 = v176;
    sub_1A40A5290(v132, v176, sub_1A40A14E0);
    *(v137 + *(v205 + 36)) = v136;
    v138 = *(v115 + 3);
    v213 = *(v115 + 2);
    v214 = v138;
    v215 = v115[8];
    v139 = *(v115 + 1);
    v211 = *v115;
    v212 = v139;
    LODWORD(v198) = sub_1A40972B8();
    v209 = 0u;
    v210 = 0u;
    v140 = v196;
    v141 = v178;
    sub_1A40A46A4(v196, v178, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v142 = *(v116 + 80);
    v143 = swift_allocObject();
    sub_1A40A5DF8(v141, v143 + ((v142 + 16) & ~v142), type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v144 = v181;
    sub_1A40A46A4(v140, v181, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v145 = swift_allocObject();
    v146 = *(v115 + 3);
    *(v145 + 48) = *(v115 + 2);
    *(v145 + 64) = v146;
    *(v145 + 80) = v115[8];
    v147 = *(v115 + 1);
    *(v145 + 16) = *v115;
    *(v145 + 32) = v147;
    sub_1A40A5DF8(v144, v145 + ((v142 + 88) & ~v142), type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v148 = swift_allocObject();
    v149 = *(v115 + 3);
    *(v148 + 48) = *(v115 + 2);
    *(v148 + 64) = v149;
    *(v148 + 80) = v115[8];
    v150 = *(v115 + 1);
    *(v148 + 16) = *v115;
    *(v148 + 32) = v150;
    sub_1A409470C(v115, &v207);
    sub_1A409470C(v115, &v207);
    v163 = sub_1A40A3C30();
    v151 = v180;
    sub_1A524B024();

    sub_1A3C35B00(&v209);
    sub_1A40A554C(v137, sub_1A40A14B8);
    sub_1A40A5D34(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
    sub_1A5246D14();
    *(swift_allocObject() + 16) = xmmword_1A52F8E10;
    sub_1A5246CB4();
    sub_1A3C5322C();
    v211 = v216;
    v152 = sub_1A524B6C4();
    v153 = v188;
    v209 = v207;
    LOBYTE(v210) = v208;
    v154 = (*(*v188 + 504))(v152);
    *(&v212 + 1) = &type metadata for ShelvesStackDropDelegate;
    *&v213 = sub_1A40A55AC();
    *&v211 = swift_allocObject();
    sub_1A4268F74(v153, &v206, &v209, v154, v211 + 16);
    v207 = __PAIR128__(v163, v205);
    v155 = swift_getOpaqueTypeConformance2();
    v156 = v182;
    v157 = v203;
    sub_1A524B044();

    (*(v183 + 8))(v151, v157);
    __swift_destroy_boxed_opaque_existential_0(&v211);
    *&v211 = v157;
    *(&v211 + 1) = v155;
    v158 = swift_getOpaqueTypeConformance2();
    v159 = v185;
    v160 = v165;
    sub_1A524AF14();
    (*(v184 + 8))(v156, v160);
    v161 = v186;
    v162 = v192;
    (*(v186 + 16))(v194, v159, v192);
    swift_storeEnumTagMultiPayload();
    *&v211 = v160;
    *(&v211 + 1) = v158;
    swift_getOpaqueTypeConformance2();
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    v57 = v204;
    sub_1A5249744();

    (*(v161 + 8))(v159, v162);
    v54 = v189;
    v55 = v195;
LABEL_43:
    v68 = v201;
    sub_1A40A514C(v57, v201, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
    v67 = 0;
    return (*(v55 + 56))(v68, v67, 1, v54);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4097260@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A5248E14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1A40972B8()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (((*(**v0 + 600))(v3) & 1) != 0 && ((*(*v6 + 632))(&v25), v24 = v25, v23 = 1, static LemonadeShelvesViewModelDisplayState.== infix(_:_:)(&v24, &v23)))
  {
    v7 = (*(*v6 + 584))();
    v8 = *(v7 + 16);
    if (v8)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1A3C4ED58(0, v8, 0);
      v9 = v22;
      v10 = *(v2 + 80);
      v20 = v7;
      v11 = v7 + ((v10 + 32) & ~v10);
      v12 = *(v2 + 72);
      do
      {
        sub_1A40A46A4(v11, v5, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        sub_1A3C5322C();
        v13 = v21;
        sub_1A40A5E60(v5, type metadata accessor for LemonadeFeatureLibrary.Shelf);
        v22 = v9;
        v15 = *(v9 + 16);
        v14 = *(v9 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1A3C4ED58((v14 > 1), v15 + 1, 1);
          v9 = v22;
        }

        *(v9 + 16) = v15 + 1;
        *(v9 + v15 + 32) = v13;
        v11 += v12;
        --v8;
      }

      while (v8);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v18 = (*(*v6 + 504))(v17);
    v16 = sub_1A4097EA0(v18, v9);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1A4097590(uint64_t a1, uint64_t a2, int a3)
{
  sub_1A40A568C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A40A194C(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + 16))
  {
    v12 = 3;
  }

  else
  {
    v12 = 0;
  }

  sub_1A4098088(a1, *(a2 + 8), v12, a3, v11);
  sub_1A3C5322C();
  sub_1A3C3DEB4();
  sub_1A524E384();
  v13 = sub_1A5242394();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  sub_1A40A37A4(&qword_1EB122370, sub_1A40A194C, sub_1A40A2A24, sub_1A40A35F0);
  sub_1A524A614();
  sub_1A40A5E60(v8, sub_1A40A568C);
  sub_1A3D5FAFC(v16);
  return sub_1A40A5E60(v11, sub_1A40A194C);
}

uint64_t sub_1A40977C8(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v9 = v16;

  if ((v9 & 1) == 0)
  {
    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40A5E60(&v15, sub_1A40A50B0);
    (*(v5 + 8))(v7, v4);
  }

  sub_1A40979AC(v8);
  sub_1A5242FA4();

  v11 = sub_1A40979AC(v8);
  v14 = *(a2 + 56);
  v13[1] = v11;
  sub_1A40A5D34(0, &qword_1EB121BF8, sub_1A40A5034, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A40979AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1A40A4BFC(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      ++v4;
      swift_dynamicCast();
      v6 = *(v12 + 16);
      v5 = *(v12 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1A40A4BFC((v5 > 1), v6 + 1, 1);
      }

      *(v12 + 16) = v6 + 1;
      v7 = v12 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1A4097AAC(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(a1 + 56);
  v31[0] = *(a1 + 56);
  sub_1A40A5D34(0, &qword_1EB121BF8, sub_1A40A5034, MEMORY[0x1E6981790]);
  v27[1] = v6;
  sub_1A524B6A4();
  if (v28)
  {
    v7 = v28;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(a1 + 24);
  v34 = v8;
  v35 = *(a1 + 32);
  v9 = v35;

  if (v9 == 1)
  {

    v27[0] = v8;
  }

  else
  {
    sub_1A524D254();
    v10 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40A5E60(&v34, sub_1A40A50B0);
    v11 = *(v3 + 8);
    v11(v5, v2);
    v27[0] = *&v31[0];

    sub_1A524D254();
    v12 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A40A5E60(&v34, sub_1A40A50B0);
    v11(v5, v2);
  }

  v13 = sub_1A5242F94();

  if (!v13)
  {

LABEL_23:
    sub_1A5242FA4();

    v31[0] = v36;
    *&v28 = 0;
    return sub_1A524B6B4();
  }

  v15 = *(v13 + 16);
  if (!v15)
  {
LABEL_22:

    goto LABEL_23;
  }

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  while (v16 < *(v13 + 16))
  {
    sub_1A3D5FB50(v13 + 32 + 40 * v16++, v31);
    v23 = *(v7 + 16) + 1;
    v24 = v7 + 32;
    while (--v23)
    {
      v25 = v24 + 40;
      v26 = MEMORY[0x1A59096D0]();
      v24 = v25;
      if (v26)
      {
        result = sub_1A3D5FAFC(v31);
        goto LABEL_13;
      }
    }

    v28 = v31[0];
    v29 = v31[1];
    v30 = v32;
    result = swift_isUniquelyReferenced_nonNull_native();
    v33 = v17;
    if ((result & 1) == 0)
    {
      result = sub_1A40A4BFC(0, *(v17 + 16) + 1, 1);
      v17 = v33;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1A40A4BFC((v18 > 1), v19 + 1, 1);
      v17 = v33;
    }

    *(v17 + 16) = v19 + 1;
    v20 = v17 + 40 * v19;
    v21 = v28;
    v22 = v29;
    *(v20 + 64) = v30;
    *(v20 + 32) = v21;
    *(v20 + 48) = v22;
LABEL_13:
    if (v16 == v15)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4097EA0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 16);
  if (v3 < v2)
  {
    return 0;
  }

  if ((v3 - v2) >= 0)
  {
    v4 = result;
    v5 = 0;
    v10 = a2 + 32;
    v6 = *(result + 16);
    while (v6 >= v5)
    {
      if (v5 == v3 + 1)
      {
        goto LABEL_31;
      }

      if (v3 == v2)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v8 = MEMORY[0x1E69E7CC0];
      if (v6 != v5)
      {
        if (v2)
        {
          sub_1A40A60A0(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
          v8 = swift_allocObject();
          v9 = _swift_stdlib_malloc_size(v8);
          v8[2] = v2;
          v8[3] = 2 * v9 - 64;
        }

        result = memcpy(v8 + 4, (v10 + v5), v2);
      }

      if (v8[2] == v2)
      {
        if (!v2 || v8 == v4)
        {
LABEL_26:

          return 1;
        }

        v7 = 0;
        while (v7 < v8[2])
        {
          if (v2 == v7)
          {
            goto LABEL_29;
          }

          sub_1A3C4CDB0();
          result = sub_1A524C594();
          if ((result & 1) == 0)
          {
            goto LABEL_18;
          }

          if (v2 == ++v7)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

LABEL_18:

      if (v5 == v3 - v2)
      {
        return 0;
      }

      v6 = ++v5 + v2;
      if (__OFADD__(v5, v2))
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4098088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v577 = a4;
  v576 = a3;
  v578 = a2;
  v584 = a1;
  v583 = a5;
  v469 = type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v469);
  v468 = &v406 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2990();
  v530 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v473 = &v406 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v464 = type metadata accessor for LemonadeSearchCollectionResultsFeature(0);
  MEMORY[0x1EEE9AC00](v464);
  v472 = &v406 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v467);
  v465 = &v406 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A28FC();
  v525 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v471 = &v406 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v462 = type metadata accessor for LemonadeSuggestionsFeature(0);
  MEMORY[0x1EEE9AC00](v462);
  v470 = &v406 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697F948];
  sub_1A40A5AE8(0, &qword_1EB127EF8, sub_1A40A285C, sub_1A40A2990, MEMORY[0x1E697F948]);
  v526 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v528 = &v406 - v15;
  sub_1A40A56C0();
  v522 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v523 = &v406 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A285C();
  v527 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v524 = &v406 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2814(0);
  v559 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v529 = &v406 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v521 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v466 = &v406 - v23;
  sub_1A40A4FCC(0, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v519 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v463 = &v406 - v25;
  sub_1A40A5760();
  v516 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v518 = &v406 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2740();
  v555 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v520 = &v406 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v515 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v461 = &v406 - v31;
  v458 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v458);
  v457 = &v406 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A26AC();
  v517 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v460 = &v406 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for LemonadePhototypesFeature(0);
  MEMORY[0x1EEE9AC00](v455);
  v459 = &v406 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122AF8, sub_1A40A2588, sub_1A40A2814, v13);
  v556 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v558 = &v406 - v37;
  sub_1A40A5AE8(0, &qword_1EB122B68, sub_1A40A25D0, sub_1A40A2740, v13);
  v551 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v553 = &v406 - v39;
  sub_1A40A5AE8(0, &qword_1EB122CC0, sub_1A40A2618, sub_1A40A26AC, v13);
  v512 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v513 = &v406 - v41;
  sub_1A40A25D0(0);
  v552 = v42;
  MEMORY[0x1EEE9AC00](v42);
  v514 = &v406 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2588(0);
  v557 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v554 = &v406 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2540(0);
  v582 = v46;
  MEMORY[0x1EEE9AC00](v46);
  v560 = &v406 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v450);
  v448 = &v406 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2618();
  v511 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v456 = &v406 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = type metadata accessor for LemonadePhotosChallengeFeature(0);
  MEMORY[0x1EEE9AC00](v444);
  v454 = &v406 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v446);
  v445 = &v406 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A24AC();
  v509 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v453 = &v406 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v443 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v443);
  v452 = &v406 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5834();
  v505 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v507 = &v406 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A240C();
  v550 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v510 = &v406 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v504 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v451 = &v406 - v61;
  v442 = type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(0);
  MEMORY[0x1EEE9AC00](v442);
  v441 = &v406 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2378();
  v508 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v449 = &v406 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature();
  MEMORY[0x1EEE9AC00](v439);
  v447 = &v406 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122B70, sub_1A40A2268, sub_1A40A240C, v13);
  v546 = v66;
  MEMORY[0x1EEE9AC00](v66);
  v548 = &v406 - v67;
  sub_1A40A5AE8(0, &qword_1EB122CD8, sub_1A40A22B0, sub_1A40A2378, v13);
  v500 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v503 = &v406 - v69;
  sub_1A40A2268(0);
  v547 = v70;
  MEMORY[0x1EEE9AC00](v70);
  v506 = &v406 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2220(0);
  v570 = v72;
  MEMORY[0x1EEE9AC00](v72);
  v549 = &v406 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v410 = type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v410);
  v409 = &v406 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A22E4();
  v437 = v75;
  v436 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v408 = &v406 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A22B0(0);
  v499 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v502 = &v406 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = type metadata accessor for LemonadeImportSourcesFeature(0);
  MEMORY[0x1EEE9AC00](v407);
  v501 = &v406 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
  MEMORY[0x1EEE9AC00](v432);
  v431 = &v406 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A218C();
  v497 = v81;
  MEMORY[0x1EEE9AC00](v81);
  v440 = &v406 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v430 = type metadata accessor for LemonadeSharedWithYouFeature();
  MEMORY[0x1EEE9AC00](v430);
  v438 = &v406 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A58D4();
  v495 = v84;
  MEMORY[0x1EEE9AC00](v84);
  v496 = &v406 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A20EC();
  v545 = v86;
  MEMORY[0x1EEE9AC00](v86);
  v498 = &v406 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v494 = v88;
  MEMORY[0x1EEE9AC00](v88);
  v435 = &v406 - v89;
  v429 = type metadata accessor for LemonadeICloudLinksShelfProvider();
  MEMORY[0x1EEE9AC00](v429);
  v428 = &v406 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A2058();
  v493 = v91;
  MEMORY[0x1EEE9AC00](v91);
  v434 = &v406 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v425 = type metadata accessor for LemonadeICloudLinksFeature();
  MEMORY[0x1EEE9AC00](v425);
  v433 = &v406 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5AE8(0, &qword_1EB122B08, sub_1A40A1F34, sub_1A40A2220, v13);
  v566 = v94;
  MEMORY[0x1EEE9AC00](v94);
  v568 = &v406 - v95;
  sub_1A40A5AE8(0, &qword_1EB122B88, sub_1A40A1F7C, sub_1A40A20EC, v13);
  v541 = v96;
  MEMORY[0x1EEE9AC00](v96);
  v543 = &v406 - v97;
  sub_1A40A5AE8(0, &qword_1EB122D00, sub_1A40A1FC4, sub_1A40A2058, v13);
  v490 = v98;
  MEMORY[0x1EEE9AC00](v98);
  v491 = &v406 - v99;
  sub_1A40A1F7C(0);
  v542 = v100;
  MEMORY[0x1EEE9AC00](v100);
  v492 = &v406 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1F34(0);
  v567 = v102;
  MEMORY[0x1EEE9AC00](v102);
  v544 = &v406 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1EEC(0);
  v574 = v104;
  MEMORY[0x1EEE9AC00](v104);
  v569 = &v406 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v421 = type metadata accessor for LemonadeMapFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v421);
  v420 = &v406 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1FC4();
  v489 = v107;
  MEMORY[0x1EEE9AC00](v107);
  v427 = &v406 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = type metadata accessor for LemonadeMapFeature(0);
  MEMORY[0x1EEE9AC00](v419);
  v426 = &v406 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v487 = v110;
  MEMORY[0x1EEE9AC00](v110);
  v424 = &v406 - v111;
  sub_1A40A1DB0(0, &qword_1EB122CE0, MEMORY[0x1E697F948]);
  v485 = v112;
  MEMORY[0x1EEE9AC00](v112);
  v486 = &v406 - v113;
  sub_1A40A1D90(0);
  v539 = v114;
  MEMORY[0x1EEE9AC00](v114);
  v488 = &v406 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C50BAC();
  v417 = v116;
  MEMORY[0x1EEE9AC00](v116);
  v415 = &v406 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1E58();
  v484 = v118;
  MEMORY[0x1EEE9AC00](v118);
  v423 = &v406 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v483 = v120;
  MEMORY[0x1EEE9AC00](v120);
  v422 = &v406 - v121;
  sub_1A40A5AE8(0, &qword_1EB122B78, sub_1A40A1CBC, sub_1A40A1D90, v13);
  v536 = v122;
  MEMORY[0x1EEE9AC00](v122);
  v538 = &v406 - v123;
  sub_1A40A5974();
  v480 = v124;
  MEMORY[0x1EEE9AC00](v124);
  v481 = &v406 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1CBC();
  v537 = v126;
  MEMORY[0x1EEE9AC00](v126);
  v482 = &v406 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1C74(0);
  v565 = v128;
  MEMORY[0x1EEE9AC00](v128);
  v540 = &v406 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  v479 = v130;
  MEMORY[0x1EEE9AC00](v130);
  v418 = &v406 - v131;
  v411 = type metadata accessor for LemonadeSocialGroupsShelfProvider();
  MEMORY[0x1EEE9AC00](v411);
  v133 = &v406 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1BE0();
  v477 = v134;
  MEMORY[0x1EEE9AC00](v134);
  v416 = &v406 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4AFFC();
  v137 = v136;
  MEMORY[0x1EEE9AC00](v136);
  v414 = &v406 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5A48();
  v475 = v139;
  MEMORY[0x1EEE9AC00](v139);
  v476 = &v406 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1B40();
  v535 = v141;
  MEMORY[0x1EEE9AC00](v141);
  v478 = &v406 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
  v474 = v143;
  MEMORY[0x1EEE9AC00](v143);
  v413 = &v406 - v144;
  sub_1A40A4FCC(0, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  MEMORY[0x1EEE9AC00](v145);
  v412 = &v406 - v146;
  sub_1A40A5AE8(0, &qword_1EB122AC0, sub_1A40A1994, sub_1A40A2540, v13);
  v579 = v147;
  MEMORY[0x1EEE9AC00](v147);
  v581 = &v406 - v148;
  sub_1A40A5AE8(0, &qword_1EB122AD0, sub_1A40A19DC, sub_1A40A1EEC, v13);
  v571 = v149;
  MEMORY[0x1EEE9AC00](v149);
  v573 = &v406 - v150;
  sub_1A40A5AE8(0, &qword_1EB122B00, sub_1A40A1A24, sub_1A40A1C74, v13);
  v561 = v151;
  MEMORY[0x1EEE9AC00](v151);
  v563 = &v406 - v152;
  sub_1A40A5AE8(0, &qword_1EB122B80, sub_1A40A1A6C, sub_1A40A1B40, v13);
  v531 = v153;
  MEMORY[0x1EEE9AC00](v153);
  v533 = &v406 - v154;
  sub_1A40A5B6C();
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v406 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1A6C();
  v532 = v158;
  MEMORY[0x1EEE9AC00](v158);
  v160 = &v406 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1A24(0);
  v562 = v161;
  MEMORY[0x1EEE9AC00](v161);
  v534 = &v406 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A19DC(0);
  v572 = v163;
  MEMORY[0x1EEE9AC00](v163);
  v564 = &v406 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A1994(0);
  v580 = v165;
  MEMORY[0x1EEE9AC00](v165);
  v575 = &v406 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A4FCC(0, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
  MEMORY[0x1EEE9AC00](v167);
  v169 = &v406 - v168;
  v170 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v170);
  v172 = &v406 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A46A4(v584, v172, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v290 = *(v172 + 2);
      v584 = *(v172 + 1);
      v570 = v290;
      v291 = *(v172 + 3);
      LOBYTE(v290) = v172[32];
      v569 = *(v172 + 5);
      *&v588 = v291;
      BYTE8(v588) = v290;
      v292 = sub_1A3C445AC();
      v293 = v578;

      v294 = v291;
      v295 = sub_1A3C5A374();
      v296 = v412;
      sub_1A3EFC060(&v588, v293, v576, v295 & 1, v577 & 1, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v292, v412);
      sub_1A40A5C40(v296, v157, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2B44();
      sub_1A40A2BD4();
      sub_1A5249744();
      sub_1A40A46A4(v160, v533, sub_1A40A1A6C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64();
      v297 = v534;
      sub_1A5249744();
      sub_1A40A5E60(v160, sub_1A40A1A6C);
      sub_1A40A46A4(v297, v563, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v298 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v297, sub_1A40A1A24);
      sub_1A40A46A4(v298, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v299 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v298, sub_1A40A19DC);
      sub_1A40A46A4(v299, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v299, sub_1A40A1994);
      v182 = v296;
      v183 = &qword_1EB125C08;
      v184 = sub_1A3C445AC;
      v185 = &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider;
      goto LABEL_35;
    case 2u:
      v244 = *(v172 + 2);
      v246 = *(v172 + 16);
      *&v588 = *(v172 + 3);
      v245 = v588;
      WORD4(v588) = v246;
      v247 = sub_1A3C36888();
      v248 = v578;

      v249 = v245;
      v203 = &type metadata for LemonadePeopleShelfProvider;
      v250 = sub_1A3C5A374();
      v251 = v413;
      sub_1A3EFC060(&v588, v248, v576, v250 & 1, v577 & 1, &type metadata for LemonadePeopleShelfProvider, v247, v413);
      v252 = sub_1A3C36888;
      sub_1A40A5C40(v251, v476, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2D14();
      sub_1A3C56C94(&qword_1EB125BF0, sub_1A40A1BE0);
      v253 = v478;
      sub_1A5249744();
      sub_1A40A46A4(v253, v533, sub_1A40A1B40);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64();
      v254 = v534;
      sub_1A5249744();
      sub_1A40A5E60(v253, sub_1A40A1B40);
      sub_1A40A46A4(v254, v563, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v255 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v254, sub_1A40A1A24);
      sub_1A40A46A4(v255, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v256 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v255, sub_1A40A19DC);
      sub_1A40A46A4(v256, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v256, sub_1A40A1994);
      v182 = v251;
      v183 = &qword_1EB12A688;
      goto LABEL_18;
    case 3u:
      v267 = v414;
      sub_1A40A5DF8(v172, v414, sub_1A3C4AFFC);
      sub_1A40A46A4(v267 + *(v137 + 40), v133, type metadata accessor for LemonadeSocialGroupsShelfProvider);
      v268 = sub_1A3C56C94(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
      v269 = v578;

      v270 = v411;
      v271 = sub_1A3C5A374();
      v272 = v416;
      sub_1A3EFC060(v133, v269, v576, v271 & 1, v577 & 1, v270, v268, v416);
      sub_1A40A46A4(v272, v476, sub_1A40A1BE0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2D14();
      sub_1A3C56C94(&qword_1EB125BF0, sub_1A40A1BE0);
      v273 = v478;
      sub_1A5249744();
      sub_1A40A46A4(v273, v533, sub_1A40A1B40);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64();
      v274 = v534;
      sub_1A5249744();
      sub_1A40A5E60(v273, sub_1A40A1B40);
      sub_1A40A46A4(v274, v563, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v275 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v274, sub_1A40A1A24);
      sub_1A40A46A4(v275, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v276 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v275, sub_1A40A19DC);
      sub_1A40A46A4(v276, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v276, sub_1A40A1994);
      sub_1A40A5E60(v272, sub_1A40A1BE0);
      v277 = sub_1A3C4AFFC;
      v278 = v267;
      goto LABEL_29;
    case 4u:
      v197 = *(v172 + 2);
      v584 = *(v172 + 1);
      v223 = v172[32];
      *&v588 = *(v172 + 3);
      v222 = v588;
      BYTE8(v588) = v223;
      v224 = sub_1A3C440BC();
      v225 = v578;

      v202 = v222;
      v203 = &type metadata for LemonadeEventsFeature.ShelfProvider;
      v226 = sub_1A3C5A374();
      v205 = v418;
      sub_1A3EFC060(&v588, v225, v576, v226 & 1, v577 & 1, &type metadata for LemonadeEventsFeature.ShelfProvider, v224, v418);
      v206 = &qword_1EB12A768;
      v207 = sub_1A3C440BC;
      sub_1A40A5C40(v205, v481, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2E34();
      sub_1A40A2EC4();
      v227 = v482;
      sub_1A5249744();
      sub_1A40A46A4(v227, v538, sub_1A40A1CBC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54();
      v228 = v540;
      sub_1A5249744();
      v229 = sub_1A40A1CBC;
      goto LABEL_22;
    case 5u:
      v320 = *(v172 + 2);
      v584 = *(v172 + 1);
      v322 = *(v172 + 4);
      v323 = v172[40];
      *&v588 = *(v172 + 3);
      v321 = v588;
      *(&v588 + 1) = v322;
      v589[0] = v323;
      v324 = sub_1A3C441B4();
      v325 = v578;

      v326 = v321;
      v327 = v322;
      v203 = &type metadata for LemonadeTripsFeature.ShelfProvider;
      v328 = sub_1A3C5A374();
      v329 = v422;
      sub_1A3EFC060(&v588, v325, v576, v328 & 1, v577 & 1, &type metadata for LemonadeTripsFeature.ShelfProvider, v324, v422);
      v252 = sub_1A3C441B4;
      sub_1A40A5C40(v329, v481, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2E34();
      sub_1A40A2EC4();
      v330 = v482;
      sub_1A5249744();
      sub_1A40A46A4(v330, v538, sub_1A40A1CBC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54();
      v331 = v540;
      sub_1A5249744();
      sub_1A40A5E60(v330, sub_1A40A1CBC);
      sub_1A40A46A4(v331, v563, sub_1A40A1C74);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v332 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v331, sub_1A40A1C74);
      sub_1A40A46A4(v332, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v333 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v332, sub_1A40A19DC);
      sub_1A40A46A4(v333, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v333, sub_1A40A1994);
      v182 = v329;
      v183 = &qword_1EB12A788;
LABEL_18:
      v184 = v252;
      goto LABEL_34;
    case 6u:
      v197 = *(v172 + 2);
      v584 = *(v172 + 1);
      v353 = v172[32];
      *&v588 = *(v172 + 3);
      v352 = v588;
      BYTE8(v588) = v353;
      v354 = sub_1A3C43F6C();
      v355 = v578;

      v202 = v352;
      v203 = &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider;
      v356 = sub_1A3C5A374();
      v205 = v424;
      sub_1A3EFC060(&v588, v355, v576, v356 & 1, v577 & 1, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, v354, v424);
      v206 = &qword_1EB12A678;
      v207 = sub_1A3C43F6C;
      sub_1A40A5C40(v205, v486, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A710, sub_1A40A1E58);
      sub_1A40A3004();
      v227 = v488;
      sub_1A5249744();
      sub_1A40A46A4(v227, v538, sub_1A40A1D90);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54();
      v228 = v540;
      sub_1A5249744();
      v229 = sub_1A40A1D90;
LABEL_22:
      sub_1A40A5E60(v227, v229);
      sub_1A40A46A4(v228, v563, sub_1A40A1C74);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v210 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v228, sub_1A40A1C74);
      sub_1A40A46A4(v210, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v211 = v575;
      sub_1A5249744();
      v212 = sub_1A40A19DC;
      goto LABEL_23;
    case 7u:
      v279 = *(v172 + 1);
      v588 = *v172;
      *v589 = v279;
      *&v589[16] = *(v172 + 4);
      v280 = v415;
      sub_1A3C64A1C();
      v281 = sub_1A3C56C94(&qword_1EB129B88, sub_1A3C50BAC);
      v282 = v578;

      v283 = v417;
      v284 = sub_1A3C5A374();
      v285 = v423;
      sub_1A3EFC060(v280, v282, v576, v284 & 1, v577 & 1, v283, v281, v423);
      sub_1A40A46A4(v285, v486, sub_1A40A1E58);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A710, sub_1A40A1E58);
      sub_1A40A3004();
      v286 = v488;
      sub_1A5249744();
      sub_1A40A46A4(v286, v538, sub_1A40A1D90);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2DEC();
      sub_1A40A2F54();
      v287 = v540;
      sub_1A5249744();
      sub_1A40A5E60(v286, sub_1A40A1D90);
      sub_1A40A46A4(v287, v563, sub_1A40A1C74);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v288 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v287, sub_1A40A1C74);
      sub_1A40A46A4(v288, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v289 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v288, sub_1A40A19DC);
      sub_1A40A46A4(v289, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      v585 = v588;
      sub_1A3C651B8(&v585);

      v586[0] = *&v589[8];
      sub_1A40A5E60(v586, sub_1A3FA1068);
      sub_1A40A5E60(v289, sub_1A40A1994);
      v277 = sub_1A40A1E58;
      v278 = v285;
      goto LABEL_29;
    case 8u:
      v186 = v426;
      sub_1A40A5DF8(v172, v426, type metadata accessor for LemonadeMapFeature);
      v371 = v420;
      sub_1A40A46A4(v186 + *(v419 + 24), v420, type metadata accessor for LemonadeMapFeature.ShelfProvider);
      v372 = sub_1A3C56C94(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider);
      v373 = v578;

      v374 = v421;
      v375 = sub_1A3C5A374();
      v376 = v427;
      sub_1A3EFC060(v371, v373, v576, v375 & 1, v577 & 1, v374, v372, v427);
      sub_1A40A46A4(v376, v491, sub_1A40A1FC4);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&unk_1EB12A7A0, sub_1A40A1FC4);
      sub_1A3C56C94(&qword_1EB12A6D0, sub_1A40A2058);
      v377 = v492;
      sub_1A5249744();
      sub_1A40A46A4(v377, v543, sub_1A40A1F7C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3124();
      sub_1A40A3200();
      v378 = v544;
      sub_1A5249744();
      sub_1A40A5E60(v377, sub_1A40A1F7C);
      sub_1A40A46A4(v378, v568, sub_1A40A1F34);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v379 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v378, sub_1A40A1F34);
      sub_1A40A46A4(v379, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v380 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v379, sub_1A40A1EEC);
      sub_1A40A46A4(v380, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v380, sub_1A40A1994);
      sub_1A40A5E60(v376, sub_1A40A1FC4);
      v196 = type metadata accessor for LemonadeMapFeature;
      goto LABEL_28;
    case 9u:
      v186 = v433;
      sub_1A40A5DF8(v172, v433, type metadata accessor for LemonadeICloudLinksFeature);
      v235 = v428;
      sub_1A40A46A4(v186 + *(v425 + 20), v428, type metadata accessor for LemonadeICloudLinksShelfProvider);
      v236 = sub_1A40B1BE4(v576, 3);
      v237 = sub_1A3C56C94(&qword_1EB1296A0, type metadata accessor for LemonadeICloudLinksShelfProvider);
      v238 = v578;

      v239 = v434;
      sub_1A3EFC060(v235, v238, 1, !v236, v577 & 1, v429, v237, v434);
      sub_1A40A46A4(v239, v491, sub_1A40A2058);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&unk_1EB12A7A0, sub_1A40A1FC4);
      sub_1A3C56C94(&qword_1EB12A6D0, sub_1A40A2058);
      v240 = v492;
      sub_1A5249744();
      sub_1A40A46A4(v240, v543, sub_1A40A1F7C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3124();
      sub_1A40A3200();
      v241 = v544;
      sub_1A5249744();
      sub_1A40A5E60(v240, sub_1A40A1F7C);
      sub_1A40A46A4(v241, v568, sub_1A40A1F34);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v242 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v241, sub_1A40A1F34);
      sub_1A40A46A4(v242, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v243 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v242, sub_1A40A1EEC);
      sub_1A40A46A4(v243, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v243, sub_1A40A1994);
      sub_1A40A5E60(v239, sub_1A40A2058);
      v196 = type metadata accessor for LemonadeICloudLinksFeature;
      goto LABEL_28;
    case 0xAu:
      v365 = *(v172 + 2);
      v584 = *(v172 + 1);
      v366 = v172[24];
      v367 = *(v172 + 4);
      v368 = *(v172 + 5);
      v369 = v172[48];
      *&v588 = v365;
      BYTE8(v588) = v366;
      *v589 = v367;
      *&v589[8] = v368;
      v589[16] = v369;
      sub_1A3C54318();

      v370 = v365;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0xBu:
      v186 = v438;
      sub_1A40A5DF8(v172, v438, type metadata accessor for LemonadeSharedWithYouFeature);
      v213 = v431;
      sub_1A40A46A4(v186 + *(v430 + 20), v431, type metadata accessor for LemonadeSharedWithYouGridShelfProvider);
      v214 = sub_1A40B1BE4(v576, 3);
      v215 = sub_1A3C56C94(&qword_1EB1294E0, type metadata accessor for LemonadeSharedWithYouGridShelfProvider);
      v216 = v578;

      v217 = v440;
      sub_1A3EFC060(v213, v216, 1, !v214, v577 & 1, v432, v215, v440);
      sub_1A40A46A4(v217, v496, sub_1A40A218C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A32B0();
      sub_1A3C56C94(&qword_1EB12A6C0, sub_1A40A218C);
      v218 = v498;
      sub_1A5249744();
      sub_1A40A46A4(v218, v543, sub_1A40A20EC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3124();
      sub_1A40A3200();
      v219 = v544;
      sub_1A5249744();
      sub_1A40A5E60(v218, sub_1A40A20EC);
      sub_1A40A46A4(v219, v568, sub_1A40A1F34);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v220 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v219, sub_1A40A1F34);
      sub_1A40A46A4(v220, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v221 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v220, sub_1A40A1EEC);
      sub_1A40A46A4(v221, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v221, sub_1A40A1994);
      sub_1A40A5E60(v217, sub_1A40A218C);
      v196 = type metadata accessor for LemonadeSharedWithYouFeature;
      goto LABEL_28;
    case 0xCu:
      v230 = v501;
      sub_1A40A5DF8(v172, v501, type metadata accessor for LemonadeImportSourcesFeature);
      if (shouldUseNewCollectionsLayout()())
      {
        v231 = 1;
        v232 = v581;
        v233 = v575;
        v234 = v502;
      }

      else
      {
        v397 = v409;
        sub_1A40A46A4(v230 + *(v407 + 20), v409, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider);
        v398 = sub_1A3C56C94(&qword_1EB129A08, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider);
        v399 = v578;

        v400 = v410;
        v401 = sub_1A3C5A374();
        v402 = v408;
        sub_1A3EFC060(v397, v399, v576, v401 & 1, v577 & 1, v400, v398, v408);
        v234 = v502;
        sub_1A40A5DF8(v402, v502, sub_1A40A22E4);
        v231 = 0;
        v232 = v581;
        v233 = v575;
      }

      (*(v436 + 56))(v234, v231, 1, v437);
      sub_1A40A46A4(v234, v503, sub_1A40A22B0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A424C(&qword_1EB125BF8, sub_1A40A22B0, sub_1A40A347C);
      sub_1A3C56C94(&qword_1EB12A6A0, sub_1A40A2378);
      v403 = v506;
      sub_1A5249744();
      sub_1A40A46A4(v403, v548, sub_1A40A2268);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0();
      v404 = v549;
      sub_1A5249744();
      sub_1A40A5E60(v403, sub_1A40A2268);
      sub_1A40A46A4(v404, v568, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v405 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v404, sub_1A40A2220);
      sub_1A40A46A4(v405, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      sub_1A5249744();
      sub_1A40A5E60(v405, sub_1A40A1EEC);
      sub_1A40A46A4(v233, v232, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v233, sub_1A40A1994);
      sub_1A40A5E60(v502, sub_1A40A22B0);
      v277 = type metadata accessor for LemonadeImportSourcesFeature;
      v278 = v501;
      goto LABEL_29;
    case 0xDu:
      v186 = v447;
      sub_1A40A5DF8(v172, v447, type metadata accessor for LemonadeSharedLibrarySuggestionsFeature);
      v343 = v441;
      sub_1A40A46A4(v186 + *(v439 + 20), v441, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider);
      v344 = sub_1A40B1BE4(v576, 3);
      v345 = sub_1A3C56C94(&qword_1EB129330, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider);
      v346 = v578;

      v347 = v449;
      sub_1A3EFC060(v343, v346, 1, !v344, v577 & 1, v442, v345, v449);
      sub_1A40A46A4(v347, v503, sub_1A40A2378);
      swift_storeEnumTagMultiPayload();
      sub_1A40A424C(&qword_1EB125BF8, sub_1A40A22B0, sub_1A40A347C);
      sub_1A3C56C94(&qword_1EB12A6A0, sub_1A40A2378);
      v348 = v506;
      sub_1A5249744();
      sub_1A40A46A4(v348, v548, sub_1A40A2268);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0();
      v349 = v549;
      sub_1A5249744();
      sub_1A40A5E60(v348, sub_1A40A2268);
      sub_1A40A46A4(v349, v568, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v350 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v349, sub_1A40A2220);
      sub_1A40A46A4(v350, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v351 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v350, sub_1A40A1EEC);
      sub_1A40A46A4(v351, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v351, sub_1A40A1994);
      sub_1A40A5E60(v347, sub_1A40A2378);
      v196 = type metadata accessor for LemonadeSharedLibrarySuggestionsFeature;
      goto LABEL_28;
    case 0xEu:
      v197 = *(v172 + 2);
      v584 = *(v172 + 1);
      v199 = v172[32];
      *&v588 = *(v172 + 3);
      v198 = v588;
      BYTE8(v588) = v199;
      v200 = sub_1A3C52190();
      v201 = v578;

      v202 = v198;
      v203 = &type metadata for LemonadeWallpaperFeature.ShelfProvider;
      v204 = sub_1A3C5A374();
      v205 = v451;
      sub_1A3EFC060(&v588, v201, v576, v204 & 1, v577 & 1, &type metadata for LemonadeWallpaperFeature.ShelfProvider, v200, v451);
      v206 = &qword_1EB12A738;
      v207 = sub_1A3C52190;
      sub_1A40A5C40(v205, v507, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3560();
      sub_1A3C56C94(&qword_1EB12A6E0, sub_1A40A24AC);
      v208 = v510;
      sub_1A5249744();
      sub_1A40A46A4(v208, v548, sub_1A40A240C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0();
      v209 = v549;
      sub_1A5249744();
      sub_1A40A5E60(v208, sub_1A40A240C);
      sub_1A40A46A4(v209, v568, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v210 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v209, sub_1A40A2220);
      sub_1A40A46A4(v210, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v211 = v575;
      sub_1A5249744();
      v212 = sub_1A40A1EEC;
LABEL_23:
      sub_1A40A5E60(v210, v212);
      sub_1A40A46A4(v211, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      v357 = sub_1A40A1994;
      goto LABEL_32;
    case 0xFu:
      v186 = v452;
      sub_1A40A5DF8(v172, v452, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
      v257 = v445;
      sub_1A40A46A4(v186 + *(v443 + 24), v445, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      v258 = sub_1A3C56C94(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      v259 = v578;

      v260 = v446;
      v261 = sub_1A3C5A374();
      v262 = v453;
      sub_1A3EFC060(v257, v259, v576, v261 & 1, v577 & 1, v260, v258, v453);
      sub_1A40A46A4(v262, v507, sub_1A40A24AC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3560();
      sub_1A3C56C94(&qword_1EB12A6E0, sub_1A40A24AC);
      v263 = v510;
      sub_1A5249744();
      sub_1A40A46A4(v263, v548, sub_1A40A240C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3388();
      sub_1A40A34B0();
      v264 = v549;
      sub_1A5249744();
      sub_1A40A5E60(v263, sub_1A40A240C);
      sub_1A40A46A4(v264, v568, sub_1A40A2220);
      swift_storeEnumTagMultiPayload();
      sub_1A40A30DC();
      sub_1A40A3340();
      v265 = v569;
      sub_1A5249744();
      sub_1A40A5E60(v264, sub_1A40A2220);
      sub_1A40A46A4(v265, v573, sub_1A40A1EEC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v266 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v265, sub_1A40A1EEC);
      sub_1A40A46A4(v266, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v266, sub_1A40A1994);
      sub_1A40A5E60(v262, sub_1A40A24AC);
      v196 = type metadata accessor for LemonadeMacSyncedAlbumsFeature;
      goto LABEL_28;
    case 0x10u:
      v186 = v454;
      sub_1A40A5DF8(v172, v454, type metadata accessor for LemonadePhotosChallengeFeature);
      v187 = v448;
      sub_1A40A46A4(v186 + *(v444 + 24), v448, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
      v188 = sub_1A3C56C94(&qword_1EB12ADA0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
      v189 = v578;

      v190 = v450;
      v191 = sub_1A3C5A374();
      v192 = v456;
      sub_1A3EFC060(v187, v189, v576, v191 & 1, v577 & 1, v190, v188, v456);
      sub_1A40A46A4(v192, v513, sub_1A40A2618);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A670, sub_1A40A2618);
      sub_1A3C56C94(&unk_1EB125C20, sub_1A40A26AC);
      v193 = v514;
      sub_1A5249744();
      sub_1A40A46A4(v193, v553, sub_1A40A25D0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3680();
      sub_1A40A375C();
      v194 = v554;
      sub_1A5249744();
      sub_1A40A5E60(v193, sub_1A40A25D0);
      sub_1A40A46A4(v194, v558, sub_1A40A2588);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v195 = v560;
      sub_1A5249744();
      sub_1A40A5E60(v194, sub_1A40A2588);
      sub_1A40A46A4(v195, v581, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v195, sub_1A40A2540);
      sub_1A40A5E60(v192, sub_1A40A2618);
      v196 = type metadata accessor for LemonadePhotosChallengeFeature;
      goto LABEL_28;
    case 0x11u:
      v186 = v459;
      sub_1A40A5DF8(v172, v459, type metadata accessor for LemonadePhototypesFeature);
      v300 = v457;
      sub_1A40A46A4(v186 + *(v455 + 20), v457, type metadata accessor for LemonadePhototypesFeature.ShelfProvider);
      v301 = sub_1A3C56C94(&qword_1EB125710, type metadata accessor for LemonadePhototypesFeature.ShelfProvider);
      v302 = v578;

      v303 = v458;
      v304 = sub_1A3C5A374();
      v305 = v460;
      sub_1A3EFC060(v300, v302, v576, v304 & 1, v577 & 1, v303, v301, v460);
      sub_1A40A46A4(v305, v513, sub_1A40A26AC);
      swift_storeEnumTagMultiPayload();
      sub_1A3C56C94(&qword_1EB12A670, sub_1A40A2618);
      sub_1A3C56C94(&unk_1EB125C20, sub_1A40A26AC);
      v306 = v514;
      sub_1A5249744();
      sub_1A40A46A4(v306, v553, sub_1A40A25D0);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3680();
      sub_1A40A375C();
      v307 = v554;
      sub_1A5249744();
      sub_1A40A5E60(v306, sub_1A40A25D0);
      sub_1A40A46A4(v307, v558, sub_1A40A2588);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v308 = v560;
      sub_1A5249744();
      sub_1A40A5E60(v307, sub_1A40A2588);
      sub_1A40A46A4(v308, v581, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v308, sub_1A40A2540);
      sub_1A40A5E60(v305, sub_1A40A26AC);
      v196 = type metadata accessor for LemonadePhototypesFeature;
      goto LABEL_28;
    case 0x12u:
      v358 = *(v172 + 2);
      v584 = *(v172 + 1);
      v360 = v172[32];
      *&v588 = *(v172 + 3);
      v359 = v588;
      BYTE8(v588) = v360;
      v361 = sub_1A3C442E8();
      v362 = v578;

      v363 = v359;
      v203 = &type metadata for LemonadeMediaTypesFeature.ShelfProvider;
      v364 = sub_1A3C5A374();
      v205 = v461;
      sub_1A3EFC060(&v588, v362, v576, v364 & 1, v577 & 1, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, v361, v461);
      v206 = &qword_1EB12A728;
      v207 = sub_1A3C442E8;
      sub_1A40A5C40(v205, v518, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider);
      goto LABEL_31;
    case 0x13u:
      v358 = *(v172 + 2);
      v584 = *(v172 + 1);
      v391 = v172[32];
      *&v588 = *(v172 + 3);
      v390 = v588;
      BYTE8(v588) = v391;
      v392 = sub_1A3C52114();
      v393 = v578;

      v363 = v390;
      v203 = &type metadata for LemonadeUtilitiesFeature.ShelfProvider;
      v394 = sub_1A3C5A374();
      v205 = v463;
      sub_1A3EFC060(&v588, v393, v576, v394 & 1, v577 & 1, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, v392, v463);
      v206 = &qword_1EB12A748;
      v207 = sub_1A3C52114;
      sub_1A40A5C40(v205, v518, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider);
LABEL_31:
      swift_storeEnumTagMultiPayload();
      sub_1A40A3830();
      sub_1A40A38C0();
      v395 = v520;
      sub_1A5249744();
      sub_1A40A46A4(v395, v553, sub_1A40A2740);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3680();
      sub_1A40A375C();
      v396 = v554;
      sub_1A5249744();
      sub_1A40A5E60(v395, sub_1A40A2740);
      sub_1A40A46A4(v396, v558, sub_1A40A2588);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v211 = v560;
      sub_1A5249744();
      sub_1A40A5E60(v396, sub_1A40A2588);
      sub_1A40A46A4(v211, v581, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      v357 = sub_1A40A2540;
LABEL_32:
      sub_1A40A5E60(v211, v357);
      v182 = v205;
      v183 = v206;
      goto LABEL_33;
    case 0x14u:
      v309 = *(v172 + 2);
      v584 = *(v172 + 1);
      v311 = v172[32];
      *&v588 = *(v172 + 3);
      v310 = v588;
      BYTE8(v588) = v311;
      v312 = sub_1A3C43144();
      v313 = v578;

      v314 = v310;
      v203 = &type metadata for LemonadeBookmarksFeature.ShelfProvider;
      v315 = sub_1A3C5A374();
      v316 = v466;
      sub_1A3EFC060(&v588, v313, v576, v315 & 1, v577 & 1, &type metadata for LemonadeBookmarksFeature.ShelfProvider, v312, v466);
      v207 = sub_1A3C43144;
      sub_1A40A5C40(v316, v523, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3AB0();
      sub_1A3C56C94(&qword_1EB12A720, sub_1A40A28FC);
      v317 = v524;
      sub_1A5249744();
      sub_1A40A46A4(v317, v528, sub_1A40A285C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3A00();
      sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990);
      v318 = v529;
      sub_1A5249744();
      sub_1A40A5E60(v317, sub_1A40A285C);
      sub_1A40A46A4(v318, v558, sub_1A40A2814);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v319 = v560;
      sub_1A5249744();
      sub_1A40A5E60(v318, sub_1A40A2814);
      sub_1A40A46A4(v319, v581, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();

      sub_1A40A5E60(v319, sub_1A40A2540);
      v182 = v316;
      v183 = &qword_1EB12A758;
LABEL_33:
      v184 = v207;
LABEL_34:
      v185 = v203;
      goto LABEL_35;
    case 0x15u:
      v186 = v470;
      sub_1A40A5DF8(v172, v470, type metadata accessor for LemonadeSuggestionsFeature);
      v334 = v465;
      sub_1A40A46A4(v186 + *(v462 + 24), v465, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
      v335 = sub_1A3C56C94(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
      v336 = v578;

      v337 = v467;
      v338 = sub_1A3C5A374();
      v339 = v471;
      sub_1A3EFC060(v334, v336, v576, v338 & 1, v577 & 1, v337, v335, v471);
      sub_1A40A46A4(v339, v523, sub_1A40A28FC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3AB0();
      sub_1A3C56C94(&qword_1EB12A720, sub_1A40A28FC);
      v340 = v524;
      sub_1A5249744();
      sub_1A40A46A4(v340, v528, sub_1A40A285C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3A00();
      sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990);
      v341 = v529;
      sub_1A5249744();
      sub_1A40A5E60(v340, sub_1A40A285C);
      sub_1A40A46A4(v341, v558, sub_1A40A2814);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v342 = v560;
      sub_1A5249744();
      sub_1A40A5E60(v341, sub_1A40A2814);
      sub_1A40A46A4(v342, v581, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v342, sub_1A40A2540);
      sub_1A40A5E60(v339, sub_1A40A28FC);
      v196 = type metadata accessor for LemonadeSuggestionsFeature;
      goto LABEL_28;
    case 0x16u:
      v186 = v472;
      sub_1A40A5DF8(v172, v472, type metadata accessor for LemonadeSearchCollectionResultsFeature);
      v381 = v468;
      sub_1A40A46A4(v186 + *(v464 + 20), v468, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
      v382 = sub_1A3C56C94(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
      v383 = v578;

      v384 = v469;
      v385 = sub_1A3C5A374();
      v386 = v473;
      sub_1A3EFC060(v381, v383, v576, v385 & 1, v577 & 1, v384, v382, v473);
      sub_1A40A46A4(v386, v528, sub_1A40A2990);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3A00();
      sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990);
      v387 = v529;
      sub_1A5249744();
      sub_1A40A46A4(v387, v558, sub_1A40A2814);
      swift_storeEnumTagMultiPayload();
      sub_1A40A3638();
      sub_1A40A3950();
      v388 = v560;
      sub_1A5249744();
      sub_1A40A5E60(v387, sub_1A40A2814);
      sub_1A40A46A4(v388, v581, sub_1A40A2540);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A40A5E60(v388, sub_1A40A2540);
      sub_1A40A5E60(v386, sub_1A40A2990);
      v196 = type metadata accessor for LemonadeSearchCollectionResultsFeature;
LABEL_28:
      v277 = v196;
      v278 = v186;
LABEL_29:
      result = sub_1A40A5E60(v278, v277);
      break;
    default:
      v173 = *(v172 + 3);
      *&v589[16] = *(v172 + 2);
      v590 = v173;
      v591 = *(v172 + 4);
      v592 = v172[80];
      v174 = *(v172 + 1);
      v588 = *v172;
      *v589 = v174;
      v175 = *(v172 + 40);
      v586[0] = *(v172 + 24);
      v586[1] = v175;
      *v587 = *(v172 + 56);
      *&v587[9] = *(v172 + 65);
      sub_1A3FA1224(&v589[8], &v585);
      v176 = sub_1A3C51EF8();
      v177 = v578;

      v178 = sub_1A3C5A374();
      sub_1A3EFC060(v586, v177, v576, v178 & 1, v577 & 1, &type metadata for LemonadeAlbumsFeature.ShelfProvider, v176, v169);
      sub_1A40A5C40(v169, v157, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2B44();
      sub_1A40A2BD4();
      sub_1A5249744();
      sub_1A40A46A4(v160, v533, sub_1A40A1A6C);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AFC();
      sub_1A40A2C64();
      v179 = v534;
      sub_1A5249744();
      sub_1A40A5E60(v160, sub_1A40A1A6C);
      sub_1A40A46A4(v179, v563, sub_1A40A1A24);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2AB4();
      sub_1A40A2DA4();
      v180 = v564;
      sub_1A5249744();
      sub_1A40A5E60(v179, sub_1A40A1A24);
      sub_1A40A46A4(v180, v573, sub_1A40A19DC);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A6C();
      sub_1A40A3094();
      v181 = v575;
      sub_1A5249744();
      sub_1A40A5E60(v180, sub_1A40A19DC);
      sub_1A40A46A4(v181, v581, sub_1A40A1994);
      swift_storeEnumTagMultiPayload();
      sub_1A40A2A24();
      sub_1A40A35F0();
      sub_1A5249744();
      sub_1A3FA1280(&v588);
      sub_1A40A5E60(v181, sub_1A40A1994);
      v182 = v169;
      v183 = &qword_1EB12A778;
      v184 = sub_1A3C51EF8;
      v185 = &type metadata for LemonadeAlbumsFeature.ShelfProvider;
LABEL_35:
      result = sub_1A40A5CC4(v182, v183, v184, v185);
      break;
  }

  return result;
}

uint64_t sub_1A409F504@<X0>(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v56 = a1;
  sub_1A40A568C(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40A5EC0();
  v61 = v7;
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v57 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A5242394();
  v63 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v64 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = v52 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v53 = v52 - v13;
  v14 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v18 = [swift_getObjCClassFromMetadata() sharedInstance];
  v55 = [v18 enableLoadingStatusHUD];

  v19 = *(*a2 + 584);
  v62 = a2;
  v20 = v19();
  v21 = *(v20 + 16);
  if (v21)
  {
    v52[1] = a3;
    v67[0] = MEMORY[0x1E69E7CC0];
    sub_1A3C4ED58(0, v21, 0);
    v22 = v67[0];
    v23 = v20 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v24 = *(v15 + 72);
    do
    {
      sub_1A40A46A4(v23, v17, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C5322C();
      sub_1A40A5E60(v17, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v25 = v65;
      v67[0] = v22;
      v27 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1A3C4ED58((v26 > 1), v27 + 1, 1);
        v22 = v67[0];
      }

      *(v22 + 16) = v27 + 1;
      *(v22 + v27 + 32) = v25;
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v29 = *(v22 + 16);
  v30 = v58;
  v31 = v64;
  if (v29 >= 3)
  {
    sub_1A40A4D54(v22, v22 + 32, 0, 5uLL);
    v33 = v32;

    v29 = *(v33 + 16);
    v22 = v33;
  }

  v34 = v62;
  if (v29 > 1 || (v35 = v30, v36 = v53, (*(*v62 + 768))(v28), v37 = *MEMORY[0x1E69C1DC8], v38 = v63, v39 = v54, v62 = *(v63 + 104), v62(v54, v37, v35), v40 = sub_1A5242384(), v41 = *(v38 + 8), v41(v39, v35), v42 = v36, v30 = v35, v31 = v64, v28 = (v41)(v42, v30), (v40 & 1) != 0))
  {
    (*(*v34 + 768))(v28);
  }

  else
  {
    v62(v31, *MEMORY[0x1E69C1DD8], v30);
  }

  v65 = 0xD000000000000014;
  v66 = 0x80000001A5316E40;
  sub_1A524E384();
  v43 = v63;
  v44 = v60;
  (*(v63 + 16))(v60, v31, v30);
  (*(v43 + 56))(v44, 0, 1, v30);
  sub_1A40979AC(v22);

  sub_1A40A5F7C(0, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
  v46 = v45;
  v47 = sub_1A40A5FE4();
  v48 = v57;
  sub_1A524A614();

  sub_1A40A5E60(v44, sub_1A40A568C);
  v49 = sub_1A3D5FAFC(v67);
  (*(*v34 + 776))(v49);

  v67[0] = v46;
  v67[1] = v47;
  swift_getOpaqueTypeConformance2();
  v50 = v61;
  sub_1A524A6B4();

  sub_1A40A5E60(v44, sub_1A40A568C);
  (*(v59 + 8))(v48, v50);
  return (*(v43 + 8))(v64, v30);
}

uint64_t sub_1A409FC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = sub_1A524B894();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v34 - v8;
  v9 = sub_1A5249944();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v34 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5247CD4();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v34 - v15;
  v16 = sub_1A5249754();
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v34 - v17;
  if (qword_1EB17BEE0 != -1)
  {
    swift_once();
  }

  v18 = byte_1EB1EADF8;
  v19 = sub_1A5249584();
  MEMORY[0x1EEE9AC00](v19);
  *(&v34 - 4) = v2;
  *(&v34 - 3) = v3;
  *(&v34 - 2) = v39;
  if (v18 == 1)
  {
    sub_1A40A021C();
    sub_1A5247CC4();
    swift_getWitnessTable();
    v21 = v35;
    v20 = v36;
    v22 = *(v36 + 16);
    v22(v35, v13, v11);
    v23 = *(v20 + 8);
    v23(v13, v11);
    v22(v13, v21, v11);
    swift_getWitnessTable();
    v24 = v40;
    sub_1A3DF4798(v13, v11);
    v23(v13, v11);
    v23(v21, v11);
  }

  else
  {
    sub_1A524B884();
    swift_getWitnessTable();
    v26 = v37;
    v25 = v38;
    v27 = *(v38 + 16);
    v27(v37, v6, v4);
    v28 = *(v25 + 8);
    v28(v6, v4);
    v27(v6, v26, v4);
    swift_getWitnessTable();
    v24 = v40;
    sub_1A3DF4890(v6, v11, v4);
    v28(v6, v4);
    v28(v26, v4);
  }

  WitnessTable = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  v44 = WitnessTable;
  v45 = v30;
  v31 = v42;
  swift_getWitnessTable();
  v32 = v41;
  (*(v41 + 16))(v43, v24, v31);
  return (*(v32 + 8))(v24, v31);
}

uint64_t sub_1A40A021C()
{
  sub_1A5249944();
  sub_1A3C56C94(&qword_1EB122340, MEMORY[0x1E697FCB0]);
  return sub_1A524EE64();
}

uint64_t sub_1A40A029C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v8(v7);
  (v8)(a3, v7, a2);
  return (*(v5 + 8))(v7, a2);
}

uint64_t sub_1A40A0394()
{
  result = sub_1A40A03B8();
  byte_1EB1EADF8 = result & 1;
  return result;
}

uint64_t sub_1A40A03B8()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB126A10);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 enabledShelvesLazyVStack];

  if ((v5 & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    v7 = sub_1A524C634();
    v8 = [v6 BOOLForKey_];

    if (!v8)
    {
      return 0;
    }
  }

  v9 = sub_1A3C645A4();
  (*(v1 + 16))(v3, v9, v0);
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1A3C1C000, v10, v11, "LemonadeShelvesStack using LazyVStack", v12, 2u);
    MEMORY[0x1A590EEC0](v12, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 1;
}

void sub_1A40A0670()
{
  type metadata accessor for LemonadeShelvesViewModel(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v1 <= 0x3F)
    {
      sub_1A40A5D34(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A40A60A0(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A40A5D34(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1A40A07C8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A40A0838(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A40A0978(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1A40A0BA8()
{
  result = qword_1EB131338;
  if (!qword_1EB131338)
  {
    sub_1A40A4470(255, &qword_1EB131340, sub_1A40A0C4C);
    sub_1A40A0D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131338);
  }

  return result;
}

void sub_1A40A0C74()
{
  if (!qword_1EB131350)
  {
    sub_1A40A5F7C(255, &qword_1EB131358, sub_1A40A0D38, &type metadata for LemonadeOneColumnShelvesStack, MEMORY[0x1E6981860]);
    sub_1A40A60A0(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131350);
    }
  }
}

unint64_t sub_1A40A0D38()
{
  result = qword_1EB17E090[0];
  if (!qword_1EB17E090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB17E090);
  }

  return result;
}

unint64_t sub_1A40A0D8C()
{
  result = qword_1EB131360;
  if (!qword_1EB131360)
  {
    sub_1A40A0C4C(255);
    sub_1A40A3FB4(&qword_1EB131368, sub_1A40A0C74, sub_1A40A0E3C);
    sub_1A40A0F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131360);
  }

  return result;
}

unint64_t sub_1A40A0E3C()
{
  result = qword_1EB131370;
  if (!qword_1EB131370)
  {
    sub_1A40A5F7C(255, &qword_1EB131358, sub_1A40A0D38, &type metadata for LemonadeOneColumnShelvesStack, MEMORY[0x1E6981860]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131370);
  }

  return result;
}

uint64_t sub_1A40A0ECC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1A40A60A0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A0F30()
{
  result = qword_1EB1797D8[0];
  if (!qword_1EB1797D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1797D8);
  }

  return result;
}

uint64_t sub_1A40A0FA0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1A40A0FE8(uint64_t result, int a2, int a3)
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

void sub_1A40A1080()
{
  if (!qword_1EB125A28)
  {
    sub_1A40A1128();
    sub_1A40A424C(&unk_1EB1214A8, sub_1A40A1128, sub_1A40A4204);
    v0 = type metadata accessor for LazyOrRegularVStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125A28);
    }
  }
}

void sub_1A40A1128()
{
  if (!qword_1EB1214A0)
  {
    sub_1A3F32024(255);
    sub_1A40A11F0();
    sub_1A3C56C94(&qword_1EB126F20, sub_1A3F32024);
    sub_1A3C3DEB4();
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1214A0);
    }
  }
}

void sub_1A40A11F0()
{
  if (!qword_1EB122680)
  {
    sub_1A40A5AE8(255, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122680);
    }
  }
}

void sub_1A40A128C()
{
  if (!qword_1EB121DF0)
  {
    sub_1A40A1378();
    sub_1A40A1434();
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DF0);
    }
  }
}

void sub_1A40A1378()
{
  if (!qword_1EB121DB8)
  {
    sub_1A40A1434();
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DB8);
    }
  }
}

void sub_1A40A1434()
{
  if (!qword_1EB121DC0)
  {
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DC0);
    }
  }
}

void sub_1A40A14E0()
{
  if (!qword_1EB122FA8)
  {
    sub_1A40A1580(255);
    sub_1A40A4FCC(255, &qword_1EB122E40, sub_1A40A3BDC, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697F540]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122FA8);
    }
  }
}

void sub_1A40A15B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A40A60A0(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A40A16F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A40A5AE8(255, a3, a4, a5, MEMORY[0x1E697E830]);
    sub_1A40A60A0(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A40A179C()
{
  if (!qword_1EB121788)
  {
    sub_1A40A1884();
    sub_1A40A194C(255);
    sub_1A40A37A4(&qword_1EB122370, sub_1A40A194C, sub_1A40A2A24, sub_1A40A35F0);
    swift_getOpaqueTypeConformance2();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121788);
    }
  }
}

void sub_1A40A1884()
{
  if (!qword_1EB121FD0)
  {
    sub_1A40A194C(255);
    sub_1A40A37A4(&qword_1EB122370, sub_1A40A194C, sub_1A40A2A24, sub_1A40A35F0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121FD0);
    }
  }
}

void sub_1A40A1A6C()
{
  if (!qword_1EB1229D8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1229D8);
    }
  }
}

void sub_1A40A1B40()
{
  if (!qword_1EB122978)
  {
    sub_1A40A4FCC(255, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A1BE0();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122978);
    }
  }
}

void sub_1A40A1BE0()
{
  if (!qword_1EB125BE8)
  {
    type metadata accessor for LemonadeSocialGroupsShelfProvider();
    sub_1A3C56C94(&qword_1EB125368, type metadata accessor for LemonadeSocialGroupsShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125BE8);
    }
  }
}

void sub_1A40A1CBC()
{
  if (!qword_1EB1229C8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1229C8);
    }
  }
}

void sub_1A40A1DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A40A1E58();
    v7 = v6;
    sub_1A40A4FCC(255, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A40A1E58()
{
  if (!qword_1EB12A708)
  {
    sub_1A3C50BAC();
    sub_1A3C56C94(&qword_1EB129B88, sub_1A3C50BAC);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A708);
    }
  }
}

void sub_1A40A1FC4()
{
  if (!qword_1EB12A798)
  {
    type metadata accessor for LemonadeMapFeature.ShelfProvider(255);
    sub_1A3C56C94(&qword_1EB12A3D0, type metadata accessor for LemonadeMapFeature.ShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A798);
    }
  }
}

void sub_1A40A2058()
{
  if (!qword_1EB12A6C8)
  {
    type metadata accessor for LemonadeICloudLinksShelfProvider();
    sub_1A3C56C94(&qword_1EB1296A0, type metadata accessor for LemonadeICloudLinksShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A6C8);
    }
  }
}

void sub_1A40A20EC()
{
  if (!qword_1EB122988)
  {
    sub_1A40A4FCC(255, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A218C();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122988);
    }
  }
}

void sub_1A40A218C()
{
  if (!qword_1EB12A6B8)
  {
    type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
    sub_1A3C56C94(&qword_1EB1294E0, type metadata accessor for LemonadeSharedWithYouGridShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A6B8);
    }
  }
}

void sub_1A40A22E4()
{
  if (!qword_1EB12A6F8)
  {
    type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider(255);
    sub_1A3C56C94(&qword_1EB129A08, type metadata accessor for LemonadeImportSourcesFeature.ShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A6F8);
    }
  }
}

void sub_1A40A2378()
{
  if (!qword_1EB12A698)
  {
    type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider(255);
    sub_1A3C56C94(&qword_1EB129330, type metadata accessor for LemonadeSharedLibrarySuggestionsShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A698);
    }
  }
}

void sub_1A40A240C()
{
  if (!qword_1EB1229B8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A24AC();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1229B8);
    }
  }
}

void sub_1A40A24AC()
{
  if (!qword_1EB12A6D8)
  {
    type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(255);
    sub_1A3C56C94(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A6D8);
    }
  }
}

void sub_1A40A2618()
{
  if (!qword_1EB12A668)
  {
    type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(255);
    sub_1A3C56C94(&qword_1EB12ADA0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A668);
    }
  }
}

void sub_1A40A26AC()
{
  if (!qword_1EB125C18)
  {
    type metadata accessor for LemonadePhototypesFeature.ShelfProvider(255);
    sub_1A3C56C94(&qword_1EB125710, type metadata accessor for LemonadePhototypesFeature.ShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125C18);
    }
  }
}

void sub_1A40A2740()
{
  if (!qword_1EB127E28)
  {
    sub_1A40A4FCC(255, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127E28);
    }
  }
}

void sub_1A40A285C()
{
  if (!qword_1EB127E38)
  {
    sub_1A40A4FCC(255, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A28FC();
    v0 = sub_1A5249754();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127E38);
    }
  }
}

void sub_1A40A28FC()
{
  if (!qword_1EB12A718)
  {
    type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(255);
    sub_1A3C56C94(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A718);
    }
  }
}

void sub_1A40A2990()
{
  if (!qword_1EB12A6A8)
  {
    type metadata accessor for LemonadeSearchCollectionResultsShelfProvider(255);
    sub_1A3C56C94(&qword_1EB129340, type metadata accessor for LemonadeSearchCollectionResultsShelfProvider);
    v0 = type metadata accessor for LemonadeShelf();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A6A8);
    }
  }
}

unint64_t sub_1A40A2B44()
{
  result = qword_1EB12A780;
  if (!qword_1EB12A780)
  {
    sub_1A40A4FCC(255, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A780);
  }

  return result;
}

unint64_t sub_1A40A2BD4()
{
  result = qword_1EB125C10;
  if (!qword_1EB125C10)
  {
    sub_1A40A4FCC(255, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C10);
  }

  return result;
}

unint64_t sub_1A40A2C64()
{
  result = qword_1EB122980;
  if (!qword_1EB122980)
  {
    sub_1A40A1B40();
    sub_1A40A2D14();
    sub_1A3C56C94(&qword_1EB125BF0, sub_1A40A1BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122980);
  }

  return result;
}

unint64_t sub_1A40A2D14()
{
  result = qword_1EB12A690;
  if (!qword_1EB12A690)
  {
    sub_1A40A4FCC(255, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A690);
  }

  return result;
}

unint64_t sub_1A40A2E34()
{
  result = qword_1EB12A770;
  if (!qword_1EB12A770)
  {
    sub_1A40A4FCC(255, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A770);
  }

  return result;
}

unint64_t sub_1A40A2EC4()
{
  result = qword_1EB12A790;
  if (!qword_1EB12A790)
  {
    sub_1A40A4FCC(255, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A790);
  }

  return result;
}

unint64_t sub_1A40A2F54()
{
  result = qword_1EB1229B0;
  if (!qword_1EB1229B0)
  {
    sub_1A40A1D90(255);
    sub_1A3C56C94(&qword_1EB12A710, sub_1A40A1E58);
    sub_1A40A3004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229B0);
  }

  return result;
}

unint64_t sub_1A40A3004()
{
  result = qword_1EB12A680;
  if (!qword_1EB12A680)
  {
    sub_1A40A4FCC(255, &qword_1EB12A678, sub_1A3C43F6C, &type metadata for LemonadeFeaturedPhotosFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A680);
  }

  return result;
}

unint64_t sub_1A40A3124()
{
  result = qword_1EB1229F0;
  if (!qword_1EB1229F0)
  {
    sub_1A40A1F7C(255);
    sub_1A3C56C94(&unk_1EB12A7A0, sub_1A40A1FC4);
    sub_1A3C56C94(&qword_1EB12A6D0, sub_1A40A2058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229F0);
  }

  return result;
}

unint64_t sub_1A40A3200()
{
  result = qword_1EB122990;
  if (!qword_1EB122990)
  {
    sub_1A40A20EC();
    sub_1A40A32B0();
    sub_1A3C56C94(&qword_1EB12A6C0, sub_1A40A218C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122990);
  }

  return result;
}

unint64_t sub_1A40A32B0()
{
  result = qword_1EB12A6F0;
  if (!qword_1EB12A6F0)
  {
    sub_1A40A4FCC(255, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A6F0);
  }

  return result;
}

unint64_t sub_1A40A3388()
{
  result = qword_1EB1229A0;
  if (!qword_1EB1229A0)
  {
    sub_1A40A2268(255);
    sub_1A40A424C(&qword_1EB125BF8, sub_1A40A22B0, sub_1A40A347C);
    sub_1A3C56C94(&qword_1EB12A6A0, sub_1A40A2378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229A0);
  }

  return result;
}

unint64_t sub_1A40A34B0()
{
  result = qword_1EB1229C0;
  if (!qword_1EB1229C0)
  {
    sub_1A40A240C();
    sub_1A40A3560();
    sub_1A3C56C94(&qword_1EB12A6E0, sub_1A40A24AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1229C0);
  }

  return result;
}

unint64_t sub_1A40A3560()
{
  result = qword_1EB12A740;
  if (!qword_1EB12A740)
  {
    sub_1A40A4FCC(255, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A740);
  }

  return result;
}

unint64_t sub_1A40A3680()
{
  result = qword_1EB122970;
  if (!qword_1EB122970)
  {
    sub_1A40A25D0(255);
    sub_1A3C56C94(&qword_1EB12A670, sub_1A40A2618);
    sub_1A3C56C94(&unk_1EB125C20, sub_1A40A26AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122970);
  }

  return result;
}

uint64_t sub_1A40A37A4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A3830()
{
  result = qword_1EB12A730;
  if (!qword_1EB12A730)
  {
    sub_1A40A4FCC(255, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A730);
  }

  return result;
}

unint64_t sub_1A40A38C0()
{
  result = qword_1EB12A750;
  if (!qword_1EB12A750)
  {
    sub_1A40A4FCC(255, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A750);
  }

  return result;
}

unint64_t sub_1A40A3950()
{
  result = qword_1EB127CE8;
  if (!qword_1EB127CE8)
  {
    sub_1A40A2814(255);
    sub_1A40A3A00();
    sub_1A3C56C94(&qword_1EB12A6B0, sub_1A40A2990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CE8);
  }

  return result;
}

unint64_t sub_1A40A3A00()
{
  result = qword_1EB127E40;
  if (!qword_1EB127E40)
  {
    sub_1A40A285C();
    sub_1A40A3AB0();
    sub_1A3C56C94(&qword_1EB12A720, sub_1A40A28FC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E40);
  }

  return result;
}

unint64_t sub_1A40A3AB0()
{
  result = qword_1EB12A760;
  if (!qword_1EB12A760)
  {
    sub_1A40A4FCC(255, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A760);
  }

  return result;
}

unint64_t sub_1A40A3BDC()
{
  result = qword_1EB125688;
  if (!qword_1EB125688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125688);
  }

  return result;
}

unint64_t sub_1A40A3C30()
{
  result = qword_1EB122F90;
  if (!qword_1EB122F90)
  {
    sub_1A40A14B8(255);
    sub_1A40A3CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122F90);
  }

  return result;
}

unint64_t sub_1A40A3CB0()
{
  result = qword_1EB122FB0;
  if (!qword_1EB122FB0)
  {
    sub_1A40A14E0();
    sub_1A40A3D30();
    sub_1A40A4174();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122FB0);
  }

  return result;
}

unint64_t sub_1A40A3D30()
{
  result = qword_1EB123038;
  if (!qword_1EB123038)
  {
    sub_1A40A1580(255);
    sub_1A40A3DC8();
    sub_1A40A0ECC(&qword_1EB122100, &qword_1EB1220F8, &type metadata for LemonadeShelvesViewModelDisplayState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123038);
  }

  return result;
}

unint64_t sub_1A40A3DC8()
{
  result = qword_1EB123090;
  if (!qword_1EB123090)
  {
    sub_1A40A1648(255);
    sub_1A40A3FB4(&qword_1EB123158, sub_1A40A1678, sub_1A40A3E90);
    sub_1A40A0ECC(&qword_1EB122140, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123090);
  }

  return result;
}

unint64_t sub_1A40A3E90()
{
  result = qword_1EB1232B8;
  if (!qword_1EB1232B8)
  {
    sub_1A40A5AE8(255, &qword_1EB1232B0, sub_1A40A16B4, sub_1A40A3BA8, MEMORY[0x1E697E830]);
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    sub_1A3C56C94(&unk_1EB122150, sub_1A40A3BA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1232B8);
  }

  return result;
}

uint64_t sub_1A40A3FB4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A40A0ECC(&qword_1EB1277D0, &qword_1EB1277C8, MEMORY[0x1E69E6370]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A4050()
{
  result = qword_1EB123B48;
  if (!qword_1EB123B48)
  {
    sub_1A40A5AE8(255, &qword_1EB123B40, sub_1A40A179C, sub_1A40A3B40, MEMORY[0x1E697E830]);
    sub_1A3C56C94(&qword_1EB121790, sub_1A40A179C);
    sub_1A3C56C94(&qword_1EB122130, sub_1A40A3B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123B48);
  }

  return result;
}

unint64_t sub_1A40A4174()
{
  result = qword_1EB122E48;
  if (!qword_1EB122E48)
  {
    sub_1A40A4FCC(255, &qword_1EB122E40, sub_1A40A3BDC, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E697F540]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122E48);
  }

  return result;
}

uint64_t sub_1A40A424C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A40A42BC()
{
  result = qword_1EB122690;
  if (!qword_1EB122690)
  {
    sub_1A40A5AE8(255, &qword_1EB122688, sub_1A40A128C, sub_1A40A16B4, MEMORY[0x1E697F960]);
    sub_1A40A1378();
    sub_1A40A1434();
    sub_1A40A14B8(255);
    sub_1A40A3C30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A40A3FB4(&qword_1EB1235C8, sub_1A40A16B4, sub_1A40A4050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122690);
  }

  return result;
}

void sub_1A40A4470(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A40A44D4()
{
  if (!qword_1EB121DB0)
  {
    sub_1A40A1080();
    v0 = MEMORY[0x1E69E62F8];
    sub_1A40A60A0(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A3C56C94(&qword_1EB125A30, sub_1A40A1080);
    sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DB0);
    }
  }
}

uint64_t sub_1A40A4600(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A40A60A0(255, a2, &type metadata for LemonadeShelfIdentifier, a3);
    sub_1A3C4CDB0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A40A46A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_1A40A470C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1A3C5322C();
  return ((*(v3 + 64))(&v5, v2, v3) & 1) == 0;
}

uint64_t sub_1A40A47C8(uint64_t result, unsigned __int8 *a2)
{
  v3 = *(v2 + 88);
  v4 = *a2;
  if (*result == 24)
  {
    if (v4 == 24)
    {
      return result;
    }
  }

  else if (v4 != 24)
  {
    sub_1A3C4CDB0();
    result = sub_1A524C594();
    if (result)
    {
      return result;
    }
  }

  v5 = *(*(v2 + 16) + 144);
  if (v3 == 24)
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    sub_1A40A60A0(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = v3;
    v8 = sub_1A40A4E2C(inited);
    swift_setDeallocating();
    v6 = v8;
  }

  return (*(*v5 + 216))(v6);
}

unint64_t sub_1A40A48EC()
{
  result = qword_1EB123E60;
  if (!qword_1EB123E60)
  {
    sub_1A40A4448(255);
    sub_1A40A1080();
    v1 = MEMORY[0x1E69E62F8];
    sub_1A40A60A0(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A3C56C94(&qword_1EB125A30, sub_1A40A1080);
    sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E60);
  }

  return result;
}

void sub_1A40A4A44()
{
  if (!qword_1EB121D70)
  {
    sub_1A40A4448(255);
    v0 = MEMORY[0x1E69E6720];
    sub_1A40A60A0(255, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
    sub_1A40A48EC();
    sub_1A40A4600(&qword_1EB125868, &qword_1EB125870, v0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121D70);
    }
  }
}

void sub_1A40A4B40()
{
  if (!qword_1EB122E10)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1A40A60A0(255, &qword_1EB120CE8, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E62F8]);
    sub_1A40A4600(&qword_1EB120CE0, &qword_1EB120CE8, v0);
    v1 = sub_1A52494B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122E10);
    }
  }
}

char *sub_1A40A4BFC(char *a1, int64_t a2, char a3)
{
  result = sub_1A40A4C1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A40A4C1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A40A60A0(0, &qword_1EB1261A8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1A40A4D54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1A40A60A0(0, &qword_1EB126260, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6F90]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1A40A4E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A40A4FCC(0, &qword_1EB120540, sub_1A3C3DEB4, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6A10]);
    v3 = sub_1A524E3D4();
    v4 = v3 + 56;
    v17 = a1 + 32;
    sub_1A3C3DEB4();
    v5 = 0;
    while (1)
    {
      v9 = v1;
      v18 = *(v17 + v5);
      result = sub_1A524C4A4();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v4 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v16 = ~v11;
        sub_1A3C4CDB0();
        while (1)
        {
          result = sub_1A524C594();
          if (result)
          {
            break;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v4 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v13) = v15 | v14;
        *(*(v3 + 48) + v12) = v18;
        v6 = *(v3 + 16);
        v7 = __OFADD__(v6, 1);
        v8 = v6 + 1;
        if (v7)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v8;
      }

      ++v5;
      v1 = v9;
      if (v5 == v9)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1A40A4FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A40A5034()
{
  if (!qword_1EB120BD0)
  {
    sub_1A40A60A0(255, &qword_1EB120BD8, MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120BD0);
    }
  }
}

void sub_1A40A50E4()
{
  if (!qword_1EB124460)
  {
    sub_1A40A1884();
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB124460);
    }
  }
}

uint64_t sub_1A40A514C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1A40A5AE8(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  return a2;
}

unint64_t sub_1A40A51C0()
{
  result = qword_1EB125680;
  if (!qword_1EB125680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125680);
  }

  return result;
}

void sub_1A40A5214()
{
  if (!qword_1EB121C50)
  {
    sub_1A40A60A0(255, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
    v0 = sub_1A524B6D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB121C50);
    }
  }
}

uint64_t sub_1A40A5290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A40A52F8()
{
  type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  sub_1A3C5322C();
  sub_1A3C66768();
  sub_1A524EA44();
  v0 = sub_1A524C634();

  v1 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

  return v1;
}

uint64_t sub_1A40A53B4()
{
  type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  sub_1A524BCE4();
  sub_1A52483D4();
}

uint64_t objectdestroy_32Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A40A54D0()
{
  v4 = *(v0 + 56);
  v3 = *(v0 + 56);
  v2[23] = 24;
  sub_1A40A46A4(&v4, v2, sub_1A40A5214);
  sub_1A40A5214();
  sub_1A524B6B4();
}

uint64_t sub_1A40A554C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A40A55AC()
{
  result = qword_1EB1257D8;
  if (!qword_1EB1257D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1257D8);
  }

  return result;
}

uint64_t sub_1A40A5600()
{
  v1 = *(v0 + 16);
  sub_1A3C5322C();
  v4 = *(v1 + 40);
  v5 = v4;
  sub_1A40A46A4(&v5, &v3, sub_1A40A5214);
  sub_1A40A5214();
  sub_1A524B6B4();
}

void sub_1A40A56C0()
{
  if (!qword_1EB127F60)
  {
    sub_1A40A4FCC(255, &qword_1EB12A758, sub_1A3C43144, &type metadata for LemonadeBookmarksFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A28FC();
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127F60);
    }
  }
}

void sub_1A40A5760()
{
  if (!qword_1EB127F58)
  {
    sub_1A40A4FCC(255, &qword_1EB12A728, sub_1A3C442E8, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A748, sub_1A3C52114, &type metadata for LemonadeUtilitiesFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127F58);
    }
  }
}

void sub_1A40A5834()
{
  if (!qword_1EB122CE8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A738, sub_1A3C52190, &type metadata for LemonadeWallpaperFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A24AC();
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122CE8);
    }
  }
}

void sub_1A40A58D4()
{
  if (!qword_1EB122CD0)
  {
    sub_1A40A4FCC(255, &qword_1EB12A6E8, sub_1A3C54318, &type metadata for LemonadeNotificationsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A218C();
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122CD0);
    }
  }
}

void sub_1A40A5974()
{
  if (!qword_1EB122CF0)
  {
    sub_1A40A4FCC(255, &qword_1EB12A768, sub_1A3C440BC, &type metadata for LemonadeEventsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB12A788, sub_1A3C441B4, &type metadata for LemonadeTripsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122CF0);
    }
  }
}

void sub_1A40A5A48()
{
  if (!qword_1EB122CC8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A688, sub_1A3C36888, &type metadata for LemonadePeopleShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A1BE0();
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122CC8);
    }
  }
}

void sub_1A40A5AE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A40A5B6C()
{
  if (!qword_1EB122CF8)
  {
    sub_1A40A4FCC(255, &qword_1EB12A778, sub_1A3C51EF8, &type metadata for LemonadeAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    sub_1A40A4FCC(255, &qword_1EB125C08, sub_1A3C445AC, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, type metadata accessor for LemonadeShelf);
    v0 = sub_1A5249734();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122CF8);
    }
  }
}

uint64_t sub_1A40A5C40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1A40A4FCC(0, a3, a4, a5, type metadata accessor for LemonadeShelf);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A40A5CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  sub_1A40A4FCC(0, a2, a3, a4, type metadata accessor for LemonadeShelf);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A40A5D34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A40A5D98()
{
  result = qword_1EB1254B0;
  if (!qword_1EB1254B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1254B0);
  }

  return result;
}

uint64_t sub_1A40A5DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A40A5E60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A40A5EC0()
{
  if (!qword_1EB127668)
  {
    sub_1A40A5F7C(255, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
    sub_1A40A5FE4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB127668);
    }
  }
}

void sub_1A40A5F7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A40A5FE4()
{
  result = qword_1EB127B90;
  if (!qword_1EB127B90)
  {
    sub_1A40A5F7C(255, &qword_1EB127B88, sub_1A40A0F30, &type metadata for LemonadeShelvesLoadingStatusReporting, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127B90);
  }

  return result;
}

void sub_1A40A60A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A40A60F0()
{
  result = qword_1EB123E20;
  if (!qword_1EB123E20)
  {
    sub_1A40A5AE8(255, &qword_1EB123E18, sub_1A40A4A44, sub_1A40A4B40, MEMORY[0x1E697E830]);
    sub_1A40A4448(255);
    v1 = MEMORY[0x1E69E6720];
    sub_1A40A60A0(255, &qword_1EB125870, &type metadata for LemonadeShelfIdentifier, MEMORY[0x1E69E6720]);
    sub_1A40A48EC();
    sub_1A40A4600(&qword_1EB125868, &qword_1EB125870, v1);
    swift_getOpaqueTypeConformance2();
    sub_1A3C56C94(&qword_1EB122E18, sub_1A40A4B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E20);
  }

  return result;
}

id sub_1A40A6290()
{
  result = [objc_allocWithZone(type metadata accessor for PXOneUpTipsHelper()) init];
  qword_1EB194528 = result;
  return result;
}

id PXOneUpTipsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static PXOneUpTipsHelper.shared.getter()
{
  if (qword_1EB194520 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB194528;

  return v1;
}

void sub_1A40A654C(uint64_t a1, uint64_t (*a2)(void), void *a3, void *a4)
{
  v6 = a2();
  v8 = *v6;
  v7 = v6[1];
  *a3 = v8;
  *a4 = v7;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40A65D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1A524BEE4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = sub_1A524BF64();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_1A524CC54();
  v4[16] = sub_1A524CC44();
  v8 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A40A6728, v8, v7);
}

uint64_t sub_1A40A6728()
{
  v1 = v0[15];
  v2 = v0[14];
  v11 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  type metadata accessor for PXTipsHelper();
  static PXTipsHelper.setup()();
  sub_1A3C29A58();
  v10 = sub_1A524D474();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[6] = sub_1A40A93C8;
  v0[7] = v6;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1A3C2E0D0;
  v0[5] = &block_descriptor_92;
  v7 = _Block_copy(v0 + 2);

  sub_1A524BF14();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1A3CB0AC0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A3C56408(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v1, v3, v7);
  _Block_release(v7);

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

void sub_1A40A6980()
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3F42E24();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40A6C14()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A40A65D8(v3, v4, v5, v2);
}

uint64_t sub_1A40A6D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_1A3CB8D98(0);
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1A524CC54();
  v4[6] = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A40A6E34, v7, v6);
}

uint64_t sub_1A40A6E34()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = sub_1A5247414();
  v3 = v2;
  v4 = sub_1A3F42E24();
  v5 = *v4 == v1 && v4[1] == v3;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    v9 = sub_1A3F42F0C();
    (*(v7 + 16))(v6, v9, v8);
    v10 = swift_task_alloc();
    *(v0 + 72) = v10;
    *v10 = v0;
    v11 = sub_1A40A72EC;
LABEL_7:
    v10[1] = v11;

    return MEMORY[0x1EEDE6BA0]();
  }

  v12 = sub_1A3F42E30();
  v13 = *v12 == v1 && v12[1] == v3;
  if (v13 || (sub_1A524EAB4() & 1) != 0)
  {
    v15 = *(v0 + 32);
    v14 = *(v0 + 40);
    v16 = *(v0 + 24);

    v17 = sub_1A3F4313C();
    (*(v15 + 16))(v14, v17, v16);
    v10 = swift_task_alloc();
    *(v0 + 80) = v10;
    *v10 = v0;
    v11 = sub_1A40A7470;
    goto LABEL_7;
  }

  v18 = sub_1A3F42E3C();
  v19 = *v18 == v1 && v18[1] == v3;
  if (v19 || (sub_1A524EAB4() & 1) != 0)
  {
    v21 = *(v0 + 32);
    v20 = *(v0 + 40);
    v22 = *(v0 + 24);

    v23 = sub_1A3F43530();
    (*(v21 + 16))(v20, v23, v22);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v11 = sub_1A40A75F4;
    goto LABEL_7;
  }

  v24 = sub_1A3F42E48();
  if (*v24 == v1 && v24[1] == v3 || (sub_1A524EAB4() & 1) != 0)
  {
    v26 = *(v0 + 32);
    v25 = *(v0 + 40);
    v27 = *(v0 + 24);

    v28 = sub_1A3F4366C();
    (*(v26 + 16))(v25, v28, v27);
    v10 = swift_task_alloc();
    *(v0 + 96) = v10;
    *v10 = v0;
    v11 = sub_1A40A7778;
    goto LABEL_7;
  }

  v29 = sub_1A3F42E54();
  if (*v29 == v1 && v29[1] == v3 || (sub_1A524EAB4() & 1) != 0)
  {
    v31 = *(v0 + 32);
    v30 = *(v0 + 40);
    v32 = *(v0 + 24);

    v33 = sub_1A3F43848();
    (*(v31 + 16))(v30, v33, v32);
    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v11 = sub_1A40A78FC;
    goto LABEL_7;
  }

  v34 = sub_1A3F42E60();
  if (*v34 == v1 && v34[1] == v3)
  {

LABEL_34:
    v37 = *(v0 + 32);
    v36 = *(v0 + 40);
    v38 = *(v0 + 24);
    v39 = sub_1A3F4413C();
    (*(v37 + 16))(v36, v39, v38);
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v11 = sub_1A40A7AE8;
    goto LABEL_7;
  }

  v35 = sub_1A524EAB4();

  if (v35)
  {
    goto LABEL_34;
  }

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_1A40A72EC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A7470()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A75F4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A7778()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A78FC()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A7A80, v6, v5);
}

uint64_t sub_1A40A7A80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A40A7AE8()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A74, v6, v5);
}

uint64_t sub_1A40A7CCC()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A7DBC, v3, v2);
}

uint64_t sub_1A40A7DBC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3F430A0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A7E80;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A7E80()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A40A9A70, v6, v5);
}

uint64_t sub_1A40A8044(uint64_t a1, uint64_t a2)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1A524CC54();
  v7 = sub_1A524CC44();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  sub_1A3D4D930(0, 0, v5, a2, v8);
}

uint64_t sub_1A40A8170()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A8260, v3, v2);
}

uint64_t sub_1A40A8260()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3FD5540();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A7E80;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1A524CC54();
  v9 = sub_1A524CC44();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  sub_1A3D4D930(0, 0, v7, a4, v10);
}

uint64_t sub_1A40A8490()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A8580, v3, v2);
}

uint64_t sub_1A40A8580()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3F437AC();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A7E80;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A8684()
{
  sub_1A3CB8D98(0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1A524CC54();
  v0[5] = sub_1A524CC44();
  v3 = sub_1A524CBC4();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1A40A8774, v3, v2);
}

uint64_t sub_1A40A8774()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1A3F441D8();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1A40A8838;

  return MEMORY[0x1EEDE6BA0]();
}

uint64_t sub_1A40A8838()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 56);
  v6 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1A40A89BC, v6, v5);
}

uint64_t sub_1A40A89BC()
{

  v1 = *(v0 + 8);

  return v1();
}

id PXOneUpTipsHelper.init()(uint64_t a1)
{
  PXDisplayCollectionDetailedCountsMake(a1);
  PXDisplayCollectionDetailedCountsMake(v2);
  PXDisplayCollectionDetailedCountsMake(v3);
  PXDisplayCollectionDetailedCountsMake(v4);
  PXDisplayCollectionDetailedCountsMake(v5);
  PXDisplayCollectionDetailedCountsMake(v6);
  v1[OBJC_IVAR___PXOneUpTipsHelper_Swift_hasStartedTips] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for PXOneUpTipsHelper();
  return objc_msgSendSuper2(&v8, sel_init);
}

id PXOneUpTipsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXOneUpTipsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s12PhotosUICore17PXOneUpTipsHelperC6setTip_13isPresentableySS_SbtFZ_0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1A3F42E24();
  v7 = *v6 == a1 && v6[1] == a2;
  if (v7 || (sub_1A524EAB4() & 1) != 0)
  {

    return sub_1A3F42E84(a3 & 1);
  }

  else
  {
    v9 = sub_1A3F42E30();
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1A524EAB4() & 1) != 0)
    {

      return sub_1A3F43018(a3 & 1);
    }

    else
    {
      v11 = sub_1A3F42E3C();
      if (*v11 == a1 && v11[1] == a2 || (sub_1A524EAB4() & 1) != 0)
      {

        return sub_1A3F434A8(a3 & 1);
      }

      else
      {
        v12 = sub_1A3F42E48();
        if (*v12 == a1 && v12[1] == a2 || (sub_1A524EAB4() & 1) != 0)
        {

          return sub_1A3F435E4(a3 & 1);
        }

        else
        {
          v13 = sub_1A3F42E54();
          if (*v13 == a1 && v13[1] == a2 || (sub_1A524EAB4() & 1) != 0)
          {

            return sub_1A3F43724(a3 & 1);
          }

          else
          {
            v14 = sub_1A3F42E60();
            if (*v14 == a1 && v14[1] == a2 || (result = sub_1A524EAB4(), (result & 1) != 0))
            {

              return sub_1A3F440B4(a3 & 1);
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t _s12PhotosUICore17PXOneUpTipsHelperC21setTipActionPerformedyySSFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1A3C56408(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1A5247634();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A45C1604();
  result = swift_beginAccess();
  if (*v11 == 1)
  {
    v13 = sub_1A45C1034();
    swift_beginAccess();
    v14 = *v13;
    if (v14 && *(v14 + 16) && (v15 = sub_1A3C5DCA4(a1, a2), (v16 & 1) != 0))
    {
      sub_1A3C341C8(*(v14 + 56) + 40 * v15, &v22);
      if (*(&v23 + 1))
      {
        sub_1A3C34460(&v22, v25);
        __swift_project_boxed_opaque_existential_1(v25, v25[3]);
        (*(v8 + 104))(v10, *MEMORY[0x1E6982AE0], v7);
        sub_1A5247424();
        (*(v8 + 8))(v10, v7);
        v17 = sub_1A524CCB4();
        (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        sub_1A3C341C8(v25, &v22);
        sub_1A524CC54();
        v18 = sub_1A524CC44();
        v19 = swift_allocObject();
        v20 = MEMORY[0x1E69E85E0];
        *(v19 + 16) = v18;
        *(v19 + 24) = v20;
        sub_1A3C34460(&v22, v19 + 32);
        sub_1A3D4D930(0, 0, v6, &unk_1A5317320, v19);

        return __swift_destroy_boxed_opaque_existential_0(v25);
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    return sub_1A3CB4DE8(&v22, &qword_1EB128BC8, sub_1A3CB4F50);
  }

  return result;
}

uint64_t sub_1A40A9040()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A7CCC();
}

uint64_t sub_1A40A90CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A8170();
}

uint64_t sub_1A40A9158()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A8490();
}

uint64_t sub_1A40A91E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3CA8098;

  return sub_1A40A8684();
}

uint64_t sub_1A40A92AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1A3D60150;

  return sub_1A40A8684();
}

uint64_t sub_1A40A9338()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3CA8098;

  return sub_1A40A6D40(v2, v3, v4, v0 + 32);
}

void sub_1A40A93C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v2 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xD8))();

    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = *((*v1 & *v3) + 0x90);
      v6 = sub_1A40A9878();
      v5(v6, &type metadata for OneUpLivePhotosTip, v6);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    (*((*v1 & *v7) + 0xF0))();

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *((*v1 & *v9) + 0x90);
      v12 = sub_1A40A98CC();
      v11(v12, &type metadata for OneUpInfoPanelTip, v12);
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    (*((*v1 & *v13) + 0x108))();

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v16 = v15;
      v17 = *((*v1 & *v15) + 0x90);
      v18 = sub_1A40A9920();
      v17(v18, &type metadata for OneUpSyndicatedPhotosTip, v18);
    }
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    (*((*v1 & *v19) + 0x120))();

    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *((*v1 & *v21) + 0x90);
      v24 = sub_1A40A9974();
      v23(v24, &type metadata for OneUpActionsMenuTip, v24);
    }
  }

  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    (*((*v1 & *v25) + 0x138))();

    swift_beginAccess();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      v29 = *((*v1 & *v27) + 0x90);
      v30 = sub_1A40A99C8();
      v29(v30, &type metadata for OneUpQuickCropTip, v30);
    }
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (v31)
  {
    v32 = v31;
    (*((*v1 & *v31) + 0x150))();

    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *((*v1 & *v33) + 0x90);
      v36 = sub_1A40A9A1C();
      v35(v36, &type metadata for OneUpCleanUpTip, v36);
    }
  }
}

unint64_t sub_1A40A9878()
{
  result = qword_1EB12B230;
  if (!qword_1EB12B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B230);
  }

  return result;
}

unint64_t sub_1A40A98CC()
{
  result = qword_1EB12B220;
  if (!qword_1EB12B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B220);
  }

  return result;
}

unint64_t sub_1A40A9920()
{
  result = qword_1EB12B240;
  if (!qword_1EB12B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B240);
  }

  return result;
}

unint64_t sub_1A40A9974()
{
  result = qword_1EB12B200;
  if (!qword_1EB12B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B200);
  }

  return result;
}

unint64_t sub_1A40A99C8()
{
  result = qword_1EB12B210;
  if (!qword_1EB12B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12B210);
  }

  return result;
}

unint64_t sub_1A40A9A1C()
{
  result = qword_1EB12AF00;
  if (!qword_1EB12AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AF00);
  }

  return result;
}

uint64_t sub_1A40A9A78()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1A46B8);
  __swift_project_value_buffer(v6, qword_1EB1A46B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static FavoriteAssetsIntent.title.modify())()
{
  if (qword_1EB1A46B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240BB4();
  __swift_project_value_buffer(v0, qword_1EB1A46B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A40A9DD8()
{
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1A46D8);
  __swift_project_value_buffer(v10, qword_1EB1A46D8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static FavoriteAssetsIntent.description.modify())()
{
  if (qword_1EB1A46D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5240094();
  __swift_project_value_buffer(v0, qword_1EB1A46D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A40AA228@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_1A40AA318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (*a5 == -1)
  {
    v9 = a6(0);
  }

  else
  {
    swift_once();
    v9 = a6(0);
  }

  v10 = v9;
  v11 = __swift_project_value_buffer(v9, a7);
  swift_beginAccess();
  (*(*(v10 - 8) + 24))(v11, a1, v10);
  return swift_endAccess();
}

uint64_t static FavoriteAssetsIntent.parameterSummary.getter()
{
  sub_1A40AD2C0(0, &qword_1EB131380, sub_1A40AA600, &type metadata for FavoriteAssetsIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A40AD2C0(0, &qword_1EB131390, sub_1A40AA600, &type metadata for FavoriteAssetsIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A40AA600();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A40AA678();
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A40AA6FC();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A40AA600()
{
  result = qword_1EB131388;
  if (!qword_1EB131388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131388);
  }

  return result;
}

void sub_1A40AA678()
{
  if (!qword_1EB131398)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131398);
    }
  }
}

void sub_1A40AA6FC()
{
  if (!qword_1EB1313A0)
  {
    sub_1A40AD2C0(255, &qword_1EB1313A8, sub_1A40AA794, &type metadata for FavoriteAssetsIntentAction, MEMORY[0x1E695A1A0]);
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1313A0);
    }
  }
}

unint64_t sub_1A40AA794()
{
  result = qword_1EB1313B0;
  if (!qword_1EB1313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313B0);
  }

  return result;
}

uint64_t FavoriteAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v42 = a1;
  v1 = MEMORY[0x1E69E6720];
  sub_1A40AD328(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v44 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v33 - v5;
  v41 = sub_1A5240334();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v1);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v33 - v10;
  v11 = sub_1A5240BA4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v36 = sub_1A5240BB4();
  v17 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  sub_1A3F57E84();
  v37 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v14, v19, v11);
  v21 = v38;
  sub_1A5240BC4();
  v22 = *(v17 + 56);
  v23 = v21;
  v24 = v36;
  v22(v21, 0, 1, v36);
  v47 = 0;
  sub_1A5240174();
  v35 = *MEMORY[0x1E695A500];
  v25 = *(v45 + 104);
  v45 += 104;
  v34 = v25;
  v26 = v40;
  v27 = v41;
  v25(v40);
  sub_1A3FC2D54(&qword_1EB12EEC8, &qword_1EB12EEB8, &type metadata for AssetEntity);
  sub_1A3F58824();
  v28 = sub_1A5240034();
  v29 = v42;
  *v42 = v28;
  sub_1A40AD2C0(0, &qword_1EB1313A8, sub_1A40AA794, &type metadata for FavoriteAssetsIntentAction, MEMORY[0x1E695A1A0]);
  v22(v23, 1, 1, v24);
  v46 = 0;
  v30 = sub_1A523FDB4();
  v31 = *(*(v30 - 8) + 56);
  v31(v43, 1, 1, v30);
  v31(v44, 1, 1, v30);
  v34(v26, v35, v27);
  sub_1A40ABE60();
  result = sub_1A523FF74();
  v29[1] = result;
  return result;
}

uint64_t FavoriteAssetsIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = *v1;
  sub_1A524CC54();
  *(v2 + 64) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A40AAF00, v4, v3);
}

uint64_t sub_1A40AAF00()
{
  v1 = v0[6];
  v2 = v0[7];
  v0[2] = v1;
  v0[3] = v2;
  sub_1A523FF44();
  v3 = *(v0[4] + 16);

  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[12] = v5;
  sub_1A40AA600();
  *v5 = v0;
  v5[1] = sub_1A3FC0434;
  v6 = v0[5];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A5317390);
}

uint64_t sub_1A40AB060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[9] = v5;
  v3[10] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A40AB0FC, v5, v4);
}

uint64_t sub_1A40AB0FC()
{
  sub_1A523FF44();
  if (*(v0 + 120))
  {
    v1 = sub_1A524EAB4();
  }

  else
  {
    v1 = 1;
  }

  v8 = *(v0 + 48);

  sub_1A523FF44();
  v2 = *(v0 + 32);
  *(v0 + 88) = v2;
  *(v0 + 16) = v8;
  sub_1A40AA600();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  *(v0 + 96) = v4;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1A3FC0824;

  return sub_1A40AC154(v1 & 1, v2, v3, v5);
}

uint64_t sub_1A40AB298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return sub_1A40AC154(a1, a2, a3, a4);
}

void (*FavoriteAssetsIntent.assets.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3F5CD2C;
}

uint64_t sub_1A40AB468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  return result;
}

uint64_t sub_1A40AB4A4()
{

  sub_1A523FF54();
}

void (*FavoriteAssetsIntent.action.modify(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB6E78;
}

uint64_t sub_1A40AB5A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1A46B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1A46B8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A40AB66C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return FavoriteAssetsIntent.perform()(a1);
}

uint64_t sub_1A40AB708(uint64_t a1)
{
  v2 = sub_1A40AA600();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t static FavoriteAssetsIntentAction.typeDisplayRepresentation.getter()
{
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

PhotosUICore::FavoriteAssetsIntentAction_optional __swiftcall FavoriteAssetsIntentAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t FavoriteAssetsIntentAction.rawValue.getter()
{
  if (*v0)
  {
    return 0x69726F7661666E75;
  }

  else
  {
    return 0x657469726F766166;
  }
}

uint64_t sub_1A40ABADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x69726F7661666E75;
  }

  else
  {
    v3 = 0x657469726F766166;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006574;
  }

  if (*a2)
  {
    v5 = 0x69726F7661666E75;
  }

  else
  {
    v5 = 0x657469726F766166;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();
  }

  return v8 & 1;
}

uint64_t sub_1A40ABB88()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A40ABC10()
{
  sub_1A524C794();
}

uint64_t sub_1A40ABC84()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

uint64_t sub_1A40ABD08@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524E824();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1A40ABD68(uint64_t *a1@<X8>)
{
  v2 = 0x657469726F766166;
  if (*v1)
  {
    v2 = 0x69726F7661666E75;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006574;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A40ABDB4(uint64_t a1)
{
  v2 = sub_1A40ABE60();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A40ABE04(uint64_t a1)
{
  v2 = sub_1A40AD030();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A40ABE60()
{
  result = qword_1EB1313B8;
  if (!qword_1EB1313B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313B8);
  }

  return result;
}

uint64_t sub_1A40ABEB4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A40AB060(a1, v5, v4);
}

unint64_t sub_1A40ABF60(char a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  v2 = sub_1A524ECE4();

  return sub_1A40AC00C(a1 & 1, v2);
}

unint64_t sub_1A40AC00C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x69726F7661666E75;
    }

    else
    {
      v6 = 0x657469726F766166;
    }

    if (a1)
    {
      v7 = 0xEA00000000006574;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x69726F7661666E75 : 0x657469726F766166;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006574 : 0xE800000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1A524EAB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1A40AC154(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A40AC250, v7, v6);
}

void sub_1A40AC250()
{
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A40AC5C0(uint64_t a1)
{
  sub_1A40AD38C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A40AD3F4();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A40AD460(v10, v6);
      result = sub_1A40ABF60(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore26FavoriteAssetsIntentActionO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A40AD328(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A40AD328(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A40AD328(0, &qword_1EB131440, sub_1A40AD38C, MEMORY[0x1E69E6F90]);
  sub_1A40AD38C();
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A40AC5C0(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A40ACD54()
{
  result = qword_1EB1313C0;
  if (!qword_1EB1313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313C0);
  }

  return result;
}

unint64_t sub_1A40ACDAC()
{
  result = qword_1EB1313C8;
  if (!qword_1EB1313C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313C8);
  }

  return result;
}

unint64_t sub_1A40ACE20()
{
  result = qword_1EB1313D0;
  if (!qword_1EB1313D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313D0);
  }

  return result;
}

unint64_t sub_1A40ACE78()
{
  result = qword_1EB1313D8;
  if (!qword_1EB1313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313D8);
  }

  return result;
}

unint64_t sub_1A40ACED0()
{
  result = qword_1EB1313E0;
  if (!qword_1EB1313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313E0);
  }

  return result;
}

unint64_t sub_1A40ACF28()
{
  result = qword_1EB1313E8;
  if (!qword_1EB1313E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313E8);
  }

  return result;
}

unint64_t sub_1A40ACF80()
{
  result = qword_1EB1313F0;
  if (!qword_1EB1313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313F0);
  }

  return result;
}

unint64_t sub_1A40ACFD8()
{
  result = qword_1EB1313F8;
  if (!qword_1EB1313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1313F8);
  }

  return result;
}

unint64_t sub_1A40AD030()
{
  result = qword_1EB131400;
  if (!qword_1EB131400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131400);
  }

  return result;
}

unint64_t sub_1A40AD0DC()
{
  result = qword_1EB131408;
  if (!qword_1EB131408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131408);
  }

  return result;
}

unint64_t sub_1A40AD134()
{
  result = qword_1EB131410;
  if (!qword_1EB131410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131410);
  }

  return result;
}

unint64_t sub_1A40AD18C()
{
  result = qword_1EB131418;
  if (!qword_1EB131418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131418);
  }

  return result;
}

unint64_t sub_1A40AD230()
{
  result = qword_1EB131430;
  if (!qword_1EB131430)
  {
    sub_1A40AD2C0(255, &qword_1EB131438, sub_1A40AA600, &type metadata for FavoriteAssetsIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131430);
  }

  return result;
}

void sub_1A40AD2C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A40AD328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A40AD38C()
{
  if (!qword_1EB131448)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131448);
    }
  }
}

void sub_1A40AD3F4()
{
  if (!qword_1EB131450)
  {
    sub_1A5240274();
    sub_1A40AD18C();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131450);
    }
  }
}

uint64_t sub_1A40AD460(uint64_t a1, uint64_t a2)
{
  sub_1A40AD38C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40AD4CC(uint64_t a1)
{
  v2 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for LemonadeInvitationModel();
  v5 = *(*a1 + 176);

  v5(&v12, v6);

  v7 = v12;
  v8 = *&v12[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry];

  v9 = sub_1A3C5A374();
  sub_1A3F639E8(v8, v9 & 1, v4);
  sub_1A4604AFC(v4);
  return a1;
}

__n128 sub_1A40AD5D8@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*a1 + 304))(v15);
  v5 = sub_1A5249584();
  v14 = 0;

  v6 = sub_1A3C30368();
  v9 = v17;
  v10 = v16;
  sub_1A4969A00(a2, v6 & 1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v19, __src, sizeof(v19));
  sub_1A40AD710(__dst, v11);
  sub_1A40AD76C(v19);
  memcpy(&v13[7], __dst, 0x118uLL);
  v7 = v14;
  LOBYTE(a2) = sub_1A524A064();
  sub_1A3DF76B0(v15);
  *a3 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = v7;
  memcpy((a3 + 17), v13, 0x11FuLL);
  *(a3 + 304) = a2;
  result = v10;
  *(a3 + 312) = v10;
  *(a3 + 328) = v9;
  *(a3 + 344) = 0;
  return result;
}

uint64_t sub_1A40AD7C8@<X0>(uint64_t a1@<X8>)
{
  sub_1A40AD924();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  *v7 = sub_1A5249574();
  *(v7 + 1) = 0;
  v7[16] = 0;
  sub_1A40AEF58();
  sub_1A40ADCEC(&v7[*(v8 + 44)]);
  sub_1A40AEFF0(v7, v4);
  sub_1A40AEFF0(v4, a1);
  sub_1A40AD8BC();
  v10 = a1 + *(v9 + 48);
  *v10 = 0;
  *(v10 + 8) = 1;
  sub_1A40AF054(v7);
  return sub_1A40AF054(v4);
}

void sub_1A40AD8BC()
{
  if (!qword_1EB131460)
  {
    sub_1A40AD924();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131460);
    }
  }
}

void sub_1A40AD924()
{
  if (!qword_1EB131468)
  {
    sub_1A40ADBB0(255, &qword_1EB131470, sub_1A40AD9D8, MEMORY[0x1E6981F40]);
    sub_1A40ADC88(&qword_1EB131488, &qword_1EB131470, sub_1A40AD9D8);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131468);
    }
  }
}

void sub_1A40AD9D8()
{
  if (!qword_1EB131478)
  {
    sub_1A40ADA48();
    sub_1A524B9A4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB131478);
    }
  }
}

void sub_1A40ADA48()
{
  if (!qword_1EB131480)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1A40ADBB0(255, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
    sub_1A40ADBB0(255, &qword_1EB130890, sub_1A3E05888, type metadata accessor for LemonadeSharedAlbumsActivityFeedInvitationCell);
    sub_1A40ADC2C(&qword_1EB12CD10, &unk_1EB12CCF0, v0);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB131480);
    }
  }
}

uint64_t sub_1A40ADB68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A40ADBB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A40ADC2C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A40ADBB0(255, a2, sub_1A3E05888, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A40ADC88(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A40ADBB0(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A40ADCEC@<X0>(char *a1@<X8>)
{
  v2 = sub_1A524B9A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v29 - v7;
  sub_1A40ADA48();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  if (qword_1EB1A4E80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EB1EBB10 >> 62)
  {
    v13 = sub_1A524E2B4();
  }

  else
  {
    v13 = *((qword_1EB1EBB10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = a1;
  v36 = v5;
  if (v13)
  {
    v37 = MEMORY[0x1E69E7CC0];
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v37 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E62F8];
  sub_1A40ADBB0(0, &unk_1EB12CCF0, sub_1A3E05888, MEMORY[0x1E69E62F8]);
  sub_1A40ADBB0(0, &qword_1EB130890, sub_1A3E05888, type metadata accessor for LemonadeSharedAlbumsActivityFeedInvitationCell);
  sub_1A40ADC2C(&qword_1EB12CD10, &unk_1EB12CCF0, v14);
  sub_1A40ADC2C(&qword_1EB1308E0, &qword_1EB130890, type metadata accessor for LemonadeSharedAlbumsActivityFeedInvitationCell);
  sub_1A40ADB68(&qword_1EB12CD98, sub_1A3E05888);
  v30 = v12;
  sub_1A524B9C4();
  v15 = v35;
  sub_1A524B994();
  v16 = v31;
  v17 = v32;
  v18 = *(v32 + 16);
  v19 = v12;
  v20 = v33;
  v18(v31, v19, v33);
  v21 = *(v3 + 16);
  v21(v36, v15, v2);
  v22 = v34;
  v18(v34, v16, v20);
  sub_1A40AD9D8();
  v24 = &v22[*(v23 + 48)];
  v25 = v36;
  v21(v24, v36, v2);
  v26 = *(v3 + 8);
  v26(v35, v2);
  v27 = *(v17 + 8);
  v27(v30, v20);
  v26(v25, v2);
  return (v27)(v16, v20);
}

uint64_t sub_1A40AE1F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  type metadata accessor for LemonadeInvitationModel();
  v8 = *(*v7 + 176);

  v8(&v15, v9);
  v10 = v15;
  v11 = *&v15[OBJC_IVAR___PXSharedAlbumsActivityEntryItem_activityEntry];

  v12 = sub_1A3C5A374();
  sub_1A3F639E8(v11, v12 & 1, v6);
  result = sub_1A4604AFC(v6);
  *a2 = v7;
  a2[1] = result;
  return result;
}

id sub_1A40AE300()
{
  result = sub_1A40AE320();
  qword_1EB1EBB10 = result;
  return result;
}

id sub_1A40AE320()
{
  v0 = sub_1A5241144();
  v48 = *(v0 - 8);
  v49 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A52411C4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = [objc_opt_self() sharedPhotoLibrary];
  v7 = [objc_allocWithZone(PXSharedAlbumsActivityEntryAvatarConfiguration) init];
  v8 = objc_allocWithZone(PXSharedAlbumsActivityEntryContributor);
  v9 = sub_1A524C634();
  v10 = sub_1A524C634();
  v11 = [v8 initWithDisplayName:v9 email:v10];

  sub_1A52411B4();
  sub_1A5241164();
  (*(v4 + 8))(v6, v3);
  v50 = v2;
  sub_1A5241104();
  sub_1A3C4D548(0, &qword_1EB126180);
  v13 = v12;
  v14 = swift_allocObject();
  v51 = xmmword_1A52F9790;
  *(v14 + 16) = xmmword_1A52F9790;
  *(v14 + 32) = v11;
  v47 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v51;
  *(v15 + 32) = v7;
  sub_1A3C4D548(0, &qword_1EB12B260);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1A52F8E10;
  v17 = qword_1EB1A4E88;
  v46 = v11;
  v45 = v7;
  if (v17 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = [qword_1EB1EBB18 uuid];
  if (result)
  {
    v19 = result;
    v20 = sub_1A524C674();
    v22 = v21;

    *(v16 + 32) = v20;
    *(v16 + 40) = v22;
    v43 = objc_allocWithZone(PXSharedAlbumsActivityEntry);
    v44 = v44;
    v42 = sub_1A524C634();

    v41 = sub_1A5241074();
    sub_1A3C52C70(0, &qword_1EB12CD78);
    v23 = sub_1A524CA14();

    sub_1A3C52C70(0, &unk_1EB12CD80);
    v24 = sub_1A524CA14();

    v25 = sub_1A524C634();
    v26 = sub_1A524C634();
    v27 = sub_1A524C634();
    v28 = sub_1A524CA14();

    v29 = sub_1A524CA14();
    LOBYTE(v40) = 1;
    v30 = v44;
    v32 = v41;
    v31 = v42;
    v43 = [v43 initWithPhotoLibrary:v44 uuid:v42 date:v41 type:5 isFromMe:0 contributors:v23 avatarConfigurations:v24 albumGUID:v25 albumName:v26 cloudOwnerIsAllowlisted:v40 message:v27 keyAssetUUIDs:v28 keyAssets:0 relatedCommentUUID:0 relatedUUIDs:v29 underlyingObject:0];

    (*(v48 + 8))(v50, v49);
    type metadata accessor for SharedAlbumsActivityEntryItem();
    v33 = swift_allocObject();
    *(v33 + 16) = v51;
    v34 = qword_1EB1EBB18;
    *(v33 + 32) = qword_1EB1EBB18;
    v35 = v43;
    v36 = v34;
    LOBYTE(v34) = sub_1A3C5A374();
    v37 = sub_1A3C5A374();
    v38 = sub_1A4705FE8(v35, v34, v33, v37 & 1);
    v39 = swift_allocObject();
    *(v39 + 16) = v51;
    *(v39 + 32) = v38;

    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A40AE8C4()
{
  v0 = objc_allocWithZone(off_1E77218F8);
  v4[4] = sub_1A40AEEE4;
  v4[5] = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1A3D77CC4;
  v4[3] = &block_descriptor_93;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithConfiguration_];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    qword_1EB1EBB18 = v2;
  }

  return result;
}

unint64_t sub_1A40AE9FC()
{
  result = qword_1EB131498;
  if (!qword_1EB131498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131498);
  }

  return result;
}

uint64_t sub_1A40AEA6C()
{
  sub_1A524A044();
  sub_1A40ADBB0(0, &qword_1EB131458, sub_1A40AD8BC, MEMORY[0x1E6981F40]);
  sub_1A40ADC88(&qword_1EB131490, &qword_1EB131458, sub_1A40AD8BC);

  return sub_1A5247D14();
}

uint64_t sub_1A40AEB38(uint64_t a1)
{
  v2 = sub_1A40AEE90();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A40AEB84(uint64_t a1)
{
  v2 = sub_1A40AEE90();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

uint64_t sub_1A40AEBD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A40AEC1C()
{
  result = qword_1EB1314A0;
  if (!qword_1EB1314A0)
  {
    sub_1A40AECCC();
    sub_1A40ADB68(&qword_1EB1314C0, sub_1A40AED2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1314A0);
  }

  return result;
}

void sub_1A40AECCC()
{
  if (!qword_1EB1314A8)
  {
    sub_1A40AED2C();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314A8);
    }
  }
}

void sub_1A40AED2C()
{
  if (!qword_1EB1314B0)
  {
    sub_1A40AED88();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314B0);
    }
  }
}

unint64_t sub_1A40AED88()
{
  result = qword_1EB1314B8;
  if (!qword_1EB1314B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1314B8);
  }

  return result;
}

void sub_1A40AEDDC()
{
  if (!qword_1EB1314D0)
  {
    sub_1A40ADBB0(255, &qword_1EB131458, sub_1A40AD8BC, MEMORY[0x1E6981F40]);
    sub_1A40ADC88(&qword_1EB131490, &qword_1EB131458, sub_1A40AD8BC);
    v0 = sub_1A5247D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314D0);
    }
  }
}

unint64_t sub_1A40AEE90()
{
  result = qword_1EB1314D8;
  if (!qword_1EB1314D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1314D8);
  }

  return result;
}

void sub_1A40AEEE4(void *a1)
{
  v2 = [objc_opt_self() systemOrangeColor];
  [a1 setTintColor_];
}

void sub_1A40AEF58()
{
  if (!qword_1EB1314E0)
  {
    sub_1A40ADBB0(255, &qword_1EB131470, sub_1A40AD9D8, MEMORY[0x1E6981F40]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314E0);
    }
  }
}

uint64_t sub_1A40AEFF0(uint64_t a1, uint64_t a2)
{
  sub_1A40AD924();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40AF054(uint64_t a1)
{
  sub_1A40AD924();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

AVPlayerItemVideoOutput __swiftcall AVPlayerItemVideoOutput.init(settings:)(PhotosUICore::VideoOutputSettings settings)
{
  v2 = **&settings.outputSize.is_nil;
  v1 = *(*&settings.outputSize.is_nil + 8);
  v3 = *(*&settings.outputSize.is_nil + 16);
  v4 = *(*&settings.outputSize.is_nil + 17);
  v5 = *(*&settings.outputSize.is_nil + 18);
  sub_1A4076128();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v4;
  v8 = sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  if ((v3 & 1) == 0)
  {
    v9 = sub_1A524C674();
    v11 = v10;
    v12 = MEMORY[0x1E69E7DE0];
    v26 = MEMORY[0x1E69E7DE0];
    *&v25 = v2;
    sub_1A3C57128(&v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v24, v9, v11, isUniquelyReferenced_nonNull_native);

    v14 = sub_1A524C674();
    v16 = v15;
    v26 = v12;
    *&v25 = v1;
    sub_1A3C57128(&v25, v24);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v24, v14, v16, v17);
  }

  if (v5)
  {
    v18 = sub_1A524C674();
    v20 = v19;
    sub_1A40AF590();
    v26 = v21;
    *&v25 = MEMORY[0x1E69E7CC8];
    sub_1A3C57128(&v25, v24);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1A3E98278(v24, v18, v20, v22);
  }

  v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1A40AF310(v8);
}

void sub_1A40AF310(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A40AF6B4();
    sub_1A524E794();
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A40AF590()
{
  if (!qword_1EB1314E8)
  {
    v0 = sub_1A524C454();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314E8);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for VideoOutputSettings(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for VideoOutputSettings(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

void sub_1A40AF6B4()
{
  if (!qword_1EB1314F0)
  {
    sub_1A3DB7F50();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1314F0);
    }
  }
}

void sub_1A40AF750()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_viewModelObservation];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_analysisProgress] = 0;
  v2 = OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_analyzer;
  *&v0[v2] = [objc_allocWithZone(PXSystemMediaAnalyzer) init];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v0[OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_timeRanges] = MEMORY[0x1E69E7CC0];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DisplayAssetViewModelHighlightTimeRangeController();
  v3 = objc_msgSendSuper2(&v5, sel_init);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = v3;

  sub_1A524D1A4();
}

void sub_1A40AF924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1A40B0878(a2);
  }
}

void sub_1A40AF9EC(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1A40AFA48(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_viewModel;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A40AFAE0;
}

void sub_1A40AFAE0(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A40AFBAC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PXDisplayAssetViewModelHighlightTimeRangeController_viewModelObservation);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void sub_1A40AFC6C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v2 = v1();
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v4 = [v2 asset];

  if (!v4)
  {
    return;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    swift_unknownObjectRelease();
    return;
  }

  sub_1A3C52C70(0, &qword_1EB1267E8);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  v6 = [v5 showDummyTimeRangeHighlight];

  if (v6)
  {
    sub_1A3CB8F68();
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1A52FF960;
    *(v7 + 32) = PXValueWithCMTimeRange(1.0, 9.0);
    *(v7 + 40) = PXValueWithCMTimeRange(15.0, 5.0);
    *(v7 + 48) = PXValueWithCMTimeRange(30.0, 60.0);
    sub_1A40B08EC(v7);
  }

  v8 = v1();
  if (v8 && (v9 = v8, v10 = [v8 personLocalIdentifiersToHighlight], v9, v10))
  {
    v11 = sub_1A524CA34();
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = v1();
  if (v12 && (v13 = v12, v14 = [v12 sceneIdentifiersToHighlight], v13, v14))
  {
    sub_1A3C52C70(0, &qword_1EB126610);
    v15 = sub_1A524CA34();

    v16 = v1();
    if (!v16)
    {
LABEL_21:
      v27 = MEMORY[0x1E69E7CC0];
      v19 = v1();
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    v16 = v1();
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  v17 = v16;
  v18 = [v16 audioIdentifiersToHighlight];

  if (!v18)
  {
    goto LABEL_21;
  }

  sub_1A3C52C70(0, &qword_1EB126610);
  v27 = sub_1A524CA34();

  v19 = v1();
  if (!v19)
  {
LABEL_25:
    v22 = MEMORY[0x1E69E7CC0];
    if (*(v11 + 16))
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

LABEL_22:
  v20 = v19;
  v21 = [v19 humanActionIdentifiersToHighlight];

  if (!v21)
  {
    goto LABEL_25;
  }

  sub_1A3C52C70(0, &qword_1EB126610);
  v22 = sub_1A524CA34();

  if (*(v11 + 16))
  {
    goto LABEL_32;
  }

LABEL_26:
  if (v15 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      goto LABEL_32;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    goto LABEL_32;
  }

  if (v27 >> 62)
  {
    if (sub_1A524E2B4() > 0)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
LABEL_32:
    v23 = v1();
    if (v23 && (v24 = v23, v25 = [v23 sceneIdentifiersToHighlight], v24, v25))
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      v26 = sub_1A524CA34();
    }

    else
    {
      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1A40B1618(v26);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

LABEL_30:
  if (v22 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
      goto LABEL_32;
    }
  }

  else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_32;
  }

  swift_unknownObjectRelease();
}

void sub_1A40B04B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = sub_1A524BEE4();
  v22 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v17 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A524BF64();
  v20 = *(v15 - 8);
  v21 = v15;
  MEMORY[0x1EEE9AC00](v15);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v19 = sub_1A524D474();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a1;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v16[7] = a6;
  v16[8] = a7;
  aBlock[4] = sub_1A40B1768;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_23_3;
  _Block_copy(aBlock);

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40B07F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1A3C52C70(0, &qword_1EB1205F8);
  v2 = sub_1A524CA34();

  v1(v2);
}

uint64_t sub_1A40B0878(uint64_t result)
{
  if ((result & 0xF001) != 0)
  {
    sub_1A40B08EC(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

id sub_1A40B0A78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayAssetViewModelHighlightTimeRangeController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A40B0B28(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB126610);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A40B115C(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A40B0D60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A40B1A9C();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB126610);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A40B0F40();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A40B0F40()
{
  v1 = v0;
  v2 = *v0;
  sub_1A40B1A9C();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A40B115C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A40B0F40();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A40B12CC();
      goto LABEL_12;
    }

    sub_1A40B1410();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &qword_1EB126610);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

id sub_1A40B12CC()
{
  v1 = v0;
  sub_1A40B1A9C();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1A40B1410()
{
  v1 = v0;
  v2 = *v0;
  sub_1A40B1A9C();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524DBE4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A40B1618(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v4 = sub_1A3C52C70(0, &qword_1EB126610);
    v5 = sub_1A3D92850();
    result = MEMORY[0x1A59082D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A40B0B28(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1A524E2B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1A40B1768()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *((*MEMORY[0x1E69E7D40] & *Strong) + 0x80);
    v9 = v8();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 asset];

      if (v11)
      {
        v12 = swift_unknownObjectRelease();
        if (v11 == v1)
        {
          v13 = (v8)(v12);
          if (v13 && (v14 = v13, v15 = [v13 personLocalIdentifiersToHighlight], v14, v15))
          {
            v16 = sub_1A524CA34();
          }

          else
          {
            v16 = MEMORY[0x1E69E7CC0];
          }

          v17 = sub_1A3D3D27C(v2, v16);

          if (v17)
          {
            v19 = (v8)(v18);
            if (v19 && (v20 = v19, v21 = [v19 sceneIdentifiersToHighlight], v20, v21))
            {
              sub_1A3C52C70(0, &qword_1EB126610);
              v22 = sub_1A524CA34();
            }

            else
            {
              v22 = MEMORY[0x1E69E7CC0];
            }

            v23 = sub_1A3D5B724(v4, v22, &qword_1EB126610);

            if (v23)
            {
              v25 = (v8)(v24);
              if (v25 && (v26 = v25, v27 = [v25 audioIdentifiersToHighlight], v26, v27))
              {
                sub_1A3C52C70(0, &qword_1EB126610);
                v28 = sub_1A524CA34();
              }

              else
              {
                v28 = MEMORY[0x1E69E7CC0];
              }

              v29 = sub_1A3D5B724(v3, v28, &qword_1EB126610);

              if (v29)
              {
                v31 = (v8)(v30);
                if (v31 && (v32 = v31, v33 = [v31 humanActionIdentifiersToHighlight], v32, v33))
                {
                  sub_1A3C52C70(0, &qword_1EB126610);
                  v34 = sub_1A524CA34();
                }

                else
                {
                  v34 = MEMORY[0x1E69E7CC0];
                }

                v35 = sub_1A3D5B724(v5, v34, &qword_1EB126610);

                if (v35)
                {
                  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A40B1A9C()
{
  if (!qword_1EB131520)
  {
    sub_1A3C52C70(255, &qword_1EB126610);
    sub_1A3D92850();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB131520);
    }
  }
}

uint64_t sub_1A40B1BC0(char a1, unsigned int a2)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a2;
  }

  if (a2 >= 2u)
  {
    return v3;
  }

  else
  {
    return a1 & 1;
  }
}

uint64_t sub_1A40B1C00@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A5243F74();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241F84();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1A5241FC4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (v15 = sub_1A3C2F228(a1), (v16 & 1) != 0))
  {
    v17 = v15;
    v18 = *(a2 + 56);
    v19 = sub_1A5244084();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v14, v18 + *(v20 + 72) * v17, v19);
    (*(v20 + 56))(v14, 0, 1, v19);
    return (*(v20 + 32))(a3, v14, v19);
  }

  else
  {
    v22 = sub_1A5244084();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v14, 1, 1, v22);
    sub_1A5241F74();
    sub_1A5241FA4();
    sub_1A5247B94();
    sub_1A5241F54();
    (*(v7 + 104))(v9, *MEMORY[0x1E69C2930], v6);
    sub_1A5244034();
    result = (*(v23 + 48))(v14, 1, v22);
    if (result != 1)
    {
      return sub_1A40B2F68(v14);
    }
  }

  return result;
}

uint64_t sub_1A40B1FC8(uint64_t a1, char a2)
{
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5244084();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_1A40B20E0(v6, a2);
  return (*(v8 + 8))(a1, v7);
}

uint64_t sub_1A40B20E0(uint64_t a1, char a2)
{
  v3 = v2;
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5244084();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1A40B2F68(a1);
    v14 = sub_1A3C2F228(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1A40B2B58();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1A40B2774(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1A40B2F68(v8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1A40B2944(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

unint64_t sub_1A40B2308()
{
  result = sub_1A40B2DB4(MEMORY[0x1E69E7CC0]);
  qword_1EB189878 = result;
  return result;
}

void sub_1A40B2330(void *a1@<X8>)
{
  if (qword_1EB189870 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  *a1 = qword_1EB189878;

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40B23A0()
{
  sub_1A40B2FC4();
  sub_1A5249244();
  return v1;
}

uint64_t sub_1A40B2418(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_1A5244084();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1A40B30A0();
  v36 = a2;
  result = sub_1A524E774();
  v9 = result;
  if (*(v7 + 16))
  {
    v33 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = (v5 + 16);
    v35 = v5;
    v37 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v5 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        (*v37)(v38, v24, v39);
      }

      else
      {
        (*v34)(v38, v24, v39);
      }

      sub_1A524EC94();
      MEMORY[0x1A590A010](v22);
      result = sub_1A524ECE4();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      result = (*v37)(*(v9 + 56) + v23 * v17, v38, v39);
      ++*(v9 + 16);
      v5 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_1A40B2774(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A524E244() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1A524EC94();
      MEMORY[0x1A590A010](v9);
      result = sub_1A524ECE4();
      v10 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v3);
      v13 = (v11 + v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1A5244084() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A40B2944(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1A3C2F228(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1A40B2B58();
      goto LABEL_7;
    }

    sub_1A40B2418(v13, a3 & 1);
    v24 = sub_1A3C2F228(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1A5244084();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1A40B2AAC(v10, a2, a1, v16);
}

uint64_t sub_1A40B2AAC(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = sub_1A5244084();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void *sub_1A40B2B58()
{
  v1 = v0;
  v27 = sub_1A5244084();
  v29 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A40B30A0();
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25[0] = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v28 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v30 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + v18);
        v20 = v29;
        v21 = *(v29 + 72) * v18;
        v23 = v26;
        v22 = v27;
        (*(v29 + 16))(v26, *(v3 + 56) + v21, v27);
        v24 = v28;
        *(*(v28 + 48) + v18) = v19;
        result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22);
        v13 = v30;
      }

      while (v30);
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

        v1 = v25[0];
        v5 = v28;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v30 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_1A40B2DB4(uint64_t a1)
{
  sub_1A40B3160();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A40B30A0();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    while (1)
    {
      sub_1A40B31C8(v10, v6);
      v12 = *v6;
      result = sub_1A3C2F228(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_1A5244084();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A40B2F68(uint64_t a1)
{
  sub_1A3C39450();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A40B2FC4()
{
  result = qword_1EB1897E0[0];
  if (!qword_1EB1897E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1897E0);
  }

  return result;
}

unint64_t sub_1A40B301C()
{
  result = qword_1EB12A520;
  if (!qword_1EB12A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A520);
  }

  return result;
}

void sub_1A40B30A0()
{
  if (!qword_1EB126478)
  {
    sub_1A5244084();
    sub_1A40B310C();
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126478);
    }
  }
}

unint64_t sub_1A40B310C()
{
  result = qword_1EB12A528;
  if (!qword_1EB12A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A528);
  }

  return result;
}

void sub_1A40B3160()
{
  if (!qword_1EB12A518)
  {
    sub_1A5244084();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB12A518);
    }
  }
}

uint64_t sub_1A40B31C8(uint64_t a1, uint64_t a2)
{
  sub_1A40B3160();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A40B322C()
{
  sub_1A40B4DD8(0, &unk_1ED741F20, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1A5246D14();
  __swift_allocate_value_buffer(v3, qword_1EB1EBB20);
  __swift_project_value_buffer(v3, qword_1EB1EBB20);
  sub_1A3C52C70(0, &unk_1EB131528);
  v4 = [swift_getObjCClassFromMetadata() representedType];
  sub_1A524C674();

  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1A5246BE4();
}

void sub_1A40B3388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v32 = a2;
  v39 = a1;
  v4 = sub_1A524BEE4();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A5246F24();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D464();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v11);
  v31 = sub_1A524BF64();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E7CC0];
  v45 = v14;
  *(v14 + 16) = MEMORY[0x1E69E7CC0];
  v43 = dispatch_group_create();
  v44 = sub_1A3C52C70(0, &qword_1EB12B180);
  v38 = "leDisplayAssetViewModel>8";
  sub_1A524BF14();
  aBlock = v15;
  sub_1A3D75A78(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v16 = MEMORY[0x1E69E8030];
  sub_1A40B4DD8(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C2A8A4(&qword_1EB126E30, &qword_1EB126E40, v16);
  sub_1A524E224();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8090], v7);
  v38 = v13;
  v44 = sub_1A524D4B4();
  sub_1A40B4DD8(0, &qword_1EB1202D0, MEMORY[0x1E69E8450], MEMORY[0x1E69E6F90]);
  v17 = sub_1A5246D14();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1A52F8E10;
  if (qword_1EB1A5090 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v17, qword_1EB1EBB20);
  (*(v18 + 16))(v20 + v19, v21, v17);
  v22 = sub_1A524BAF4();

  v23 = [objc_opt_self() supportedTypes];
  sub_1A524CA34();

  v24 = sub_1A524BAF4();

  if (v22 >> 62)
  {
    v25 = sub_1A524E2B4();
  }

  else
  {
    v25 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v41;
  v26 = v42;
  v28 = v40;
  if (v25 >= 1)
  {
    v29 = sub_1A3C38A40();
    (*(v26 + 16))(v27, v29, v28);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  if (v24 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
LABEL_9:
      sub_1A40B4E3C();
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1A40B3E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v24 = a3;
  v9 = sub_1A524BEE4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A524BF64();
  v13 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a4;
  v16[4] = a2;
  v16[5] = a5;
  aBlock[4] = sub_1A40B5140;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_21_1;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  v18 = a2;
  v19 = a5;
  sub_1A524BF14();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1A40B4DD8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C2A8A4(&qword_1EB12B1B0, &qword_1EB12B1C0, v20);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v23);
}

void sub_1A40B411C(uint64_t a1, uint64_t a2, void *a3, NSObject *a4)
{
  v8 = sub_1A5246F24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    swift_beginAccess();
    v12 = swift_unknownObjectRetain();
    MEMORY[0x1A5907D70](v12);
    if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A524CA74();
    }

    sub_1A524CAE4();
    swift_endAccess();
  }

  else if (a3)
  {
    v13 = a3;
    v14 = sub_1A3C38A40();
    (*(v9 + 16))(v11, v14, v8);
    v15 = a3;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D244();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1A3C1C000, v16, v17, "[LemonadeImportManager] failed to load object: %@", v18, 0xCu);
      sub_1A3CB65E4(v19);
      MEMORY[0x1A590EEC0](v19, -1, -1);
      MEMORY[0x1A590EEC0](v18, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v11, v8);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1A40B43B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = sub_1A524BEE4();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  v9 = *(a1 + 16);
  if (v9 >> 62)
  {
    if (sub_1A524E2B4() >= 1)
    {
LABEL_3:
      objc_opt_self();
      swift_beginAccess();
      sub_1A3C52C70(0, &unk_1EB131528);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_3;
  }

  if (a5 >> 62)
  {
    result = sub_1A524E2B4();
    if (result >= 1)
    {
LABEL_7:
      sub_1A40B4E3C();
    }
  }

  else
  {
    result = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 1)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_1A40B47F0(char a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BEE4();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && a3)
  {
    v41 = v19;
    v42 = v18;

    v43 = a4;
    v23 = a3(v22);
    if (v23)
    {
      v24 = v23;
      sub_1A3C52C70(0, &qword_1EB12B180);
      v40 = sub_1A524D474();
      v25 = swift_allocObject();
      v26 = v45;
      v25[2] = v44;
      v25[3] = v26;
      v25[4] = v24;
      aBlock[4] = sub_1A40B5154;
      aBlock[5] = v25;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_36;
      v27 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      sub_1A524BF14();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1A3D75A78(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
      v28 = MEMORY[0x1E69E7F60];
      sub_1A40B4DD8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
      sub_1A3C2A8A4(&qword_1EB12B1B0, &qword_1EB12B1C0, v28);
      sub_1A524E224();
      v29 = v40;
      MEMORY[0x1A5908800](0, v21, v16, v27);
      sub_1A3C33378(a3);
      _Block_release(v27);
      swift_unknownObjectRelease();

      (*(v46 + 8))(v16, v14);
      (*(v41 + 8))(v21, v42);
      return;
    }

    sub_1A3C33378(a3);
  }

  if (a2)
  {
    v30 = a2;
    v31 = sub_1A3C38A40();
    (*(v11 + 16))(v13, v31, v10);
    v32 = a2;
    v33 = sub_1A5246F04();
    v34 = sub_1A524D244();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = a2;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_1A3C1C000, v33, v34, "[LemonadeImportManager] failed to import assets: %@", v35, 0xCu);
      sub_1A3CB65E4(v36);
      MEMORY[0x1A590EEC0](v36, -1, -1);
      MEMORY[0x1A590EEC0](v35, -1, -1);
    }

    else
    {
    }

    (*(v11 + 8))(v13, v10);
  }
}

void sub_1A40B4D00(uint64_t a1, uint64_t a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_1A3F6FD58;
  }

  else
  {
    v8 = 0;
  }

  v9 = a3;
  v6(a2, a3, v7, v8);
  sub_1A3C33378(v7);
}

void sub_1A40B4DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A40B4E3C()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A3C38A40();
  (*(v1 + 16))(v3, v4, v0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A40B5154()
{
  v1 = *(v0 + 16);
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  return v1(v2);
}

void sub_1A40B51E0(uint64_t a1@<X8>)
{
  v36[1] = *MEMORY[0x1E69E9840];
  sub_1A3C4BFD0(0, &qword_1EB1292E0, MEMORY[0x1E69C1CC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + 8) = 1;
  v8 = type metadata accessor for LemonadeSharedWithYouGridShelfProvider();
  v9 = v8[6];
  v10 = *MEMORY[0x1E69C2418];
  v11 = sub_1A5243334();
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v34 = v8[7];
  v12 = sub_1A3C47918();
  v14 = v13;
  v15 = sub_1A3C47918();
  v17 = v16;
  v18 = sub_1A3C4ED50();
  v35 = 1;
  *v7 = xmmword_1A5317AE0;
  v7[16] = 1;
  *(v7 + 3) = 2;
  v7[32] = 1;
  *(v7 + 5) = v12;
  *(v7 + 6) = v14;
  *(v7 + 7) = v15;
  *(v7 + 8) = v17;
  *(v7 + 72) = xmmword_1A5317AF0;
  v7[88] = 0;
  v7[89] = v18;
  swift_storeEnumTagMultiPayload();
  sub_1A3C4ED54(v4);
  sub_1A3C52D78(v7, 0, v4, v34 + a1);
  *(a1 + v8[8]) = 1;
  v19 = objc_opt_self();
  v36[0] = 0;
  v20 = [v19 openPhotoLibraryWithWellKnownIdentifier:3 error:v36];
  v21 = v36[0];
  if (v20)
  {
    *a1 = v20;

    v22 = v21;
  }

  else
  {
    v34 = v36[0];
    v23 = v36[0];
    v24 = sub_1A5240B84();

    swift_willThrow();
    if (qword_1EB1A50A0 != -1)
    {
      swift_once();
    }

    v25 = sub_1A5246F24();
    __swift_project_value_buffer(v25, qword_1EB1A50A8);
    v26 = v24;
    v27 = sub_1A5246F04();
    v28 = sub_1A524D244();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v24;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1A3C1C000, v27, v28, "Unable to open syndication library: %@", v29, 0xCu);
      sub_1A3CB65E4(v30);
      MEMORY[0x1A590EEC0](v30, -1, -1);
      MEMORY[0x1A590EEC0](v29, -1, -1);
    }

    else
    {
    }

    *a1 = 0;
  }
}

uint64_t sub_1A40B55D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeSharedWithYouGridCell();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A40B6AD8(0, &qword_1EB131598, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  if (shouldUseNewCollectionsLayout()())
  {
    v25 = a1;

    sub_1A5242744();
    v24[0] = *(v24[2] + 16);

    sub_1A40B64F0();
    v11 = v10;
    sub_1A40B6B48(&qword_1EB1315A8, sub_1A40B64F0);
    v24[1] = a2;
    v12 = MEMORY[0x1E6981E70];
    v13 = sub_1A41F7694();
    v14 = sub_1A43C9BB4();
    v16 = v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    v18 = sub_1A43C9BD0();
    LemonadeMaterialTitleCell.init(_:glyphName:title:keyAsset:aspectRatio:alwaysShowGlyph:background:affordances:)(&v25, 0x6567617373656DLL, 0xE700000000000000, 0, 0, v24[0], 1, sub_1A3F8B548, v26, v13, v17, v18, v12, v11);
    v19 = v26[5];
    *(v9 + 4) = v26[4];
    *(v9 + 5) = v19;
    v9[96] = v27;
    v20 = v26[1];
    *v9 = v26[0];
    *(v9 + 1) = v20;
    v21 = v26[3];
    *(v9 + 2) = v26[2];
    *(v9 + 3) = v21;
    swift_storeEnumTagMultiPayload();
    sub_1A40B6440();
    sub_1A40B6B48(&qword_1EB1315B0, sub_1A40B6440);
    sub_1A40B6B48(&qword_1EB1315B8, type metadata accessor for LemonadeSharedWithYouGridCell);
    return sub_1A5249744();
  }

  else
  {
    sub_1A5242744();
    v23 = *(*&v26[0] + 16);

    sub_1A3F99110(v23, v6);
    sub_1A40B6620(v6, v9, type metadata accessor for LemonadeSharedWithYouGridCell);
    swift_storeEnumTagMultiPayload();
    sub_1A40B6440();
    sub_1A40B6B48(&qword_1EB1315B0, sub_1A40B6440);
    sub_1A40B6B48(&qword_1EB1315B8, type metadata accessor for LemonadeSharedWithYouGridCell);
    sub_1A5249744();
    return sub_1A40B6688(v6);
  }
}