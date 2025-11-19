uint64_t sub_1BBB19210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB1BB8C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB19238(uint64_t a1)
{
  v2 = sub_1BBAA4C34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB19274(uint64_t a1)
{
  v2 = sub_1BBAA4C34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceFragment.description.getter()
{
  v1 = type metadata accessor for IntelligenceFragment();
  v2 = (v0 + v1[6]);
  v3 = *(v2 + 7);
  if (v3 == 1)
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    strcpy(v48, "processInfo: ");
    HIWORD(v48[0]) = -4864;
    v5 = v2[1];
    v44 = *v2;
    v45 = v5;
    *v46 = v2[2];
    *&v46[16] = *(v2 + 6);
    *&v46[24] = v3;
    v6 = IntelligenceProcessInfo.description.getter();
    MEMORY[0x1BFB16150](v6);

    v7 = v48[0];
    v4 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v4 + 2);
    v8 = *(v4 + 3);
    if (v9 >= v8 >> 1)
    {
      v4 = sub_1BBA86A94((v8 > 1), v9 + 1, 1, v4);
    }

    *(v4 + 2) = v9 + 1;
    *&v4[16 * v9 + 32] = v7;
  }

  v10 = (v0 + v1[7]);
  v11 = v10[1];
  v57 = *v10;
  v58 = v11;
  v59 = v10[2];
  v60 = 0x3FF0000000000000;
  v61 = 0;
  v62 = 0;
  v63 = 0x3FF0000000000000;
  v64 = 0;
  v65 = 0;
  if ((sub_1BBB83D78() & 1) == 0)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1BBB84028();
    v48[0] = v44;
    MEMORY[0x1BFB16150](0xD000000000000016, 0x80000001BBB9C520);
    v44 = v57;
    v45 = v58;
    *v46 = v59;
    type metadata accessor for CGAffineTransform(0);
    sub_1BBB84098();
    v12 = v48[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_1BBA86A94(0, *(v4 + 2) + 1, 1, v4);
    }

    v14 = *(v4 + 2);
    v13 = *(v4 + 3);
    if (v14 >= v13 >> 1)
    {
      v4 = sub_1BBA86A94((v13 > 1), v14 + 1, 1, v4);
    }

    *(v4 + 2) = v14 + 1;
    *&v4[16 * v14 + 32] = v12;
  }

  v55 = 0x73746E656D656C65;
  v56 = 0xEA0000000000203ALL;
  v53 = 2651;
  v54 = 0xE200000000000000;
  v15 = *(v0 + v1[8]);
  v16 = *(v15 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v52 = MEMORY[0x1E69E7CC0];
    sub_1BBAE4F00(0, v16, 0);
    v17 = v52;
    v18 = (v15 + 32);
    do
    {
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      *&v46[9] = *(v18 + 41);
      v45 = v20;
      *v46 = v21;
      v44 = v19;
      v50 = 0;
      v51 = 0xE000000000000000;
      v48[0] = *v18;
      v48[1] = v18[1];
      v49[0] = v18[2];
      *(v49 + 9) = *(v18 + 41);
      sub_1BBA9B788(&v44, v47);
      v22 = IntelligenceElement.description.getter();
      MEMORY[0x1BFB16150](v22);

      sub_1BBA9E174(&v44);
      v23 = v50;
      v24 = v51;
      v52 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1BBAE4F00((v25 > 1), v26 + 1, 1);
        v17 = v52;
      }

      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v24;
      v18 += 4;
      --v16;
    }

    while (v16);
  }

  *&v44 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v28 = sub_1BBB83938();
  v30 = v29;

  MEMORY[0x1BFB16150](v28, v30);

  MEMORY[0x1BFB16150](23818, 0xE200000000000000);
  MEMORY[0x1BFB16150](v53, v54);

  v31 = v55;
  v32 = v56;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1BBA86A94(0, *(v4 + 2) + 1, 1, v4);
  }

  v34 = *(v4 + 2);
  v33 = *(v4 + 3);
  if (v34 >= v33 >> 1)
  {
    v4 = sub_1BBA86A94((v33 > 1), v34 + 1, 1, v4);
  }

  *(v4 + 2) = v34 + 1;
  v35 = &v4[16 * v34];
  *(v35 + 4) = v31;
  *(v35 + 5) = v32;
  *&v44 = 0x73646E616D6D6F63;
  *(&v44 + 1) = 0xEA0000000000203ALL;
  v36 = sub_1BBB1AB0C();
  MEMORY[0x1BFB16150](v36);

  v37 = v44;
  v39 = *(v4 + 2);
  v38 = *(v4 + 3);
  if (v39 >= v38 >> 1)
  {
    v4 = sub_1BBA86A94((v38 > 1), v39 + 1, 1, v4);
  }

  *(v4 + 2) = v39 + 1;
  *&v4[16 * v39 + 32] = v37;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  sub_1BBB84028();

  *&v44 = 0xD000000000000015;
  *(&v44 + 1) = 0x80000001BBB9C540;
  *&v48[0] = v4;
  v40 = sub_1BBB83938();
  v42 = v41;

  MEMORY[0x1BFB16150](v40, v42);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v44;
}

uint64_t sub_1BBB19838(int a1)
{
  v173 = 2651;
  v174 = 0xE200000000000000;
  v3 = *(v1 + *(type metadata accessor for IntelligenceFragment() + 32));
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v172 = MEMORY[0x1E69E7CC0];
    sub_1BBAE4F00(0, v4, 0);
    v6 = 0;
    v122 = v3 + 32;
    v5 = v172;
    v134 = xmmword_1BBB85CE0;
    v123 = v4;
    v119 = a1;
    do
    {
      v124 = v5;
      v7 = (v122 + (v6 << 6));
      v8 = *v7;
      v9 = v7[1];
      v10 = v7[2];
      *(v171 + 9) = *(v7 + 41);
      v170[1] = v9;
      v171[0] = v10;
      v170[0] = v8;
      v168 = 0;
      v169 = 0xE000000000000000;
      if (a1)
      {
        v121 = v6;
        v160 = 0;
        v161 = 0xE000000000000000;
        v165 = *v7;
        v166 = v7[1];
        v167[0] = v7[2];
        *(v167 + 9) = *(v7 + 41);
        sub_1BBA9B788(v170, &v162);
        *&v162 = IntelligenceElement.description.getter();
        *(&v162 + 1) = v11;
        v12 = sub_1BBB82F18();
        v13 = *(v12 - 8);
        MEMORY[0x1EEE9AC00](v12);
        v141 = v14;
        v15 = &v118[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
        sub_1BBB82F08();
        v140 = sub_1BBAE8250();
        v16 = sub_1BBB83EC8();
        v17 = *(v13 + 8);
        v142 = v13 + 8;
        v143 = v12;
        v139 = v17;
        v17(v15, v12);

        *&v165 = v16;
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
        v137 = sub_1BBA86BA4();
        v138 = v18;
        v19 = sub_1BBB83938();
        v21 = v20;

        if (sub_1BBB83AD8() >= 1)
        {
          MEMORY[0x1BFB16150](10, 0xE100000000000000);
        }

        v22 = v171[0];
        MEMORY[0x1BFB16150](v19, v21);

        v120 = v118;
        MEMORY[0x1EEE9AC00](v23);
        *&v118[-16] = 0;
        *&v118[-8] = &v160;
        *&v165 = v22;
        sub_1BBA8BD24(v22);
        sub_1BBA9A66C(&v165, sub_1BBAE82A4);
        sub_1BBA8ABF8(v165);
        v126 = *(*(&v22 + 1) + 16);
        if (v126)
        {
          v24 = 0;
          v125 = *(&v22 + 1) + 32;
          do
          {
            v129 = v24;
            v25 = v125 + (v24 << 6);
            v165 = *v25;
            v166 = *(v25 + 16);
            v26 = *(v25 + 32);
            v27 = *(v25 + 40);
            *&v167[1] = *(v25 + 48);
            BYTE8(v167[1]) = *(v25 + 56);
            *&v167[0] = v26;
            *(&v167[0] + 1) = v27;
            *&v162 = IntelligenceElement.description.getter();
            *(&v162 + 1) = v28;
            MEMORY[0x1EEE9AC00](v162);
            v30 = &v118[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
            sub_1BBB82F08();
            v31 = sub_1BBB83EC8();
            v139(v30, v143);

            *&v165 = v31;
            v32 = sub_1BBB83938();
            v34 = v33;

            if (sub_1BBB83AD8() >= 1)
            {
              MEMORY[0x1BFB16150](10, 0xE100000000000000);
            }

            MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
            MEMORY[0x1BFB16150](v32, v34);

            v128 = v118;
            MEMORY[0x1EEE9AC00](v35);
            *&v118[-16] = 1;
            *&v118[-8] = &v160;
            *&v165 = v26;
            sub_1BBA8BD24(v26);
            sub_1BBA9A66C(&v165, sub_1BBB1BC9C);
            sub_1BBA8ABF8(v165);
            v136 = *(v27 + 16);
            if (v136)
            {
              v36 = 0;
              v135 = v27 + 32;
              do
              {
                v37 = (v135 + (v36 << 6));
                v165 = *v37;
                v166 = v37[1];
                v38 = *(v37 + 4);
                v39 = *(v37 + 5);
                *&v167[1] = *(v37 + 6);
                BYTE8(v167[1]) = *(v37 + 56);
                v144 = v38;
                *&v167[0] = v38;
                *(&v167[0] + 1) = v39;
                *&v162 = IntelligenceElement.description.getter();
                *(&v162 + 1) = v40;
                MEMORY[0x1EEE9AC00](v162);
                v42 = &v118[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
                sub_1BBB82F08();
                v43 = sub_1BBB83EC8();
                v139(v42, v143);

                *&v165 = v43;
                v44 = sub_1BBB83938();
                v46 = v45;

                if (sub_1BBB83AD8() > 0)
                {
                  MEMORY[0x1BFB16150](10, 0xE100000000000000);
                }

                ++v36;
                MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                MEMORY[0x1BFB16150](v44, v46);

                MEMORY[0x1EEE9AC00](v47);
                *&v118[-16] = 2;
                *&v118[-8] = &v160;
                v48 = v144;
                switch((v144 >> 59) & 0x1E | (v144 >> 2) & 1)
                {
                  case 5uLL:
                    goto LABEL_63;
                  case 0xAuLL:
                    v130 = v118;
                    v49 = v144;
                    v50 = v144 & 0xFFFFFFFFFFFFFFBLL;
                    swift_beginAccess();
                    v51 = *(v50 + 16);
                    v52 = *(v50 + 32);
                    v53 = *(v50 + 48);
                    *(v167 + 9) = *(v50 + 57);
                    v166 = v52;
                    v167[0] = v53;
                    v165 = v51;
                    v54 = *(v50 + 32);
                    v157 = *(v50 + 16);
                    v158 = v54;
                    v159 = *(v50 + 48);
                    v55 = *(&v53 + 1);
                    v56 = *(v50 + 64);
                    v156 = *(v50 + 72);
                    v155 = v56;
                    if (*(&v53 + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
                      v57 = swift_allocObject();
                      v58 = v157;
                      v59 = v158;
                      *(v57 + 16) = v134;
                      *(v57 + 32) = v58;
                      *(v57 + 48) = v59;
                      *(v57 + 64) = v159;
                      *(v57 + 72) = v55;
                      *(v57 + 80) = v155;
                      *(v57 + 88) = v156;
                      *&v145 = 0x656C746954;
                      *(&v145 + 1) = 0xE500000000000000;
                      sub_1BBA8BC5C(&v165, &v162, &qword_1EBC7BAA8);
                      sub_1BBA8BD24(v49);
                      sub_1BBA8BC5C(&v165, &v162, &qword_1EBC7BAA8);
                      MEMORY[0x1BFB16150](58, 0xE100000000000000);
                      v60 = v145;
                      if (sub_1BBB83AD8() > 0)
                      {
                        MEMORY[0x1BFB16150](10, 0xE100000000000000);
                      }

                      MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                      MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                      MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                      MEMORY[0x1BFB16150](v60, *(&v60 + 1));

                      v61 = *(v57 + 48);
                      v162 = *(v57 + 32);
                      v163 = v61;
                      v164[0] = *(v57 + 64);
                      *(v164 + 9) = *(v57 + 73);
                      sub_1BBAE2040(&v160, 4);

                      sub_1BBA8BCC4(&v165, &qword_1EBC7BAA8);
                    }

                    else
                    {
                      sub_1BBA8BD24(v49);
                    }

                    v89 = *(v50 + 112);
                    v163 = *(v50 + 96);
                    v164[0] = v89;
                    *(v164 + 9) = *(v50 + 121);
                    v162 = *(v50 + 80);
                    v152 = v162;
                    v153 = v163;
                    v154 = *(v50 + 112);
                    v90 = *(&v164[0] + 1);
                    v91 = *(v50 + 128);
                    v151 = *(v50 + 136);
                    v150 = v91;
                    if (*(&v164[0] + 1))
                    {
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
                      v92 = swift_allocObject();
                      v93 = v152;
                      v94 = v153;
                      *(v92 + 16) = v134;
                      *(v92 + 32) = v93;
                      *(v92 + 48) = v94;
                      *(v92 + 64) = v154;
                      *(v92 + 72) = v90;
                      *(v92 + 80) = v150;
                      *(v92 + 88) = v151;
                      v148 = 0x6567616D49;
                      v149 = 0xE500000000000000;
                      sub_1BBA8BC5C(&v162, &v145, &qword_1EBC7BAA8);
                      sub_1BBA8BC5C(&v162, &v145, &qword_1EBC7BAA8);
                      MEMORY[0x1BFB16150](58, 0xE100000000000000);
                      v96 = v148;
                      v95 = v149;
                      v97 = sub_1BBB83AD8();
                      v98 = v144;
                      if (v97 > 0)
                      {
                        MEMORY[0x1BFB16150](10, 0xE100000000000000);
                      }

                      MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                      MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                      MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                      MEMORY[0x1BFB16150](v96, v95);

                      v99 = *(v92 + 48);
                      v145 = *(v92 + 32);
                      v146 = v99;
                      v147[0] = *(v92 + 64);
                      *(v147 + 9) = *(v92 + 73);
                      sub_1BBAE2040(&v160, 4);

                      sub_1BBA8BCC4(&v162, &qword_1EBC7BAA8);
                      v70 = v98;
                    }

                    else
                    {
                      v70 = v144;
                    }

                    goto LABEL_64;
                  case 0xCuLL:
                    swift_beginAccess();
                    v66 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
                    if (!*(v66 + 16))
                    {
                      break;
                    }

                    *&v165 = 0x736E6F6974636553;
                    *(&v165 + 1) = 0xE800000000000000;
                    sub_1BBA8BD24(v48);

                    MEMORY[0x1BFB16150](58, 0xE100000000000000);
                    v67 = v165;
                    if (sub_1BBB83AD8() > 0)
                    {
                      MEMORY[0x1BFB16150](10, 0xE100000000000000);
                    }

                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](v67, *(&v67 + 1));

                    v68 = *(v66 + 16);
                    if (v68)
                    {
                      v69 = (v66 + 32);
                      do
                      {
                        v165 = *v69;
                        v166 = v69[1];
                        v167[0] = v69[2];
                        *(v167 + 9) = *(v69 + 41);
                        sub_1BBAE2040(&v160, 4);
                        v69 += 4;
                        --v68;
                      }

                      while (v68);
                    }

                    goto LABEL_62;
                  case 0xEuLL:
                    *&v165 = v144 & 0xFFFFFFFFFFFFFFBLL;
                    sub_1BBA8BD24(v144);
                    sub_1BBB4D250(&v165, sub_1BBB1BC9C);
                    goto LABEL_63;
                  case 0xFuLL:
                    v71 = v144 & 0xFFFFFFFFFFFFFFBLL;
                    swift_beginAccess();
                    v72 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
                    v73 = *(v72 + 16);
                    if (v73)
                    {
                      v127 = v48 & 0xFFFFFFFFFFFFFFBLL;
                      v130 = v118;
                      sub_1BBA8BD24(v48);

                      v74 = v73 - 1;
                      v75 = 32;
                      v76 = v72;
                      v132 = v39;
                      v133 = v36;
                      v131 = v72;
                      while (1)
                      {
                        v77 = *(v76 + v75);
                        swift_beginAccess();
                        v78 = *(v77 + 48);
                        v79 = *(v77 + 64);
                        *(v167 + 9) = *(v77 + 89);
                        v80 = *(v77 + 80);
                        v166 = v79;
                        v167[0] = v80;
                        v165 = v78;
                        *&v147[0] = *(v77 + 80);
                        v145 = *(v77 + 48);
                        v146 = v79;
                        v81 = *(&v80 + 1);
                        BYTE8(v152) = *(v77 + 104);
                        *&v152 = *(v77 + 96);
                        if (*(&v80 + 1))
                        {
                          *&v157 = v77;

                          sub_1BBA8BC5C(&v165, &v162, &qword_1EBC7BAA8);
                          *&v162 = IntelligenceElement.Table.Column.description.getter();
                          *(&v162 + 1) = v82;
                          MEMORY[0x1BFB16150](0x72656461654820, 0xE700000000000000);
                          v83 = v162;
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B650);
                          v84 = swift_allocObject();
                          v85 = v145;
                          v86 = v146;
                          *(v84 + 16) = v134;
                          *(v84 + 32) = v85;
                          *(v84 + 48) = v86;
                          *(v84 + 64) = *&v147[0];
                          *(v84 + 72) = v81;
                          *(v84 + 80) = v152;
                          *(v84 + 88) = BYTE8(v152);
                          v157 = v83;
                          sub_1BBA8BC5C(&v165, &v162, &qword_1EBC7BAA8);

                          MEMORY[0x1BFB16150](58, 0xE100000000000000);
                          v87 = v157;
                          if (sub_1BBB83AD8() > 0)
                          {
                            MEMORY[0x1BFB16150](10, 0xE100000000000000);
                          }

                          MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                          MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                          MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                          MEMORY[0x1BFB16150](v87, *(&v87 + 1));

                          v88 = *(v84 + 48);
                          v162 = *(v84 + 32);
                          v163 = v88;
                          v164[0] = *(v84 + 64);
                          *(v164 + 9) = *(v84 + 73);
                          sub_1BBAE2040(&v160, 4);

                          sub_1BBA8BCC4(&v165, &qword_1EBC7BAA8);
                          v39 = v132;
                          v36 = v133;
                          v76 = v131;
                        }

                        if (!v74)
                        {
                          break;
                        }

                        --v74;
                        v75 += 8;
                      }

                      v48 = v144;
                      v71 = v127;
                    }

                    else
                    {
                      sub_1BBA8BD24(v48);
                    }

                    v100 = *(v71 + 32);
                    if (!*(v100 + 16))
                    {
                      goto LABEL_63;
                    }

                    *&v165 = 1937207122;
                    *(&v165 + 1) = 0xE400000000000000;

                    MEMORY[0x1BFB16150](58, 0xE100000000000000);
                    v101 = v165;
                    if (sub_1BBB83AD8() > 0)
                    {
                      MEMORY[0x1BFB16150](10, 0xE100000000000000);
                    }

                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](v101, *(&v101 + 1));

                    v102 = *(v100 + 16);
                    if (v102)
                    {
                      v103 = (v100 + 32);
                      do
                      {
                        v165 = *v103;
                        v166 = v103[1];
                        v167[0] = v103[2];
                        *(v167 + 9) = *(v103 + 41);
                        sub_1BBAE2040(&v160, 4);
                        v103 += 4;
                        --v102;
                      }

                      while (v102);
                    }

                    goto LABEL_62;
                  case 0x10uLL:
                    swift_beginAccess();
                    v62 = *((v48 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
                    if (!*(v62 + 16))
                    {
                      break;
                    }

                    *&v165 = 0x736C6C6543;
                    *(&v165 + 1) = 0xE500000000000000;
                    sub_1BBA8BD24(v48);

                    MEMORY[0x1BFB16150](58, 0xE100000000000000);
                    v63 = v165;
                    if (sub_1BBB83AD8() > 0)
                    {
                      MEMORY[0x1BFB16150](10, 0xE100000000000000);
                    }

                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](2128928, 0xE300000000000000);
                    MEMORY[0x1BFB16150](v63, *(&v63 + 1));

                    v64 = *(v62 + 16);
                    if (v64)
                    {
                      v65 = (v62 + 32);
                      do
                      {
                        v165 = *v65;
                        v166 = v65[1];
                        v167[0] = v65[2];
                        *(v167 + 9) = *(v65 + 41);
                        sub_1BBAE2040(&v160, 4);
                        v65 += 4;
                        --v64;
                      }

                      while (v64);
                    }

LABEL_62:

                    sub_1BBA8ABF8(v48);
                    break;
                  case 0x12uLL:
                    *&v165 = v144 & 0xFFFFFFFFFFFFFFBLL;
                    sub_1BBA8BD24(v144);
                    sub_1BBB48094(&v165, sub_1BBB1BC9C);
LABEL_63:
                    v70 = v48;
                    goto LABEL_64;
                  case 0x13uLL:
                    if (v144 == 0x9000000000000004)
                    {
                      v70 = 0x9000000000000004;
                    }

                    else
                    {
                      v70 = 0x9000000000000005;
                    }

LABEL_64:
                    sub_1BBA8ABF8(v70);
                    break;
                  default:
                    break;
                }

                v104 = *(v39 + 16);
                if (v104)
                {
                  v105 = (v39 + 32);
                  do
                  {
                    v165 = *v105;
                    v166 = v105[1];
                    v167[0] = v105[2];
                    *(v167 + 9) = *(v105 + 41);
                    sub_1BBAE2040(&v160, 3);
                    v105 += 4;
                    --v104;
                  }

                  while (v104);
                }
              }

              while (v36 != v136);
            }

            v24 = v129 + 1;
          }

          while (v129 + 1 != v126);
        }

        v6 = v121;
        v106 = v160;
        v108 = v161;
        LOBYTE(a1) = v119;
      }

      else
      {
        v165 = *v7;
        v166 = v7[1];
        v167[0] = v7[2];
        *(v167 + 9) = *(v7 + 41);
        sub_1BBA9B788(v170, &v162);
        v106 = IntelligenceElement.description.getter();
        v108 = v107;
      }

      MEMORY[0x1BFB16150](v106, v108);

      sub_1BBA9E174(v170);
      v109 = v168;
      v110 = v169;
      v5 = v124;
      v172 = v124;
      v112 = *(v124 + 16);
      v111 = *(v124 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_1BBAE4F00((v111 > 1), v112 + 1, 1);
        v5 = v172;
      }

      ++v6;
      *(v5 + 16) = v112 + 1;
      v113 = v5 + 16 * v112;
      *(v113 + 32) = v109;
      *(v113 + 40) = v110;
    }

    while (v6 != v123);
  }

  *&v170[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v114 = sub_1BBB83938();
  v116 = v115;

  MEMORY[0x1BFB16150](v114, v116);

  MEMORY[0x1BFB16150](23818, 0xE200000000000000);
  return v173;
}

uint64_t sub_1BBB1AB0C()
{
  v1 = *(v0 + *(type metadata accessor for IntelligenceFragment() + 36));
  v2 = *(v1 + 16);
  if (v2)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1BBAE4F00(0, v2, 0);
    v3 = v16;
    v4 = v1 + 32;
    do
    {
      v5 = IntelligenceCommand.description.getter();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1BBAE4F00((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v17;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 88;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v12 = sub_1BBB83938();
  v14 = v13;

  MEMORY[0x1BFB16150](v12, v14);

  MEMORY[0x1BFB16150](23818, 0xE200000000000000);
  return 2651;
}

unint64_t IntelligenceFragment.recursiveDescription.getter()
{
  v1 = type metadata accessor for IntelligenceFragment();
  if (*(v0 + *(v1 + 24) + 56) == 1)
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    strcpy(v24, "processInfo: ");
    HIWORD(v24[0]) = -4864;
    v3 = IntelligenceProcessInfo.description.getter();
    MEMORY[0x1BFB16150](v3);

    v4 = v24[0];
    v2 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v6 = *(v2 + 2);
    v5 = *(v2 + 3);
    if (v6 >= v5 >> 1)
    {
      v2 = sub_1BBA86A94((v5 > 1), v6 + 1, 1, v2);
    }

    *(v2 + 2) = v6 + 1;
    *&v2[16 * v6 + 32] = v4;
  }

  v7 = (v0 + *(v1 + 28));
  v8 = v7[1];
  v24[0] = *v7;
  v24[1] = v8;
  v24[2] = v7[2];
  if ((sub_1BBB83D78() & 1) == 0)
  {
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_1BBB84028();
    MEMORY[0x1BFB16150](0xD000000000000016, 0x80000001BBB9C520);
    type metadata accessor for CGAffineTransform(0);
    sub_1BBB84098();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1BBA86A94((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    *&v2[16 * v10 + 32] = v23;
  }

  v11 = sub_1BBB19838(1);
  MEMORY[0x1BFB16150](v11);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x73746E656D656C65;
  *(v14 + 5) = 0xEA0000000000203ALL;
  v15 = sub_1BBB1AB0C();
  MEMORY[0x1BFB16150](v15);

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = sub_1BBA86A94((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0x73646E616D6D6F63;
  *(v18 + 5) = 0xEA0000000000203ALL;
  sub_1BBB84028();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v19 = sub_1BBB83938();
  v21 = v20;

  MEMORY[0x1BFB16150](v19, v21);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t _s21UIIntelligenceSupport20IntelligenceFragmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C478);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C518);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  v14 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_22;
    }
  }

  v51 = type metadata accessor for IntelligenceFragment();
  v52 = a2;
  v15 = *(v51 + 20);
  v16 = *(v11 + 48);
  v50 = a1;
  sub_1BBA8BC5C(a1 + v15, v13, &qword_1EBC7C478);
  v17 = v52 + v15;
  v18 = v52;
  sub_1BBA8BC5C(v17, &v13[v16], &qword_1EBC7C478);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_1BBA8BCC4(v13, &qword_1EBC7C478);
      goto LABEL_14;
    }

LABEL_12:
    v20 = &qword_1EBC7C518;
    v21 = v13;
LABEL_21:
    sub_1BBA8BCC4(v21, v20);
    goto LABEL_22;
  }

  sub_1BBA8BC5C(v13, v10, &qword_1EBC7C478);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    sub_1BBB1BBD8(v10, type metadata accessor for IntelligenceFragment.RemoteID);
    goto LABEL_12;
  }

  sub_1BBB1BC38(&v13[v16], v7);
  v22 = sub_1BBB834C8();
  sub_1BBB1BBD8(v7, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBB1BBD8(v10, type metadata accessor for IntelligenceFragment.RemoteID);
  sub_1BBA8BCC4(v13, &qword_1EBC7C478);
  if ((v22 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_14:
  v24 = v50;
  v23 = v51;
  v25 = (v50 + *(v51 + 24));
  v26 = v25[1];
  v27 = v25[3];
  v80 = v25[2];
  v81 = v27;
  v28 = v25[1];
  v79[0] = *v25;
  v79[1] = v28;
  v29 = (v18 + *(v51 + 24));
  v30 = v29[1];
  v31 = v29[3];
  v83 = v29[2];
  v84 = v31;
  v32 = v29[1];
  v82[0] = *v29;
  v82[1] = v32;
  v75 = v79[0];
  v76 = v26;
  v77 = v80;
  v71 = v82[0];
  v72 = v30;
  v78 = *(v25 + 6);
  v33 = *(&v81 + 1);
  v73 = v83;
  v74 = *(v29 + 6);
  v34 = *(&v84 + 1);
  if (*(&v81 + 1) != 1)
  {
    v36 = v25[1];
    v61 = *v25;
    v62 = v36;
    v63 = v25[2];
    v64 = *(v25 + 6);
    v65 = *(&v81 + 1);
    if (*(&v84 + 1) != 1)
    {
      v40 = DWORD1(v63);
      v39 = DWORD2(v63);
      v41 = v29[1];
      v56 = *v29;
      v57 = v41;
      v58 = v29[2];
      v59 = *(v29 + 6);
      v60 = *(&v84 + 1);
      sub_1BBA8BC5C(v79, v53, &qword_1EBC7BBE0);
      sub_1BBA8BC5C(v82, v53, &qword_1EBC7BBE0);
      sub_1BBA8BC5C(&v61, v53, &qword_1EBC7BBE0);
      sub_1BBA8BCC4(&v56, &qword_1EBC7BBE0);
      v43 = DWORD1(v58);
      v42 = DWORD2(v58);

      v53[0] = v75;
      v53[1] = v76;
      v53[2] = v77;
      v54 = v78;
      v55 = v33;
      v23 = v51;
      sub_1BBA8BCC4(v53, &qword_1EBC7BBE0);
      v44 = v40 == v43;
      v18 = v52;
      if (!v44 || v39 != v42)
      {
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    sub_1BBA8BC5C(v79, &v56, &qword_1EBC7BBE0);
    sub_1BBA8BC5C(v82, &v56, &qword_1EBC7BBE0);
    sub_1BBA8BC5C(&v61, &v56, &qword_1EBC7BBE0);

    goto LABEL_20;
  }

  if (*(&v84 + 1) != 1)
  {
    sub_1BBA8BC5C(v79, &v61, &qword_1EBC7BBE0);
    sub_1BBA8BC5C(v82, &v61, &qword_1EBC7BBE0);
LABEL_20:
    v61 = v75;
    v62 = v76;
    v63 = v77;
    v64 = v78;
    v65 = v33;
    v66 = v71;
    v67 = v72;
    v68 = v73;
    v69 = v74;
    v70 = v34;
    v20 = &unk_1EBC7C520;
    v21 = &v61;
    goto LABEL_21;
  }

  v35 = v25[1];
  v61 = *v25;
  v62 = v35;
  v63 = v25[2];
  v64 = *(v25 + 6);
  v65 = 1;
  sub_1BBA8BC5C(v79, &v56, &qword_1EBC7BBE0);
  sub_1BBA8BC5C(v82, &v56, &qword_1EBC7BBE0);
  sub_1BBA8BCC4(&v61, &qword_1EBC7BBE0);
LABEL_27:
  v45 = (v24 + v23[7]);
  v46 = v45[2];
  v57 = v45[1];
  v58 = v46;
  v56 = *v45;
  v47 = (v18 + v23[7]);
  v48 = v47[2];
  v62 = v47[1];
  v63 = v48;
  v61 = *v47;
  if (sub_1BBB83D78() & 1) != 0 && (sub_1BBAFF5D8(*(v24 + v23[8]), *(v18 + v23[8])))
  {
    v37 = sub_1BBAFF79C(*(v24 + v23[9]), *(v18 + v23[9]));
    return v37 & 1;
  }

LABEL_22:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_1BBB1B6D4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBC7C4F0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BBB1B74C()
{
  result = qword_1EBC7C500;
  if (!qword_1EBC7C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C500);
  }

  return result;
}

unint64_t sub_1BBB1B7A0()
{
  result = qword_1EBC7ADC8;
  if (!qword_1EBC7ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7ADC8);
  }

  return result;
}

uint64_t sub_1BBB1B7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFragment();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BBB1B858()
{
  sub_1BBB1BA24(319, &qword_1ED6BE4B8, &type metadata for RequestID, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BBB1B9CC();
    if (v1 <= 0x3F)
    {
      sub_1BBB1BA24(319, qword_1ED6BE618, &type metadata for IntelligenceProcessInfo, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGAffineTransform(319);
        if (v3 <= 0x3F)
        {
          sub_1BBB1BA24(319, &qword_1ED6BE468, &type metadata for IntelligenceElement, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1BBB1BA24(319, &qword_1ED6BE470, &type metadata for IntelligenceCommand, MEMORY[0x1E69E62F8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1BBB1B9CC()
{
  if (!qword_1ED6BE720)
  {
    type metadata accessor for IntelligenceFragment.RemoteID(255);
    v0 = sub_1BBB83E98();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED6BE720);
    }
  }
}

void sub_1BBB1BA24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1BBB1BA88()
{
  result = qword_1EBC7C510;
  if (!qword_1EBC7C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C510);
  }

  return result;
}

unint64_t sub_1BBB1BAE0()
{
  result = qword_1ED6BE760;
  if (!qword_1ED6BE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE760);
  }

  return result;
}

unint64_t sub_1BBB1BB38()
{
  result = qword_1ED6BE768;
  if (!qword_1ED6BE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE768);
  }

  return result;
}

uint64_t sub_1BBB1BB8C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB1BBD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BBB1BC38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntelligenceFragment.RemoteID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BBB1BCA0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1BBB843D8();
    MEMORY[0x1BFB16A50](v13);
    result = sub_1BBB84438();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

double IntelligenceCollectionRequest.requestID.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double IntelligenceCollectionRequest.requestID.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double IntelligenceCollectionRequest.timeout.getter()
{
  v0 = sub_1BBB838D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1BBB83818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB83898();
  sub_1BBB83898();
  sub_1BBB838C8();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  v12 = COERCE_DOUBLE(DispatchTimeInterval.seconds.getter());
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  result = v12;
  if (v14)
  {
    return 1.79769313e308;
  }

  return result;
}

uint64_t sub_1BBB1C034(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBB838D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_1BBB838A8();
  result = (*(v5 + 8))(v8, v4);
  *(a2 + 8) = v9;
  return result;
}

uint64_t IntelligenceCollectionRequest.startTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BBB838A8();
  v5 = sub_1BBB838D8();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *(v2 + 8) = v4;
  return result;
}

void (*IntelligenceCollectionRequest.startTime.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1BBB838D8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1BBB83898();
  return sub_1BBB1C2A8;
}

void sub_1BBB1C2A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    v8 = sub_1BBB838A8();
    v9 = *(v6 + 8);
    v9(v3, v5);
    *(v7 + 8) = v8;
    v9(v4, v5);
  }

  else
  {
    v10 = sub_1BBB838A8();
    (*(v6 + 8))(v4, v5);
    *(v7 + 8) = v10;
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1BBB1C39C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BBB838D8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = sub_1BBB838A8();
  result = (*(v5 + 8))(v8, v4);
  *(a2 + 16) = v9;
  return result;
}

uint64_t IntelligenceCollectionRequest.deadline.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BBB838A8();
  v5 = sub_1BBB838D8();
  result = (*(*(v5 - 8) + 8))(a1, v5);
  *(v2 + 16) = v4;
  return result;
}

void (*IntelligenceCollectionRequest.deadline.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1BBB838D8();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_1BBB83898();
  return sub_1BBB1C610;
}

void sub_1BBB1C610(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    v8 = sub_1BBB838A8();
    v9 = *(v6 + 8);
    v9(v3, v5);
    *(v7 + 16) = v8;
    v9(v4, v5);
  }

  else
  {
    v10 = sub_1BBB838A8();
    (*(v6 + 8))(v4, v5);
    *(v7 + 16) = v10;
  }

  free(v4);
  free(v3);

  free(v2);
}

double IntelligenceCollectionRequest.defaultTimeoutForAsyncTasks.getter()
{
  v0 = sub_1BBB838D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = sub_1BBB83818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BBB83898();
  sub_1BBB83898();
  sub_1BBB838C8();
  v11 = *(v1 + 8);
  v11(v3, v0);
  v11(v6, v0);
  v12 = COERCE_DOUBLE(DispatchTimeInterval.seconds.getter());
  v14 = v13;
  (*(v8 + 8))(v10, v7);
  result = v12 * 0.8;
  if (v14)
  {
    return 1.43815451e308;
  }

  return result;
}

uint64_t IntelligenceCollectionRequest.defaultDeadlineForAsyncTasks.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_1BBB83818();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BBB838D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v17 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - v13;
  sub_1BBB83898();
  sub_1BBB83898();
  sub_1BBB83898();
  sub_1BBB838C8();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v15(v11, v5);
  DispatchTimeInterval.seconds.getter();
  (*(v2 + 8))(v4, v1);
  sub_1BBB838E8();
  return (v15)(v14, v5);
}

uint64_t sub_1BBB1CB74()
{
  v0 = sub_1BBB838D8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  sub_1BBB83888();
  v4 = sub_1BBB838A8();
  result = (*(v1 + 8))(v3, v0);
  qword_1ED6BE528 = v4;
  byte_1ED6BE530 = 1;
  byte_1ED6BE531 = v7;
  return result;
}

uint64_t static IntelligenceCollectionRequest.DefaultValues.appIntentsRequest.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6BE520 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = byte_1ED6BE530;
  v2 = byte_1ED6BE531;
  *a1 = qword_1ED6BE528;
  *(a1 + 8) = v1;
  *(a1 + 9) = v2;
  return result;
}

void sub_1BBB1CCD8()
{
  *&xmmword_1ED6BDCF0 = 1000000;
  WORD4(xmmword_1ED6BDCF0) = 256;
  qword_1ED6BDD00 = 100000;
  LOWORD(qword_1ED6BDD08) = 256;
  qword_1ED6BDD10 = 10000;
  word_1ED6BDD18 = 256;
}

double static IntelligenceCollectionRequest.DefaultValues.textOptions.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED6BDCE8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = xmmword_1ED6BDD00;
  *a1 = xmmword_1ED6BDCF0;
  a1[1] = v1;
  result = *(&xmmword_1ED6BDD00 + 10);
  *(a1 + 26) = *(&xmmword_1ED6BDD00 + 10);
  return result;
}

uint64_t static IntelligenceCollectionRequest.DefaultValues.snapshotsIgnoreDisableUpdateMasks.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBC7C528 = a1;
  return result;
}

uint64_t sub_1BBB1CE9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BBB85CE0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  if (qword_1ED6BDDC8 != -1)
  {
    swift_once();
  }

  memmove((inited + 48), &xmmword_1ED6BDDD0, 0x39uLL);
  *(inited + 112) = 72;
  if (qword_1ED6BEB10 != -1)
  {
    swift_once();
  }

  *(inited + 120) = qword_1ED6BEB18;
  *(inited + 128) = 0x3FE999999999999ALL;
  *(inited + 136) = 0;

  v1 = sub_1BBAC7278(inited);
  swift_setDeallocating();
  result = sub_1BBAC7878(inited + 32);
  qword_1ED6BE510 = v1;
  return result;
}

UIIntelligenceSupport::IntelligenceCollectionRequest::CommandOptions __swiftcall IntelligenceCollectionRequest.CommandOptions.init()()
{
  *v0 = 0;
  *(v0 + 2) = 0;
  return result;
}

uint64_t static IntelligenceCollectionRequest.DefaultValues.commandOptions.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1ED6BDCD0 != -1)
  {
    v3 = a1;
    result = swift_once();
    a1 = v3;
  }

  v1 = HIBYTE(word_1ED6BDCD8);
  v2 = byte_1ED6BDCDA;
  *a1 = word_1ED6BDCD8;
  a1[1] = v1;
  a1[2] = v2;
  return result;
}

uint64_t IntelligenceCollectionRequest.maximumOffscreenSubelements.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

void IntelligenceCollectionRequest.appIntentsRequest.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
}

uint64_t IntelligenceCollectionRequest.appIntentsRequest.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t IntelligenceCollectionRequest.TextOptions.StringOptions.maximumLength.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t IntelligenceCollectionRequest.TextOptions.StringOptions.description.getter()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8))
  {
    v2 = MEMORY[0x1E69E7CC0];
    if (!*(v0 + 9))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v3 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v3);

  v2 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1BBA86A94((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[16 * v5];
  *(v6 + 4) = 0x74676E654C78616DLL;
  *(v6 + 5) = 0xEB00000000203A68;
  if (v1)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1BBA86A94(0, *(v2 + 2) + 1, 1, v2);
    }

    v8 = *(v2 + 2);
    v7 = *(v2 + 3);
    if (v8 >= v7 >> 1)
    {
      v2 = sub_1BBA86A94((v7 > 1), v8 + 1, 1, v2);
    }

    *(v2 + 2) = v8 + 1;
    v9 = &v2[16 * v8];
    *(v9 + 4) = 0x7274203A6D697274;
    *(v9 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v10 = sub_1BBB83938();
  v12 = v11;

  MEMORY[0x1BFB16150](v10, v12);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return 40;
}

uint64_t static IntelligenceCollectionRequest.TextOptions.StringOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

uint64_t sub_1BBB1D4FC()
{
  if (*v0)
  {
    return 0x746968576D697274;
  }

  else
  {
    return 0x4C6D756D6978616DLL;
  }
}

uint64_t sub_1BBB1D550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4C6D756D6978616DLL && a2 == 0xED00006874676E65;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746968576D697274 && a2 == 0xEE00656361707365)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBB1D63C(uint64_t a1)
{
  v2 = sub_1BBB22DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1D678(uint64_t a1)
{
  v2 = sub_1BBB22DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCollectionRequest.TextOptions.StringOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C530);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB22DAC();
  sub_1BBB84478();
  v12 = 0;
  v7 = v9[1];
  sub_1BBB84228();
  if (!v7)
  {
    v11 = 1;
    sub_1BBB84258();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceCollectionRequest.TextOptions.StringOptions.hash(into:)()
{
  if (*(v0 + 8) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v1 = *v0;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v1);
  }

  return sub_1BBB84408();
}

uint64_t IntelligenceCollectionRequest.TextOptions.StringOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84408();
  if (v2 != 1)
  {
    MEMORY[0x1BFB16A50](v1);
  }

  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t IntelligenceCollectionRequest.TextOptions.StringOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB22DAC();
  sub_1BBB84458();
  if (!v2)
  {
    v17 = 0;
    v9 = sub_1BBB84168();
    v11 = v10;
    v12 = v9;
    v16 = 1;
    v14 = sub_1BBB84198();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 9) = v14 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB1DB18()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84408();
  if (v2 != 1)
  {
    MEMORY[0x1BFB16A50](v1);
  }

  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t sub_1BBB1DB9C()
{
  if (*(v0 + 8) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v1 = *v0;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v1);
  }

  return sub_1BBB84408();
}

uint64_t sub_1BBB1DC00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84408();
  if (v2 != 1)
  {
    MEMORY[0x1BFB16A50](v1);
  }

  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t sub_1BBB1DC84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

void IntelligenceCollectionRequest.TextOptions.selectedTextOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceCollectionRequest.TextOptions.selectedTextOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *v1 = *result;
  *(v1 + 8) = v2;
  *(v1 + 9) = v3;
  return result;
}

void IntelligenceCollectionRequest.TextOptions.focusedEditableTextOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceCollectionRequest.TextOptions.focusedEditableTextOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  *(v1 + 25) = v3;
  return result;
}

void IntelligenceCollectionRequest.TextOptions.defaultOptions.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 41);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t IntelligenceCollectionRequest.TextOptions.defaultOptions.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 9);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  *(v1 + 41) = v3;
  return result;
}

uint64_t IntelligenceCollectionRequest.TextOptions.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  if ((*(v0 + 8) & 1) != 0 || (*v0 == 1000000 ? (v7 = *(v0 + 9) == 0) : (v7 = 1), v7))
  {
    v33 = *(v0 + 40);
    v9 = *(v0 + 32);
    v10 = *(v0 + 41);
    strcpy(v34, "selected: ");
    BYTE3(v34[1]) = 0;
    HIDWORD(v34[1]) = -369098752;
    v11 = IntelligenceCollectionRequest.TextOptions.StringOptions.description.getter();
    MEMORY[0x1BFB16150](v11);

    v12 = v34[0];
    v13 = v34[1];
    v8 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    if (v15 >= v14 >> 1)
    {
      v8 = sub_1BBA86A94((v14 > 1), v15 + 1, 1, v8);
    }

    *(v8 + 2) = v15 + 1;
    v16 = &v8[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    v6 = v10;
    v4 = v9;
    v5 = v33;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (v1 == 100000)
  {
    v17 = v2;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) != 0 || !v3)
  {
    sub_1BBB84028();

    v34[0] = 0xD000000000000011;
    v34[1] = 0x80000001BBB9C560;
    v18 = IntelligenceCollectionRequest.TextOptions.StringOptions.description.getter();
    MEMORY[0x1BFB16150](v18);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1BBA86A94(0, *(v8 + 2) + 1, 1, v8);
    }

    v20 = *(v8 + 2);
    v19 = *(v8 + 3);
    if (v20 >= v19 >> 1)
    {
      v8 = sub_1BBA86A94((v19 > 1), v20 + 1, 1, v8);
    }

    *(v8 + 2) = v20 + 1;
    v21 = &v8[16 * v20];
    *(v21 + 4) = 0xD000000000000011;
    *(v21 + 5) = 0x80000001BBB9C560;
  }

  if (v4 == 10000)
  {
    v22 = v5;
  }

  else
  {
    v22 = 1;
  }

  if ((v22 & 1) != 0 || !v6)
  {
    strcpy(v34, "default: ");
    WORD1(v34[1]) = 0;
    HIDWORD(v34[1]) = -385875968;
    v23 = IntelligenceCollectionRequest.TextOptions.StringOptions.description.getter();
    MEMORY[0x1BFB16150](v23);

    v24 = v34[0];
    v25 = v34[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1BBA86A94(0, *(v8 + 2) + 1, 1, v8);
    }

    v27 = *(v8 + 2);
    v26 = *(v8 + 3);
    if (v27 >= v26 >> 1)
    {
      v8 = sub_1BBA86A94((v26 > 1), v27 + 1, 1, v8);
    }

    *(v8 + 2) = v27 + 1;
    v28 = &v8[16 * v27];
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
  }

  strcpy(v34, "TextOptions(");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v29 = sub_1BBB83938();
  v31 = v30;

  MEMORY[0x1BFB16150](v29, v31);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v34[0];
}

unint64_t sub_1BBB1E158()
{
  v1 = 0x4F746C7561666564;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1BBB1E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB24748(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB1E1EC(uint64_t a1)
{
  v2 = sub_1BBB22E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1E228(uint64_t a1)
{
  v2 = sub_1BBB22E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCollectionRequest.TextOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C548);
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 9);
  v20 = v1[2];
  v26 = *(v1 + 24);
  v19 = *(v1 + 25);
  v18 = v1[4];
  v9 = *(v1 + 40);
  v16 = *(v1 + 41);
  v17 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB22E00();
  sub_1BBB84478();
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v27 = 0;
  sub_1BBB22E54();
  v10 = v22;
  sub_1BBB84288();
  if (v10)
  {
    return (*(v21 + 8))(v5, v3);
  }

  v13 = v16;
  v12 = v17;
  v14 = v18;
  v15 = v21;
  v23 = v20;
  v24 = v26;
  v25 = v19;
  v27 = 1;
  sub_1BBB84288();
  v23 = v14;
  v24 = v12;
  v25 = v13;
  v27 = 2;
  sub_1BBB84288();
  return (*(v15 + 8))(v5, v3);
}

uint64_t IntelligenceCollectionRequest.TextOptions.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  if (*(v0 + 8) == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    v5 = *v0;
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v5);
  }

  sub_1BBB84408();
  sub_1BBB84408();
  if (!v2)
  {
    MEMORY[0x1BFB16A50](v1);
  }

  sub_1BBB84408();
  sub_1BBB84408();
  if (!v4)
  {
    MEMORY[0x1BFB16A50](v3);
  }

  return sub_1BBB84408();
}

uint64_t IntelligenceCollectionRequest.TextOptions.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.TextOptions.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceCollectionRequest.TextOptions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C560);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB22E00();
  sub_1BBB84458();
  if (!v2)
  {
    v26 = 0;
    sub_1BBB22EA8();
    sub_1BBB841B8();
    v19 = v20;
    v9 = v22;
    v25 = v21;
    v26 = 1;
    sub_1BBB841B8();
    v18 = v9;
    v10 = v20;
    v17 = v22;
    v24 = v21;
    v26 = 2;
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v23 = v21;
    v15 = v25;
    v16 = v24;
    *a2 = v19;
    *(a2 + 8) = v15;
    *(a2 + 9) = v18;
    *(a2 + 16) = v10;
    *(a2 + 24) = v16;
    *(a2 + 25) = v17;
    *(a2 + 32) = v12;
    *(a2 + 40) = v13;
    *(a2 + 41) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB1E890()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.TextOptions.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB1E8D4()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.TextOptions.hash(into:)();
  return sub_1BBB84438();
}

__n128 IntelligenceCollectionRequest.textOptions.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 16) = v2;
  result = *(v1 + 90);
  *(a1 + 26) = result;
  return result;
}

__n128 IntelligenceCollectionRequest.textOptions.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v2;
  result = *(a1 + 26);
  *(v1 + 90) = result;
  return result;
}

uint64_t sub_1BBB1E974(uint64_t a1)
{
  v2 = sub_1BBB22EFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1E9B0(uint64_t a1)
{
  v2 = sub_1BBB22EFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1E9EC(uint64_t a1)
{
  v2 = sub_1BBA91FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1EA28(uint64_t a1)
{
  v2 = sub_1BBA91FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1EA64(uint64_t a1)
{
  v2 = sub_1BBA94FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1EAA0(uint64_t a1)
{
  v2 = sub_1BBA94FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1EADC(uint64_t a1)
{
  v2 = sub_1BBB22F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1EB18(uint64_t a1)
{
  v2 = sub_1BBB22F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1BBB1EBBC()
{
  v1 = 0x656C6C6F43746F6ELL;
  v2 = 0x657463656C6C6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0x657463656C6C6F63;
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

uint64_t sub_1BBB1EC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB24878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB1EC7C(uint64_t a1)
{
  v2 = sub_1BBB22FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1ECB8(uint64_t a1)
{
  v2 = sub_1BBB22FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1ECF4(uint64_t a1)
{
  v2 = sub_1BBB2304C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1ED30(uint64_t a1)
{
  v2 = sub_1BBB2304C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1ED6C(uint64_t a1)
{
  v2 = sub_1BBB22FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1EDA8(uint64_t a1)
{
  v2 = sub_1BBB22FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1EDE4(uint64_t a1)
{
  v2 = sub_1BBB230A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1EE20(uint64_t a1)
{
  v2 = sub_1BBB230A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1EE5C(uint64_t a1)
{
  v2 = sub_1BBB230F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1EE98(uint64_t a1)
{
  v2 = sub_1BBB230F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCollectionRequest.ContentCollectionOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5B8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5C0);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5C8);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5D0);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C5D8);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB22FA4();
  sub_1BBB84478();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1BBB2304C();
      v18 = v27;
      sub_1BBB84208();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1BBB22FF8();
      v18 = v30;
      sub_1BBB84208();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1BBB230A0();
    v18 = v24;
    sub_1BBB84208();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1BBB230F4();
  sub_1BBB84208();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t IntelligenceCollectionRequest.ContentCollectionOption.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C608);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C610);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C618);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C620);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C628);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBB22FA4();
  v15 = v46;
  sub_1BBB84458();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1BBB841F8();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1BBAD2E0C();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1BBB84058();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v28 = &type metadata for IntelligenceCollectionRequest.ContentCollectionOption;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1BBB230A0();
        v32 = v35;
        sub_1BBB84118();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1BBB230F4();
        v25 = v35;
        sub_1BBB84118();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1BBB2304C();
      v31 = v35;
      sub_1BBB84118();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1BBB22FF8();
      v33 = v35;
      sub_1BBB84118();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t IntelligenceCollectionRequest.documentPreferredContentTypes.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

void IntelligenceCollectionRequest.shouldCollectDocumentContentType(_:)()
{
  v1 = sub_1BBB83658();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 112);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v10[1] = v2 + 16;
    while (v7 != v8)
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        return;
      }

      (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8++, v1, v3);
      v9 = sub_1BBB83648();
      (*(v2 + 8))(v5, v1);
      if (v9)
      {
        return;
      }
    }
  }
}

uint64_t sub_1BBB1FCC4(uint64_t a1)
{
  v2 = sub_1BBB23244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1FD00(uint64_t a1)
{
  v2 = sub_1BBB23244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1FD3C()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1BBB1FD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB249F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB1FDC4(uint64_t a1)
{
  v2 = sub_1BBB23148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1FE00(uint64_t a1)
{
  v2 = sub_1BBB23148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1FE3C(uint64_t a1)
{
  v2 = sub_1BBB2319C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1FE78(uint64_t a1)
{
  v2 = sub_1BBB2319C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB1FEB4(uint64_t a1)
{
  v2 = sub_1BBB231F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB1FEF0(uint64_t a1)
{
  v2 = sub_1BBB231F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCollectionRequest.WindowContentGeneratedPDFCollectionOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C630);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C638);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C640);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C648);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB23148();
  sub_1BBB84478();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1BBB231F0();
      v9 = v21;
      sub_1BBB84208();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1BBB2319C();
      v9 = v24;
      sub_1BBB84208();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1BBB23244();
    sub_1BBB84208();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t IntelligenceCollectionRequest.WindowContentGeneratedPDFCollectionOption.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C670);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C678);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C680);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C688);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1BBB23148();
  v15 = v36;
  sub_1BBB84458();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1BBA854A8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1BBB84058();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v24 = &type metadata for IntelligenceCollectionRequest.WindowContentGeneratedPDFCollectionOption;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1BBB231F0();
          sub_1BBB84118();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1BBB2319C();
          v26 = v17;
          sub_1BBB84118();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1BBB23244();
        sub_1BBB84118();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

BOOL IntelligenceCollectionRequest.isWindowContentGeneratedPDFCollectionEnabled.getter()
{
  if (v0[126])
  {
    return v0[126] == 1;
  }

  if (v0[107])
  {
    v2 = v0[122] == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t IntelligenceCollectionRequest.imageRepresentations.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

void IntelligenceCollectionRequest.commandOptions.getter(_BYTE *a1@<X8>)
{
  v2 = v1[141];
  v3 = v1[142];
  *a1 = v1[140];
  a1[1] = v2;
  a1[2] = v3;
}

_BYTE *IntelligenceCollectionRequest.commandOptions.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v1[140] = *result;
  v1[141] = v2;
  v1[142] = v3;
  return result;
}

unint64_t sub_1BBB20ADC()
{
  v1 = 0x556564756C636E69;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1BBB20B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB24B18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB20B70(uint64_t a1)
{
  v2 = sub_1BBB23298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB20BAC(uint64_t a1)
{
  v2 = sub_1BBB23298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceCollectionRequest.CommandOptions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C690);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 1);
  v9[3] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB23298();
  sub_1BBB84478();
  v12 = 0;
  sub_1BBB84258();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v11 = 1;
  sub_1BBB84258();
  v10 = 2;
  sub_1BBB84258();
  return (*(v5 + 8))(v7, v4);
}

uint64_t IntelligenceCollectionRequest.CommandOptions.hash(into:)()
{
  sub_1BBB84408();
  sub_1BBB84408();
  return sub_1BBB84408();
}

uint64_t IntelligenceCollectionRequest.CommandOptions.hashValue.getter()
{
  sub_1BBB843D8();
  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  return sub_1BBB84438();
}

uint64_t IntelligenceCollectionRequest.CommandOptions.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C6A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB23298();
  sub_1BBB84458();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1BBB84198();
    v15 = 1;
    v10 = sub_1BBB84198();
    v14 = 2;
    v12 = sub_1BBB84198();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    a2[1] = v10 & 1;
    a2[2] = v12 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB21070()
{
  sub_1BBB84408();
  sub_1BBB84408();
  return sub_1BBB84408();
}

uint64_t sub_1BBB210BC()
{
  sub_1BBB843D8();
  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  return sub_1BBB84438();
}

double IntelligenceCollectionRequest.init(requestID:timeout:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BBB838D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28[-v12];
  v14 = *a1;
  sub_1BBB838B8();
  (*(v5 + 16))(v10, v13, v4);
  sub_1BBB838E8();
  v37 = 0;
  if (qword_1ED6BE520 != -1)
  {
    swift_once();
  }

  v35 = qword_1ED6BE528;
  v32 = byte_1ED6BE530;
  v15 = byte_1ED6BE531;
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  *&v36[6] = xmmword_1ED6BDCF0;
  *&v36[22] = xmmword_1ED6BDD00;
  *&v36[32] = *(&xmmword_1ED6BDD00 + 10);
  if (qword_1ED6BE4F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1ED6BE4F8;
  swift_beginAccess();
  v33 = byte_1EBC7C528;
  v17 = qword_1ED6BE508;
  v34 = v16;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_1ED6BE510;
  v19 = qword_1ED6BDCD0;

  if (v19 != -1)
  {
    swift_once();
  }

  if (v15)
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v29 = v20 | v32;
  v31 = HIBYTE(word_1ED6BDCD8);
  v32 = word_1ED6BDCD8;
  v30 = byte_1ED6BDCDA;
  v21 = sub_1BBB838A8();
  v22 = sub_1BBB838A8();
  v23 = *(v5 + 8);
  v23(v7, v4);
  v23(v10, v4);
  v23(v13, v4);
  *a2 = v14;
  *(a2 + 24) = 16843008;
  v24 = *&v36[16];
  *(a2 + 58) = *v36;
  v25 = v37;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  *(a2 + 32) = 100;
  *(a2 + 40) = v25;
  *(a2 + 41) = 1;
  *(a2 + 43) = 1;
  *(a2 + 48) = v35;
  *(a2 + 56) = v29;
  *(a2 + 74) = v24;
  *(a2 + 90) = *&v36[32];
  *(a2 + 106) = 0;
  *(a2 + 112) = v34;
  *(a2 + 120) = 0x1000000;
  *(a2 + 124) = 1;
  *(a2 + 125) = v33;
  *(a2 + 126) = 0;
  *(a2 + 128) = v18;
  *&result = 257;
  *(a2 + 136) = 257;
  v27 = v31;
  *(a2 + 140) = v32;
  *(a2 + 141) = v27;
  *(a2 + 142) = v30;
  return result;
}

uint64_t IntelligenceCollectionRequest.init(requestID:startTime:deadline:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  *(a4 + 24) = 16843008;
  *(a4 + 32) = 100;
  *(a4 + 40) = 0;
  *(a4 + 41) = 1;
  *(a4 + 43) = 1;
  if (qword_1ED6BE520 != -1)
  {
    swift_once();
  }

  v8 = byte_1ED6BE530;
  if (byte_1ED6BE531)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *(a4 + 48) = qword_1ED6BE528;
  *(a4 + 56) = v9 | v8;
  if (qword_1ED6BDCE8 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1ED6BDD00;
  *(a4 + 64) = xmmword_1ED6BDCF0;
  *(a4 + 80) = v10;
  *(a4 + 90) = *(&xmmword_1ED6BDD00 + 10);
  *(a4 + 106) = 0;
  if (qword_1ED6BE4F0 != -1)
  {
    swift_once();
  }

  *(a4 + 112) = qword_1ED6BE4F8;
  *(a4 + 120) = 0x1000000;
  *(a4 + 124) = 1;
  swift_beginAccess();
  *(a4 + 125) = byte_1EBC7C528;
  *(a4 + 126) = 0;
  v11 = qword_1ED6BE508;

  if (v11 != -1)
  {
    swift_once();
  }

  *(a4 + 128) = qword_1ED6BE510;
  *(a4 + 136) = 257;
  v12 = qword_1ED6BDCD0;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = HIBYTE(word_1ED6BDCD8);
  v14 = byte_1ED6BDCDA;
  *(a4 + 140) = word_1ED6BDCD8;
  *(a4 + 141) = v13;
  *(a4 + 142) = v14;
  *a4 = v7;
  *(a4 + 8) = sub_1BBB838A8();
  v15 = sub_1BBB838A8();
  v16 = sub_1BBB838D8();
  v17 = *(*(v16 - 8) + 8);
  v17(a3, v16);
  result = (v17)(a2, v16);
  *(a4 + 16) = v15;
  return result;
}

void static IntelligenceCollectionRequest.forUnitTesting()(uint64_t a1@<X8>)
{
  if (qword_1EBC7AC48 != -1)
  {
    swift_once();
  }

  v2 = off_1EBC7AC50;
  os_unfair_lock_lock(off_1EBC7AC50 + 6);
  os_unfair_lock_opaque = v2[5]._os_unfair_lock_opaque;
  v4 = os_unfair_lock_opaque + 1;
  if (os_unfair_lock_opaque == -1)
  {
    __break(1u);
  }

  else
  {
    v2[5]._os_unfair_lock_opaque = v4;
    v5 = v2[4]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v2 + 6);
    v6 = __PAIR64__(v4, v5);
    IntelligenceCollectionRequest.init(requestID:timeout:)(&v6, a1);
    *(a1 + 24) = 1;
    *(a1 + 26) = 0;
  }
}

__n128 IntelligenceCollectionRequest.init(requestID:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *a1;
  IntelligenceCollectionRequest.init(requestID:timeout:)(&v7, v8);
  v3 = v9[0];
  *(a2 + 96) = v8[6];
  *(a2 + 112) = v3;
  *(a2 + 127) = *(v9 + 15);
  v4 = v8[3];
  *(a2 + 32) = v8[2];
  *(a2 + 48) = v4;
  v5 = v8[5];
  *(a2 + 64) = v8[4];
  *(a2 + 80) = v5;
  result = v8[1];
  *a2 = v8[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t (*IntelligenceCollectionRequest.includeAppIntentsPayloads.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57) << 8 != 512;
  return sub_1BBB24D04;
}

unsigned __int8 *sub_1BBB21958(unsigned __int8 *result, uint64_t a2)
{
  v2 = *result;
  if (v2 != 1)
  {
    if (*(a2 + 57) << 8 == 512)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(a2 + 57) << 8 != 512)
  {
LABEL_7:
    *(a2 + 57) = v2;
    return result;
  }

  if (qword_1ED6BE520 != -1)
  {
    v4 = a2;
    result = swift_once();
    a2 = v4;
  }

  v3 = byte_1ED6BE530 | 0x100;
  *(a2 + 48) = qword_1ED6BE528;
  *(a2 + 56) = v3;
  return result;
}

uint64_t IntelligenceCollectionRequest.includeAppIntentsPayloadDebugDescription.setter(uint64_t result)
{
  if ((result & 1) == 0)
  {
    if (*(v1 + 57) << 8 == 512)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (*(v1 + 57) << 8 != 512)
  {
LABEL_7:
    *(v1 + 57) = result & 1;
    return result;
  }

  if (qword_1ED6BE520 != -1)
  {
    result = swift_once();
  }

  v2 = byte_1ED6BE530 | 0x100;
  *(v1 + 48) = qword_1ED6BE528;
  *(v1 + 56) = v2;
  return result;
}

_BYTE *(*IntelligenceCollectionRequest.includeAppIntentsPayloadDebugDescription.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57) & 1;
  return sub_1BBB21AC4;
}

_BYTE *sub_1BBB21AC4(_BYTE *result)
{
  v1 = *result;
  v2 = *(*result + 57) << 8;
  if (!result[8])
  {
    if (v2 == 512)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v2 != 512)
  {
LABEL_7:
    *(v1 + 57) = result[8];
    return result;
  }

  if (qword_1ED6BE520 != -1)
  {
    v4 = *result;
    result = swift_once();
    v1 = v4;
  }

  v3 = byte_1ED6BE530 | 0x100;
  *(v1 + 48) = qword_1ED6BE528;
  *(v1 + 56) = v3;
  return result;
}

uint64_t (*IntelligenceCollectionRequest.includeAppEntities.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57) << 8 != 512;
  return sub_1BBB24D04;
}

_BYTE *sub_1BBB21BA8(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    if (*(a2 + 57) << 8 != 512)
    {
      return result;
    }

    if (qword_1ED6BE520 != -1)
    {
      v4 = a2;
      result = swift_once();
      a2 = v4;
    }

    if (byte_1ED6BE531)
    {
      v2 = 256;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 | byte_1ED6BE530;
    *(a2 + 48) = qword_1ED6BE528;
  }

  else
  {
    *(a2 + 48) = 0;
    v3 = 512;
  }

  *(a2 + 56) = v3;
  return result;
}

uint64_t sub_1BBB21C58(uint64_t result)
{
  if (result)
  {
    if (*(v1 + 57) << 8 != 512)
    {
      return result;
    }

    if (qword_1ED6BE520 != -1)
    {
      result = swift_once();
    }

    if (byte_1ED6BE531)
    {
      v2 = 256;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2 | byte_1ED6BE530;
    *(v1 + 48) = qword_1ED6BE528;
  }

  else
  {
    *(v1 + 48) = 0;
    v3 = 512;
  }

  *(v1 + 56) = v3;
  return result;
}

uint64_t (*IntelligenceCollectionRequest.includeAppIntents.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 57) << 8 != 512;
  return sub_1BBB21D20;
}

uint64_t sub_1BBB21D24(uint64_t result)
{
  v1 = *result;
  if (*(result + 8))
  {
    if (*(v1 + 57) << 8 != 512)
    {
      return result;
    }

    if (qword_1ED6BE520 != -1)
    {
      v5 = *result;
      result = swift_once();
      v1 = v5;
    }

    v2 = qword_1ED6BE528;
    if (byte_1ED6BE531)
    {
      v3 = 256;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3 | byte_1ED6BE530;
  }

  else
  {
    v2 = 0;
    v4 = 512;
  }

  *(v1 + 48) = v2;
  *(v1 + 56) = v4;
  return result;
}

uint64_t IntelligenceCollectionRequest.hash(into:)(__int128 *a1)
{
  v3 = sub_1BBB83658();
  v43 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 1);
  v8 = *(v1 + 2);
  v29 = *(v1 + 27);
  v24 = *(v1 + 4);
  LODWORD(v5) = *(v1 + 41);
  v30 = *(v1 + 40);
  v31 = v5;
  LODWORD(v5) = *(v1 + 43);
  v32 = *(v1 + 42);
  v33 = v5;
  v25 = *(v1 + 6);
  v34 = *(v1 + 28);
  v26 = *(v1 + 8);
  LODWORD(v5) = *(v1 + 73);
  v35 = *(v1 + 72);
  v36 = v5;
  v27 = *(v1 + 10);
  LODWORD(v5) = *(v1 + 89);
  v37 = *(v1 + 88);
  v38 = v5;
  v28 = *(v1 + 12);
  LODWORD(v5) = *(v1 + 105);
  v39 = *(v1 + 104);
  v40 = v5;
  v41 = *(v1 + 106);
  v42 = *(v1 + 107);
  v9 = *(v1 + 14);
  v46 = *(v1 + 120);
  v48 = *(v1 + 121);
  v50 = *(v1 + 122);
  v10 = v1[1] | (*v1 << 32);
  LODWORD(v5) = *(v1 + 124);
  v44 = *(v1 + 123);
  v45 = v5;
  v47 = *(v1 + 125);
  v49 = *(v1 + 126);
  v51 = *(v1 + 16);
  LODWORD(v5) = *(v1 + 137);
  v52 = *(v1 + 136);
  v53 = v5;
  v54 = *(v1 + 138);
  LODWORD(v5) = *(v1 + 140);
  v55 = *(v1 + 139);
  v56 = v5;
  LODWORD(v5) = *(v1 + 142);
  v57 = *(v1 + 141);
  v58 = v5;
  MEMORY[0x1BFB16A80](v10, v4);
  MEMORY[0x1BFB16A80](v7);
  MEMORY[0x1BFB16A80](v8);
  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  if (v30 == 1)
  {
    sub_1BBB84408();
  }

  else
  {
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v24);
  }

  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  v11 = v34;
  if ((v34 & 0xFF00) != 0x200)
  {
    sub_1BBB84408();
    MEMORY[0x1BFB16A80](v25);
    MEMORY[0x1BFB16A50](v11);
  }

  v13 = v41;
  v12 = v42;
  sub_1BBB84408();
  if (v35)
  {
    sub_1BBB84408();
  }

  else
  {
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v26);
  }

  sub_1BBB84408();
  if (v37)
  {
    sub_1BBB84408();
  }

  else
  {
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v27);
  }

  sub_1BBB84408();
  if (v39)
  {
    sub_1BBB84408();
  }

  else
  {
    sub_1BBB84408();
    MEMORY[0x1BFB16A50](v28);
  }

  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v13);
  MEMORY[0x1BFB16A50](v12);
  MEMORY[0x1BFB16A50](*(v9 + 16));
  v14 = *(v9 + 16);
  v15 = a1;
  if (v14)
  {
    v16 = v43 + 16;
    v17 = *(v43 + 16);
    v18 = v9 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v19 = *(v43 + 72);
    v20 = (v43 + 8);
    do
    {
      v21 = v16;
      v17(v6, v18, v3);
      sub_1BBB24C9C(&qword_1ED6BE4B0);
      sub_1BBB83918();
      (*v20)(v6, v3);
      v16 = v21;
      v18 += v19;
      --v14;
    }

    while (v14);
  }

  MEMORY[0x1BFB16A50](v46);
  MEMORY[0x1BFB16A50](v48);
  MEMORY[0x1BFB16A50](v50);
  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v49);
  sub_1BBB225DC(v15, v51);
  sub_1BBB84408();
  sub_1BBB84408();
  MEMORY[0x1BFB16A50](v54);
  sub_1BBB84408();
  sub_1BBB84408();
  sub_1BBB84408();
  return sub_1BBB84408();
}

uint64_t IntelligenceCollectionRequest.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB222B0()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB222F4()
{
  sub_1BBB843D8();
  IntelligenceCollectionRequest.hash(into:)(v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB22334(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1BBA91B38(*a1);
  v5 = v4;
  if (v3 == sub_1BBA91B38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BBB842F8();
  }

  return v8 & 1;
}

uint64_t sub_1BBB223BC()
{
  v1 = *v0;
  sub_1BBB843D8();
  sub_1BBA91B38(v1);
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB22420()
{
  sub_1BBA91B38(*v0);
  sub_1BBB83AC8();
}

uint64_t sub_1BBB22474()
{
  v1 = *v0;
  sub_1BBB843D8();
  sub_1BBA91B38(v1);
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB224D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB24C48();
  *a1 = result;
  return result;
}

unint64_t sub_1BBB22504@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1BBA91B38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1BBB22530@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB24C48();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB22564(uint64_t a1)
{
  v2 = sub_1BBA92CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB225A0(uint64_t a1)
{
  v2 = sub_1BBA92CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB225DC(__int128 *a1, uint64_t a2)
{
  v50 = sub_1BBB83658();
  v4 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v49 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v66[4] = a1[2];
  v66[5] = v6;
  v67 = *(a1 + 8);
  v8 = *a1;
  v7 = a1[1];
  v46[1] = a1;
  v66[2] = v8;
  v66[3] = v7;
  v55 = sub_1BBB84438();
  v56 = a2;
  v9 = a2 + 56;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  v47 = v4;
  v51 = (v4 + 8);
  v52 = v4 + 16;

  v15 = 0;
  v16 = 0;
  v53 = v13;
  v54 = v9;
  while (v12)
  {
    v59 = v15;
LABEL_13:
    v20 = (*(v56 + 48) + 112 * (__clz(__rbit64(v12)) | (v16 << 6)));
    v22 = v20[1];
    v21 = v20[2];
    v61 = *v20;
    v62 = v22;
    v63 = v21;
    v24 = v20[4];
    v23 = v20[5];
    v25 = v20[3];
    *(v66 + 9) = *(v20 + 89);
    v65 = v24;
    v66[0] = v23;
    v64 = v25;
    sub_1BBB843D8();
    if (*(&v61 + 1))
    {
      sub_1BBB84408();
      sub_1BBACB4D0(&v61, v60);
      sub_1BBB83AC8();
    }

    else
    {
      sub_1BBB84408();
      sub_1BBACB4D0(&v61, v60);
    }

    v26 = v63;
    v27 = BYTE8(v63);
    v28 = v64;
    v29 = BYTE8(v64);
    v30 = v65;
    v31 = BYTE8(v65);
    if (BYTE8(v62) == 1)
    {
      sub_1BBB84408();
      if (!v27)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v48 = BYTE8(v64);
      v32 = v63;
      v33 = BYTE8(v65);
      v34 = v65;
      v35 = v64;
      v36 = v62;
      sub_1BBB84408();
      v37 = v36;
      v28 = v35;
      v30 = v34;
      v31 = v33;
      v26 = v32;
      v29 = v48;
      MEMORY[0x1BFB16A50](v37);
      if (!v27)
      {
LABEL_18:
        sub_1BBB84408();
        MEMORY[0x1BFB16A50](v26);
        if (!v29)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    sub_1BBB84408();
    if (!v29)
    {
LABEL_19:
      sub_1BBB84408();
      MEMORY[0x1BFB16A50](v28);
      goto LABEL_23;
    }

LABEL_22:
    sub_1BBB84408();
LABEL_23:
    v57 = v16;
    v58 = v12;
    sub_1BBB84408();
    if (!v31)
    {
      MEMORY[0x1BFB16A50](v30);
    }

    v38 = *(&v66[0] + 1);
    MEMORY[0x1BFB16A50](*&v66[0]);
    MEMORY[0x1BFB16A50](*(v38 + 16));
    v39 = *(v38 + 16);
    v40 = v51;
    v41 = v49;
    v42 = v50;
    if (v39)
    {
      v43 = v38 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v44 = *(v47 + 72);
      v45 = *(v47 + 16);
      do
      {
        v45(v41, v43, v42);
        sub_1BBB24C9C(&qword_1ED6BE4B0);
        sub_1BBB83918();
        (*v40)(v41, v42);
        v43 += v44;
        --v39;
      }

      while (v39);
    }

    v12 = (v58 - 1) & v58;
    v17 = *&v66[1];
    if (*&v66[1] == 0.0)
    {
      v17 = 0.0;
    }

    MEMORY[0x1BFB16A80](*&v17);
    sub_1BBB84408();
    v18 = sub_1BBB84438();
    result = sub_1BBAC7878(&v61);
    v15 = v18 ^ v59;
    v13 = v53;
    v9 = v54;
    v16 = v57;
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v13)
    {

      return MEMORY[0x1BFB16A50](v15);
    }

    v12 = *(v9 + 8 * v19);
    ++v16;
    if (v12)
    {
      v59 = v15;
      v16 = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s21UIIntelligenceSupport29IntelligenceCollectionRequestV2eeoiySbAC_ACtFZ_0(unsigned int *a1, unsigned int *a2)
{
  v4 = 0;
  if (a1[1] | (*a1 << 32)) != (a2[1] | (*a2 << 32)) || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0 || ((*(a1 + 25) ^ *(a2 + 25)) & 1) != 0 || ((*(a1 + 26) ^ *(a2 + 26)) & 1) != 0 || ((*(a1 + 27) ^ *(a2 + 27)))
  {
    return v4 & 1;
  }

  v54 = v2;
  v55 = v3;
  v5 = *(a1 + 28);
  v6 = *(a1 + 106);
  v7 = *(a1 + 107);
  v49 = *(a1 + 14);
  v47 = *(a1 + 121);
  v48 = *(a1 + 120);
  v45 = *(a1 + 123);
  v46 = *(a1 + 122);
  v43 = *(a1 + 125);
  v44 = *(a1 + 124);
  v41 = *(a1 + 126);
  v39 = *(a1 + 16);
  v37 = *(a1 + 136);
  v35 = *(a1 + 137);
  v33 = *(a1 + 138);
  v31 = *(a1 + 139);
  v8 = *(a1 + 140);
  v29 = *(a1 + 141);
  v9 = *(a2 + 40);
  v10 = *(a2 + 57);
  v11 = *(a2 + 106);
  v12 = *(a2 + 107);
  v13 = *(a2 + 14);
  v14 = *(a2 + 120);
  v15 = *(a2 + 121);
  v16 = *(a2 + 122);
  v17 = *(a2 + 123);
  v18 = *(a2 + 124);
  v42 = *(a2 + 125);
  v40 = *(a2 + 126);
  v38 = *(a2 + 16);
  v36 = *(a2 + 136);
  v34 = *(a2 + 137);
  v32 = *(a2 + 138);
  v30 = *(a2 + 139);
  v27 = *(a2 + 140);
  v26 = *(a2 + 141);
  v28 = *(a2 + 142);
  if (a1[10])
  {
    v4 = 0;
    if (!*(a2 + 40))
    {
      return v4 & 1;
    }

LABEL_14:
    if ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)) & 1) != 0 || ((*(a1 + 43) ^ *(a2 + 43)))
    {
      return v4 & 1;
    }

    if ((v5 & 0xFF00) == 0x200)
    {
      if (v10 == 2)
      {
LABEL_26:
        v25 = *(a1 + 142);
        v20 = *(a1 + 5);
        v52 = *(a1 + 4);
        v53[0] = v20;
        *(v53 + 10) = *(a1 + 90);
        v21 = *(a2 + 5);
        v50 = *(a2 + 4);
        v51[0] = v21;
        *(v51 + 10) = *(a2 + 90);
        v22 = _s21UIIntelligenceSupport29IntelligenceCollectionRequestV11TextOptionsV2eeoiySbAE_AEtFZ_0(&v52, &v50);
        v4 = 0;
        if ((v22 & 1) != 0 && v6 == v11 && v7 == v12)
        {
          v23 = sub_1BBA94D48(v49, v13);
          v4 = 0;
          if ((v23 & 1) != 0 && v48 == v14 && v47 == v15 && v46 == v16 && v45 == v17 && v44 == v18 && v43 == v42 && v41 == v40)
          {
            v24 = sub_1BBA95080(v39, v38);
            v4 = 0;
            if ((v24 & 1) != 0 && ((v37 ^ v36) & 1) == 0 && ((v35 ^ v34) & 1) == 0 && v33 == v32 && ((v31 ^ v30) & 1) == 0)
            {
              v4 = (v8 ^ v27 | v29 ^ v26 | v25 ^ v28) ^ 1;
            }
          }
        }

        return v4 & 1;
      }
    }

    else if (v10 != 2)
    {
      v4 = 0;
      if (*(a1 + 6) != *(a2 + 6) || *(a2 + 56) != v5 || ((v10 ^ ((v5 & 0x100) >> 8)) & 1) != 0)
      {
        return v4 & 1;
      }

      goto LABEL_26;
    }

    v4 = 0;
    return v4 & 1;
  }

  v4 = 0;
  if (*(a1 + 4) != *(a2 + 4))
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v4 & 1;
}

unint64_t sub_1BBB22DAC()
{
  result = qword_1EBC7C538;
  if (!qword_1EBC7C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C538);
  }

  return result;
}

unint64_t sub_1BBB22E00()
{
  result = qword_1EBC7C550;
  if (!qword_1EBC7C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C550);
  }

  return result;
}

unint64_t sub_1BBB22E54()
{
  result = qword_1EBC7C558;
  if (!qword_1EBC7C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C558);
  }

  return result;
}

unint64_t sub_1BBB22EA8()
{
  result = qword_1EBC7C568;
  if (!qword_1EBC7C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C568);
  }

  return result;
}

unint64_t sub_1BBB22EFC()
{
  result = qword_1EBC7B218;
  if (!qword_1EBC7B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7B218);
  }

  return result;
}

unint64_t sub_1BBB22F50()
{
  result = qword_1EBC7C590;
  if (!qword_1EBC7C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C590);
  }

  return result;
}

unint64_t sub_1BBB22FA4()
{
  result = qword_1EBC7C5E0;
  if (!qword_1EBC7C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C5E0);
  }

  return result;
}

unint64_t sub_1BBB22FF8()
{
  result = qword_1EBC7C5E8;
  if (!qword_1EBC7C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C5E8);
  }

  return result;
}

unint64_t sub_1BBB2304C()
{
  result = qword_1EBC7C5F0;
  if (!qword_1EBC7C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C5F0);
  }

  return result;
}

unint64_t sub_1BBB230A0()
{
  result = qword_1EBC7C5F8;
  if (!qword_1EBC7C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C5F8);
  }

  return result;
}

unint64_t sub_1BBB230F4()
{
  result = qword_1EBC7C600;
  if (!qword_1EBC7C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C600);
  }

  return result;
}

unint64_t sub_1BBB23148()
{
  result = qword_1EBC7C650;
  if (!qword_1EBC7C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C650);
  }

  return result;
}

unint64_t sub_1BBB2319C()
{
  result = qword_1EBC7C658;
  if (!qword_1EBC7C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C658);
  }

  return result;
}

unint64_t sub_1BBB231F0()
{
  result = qword_1EBC7C660;
  if (!qword_1EBC7C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C660);
  }

  return result;
}

unint64_t sub_1BBB23244()
{
  result = qword_1EBC7C668;
  if (!qword_1EBC7C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C668);
  }

  return result;
}

unint64_t sub_1BBB23298()
{
  result = qword_1EBC7C698;
  if (!qword_1EBC7C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C698);
  }

  return result;
}

unint64_t sub_1BBB232EC()
{
  result = qword_1EBC7C6B0;
  if (!qword_1EBC7C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6B0);
  }

  return result;
}

unint64_t sub_1BBB23340()
{
  result = qword_1EBC7C6B8;
  if (!qword_1EBC7C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6B8);
  }

  return result;
}

unint64_t sub_1BBB23394()
{
  result = qword_1EBC7C6C0;
  if (!qword_1EBC7C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6C0);
  }

  return result;
}

unint64_t sub_1BBB233E8()
{
  result = qword_1EBC7C6D0;
  if (!qword_1EBC7C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6D0);
  }

  return result;
}

unint64_t sub_1BBB23440()
{
  result = qword_1EBC7C6D8;
  if (!qword_1EBC7C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6D8);
  }

  return result;
}

unint64_t sub_1BBB23498()
{
  result = qword_1EBC7C6E0;
  if (!qword_1EBC7C6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6E0);
  }

  return result;
}

unint64_t sub_1BBB234F0()
{
  result = qword_1EBC7C6E8;
  if (!qword_1EBC7C6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6E8);
  }

  return result;
}

unint64_t sub_1BBB23548()
{
  result = qword_1EBC7C6F0;
  if (!qword_1EBC7C6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6F0);
  }

  return result;
}

unint64_t sub_1BBB235A0()
{
  result = qword_1EBC7C6F8;
  if (!qword_1EBC7C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C6F8);
  }

  return result;
}

unint64_t sub_1BBB235F8()
{
  result = qword_1EBC7C700;
  if (!qword_1EBC7C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C700);
  }

  return result;
}

unint64_t sub_1BBB23650()
{
  result = qword_1EBC7C708;
  if (!qword_1EBC7C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C708);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BBB236D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntelligenceCollectionRequest.CommandOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

unint64_t sub_1BBB23934()
{
  result = qword_1EBC7C710;
  if (!qword_1EBC7C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C710);
  }

  return result;
}

unint64_t sub_1BBB2398C()
{
  result = qword_1EBC7C718;
  if (!qword_1EBC7C718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C718);
  }

  return result;
}

unint64_t sub_1BBB239E4()
{
  result = qword_1EBC7C720;
  if (!qword_1EBC7C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C720);
  }

  return result;
}

unint64_t sub_1BBB23A3C()
{
  result = qword_1EBC7C728;
  if (!qword_1EBC7C728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C728);
  }

  return result;
}

unint64_t sub_1BBB23A94()
{
  result = qword_1EBC7C730;
  if (!qword_1EBC7C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C730);
  }

  return result;
}

unint64_t sub_1BBB23AEC()
{
  result = qword_1EBC7C738;
  if (!qword_1EBC7C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C738);
  }

  return result;
}

unint64_t sub_1BBB23B44()
{
  result = qword_1EBC7C740;
  if (!qword_1EBC7C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C740);
  }

  return result;
}

unint64_t sub_1BBB23B9C()
{
  result = qword_1ED6BE540;
  if (!qword_1ED6BE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE540);
  }

  return result;
}

unint64_t sub_1BBB23BF4()
{
  result = qword_1ED6BE548;
  if (!qword_1ED6BE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE548);
  }

  return result;
}

unint64_t sub_1BBB23C4C()
{
  result = qword_1EBC7C748;
  if (!qword_1EBC7C748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C748);
  }

  return result;
}

unint64_t sub_1BBB23CA4()
{
  result = qword_1EBC7C750;
  if (!qword_1EBC7C750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C750);
  }

  return result;
}

unint64_t sub_1BBB23CFC()
{
  result = qword_1EBC7C758;
  if (!qword_1EBC7C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C758);
  }

  return result;
}

unint64_t sub_1BBB23D54()
{
  result = qword_1EBC7C760;
  if (!qword_1EBC7C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C760);
  }

  return result;
}

unint64_t sub_1BBB23DAC()
{
  result = qword_1EBC7C768;
  if (!qword_1EBC7C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C768);
  }

  return result;
}

unint64_t sub_1BBB23E04()
{
  result = qword_1EBC7C770;
  if (!qword_1EBC7C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C770);
  }

  return result;
}

unint64_t sub_1BBB23E5C()
{
  result = qword_1EBC7C778;
  if (!qword_1EBC7C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C778);
  }

  return result;
}

unint64_t sub_1BBB23EB4()
{
  result = qword_1EBC7C780;
  if (!qword_1EBC7C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C780);
  }

  return result;
}

unint64_t sub_1BBB23F0C()
{
  result = qword_1EBC7C788;
  if (!qword_1EBC7C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C788);
  }

  return result;
}

unint64_t sub_1BBB23F64()
{
  result = qword_1EBC7C790;
  if (!qword_1EBC7C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C790);
  }

  return result;
}

unint64_t sub_1BBB23FBC()
{
  result = qword_1EBC7C798;
  if (!qword_1EBC7C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C798);
  }

  return result;
}

unint64_t sub_1BBB24014()
{
  result = qword_1EBC7C7A0;
  if (!qword_1EBC7C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7A0);
  }

  return result;
}

unint64_t sub_1BBB2406C()
{
  result = qword_1EBC7C7A8;
  if (!qword_1EBC7C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7A8);
  }

  return result;
}

unint64_t sub_1BBB240C4()
{
  result = qword_1EBC7C7B0;
  if (!qword_1EBC7C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7B0);
  }

  return result;
}

unint64_t sub_1BBB2411C()
{
  result = qword_1EBC7C7B8;
  if (!qword_1EBC7C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7B8);
  }

  return result;
}

unint64_t sub_1BBB24174()
{
  result = qword_1EBC7C7C0;
  if (!qword_1EBC7C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7C0);
  }

  return result;
}

unint64_t sub_1BBB241CC()
{
  result = qword_1EBC7C7C8;
  if (!qword_1EBC7C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7C8);
  }

  return result;
}

unint64_t sub_1BBB24224()
{
  result = qword_1EBC7C7D0;
  if (!qword_1EBC7C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7D0);
  }

  return result;
}

unint64_t sub_1BBB2427C()
{
  result = qword_1EBC7C7D8;
  if (!qword_1EBC7C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7D8);
  }

  return result;
}

unint64_t sub_1BBB242D4()
{
  result = qword_1EBC7C7E0;
  if (!qword_1EBC7C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7E0);
  }

  return result;
}

unint64_t sub_1BBB2432C()
{
  result = qword_1ED6BE580;
  if (!qword_1ED6BE580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE580);
  }

  return result;
}

unint64_t sub_1BBB24384()
{
  result = qword_1ED6BE588;
  if (!qword_1ED6BE588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE588);
  }

  return result;
}

unint64_t sub_1BBB243DC()
{
  result = qword_1ED6BE568;
  if (!qword_1ED6BE568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE568);
  }

  return result;
}

unint64_t sub_1BBB24434()
{
  result = qword_1ED6BE570;
  if (!qword_1ED6BE570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE570);
  }

  return result;
}

unint64_t sub_1BBB2448C()
{
  result = qword_1ED6BE590;
  if (!qword_1ED6BE590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE590);
  }

  return result;
}

unint64_t sub_1BBB244E4()
{
  result = qword_1ED6BE598;
  if (!qword_1ED6BE598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE598);
  }

  return result;
}

unint64_t sub_1BBB2453C()
{
  result = qword_1ED6BE5A0;
  if (!qword_1ED6BE5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5A0);
  }

  return result;
}

unint64_t sub_1BBB24594()
{
  result = qword_1ED6BE5A8;
  if (!qword_1ED6BE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6BE5A8);
  }

  return result;
}

unint64_t sub_1BBB245EC()
{
  result = qword_1EBC7C7E8;
  if (!qword_1EBC7C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7E8);
  }

  return result;
}

unint64_t sub_1BBB24644()
{
  result = qword_1EBC7C7F0;
  if (!qword_1EBC7C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7F0);
  }

  return result;
}

unint64_t sub_1BBB2469C()
{
  result = qword_1EBC7C7F8;
  if (!qword_1EBC7C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C7F8);
  }

  return result;
}

unint64_t sub_1BBB246F4()
{
  result = qword_1EBC7C800;
  if (!qword_1EBC7C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C800);
  }

  return result;
}

uint64_t sub_1BBB24748(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001BBB9C580 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001BBB9C5A0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F746C7561666564 && a2 == 0xEE00736E6F697470)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BBB842F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BBB24878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C6C6F43746F6ELL && a2 == 0xEC00000064657463;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657463656C6C6F63 && a2 == 0xE900000000000064 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657463656C6C6F63 && a2 == 0xEF656C6946734164 || (sub_1BBB842F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001BBB9C5C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1BBB249F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C6261736964 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BBB842F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BBB24B18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001BBB9C5E0 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BBB9C600 == a2 || (sub_1BBB842F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x556564756C636E69 && a2 == 0xEF64656C7469746ELL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1BBB842F8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BBB24C48()
{
  v0 = sub_1BBB84348();

  if (v0 >= 0x1A)
  {
    return 26;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB24C9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1BBB83658();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BBB24D0C(void *a1, void *a2)
{
  swift_beginAccess();
  v5 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  swift_beginAccess();
  if (v5 != a2[2] || (v7 = a2[3], v8 = *(v4 + 16), v8 != *(v7 + 16)))
  {
LABEL_15:
    v31 = 0;
    return v31 & 1;
  }

  v32 = a2[4];
  v33 = v6;
  if (!v8)
  {
    goto LABEL_12;
  }

  if (v4 == v7)
  {
LABEL_13:
    v31 = sub_1BBAFF5D8(v33, v32);

    return v31 & 1;
  }

  if (!*(v4 + 16))
  {
LABEL_11:
    __break(1u);
LABEL_12:

    goto LABEL_13;
  }

  v10 = 1 - v8;
  v11 = 4;
  while ((v11 - 4) < *(v7 + 16))
  {
    v12 = *(v4 + 8 * v11);
    v13 = *(v7 + 8 * v11);
    swift_beginAccess();
    v14 = v12[3];
    v15 = v12[4];
    v16 = v12[5];
    *(v46 + 9) = *(v12 + 89);
    v17 = *(v46 + 9);
    v45[3] = v15;
    v46[0] = v16;
    v18 = v12[1];
    v45[1] = v12[2];
    v45[2] = v14;
    v45[0] = v18;
    *(v44 + 9) = v17;
    v19 = v12[4];
    v42 = v12[3];
    v43 = v19;
    v44[0] = v12[5];
    v20 = v12[2];
    v40 = v12[1];
    v41 = v20;
    swift_beginAccess();
    v21 = v13[3];
    v22 = v13[4];
    v23 = v13[5];
    *(v48 + 9) = *(v13 + 89);
    v24 = *(v48 + 9);
    v47[3] = v22;
    v48[0] = v23;
    v25 = v13[1];
    v47[1] = v13[2];
    v47[2] = v21;
    v47[0] = v25;
    *(v39 + 9) = v24;
    v26 = v13[3];
    v27 = v13[5];
    v38 = v13[4];
    v39[0] = v27;
    v28 = v13[2];
    v35 = v13[1];
    v36 = v28;
    v37 = v26;

    sub_1BBB2697C(v45, v34);
    sub_1BBB2697C(v47, v34);
    v29 = sub_1BBB28918(&v40, &v35);
    v49[2] = v37;
    v49[3] = v38;
    v50[0] = v39[0];
    *(v50 + 9) = *(v39 + 9);
    v49[0] = v35;
    v49[1] = v36;
    sub_1BBB269D8(v49);
    v51[2] = v42;
    v51[3] = v43;
    v52[0] = v44[0];
    *(v52 + 9) = *(v44 + 9);
    v51[0] = v40;
    v51[1] = v41;
    sub_1BBB269D8(v51);

    if ((v29 & 1) == 0)
    {

      goto LABEL_15;
    }

    if (v10 + v11 == 4)
    {
      goto LABEL_13;
    }

    v30 = v11 - 3;
    ++v11;
    if (v30 >= *(v4 + 16))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBB24FF4(uint64_t a1, uint64_t a2)
{
  v4 = _s14CollectionItemV7StorageVMa();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = *(*a1 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(a1 + v10, v9);
  v11 = *(*a2 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(a2 + v11, v7);
  if ((sub_1BBB83528() & 1) != 0 && *&v9[*(v4 + 20)] == *&v7[*(v4 + 20)])
  {
    v12 = v9[*(v4 + 24)];
    sub_1BBB26A2C(v9);
    v13 = v7[*(v4 + 24)];
    sub_1BBB26A2C(v7);
    v14 = v12 ^ v13 ^ 1;
  }

  else
  {
    sub_1BBB26A2C(v7);
    sub_1BBB26A2C(v9);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t IntelligenceElement.CollectionItem.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = _s14CollectionItemV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(*v6 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v6 + v7, v5);
  v8 = sub_1BBB83548();
  return (*(*(v8 - 8) + 32))(a1, v5, v8);
}

uint64_t sub_1BBB25254@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _s14CollectionItemV7StorageVMa();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(*v7 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v7 + v8, v6);
  v9 = sub_1BBB83548();
  return (*(*(v9 - 8) + 32))(a2, v6, v9);
}

uint64_t sub_1BBB25340(uint64_t a1)
{
  v2 = sub_1BBB83548();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return IntelligenceElement.CollectionItem.indexPath.setter(v5);
}

uint64_t IntelligenceElement.CollectionItem.indexPath.setter(uint64_t a1)
{
  v3 = _s14CollectionItemV7StorageVMa();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  v7 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v6 + v7, v5);
  v8 = sub_1BBB83548();
  (*(*(v8 - 8) + 40))(v5, a1, v8);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBB25598(v5, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C808);
    v12 = swift_allocObject();
    sub_1BBAB8664(v5, v12 + *(*v12 + 88));

    *v1 = v12;
  }

  return result;
}

uint64_t sub_1BBB25598(uint64_t a1, uint64_t a2)
{
  v4 = _s14CollectionItemV7StorageVMa();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*IntelligenceElement.CollectionItem.indexPath.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(_s14CollectionItemV7StorageVMa() - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[4] = v7;
  v9 = sub_1BBB83548();
  v5[5] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[6] = v10;
  v12 = *(v10 + 64);
  v5[7] = v12;
  if (v3)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[8] = v13;
  v15 = *v1;
  v16 = *(*v15 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v15 + v16, v8);
  (*(v11 + 32))(v14, v8, v9);
  return sub_1BBB25780;
}

void sub_1BBB25780(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    v4 = v2[6];
    v6 = v2[4];
    v5 = v2[5];
    v7 = MEMORY[0x1EEE9AC00](a1);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v9, v3, v5, v7);
    IntelligenceElement.CollectionItem.indexPath.setter(v9);
    (*(v4 + 8))(v3, v5);
    free(v3);
    v10 = v6;
  }

  else
  {
    v11 = v2[4];
    IntelligenceElement.CollectionItem.indexPath.setter(*(*a1 + 64));
    free(v3);
    v10 = v11;
  }

  free(v10);
  free(v2);
}

uint64_t IntelligenceElement.CollectionItem.globalIndex.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s14CollectionItemV7StorageVMa() + 20));
}

uint64_t sub_1BBB258D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = _s14CollectionItemV7StorageVMa();
  *a2 = *(v3 + *(result + 20));
  return result;
}

uint64_t IntelligenceElement.CollectionItem.globalIndex.setter(uint64_t a1)
{
  v3 = _s14CollectionItemV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v7 + v8, v6);
  *&v6[*(v4 + 28)] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBB25598(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C808);
    v12 = swift_allocObject();
    sub_1BBAB8664(v6, v12 + *(*v12 + 88));

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.CollectionItem.globalIndex.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  *(v4 + 24) = *(v5 + *(_s14CollectionItemV7StorageVMa() + 20));
  return sub_1BBB25B58;
}

void sub_1BBB25B58(uint64_t a1)
{
  v1 = *a1;
  IntelligenceElement.CollectionItem.globalIndex.setter(*(*a1 + 24));

  free(v1);
}

uint64_t IntelligenceElement.CollectionItem.isSelected.getter()
{
  v1 = *v0 + *(**v0 + 88);
  swift_beginAccess();
  return *(v1 + *(_s14CollectionItemV7StorageVMa() + 24));
}

uint64_t sub_1BBB25BF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1 + *(**a1 + 88);
  swift_beginAccess();
  result = _s14CollectionItemV7StorageVMa();
  *a2 = *(v3 + *(result + 24));
  return result;
}

uint64_t IntelligenceElement.CollectionItem.isSelected.setter(char a1)
{
  v3 = _s14CollectionItemV7StorageVMa();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v8 = *(**v1 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v7 + v8, v6);
  v6[*(v4 + 32)] = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v9 = *v1;
    v10 = *(*v9 + 88);
    swift_beginAccess();
    sub_1BBB25598(v6, v9 + v10);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C808);
    v12 = swift_allocObject();
    sub_1BBAB8664(v6, v12 + *(*v12 + 88));

    *v1 = v12;
  }

  return result;
}

void (*IntelligenceElement.CollectionItem.isSelected.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1 + *(**v1 + 88);
  swift_beginAccess();
  *(v4 + 32) = *(v5 + *(_s14CollectionItemV7StorageVMa() + 24));
  return sub_1BBB25E78;
}

void sub_1BBB25E78(uint64_t a1)
{
  v1 = *a1;
  IntelligenceElement.CollectionItem.isSelected.setter(*(*a1 + 32));

  free(v1);
}

uint64_t IntelligenceElement.CollectionItem.init(indexPath:globalIndex:isSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = _s14CollectionItemV7StorageVMa();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BBB83548();
  (*(*(v12 - 8) + 32))(v11, a1, v12);
  *&v11[*(v9 + 28)] = a2;
  v11[*(v9 + 32)] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C808);
  v13 = swift_allocObject();
  result = sub_1BBAB8664(v11, v13 + *(*v13 + 88));
  *a4 = v13;
  return result;
}

uint64_t sub_1BBB25FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1BBB83528() & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v6 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1BBB26058(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E496C61626F6C67;
  v4 = 0xEB00000000786564;
  if (v2 != 1)
  {
    v3 = 0x7463656C65537369;
    v4 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7461507865646E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000068;
  }

  v7 = 0x6E496C61626F6C67;
  v8 = 0xEB00000000786564;
  if (*a2 != 1)
  {
    v7 = 0x7463656C65537369;
    v8 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7461507865646E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000068;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BBB842F8();
  }

  return v11 & 1;
}

uint64_t sub_1BBB26174()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB26228()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB262C8()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB26378@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB26930();
  *a1 = result;
  return result;
}

void sub_1BBB263A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000068;
  v4 = 0xEB00000000786564;
  v5 = 0x6E496C61626F6C67;
  if (v2 != 1)
  {
    v5 = 0x7463656C65537369;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461507865646E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BBB26418@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB26930();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB26440(uint64_t a1)
{
  v2 = sub_1BBAA0970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2647C(uint64_t a1)
{
  v2 = sub_1BBAA0970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.CollectionItem.description.getter()
{
  v1 = _s14CollectionItemV7StorageVMa();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v4 = *v0;
  strcpy(v35, "indexPath: ");
  HIDWORD(v35[1]) = -352321536;
  v5 = sub_1BBB83548();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v9 = v4 + *(*v4 + 88);
  swift_beginAccess();
  sub_1BBAA0A10(v9, v3);
  (*(v6 + 32))(v8, v3, v5);
  v10 = sub_1BBB125EC();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  MEMORY[0x1BFB16150](v10, v12);

  v13 = v35[0];
  v14 = v35[1];
  v15 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1BBA86A94((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[16 * v17];
  *(v18 + 4) = v13;
  *(v18 + 5) = v14;
  strcpy(v35, "globalIndex: ");
  HIWORD(v35[1]) = -4864;
  v34 = *(v9 + *(v1 + 20));
  v19 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v19);

  v20 = v35[0];
  v21 = v35[1];
  v23 = *(v15 + 2);
  v22 = *(v15 + 3);
  if (v23 >= v22 >> 1)
  {
    v15 = sub_1BBA86A94((v22 > 1), v23 + 1, 1, v15);
  }

  *(v15 + 2) = v23 + 1;
  v24 = &v15[16 * v23];
  *(v24 + 4) = v20;
  *(v24 + 5) = v21;
  if (*(v9 + *(v1 + 24)) == 1)
  {
    strcpy(v35, "isSelected: ");
    BYTE5(v35[1]) = 0;
    HIWORD(v35[1]) = -5120;
    MEMORY[0x1BFB16150](1702195828, 0xE400000000000000);
    v25 = v35[0];
    v26 = v35[1];
    v28 = *(v15 + 2);
    v27 = *(v15 + 3);
    if (v28 >= v27 >> 1)
    {
      v15 = sub_1BBA86A94((v27 > 1), v28 + 1, 1, v15);
    }

    *(v15 + 2) = v28 + 1;
    v29 = &v15[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v26;
  }

  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_1BBB84028();

  v35[0] = 0x697463656C6C6F43;
  v35[1] = 0xEF286D6574496E6FLL;
  v34 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v30 = sub_1BBB83938();
  v32 = v31;

  MEMORY[0x1BFB16150](v30, v32);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return v35[0];
}

unint64_t sub_1BBB268DC()
{
  result = qword_1EBC7C820;
  if (!qword_1EBC7C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C820);
  }

  return result;
}

uint64_t sub_1BBB26930()
{
  v0 = sub_1BBB84108();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB26A2C(uint64_t a1)
{
  v2 = _s14CollectionItemV7StorageVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IntelligenceElement.Table.Column.index.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 16);
}

uint64_t IntelligenceElement.Table.Column.index.setter(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v7 = *(v3 + 64);
  v8 = *(v3 + 80);
  *(v28 + 9) = *(v3 + 89);
  v27[3] = v7;
  v28[0] = v8;
  v27[1] = v5;
  v27[2] = v6;
  v27[0] = v4;
  v9 = *(v3 + 40);
  v29 = *(v3 + 24);
  v30 = v9;
  v10 = *(v3 + 56);
  v11 = *(v3 + 72);
  v12 = *(v3 + 88);
  v34 = *(v3 + 104);
  v32 = v11;
  v33 = v12;
  v31 = v10;
  sub_1BBB2697C(v27, v25);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v13 = *v1;
    swift_beginAccess();
    v14 = *(v13 + 16);
    v15 = *(v13 + 32);
    v16 = *(v13 + 48);
    v17 = *(v13 + 64);
    v18 = *(v13 + 80);
    *&v26[9] = *(v13 + 89);
    v25[3] = v17;
    *v26 = v18;
    v25[1] = v15;
    v25[2] = v16;
    v25[0] = v14;
    *(v13 + 16) = a1;
    *(v13 + 104) = v34;
    v19 = v29;
    *(v13 + 40) = v30;
    *(v13 + 24) = v19;
    v20 = v32;
    *(v13 + 56) = v31;
    *(v13 + 72) = v20;
    *(v13 + 88) = v33;
    return sub_1BBB269D8(v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
    v22 = swift_allocObject();
    v23 = v32;
    *(v22 + 56) = v31;
    *(v22 + 72) = v23;
    *(v22 + 88) = v33;
    v24 = v30;
    *(v22 + 24) = v29;
    *(v22 + 16) = a1;
    *(v22 + 104) = v34;
    *(v22 + 40) = v24;

    *v1 = v22;
  }

  return result;
}

void (*IntelligenceElement.Table.Column.index.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 24) = *(v5 + 16);
  return sub_1BBB26CD8;
}

void sub_1BBB26CD8(uint64_t a1)
{
  v1 = *a1;
  IntelligenceElement.Table.Column.index.setter(*(*a1 + 24));

  free(v1);
}

uint64_t IntelligenceElement.Table.Column.identifier.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

uint64_t IntelligenceElement.Table.Column.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 32);
  v29[0] = *(v5 + 16);
  v29[1] = v6;
  v7 = *(v5 + 48);
  v8 = *(v5 + 64);
  v9 = *(v5 + 80);
  *(v30 + 9) = *(v5 + 89);
  v29[3] = v8;
  v30[0] = v9;
  v29[2] = v7;
  v10 = *&v29[0];
  v11 = *(v5 + 40);
  v12 = *(v5 + 56);
  v13 = *(v5 + 72);
  v14 = *(v5 + 88);
  v35 = *(v5 + 104);
  v33 = v13;
  v34 = v14;
  v31 = v11;
  v32 = v12;
  sub_1BBB2697C(v29, v27);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v15 = *v2;
    swift_beginAccess();
    v16 = *(v15 + 16);
    v17 = *(v15 + 32);
    v18 = *(v15 + 48);
    v19 = *(v15 + 64);
    v20 = *(v15 + 80);
    *&v28[9] = *(v15 + 89);
    v27[3] = v19;
    *v28 = v20;
    v27[1] = v17;
    v27[2] = v18;
    v27[0] = v16;
    *(v15 + 16) = v10;
    *(v15 + 24) = a1;
    *(v15 + 32) = a2;
    v21 = v32;
    *(v15 + 40) = v31;
    *(v15 + 56) = v21;
    v22 = v34;
    *(v15 + 72) = v33;
    *(v15 + 104) = v35;
    *(v15 + 88) = v22;
    return sub_1BBB269D8(v27);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
    v24 = swift_allocObject();
    v25 = v31;
    *(v24 + 56) = v32;
    v26 = v34;
    *(v24 + 72) = v33;
    *(v24 + 88) = v26;
    *(v24 + 16) = v10;
    *(v24 + 24) = a1;
    *(v24 + 32) = a2;
    *(v24 + 104) = v35;
    *(v24 + 40) = v25;

    *v2 = v24;
  }

  return result;
}

void (*IntelligenceElement.Table.Column.identifier.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 32);
  *(v4 + 24) = *(v5 + 24);
  *(v4 + 32) = v6;

  return sub_1BBB26F88;
}

void sub_1BBB26F88(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    IntelligenceElement.Table.Column.identifier.setter(v3, v4);
  }

  else
  {
    IntelligenceElement.Table.Column.identifier.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

uint64_t IntelligenceElement.Table.Column.isSelected.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t IntelligenceElement.Table.Column.isSelected.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *(v29 + 9) = *(v3 + 89);
  v28[3] = v7;
  v29[0] = v8;
  v28[1] = v5;
  v28[2] = v6;
  v28[0] = v4;
  v9 = v3[1];
  v35 = *(v3 + 4);
  v10 = *(v3 + 41);
  v11 = *(v3 + 57);
  v12 = *(v3 + 73);
  v33 = *(v3 + 89);
  v34 = v9;
  v31 = v11;
  v32 = v12;
  v13 = a1 & 1;
  v30 = v10;
  sub_1BBB2697C(v28, v26);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v14 = *v1;
    swift_beginAccess();
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = v14[4];
    v19 = v14[5];
    *&v27[9] = *(v14 + 89);
    v26[3] = v18;
    *v27 = v19;
    v26[1] = v16;
    v26[2] = v17;
    v26[0] = v15;
    v14[1] = v34;
    *(v14 + 4) = v35;
    *(v14 + 40) = v13;
    v20 = v30;
    *(v14 + 57) = v31;
    *(v14 + 41) = v20;
    v21 = v32;
    *(v14 + 89) = v33;
    *(v14 + 73) = v21;
    return sub_1BBB269D8(v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
    v23 = swift_allocObject();
    *(v23 + 16) = v34;
    v24 = v31;
    *(v23 + 41) = v30;
    *(v23 + 57) = v24;
    v25 = v33;
    *(v23 + 73) = v32;
    *(v23 + 32) = v35;
    *(v23 + 40) = v13;
    *(v23 + 89) = v25;

    *v1 = v23;
  }

  return result;
}

void (*IntelligenceElement.Table.Column.isSelected.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 40);
  return sub_1BBB2724C;
}

void sub_1BBB2724C(uint64_t a1)
{
  v1 = *a1;
  IntelligenceElement.Table.Column.isSelected.setter(*(*a1 + 32));

  free(v1);
}

uint64_t IntelligenceElement.Table.Column.header.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v5 = v3[3];
  v6 = v3[4];
  *&v11[9] = *(v3 + 89);
  v4 = *&v11[9];
  v10[0] = v5;
  v10[1] = v6;
  *v11 = v3[5];
  v7 = *v11;
  a1[1] = v6;
  a1[2] = v7;
  *(a1 + 41) = v4;
  *a1 = v3[3];
  return sub_1BBA9EDF0(v10, v9);
}

uint64_t IntelligenceElement.Table.Column.header.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[4];
  v8 = v3[5];
  *(v33 + 9) = *(v3 + 89);
  v32[3] = v7;
  v33[0] = v8;
  v32[1] = v5;
  v32[2] = v6;
  v32[0] = v4;
  v9 = v3[2];
  v27 = v3[1];
  v28 = v9;
  v10 = v3[3];
  v11 = v3[4];
  *(v35 + 9) = *(v3 + 89);
  v12 = v3[5];
  v34[1] = v11;
  v35[0] = v12;
  v34[0] = v10;
  sub_1BBB2697C(v32, v25);
  sub_1BBA8BCC4(v34, &qword_1EBC7BAA8);
  v13 = a1[1];
  v29 = *a1;
  v30 = v13;
  v31[0] = a1[2];
  *(v31 + 9) = *(a1 + 41);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v14 = *v1;
    swift_beginAccess();
    v15 = v14[4];
    v25[2] = v14[3];
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[5];
    *&v26[9] = *(v14 + 89);
    v25[3] = v15;
    *v26 = v18;
    v25[0] = v16;
    v25[1] = v17;
    *(v14 + 89) = *(v31 + 9);
    v19 = v28;
    v14[1] = v27;
    v14[2] = v19;
    v20 = v31[0];
    v14[4] = v30;
    v14[5] = v20;
    v14[3] = v29;
    return sub_1BBB269D8(v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
    v22 = swift_allocObject();
    v23 = v30;
    v22[3] = v29;
    v22[4] = v23;
    v22[5] = v31[0];
    *(v22 + 89) = *(v31 + 9);
    v24 = v28;
    v22[1] = v27;
    v22[2] = v24;

    *v1 = v22;
  }

  return result;
}

void (*IntelligenceElement.Table.Column.header.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x160uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 344) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = v5[3];
  v7 = v5[4];
  v8 = v5[5];
  *(v4 + 41) = *(v5 + 89);
  v4[1] = v7;
  v4[2] = v8;
  *v4 = v6;
  memmove(v4 + 4, v5 + 3, 0x39uLL);
  sub_1BBA9EDF0(v4, (v4 + 8));
  return sub_1BBB27544;
}

void sub_1BBB27544(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    v2[12] = v2[4];
    v2[13] = v3;
    v5 = v2[4];
    v4 = v2[5];
    v2[14] = v2[6];
    *(v2 + 233) = *(v2 + 105);
    v7 = v5;
    v8 = v4;
    v9[0] = v2[6];
    *(v9 + 9) = *(v2 + 105);
    sub_1BBA9EDF0((v2 + 12), (v2 + 16));
    IntelligenceElement.Table.Column.header.setter(&v7);
    v6 = v2[5];
    v2[8] = v2[4];
    v2[9] = v6;
    v2[10] = v2[6];
    *(v2 + 169) = *(v2 + 105);
    sub_1BBA8BCC4((v2 + 8), &qword_1EBC7BAA8);
  }

  else
  {
    v7 = v2[4];
    v8 = v3;
    v9[0] = v2[6];
    *(v9 + 9) = *(v2 + 105);
    IntelligenceElement.Table.Column.header.setter(&v7);
  }

  free(v2);
}

__n128 IntelligenceElement.Table.Column.init(index:identifier:isSelected:header:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _OWORD *a5@<X4>, uint64_t *a6@<X8>)
{
  *&v13[7] = *a5;
  *&v13[23] = a5[1];
  *&v13[39] = a5[2];
  *&v13[48] = *(a5 + 41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 41) = *v13;
  *(v11 + 57) = *&v13[16];
  result = *&v13[32];
  *(v11 + 73) = *&v13[32];
  *(v11 + 89) = *&v13[48];
  *a6 = v11;
  return result;
}

char *IntelligenceElement.Table.Column.description.getter()
{
  v1 = *v0;
  strcpy(v19, "index: ");
  v19[1] = 0xE700000000000000;
  swift_beginAccess();
  v2 = sub_1BBB842D8();
  MEMORY[0x1BFB16150](v2);

  v3 = v19[0];
  v4 = sub_1BBA86A94(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_1BBA86A94((v5 > 1), v6 + 1, 1, v4);
  }

  *(v4 + 2) = v6 + 1;
  v7 = &v4[16 * v6];
  *(v7 + 4) = v3;
  *(v7 + 5) = 0xE700000000000000;
  v8 = *(v1 + 32);
  if (v8)
  {
    v9 = *(v1 + 24);

    sub_1BBB84028();

    strcpy(v19, "identifier: ");
    HIWORD(v19[1]) = -4864;
    MEMORY[0x1BFB16150](v9, v8);

    MEMORY[0x1BFB16150](34, 0xE100000000000000);
    v10 = v19[0];
    v11 = v19[1];
    v13 = *(v4 + 2);
    v12 = *(v4 + 3);
    if (v13 >= v12 >> 1)
    {
      v4 = sub_1BBA86A94((v12 > 1), v13 + 1, 1, v4);
    }

    *(v4 + 2) = v13 + 1;
    v14 = &v4[16 * v13];
    *(v14 + 4) = v10;
    *(v14 + 5) = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7B590);
  sub_1BBA86BA4();
  v15 = sub_1BBB83938();
  v17 = v16;

  MEMORY[0x1BFB16150](v15, v17);

  MEMORY[0x1BFB16150](41, 0xE100000000000000);
  return strcpy(v19, "Column(");
}

uint64_t sub_1BBB2791C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = *v4;
  swift_beginAccess();
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  *&v53[9] = *(v10 + 89);
  *v53 = *(v10 + 80);
  v52[0] = v11;
  v52[1] = v12;
  if (*&v53[8])
  {
    v13 = *(v10 + 64);
    v45[2] = *(v10 + 48);
    v45[3] = v13;
    v46 = *(v10 + 80);
    v47 = *&v53[8];
    v48 = *(v10 + 96);
    v49 = *(v10 + 104);

    sub_1BBA9EDF0(v52, v42);
    IntelligenceElement.recursiveMap<A>(_:transform:)(v50, a1, a2, a3);
    if (v5)
    {

      return sub_1BBA8BCC4(v52, &qword_1EBC7BAA8);
    }

    else
    {
      sub_1BBA8BCC4(v52, &qword_1EBC7BAA8);
      v15 = *(v10 + 48);
      v16 = *(v10 + 64);
      v17 = *(v10 + 80);
      *(v43 + 9) = *(v10 + 89);
      v42[3] = v16;
      v43[0] = v17;
      v18 = *(v10 + 16);
      v42[1] = *(v10 + 32);
      v42[2] = v15;
      v42[0] = v18;
      v19 = *(v10 + 32);
      v37 = *(v10 + 16);
      v38 = v19;
      v20 = *(v10 + 48);
      v21 = *(v10 + 64);
      *(v45 + 9) = *(v10 + 89);
      v22 = *(v10 + 80);
      v44[1] = v21;
      v45[0] = v22;
      v44[0] = v20;
      sub_1BBB2697C(v42, v35);
      sub_1BBA8BCC4(v44, &qword_1EBC7BAA8);
      v39 = v50[0];
      v40 = v50[1];
      v41[0] = v51[0];
      *(v41 + 9) = *(v51 + 9);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        swift_beginAccess();
        v23 = *(v10 + 16);
        v24 = *(v10 + 32);
        v25 = *(v10 + 48);
        v26 = *(v10 + 64);
        v27 = *(v10 + 80);
        *&v36[9] = *(v10 + 89);
        v35[3] = v26;
        *v36 = v27;
        v35[1] = v24;
        v35[2] = v25;
        v35[0] = v23;
        *(v10 + 89) = *(v41 + 9);
        v28 = v38;
        v29 = v39;
        *(v10 + 16) = v37;
        *(v10 + 32) = v28;
        v30 = v41[0];
        *(v10 + 64) = v40;
        *(v10 + 80) = v30;
        *(v10 + 48) = v29;
        result = sub_1BBB269D8(v35);
        *a4 = v10;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
        v31 = swift_allocObject();
        v32 = v40;
        v33 = v41[0];
        v34 = v38;
        v31[3] = v39;
        v31[4] = v32;
        v31[5] = v33;
        *(v31 + 89) = *(v41 + 9);
        v31[1] = v37;
        v31[2] = v34;

        *a4 = v31;
      }
    }
  }

  else
  {

    *a4 = v10;
  }

  return result;
}

uint64_t sub_1BBB27BB0()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB27C70()
{
  sub_1BBB83AC8();
}

uint64_t sub_1BBB27D1C()
{
  sub_1BBB843D8();
  sub_1BBB83AC8();

  return sub_1BBB84438();
}

uint64_t sub_1BBB27DD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB28C6C();
  *a1 = result;
  return result;
}

void sub_1BBB27E08(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x7865646E69;
  v4 = 0x7463656C65537369;
  v5 = 0xE600000000000000;
  if (*v1 == 2)
  {
    v5 = 0xEA00000000006465;
  }

  else
  {
    v4 = 0x726564616568;
  }

  if (*v1)
  {
    v3 = 0x696669746E656469;
    v2 = 0xEA00000000007265;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1BBB27E84()
{
  v1 = 0x7865646E69;
  v2 = 0x7463656C65537369;
  if (*v0 != 2)
  {
    v2 = 0x726564616568;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_1BBB27EFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BBB28C6C();
  *a1 = result;
  return result;
}

uint64_t sub_1BBB27F24(uint64_t a1)
{
  v2 = sub_1BBB286A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB27F60(uint64_t a1)
{
  v2 = sub_1BBB286A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceElement.Table.Column.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C830);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB286A0();
  sub_1BBB84478();
  swift_beginAccess();
  LOBYTE(v19[0]) = 0;
  sub_1BBB84278();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  LOBYTE(v19[0]) = 1;

  sub_1BBB84218();

  if (*(v8 + 40) == 1)
  {
    LOBYTE(v19[0]) = 2;
    sub_1BBB84258();
  }

  v10 = *(v8 + 48);
  v11 = *(v8 + 64);
  *(v20 + 9) = *(v8 + 89);
  v12 = *(v8 + 80);
  v19[1] = v11;
  v20[0] = v12;
  v19[0] = v10;
  v16 = v10;
  v17 = v11;
  v18[0] = v12;
  *(v18 + 9) = *(v20 + 9);
  v15 = 3;
  sub_1BBA9EDF0(v19, v13);
  sub_1BBAB5674();
  sub_1BBB84238();
  v13[0] = v16;
  v13[1] = v17;
  *v14 = v18[0];
  *&v14[9] = *(v18 + 9);
  sub_1BBA8BCC4(v13, &qword_1EBC7BAA8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t IntelligenceElement.Table.Column.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB286A0();
  sub_1BBB84458();
  if (!v2)
  {
    LOBYTE(v22) = 0;
    v9 = sub_1BBB841A8();
    LOBYTE(v22) = 1;
    v10 = sub_1BBB84138();
    v13 = v12;
    v20 = v10;
    LOBYTE(v22) = 2;
    v25 = sub_1BBB84148();
    v26 = 3;
    sub_1BBAB80F0();
    sub_1BBB84178();
    (*(v6 + 8))(v8, v5);
    v14 = v25 & 1;
    *&v21[7] = v22;
    *&v21[23] = v23;
    *&v21[39] = v24[0];
    *&v21[48] = *(v24 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C828);
    v15 = swift_allocObject();
    v16 = v20;
    *(v15 + 16) = v9;
    *(v15 + 24) = v16;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    v17 = *&v21[16];
    *(v15 + 41) = *v21;
    *(v15 + 57) = v17;
    v18 = *&v21[48];
    *(v15 + 73) = *&v21[32];
    *(v15 + 89) = v18;
    *a2 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s21UIIntelligenceSupport19IntelligenceElementV5TableV6ColumnV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  *(v30 + 9) = *(v2 + 89);
  v7 = *(v30 + 9);
  v29[3] = v5;
  v30[0] = v6;
  v8 = v2[1];
  v29[1] = v2[2];
  v29[2] = v4;
  v29[0] = v8;
  *(v28 + 9) = v7;
  v9 = v2[4];
  v26 = v2[3];
  v27 = v9;
  v28[0] = v2[5];
  v10 = v2[2];
  v24 = v2[1];
  v25 = v10;
  swift_beginAccess();
  v11 = v3[3];
  v12 = v3[4];
  v13 = v3[5];
  *(v32 + 9) = *(v3 + 89);
  v14 = *(v32 + 9);
  v31[3] = v12;
  v32[0] = v13;
  v15 = v3[1];
  v31[1] = v3[2];
  v31[2] = v11;
  v31[0] = v15;
  *&v23[9] = v14;
  v16 = v3[4];
  v21 = v3[3];
  v22 = v16;
  *v23 = v3[5];
  v17 = v3[2];
  v19 = v3[1];
  v20 = v17;
  sub_1BBB2697C(v29, v35);
  sub_1BBB2697C(v31, v35);
  LOBYTE(v3) = sub_1BBB28918(&v24, &v19);
  v33[2] = v21;
  v33[3] = v22;
  v34[0] = *v23;
  *(v34 + 9) = *&v23[9];
  v33[0] = v19;
  v33[1] = v20;
  sub_1BBB269D8(v33);
  v35[2] = v26;
  v35[3] = v27;
  v36[0] = v28[0];
  *(v36 + 9) = *(v28 + 9);
  v35[0] = v24;
  v35[1] = v25;
  sub_1BBB269D8(v35);
  return v3 & 1;
}

unint64_t sub_1BBB286A0()
{
  result = qword_1EBC7C838;
  if (!qword_1EBC7C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C838);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1BBB28738(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1BBB28794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1BBB28814()
{
  result = qword_1EBC7C848;
  if (!qword_1EBC7C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C848);
  }

  return result;
}

unint64_t sub_1BBB2886C()
{
  result = qword_1EBC7C850;
  if (!qword_1EBC7C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C850);
  }

  return result;
}

unint64_t sub_1BBB288C4()
{
  result = qword_1EBC7C858;
  if (!qword_1EBC7C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C858);
  }

  return result;
}

uint64_t sub_1BBB28918(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 3);
  v51[0] = *(a1 + 2);
  v51[1] = v6;
  v52[0] = *(a1 + 4);
  *(v52 + 9) = *(a1 + 73);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = *(a2 + 24);
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  v13 = *(a2 + 4);
  *(v54 + 9) = *(a2 + 73);
  v53[1] = v12;
  v54[0] = v13;
  v53[0] = v11;
  if (v3 != v8)
  {
    goto LABEL_20;
  }

  if (v4)
  {
    if (!v9)
    {
      goto LABEL_20;
    }

    if (v2 == v7 && v4 == v9)
    {
      if (v5 != v10)
      {
        goto LABEL_20;
      }

      goto LABEL_13;
    }

    v15 = a2;
    v16 = a1;
    v14 = 0;
    if (sub_1BBB842F8())
    {
      a1 = v16;
      a2 = v15;
      if (((v5 ^ v10) & 1) == 0)
      {
LABEL_13:
        v17 = *(&v52[0] + 1);
        v18 = *(a2 + 3);
        *&v50[7] = *(a2 + 2);
        *&v50[23] = v18;
        *&v50[39] = a2[8];
        v19 = *(&v54[0] + 1);
        if (*(&v52[0] + 1))
        {
          v20 = a1[8];
          v21 = *(a1 + 3);
          v42 = *(a1 + 2);
          v43 = v21;
          *v44 = v20;
          *&v44[8] = *(&v52[0] + 1);
          *&v44[16] = a1[10];
          v22 = a1;
          v44[24] = *(a1 + 88);
          v39 = v42;
          v40 = v21;
          *(v41 + 9) = *&v44[9];
          v41[0] = *v44;
          if (*(&v54[0] + 1))
          {
            v23 = *(a2 + 3);
            v36 = *(a2 + 2);
            v37 = v23;
            v24 = a2[8];
            v25 = a2[10];
            *&v38[8] = *(&v54[0] + 1);
            *&v38[16] = v25;
            v38[24] = *(a2 + 88);
            *v38 = v24;
            sub_1BBA9EDF0(v51, v34);
            sub_1BBA9EDF0(v53, v34);
            sub_1BBA9EDF0(&v42, v34);
            v14 = static IntelligenceElement.== infix(_:_:)(&v39, &v36);
            v32[0] = v36;
            v32[1] = v37;
            v33[0] = *v38;
            *(v33 + 9) = *&v38[9];
            sub_1BBA9E174(v32);
            v34[0] = v39;
            v34[1] = v40;
            v35[0] = v41[0];
            *(v35 + 9) = *(v41 + 9);
            sub_1BBA9E174(v34);
            v26 = *(v22 + 3);
            v36 = *(v22 + 2);
            v37 = v26;
            *v38 = v22[8];
            *&v38[8] = v17;
            *&v38[16] = v22[10];
            v38[24] = *(v22 + 88);
            sub_1BBA8BCC4(&v36, &qword_1EBC7BAA8);
            return v14 & 1;
          }

          v27 = a2;
          v36 = v42;
          v37 = v43;
          *v38 = *v44;
          *&v38[9] = *&v44[9];
          sub_1BBA9EDF0(v51, v34);
          sub_1BBA9EDF0(v53, v34);
          sub_1BBA9EDF0(&v42, v34);
          sub_1BBA9E174(&v36);
        }

        else
        {
          if (!*(&v54[0] + 1))
          {
            v31 = *(a1 + 3);
            v42 = *(a1 + 2);
            v43 = v31;
            *v44 = a1[8];
            *&v44[16] = a1[10];
            v44[24] = *(a1 + 88);
            sub_1BBA9EDF0(v51, &v39);
            sub_1BBA9EDF0(v53, &v39);
            sub_1BBA8BCC4(&v42, &qword_1EBC7BAA8);
            v14 = 1;
            return v14 & 1;
          }

          v27 = a2;
          v22 = a1;
          sub_1BBA9EDF0(v51, &v42);
          sub_1BBA9EDF0(v53, &v42);
        }

        v28 = *(v22 + 3);
        v42 = *(v22 + 2);
        v43 = v28;
        v45 = *v50;
        *v44 = v22[8];
        *&v44[8] = v17;
        *&v44[16] = v22[10];
        v44[24] = *(v22 + 88);
        *v46 = *&v50[16];
        *&v46[15] = *&v50[31];
        v49 = *(v27 + 88);
        v29 = v27[10];
        v47 = v19;
        v48 = v29;
        sub_1BBA8BCC4(&v42, &qword_1EBC7BB50);
LABEL_20:
        v14 = 0;
      }
    }
  }

  else
  {
    v14 = 0;
    if (!v9 && ((v5 ^ v10) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  return v14 & 1;
}

uint64_t sub_1BBB28C6C()
{
  v0 = sub_1BBB84108();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1BBB28CC8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x1E69E9840];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB84468();
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v9 = sub_1BBB28DDC(&v13, v17);
  v11 = v10;
  v13 = v9;
  v14 = v10;
  __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  sub_1BBA8845C();
  sub_1BBB84328();
  sub_1BBA885E8(v9, v11);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_1BBB28DDC(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF0];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1BBB29160(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = sub_1BBB2929C(v3, v4);
    }

    else
    {
      v6 = sub_1BBB29218(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

void *sub_1BBB28E98@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1BBB29318(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1BBB28F00()
{
  sub_1BBB843D8();
  sub_1BBB843E8();
  return sub_1BBB84438();
}

uint64_t sub_1BBB28FF0()
{
  sub_1BBB843D8();
  sub_1BBB843E8();
  return sub_1BBB84438();
}

BOOL sub_1BBB2906C(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v2 = *(a2 + 16);
  return *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && v7 == v2 && *(&v7 + 1) == *(&v2 + 1);
}

unint64_t sub_1BBB290EC()
{
  result = qword_1EBC7C860;
  if (!qword_1EBC7C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C860);
  }

  return result;
}

unint64_t sub_1BBB29140(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BBB29160(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

uint64_t sub_1BBB29218(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1BBB82FA8();
  swift_allocObject();
  result = sub_1BBB82F48();
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

uint64_t sub_1BBB2929C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1BBB82FA8();
  swift_allocObject();
  result = sub_1BBB82F48();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BBB83448();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

void *sub_1BBB29318(void *a1)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB84448();
  if (v1)
  {
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1BBAAB454();
  sub_1BBB84308();
  v4 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_22;
    }

    v6 = *(v14 + 16);
    v5 = *(v14 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 != 32)
      {
        goto LABEL_22;
      }

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(v14), v14))
    {
      if (HIDWORD(v14) - v14 == 32)
      {
        goto LABEL_12;
      }

LABEL_22:
      v3 = *MEMORY[0x1E696A250];
      [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:0];
      swift_willThrow();
      sub_1BBA885E8(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_23:
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v3;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (BYTE6(v15) != 32)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_1BBB2955C();
  v9 = sub_1BBB82F28();
  if (v4 != 2)
  {
    if (v4 == 1)
    {
      LODWORD(v10) = HIDWORD(v14) - v14;
      if (!__OFSUB__(HIDWORD(v14), v14))
      {
        v10 = v10;
        goto LABEL_20;
      }

LABEL_27:
      __break(1u);
    }

    goto LABEL_19;
  }

  v12 = *(v14 + 16);
  v11 = *(v14 + 24);
  v7 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v7)
  {
    __break(1u);
LABEL_19:
    v10 = BYTE6(v15);
  }

LABEL_20:
  if (v9 != v10)
  {
    goto LABEL_22;
  }

  sub_1BBA885E8(v14, v15);
  v3 = 0;
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_1BBB2955C()
{
  result = qword_1EBC7C868;
  if (!qword_1EBC7C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C868);
  }

  return result;
}

uint64_t static IntelligenceSnapshotConfiguration.SnapshotTarget.layer(contextID:layerID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  return result;
}

uint64_t static IntelligenceSnapshotConfiguration.SnapshotTarget.contextList(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
}

void static IntelligenceSnapshotConfiguration.SnapshotTarget.screen.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 2;
}

__n128 IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v2;
  v3 = *(v1 + 120);
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v3;
  v4 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v4;
  result = *(v1 + 40);
  v6 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 72) = *(a1 + 64);
  *(v1 + 88) = v2;
  v3 = *(a1 + 112);
  *(v1 + 104) = *(a1 + 96);
  *(v1 + 120) = v3;
  v4 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 40) = result;
  *(v1 + 56) = v6;
  return result;
}

__n128 (*IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.transform.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 128) = v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 56);
  *(v3 + 32) = *(v1 + 40);
  *(v3 + 48) = v6;
  *v3 = v4;
  *(v3 + 16) = v5;
  v7 = *(v1 + 72);
  v8 = *(v1 + 88);
  v9 = *(v1 + 120);
  *(v3 + 96) = *(v1 + 104);
  *(v3 + 112) = v9;
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  return sub_1BBB29710;
}

__n128 sub_1BBB29710(void **a1)
{
  v1 = *a1;
  v2 = v1[16];
  v3 = *(v1 + 2);
  v4 = *(v1 + 3);
  v5 = *(v1 + 1);
  *(v2 + 8) = *v1;
  *(v2 + 56) = v4;
  *(v2 + 40) = v3;
  *(v2 + 24) = v5;
  v6 = *(v1 + 6);
  v7 = *(v1 + 7);
  v8 = *(v1 + 5);
  *(v2 + 72) = *(v1 + 4);
  *(v2 + 120) = v7;
  *(v2 + 104) = v6;
  *(v2 + 88) = v8;
  free(v1);
  return result;
}

__n128 IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.init(contextID:transform:)@<Q0>(int a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *&v4[20] = a2[1];
  *&v4[36] = a2[2];
  *&v4[4] = *a2;
  *&v4[100] = a2[6];
  *&v4[116] = a2[7];
  *&v4[68] = a2[4];
  *&v4[84] = a2[5];
  *&v4[52] = a2[3];
  *a3 = a1;
  *(a3 + 4) = *v4;
  *(a3 + 68) = *&v4[64];
  *(a3 + 52) = *&v4[48];
  *(a3 + 36) = *&v4[32];
  *(a3 + 20) = *&v4[16];
  result = *&v4[96];
  *(a3 + 132) = *&v4[128];
  *(a3 + 116) = *&v4[112];
  *(a3 + 100) = *&v4[96];
  *(a3 + 84) = *&v4[80];
  return result;
}

BOOL static IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v4 = *(a1 + 88);
  *&a.m31 = *(a1 + 72);
  *&a.m33 = v4;
  v5 = *(a1 + 120);
  *&a.m41 = *(a1 + 104);
  *&a.m43 = v5;
  v6 = *(a1 + 24);
  *&a.m11 = *(a1 + 8);
  *&a.m13 = v6;
  v7 = *(a1 + 56);
  *&a.m21 = *(a1 + 40);
  *&a.m23 = v7;
  v8 = *(a2 + 88);
  *&v13.m31 = *(a2 + 72);
  *&v13.m33 = v8;
  v9 = *(a2 + 120);
  *&v13.m41 = *(a2 + 104);
  *&v13.m43 = v9;
  v10 = *(a2 + 24);
  *&v13.m11 = *(a2 + 8);
  *&v13.m13 = v10;
  v11 = *(a2 + 56);
  *&v13.m21 = *(a2 + 40);
  *&v13.m23 = v11;
  return CATransform3DEqualToTransform(&a, &v13);
}

uint64_t sub_1BBB29874()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x49747865746E6F63;
  }
}

uint64_t sub_1BBB298B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000044;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BBB9C620 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBB299A4(uint64_t a1)
{
  v2 = sub_1BBB29BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB299E0(uint64_t a1)
{
  v2 = sub_1BBB29BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB29BCC();
  sub_1BBB84478();
  LOBYTE(v14[0]) = 0;
  sub_1BBB842A8();
  if (!v2)
  {
    v9 = *(v3 + 88);
    v14[4] = *(v3 + 72);
    v14[5] = v9;
    v10 = *(v3 + 120);
    v14[6] = *(v3 + 104);
    v14[7] = v10;
    v11 = *(v3 + 24);
    v14[0] = *(v3 + 8);
    v14[1] = v11;
    v12 = *(v3 + 56);
    v14[2] = *(v3 + 40);
    v14[3] = v12;
    v15 = 1;
    sub_1BBB29C20();
    sub_1BBB84288();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1BBB29BCC()
{
  result = qword_1EBC7C878;
  if (!qword_1EBC7C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C878);
  }

  return result;
}

unint64_t sub_1BBB29C20()
{
  result = qword_1EBC7C880;
  if (!qword_1EBC7C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC7C880);
  }

  return result;
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.hashValue.getter()
{
  sub_1BBB843D8();
  sub_1BBB84418();
  sub_1BBB2D920();
  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C888);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB29BCC();
  sub_1BBB84458();
  if (!v2)
  {
    v8 = v26;
    LOBYTE(v17) = 0;
    v9 = sub_1BBB841D8();
    v16[15] = 1;
    sub_1BBB2E354();
    sub_1BBB841B8();
    (*(v5 + 8))(v7, v4);
    *&v25[36] = v19;
    *&v25[20] = v18;
    *&v25[4] = v17;
    *&v25[116] = v24;
    *&v25[100] = v23;
    *&v25[84] = v22;
    *&v25[68] = v21;
    *&v25[52] = v20;
    *v8 = v9;
    v10 = *&v25[16];
    *(v8 + 4) = *v25;
    v11 = *&v25[80];
    *(v8 + 68) = *&v25[64];
    v12 = *&v25[32];
    *(v8 + 52) = *&v25[48];
    *(v8 + 36) = v12;
    *(v8 + 20) = v10;
    v13 = *&v25[96];
    v14 = *&v25[112];
    *(v8 + 132) = *&v25[128];
    *(v8 + 116) = v14;
    *(v8 + 100) = v13;
    *(v8 + 84) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB29F98()
{
  sub_1BBB843D8();
  sub_1BBB84418();
  sub_1BBB2D920();
  return sub_1BBB84438();
}

uint64_t sub_1BBB2A090()
{
  sub_1BBB843D8();
  sub_1BBB84418();
  sub_1BBB2D920();
  return sub_1BBB84438();
}

BOOL sub_1BBB2A144(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v4 = *(a1 + 88);
  *&a.m31 = *(a1 + 72);
  *&a.m33 = v4;
  v5 = *(a1 + 120);
  *&a.m41 = *(a1 + 104);
  *&a.m43 = v5;
  v6 = *(a1 + 24);
  *&a.m11 = *(a1 + 8);
  *&a.m13 = v6;
  v7 = *(a1 + 56);
  *&a.m21 = *(a1 + 40);
  *&a.m23 = v7;
  v8 = *(a2 + 88);
  *&v13.m31 = *(a2 + 72);
  *&v13.m33 = v8;
  v9 = *(a2 + 120);
  *&v13.m41 = *(a2 + 104);
  *&v13.m43 = v9;
  v10 = *(a2 + 24);
  *&v13.m11 = *(a2 + 8);
  *&v13.m13 = v10;
  v11 = *(a2 + 56);
  *&v13.m21 = *(a2 + 40);
  *&v13.m23 = v11;
  return CATransform3DEqualToTransform(&a, &v13);
}

uint64_t sub_1BBB2A22C()
{
  if (*v0)
  {
    return 0x4449726579616CLL;
  }

  else
  {
    return 0x49747865746E6F63;
  }
}

uint64_t sub_1BBB2A26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49747865746E6F63 && a2 == 0xE900000000000044;
  if (v6 || (sub_1BBB842F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449726579616CLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BBB842F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BBB2A350(uint64_t a1)
{
  v2 = sub_1BBB2E3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2A38C(uint64_t a1)
{
  v2 = sub_1BBB2E3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.LayerSnapshotTarget.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C898);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2E3A8();
  sub_1BBB84478();
  v11 = 0;
  sub_1BBB842A8();
  if (!v2)
  {
    v10 = 1;
    sub_1BBB842B8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.LayerSnapshotTarget.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_1BBB84418();
  return MEMORY[0x1BFB16A80](v1);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.LayerSnapshotTarget.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84418();
  MEMORY[0x1BFB16A80](v1);
  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.LayerSnapshotTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2E3A8();
  sub_1BBB84458();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1BBB841D8();
    v13 = 1;
    v10 = sub_1BBB841E8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB2A79C()
{
  v1 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84418();
  MEMORY[0x1BFB16A80](v1);
  return sub_1BBB84438();
}

uint64_t sub_1BBB2A7FC()
{
  v1 = *(v0 + 8);
  sub_1BBB84418();
  return MEMORY[0x1BFB16A80](v1);
}

uint64_t sub_1BBB2A83C()
{
  v1 = *(v0 + 8);
  sub_1BBB843D8();
  sub_1BBB84418();
  MEMORY[0x1BFB16A80](v1);
  return sub_1BBB84438();
}

uint64_t static IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4 && v2 != v3)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 120);
    *&v32.m31 = *(v2 + 104);
    *&v32.m33 = v6;
    v7 = *(v2 + 152);
    *&v32.m41 = *(v2 + 136);
    *&v32.m43 = v7;
    v8 = *(v2 + 56);
    *&v32.m11 = *(v2 + 40);
    *&v32.m13 = v8;
    v9 = *(v2 + 88);
    *&v32.m21 = *(v2 + 72);
    *&v32.m23 = v9;
    v10 = *(v3 + 32);
    v11 = *(v3 + 152);
    *&v33.m41 = *(v3 + 136);
    *&v33.m43 = v11;
    v12 = *(v3 + 120);
    *&v33.m31 = *(v3 + 104);
    *&v33.m33 = v12;
    v13 = *(v3 + 88);
    *&v33.m21 = *(v3 + 72);
    *&v33.m23 = v13;
    v14 = *(v3 + 56);
    *&v33.m11 = *(v3 + 40);
    *&v33.m13 = v14;
    if (v5 == v10)
    {
      v15 = (v2 + 176);
      v16 = (v3 + 176);
      do
      {
        a = v32;
        v30 = v33;
        if (!CATransform3DEqualToTransform(&a, &v30))
        {
          break;
        }

        if (!--v4)
        {
          return 1;
        }

        v17 = *(v15 - 2);
        v18 = v15[5];
        *&v32.m31 = v15[4];
        *&v32.m33 = v18;
        v19 = v15[7];
        *&v32.m41 = v15[6];
        *&v32.m43 = v19;
        v20 = v15[1];
        *&v32.m11 = *v15;
        *&v32.m13 = v20;
        v21 = v15[2];
        v22 = v15[3];
        v15 = (v15 + 136);
        *&v32.m21 = v21;
        *&v32.m23 = v22;
        v23 = *(v16 - 2);
        v24 = v16[7];
        *&v33.m41 = v16[6];
        *&v33.m43 = v24;
        v25 = v16[5];
        *&v33.m31 = v16[4];
        *&v33.m33 = v25;
        v26 = v16[3];
        *&v33.m21 = v16[2];
        *&v33.m23 = v26;
        v28 = *v16;
        v27 = v16[1];
        v16 = (v16 + 136);
        *&v33.m11 = v28;
        *&v33.m13 = v27;
      }

      while (v17 == v23);
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BBB2AA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBB842F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBB2AB18(uint64_t a1)
{
  v2 = sub_1BBB2E3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2AB54(uint64_t a1)
{
  v2 = sub_1BBB2E3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2E3FC();

  sub_1BBB84478();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8C0);
  sub_1BBB2E4A4(&qword_1EBC7C8C8, sub_1BBB2E450);
  sub_1BBB84288();

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.hash(into:)()
{
  v1 = *v0;
  result = MEMORY[0x1BFB16A50](*(*v0 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 40;
    do
    {
      sub_1BBB84418();
      result = sub_1BBB2D920();
      v4 += 136;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.hashValue.getter()
{
  v1 = *v0;
  sub_1BBB843D8();
  MEMORY[0x1BFB16A50](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 40;
    do
    {
      sub_1BBB84418();
      sub_1BBB2D920();
      v3 += 136;
      --v2;
    }

    while (v2);
  }

  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2E3FC();
  sub_1BBB84458();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8C0);
    sub_1BBB2E4A4(&qword_1EBC7C8E0, sub_1BBB2E51C);
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB2B020()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB2B070()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.SnapshotTarget.ContextListSnapshotTarget.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB2B0F8()
{
  v1 = 0x4C747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6565726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726579616CLL;
  }
}

uint64_t sub_1BBB2B154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB2FF1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB2B17C(uint64_t a1)
{
  v2 = sub_1BBB2E8F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2B1B8(uint64_t a1)
{
  v2 = sub_1BBB2E8F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB2B1F4(uint64_t a1)
{
  v2 = sub_1BBB2E9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2B230(uint64_t a1)
{
  v2 = sub_1BBB2E9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB2B26C(uint64_t a1)
{
  v2 = sub_1BBB2EA48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2B2A8(uint64_t a1)
{
  v2 = sub_1BBB2EA48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BBB2B2E4(uint64_t a1)
{
  v2 = sub_1BBB2E94C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2B320(uint64_t a1)
{
  v2 = sub_1BBB2E94C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.Storage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8F0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C8F8);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C900);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C908);
  v11 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v13 = &v22 - v12;
  v14 = v1[1];
  v30 = *v1;
  v22 = v14;
  v15 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2E8F8();
  sub_1BBB84478();
  if (!v15)
  {
    LOBYTE(v32) = 0;
    sub_1BBB2EA48();
    v16 = v31;
    sub_1BBB84208();
    LODWORD(v32) = v30;
    v33 = v22;
    sub_1BBB2EA9C();
    v18 = v24;
    sub_1BBB84288();
    (*(v23 + 8))(v10, v18);
    return (*(v11 + 8))(v13, v16);
  }

  if (v15 == 1)
  {
    LOBYTE(v32) = 1;
    sub_1BBB2E9A0();
    v16 = v31;
    sub_1BBB84208();
    v32 = v30;
    sub_1BBB2E9F4();
    v17 = v27;
    sub_1BBB84288();
    (*(v26 + 8))(v7, v17);
    return (*(v11 + 8))(v13, v16);
  }

  LOBYTE(v32) = 2;
  sub_1BBB2E94C();
  v20 = v25;
  v21 = v31;
  sub_1BBB84208();
  (*(v28 + 8))(v20, v29);
  return (*(v11 + 8))(v13, v21);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.Storage.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.SnapshotTarget.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.Storage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C940);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v36[-v3];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C948);
  v42 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v5 = &v36[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C950);
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C958);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36[-v11];
  v13 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1BBB2E8F8();
  v14 = v46;
  sub_1BBB84458();
  if (!v14)
  {
    v15 = v43;
    v16 = v44;
    v38 = 0;
    v46 = v10;
    v17 = v45;
    v18 = sub_1BBB841F8();
    v19 = (2 * *(v18 + 16)) | 1;
    v49 = v18;
    v50 = v18 + 32;
    v51 = 0;
    v52 = v19;
    v20 = sub_1BBA854A8();
    if (v20 == 3 || v51 != v52 >> 1)
    {
      v25 = sub_1BBB84058();
      swift_allocError();
      v26 = v9;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7BB30);
      *v28 = &type metadata for IntelligenceSnapshotConfiguration.SnapshotTarget.Storage;
      sub_1BBB84128();
      sub_1BBB84048();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v46 + 8))(v12, v26);
    }

    else
    {
      v37 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          LOBYTE(v47) = 1;
          sub_1BBB2E9A0();
          v21 = v5;
          v22 = v38;
          sub_1BBB84118();
          v23 = v46;
          if (!v22)
          {
            sub_1BBB2EAF0();
            v24 = v39;
            sub_1BBB841B8();
            (*(v42 + 8))(v21, v24);
            (*(v23 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v34 = 0;
            v35 = v47;
LABEL_18:
            v33 = v17;
            goto LABEL_19;
          }
        }

        else
        {
          LOBYTE(v47) = 2;
          sub_1BBB2E94C();
          v31 = v38;
          sub_1BBB84118();
          v32 = v46;
          if (!v31)
          {
            (*(v16 + 8))(v15, v41);
            (*(v32 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v35 = 0;
            v34 = 0;
            goto LABEL_18;
          }
        }
      }

      else
      {
        LOBYTE(v47) = 0;
        sub_1BBB2EA48();
        v30 = v38;
        sub_1BBB84118();
        if (!v30)
        {
          v33 = v17;
          sub_1BBB2EB44();
          sub_1BBB841B8();
          (*(v40 + 8))(v8, v6);
          (*(v46 + 8))(v12, v9);
          swift_unknownObjectRelease();
          v35 = v47;
          v34 = v48;
LABEL_19:
          *v33 = v35;
          *(v33 + 8) = v34;
          *(v33 + 16) = v37;
          return __swift_destroy_boxed_opaque_existential_1(v53);
        }
      }

      (*(v46 + 8))(v12, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1BBB2BE3C()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.SnapshotTarget.hash(into:)();
  return sub_1BBB84438();
}

uint64_t sub_1BBB2BE90()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.SnapshotTarget.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget._storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1BBB2EB98(v2, v3, v4);
}

uint64_t static IntelligenceSnapshotConfiguration.SnapshotTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_1BBB2EB98(v11, v2, v5);
  sub_1BBB2EB98(v3, v4, v6);
  LOBYTE(v3) = _s21UIIntelligenceSupport33IntelligenceSnapshotConfigurationV0D6TargetV7StorageO2eeoiySbAG_AGtFZ_0(&v11, &v8);
  sub_1BBB2EBAC(v8, v9, v10);
  sub_1BBB2EBAC(v11, v12, v13);
  return v3 & 1;
}

uint64_t sub_1BBB2BFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F74735FLL && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BBB842F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BBB2C05C(uint64_t a1)
{
  v2 = sub_1BBB2EBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2C098(uint64_t a1)
{
  v2 = sub_1BBB2EBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.encode(to:)(void *a1)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C970);
  v3 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v5 = &v11 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2EB98(v6, v7, v8);
  sub_1BBB2EBC0();
  sub_1BBB84478();
  v12 = v6;
  v13 = v7;
  v14 = v8;
  sub_1BBB2EC14();
  v9 = v11;
  sub_1BBB84288();
  sub_1BBB2EBAC(v12, v13, v14);
  return (*(v3 + 8))(v5, v9);
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1BFB16A50](1);
      result = MEMORY[0x1BFB16A50](*(v1 + 16));
      v3 = *(v1 + 16);
      if (v3)
      {
        v4 = v1 + 40;
        do
        {
          sub_1BBB84418();
          result = sub_1BBB2D920();
          v4 += 136;
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      return MEMORY[0x1BFB16A50](2);
    }
  }

  else
  {
    v5 = v0[1];
    MEMORY[0x1BFB16A50](0);
    sub_1BBB84418();
    return MEMORY[0x1BFB16A80](v5);
  }

  return result;
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.SnapshotTarget.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.SnapshotTarget.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C988);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2EBC0();
  sub_1BBB84458();
  if (!v2)
  {
    sub_1BBB2EC68();
    sub_1BBB841B8();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1BBB2C524(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  v11 = *a1;
  v12 = v2;
  v13 = v5;
  v8 = v3;
  v9 = v4;
  v10 = v6;
  sub_1BBB2EB98(v11, v2, v5);
  sub_1BBB2EB98(v3, v4, v6);
  LOBYTE(v3) = _s21UIIntelligenceSupport33IntelligenceSnapshotConfigurationV0D6TargetV7StorageO2eeoiySbAG_AGtFZ_0(&v11, &v8);
  sub_1BBB2EBAC(v8, v9, v10);
  sub_1BBB2EBAC(v11, v12, v13);
  return v3 & 1;
}

uint64_t IntelligenceSnapshotConfiguration.snapshotName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IntelligenceSnapshotConfiguration.snapshotName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IntelligenceSnapshotConfiguration.target.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1BBB2EB98(v2, v3, v4);
}

uint64_t IntelligenceSnapshotConfiguration.target.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1BBB2EBAC(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t IntelligenceSnapshotConfiguration.contextID.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t IntelligenceSnapshotConfiguration.contextID.setter(uint64_t result)
{
  if (!*(v1 + 32))
  {
    v2 = result;
    v3 = *(v1 + 24);
    result = sub_1BBB2EBAC(*(v1 + 16), v3, 0);
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 32) = 0;
  }

  return result;
}

unsigned int *(*IntelligenceSnapshotConfiguration.contextID.modify(uint64_t a1))(void *a1)
{
  *a1 = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 32))
  {
    v2 = 0;
  }

  *(a1 + 8) = v2;
  return sub_1BBB2C748;
}

unsigned int *sub_1BBB2C748(void *a1)
{
  v3 = *a1;
  result = (a1 + 1);
  v2 = v3;
  if (!*(v3 + 32))
  {
    v4 = *result;
    v5 = *(v2 + 24);
    result = sub_1BBB2EBAC(*(v2 + 16), v5, 0);
    *(v2 + 16) = v4;
    *(v2 + 24) = v5;
    *(v2 + 32) = 0;
  }

  return result;
}

uint64_t IntelligenceSnapshotConfiguration.layerID.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t IntelligenceSnapshotConfiguration.layerID.setter(uint64_t result)
{
  if (!*(v1 + 32))
  {
    v2 = result;
    v3 = *(v1 + 16);
    v4 = v3;
    result = sub_1BBB2EBAC(v3, *(v1 + 24), 0);
    *(v1 + 16) = v4;
    *(v1 + 24) = v2;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t *(*IntelligenceSnapshotConfiguration.layerID.modify(void *a1))(uint64_t *result)
{
  v2 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v2 = 0;
  }

  *a1 = v2;
  a1[1] = v1;
  return sub_1BBB2C824;
}

uint64_t *sub_1BBB2C824(uint64_t *result)
{
  v1 = result[1];
  if (!*(v1 + 32))
  {
    v2 = *result;
    v3 = *(v1 + 16);
    v4 = v3;
    result = sub_1BBB2EBAC(v3, *(v1 + 24), 0);
    *(v1 + 16) = v4;
    *(v1 + 24) = v2;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t IntelligenceSnapshotConfiguration.displayName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t IntelligenceSnapshotConfiguration.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t IntelligenceSnapshotConfiguration.displayIdentifier.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t IntelligenceSnapshotConfiguration.displayIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void IntelligenceSnapshotConfiguration.rect.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

__n128 IntelligenceSnapshotConfiguration.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  *(a1 + 64) = *(v1 + 176);
  *(a1 + 80) = v2;
  v3 = *(v1 + 224);
  *(a1 + 96) = *(v1 + 208);
  *(a1 + 112) = v3;
  v4 = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = v4;
  result = *(v1 + 144);
  v6 = *(v1 + 160);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 IntelligenceSnapshotConfiguration.transform.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 176) = *(a1 + 64);
  *(v1 + 192) = v2;
  v3 = *(a1 + 112);
  *(v1 + 208) = *(a1 + 96);
  *(v1 + 224) = v3;
  v4 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 144) = result;
  *(v1 + 160) = v6;
  return result;
}

void (*IntelligenceSnapshotConfiguration.transform.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  *a1 = v3;
  *(v3 + 128) = v1;
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[10];
  *(v3 + 32) = v1[9];
  *(v3 + 48) = v6;
  *v3 = v4;
  *(v3 + 16) = v5;
  v7 = v1[11];
  v8 = v1[12];
  v9 = v1[14];
  *(v3 + 96) = v1[13];
  *(v3 + 112) = v9;
  *(v3 + 64) = v7;
  *(v3 + 80) = v8;
  return sub_1BBB2CAB4;
}

void sub_1BBB2CAB4(void **a1)
{
  v1 = *a1;
  v2 = v1[16];
  v3 = *(v1 + 3);
  v5 = *v1;
  v4 = *(v1 + 1);
  v2[9] = *(v1 + 2);
  v2[10] = v3;
  v2[7] = v5;
  v2[8] = v4;
  v6 = *(v1 + 7);
  v8 = *(v1 + 4);
  v7 = *(v1 + 5);
  v2[13] = *(v1 + 6);
  v2[14] = v6;
  v2[11] = v8;
  v2[12] = v7;
  free(v1);
}

__n128 IntelligenceSnapshotConfiguration.init(snapshotName:contextID:layerID:displayName:displayIdentifier:scale:rect:transform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, __int128 *a15)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = 0;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14;
  v15 = *a15;
  v16 = a15[1];
  v17 = a15[3];
  *(a9 + 144) = a15[2];
  *(a9 + 160) = v17;
  *(a9 + 112) = v15;
  *(a9 + 128) = v16;
  result = a15[4];
  v19 = a15[5];
  v20 = a15[7];
  *(a9 + 208) = a15[6];
  *(a9 + 224) = v20;
  *(a9 + 176) = result;
  *(a9 + 192) = v19;
  return result;
}

__n128 IntelligenceSnapshotConfiguration.init(snapshotName:target:displayName:displayIdentifier:scale:rect:transform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>)
{
  v14 = *(a3 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v14;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14;
  v15 = *a8;
  v16 = a8[1];
  v17 = a8[3];
  *(a9 + 144) = a8[2];
  *(a9 + 160) = v17;
  *(a9 + 112) = v15;
  *(a9 + 128) = v16;
  result = a8[4];
  v19 = a8[5];
  v20 = a8[7];
  *(a9 + 208) = a8[6];
  *(a9 + 224) = v20;
  *(a9 + 176) = result;
  *(a9 + 192) = v19;
  return result;
}

unint64_t sub_1BBB2CB7C()
{
  v1 = *v0;
  v2 = 0x746F687370616E73;
  v3 = 1952671090;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x656C616373;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x746567726174;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
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

uint64_t sub_1BBB2CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BBB30030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BBB2CC88(uint64_t a1)
{
  v2 = sub_1BBB2EF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BBB2CCC4(uint64_t a1)
{
  v2 = sub_1BBB2EF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IntelligenceSnapshotConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C998);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v27 = *(v1 + 16);
  v28 = v7;
  v26 = v8;
  v25 = *(v1 + 32);
  v9 = *(v1 + 40);
  v23 = *(v1 + 48);
  v24 = v9;
  v10 = *(v1 + 56);
  v21 = *(v1 + 64);
  v22 = v10;
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v19 = *(v1 + 96);
  v20 = v12;
  v13 = *(v1 + 192);
  v43 = *(v1 + 176);
  v44 = v13;
  v14 = *(v1 + 224);
  v45 = *(v1 + 208);
  v46 = v14;
  v15 = *(v1 + 128);
  v39 = *(v1 + 112);
  v40 = v15;
  v16 = *(v1 + 160);
  v41 = *(v1 + 144);
  v42 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BBB2EF10();
  sub_1BBB84478();
  LOBYTE(v30) = 0;
  v17 = v29;
  sub_1BBB84218();
  if (!v17)
  {
    *&v30 = v27;
    *(&v30 + 1) = v26;
    LOBYTE(v31) = v25;
    v38 = 1;
    sub_1BBB2EB98(v27, v26, v25);
    sub_1BBB2EF64();
    sub_1BBB84288();
    sub_1BBB2EBAC(v30, *(&v30 + 1), v31);
    LOBYTE(v30) = 2;
    sub_1BBB84248();
    LOBYTE(v30) = 3;
    sub_1BBB84218();
    *&v30 = v11;
    v38 = 4;
    sub_1BBA9E98C();
    sub_1BBB84288();
    v30 = v20;
    v31 = v19;
    v38 = 5;
    type metadata accessor for CGRect(0);
    sub_1BBB2F00C(&qword_1ED6BDCA8);
    sub_1BBB84288();
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v38 = 6;
    sub_1BBB29C20();
    sub_1BBB84288();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IntelligenceSnapshotConfiguration.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  if (*(v0 + 8))
  {
    sub_1BBB84408();
    sub_1BBB83AC8();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    MEMORY[0x1BFB16A50](0);
    sub_1BBB84418();
    MEMORY[0x1BFB16A80](v2);
    goto LABEL_11;
  }

  sub_1BBB84408();
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v3 == 1)
  {
    MEMORY[0x1BFB16A50](1);
    MEMORY[0x1BFB16A50](*(v1 + 16));
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = v1 + 40;
      do
      {
        sub_1BBB84418();
        sub_1BBB2D920();
        v11 += 136;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    MEMORY[0x1BFB16A50](2);
  }

LABEL_11:
  sub_1BBB83AC8();
  sub_1BBB84408();
  if (v4)
  {
    sub_1BBB83AC8();
  }

  v12 = 0.0;
  if (v6 != 0.0)
  {
    v12 = v6;
  }

  MEMORY[0x1BFB16A80](*&v12);
  sub_1BBB2E6E4(v5, v7, v8, v9);
  return sub_1BBB2D920();
}

uint64_t IntelligenceSnapshotConfiguration.hashValue.getter()
{
  sub_1BBB843D8();
  IntelligenceSnapshotConfiguration.hash(into:)();
  return sub_1BBB84438();
}

uint64_t IntelligenceSnapshotConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC7C9B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v38 - v7;
  v9 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BBB2EF10();
  sub_1BBB84458();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v45 = v6;
    LOBYTE(v62) = 0;
    v10 = sub_1BBB84138();
    v12 = v11;
    v13 = v10;
    LOBYTE(v47) = 1;
    sub_1BBB2EFB8();
    sub_1BBB841B8();
    v41 = v63;
    v42 = v62;
    v44 = v64;
    LOBYTE(v62) = 2;
    v14 = sub_1BBB84188();
    v40 = v13;
    v43 = v15;
    LOBYTE(v62) = 3;
    v16 = sub_1BBB84138();
    v18 = v17;
    v39 = v16;
    LOBYTE(v47) = 4;
    sub_1BBAA7A60();
    sub_1BBB841B8();
    v19 = v62;
    type metadata accessor for CGRect(0);
    LOBYTE(v47) = 5;
    sub_1BBB2F00C(&qword_1EBC7AB78);
    sub_1BBB841B8();
    v20 = v62;
    v21 = v63;
    v22 = v64;
    v23 = v65;
    v85 = 6;
    sub_1BBB2E354();
    sub_1BBB841B8();
    (*(v45 + 8))(v8, v5);
    v98 = v90;
    v99 = v91;
    v100 = v92;
    v101 = v93;
    v94 = v86;
    v95 = v87;
    v96 = v88;
    v97 = v89;
    v57 = v89;
    v56 = v88;
    v24 = v41;
    *&v47 = v40;
    *(&v47 + 1) = v12;
    *&v48 = v42;
    *(&v48 + 1) = v41;
    v25 = v44;
    LOBYTE(v49) = v44;
    *(&v49 + 1) = v102[0];
    DWORD1(v49) = *(v102 + 3);
    *(&v49 + 1) = v14;
    *&v50 = v43;
    *(&v50 + 1) = v39;
    *&v51 = v18;
    *(&v51 + 1) = v19;
    *&v52 = v20;
    *(&v52 + 1) = v21;
    *&v53 = v22;
    *(&v53 + 1) = v23;
    v55 = v87;
    v54 = v86;
    v61 = v93;
    v60 = v92;
    v59 = v91;
    v58 = v90;
    v26 = v48;
    *a2 = v47;
    a2[1] = v26;
    v27 = v49;
    v28 = v50;
    v29 = v52;
    a2[4] = v51;
    a2[5] = v29;
    a2[2] = v27;
    a2[3] = v28;
    v30 = v53;
    v31 = v54;
    v32 = v56;
    a2[8] = v55;
    a2[9] = v32;
    a2[6] = v30;
    a2[7] = v31;
    v33 = v57;
    v34 = v58;
    v35 = v61;
    v36 = v59;
    a2[13] = v60;
    a2[14] = v35;
    a2[11] = v34;
    a2[12] = v36;
    a2[10] = v33;
    sub_1BBB2F050(&v47, &v62);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v62 = v40;
    v63 = v12;
    v64 = v42;
    v65 = v24;
    v66 = v25;
    *v67 = v102[0];
    *&v67[3] = *(v102 + 3);
    v68 = v14;
    v69 = v43;
    v70 = v39;
    v71 = v18;
    v72 = v19;
    v73 = v20;
    v74 = v21;
    v75 = v22;
    v76 = v23;
    v81 = v98;
    v82 = v99;
    v83 = v100;
    v84 = v101;
    v77 = v94;
    v78 = v95;
    v79 = v96;
    v80 = v97;
    return sub_1BBB2F088(&v62);
  }
}